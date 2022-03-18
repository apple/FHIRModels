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
@testable import ModelsR4
import XCTest

class DateTimeTests: XCTestCase {
	
	func testEquality() {
		let sample1: DateTime = "2020-08-20T16:09:12.45-07:00"
		let sample2: DateTime = "2020-08-20T16:09:12.45-07:00"
		let sample3: DateTime = "2020-08-20T18:09:12.45-05:00"
		let sample4: DateTime = "2020-08-20T16:09:12-07:00"
		let sample5: DateTime = "2020-08-20T16:09:12-04:00"
		let sample6: DateTime = "2020-08-20"
		let sample7: DateTime = "2020-08-21"
		let sample8: DateTime = "2020-08"
		
		XCTAssertEqual(sample1, sample1)
		XCTAssertEqual(sample1, sample2)
		XCTAssertNotEqual(sample1, sample3)
		XCTAssertNotEqual(sample1, sample4)
		XCTAssertNotEqual(sample1, sample5)
		XCTAssertNotEqual(sample1, sample6)
		XCTAssertNotEqual(sample1, sample7)
		XCTAssertNotEqual(sample1, sample8)
		
		XCTAssertNotEqual(sample4, sample5)
		XCTAssertNotEqual(sample6, sample7)
		XCTAssertNotEqual(sample6, sample8)
	}
	
	func testParsing() {
		let pairs: [String: DateTime] = [
			"2014": DateTime(date: FHIRDate(year: 2014)),
			"2015-10": DateTime(date: FHIRDate(year: 2015, month: 10)),
			"2016-11-08": DateTime(date: FHIRDate(year: 2016, month: 11, day: 8)),
			"2017-12-09T09:30:51Z": DateTime(date: FHIRDate(year: 2017, month: 12, day: 9), time: FHIRTime(hour: 9, minute: 30, second: 51), timezone: TimeZone(secondsFromGMT: 0)),
			"2018-01-10T10:31:52-00:00": DateTime(date: FHIRDate(year: 2018, month: 1, day: 10), time: FHIRTime(hour: 10, minute: 31, second: 52), timezone: TimeZone(secondsFromGMT: 0)),
			"2019-02-11T11:32:53.65+04:00": DateTime(date: FHIRDate(year: 2019, month: 2, day: 11), time: FHIRTime(hour: 11, minute: 32, second: 53.65), timezone: TimeZone(secondsFromGMT: +4 * 3600)),
			"2020-03-12T12:33:54.6543-06:00": DateTime(date: FHIRDate(year: 2020, month: 3, day: 12), time: FHIRTime(hour: 12, minute: 33, second: 54.6543), timezone: TimeZone(secondsFromGMT: -6 * 3600)),
		]
		for (dateTimeString, expected) in pairs {
			let dateTime = try? DateTime(dateTimeString)
			XCTAssertNotNil(dateTime)
			XCTAssertEqual(dateTime, expected)
			XCTAssertEqual(dateTime?.description, dateTimeString)
		}
		
		// Extra characters
		let extraThrowers = [
			("2019 ", 4),
			("2019/12", 4),
			("2019 19", 4),
			("2019-11 23", 7),
			("2019-11-23 ", 10),
		]
		for (string, location) in extraThrowers {
			do {
				let dateTime = try DateTime(string)
				XCTFail("Should fail to parse \"\(string)\" but succeeded, parsed \(dateTime)")
			} catch FHIRDateParserError.additionalCharacters(let position) {
				let expectedPosition = FHIRDateParserErrorPosition(string: string, location: location)
				XCTAssertEqual(position, expectedPosition)
			} catch {
				XCTFail("Should throw FHIRDateParserError.additionalCharacters but threw \(error)")
			}
		}
	}
	
	func testRendering() {
		let string = "2017-12-09T09:30:51Z"
		var parsed = try! DateTime(string)
		XCTAssertNotNil(parsed.originalTimeZoneString)
		let expected = DateTime(date: FHIRDate(year: 2017, month: 12, day: 9),
		                        time: FHIRTime(hour: 9, minute: 30, second: 51),
		                        timezone: TimeZone(secondsFromGMT: 0))
		XCTAssertEqual(parsed, expected)
		XCTAssertEqual(parsed.description, string)

		parsed.timeZone = TimeZone(secondsFromGMT: -5 * 3600)
		XCTAssertNotNil(parsed.originalTimeZoneString)
		XCTAssertNotEqual(parsed, expected)
		XCTAssertEqual(parsed.description, "2017-12-09T09:30:51-05:00")
		XCTAssertEqual(parsed.timeZone, TimeZone(secondsFromGMT: -5 * 3600))
		
		FHIRTime.secondsFormatter.locale = Locale(identifier: "de_DE")
		parsed.time?.second = 49.3
		XCTAssertEqual(parsed.description, "2017-12-09T09:30:49.3-05:00")
	}
    
    func testComparison() throws {
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T22:33:45Z", compares: .orderedAscending)
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T21:33:44-02:00", compares: .orderedAscending)
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T23:33:45+01:00", compares: .orderedAscending)

        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T22:33:44Z", compares: .orderedSame)
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T20:33:44-02:00", compares: .orderedSame)
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T23:33:44+01:00", compares: .orderedSame)
        
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T22:33:43Z", compares: .orderedDescending)
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T23:33:44+02:00", compares: .orderedDescending)
        try assertLeftToRight("2021-08-11T22:33:44Z", "2021-08-11T19:33:43-03:00", compares: .orderedDescending)
        
        try assertLeftToRight("2021-08-11", "2021-08-12", compares: .orderedAscending)
        try assertLeftToRight("2021-08-11", "2021-08-11", compares: .orderedSame)
        try assertLeftToRight("2021-08-11", "2021-08-10", compares: .orderedDescending)
        
        try assertLeftToRight("2021-08-11", "2021-09-11", compares: .orderedAscending)
        try assertLeftToRight("2021-08-11", "2021-08-11", compares: .orderedSame)
        try assertLeftToRight("2021-08-11", "2021-07-11", compares: .orderedDescending)
		
		try assertLeftToRight("2021-08-11", "2022-08-11", compares: .orderedAscending)
		try assertLeftToRight("2021-08-11", "2021-08-11", compares: .orderedSame)
		try assertLeftToRight("2021-08-11", "2020-08-11", compares: .orderedDescending)
    }
    
    // MARK: - Tools
    
    private func assertLeftToRight(_ left: String, _ right: String, compares: ComparisonResult, file: StaticString = #file, line: UInt = #line) throws {
        let leftDate = try DateTime(left)
        let rightDate = try DateTime(right)
		XCTAssertEqual(try leftDate.compare(rightDate), compares, file: file, line: line)
    }
}
