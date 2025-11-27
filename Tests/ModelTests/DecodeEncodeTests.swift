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

import Foundation
import ModelsR4
import Testing

struct DecodeEncodeTests {
	
	// MARK: - Primitives
	
	@Test
    func decodeEncodePrimitive() throws {
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
		#expect(patient.id == "1")
		#expect(patient.active != nil)
		#expect(patient.active == true)
		#expect(patient.active?.id == nil)
		#expect(patient.active?.extension == nil)
		#expect(patient.active?.primitiveDescription == "<FHIRPrimitive<FHIRBool> value=\"FHIRBool(bool: true)\", nil id, nil extensions>")
		
		let encoder = JSONEncoder()
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation.contains("\"resourceType\":\"Patient\"") == true)
		#expect(stringRepresentation.contains("\"id\":\"1\"") == true)
		#expect(stringRepresentation.contains("\"active\":true") == true)
		#expect(stringRepresentation.contains("\"_resourceType\":") == false)
		#expect(stringRepresentation.contains("\"_id\":") == false)
		#expect(stringRepresentation.contains("\"_active\":") == false)
	}
	
	@Test
    func decodeEncodePrimitiveWithID() throws {
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
		#expect(patient.id == "2")
		#expect(patient.active != nil)
		#expect(patient.active?.value == true)
		#expect(patient.active?.id == "2a")
		#expect(patient.active?.extension == nil)
		
		let encoder = JSONEncoder()
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation.contains("\"resourceType\":\"Patient\"") == true)
		#expect(stringRepresentation.contains("\"id\":\"2\"") == true)
		#expect(stringRepresentation.contains("\"active\":true") == true)
		#expect(stringRepresentation.contains("\"_active\":{\"id\":\"2a\"}") == true)
	}
	
	@Test
    func decodeEncodePrimitiveWithOnlyExtension() throws {
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
		#expect(patient.id == "3")
		#expect(patient.active != nil)
		#expect(patient.active?.value == nil)
		#expect(patient.active?.id == nil)
		#expect(patient.active?.extension != nil)
		#expect(patient.active?.extension?.count == 1)
		
		let encoder = JSONEncoder()
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation.contains("\"resourceType\":\"Patient\"") == true)
		#expect(stringRepresentation.contains("\"id\":\"3\"") == true)
		#expect(stringRepresentation.contains("\"active\":") == false)
		#expect(stringRepresentation.contains("\"_active\":{\"extension\":") == true)
		#expect(stringRepresentation.contains("\"url\":\"\(extURL)\"") == true)
		#expect(stringRepresentation.contains("\"valueString\":\"\(extVal)\"") == true)
	}
	
	// MARK: - Arrays
	
	@Test
    func decodeEncodeArrays() throws {
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
		#expect(patient.id == "4")
		#expect(patient.name?.count == 2)
		#expect(patient.name?.first?.given?.count == 2)
		#expect(patient.name?.first?.given?.first?.value == "Johannes")
		#expect(patient.name?.first?.given?.last?.value == "Sebastian")
		#expect(patient.name?.last?.text == "Johann")
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation.contains("\"resourceType\":\"Patient\"") == true)
		#expect(stringRepresentation.contains("\"id\":\"4\"") == true)
		#expect(stringRepresentation.contains("\"name\":[{\"given\":[\"Johannes\",\"Sebastian\"]},{\"text\":\"Johann\",\"use\":\"nickname\"}]") == true)
		#expect(stringRepresentation.contains("\"_name\":") == false)
	}
	
	@Test
    func decodeEncodeArrayWithID() throws {
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
		#expect(patient.id == "5")
		#expect(patient.name?.count == 2)
		#expect(patient.name?.first?.given?.count == 3)
		#expect(patient.name?.first?.given?[0].value == nil)
		#expect(patient.name?.first?.given?[0].id == "5a")
		#expect(patient.name?.first?.given?[1].value == "Sebastian")
		#expect(patient.name?.first?.given?[1].id == nil)
		#expect(patient.name?.first?.given?[2].value == "Maximilian")
		#expect(patient.name?.first?.given?[2].id == "5c")
		#expect(patient.name?.last?.text == "Johann")
		#expect(patient.name?.last?.id == "5z")
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation.contains("\"resourceType\":\"Patient\"") == true)
		#expect(stringRepresentation.contains("\"id\":\"5\"") == true)
		#expect(stringRepresentation.contains("\"given\":[null,\"Sebastian\",\"Maximilian\"]") == true)
		#expect(stringRepresentation.contains("\"_given\":[{\"id\":\"5a\"},null,{\"id\":\"5c\"}]") == true)
		#expect(stringRepresentation.contains("{\"id\":\"5z\",\"text\":\"Johann\",\"use\":\"nickname\"}") == true)
		#expect(stringRepresentation.contains("\"_name\":") == false)
		#expect(stringRepresentation.contains("\"_text\":") == false)
		#expect(stringRepresentation.contains("\"_use\":") == false)
		#expect(stringRepresentation.contains("\"_id\":") == false)
	}
	
	@Test
    func decodeEncodeArrayWithOnlyExtension() throws {
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
		#expect(patient.id == "6")
		#expect(patient.name?.count == 2)
		#expect(patient.name?.first?.given?.count == 2)        // the 3rd item, a "null" value, is stripped
		#expect(patient.name?.first?.given?[0].extension?.count == 1)
		#expect(patient.name?.first?.given?[0].extension?.first?.url.value == "http://hl7.org/fhir/StructureDefinition/data-absent-reason")
		#expect(patient.name?.first?.given?[1].extension?.count == 1)
		#expect(patient.name?.first?.given?[1].extension?.first?.url.value == "http://hl7.org/fhir/StructureDefinition/foo-bar-hat")
		#expect(patient.name?.last?.text == "Jon")
		#expect(patient.name?.last?.extension?.count == 1)
		#expect(patient.name?.last?.extension?.first?.url.value == "http://hl7.org/fhir/StructureDefinition/cat-in-the-hat")
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = [.sortedKeys]
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation.contains("\"resourceType\":\"Patient\"") == true)
		#expect(stringRepresentation.contains("\"id\":\"6\"") == true)
		#expect(stringRepresentation.contains("\"name\":[{\"_given\":[{\"extension\":[{\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/data-absent-reason\",\"valueCode\":\"unknown\"}]},{\"extension\":[{\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/foo-bar-hat\",\"valueString\":\"hat-bar-foo\"}]}]},") == true)
		#expect(stringRepresentation.contains(",{\"extension\":[{\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/cat-in-the-hat\",\"valueBoolean\":true}],\"text\":\"Jon\",\"use\":\"nickname\"}]") == true)
		#expect(stringRepresentation.contains("\"_name\":") == false)
		#expect(stringRepresentation.contains("\"given\":") == false)
		#expect(stringRepresentation.contains("\"_text\":") == false)
		#expect(stringRepresentation.contains("\"_use\":") == false)
		#expect(stringRepresentation.contains("\"_id\":") == false)
	}
	
	// MARK: - Extensions
	
	@Test
    func decodeEncodeNestedExtensionOnPrimitiveInPolymorphousExtension() throws {
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
		#expect(patient.id == "3")
		
		#expect(patient.active != nil)
		#expect(patient.active?.value == nil)
		#expect(patient.active?.id == nil)
		#expect(patient.active?.extension != nil)
		#expect(patient.active?.extension?.count == 1)
		
		// Extension on "active"
		let extension1 = patient.active?.extension?.first
		#expect(extension1 != nil)
		#expect(extension1?.value != nil)
		guard case .string(let stringString) = extension1?.value else {
			throw TestError.failed("Expecting extension1.value to be a string but is \(String(describing: extension1?.value))")
		}
		
		// Extension on "active.extension.valueString"
		#expect(stringString.extension?.count == 1)
		let extension2 = stringString.extension?.first
		#expect(extension2 != nil)
		#expect(extension2?.extension != nil)
		#expect(extension2?.value == nil)
		
		// Extension on "active.extension.valueString.extension"
		#expect(extension2?.extension?.count == 2)
		let extension3a = extension2?.extension?.first
		let extension3b = extension2?.extension?.last
		#expect(extension3a != nil)
		#expect(extension3b != nil)
		#expect(extension3a?.url != extension3b?.url)
		#expect(extension3a?.url.value == "#bar")
		if case .string(let stringValue) = extension3a?.value {
			#expect(stringValue == "A horse walks into a bar".asFHIRStringPrimitive())
		} else {
			#expect(Bool(false), "Expecting extension3a.value to be a string but is \(String(describing: extension3a?.value))")
		}

		#expect(extension3b?.url.value == "#hat")
		if case .reference(let referenceValue) = extension3b?.value {
			#expect(referenceValue.display == "Not a reference to a hat")
		} else {
			#expect(Bool(false), "Expecting extension3b.value to be a reference but is \(String(describing: extension3b?.value))")
		}

		
		let encoder = JSONEncoder()
		encoder.outputFormatting = [.sortedKeys]
		let encoded = try encoder.encode(patient)
		guard let stringRepresentation = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("Failed to create string from encoded data")
		}
		#expect(stringRepresentation == "{\"_active\":{\"extension\":[{\"_valueString\":{\"extension\":[{\"extension\":[{\"url\":\"#bar\",\"valueString\":\"A horse walks into a bar\"},{\"url\":\"#hat\",\"valueReference\":{\"display\":\"Not a reference to a hat\"}}],\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/foo\"}],\"id\":\"3\"},\"url\":\"http:\\/\\/hl7.org\\/fhir\\/StructureDefinition\\/data-absent-reason\",\"valueString\":\"unable to determine\"}]},\"id\":\"3\",\"resourceType\":\"Patient\"}")
	}
	
	// MARK: - Enums
	
	@Test
    func decodeEnum() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"resourceType": "Patient",
			"gender": "male"
		}
		"""
		let data = str.data(using: .utf8)!
		let patient = try decoder.decode(Patient.self, from: data)
		#expect(patient.gender != nil)
		guard case .male = patient.gender?.value else {
			throw TestError.failed("Should decode to 'male' but decoded to \(String(describing: patient.gender))")
		}
	}
	
	@Test
    func decodeUnknownEnumFails() throws {
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
			#expect(Bool(false), "Should have thrown but I'm still here with \(patient)")
		} catch let error as Swift.DecodingError {
			#expect(error.errorDescription == "gender [Cannot initialize AdministrativeGender from invalid String value M]")
		}
	}
	
	@Test
    func decodeEnumWithID() throws {
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
		#expect(patient.gender != nil)
		#expect(patient.gender?.value == nil)
		#expect(patient.gender?.id != nil)
		#expect(patient.gender?.id == "A")
		#expect(patient.gender?.extension == nil)
	}
	
	// MARK: - value[x]
	
	@Test
    func polymorphousPropertyDecodesPrimitive() throws {
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
		#expect(annotation.text == "Annotation with authorString".asFHIRStringPrimitive())
		#expect(annotation.author != nil)
		switch annotation.author {
		case .string(let str):
            #expect(str == "Author 1".asFHIRStringPrimitive())
		default:
			#expect(Bool(false), "Expecting annotation.author to be string but got \(String(describing: annotation.author))")
		}
	}
	
	@Test
    func polymorphousPropertyDecodesElement() throws {
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
		#expect(annotation.text == "Annotation with authorReference".asFHIRStringPrimitive())
		#expect(annotation.author != nil)
		
		switch annotation.author {
		case .reference(let reference):
			#expect(reference.display == "Author 2")
		default:
			#expect(Bool(false), "Expecting annotation.author to be a reference but got \(String(describing: annotation.author))")
		}
		
		if case .reference(let reference) = annotation.author {
			#expect(reference.display == "Author 2")
		} else {
			#expect(Bool(false), "Expecting annotation.author to be a reference but got \(String(describing: annotation.author))")
		}
	}
	
	@Test
    func polymorphousPropertyFailsOnMultipleValues() throws {
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
			#expect(Bool(false), "Should have bailed out decoding Annotation but produced \(annotation)")
		} catch let error as DecodingError {
			#expect(error.errorDescription == "authorString [More than one value provided for \"author\"]")
		}
	}
    
    @Test
    func polymorphousPropertyFailsOnValueOfWrongType() throws {
        let decoder = JSONDecoder()
        
        let str = """
        {
            "authorReference": "Author 3b",
            "text": "Annotation with authorReference that's actually a string"
        }
        """
        let data = str.data(using: .utf8)!
        do {
            let annotation = try decoder.decode(Annotation.self, from: data)
            #expect(Bool(false), "Should have bailed out decoding Annotation but produced \(annotation)")
        } catch let error as DecodingError {
            #expect(error.errorDescription == "authorReference [not Dictionary<String, Any>]")
        }
    }
	
	@Test
    func polymorphousPropertySucceedsWhenMissingValue() throws {
		let decoder = JSONDecoder()
		let str = """
		{
			"text": "Annotation with authorString"
		}
		"""
		let data = str.data(using: .utf8)!
		let annotation = try decoder.decode(Annotation.self, from: data)
		#expect(annotation.text == "Annotation with authorString".asFHIRStringPrimitive())
		#expect(annotation.author == nil)
	}
	
	@Test
    func polymorphousPropertyFailsOnMissingMandatoryValue() throws {
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
			#expect(Bool(false), "Should have bailed out decoding AuditEventEntityDetail but produced \(audit)")
		} catch let error as DecodingError {
			#expect(error.errorDescription == "valueBase64Binary.valueString [not found; Any]")
		}
	}
    
    @Test
    func polymorphousPropertyFailsOnValueOfWrongTypeForMandatoryValue() throws {
        let decoder = JSONDecoder()
        
        let str = """
        {
            "resourceType": "MedicationStatement",
            "status": "active",
            "subject": {"reference": "#pat1"},
            "medicationReference": "#med1"
        }
        """
        let data = str.data(using: .utf8)!
        do {
            let audit = try decoder.decode(MedicationStatement.self, from: data)
            #expect(Bool(false), "Should have bailed out decoding MedicationStatement but produced \(audit)")
        } catch let error as DecodingError {
            #expect(error.errorDescription == "medicationReference [not Dictionary<String, Any>]")
        }
    }
}
