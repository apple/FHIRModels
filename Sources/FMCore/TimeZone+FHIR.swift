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
	
	init(_ originalString: String) throws {
		let scanner = Scanner(string: originalString)
		let (seconds, _) = try TimeZone.hs_parseComponents(from: scanner, expectAtEnd: true)
		self.init(secondsFromGMT: seconds)!
	}
	
	var fhirDescription: String {
		if secondsFromGMT() == 0 {
			return "Z"
		}
		let ahead = (secondsFromGMT() > 0)
		let seconds = abs(secondsFromGMT())
		let hours = seconds / 3600
		let minutes = (seconds - (3600 * hours)) / 60
		let prefix = ahead ? "+" : "-"
		return String(format: "\(prefix)%02d:%02d", hours, minutes)
	}
	
	static func hs_parseComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (secondsFromGMT: Int, timeZoneString: String) {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		
		let plusMinusZ = CharacterSet(charactersIn: "+-Z")
		var scanLocation = scanner.scanLocation
		guard let tzPrefix = scanner.hs_scanCharacters(from: plusMinusZ) else {
			throw FHIRDateParserError.invalidTimeZonePrefix(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		let secondsFromGMT: Int
		let timeZoneString: String
		if "Z" == tzPrefix {
			secondsFromGMT = 0
			timeZoneString = tzPrefix
		} else {
			let numbers = CharacterSet.decimalDigits
			scanLocation = scanner.scanLocation
			guard let hourString = scanner.hs_scanCharacters(from: numbers) else {
				throw FHIRDateParserError.invalidTimeZoneHour(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			guard hourString.count == 2 else {
				throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation + min(2, hourString.count)))
			}
			guard let hour = Int(hourString), hour <= 14 else {
				throw FHIRDateParserError.invalidTimeZoneHour(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			
			scanLocation = scanner.scanLocation
			guard scanner.scanString(":", into: nil) else {
				throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			
			scanLocation = scanner.scanLocation
			guard let minuteString = scanner.hs_scanCharacters(from: numbers) else {
				throw FHIRDateParserError.invalidTimeZoneMinute(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			guard minuteString.count <= 2 else {
				throw FHIRDateParserError.additionalCharacters(FHIRParserErrorPosition(string: scanner.string, location: scanLocation + min(2, minuteString.count)))
			}
			guard minuteString.count == 2, let minute = Int(minuteString), minute <= 59 else {
				throw FHIRDateParserError.invalidTimeZoneMinute(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			guard hour < 14 || minute == 0 else {
				throw FHIRDateParserError.invalidTimeZoneMinute(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			
			secondsFromGMT = (("-" == tzPrefix) ? -1 : 1) * ((3600 * hour) + (60 * minute))
			timeZoneString = "\(tzPrefix)\(hourString):\(minuteString)"
		}
		
		return (secondsFromGMT, timeZoneString)
	}
}
