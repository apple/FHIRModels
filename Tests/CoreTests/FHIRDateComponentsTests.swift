//
//  FHIRDateComponentsTests.swift
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

class FHIRDateComponentsTests: XCTestCase {
	
	// All these were calculated in UTC
	let date0 = Date(timeIntervalSinceReferenceDate: 478445070.0) // 2016-02-29 at 13:24:30.00 (leap day 2016)
	let date1 = Date(timeIntervalSinceReferenceDate: 509981070.0) // 2017-02-28 at 13:24:30.00
	let date2 = Date(timeIntervalSinceReferenceDate: 536457599.0) // 2017-12-31 at 23:59:59.00 (one second before 2018)
	let date3 = Date(timeIntervalSinceReferenceDate: 536457600.0) // 2018-01-01 at 00:00:00.00
	let date4 = Date(timeIntervalSinceReferenceDate: 536457600.5) // 2018-01-01 at 00:00:00.5 (half a second into 2018)
	
	var dates: Array<[String: Any]> = []
	
	override func setUp() {
		dates = [
			[
				"date": date0,
				"gmtComponents": [2016, 2, 29, 13, 24, 30.0],
				"cstComponents": [2016, 2, 29, 7,  24, 30.0],
			],
			[
				"date": date1,
				"gmtComponents": [2017, 2, 28, 13, 24, 30.0],
				"cstComponents": [2017, 2, 28, 7, 24, 30.0],
			],
			[
				"date": date2,
				"gmtComponents": [2017, 12, 31, 23, 59, 59.0],
				"cstComponents": [2017, 12, 31, 17, 59, 59.0],
			],
			[
				"date": date3,
				"gmtComponents": [2018,  1,  1, 0,  0, 0.0],
				"cstComponents": [2017, 12, 31, 18, 0, 0.0],
			],
			[
				"date": date4,
				"gmtComponents": [2018,  1,  1, 0,  0, 0.5],
				"cstComponents": [2017, 12, 31, 18, 0, 0.5],
			]
		]
	}
	
	let gmt = TimeZone(abbreviation: "GMT")!
	let cst = TimeZone(abbreviation: "CST")! // UTC-6 Austin ;)
	
	func testAllParsing() throws {
		for i in 0..<dates.count {
			let dateObject = dates[i]
			let date = dateObject["date"] as! Date
			let gmtComponents = dateObject["gmtComponents"] as! [NSNumber]
			let cstComponents = dateObject["cstComponents"] as! [NSNumber]
			
			let dateComponentsGMT = try FHIRDateComponents.dateComponents(from: date, with: gmt)
			XCTAssertEqual(dateComponentsGMT.year, gmtComponents[0] as? Int, "Date number \(i) incorrect GMT year")
			XCTAssertEqual(dateComponentsGMT.month, gmtComponents[1] as? UInt8, "Date number \(i) incorrect GMT month")
			XCTAssertEqual(dateComponentsGMT.day, gmtComponents[2] as? UInt8, "Date number \(i) incorrect GMT day")
			
			let timeComponentsGMT = try FHIRDateComponents.timeComponents(from: date, with: gmt)
			XCTAssertEqual(timeComponentsGMT.hour, gmtComponents[3] as? UInt8, "Date number \(i) incorrect GMT hour")
			XCTAssertEqual(timeComponentsGMT.minute, gmtComponents[4] as? UInt8, "Date number \(i) incorrect GMT minute")
			XCTAssertEqual(timeComponentsGMT.second, gmtComponents[5].decimalValue, "Date number \(i) incorrect GMT second")
			
			let componentsGMT = try FHIRDateComponents.components(from: date, with: gmt)
			XCTAssertEqual(componentsGMT.year, gmtComponents[0] as? Int, "Date number \(i) incorrect GMT year")
			XCTAssertEqual(componentsGMT.month, gmtComponents[1] as? UInt8, "Date number \(i) incorrect GMT month")
			XCTAssertEqual(componentsGMT.day, gmtComponents[2] as? UInt8, "Date number \(i) incorrect GMT day")
			XCTAssertEqual(componentsGMT.hour, gmtComponents[3] as? UInt8, "Date number \(i) incorrect GMT hour")
			XCTAssertEqual(componentsGMT.minute, gmtComponents[4] as? UInt8, "Date number \(i) incorrect GMT minute")
			XCTAssertEqual(componentsGMT.second, gmtComponents[5].decimalValue, "Date number \(i) incorrect GMT second")
			
			let dateComponentsCST = try FHIRDateComponents.dateComponents(from: date, with: cst)
			XCTAssertEqual(dateComponentsCST.year, cstComponents[0] as? Int, "Date number \(i) incorrect CST year")
			XCTAssertEqual(dateComponentsCST.month, cstComponents[1] as? UInt8, "Date number \(i) incorrect CST month")
			XCTAssertEqual(dateComponentsCST.day, cstComponents[2] as? UInt8, "Date number \(i) incorrect CST day")
			
			let timeComponentsCST = try FHIRDateComponents.timeComponents(from: date, with: cst)
			XCTAssertEqual(timeComponentsCST.hour, cstComponents[3] as? UInt8, "Date number \(i) incorrect CST hour")
			XCTAssertEqual(timeComponentsCST.minute, cstComponents[4] as? UInt8, "Date number \(i) incorrect CST minute")
			XCTAssertEqual(timeComponentsCST.second, cstComponents[5].decimalValue, "Date number \(i) incorrect CST second")
			
			let componentsCST = try FHIRDateComponents.components(from: date, with: cst)
			XCTAssertEqual(componentsCST.year, cstComponents[0] as? Int, "Date number \(i) incorrect CST year")
			XCTAssertEqual(componentsCST.month, cstComponents[1] as? UInt8, "Date number \(i) incorrect CST month")
			XCTAssertEqual(componentsCST.day, cstComponents[2] as? UInt8, "Date number \(i) incorrect CST day")
			XCTAssertEqual(componentsCST.hour, cstComponents[3] as? UInt8, "Date number \(i) incorrect CST hour")
			XCTAssertEqual(componentsCST.minute, cstComponents[4] as? UInt8, "Date number \(i) incorrect CST minute")
			XCTAssertEqual(componentsCST.second, cstComponents[5].decimalValue, "Date number \(i) incorrect CST second")
		}
	}
	
