//
//  PrimitiveConstructionTests.swift
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

class PrimitiveConstructionTests: XCTestCase {
	
	func testConstructingBools() {
		let true1 = FHIRBool(true)
		let true2: FHIRBool = true
		XCTAssertEqual(true1, true1)
		XCTAssertEqual(true1, true2)
		
		let false1 = FHIRPrimitive<FHIRBool>(FHIRBool(false))
		let false2 = FHIRPrimitive(FHIRBool(false))
		let false3 = FHIRPrimitive<FHIRBool>(false)
		let false4: FHIRPrimitive<FHIRBool> = false
		let false5 = false.asPrimitive()
		XCTAssertEqual(false1, false1)
		XCTAssertEqual(false1, false2)
		XCTAssertEqual(false1, false3)
		XCTAssertEqual(false1, false4)
		XCTAssertEqual(false1, false5)
		
		XCTAssertEqual(false1, false)
		XCTAssertNotEqual(false1, true)
	}
	
	func testConstructingStrings() {
		let nameA = FHIRString("Hello")
		let nameB: FHIRString = "Hello"
		XCTAssertEqual(nameA, nameA)
		XCTAssertEqual(nameA, nameB)
		
		let name1 = FHIRPrimitive<FHIRString>(FHIRString("My Test Group"))
		let name2 = FHIRPrimitive<FHIRString>("My Test Group")
		let name3 = FHIRPrimitive(FHIRString("My Test Group"))
		let name4: FHIRPrimitive<FHIRString> = "My Test Group"
		let name5 = "My Test Group".asFHIRStringPrimitive()
		XCTAssertEqual(name1, name1)
		XCTAssertEqual(name1, name2)
		XCTAssertEqual(name1, name3)
		XCTAssertEqual(name1, name4)
		XCTAssertEqual(name1, name5)
		
		XCTAssertNotEqual(nameA, name1.value)
		XCTAssertEqual(name1, "My Test Group")
		XCTAssertNotEqual(name1, "My Other Group")
	}
	
	func testConstructingURI() {
		let uriA = FHIRURI("scheme:path/foo/bar")
		let uriB: FHIRURI = "scheme:path/foo/bar"
		XCTAssertEqual(uriA, uriA)
		XCTAssertEqual(uriA, uriB)
		
		let uri1 = FHIRPrimitive<FHIRURI>(FHIRURI("https://apple.com"))
		let uri2 = FHIRPrimitive<FHIRURI>("https://apple.com")
		let uri3 = FHIRPrimitive(FHIRURI("https://apple.com"))
		let uri4: FHIRPrimitive<FHIRURI> = "https://apple.com"
		let uri5 = URL(string: "https://apple.com")!.asFHIRURIPrimitive()
		let uri6 = "https://apple.com".asFHIRURIPrimitive()
		XCTAssertEqual(uri1, uri1)
		XCTAssertEqual(uri1, uri2)
		XCTAssertEqual(uri1, uri3)
		XCTAssertEqual(uri1, uri4)
		XCTAssertEqual(uri1, uri5)
		XCTAssertEqual(uri1, uri6)
		
		XCTAssertNotEqual(uriA, uri1.value)
		XCTAssertEqual(uri1, "https://apple.com")
		XCTAssertNotEqual(uri1, "http://apple.com")
	}
	
