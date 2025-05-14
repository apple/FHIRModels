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
import Foundation
import Testing

struct FHIRDateComponentsTests {
	
	// All these were calculated in UTC
	let dates: Array<[String: Any]> = [
		[
			"date": Date(timeIntervalSinceReferenceDate: 478445070.0), // 2016-02-29 at 13:24:30.00 (leap day 2016)
			"gmtComponents": [2016, 2, 29, 13, 24, 30.0],
			"cstComponents": [2016, 2, 29, 7,  24, 30.0],
		],
		[
			"date": Date(timeIntervalSinceReferenceDate: 509981070.0), // 2017-02-28 at 13:24:30.00
			"gmtComponents": [2017, 2, 28, 13, 24, 30.0],
			"cstComponents": [2017, 2, 28, 7, 24, 30.0],
		],
		[
			"date": Date(timeIntervalSinceReferenceDate: 536457599.0), // 2017-12-31 at 23:59:59.00 (one second before 2018)
			"gmtComponents": [2017, 12, 31, 23, 59, 59.0],
			"cstComponents": [2017, 12, 31, 17, 59, 59.0],
		],
		[
			"date": Date(timeIntervalSinceReferenceDate: 536457600.0), // 2018-01-01 at 00:00:00.00
			"gmtComponents": [2018,  1,  1, 0,  0, 0.0],
			"cstComponents": [2017, 12, 31, 18, 0, 0.0],
		],
		[
			"date": Date(timeIntervalSinceReferenceDate: 536457600.5), // 2018-01-01 at 00:00:00.5 (half a second into 2018)
			"gmtComponents": [2018,  1,  1, 0,  0, 0.5],
			"cstComponents": [2017, 12, 31, 18, 0, 0.5],
		]
	]
	
	let gmt = TimeZone(abbreviation: "GMT")!
	let cst = TimeZone(abbreviation: "CST")! // UTC-6 Austin ;)
	
	@Test
	func testAllParsing() throws {
		for i in 0..<dates.count {
			let dateObject = dates[i]
			let date = dateObject["date"] as! Date
			let gmtComponents = dateObject["gmtComponents"] as! [NSNumber]
			let cstComponents = dateObject["cstComponents"] as! [NSNumber]
			
			let dateComponentsGMT = try FHIRDateComponents.dateComponents(from: date, with: gmt)
			#expect(dateComponentsGMT.year == gmtComponents[0] as? Int, "Date number \(i) incorrect GMT year")
			#expect(dateComponentsGMT.month == gmtComponents[1] as? UInt8, "Date number \(i) incorrect GMT month")
			#expect(dateComponentsGMT.day == gmtComponents[2] as? UInt8, "Date number \(i) incorrect GMT day")
			
			let timeComponentsGMT = try FHIRDateComponents.timeComponents(from: date, with: gmt)
			#expect(timeComponentsGMT.hour == gmtComponents[3] as? UInt8, "Date number \(i) incorrect GMT hour")
			#expect(timeComponentsGMT.minute == gmtComponents[4] as? UInt8, "Date number \(i) incorrect GMT minute")
			#expect(timeComponentsGMT.second == gmtComponents[5].decimalValue, "Date number \(i) incorrect GMT second")
			
			let componentsGMT = try FHIRDateComponents.components(from: date, with: gmt)
			#expect(componentsGMT.year == gmtComponents[0] as? Int, "Date number \(i) incorrect GMT year")
			#expect(componentsGMT.month == gmtComponents[1] as? UInt8, "Date number \(i) incorrect GMT month")
			#expect(componentsGMT.day == gmtComponents[2] as? UInt8, "Date number \(i) incorrect GMT day")
			#expect(componentsGMT.hour == gmtComponents[3] as? UInt8, "Date number \(i) incorrect GMT hour")
			#expect(componentsGMT.minute == gmtComponents[4] as? UInt8, "Date number \(i) incorrect GMT minute")
			#expect(componentsGMT.second == gmtComponents[5].decimalValue, "Date number \(i) incorrect GMT second")
			
			let dateComponentsCST = try FHIRDateComponents.dateComponents(from: date, with: cst)
			#expect(dateComponentsCST.year == cstComponents[0] as? Int, "Date number \(i) incorrect CST year")
			#expect(dateComponentsCST.month == cstComponents[1] as? UInt8, "Date number \(i) incorrect CST month")
			#expect(dateComponentsCST.day == cstComponents[2] as? UInt8, "Date number \(i) incorrect CST day")
			
			let timeComponentsCST = try FHIRDateComponents.timeComponents(from: date, with: cst)
			#expect(timeComponentsCST.hour == cstComponents[3] as? UInt8, "Date number \(i) incorrect CST hour")
			#expect(timeComponentsCST.minute == cstComponents[4] as? UInt8, "Date number \(i) incorrect CST minute")
			#expect(timeComponentsCST.second == cstComponents[5].decimalValue, "Date number \(i) incorrect CST second")
			
			let componentsCST = try FHIRDateComponents.components(from: date, with: cst)
			#expect(componentsCST.year == cstComponents[0] as? Int, "Date number \(i) incorrect CST year")
			#expect(componentsCST.month == cstComponents[1] as? UInt8, "Date number \(i) incorrect CST month")
			#expect(componentsCST.day == cstComponents[2] as? UInt8, "Date number \(i) incorrect CST day")
			#expect(componentsCST.hour == cstComponents[3] as? UInt8, "Date number \(i) incorrect CST hour")
			#expect(componentsCST.minute == cstComponents[4] as? UInt8, "Date number \(i) incorrect CST minute")
			#expect(componentsCST.second == cstComponents[5].decimalValue, "Date number \(i) incorrect CST second")
		}
	}
	
