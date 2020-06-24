//
//  FHIRParserErrorTests.swift
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

import FMCore
import XCTest

class FHIRParserErrorTests: XCTestCase {
	
	func testEquality() {
		let a = FHIRParserErrorPosition(string: "abc", location: 2)
		let b = FHIRParserErrorPosition(string: "def", location: 2)
		let c = FHIRParserErrorPosition(string: "abc", location: 3)
		let c1 = FHIRParserErrorPosition(string: "abc", location: 3)
		XCTAssertNotEqual(a, b)
		XCTAssertNotEqual(a, c)
		XCTAssertNotEqual(b, c)
		XCTAssertEqual(c, c1)
	}
}
