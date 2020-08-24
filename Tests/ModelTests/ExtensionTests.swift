//
//  ExtensionTests.swift
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

import XCTest
import ModelsR4

class ExtensionTests: XCTestCase {
	
	func testPrimitiveGetter() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "32",
			"_active": {
				"extension": [
					{
						"url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
						"valueString": "unable to determine",
					}
				]
			},
			"gender": "female",
			"_gender": {
				"extension": [
					{
						"url": "http://hl7.org/fhir/StructureDefinition/data-not-absent-reason",
						"valueString": "documented",
					}
				]
			}
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "32")
		
		let ext1 = patient.active?.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertNotNil(ext1)
		XCTAssertEqual(ext1?.count, 1)
		XCTAssertEqual(ext1?.first?.value, Extension.ValueX.string("unable to determine"))
		
		let ext2 = patient.active?.extensions(for: "http://example.com")
		XCTAssertNotNil(ext2)
		XCTAssertEqual(ext2?.count, 0)
		
		let ext3 = patient.id?.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertNotNil(ext3, "Should return an array even for primitives that don't have extensions")
		XCTAssertEqual(ext3?.count, 0)
		
		let ext4 = patient.gender?.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-not-absent-reason")
		XCTAssertNotNil(ext4)
		XCTAssertEqual(ext4?.count, 1)
	}
	
	func testElementGetter() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "33",
			"name": [
				{
					"extension": [
						{
							"url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
							"valueString": "unable to determine",
						}
					]
				},
				{
					"text": "Mr. Test"
				}
			]
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "33")
		
		let ext1 = patient.name?.first?.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertNotNil(ext1, "Expect name[0] to be present")
		XCTAssertEqual(ext1?.count, 1)
		XCTAssertEqual(ext1?.first?.value, Extension.ValueX.string("unable to determine"))
		
		let ext2 = patient.name?.first?.extensions(for: "http://example.com")
		XCTAssertNotNil(ext2, "Expect name[0] to be present")
		XCTAssertEqual(ext2?.count, 0)
		
		let ext3 = patient.name?.last?.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertNotNil(ext3, "Should return an array even for elements that don't have extensions")
		XCTAssertEqual(ext3?.count, 0)
	}
	
	func testResourceGetter() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "34",
			"extension": [
				{
					"url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
					"valueString": "no data",
				}
			]
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "34")
		
		let ext1 = patient.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertNotNil(ext1)
		XCTAssertEqual(ext1.count, 1)
		XCTAssertEqual(ext1.first?.value, Extension.ValueX.string("no data"))
		
		let ext2 = patient.extensions(for: "http://example.com")
		XCTAssertNotNil(ext2)
		XCTAssertEqual(ext2.count, 0)
		
		let str2 = """
		{
			"resourceType": "Patient",
			"id": "35"
		}
		"""
		let data2 = str2.data(using: .utf8)!
		let patient2 = try decoder.decode(Patient.self, from: data2)
		XCTAssertEqual(patient2.id, "35")
		
		let ext3 = patient2.extensions(for: "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertNotNil(ext3, "Should return an array even for resources that don't have extensions")
		XCTAssertEqual(ext3.count, 0)
	}
}
