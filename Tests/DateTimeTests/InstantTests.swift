//
//  DateTimeTests.swift
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
import ModelsR5
import XCTest

class InstantTests: XCTestCase {
	
	func testParsing() {
		let pairs: [String: Instant] = [
			"2017-12-09T09:30:51Z": Instant(date: InstantDate(year: 2017, month: 12, day: 9), time: FHIRTime(hour: 9, minute: 30, second: 51), timezone: TimeZone(secondsFromGMT: 0)!),
			"2018-01-10T10:31:52-00:00": Instant(date: InstantDate(year: 2018, month: 1, day: 10), time: FHIRTime(hour: 10, minute: 31, second: 52), timezone: TimeZone(secondsFromGMT: 0)!),
			"2019-02-11T11:32:53.65+04:00": Instant(date: InstantDate(year: 2019, month: 2, day: 11), time: FHIRTime(hour: 11, minute: 32, second: 53.65), timezone: TimeZone(secondsFromGMT: +4 * 3600)!),
			"2020-03-12T12:33:54.6543-06:00": Instant(date: InstantDate(year: 2020, month: 3, day: 12), time: FHIRTime(hour: 12, minute: 33, second: 54.6543), timezone: TimeZone(secondsFromGMT: -6 * 3600)!),
		]
		for (instantString, expected) in pairs {
			let instant = try? Instant(instantString)
			XCTAssertNotNil(instant)
			XCTAssertEqual(instant, expected)
			XCTAssertEqual(instant?.description, instantString)
		}
		
		let throwers: [String: Int] = [
			"2014": 4,
			"2015-10": 7,
			"2016-11-08": 10,
			"2017-12-09T": 11,
			"2017-12-09T09": 13,
			"2017-12-09T09:30": 16,
			"2017-12-09T09:30:51": 19,
			"2017T09:30:51Z": 4,
			"2017-12T09:30:51Z": 7,
		]
		for (thrower, errorLocation) in throwers {
			do {
				let instant = try Instant(thrower)
				XCTFail("Should have thrown trying to parse `Instant` from \(thrower) but created \(instant)")
			} catch {
				guard let parserError = error as? FHIRDateParserError else {
					XCTFail("Should throw FHIRDateParserError but threw \(error)")
					continue
				}
				XCTAssertEqual(parserError.errorPosition.location, errorLocation)
			}
		}
	}
	
	func testRendering() {
		let string = "2017-12-09T09:30:51Z"
		var parsed = try! Instant(string)
		let expected = Instant(date: InstantDate(year: 2017, month: 12, day: 9), time: FHIRTime(hour: 9, minute: 30, second: 51), timezone: TimeZone(secondsFromGMT: 0)!)
		XCTAssertEqual(parsed, expected)
		XCTAssertEqual(parsed.description, string)

		parsed.timeZone = TimeZone(secondsFromGMT: -5 * 3600)!
		XCTAssertNotEqual(parsed, expected)
		XCTAssertEqual(parsed.description, "2017-12-09T09:30:51-05:00")
	}
	
	func testEquality() {
		let string = "2017-12-09T09:30:51Z"
		let instant = try! Instant(string)
		let dateTime = try! DateTime(string)
		XCTAssertTrue(instant == instant)
		XCTAssertTrue(instant == dateTime)

		let string2 = "2017-12-09T09:30:51.001Z"
		let instant2 = try! Instant(string2)
		XCTAssertNotEqual(instant, instant2)
		
		let string3 = "2017-12-09T07:30:51-02:00"
		let instant3 = try! Instant(string3)
		XCTAssertNotEqual(instant, instant3)
        XCTAssertEqual(try instant.asNSDate(), try instant3.asNSDate())
	}
    
    func testComparison() throws {
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T22:33:45Z", compares: .orderedAscending)
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T21:33:44-02:00", compares: .orderedAscending)
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T23:33:45+01:00", compares: .orderedAscending)
        
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T22:33:44Z", compares: .orderedSame)
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T20:33:44-02:00", compares: .orderedSame)
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T23:33:44+01:00", compares: .orderedSame)
        
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T22:32:44Z", compares: .orderedDescending)
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T23:32:44+02:00", compares: .orderedDescending)
        try assertLeftToRight("2021-08-14T22:33:44Z", "2021-08-14T19:32:44-03:00", compares: .orderedDescending)
    }
    
    // MARK: - Tools
    
    private func assertLeftToRight(_ left: String, _ right: String, compares: ComparisonResult, file: StaticString = #file, line: UInt = #line) throws {
        let leftInstant = try Instant(left)
        let rightInstant = try Instant(right)
		XCTAssertEqual(try leftInstant.compare(rightInstant), compares, file: file, line: line)

    }
}
