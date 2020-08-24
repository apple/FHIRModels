//
//  DecodeEncodeTests.swift
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

import ModelsR4
import XCTest

class DecodeEncodeTests: XCTestCase {
	
	enum TestError: Error {
		case failed(String)
	}
	
	// MARK: - Primitives
	
	func testDecodeEncodePrimitive() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "1",
			"active": true
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "1")
		XCTAssertNotNil(patient.active)
		XCTAssertEqual(patient.active, true)
		XCTAssertNil(patient.active?.id)
		XCTAssertNil(patient.active?.extension)
		XCTAssertEqual(patient.active?.primitiveDescription, "<FHIRPrimitive<FHIRBool> value=\"FHIRBool(bool: true)\", nil id, nil extensions>")
		
		let encoder = JSONEncoder()
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertTrue(stringRepresentation.contains("\"resourceType\":\"Patient\""))
		XCTAssertTrue(stringRepresentation.contains("\"id\":\"1\""))
		XCTAssertTrue(stringRepresentation.contains("\"active\":true"))
		XCTAssertFalse(stringRepresentation.contains("\"_resourceType\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_id\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_active\":"))
	}
	
	func testDecodeEncodePrimitiveWithID() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "2",
			"active": true,
			"_active": {
				"id": "2a"
			}
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "2")
		XCTAssertNotNil(patient.active)
		XCTAssertEqual(patient.active?.value, true)
		XCTAssertEqual(patient.active?.id, "2a")
		XCTAssertNil(patient.active?.extension)
		
		let encoder = JSONEncoder()
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertTrue(stringRepresentation.contains("\"resourceType\":\"Patient\""))
		XCTAssertTrue(stringRepresentation.contains("\"id\":\"2\""))
		XCTAssertTrue(stringRepresentation.contains("\"active\":true"))
		XCTAssertTrue(stringRepresentation.contains("\"_active\":{\"id\":\"2a\"}"))
	}
	
	func testDecodeEncodePrimitiveWithOnlyExtension() throws {
		let extURL = "http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/data-absent-reason"
		let extVal = "unable to determine"
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "3",
			"_active": {
				"extension": [
					{
						"url": "\(extURL)",
						"valueString": "\(extVal)"
					}
				]
			}
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "3")
		XCTAssertNotNil(patient.active)
		XCTAssertNil(patient.active?.value)
		XCTAssertNil(patient.active?.id)
		XCTAssertNotNil(patient.active?.extension)
		XCTAssertEqual(patient.active?.extension?.count, 1)
		
		let encoder = JSONEncoder()
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertTrue(stringRepresentation.contains("\"resourceType\":\"Patient\""))
		XCTAssertTrue(stringRepresentation.contains("\"id\":\"3\""))
		XCTAssertFalse(stringRepresentation.contains("\"active\":"))
		XCTAssertTrue(stringRepresentation.contains("\"_active\":{\"extension\":"))
		XCTAssertTrue(stringRepresentation.contains("\"url\":\"\(extURL)\""))
		XCTAssertTrue(stringRepresentation.contains("\"valueString\":\"\(extVal)\""))
	}
	
	// MARK: - Arrays
	
	func testDecodeEncodeArrays() throws {
		let decoder = JSONDecoder()
		
		// "name" is an array of Elements and its "given" array is an array of primitives
		let str = """
		{
			"resourceType": "Patient",
			"id": "4",
			"name": [
				{
					"given": ["Johannes", "Sebastian"]
				},
				{
					"text": "Johann",
					"use": "nickname"
				}
			]
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "4")
		XCTAssertEqual(patient.name?.count, 2)
		XCTAssertEqual(patient.name?.first?.given?.count, 2)
		XCTAssertEqual(patient.name?.first?.given?.first?.value, "Johannes")
		XCTAssertEqual(patient.name?.first?.given?.last?.value, "Sebastian")
		XCTAssertEqual(patient.name?.last?.text, "Johann")
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertTrue(stringRepresentation.contains("\"resourceType\":\"Patient\""))
		XCTAssertTrue(stringRepresentation.contains("\"id\":\"4\""))
		XCTAssertTrue(stringRepresentation.contains("\"name\":[{\"given\":[\"Johannes\",\"Sebastian\"]},{\"text\":\"Johann\",\"use\":\"nickname\"}]"))
		XCTAssertFalse(stringRepresentation.contains("\"_name\":"))
	}
	
	func testDecodeEncodeArrayWithID() throws {
		let decoder = JSONDecoder()
		
		// In the "given" array of 3 strings, only the first and last have an id!
		let str = """
		{
			"resourceType": "Patient",
			"id": "5",
			"name": [
				{
					"given": [null, "Sebastian", "Maximilian"],
					"_given": [
						{ "id": "5a" },
						null,
						{ "id": "5c" }
					]
				},
				{
					"text": "Johann",
					"use": "nickname",
					"id": "5z"
				}
			]
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "5")
		XCTAssertEqual(patient.name?.count, 2)
		XCTAssertEqual(patient.name?.first?.given?.count, 3)
		XCTAssertNil(patient.name?.first?.given?[0].value)
		XCTAssertEqual(patient.name?.first?.given?[0].id, "5a")
		XCTAssertEqual(patient.name?.first?.given?[1].value, "Sebastian")
		XCTAssertEqual(patient.name?.first?.given?[1].id, nil)
		XCTAssertEqual(patient.name?.first?.given?[2].value, "Maximilian")
		XCTAssertEqual(patient.name?.first?.given?[2].id, "5c")
		XCTAssertEqual(patient.name?.last?.text, "Johann")
		XCTAssertEqual(patient.name?.last?.id, "5z")
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertTrue(stringRepresentation.contains("\"resourceType\":\"Patient\""))
		XCTAssertTrue(stringRepresentation.contains("\"id\":\"5\""))
		XCTAssertTrue(stringRepresentation.contains("\"given\":[null,\"Sebastian\",\"Maximilian\"]"))
		XCTAssertTrue(stringRepresentation.contains("\"_given\":[{\"id\":\"5a\"},null,{\"id\":\"5c\"}]"))
		XCTAssertTrue(stringRepresentation.contains("{\"id\":\"5z\",\"text\":\"Johann\",\"use\":\"nickname\"}"))
		XCTAssertFalse(stringRepresentation.contains("\"_name\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_text\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_use\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_id\":"))
	}
	
	func testDecodeEncodeArrayWithOnlyExtension() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "6",
			"name": [
				{
					"_given": [
						{
							"extension": [
								{
									"url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
									"valueCode": "unknown"
								}
							]
						},
						{
							"extension": [
								{
									"url": "http://hl7.org/fhir/StructureDefinition/foo-bar-hat",
									"valueString": "hat-bar-foo"
								}
							]
						},
						null
					]
				},
				{
					"text": "Jon",
					"use": "nickname",
					"extension": [
						{
							"url": "http://hl7.org/fhir/StructureDefinition/cat-in-the-hat",
							"valueBoolean": true
						}
					]
				}
			]
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "6")
		XCTAssertEqual(patient.name?.count, 2)
		XCTAssertEqual(patient.name?.first?.given?.count, 2)        // the 3rd item, a "null" value, is stripped
		XCTAssertEqual(patient.name?.first?.given?[0].extension?.count, 1)
		XCTAssertEqual(patient.name?.first?.given?[0].extension?.first?.url.value, "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		XCTAssertEqual(patient.name?.first?.given?[1].extension?.count, 1)
		XCTAssertEqual(patient.name?.first?.given?[1].extension?.first?.url.value, "http://hl7.org/fhir/StructureDefinition/foo-bar-hat")
		XCTAssertEqual(patient.name?.last?.text, "Jon")
		XCTAssertEqual(patient.name?.last?.extension?.count, 1)
		XCTAssertEqual(patient.name?.last?.extension?.first?.url.value, "http://hl7.org/fhir/StructureDefinition/cat-in-the-hat")
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = [.sortedKeys]
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertTrue(stringRepresentation.contains("\"resourceType\":\"Patient\""))
		XCTAssertTrue(stringRepresentation.contains("\"id\":\"6\""))
		XCTAssertTrue(stringRepresentation.contains("\"name\":[{\"_given\":[{\"extension\":[{\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/data-absent-reason\",\"valueCode\":\"unknown\"}]},{\"extension\":[{\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/foo-bar-hat\",\"valueString\":\"hat-bar-foo\"}]}]},"))
		XCTAssertTrue(stringRepresentation.contains(",{\"extension\":[{\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/cat-in-the-hat\",\"valueBoolean\":true}],\"text\":\"Jon\",\"use\":\"nickname\"}]"))
		XCTAssertFalse(stringRepresentation.contains("\"_name\":"))
		XCTAssertFalse(stringRepresentation.contains("\"given\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_text\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_use\":"))
		XCTAssertFalse(stringRepresentation.contains("\"_id\":"))
	}
	
	// MARK: - Extensions
	
	func testDecodeEncodeNestedExtensionOnPrimitiveInPolymorphousExtension() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"id": "3",
			"_active": {
				"extension": [
					{
						"url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
						"valueString": "unable to determine",
						"_valueString": {
							"id": "3",
							"extension": [
								{
									"url": "http://hl7.org/fhir/StructureDefinition/foo",
									"extension": [
										{
											"url": "#bar",
											"valueString": "A horse walks into a bar"
										},
										{
											"url": "#hat",
											"valueReference": {
												"display": "Not a reference to a hat"
											}
										}
									]
								}
							]
						}
					}
				]
			}
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertEqual(patient.id, "3")
		
		XCTAssertNotNil(patient.active)
		XCTAssertNil(patient.active?.value)
		XCTAssertNil(patient.active?.id)
		XCTAssertNotNil(patient.active?.extension)
		XCTAssertEqual(patient.active?.extension?.count, 1)
		
		// Extension on "active"
		let extension1 = patient.active?.extension?.first
		XCTAssertNotNil(extension1)
		XCTAssertNotNil(extension1?.value)
		guard case .string(let stringString) = extension1?.value else {
			throw TestError.failed("Expecting extension1.value to be a string but is \(String(describing: extension1?.value))")
		}
		
		// Extension on "active.extension.valueString"
		XCTAssertEqual(stringString.extension?.count, 1)
		let extension2 = stringString.extension?.first
		XCTAssertNotNil(extension2)
		XCTAssertNotNil(extension2?.extension)
		XCTAssertNil(extension2?.value)
		
		// Extension on "active.extension.valueString.extension"
		XCTAssertEqual(extension2?.extension?.count, 2)
		let extension3a = extension2?.extension?.first
		let extension3b = extension2?.extension?.last
		XCTAssertNotNil(extension3a)
		XCTAssertNotNil(extension3b)
		XCTAssertNotEqual(extension3a?.url, extension3b?.url)
		XCTAssertEqual(extension3a?.url.value, "#bar")
		if case .string(let stringValue) = extension3a?.value {
			XCTAssertEqual(stringValue, "A horse walks into a bar")
		} else {
			XCTFail("Expecting extension3a.value to be a string but is \(String(describing: extension3a?.value))")
		}

		XCTAssertEqual(extension3b?.url.value, "#hat")
		if case .reference(let referenceValue) = extension3b?.value {
			XCTAssertEqual(referenceValue.display, "Not a reference to a hat")
		} else {
			XCTFail("Expecting extension3b.value to be a reference but is \(String(describing: extension3b?.value))")
		}

		
		let encoder = JSONEncoder()
		encoder.outputFormatting = [.sortedKeys]
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		XCTAssertEqual(stringRepresentation, "{\"_active\":{\"extension\":[{\"_valueString\":{\"extension\":[{\"extension\":[{\"url\":\"#bar\",\"valueString\":\"A horse walks into a bar\"},{\"url\":\"#hat\",\"valueReference\":{\"display\":\"Not a reference to a hat\"}}],\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/foo\"}],\"id\":\"3\"},\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/data-absent-reason\",\"valueString\":\"unable to determine\"}]},\"id\":\"3\",\"resourceType\":\"Patient\"}")
	}
	
	// MARK: - Enums
	
	func testDecodeEnum() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"gender": "male"
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertNotNil(patient)
		XCTAssertNotNil(patient.gender)
		guard case .male = patient.gender?.value else {
			throw TestError.failed("Should decode to 'male' but decoded to \(String(describing: patient.gender))")
		}
	}
	
	func testDecodeUnknownEnumFails() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"gender": "M"
		}
		"""
		let data = str.data(using: .utf8)!
		do {
			let patient = try decoder.decode(Patient.self, from: data)
			XCTFail("Should have thrown but I'm still here with \(patient)")
		} catch let error as Swift.DecodingError {
			XCTAssertEqual(error.errorDescription, "gender [Cannot initialize AdministrativeGender from invalid String value M]")
		} catch {
			XCTFail("Failed with unexpected error \(error)")
		}
	}
	
	func testDecodeEnumWithID() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"_gender": {
				"id": "A"
			}
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		XCTAssertNotNil(patient)
		XCTAssertNotNil(patient.gender)
		XCTAssertNil(patient.gender?.value)
		XCTAssertNotNil(patient.gender?.id)
		XCTAssertEqual(patient.gender?.id, "A")
		XCTAssertNil(patient.gender?.extension)
	}
	
	// MARK: - value[x]
	
	func testPolymorphousPropertyDecodesPrimitive() throws {
		// Annotation has either `authorReference` as a Reference or `authorString` as a string. Use it for tests.
		let decoder = JSONDecoder()
		let str = """
		{
			"authorString": "Author 1",
			"text": "Annotation with authorString"
		}
		"""
		let data = str.data(using: .utf8)!
		let annotation = try decoder.decode(Annotation.self, from: data)
		XCTAssertEqual(annotation.text, "Annotation with authorString")
		XCTAssertNotNil(annotation.author)
		switch annotation.author {
		case .string(let str):
			XCTAssertEqual(str, "Author 1")
		default:
			XCTFail("Expecting annotation.author to be string but got \(String(describing: annotation.author))")
		}
	}
	
	func testPolymorphousPropertyDecodesElement() throws {
		// Annotation has either `authorReference` as a Reference or `authorString` as a string. Use it for tests.
		let decoder = JSONDecoder()
		let str = """
		{
			"authorReference": {
				"display": "Author 2",
			},
			"text": "Annotation with authorReference"
		}
		"""
		let data = str.data(using: .utf8)!
		let annotation = try decoder.decode(Annotation.self, from: data)
		XCTAssertEqual(annotation.text, "Annotation with authorReference")
		XCTAssertNotNil(annotation.author)
		
		switch annotation.author {
		case .reference(let reference):
			XCTAssertEqual(reference.display, "Author 2")
		default:
			XCTFail("Expecting annotation.author to be a reference but got \(String(describing: annotation.author))")
		}
		
		if case .reference(let reference) = annotation.author {
			XCTAssertEqual(reference.display, "Author 2")
		} else {
			XCTFail("Expecting annotation.author to be a reference but got \(String(describing: annotation.author))")
		}
	}
	
	func testPolymorphousPropertyFailsOnMultipleValues() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"authorReference": {
				"display": "Author 3a",
			},
			"authorString": "Author 3b",
			"text": "Annotation with too many authors"
		}
		"""
		let data = str.data(using: .utf8)!
		do {
			let annotation = try decoder.decode(Annotation.self, from: data)
			XCTFail("Should have bailed out decoding Annotation but produced \(annotation)")
		} catch let error as DecodingError {
			XCTAssertEqual(error.errorDescription, "authorString [More than one value provided for \"author\"]")
		} catch {
			XCTFail("Expected to throw Swift.DecodingError but threw \(error)")
		}
	}
	
	func testPolymorphousPropertySucceedsWhenMissingValue() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"text": "Annotation with authorString"
		}
		"""
		let data = str.data(using: .utf8)!
		let annotation = try decoder.decode(Annotation.self, from: data)
		XCTAssertEqual(annotation.text, "Annotation with authorString")
		XCTAssertNil(annotation.author)
	}
	
	func testPolymorphousPropertyFailsOnMissingMandatoryValue() throws {
		let decoder = JSONDecoder()
		
		// Use `AuditEventEntityDetail` to test non-nullable value[x] fails decoding if it's missing
		let str = """
		{
			"type": "AuditEventEntityDetail without value"
		}
		"""
		let data = str.data(using: .utf8)!
		do {
			let audit = try decoder.decode(AuditEventEntityDetail.self, from: data)
			XCTFail("Should have bailed out decoding AuditEventEntityDetail but produced \(audit)")
		} catch let error as DecodingError {
			XCTAssertEqual(error.errorDescription, "valueBase64Binary.valueString [not found; Any]")
		} catch {
			XCTFail("Expected to throw Swift.DecodingError but threw \(error)")
		}
	}
}
