//
//  FHIRDateTests.swift
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
import ModelsR4
import XCTest

class FHIRTimeTests: XCTestCase {
	
	func testRendering() {
		let string = "11:37:44"
		var fhirtime = try! FHIRTime(string)
		let expectedfhirtime = FHIRTime(hour: 11, minute: 37, second: 44.0)
		XCTAssertEqual(fhirtime, expectedfhirtime)
		XCTAssertEqual(fhirtime.description, string)
		
		fhirtime.hour = 12
		XCTAssertEqual(fhirtime.description, "12:37:44")
		fhirtime.minute = 39
		XCTAssertEqual(fhirtime.description, "12:39:44")
		fhirtime.second = 2.0
		XCTAssertEqual(fhirtime.description, "12:39:02")
		fhirtime.second = 2.34
		XCTAssertEqual(fhirtime.description, "12:39:02.34")
	}
	
	func testParsing() {
		let successes = [
			("07:53:12", FHIRTime(hour: 7, minute: 53, second: 12.0)),
			("09:41:60.0", FHIRTime(hour: 9, minute: 41, second: 60.0)),
			("11:37:00.0", FHIRTime(hour: 11, minute: 37, second: 0.0)),
			("14:13:12.11", FHIRTime(hour: 14, minute: 13, second: 12.11)),
			("14:15:17.000000", FHIRTime(hour: 14, minute: 15, second: 17.0)),
		]
		
		for (string, expected) in successes {
			do {
				let fhirtime = try FHIRTime(string)
				XCTAssertEqual(fhirtime, expected)
				XCTAssertNotNil(fhirtime.originalSecondsString)
				XCTAssertEqual(string, fhirtime.description)
			} catch {
				XCTFail("Should succeed parsing \"\(string)\" but threw: \(error)")
			}
		}
		
		// Hour
		let hourThrowers = [
			(" 10:00:00", 0),
			("T12:00:00", 0),
			("24:00:00", 0),
			("30:00:00", 0),
		]
		for (string, location) in hourThrowers {
			do {
				let fhirtime = try FHIRTime(string)
				XCTFail("Should fail to parse \"\(string)\" but succeeded, parsed \(fhirtime)")
			} catch FHIRDateParserError.invalidHour(let position) {
				let expectedPosition = FHIRParserErrorPosition(string: string, location: location)
				XCTAssertEqual(position, expectedPosition)
			} catch {
				XCTFail("Should throw FHIRDateParserError.invalidHour but threw \(error)")
			}
		}
		
		// Minute
		let minuteThrowers = [
			("09:60:00", 3),
			("09:72:00", 3),
		]
		for (string, location) in minuteThrowers {
			do {
				let fhirtime = try FHIRTime(string)
				XCTFail("Should fail to parse \"\(string)\" but succeeded, parsed \(fhirtime)")
			} catch FHIRDateParserError.invalidMinute(let position) {
				let expectedPosition = FHIRParserErrorPosition(string: string, location: location)
				XCTAssertEqual(position, expectedPosition)
			} catch {
				XCTFail("Should throw FHIRDateParserError.invalidMinute but threw \(error)")
			}
		}
		
		// Seconds
		let secondThrowers = [
			("09:41:71", 6),
			("09:41:50.", 9),
			("09:41:60.0001", 9),
		]
		for (string, location) in secondThrowers {
			do {
				let fhirtime = try FHIRTime(string)
				XCTFail("Should fail to parse \"\(string)\" but succeeded, parsed \(fhirtime)")
			} catch FHIRDateParserError.invalidSecond(let position) {
				let expectedPosition = FHIRParserErrorPosition(string: string, location: location)
				XCTAssertEqual(position, expectedPosition)
			} catch {
				XCTFail("Should throw FHIRDateParserError.invalidSecond but threw \(error)")
			}
		}
		
		// Wrong separator
		let separatorThrowers = [
			("9:00:00", 1),
			("019:00:00", 3),
			("09:2:30", 4),
			("09:022:30", 6),
			("09:41:0", 7),
			("09:41:000", 9),
			("09 41 50", 2),
			("09-41-50", 2),
			("09:41 50", 5),
			("09:41-50", 5),
		]
		for (string, location) in separatorThrowers {
			do {
				let fhirtime = try FHIRTime(string)
				XCTFail("Should fail to parse \"\(string)\" but succeeded, parsed \(fhirtime)")
			} catch FHIRDateParserError.invalidSeparator(let position) {
				let expectedPosition = FHIRParserErrorPosition(string: string, location: location)
				XCTAssertEqual(position, expectedPosition)
			} catch {
				XCTFail("Should throw FHIRDateParserError.invalidSeparator but threw \(error)")
			}
		}
		
		// Extra characters
		let extraThrowers = [
			("09:41:50Z", 8),
			("09:41:50-08:00", 8),
			("09:41:50 ", 8),
			("09:41:50+", 8),
		]
		for (string, location) in extraThrowers {
			do {
				let fhirtime = try FHIRTime(string)
				XCTFail("Should fail to parse \"\(string)\" but succeeded, parsed \(fhirtime)")
			} catch FHIRDateParserError.additionalCharacters(let position) {
				let expectedPosition = FHIRParserErrorPosition(string: string, location: location)
				XCTAssertEqual(position, expectedPosition)
			} catch {
				XCTFail("Should throw FHIRDateParserError.additionalCharacters but threw \(error)")
			}
		}
	}
}