	func testConstructingCanonical() {
		let canonicalA = Canonical("scheme:path/foo/bar|ABC")
		let canonicalB: Canonical = "scheme:path/foo/bar|ABC"
		XCTAssertEqual(canonicalA, canonicalA)
		XCTAssertEqual(canonicalA, canonicalB)
		
		let canonical1 = FHIRPrimitive<Canonical>(Canonical("https://apple.com|2"))
		let canonical2 = FHIRPrimitive<Canonical>("https://apple.com|2")
		let canonical3 = FHIRPrimitive(Canonical("https://apple.com|2"))
		let canonical4: FHIRPrimitive<Canonical> = "https://apple.com|2"
		let canonical5 = "https://apple.com|2".asFHIRCanonicalPrimitive()
		XCTAssertEqual(canonical1, canonical1)
		XCTAssertEqual(canonical1, canonical2)
		XCTAssertEqual(canonical1, canonical3)
		XCTAssertEqual(canonical1, canonical4)
		XCTAssertEqual(canonical1, canonical5)
		
		XCTAssertNotEqual(canonicalA, canonical1.value)
		XCTAssertEqual(canonical1, "https://apple.com|2")
		XCTAssertNotEqual(canonical1, "https://apple.com")
	}
	
	func testConstructingIntegers() {
		let integerA = FHIRInteger(18)
		let integerB: FHIRInteger = 18
		XCTAssertEqual(integerA, integerA)
		XCTAssertEqual(integerA, integerB)
		
		let unsignedA = FHIRUnsignedInteger(18)
		let unsignedB: FHIRUnsignedInteger = 18
		XCTAssertEqual(unsignedA, unsignedA)
		XCTAssertEqual(unsignedA, unsignedB)
		
		let positiveA = FHIRPositiveInteger(18)
		let positiveB: FHIRPositiveInteger = 18
		XCTAssertEqual(positiveA, positiveA)
		XCTAssertEqual(positiveA, positiveB)
		
		let integer1 = FHIRPrimitive<FHIRInteger>(FHIRInteger(19))
		let integer2 = FHIRPrimitive<FHIRInteger>(19 as FHIRInteger)
		let integer3 = FHIRPrimitive(FHIRInteger(19))
		let integer4: FHIRPrimitive<FHIRInteger> = 19
		let integer5 = 19.asFHIRIntegerPrimitive()
		XCTAssertEqual(integer1, integer1)
		XCTAssertEqual(integer1, integer2)
		XCTAssertEqual(integer1, integer3)
		XCTAssertEqual(integer1, integer4)
		XCTAssertEqual(integer1, integer5)
		
		let unsigned1 = 19.asFHIRUnsignedIntegerPrimitive()
		let unsigned2: FHIRPrimitive<FHIRUnsignedInteger> = 19
		XCTAssertEqual(unsigned1, unsigned1)
		XCTAssertEqual(unsigned1, unsigned2)
		
		let positive1 = 19.asFHIRPositiveIntegerPrimitive()
		let positive2: FHIRPrimitive<FHIRPositiveInteger> = 19
		XCTAssertEqual(positive1, positive1)
		XCTAssertEqual(positive1, positive2)
	}
	
	func testConstructingDecimals() {
		let decimalA = FHIRDecimal(18.2)
		let decimalB: FHIRDecimal = 18.2
		XCTAssertEqual(decimalA, decimalA)
		XCTAssertEqual(decimalA, decimalB)

		let decimal1 = FHIRPrimitive<FHIRDecimal>(FHIRDecimal(19.1))
		let decimal2 = FHIRPrimitive<FHIRDecimal>(19.1)
		let decimal3 = FHIRPrimitive(FHIRDecimal(19.1))
		let decimal4: FHIRPrimitive<FHIRDecimal> = 19.1
		let decimal5 = 19.1.asFHIRDecimalPrimitive()
		XCTAssertEqual(decimal1, decimal1)
		XCTAssertEqual(decimal1, decimal2)
		XCTAssertEqual(decimal1, decimal3)
		XCTAssertEqual(decimal1, decimal4)
		XCTAssertEqual(decimal1, decimal5)
		
		XCTAssertNotEqual(decimalA, decimal1.value)
		XCTAssertEqual(decimal1, 19.1)
		XCTAssertNotEqual(decimal1, 19.11)
	}
	
