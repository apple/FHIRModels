//
//  ResourceEncodeDecodeTests.swift
//  HealthSoftware
//
//  Copyright 2020 Apple Inc.
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
import ModelsR4
import XCTest

enum ResourceEncodeDecodeTestError: Error {
	case unableToConvertStringToData
	case unableToConvertDataToDictionary
}

class ResourceEncodeDecodeTests: XCTestCase {
	
	func testDecodeEncodeValidResource() throws {
		let decoder = JSONDecoder()
		let encoder = JSONEncoder()
		
		let data = try medicationData()
		let medication = try decoder.decode(MedicationRequest.self, from: data)
		let _ = try encoder.encode(medication)
		
		// Via ResourceProxy
		let proxy = try decoder.decode(ResourceProxy.self, from: data)
		switch proxy {
		case .medicationRequest(_):
			break
		default:
			XCTFail("Should have decoded a medication request but decoded \(proxy)")
		}
		let medicationFromProxy = proxy.get(if: MedicationRequest.self)
		XCTAssertNotNil(medicationFromProxy)
	}
	
	func testDecodeInvalidJSONFails() {
		let decoder = JSONDecoder()
		
		let medicationJSON = """
		{
		  "status" "active"
		}
		"""
		do {
			guard let data = medicationJSON.data(using: .utf8) else {
				throw ResourceEncodeDecodeTestError.unableToConvertStringToData
			}
			let _ = try decoder.decode(MedicationRequest.self, from: data)
			XCTFail("Should have trown a decode exception but I'm still here")
		} catch DecodingError.dataCorrupted(let context) {
			XCTAssertEqual(context.debugDescription, "The given data was not valid JSON.")
		} catch {
			XCTFail("Should have thrown DecodingError.dataCorrupted but threw \(error)")
		}
	}
	
	func testDecodeMissingNonoptionalValueFails() {
		let decoder = JSONDecoder()
		do {
			let data = try medicationData(manipulator: { (dict) -> [String : Any] in
				var copy = dict
				copy.removeValue(forKey: "intent")
				return copy
			})
			let _ = try decoder.decode(MedicationRequest.self, from: data)
			XCTFail("Should have trown a decode exception but I'm still here")
		} catch DecodingError.keyNotFound(let key, _) {
			XCTAssertEqual(key.stringValue, "intent")
		} catch {
			XCTFail("Should have thrown DecodingError.keyNotFound but threw \(error)")
		}
	}
	
	func testDecodeMissingNonoptionalMultivalueFails() {
		let decoder = JSONDecoder()
		do {
			let data = try medicationData(manipulator: { (dict) -> [String : Any] in
				var copy = dict
				copy.removeValue(forKey: "medicationCodeableConcept")
				return copy
			})
			let _ = try decoder.decode(MedicationRequest.self, from: data)
			XCTFail("Should have trown a decode exception but I'm still here")
		} catch DecodingError.valueNotFound(_, let context) {
			XCTAssertEqual(context.codingPath.first?.stringValue, "medicationCodeableConcept")
			XCTAssertEqual(context.debugDescription, "Must have at least one value for \"medication\" but have none")
		} catch {
			XCTFail("Should have thrown DecodingError.valueNotFound but threw \(error)")
		}
	}
	
	// TODO: this has not yet been implemented
	func disabled_testDecodeWithExtraValueFails() {
		let decoder = JSONDecoder()
		do {
			let data = try medicationData(manipulator: { (dict) -> [String : Any] in
				var copy = dict
				copy["foo"] = "bar"
				return copy
			})
			let _ = try decoder.decode(MedicationRequest.self, from: data)
			XCTFail("Should have trown a decode exception but I'm still here")
		} catch DecodingError.dataCorrupted(let context) {
			XCTAssertEqual(context.codingPath.first?.stringValue, "foo")
			XCTAssertEqual(context.debugDescription, "Extra key \"foo\" is present")
		} catch {
			XCTFail("Should have thrown DecodingError.dataCorrupted but threw \(error)")
		}
	}
	
	// MARK: - Utilities
	
	func medicationData(manipulator: (([String: Any]) -> [String: Any])? = nil) throws -> Data {
		let medicationJSON = """
		{
		  "status": "active",
		  "intent": "order",
		  "id": "24",
		  "medicationCodeableConcept":{
			"text": "Albuterol HFA 90 mcg",
			"coding": [
			  {
				"system": "http://www.nlm.nih.gov/research/umls/rxnorm/",
				"code": "329498"
			  }
			]
		  },
		  "subject": {
			"display": "Jane Doe",
			"reference": "Patient/1"
		  },
		  "prescriber": {
			"display": "Dr Pepper",
			"reference": "Practitioner/20"
		  },
		  "dateWritten": "2016-10-11",
		  "resourceType": "MedicationRequest",
		  "dosageInstruction": [
			{
			  "text": "2 puffs every 2-4 hours"
			}
		  ]
		}
		"""
		guard let data = medicationJSON.data(using: .utf8) else {
			throw ResourceEncodeDecodeTestError.unableToConvertStringToData
		}
		guard let manipulator = manipulator else {
			return data
		}
		guard let rawDict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
			throw ResourceEncodeDecodeTestError.unableToConvertDataToDictionary
		}
		let dict = manipulator(rawDict)
		return try JSONSerialization.data(withJSONObject: dict, options: [])
	}
}
