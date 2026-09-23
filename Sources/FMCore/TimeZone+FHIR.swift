//
//  TimeZone+FHIR.swift
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

public extension TimeZone {
	
	@inlinable
	init(_ originalString: String) throws {
		var scanner = try FHIRDateTimeScanner(originalString)
		let (seconds, _) = try TimeZone.hs_parseComponents(from: &scanner, expectAtEnd: true)
		self.init(secondsFromGMT: seconds)!
	}
	
	func gmtOffsetString(for reference: ExpressibleAsNSDate) -> String {
		let referenceDate: Date
		do {
			referenceDate = try reference.asNSDate()
		} catch {
			// We really should start using os_log
			print("TimeZone.gmtOffsetString failed to get NSDate from \(reference), defaulting to now")
			referenceDate = Date()
		}
		
		let gmtOffset = secondsFromGMT(for: referenceDate)
		if gmtOffset == 0 {
			return "Z"
		}
		
		let ahead = (gmtOffset > 0)
		let seconds = abs(gmtOffset)
		let hours = seconds / 3600
		let minutes = (seconds - (3600 * hours)) / 60
		let prefix = ahead ? "+" : "-"
		return String(format: "\(prefix)%02d:%02d", hours, minutes)
	}
	
	@inlinable
	static func hs_parseComponents(from scanner: inout FHIRDateTimeScanner, expectAtEnd: Bool = true) throws -> (secondsFromGMT: Int, timeZoneString: String) {
		let scanLocation = scanner.index
		
		let secondsFromGMT: Int
		if scanner.scan("Z") {
			secondsFromGMT = 0
		} else {
			let isNegative = scanner.scan("-")
			guard isNegative || scanner.scan("+") else {
				throw FHIRDateParserError.invalidTimeZonePrefix(scanner.position(at: scanLocation))
			}
			
			let hour: Int = try scanner.scanDigitsAndVerify(2, in: 0...14, orThrow: FHIRDateParserError.invalidTimeZoneHour)
			
			let separatorLocation = scanner.index
			guard scanner.scan(":") else {
				throw FHIRDateParserError.invalidSeparator(scanner.position(at: separatorLocation))
			}
			
			let minuteLocation = scanner.index
			let minute: Int = try scanner.scanDigitsAndVerify(2, in: 0...59, orThrow: FHIRDateParserError.invalidTimeZoneMinute)
			guard hour < 14 || minute == 0 else {
				throw FHIRDateParserError.invalidTimeZoneMinute(scanner.position(at: minuteLocation))
			}
			
			secondsFromGMT = (isNegative ? -1 : 1) * ((3600 * hour) + (60 * minute))
		}
		let timeZoneString = scanner.substring(scanLocation..<scanner.index)
		
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(scanner.position(at: scanner.index))
		}
		
		return (secondsFromGMT, timeZoneString)
	}
}
