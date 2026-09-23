//
//  FHIRDecodingDepthTests.swift
//  HealthSoftware
//
//  Copyright 2026 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import FMCore
import Foundation
import ModelsR5
import Testing

struct FHIRDecodingDepthTests {
	
	// MARK: - Limit enforcement
	
	@Test(arguments: [
		( -1, false),
		(  0, false),
		(  1, true),
		( 25, true),
		( 49, true),
		( 50, false),
		( 64, false),
	])
	func respectsDecodingDepth(maxDepth: Int, shouldThrow: Bool) throws {
		let decoder = JSONDecoder()
		decoder.maxFHIRModelsDepth = maxDepth
		let data = try #require(nestedExtensionJSON(depth: 25).data(using: .utf8))
		
		if shouldThrow {
			#expect(throws: DecodingError.self, "Expect to throw at max depth \(maxDepth)") {
				try decoder.decode(Patient.self, from: data)
			}
		} else {
			_ = try decoder.decode(Patient.self, from: data)
		}
	}
	
	/// An unconfigured decoder enforces the default — this is the opt-out guarantee.
	@Test
	func plainDecoderEnforcesDefault() throws {
		let decoder = JSONDecoder()
		#expect(decoder.maxFHIRModelsDepth == nil)
		
		let shallow = try #require(nestedExtensionJSON(depth: 32).data(using: .utf8))
		_ = try decoder.decode(Patient.self, from: shallow)
		
		let deep = try #require(nestedExtensionJSON(depth: 33).data(using: .utf8))
		#expect(throws: DecodingError.self) {
			try decoder.decode(Patient.self, from: deep)
		}
	}
	
	/// Clearing an override returns the decoder to the default rather than leaving it unprotected.
	@Test
	func nilRestoresDefault() throws {
		let decoder = JSONDecoder()
		decoder.maxFHIRModelsDepth = 0
		decoder.maxFHIRModelsDepth = nil
		
		let data = try #require(nestedExtensionJSON(depth: 100).data(using: .utf8))
		#expect(throws: DecodingError.self) {
			try decoder.decode(Patient.self, from: data)
		}
	}
	
	/// Callers with unusually deep but legitimate payloads can raise the limit.
	@Test
	func limitCanBeRaised() throws {
		let data = try #require(nestedExtensionJSON(depth: 40).data(using: .utf8))
		
		#expect(throws: DecodingError.self) {
			try JSONDecoder().decode(Patient.self, from: data)
		}
		
		let decoder = JSONDecoder()
		decoder.maxFHIRModelsDepth = 200
		_ = try decoder.decode(Patient.self, from: data)
	}
	
	@Test
	func verifyProductionDecoderSetup() {
		#expect(JSONDecoder.fhirModelsReadyDecoder().maxFHIRModelsDepth == nil)
		#expect(JSONDecoder.fhirModelsReadyDecoder(maxDepth: 12).maxFHIRModelsDepth == 12)
	}
	
	/// The thrown error reports the offending path, so callers can locate the nesting.
	@Test
	func reportsCodingPathOnFailure() throws {
		let decoder = JSONDecoder()
		decoder.maxFHIRModelsDepth = 8
		let data = try #require(nestedExtensionJSON(depth: 12).data(using: .utf8))
		
		do {
			_ = try decoder.decode(Patient.self, from: data)
			Issue.record("Expected a DecodingError")
		} catch let DecodingError.dataCorrupted(context) {
			#expect(context.codingPath.count > 8)
			#expect(context.debugDescription.contains("maximum of 8"))
		}
	}
	
	// MARK: - Concurrency
	
	@Test
	func sharedDecoderIsSafeForConcurrentDecoding() async throws {
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		// Deep enough that any accumulation across tasks would breach the limit, shallow enough to be valid alone.
		let data = try #require(nestedExtensionJSON(depth: 16).data(using: .utf8))
		
		try await withThrowingTaskGroup(of: Void.self) { group in
			for _ in 0..<256 {
				group.addTask {
					_ = try decoder.decode(Patient.self, from: data)
				}
			}
			try await group.waitForAll()
		}
	}
	
	// MARK: - Zero-growth invariant
	
	/// `ResourceProxy` forwards the same decoder to the concrete resource, which is a zero-growth *step*. The cycle
	/// back to `ResourceProxy` must descend through `entry[]`/`contained[]`, so no zero-growth *cycle* exists and
	/// `codingPath.count` still advances. Guards the assumption `enforceFHIRModelsDepthLimit()` rests on.
	@Test
	func resourceProxyForwardingDoesNotDefeatTheLimit() throws {
		let decoder = JSONDecoder()
		decoder.maxFHIRModelsDepth = 12
		let data = try #require(nestedBundleJSON(depth: 10).data(using: .utf8))
		
		#expect(throws: DecodingError.self) {
			try decoder.decode(ModelsR5.Bundle.self, from: data)
		}
	}
	
	/// A Bundle nested below the limit still decodes, so the guard above is not passing for the wrong reason.
	@Test
	func shallowBundleDecodesThroughResourceProxy() throws {
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		let data = try #require(nestedBundleJSON(depth: 2).data(using: .utf8))
		_ = try decoder.decode(ModelsR5.Bundle.self, from: data)
	}
	
	// MARK: - Utilities
	
	/**
	 Builds a Patient JSON string with `depth` levels of nested `Extension`.
	 
	     {
	        "resourceType": "Patient",
	        "extension": [{
	             "url": "1",
	             "extension": [{
	                 "url": "2",
	                 "extension": [ ... ]
	             }]
	         }]
	     }
	 */
	private func nestedExtensionJSON(depth: Int) -> String {
		var content = #"{"url":"\#(depth - 1)","valueString":"At depth \#(depth - 1)"}"#
		for level in stride(from: depth - 2, through: 0, by: -1) {
			content = #"{"url":"\#(level)","extension":[\#(content)]}"#
		}
		return #"{"resourceType":"Patient","extension":[\#(content)]}"#
	}
	
	/**
	 Builds a Bundle JSON string containing `depth` levels of nested Bundles, each level descending through
	 `entry[].resource` — 3 `codingPath` components per level — and passing through `ResourceProxy` each time.
	 */
	private func nestedBundleJSON(depth: Int) -> String {
		var content = #"{"resourceType":"Patient","id":"leaf"}"#
		for _ in 0..<depth {
			content = #"{"resourceType":"Bundle","type":"collection","entry":[{"resource":\#(content)}]}"#
		}
		return content
	}
}
