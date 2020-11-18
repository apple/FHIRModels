//
//  ModelsR4Tests.swift
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

class ModelsR4Tests: XCTestCase {
	
	@available(OSX 10.15, *)
	@available(iOS 13.0, *)
    @available(watchOS 7.0, *)
    @available(tvOS 13.0, *)
	func testGroupResourceDecodeEncode() throws {
		let string =
"""
{
	"resourceType": "Group",
	"id": "101",
	"text": {
		"status": "additional",
		"div": "<div><p>Herd of 25 horses</p><p>Gender: mixed</p><p>Owner: John Smith</p></div>"
	},
	"type": "animal",
	"actual": true,
	"code": {
		"text": "Horse"
	},
	"name": "John's herd",
	"quantity": 25,
	"characteristic": [
		{
			"code": {
				"text": "gender"
			},
			"valueCodeableConcept": {
				"text": "mixed"
			},
			"exclude": false
		},
		{
			"code": {
				"text": "owner"
			},
			"valueCodeableConcept": {
				"text": "John Smith"
			},
			"exclude": false
		}
	]
}
"""
		guard let data = string.data(using: .utf8) else {
			throw TestError.failed("encoding string to UTF8 data")
		}
		
		let decoder = JSONDecoder()
		let group = try decoder.decode(Group.self, from: data)
		XCTAssertEqual(type(of: group).resourceType, .group)
		XCTAssertEqual(group.id, "101")
		XCTAssertEqual(group.type.value, .animal)
		XCTAssertEqual(group.actual, true)
		XCTAssertEqual(group.quantity, 25)
		XCTAssertEqual(group.code?.text, "Horse")
		XCTAssertEqual(group.characteristic?.count, 2)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .withoutEscapingSlashes
		let encoded = try encoder.encode(group)
		guard let encodedString = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("decoding UTF8 data to string")
		}
		XCTAssertTrue(encodedString.contains("\"id\":\"101\""))
		XCTAssertTrue(encodedString.contains("\"type\":\"animal\""))
		XCTAssertTrue(encodedString.contains("\"actual\":true"))
		XCTAssertTrue(encodedString.contains("\"quantity\":25"))
		XCTAssertTrue(encodedString.contains("\"code\":{\"text\":\"Horse\"}"))
		XCTAssertTrue(encodedString.contains("\"characteristic\":["))
	}
	
	func testFHIRDateToNSDateConversion() throws {
		let fhirDate = FHIRDate(year: 2018, month: 1, day: 1)
		let date = try fhirDate.asNSDate()
	
		var calendar = Calendar(identifier: .gregorian)
		calendar.timeZone = TimeZone(abbreviation: "GMT")!
		let components = calendar.dateComponents([.year, .month, .day], from: date)
		XCTAssertEqual(2018, components.year)
		XCTAssertEqual(1, components.month)
		XCTAssertEqual(1, components.day)
		
		let fhirDate2 = FHIRDate("2002")
		let date2 = try fhirDate2.asNSDate()
		let components2 = calendar.dateComponents([.year], from: date2)
		XCTAssertEqual(components2.year, 2002)
		
		let fhirDate3 = FHIRDate("1973-06")
		let date3 = try fhirDate3.asNSDate()
		let components3 = calendar.dateComponents([.year, .month], from: date3)
		XCTAssertEqual(1973, components3.year)
		XCTAssertEqual(6, components3.month)
		
		let fhirDate4 = FHIRDate("1905-08-23")
		let date4 = try fhirDate4.asNSDate()
		let components4 = calendar.dateComponents([.year, .month, .day], from: date4)
		XCTAssertEqual(1905, components4.year)
		XCTAssertEqual(8, components4.month)
		XCTAssertEqual(23, components4.day)
	}
	
	func testInstantToNSDateConversion() throws {
		let instant = Instant("2017-01-01T00:00:47Z")
		let date = try instant.asNSDate()
		
		var calendar = Calendar(identifier: .gregorian)
		calendar.timeZone = TimeZone(abbreviation: "GMT")!
		let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
		XCTAssertEqual(2017, components.year)
		XCTAssertEqual(1, components.month)
		XCTAssertEqual(1, components.day)
		XCTAssertEqual(0, components.hour)
		XCTAssertEqual(0, components.minute)
		XCTAssertEqual(47, components.second)
		
		let instant2 = Instant("2015-02-07T13:28:17.239+02:00")
		let date2 = try instant2.asNSDate()
		let components2 = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: date2)
		XCTAssertEqual(2015, components2.year)
		XCTAssertEqual(2, components2.month)
		XCTAssertEqual(7, components2.day)
		XCTAssertEqual(11, components2.hour)
		XCTAssertEqual(28, components2.minute)
		XCTAssertEqual(17, components2.second)
		XCTAssertNotNil(components2.nanosecond)
		XCTAssertGreaterThan(components2.nanosecond!, 239000000)
		XCTAssertLessThan(components2.nanosecond!, 239001000) // Accurate within 1000ns (.001ms)
	}
	
	func testDateTimeToNSDateConversion() throws {
		let dateTime = DateTime("2015-02-07T13:28:17-05:00")
		let date = try dateTime.asNSDate()
		
		var calendar = Calendar(identifier: .gregorian)
		calendar.timeZone = TimeZone(abbreviation: "GMT")!
		let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
		XCTAssertEqual(2015, components.year)
		XCTAssertEqual(2, components.month)
		XCTAssertEqual(7, components.day)
		XCTAssertEqual(18, components.hour) // Converted from GMT-0500 -> GMT = 13 -> 18
		XCTAssertEqual(28, components.minute)
		XCTAssertEqual(17, components.second)
		
		let dateTime2 = DateTime("2017-01-01T11:03:30.225Z")
		let date2 = try dateTime2.asNSDate()
		let components2 = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: date2)
		XCTAssertEqual(2017, components2.year)
		XCTAssertEqual(1, components2.month)
		XCTAssertEqual(1, components2.day)
		XCTAssertEqual(11, components2.hour)
		XCTAssertEqual(3, components2.minute)
		XCTAssertEqual(30, components2.second)
		XCTAssertNotNil(components2.nanosecond)
		XCTAssertGreaterThan(components2.nanosecond!, 225000000)
		XCTAssertLessThan(components2.nanosecond!, 225001000) // Accurate within 1000ns (.001ms)
	}
	
	func testNSDateToFHIRDateConversion() throws {
		let calendar = Calendar(identifier: .gregorian)
		let timeZone = TimeZone(abbreviation: "GMT")!
		let components = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: 2017, month: 5, day: 5)
		let date = components.date!
		let fhirDate = try FHIRDate(date: date, timeZone: timeZone)
		XCTAssertEqual(2017, fhirDate.year)
		XCTAssertNotNil(fhirDate.month)
		XCTAssertEqual(5, fhirDate.month)
		XCTAssertNotNil(fhirDate.day)
		XCTAssertEqual(5, fhirDate.day)
		
		let yearComponents = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: 2002)
		let date2 = yearComponents.date!
		let fhirDate2 = try FHIRDate(date: date2, timeZone: timeZone)
		XCTAssertEqual(2002, fhirDate2.year)
		XCTAssertEqual(1, fhirDate2.month)
		XCTAssertEqual(1, fhirDate2.day)
	}
	
	func testNSDateToInstantConversion() throws {
		let calendar = Calendar(identifier: .gregorian)
		let timeZone = TimeZone(abbreviation: "GMT")!
		let components = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: 2001, month: 3, day: 2, hour: 3, minute: 15, second: 25, nanosecond: 500000000) // 25.5 seconds
		let date = components.date!
		let fhirInstant = try Instant(date: date, timeZone: timeZone)
		XCTAssertNotNil(fhirInstant.date)
		XCTAssertEqual(fhirInstant.date.year, 2001)
		XCTAssertEqual(fhirInstant.date.month, 3)
		XCTAssertEqual(fhirInstant.date.day, 2)
		XCTAssertEqual(fhirInstant.time.hour, 3)
		XCTAssertEqual(fhirInstant.time.minute, 15)
		XCTAssertEqual(fhirInstant.time.second, 25.5)
	}
	
	func testNSDateToDateTimeConversion() throws {
		let calendar = Calendar(identifier: .gregorian)
		let timeZone = TimeZone(abbreviation: "GMT")!
		let components = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: 2001, month: 3, day: 2, hour: 19, minute: 24, second: 20)
		let date = components.date!
		let fhirDateTime = try DateTime(date: date, timeZone: timeZone)
		XCTAssertEqual(2001, fhirDateTime.date.year)
		XCTAssertEqual(3, fhirDateTime.date.month)
		XCTAssertEqual(2, fhirDateTime.date.day)
		XCTAssertEqual(19, fhirDateTime.time?.hour)
		XCTAssertEqual(24, fhirDateTime.time?.minute)
		XCTAssertEqual(20, fhirDateTime.time?.second)
		
		let components3 = DateComponents(calendar: calendar, timeZone: timeZone, era: nil)
		let date3 = components3.date!
		let fhirDateTime2 = try DateTime(date: date3, timeZone: timeZone)
		XCTAssertEqual(1, fhirDateTime2.date.year)
		XCTAssertEqual(1, fhirDateTime2.date.month)
		XCTAssertEqual(1, fhirDateTime2.date.day)
		XCTAssertEqual(0, fhirDateTime2.time?.hour)
		XCTAssertEqual(0, fhirDateTime2.time?.minute)
		XCTAssertEqual(0, fhirDateTime2.time?.second)
	}
	
	func testNSDateToFHIRTimeConversion() throws {
		let calendar = Calendar(identifier: .gregorian)
		let timeZone = TimeZone(abbreviation: "GMT")!
		let components = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: 2001, month: 3, day: 2, hour: 19, minute: 24, second: 20, nanosecond: 500000000) // <- 20.5 seconds
		let date = components.date!
		let fhirTime = try FHIRTime(date: date, timeZone: timeZone)
		XCTAssertEqual(19, fhirTime.hour)
		XCTAssertEqual(24, fhirTime.minute)
		XCTAssertEqual(20.5, fhirTime.second)
		
		let components2 = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: 2004, month: 7, day: 19, hour: 18, minute: 13, second: 22)
		let date2 = components2.date!
		let fhirTime2 = try FHIRTime(date: date2, timeZone: timeZone)
		XCTAssertEqual(18, fhirTime2.hour)
		XCTAssertEqual(13, fhirTime2.minute)
		XCTAssertEqual(22, fhirTime2.second)
		
		let components3 = DateComponents(calendar: calendar, timeZone: timeZone, era: nil)
		let date3 = components3.date!
		let fhirTime3 = try FHIRTime(date: date3, timeZone: timeZone)
		XCTAssertEqual(0, fhirTime3.hour)
		XCTAssertEqual(0, fhirTime3.minute)
		XCTAssertEqual(0, fhirTime3.second)
	}
}
