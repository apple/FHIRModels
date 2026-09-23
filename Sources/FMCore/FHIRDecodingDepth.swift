//
//  FHIRDecodingDepth.swift
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

import Foundation

extension CodingUserInfoKey {
	
	static let maxFHIRModelsDepth = CodingUserInfoKey(rawValue: "com.apple.health.fhirmodels.maxDecodingDepth")!
}

// MARK: -

extension JSONDecoder {
	
	/**
	 FHIRModels' default decoding-depth limit, expressed in number of `codingPath` components.
	 
	 Applied by every `JSONDecoder` unless overridden via ``maxFHIRModelsDepth``.
	 
	 Looking through R5's example resources, which likely tend to be shallow, yields a median nesting depth of 6, a p90
	 of 10, a p99 of 20 and a maximum of 24. Picking the nice round number of 64 should give enough headroom to
	 accommodate any valid FHIR resource while getting nowhere near a 512KB stack under any plausible per-frame cost.
	 */
	public static let fhirModelsDefaultMaxDepth = 64
	
	/**
	 The maximum decoding depth FHIRModels enforces, overriding ``fhirModelsDefaultMaxDepth``.
	 
	 FHIRModels tracks decoding depth to prevent stack exhaustion from recursive structures. **It is on by default**, a
	 default decoder enforces ``fhirModelsDefaultMaxDepth``. Set this property to either change the limit to suit your
	 particular use case, or to opt out entirely by setting it to zero (or negative).
	 
	 - Note: Reading this value during decoding is thread-safe, so a decoder may be used for concurrent decoding
	         operations. Setting it is not, configure the decoder before you start decoding.
	 - Warning: Disabling or substantially raising this limit makes the caller responsible for the stack depth
	            consumed while decoding untrusted payloads.
	 */
	public var maxFHIRModelsDepth: Int? {
		get { userInfo[.maxFHIRModelsDepth] as? Int }
		set { userInfo[.maxFHIRModelsDepth] = newValue }
	}
	
	/// Construct a `JSONDecoder` with an explicit decoding-depth limit, or the default if `nil` is given.
	///
	/// - Note: A plain `JSONDecoder()` already enforces ``fhirModelsDefaultMaxDepth``, so this is only needed to
	///         choose a different limit.
	public static func fhirModelsReadyDecoder(maxDepth: Int? = nil) -> JSONDecoder {
		let decoder = JSONDecoder()
		decoder.maxFHIRModelsDepth = maxDepth
		return decoder
	}
}

// MARK: -

extension Decoder {
	
	/// Throws `DecodingError.dataCorrupted` when `codingPath` is deeper than the effective limit.
	///
	/// The limit is ``fhirModelsDefaultMaxDepth`` unless the decoder overrides it in ``maxFHIRModelsDepth``.
	///
	/// FHIRModels calls this at the top of every generated model's `init(from:)`. Depth is read from `codingPath`,
	/// so this carries no state of its own and is safe under concurrent decoding.
	package func enforceFHIRModelsDepthLimit() throws(DecodingError) {
		let maxDepth = (userInfo[.maxFHIRModelsDepth] as? Int) ?? JSONDecoder.fhirModelsDefaultMaxDepth
		guard maxDepth > 0 else {
			return
		}
		let depth = codingPath.count
		guard depth <= maxDepth else {
			throw DecodingError.dataCorrupted(DecodingError.Context(
				codingPath: codingPath,
				debugDescription: "Nesting depth \(depth) exceeds maximum of \(maxDepth)"
			))
		}
	}
}