	func testLeapDayParsing() throws {
		let leapDayDate = try FHIRDateComponents.dateComponents(from: date0, with: gmt)
		XCTAssertEqual(2016, leapDayDate.year)
		XCTAssertEqual(2, leapDayDate.month)
		XCTAssertEqual(29, leapDayDate.day)
		
		let leapDayTime = try FHIRDateComponents.timeComponents(from: date0, with: gmt)
		XCTAssertEqual(13, leapDayTime.hour)
		XCTAssertEqual(24, leapDayTime.minute)
		XCTAssertEqual(30.0, leapDayTime.second)
		
		let leapDayComponents = try FHIRDateComponents.components(from: date0, with: gmt)
		XCTAssertEqual(2016, leapDayComponents.year)
		XCTAssertEqual(2, leapDayComponents.month)
		XCTAssertEqual(29, leapDayComponents.day)
		XCTAssertEqual(13, leapDayComponents.hour)
		XCTAssertEqual(24, leapDayComponents.minute)
		XCTAssertEqual(30.0, leapDayTime.second)
		
		let timeZoneShiftComponents = try FHIRDateComponents.components(from: date0, with: cst)
		XCTAssertEqual(2016, timeZoneShiftComponents.year)
		XCTAssertEqual(2, timeZoneShiftComponents.month)
		XCTAssertEqual(29, timeZoneShiftComponents.day)
		XCTAssertEqual(7, timeZoneShiftComponents.hour) // 13 hours behind UTC
		XCTAssertEqual(24, timeZoneShiftComponents.minute)
		XCTAssertEqual(30.0, timeZoneShiftComponents.second)
	}
	
	func testNewYearParsing() throws {
		let happyNewYearDateComponents = try FHIRDateComponents.dateComponents(from: date4, with: gmt)
		XCTAssertEqual(2018, happyNewYearDateComponents.year)
		XCTAssertEqual(1, happyNewYearDateComponents.month)
		XCTAssertEqual(1, happyNewYearDateComponents.day)
		
		let happyNewYearTimeComponents = try FHIRDateComponents.timeComponents(from: date4, with: gmt)
		XCTAssertEqual(0, happyNewYearTimeComponents.hour)
		XCTAssertEqual(0, happyNewYearTimeComponents.minute)
		XCTAssertEqual(0.5, happyNewYearTimeComponents.second)
		
		let happyNewYearComponents = try FHIRDateComponents.components(from: date4, with: gmt)
		XCTAssertEqual(2018, happyNewYearComponents.year)
		XCTAssertEqual(1, happyNewYearComponents.month)
		XCTAssertEqual(1, happyNewYearComponents.day)
		XCTAssertEqual(0, happyNewYearComponents.hour)
		XCTAssertEqual(0, happyNewYearComponents.minute)
		XCTAssertEqual(0.5, happyNewYearComponents.second)
		
		let timeZoneSwitchComponents = try FHIRDateComponents.components(from: date4, with: cst)
		XCTAssertEqual(2017, timeZoneSwitchComponents.year)
		XCTAssertEqual(12, timeZoneSwitchComponents.month)
		XCTAssertEqual(31, timeZoneSwitchComponents.day)
		XCTAssertEqual(18, timeZoneSwitchComponents.hour)
		XCTAssertEqual(0, timeZoneSwitchComponents.minute)
		XCTAssertEqual(0.5, timeZoneSwitchComponents.second) // Back in TX, its still 2017
	}
	
	func testToNSDateConversions() throws {
		for i in 0..<dates.count {
			let dateObject = dates[i]
			let date = dateObject["date"] as! Date
			let gmtComponents = dateObject["gmtComponents"] as! [NSNumber]
			let cstComponents = dateObject["cstComponents"] as! [NSNumber]
			let gmtFHIRComponents = FHIRDateComponents(year: gmtComponents[0] as! Int,
													   month: gmtComponents[1] as? UInt8,
													   day: gmtComponents[2] as? UInt8,
													   hour: gmtComponents[3] as? UInt8,
													   minute: gmtComponents[4] as? UInt8,
													   second: gmtComponents[5].decimalValue,
													   timeZone: TimeZone(abbreviation: "GMT")!)
			let testGMTDate = try gmtFHIRComponents.asNSDate()
			XCTAssertEqual(testGMTDate, date, "Date number \(i) GMT date conversion incorrect")
			
			let cstFHIRComponents = FHIRDateComponents(year: cstComponents[0] as! Int,
													   month: cstComponents[1] as? UInt8,
													   day: cstComponents[2] as? UInt8,
													   hour: cstComponents[3] as? UInt8,
													   minute: cstComponents[4] as? UInt8,
													   second: cstComponents[5].decimalValue,
													   timeZone: TimeZone(abbreviation: "CST")!)
			let testCSTDate = try cstFHIRComponents.asNSDate()
			XCTAssertEqual(testCSTDate, date, "Date number \(i) CST date conversion incorrect")
		}
	}
}