	func testConstructingEnums() {
		let typeA = GroupType.person
		let typeB: GroupType = .person
		XCTAssertEqual(typeA, typeA)
		XCTAssertEqual(typeA, typeB)
		
		let type1 = FHIRPrimitive<GroupType>(GroupType.device)
		let type2 = FHIRPrimitive<GroupType>(.device)
		let type3 = FHIRPrimitive(GroupType.device)
		let type4: FHIRPrimitive<GroupType> = GroupType.device.asPrimitive()
		let type5 = GroupType.device.asPrimitive()
		XCTAssertEqual(type1, type1)
		XCTAssertEqual(type1, type2)
		XCTAssertEqual(type1, type3)
		XCTAssertEqual(type1, type4)
		XCTAssertEqual(type1, type5)
		
		XCTAssertNotEqual(typeA, type1.value)
	}
	
	func testConstructingPrimitiveTypesWithLiteralsInResource() {
		let group = Group(active: false,
						  actual: true,
						  name: "My Test Group",
						  quantity: 18,
						  type: GroupType.person.asPrimitive())
		assertGroup(group: group)
	}
	
	func testDecodeEncodePrimitiveTypes() {
		struct TestStruct: Codable {
			var bool: FHIRBool
			var canonical: Canonical
			var date: FHIRDate
			var dateTime: DateTime
			var decimal: FHIRDecimal	// TODO: this friend still has precision as well as trailing-zeroes issues!
			var instant: Instant
			var instantDate: InstantDate
			var integer: FHIRInteger
//            var integer64: FHIRInteger64      // TODO: move tests over to R5
			var positiveInteger: FHIRPositiveInteger
			var string: FHIRString
			var time: FHIRTime
			var unsignedInteger: FHIRUnsignedInteger
			var uri: FHIRURI
		}
		
		let json = """
		{
		  "bool" : true,
		  "canonical" : "http://example.com/profile|4.2",
		  "date" : "1971-04",
		  "dateTime" : "2019-09-12T13:23:55+08:00",
		  "decimal" : 987.65,
		  "instant" : "1999-09-12T13:23:55.1234Z",
		  "instantDate" : "2005-11-30",
		  "integer" : -100,
		  "positiveInteger" : 280381,
		  "string" : "I'm a string!",
		  "time" : "19:02:41",
		  "unsignedInteger" : 0,
		  "uri" : "https://www.apple.com"
		}
		"""
		guard let data = json.data(using: .utf8) else {
			XCTFail("Failed to convert JSON to data")
			return
		}
		
		let decoder = JSONDecoder()
		let encoder = JSONEncoder()
		if #available(macOS 10.15, *), #available(iOS 13.0, *), #available(watchOS 7.0, *), #available(tvOS 13.0, *) {
			encoder.outputFormatting = [.sortedKeys, .prettyPrinted, .withoutEscapingSlashes]
		} else {
			encoder.outputFormatting = [.sortedKeys, .prettyPrinted]
		}
		do {
			let decoded = try decoder.decode(TestStruct.self, from: data)
			let encoded = try encoder.encode(decoded)
			XCTAssertNotNil(encoded)
			let str = String(data: encoded, encoding: .utf8)
			guard let jsonString = str else {
				XCTFail("Failed to create string from JSON data")
				return
			}
			XCTAssertEqual(jsonString, json)
		} catch {
			XCTFail("\(error)")
		}
	}
	
	func testDecodeEncodePrimitiveTypesFromResource() {
		let json = """
		{
		  "active" : false,
		  "actual" : true,
		  "id" : "test-group",
		  "name" : "My Test Group",
		  "quantity" : 18,
		  "resourceType" : "Group",
		  "type" : "person"
		}
		"""
		guard let data = json.data(using: .utf8) else {
			XCTFail("Failed to convert JSON to data")
			return
		}
		
		let decoder = JSONDecoder()
		let encoder = JSONEncoder()
        if #available(macOS 10.15, *), #available(iOS 13.0, *), #available(watchOS 7.0, *), #available(tvOS 13.0, *) {
			encoder.outputFormatting = [.sortedKeys, .prettyPrinted, .withoutEscapingSlashes]
		} else {
			encoder.outputFormatting = [.sortedKeys, .prettyPrinted]
		}
		do {
			// Assert decoding
			let group = try decoder.decode(Group.self, from: data)
			XCTAssertEqual(group.id?.value?.string, "test-group")
			XCTAssertEqual(group.id?.value, "test-group")
			XCTAssertEqual(group.id, "test-group")
			XCTAssertEqual(group.type.value?.rawValue, "person")
			XCTAssertEqual(group.active, false)
			XCTAssertEqual(group.actual, true)
			XCTAssertEqual(group.name, "My Test Group")
			// TODO: implement ExpressibleByIntegerLiteral on FHIRPrimitive
			XCTAssertEqual(group.quantity?.value, 18)
			assertGroup(group: group)
			
			// Assert encoding
			let encoded = try encoder.encode(group)
			XCTAssertNotNil(encoded)
			let str = String(data: encoded, encoding: .utf8)
			guard let jsonString = str else {
				XCTFail("Failed to create string from JSON data")
				return
			}
			XCTAssertEqual(jsonString, json)
		} catch {
			XCTFail("\(error)")
		}
	}
	
	func testIntegerOverflow() {
		// FHIR integers are capped at 32 bit, except FHIRInteger64 available since R5. These don't even compile:
		//let int = FHIRInteger(2_147_483_648)
		//let pint = FHIRPositiveInteger(4_294_967_292_147_483_648)
		//let uint = FHIRUnsignedInteger(4_294_967_292_147_483_648)
		//let int64 = FHIRInteger64(9_223_372_036_854_775_808)
		let int = FHIRInteger(2_147_483_647)
		XCTAssertEqual(int.integer, FHIRInteger.IntegerLiteralType.max)
		
		let pint = FHIRPositiveInteger(2_147_483_647)   // Note this is the signed max since we need to type it to Int
		XCTAssertEqual(pint.integer, FHIRPositiveInteger.IntegerLiteralType.max)
		
		let uint = FHIRUnsignedInteger(2_147_483_647)   // Note this is the signed max since we need to type it to Int
		XCTAssertEqual(uint.integer, FHIRUnsignedInteger.IntegerLiteralType.max)
		
//        let int64 = FHIRInteger64(9_223_372_036_854_775_807)
//        XCTAssertEqual(int64.integer!, FHIRInteger64.IntegerLiteralType.max)
		
		// Test JSON decoding
		let valueQuantity = "{\"actual\": true, \"type\": \"person\", \"quantity\": 4294967296}"
		let data = valueQuantity.data(using: .utf8)!
		let decoder = JSONDecoder()
		do {
			let _ = try decoder.decode(Group.self, from: data)
			XCTFail("Should fail parsing 33 bit integer but succeeded")
		} catch let error as DecodingError {
			if case DecodingError.dataCorrupted(let context) = error {
				XCTAssertEqual(context.codingPath.first?.stringValue, "quantity")
				XCTAssertEqual(context.debugDescription, "Parsed JSON number <4294967296> does not fit in Int32.")
			} else {
				XCTFail("Expected DecodingError.dataCorrupted but got \(error)")
			}
		} catch {
			XCTFail("Expected DecodingError but got \(error)")
		}
	}
	
	// MARK: - Utilities
	
	func assertGroup(group: Group, file: StaticString = #filePath, line: UInt = #line) {
		XCTAssertEqual(group.type, GroupType.person.asPrimitive(), file: file, line: line)
		XCTAssertTrue(group.actual.value?.bool ?? false, file: file, line: line)
		XCTAssertFalse(group.active?.value?.bool ?? true, file: file, line: line)
		XCTAssertEqual(group.name?.value, "My Test Group", file: file, line: line)
		XCTAssertEqual(group.quantity?.value, 18, file: file, line: line)
	}
}