	@Test
	func testLeapDayParsing() throws {
		let date0 = try #require(dates.first?["date"] as? Date)
		let leapDayDate = try FHIRDateComponents.dateComponents(from: date0, with: gmt)
		#expect(2016 == leapDayDate.year)
		#expect(2 == leapDayDate.month)
		#expect(29 == leapDayDate.day)
		
		let leapDayTime = try FHIRDateComponents.timeComponents(from: date0, with: gmt)
		#expect(13 == leapDayTime.hour)
		#expect(24 == leapDayTime.minute)
		#expect(30.0 == leapDayTime.second)
		
		let leapDayComponents = try FHIRDateComponents.components(from: date0, with: gmt)
		#expect(2016 == leapDayComponents.year)
		#expect(2 == leapDayComponents.month)
		#expect(29 == leapDayComponents.day)
		#expect(13 == leapDayComponents.hour)
		#expect(24 == leapDayComponents.minute)
		#expect(30.0 == leapDayTime.second)
		
		let timeZoneShiftComponents = try FHIRDateComponents.components(from: date0, with: cst)
		#expect(2016 == timeZoneShiftComponents.year)
		#expect(2 == timeZoneShiftComponents.month)
		#expect(29 == timeZoneShiftComponents.day)
		#expect(7 == timeZoneShiftComponents.hour) // 13 hours behind UTC
		#expect(24 == timeZoneShiftComponents.minute)
		#expect(30.0 == timeZoneShiftComponents.second)
	}
	
	@Test
	func testNewYearParsing() throws {
		let date4 = try #require(dates.last?["date"] as? Date)
		let happyNewYearDateComponents = try FHIRDateComponents.dateComponents(from: date4, with: gmt)
		#expect(2018 == happyNewYearDateComponents.year)
		#expect(1 == happyNewYearDateComponents.month)
		#expect(1 == happyNewYearDateComponents.day)
		
		let happyNewYearTimeComponents = try FHIRDateComponents.timeComponents(from: date4, with: gmt)
		#expect(0 == happyNewYearTimeComponents.hour)
		#expect(0 == happyNewYearTimeComponents.minute)
		#expect(0.5 == happyNewYearTimeComponents.second)
		
		let happyNewYearComponents = try FHIRDateComponents.components(from: date4, with: gmt)
		#expect(2018 == happyNewYearComponents.year)
		#expect(1 == happyNewYearComponents.month)
		#expect(1 == happyNewYearComponents.day)
		#expect(0 == happyNewYearComponents.hour)
		#expect(0 == happyNewYearComponents.minute)
		#expect(0.5 == happyNewYearComponents.second)
		
		let timeZoneSwitchComponents = try FHIRDateComponents.components(from: date4, with: cst)
		#expect(2017 == timeZoneSwitchComponents.year)
		#expect(12 == timeZoneSwitchComponents.month)
		#expect(31 == timeZoneSwitchComponents.day)
		#expect(18 == timeZoneSwitchComponents.hour)
		#expect(0 == timeZoneSwitchComponents.minute)
		#expect(0.5 == timeZoneSwitchComponents.second) // Back in TX, its still 2017
	}
	
	@Test
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
			#expect(testGMTDate == date, "Date number \(i) GMT date conversion incorrect")
			
			let cstFHIRComponents = FHIRDateComponents(year: cstComponents[0] as! Int,
													   month: cstComponents[1] as? UInt8,
													   day: cstComponents[2] as? UInt8,
													   hour: cstComponents[3] as? UInt8,
													   minute: cstComponents[4] as? UInt8,
													   second: cstComponents[5].decimalValue,
													   timeZone: TimeZone(abbreviation: "CST")!)
			let testCSTDate = try cstFHIRComponents.asNSDate()
			#expect(testCSTDate == date, "Date number \(i) CST date conversion incorrect")
		}
	}
}
