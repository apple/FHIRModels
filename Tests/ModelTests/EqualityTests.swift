//
//  EqualityTests.swift
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

class EqualityTests: XCTestCase {
	
	func testPrimitiveEquality() {
		let bool1a = FHIRPrimitive<FHIRBool>(id: "bool1")
		let bool1b = FHIRPrimitive<FHIRBool>(id: "bool1")
		let bool2 = FHIRPrimitive<FHIRBool>(id: "bool2")
		XCTAssertEqual(bool1a, bool1a)
		XCTAssertEqual(bool1a, bool1b)
		XCTAssertNotEqual(bool1a, bool2)
		
		let uri1a = FHIRURI("http://tx.fhir.org/test").asPrimitive()
		let uri1b = FHIRURI("http://tx.fhir.org/test").asPrimitive()
		let uri2 = FHIRURI("http://snomed.info/sct").asPrimitive()
		XCTAssertEqual(uri1a, uri1a)
		XCTAssertEqual(uri1a, uri1b)
		XCTAssertNotEqual(uri1a, uri2)
		
		let num1a = FHIRInteger(12).asPrimitive()
		let num1b = FHIRInteger(12).asPrimitive()
		let num2 = FHIRInteger(13).asPrimitive()
		XCTAssertEqual(num1a, num1a)
		XCTAssertEqual(num1a, num1b)
		XCTAssertEqual(num1b, num1a)
		XCTAssertNotEqual(num1a, num2)
		XCTAssertNotEqual(num2, num1a)

		// ValueX
		let value1a = Extension.ValueX.string("123456")
		let value1b = Extension.ValueX.string("123456")
		let value2 = Extension.ValueX.string("654321")
		XCTAssertEqual(value1a, value1a)
		XCTAssertEqual(value1a, value1b)
		XCTAssertNotEqual(value1a, value2)
		
		// Extension
		let ext1a = Extension(url: uri1a, value: value1a)
		let ext1b = Extension(url: uri1b, value: value1b)
		let ext2 = Extension(url: uri2, value: value2)
		XCTAssertEqual(ext1a, ext1a)
		XCTAssertEqual(ext1a, ext1b)
		XCTAssertNotEqual(ext1a, ext2)
		
		// Test order of extensions
		let bool3a = FHIRPrimitive<FHIRBool>(extension: [ext1a, ext2])
		let bool3b = FHIRPrimitive<FHIRBool>(extension: [ext2, ext1b])
		let bool4 = FHIRPrimitive<FHIRBool>(extension: [ext1a, ext1b])
		// TODO: should 3a and 3b be equal?
		XCTAssertNotEqual(bool3a, bool3b)
		XCTAssertNotEqual(bool3a, bool4)
	}
	
	func testElementEquality() {
		let name0 = Element(id: FHIRString("123").asPrimitive())
		let name1a = HumanName(family: FHIRString("Vitra").asPrimitive(),
							   given: [FHIRString("John").asPrimitive(), FHIRString("Jeff").asPrimitive()],
							   id: FHIRString("123").asPrimitive())
		let name1b = HumanName(family: FHIRString("Vitra").asPrimitive(),
							   given: [FHIRString("John").asPrimitive(), FHIRString("Jeff").asPrimitive()],
							   id: FHIRString("123").asPrimitive())
		let name2 = HumanName(family: FHIRString("Vitra").asPrimitive(),
							   given: [FHIRString("John").asPrimitive(), FHIRString("Jeffrey").asPrimitive()],
							   id: FHIRString("123").asPrimitive())
		XCTAssertNotEqual(name0, name1a)
		XCTAssertNotEqual(name1a, name0)
		XCTAssertEqual(name1a, name1a)
		XCTAssertEqual(name1a, name1b)
		XCTAssertNotEqual(name1a, name2)
	}
	
	func testResourceEquality() {
		let res0 = Resource(id: FHIRString("123").asPrimitive())
		let res1a = Patient(id: FHIRString("123").asPrimitive())
		XCTAssertEqual(res0, res0)
		XCTAssertNotEqual(res0, res1a)
		XCTAssertNotEqual(res1a, res0)
		
		let adr1 = Address(city: FHIRString("Boston").asPrimitive(),
						   id: FHIRString("123").asPrimitive(),
						   period: Period(end: DateTime(date: FHIRDate(year: 2019, month: 10)).asPrimitive(), start: DateTime(date: FHIRDate(year: 2011, month: 5)).asPrimitive()))
		let adr2 = Address(city: FHIRString("Cupertino").asPrimitive(),
						   id: FHIRString("123").asPrimitive(),
						   period: Period(start: DateTime(date: FHIRDate(year: 2019, month: 10)).asPrimitive()))
		XCTAssertNotEqual(adr1, adr2)
		
		let res1b = Patient(active: FHIRBool(true).asPrimitive(),
							address: [adr1, adr2],
							birthDate: FHIRDate(year: 1991).asPrimitive(),
							multipleBirth: Patient.MultipleBirthX.boolean(FHIRBool(true).asPrimitive()))
		let res1c = Patient(active: FHIRBool(true).asPrimitive(),
							address: [adr1, adr2],
							birthDate: FHIRDate(year: 1991).asPrimitive(),
							multipleBirth: Patient.MultipleBirthX.boolean(FHIRBool(true).asPrimitive()))
		let res1d = Patient(active: FHIRBool(true).asPrimitive(),
							address: [adr2, adr1],
							birthDate: FHIRDate(year: 1991).asPrimitive(),
							multipleBirth: Patient.MultipleBirthX.boolean(FHIRBool(true).asPrimitive()))
		XCTAssertEqual(res1b, res1b)
		XCTAssertEqual(res1b, res1c)
		XCTAssertEqual(res1c, res1b)
		// TODO: res1d has the "address" array order reversed compared to res1c. Should it be considered equal?
		XCTAssertNotEqual(res1c, res1d)
	}
}
