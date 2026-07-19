//
//  DateTimeParser+ScannerImpl.swift
//  HealthSoftware
//
//  Copyright 2026 Apple Inc.
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

/// legacy parser
package enum ScannerDateTimeParser: DateTimeParserProtocol {

	/// Parse valid "date" strings.
	/// See http://hl7.org/fhir/datatypes.html#date
	package static func dateComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> ParsedDate {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		let numbers = CharacterSet.decimalDigits

		var scanLocation = scanner.scanLocation
		guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 4, let year = Int(scanned), year > 0 else {
			throw FHIRDateParserError.invalidYear(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		var month: UInt8?
		var day: UInt8?
		if scanner.scanString("-", into: nil) {
			scanLocation = scanner.scanLocation
			guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 2, let scanMonth = UInt8(scanned), (1...12).contains(scanMonth) else {
				throw FHIRDateParserError.invalidMonth(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			month = scanMonth

			if scanner.scanString("-", into: nil) {
				scanLocation = scanner.scanLocation
				guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 2, let scanDay = UInt8(scanned), (1...31).contains(scanDay) else {
					throw FHIRDateParserError.invalidDay(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
				}
				day = scanDay
			}
		}

		scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		return ParsedDate(year: year, month: month, day: day)
	}

	/// Parse valid "date" strings but require month and day to be present, as required for `Instant`.
	/// See http://hl7.org/fhir/datatypes.html#date
    package static func instantDateComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> ParsedInstant.Date {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		let numbers = CharacterSet.decimalDigits

		// Year
		var scanLocation = scanner.scanLocation
		guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 4, let year = Int(scanned), year > 0 else {
			throw FHIRDateParserError.invalidYear(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// Month
		guard scanner.scanString("-", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}
		scanLocation = scanner.scanLocation
		guard let scannedMonth = scanner.hs_scanCharacters(from: numbers), scannedMonth.count == 2, let month = UInt8(scannedMonth), (1...12).contains(month) else {
			throw FHIRDateParserError.invalidMonth(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// Day
		guard scanner.scanString("-", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}
		scanLocation = scanner.scanLocation
		guard let scannedDay = scanner.hs_scanCharacters(from: numbers), scannedDay.count == 2, let day = UInt8(scannedDay), (1...31).contains(day) else {
			throw FHIRDateParserError.invalidDay(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// Finish
		scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

        return ParsedInstant.Date(year: year, month: month, day: day)
	}

	// MARK: - Time

	/// Parse valid "time" strings.
	/// See http://hl7.org/fhir/datatypes.html#time
	package static func timeComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> ParsedTime {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		let numbers = CharacterSet.decimalDigits

		// Hours
		var scanLocation = scanner.scanLocation
		guard let hourString = scanner.hs_scanCharacters(from: numbers) else {
			throw FHIRDateParserError.invalidHour(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		guard hourString.count == 2 else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation + hourString.count))
		}
		guard let hour = UInt8(hourString), hour <= 23 else {
			throw FHIRDateParserError.invalidHour(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		scanLocation = scanner.scanLocation
		guard scanner.scanString(":", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// Minutes
		scanLocation = scanner.scanLocation
		guard let minuteString = scanner.hs_scanCharacters(from: numbers) else {
			throw FHIRDateParserError.invalidMinute(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		guard minuteString.count == 2 else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation + minuteString.count))
		}
		guard let minute = UInt8(minuteString), minute <= 59 else {
			throw FHIRDateParserError.invalidMinute(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		scanLocation = scanner.scanLocation
		guard scanner.scanString(":", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// Seconds
		scanLocation = scanner.scanLocation
		guard let fullSecondString = scanner.hs_scanCharacters(from: numbers) else {
			throw FHIRDateParserError.invalidSecond(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		guard fullSecondString.count == 2 else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation + fullSecondString.count))
		}
		guard let scanSecondAlone = Int(fullSecondString), scanSecondAlone <= 60 else {
			throw FHIRDateParserError.invalidSecond(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		let secondString: String
		scanLocation = scanner.scanLocation
		if scanner.scanString(".", into: nil) {
			scanLocation = scanner.scanLocation
			guard let subSecondString = scanner.hs_scanCharacters(from: numbers) else {
				throw FHIRDateParserError.invalidSecond(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			secondString = "\(fullSecondString).\(subSecondString)"
		} else {
			secondString = fullSecondString
		}
		guard let second = Decimal(string: secondString), second <= 60.0 else {
			throw FHIRDateParserError.invalidSecond(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// End
		scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

        return ParsedTime(hour: hour, minute: minute, second: second, secondIntegerPart: UInt8(fullSecondString)!, originalSecondsString: secondString)
	}

	// MARK: - DateTime

	/// Parse valid "datetime" strings.
	/// See http://hl7.org/fhir/datatypes.html#datetime
	package static func dateTimeComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> ParsedDateTime {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil

		// Date
		let date = try dateComponents(from: scanner, expectAtEnd: false)

		// Time
		// Note: `scanString` is case-insensitive by default, so a lowercase 't' separator is accepted;
		// ScannerParsingKnownIssueTests pins this as a known issue.
        guard scanner.scanString("T", into: nil) else {
            // No time follows the date; the end-of-input check below is unreachable from here,
            // so it must also be enforced on this path.
            let scanLocation = scanner.scanLocation
            if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
                throw FHIRDateParserError.additionalCharacters(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
            }
            return ParsedDateTime(date: date, time: nil)
        }
        let time = try timeComponents(from: scanner, expectAtEnd: false)
        // TimeZone
        let (secondsFromGMT, tzString) = try TimeZone.hs_parseComponents(from: scanner, expectAtEnd: true)
        guard let timeZone = TimeZone(secondsFromGMT: secondsFromGMT) else {
            fatalError()
        }
        let timeZoneString = tzString

		// At end
		let scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

        return ParsedDateTime(date: date, time: .init(time: time, timeZone: timeZone, timeZoneString: timeZoneString))
	}

	// MARK: - Instant

	/// Parse valid "instant" strings.
	/// See http://hl7.org/fhir/datatypes.html#instant
	package static func instantComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> ParsedInstant {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil

		// Date, Time & TimeZone
		let date = try instantDateComponents(from: scanner, expectAtEnd: false)
		guard scanner.scanString("T", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRDateParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}

		let scanLocation = scanner.scanLocation
		let time = try timeComponents(from: scanner, expectAtEnd: false)
		let (secondsFromGMT, timeZoneString) = try TimeZone.hs_parseComponents(from: scanner, expectAtEnd: true)
		guard let timeZone = TimeZone(secondsFromGMT: secondsFromGMT) else {    // we should never hit this since `TimeZone.hs_parseComponents` takes care of validation
			throw FHIRDateParserError.invalidTimeZoneHour(FHIRDateParserErrorPosition(string: scanner.string, location: scanLocation))
		}

		// Done
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRDateParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}

        return ParsedInstant(date: date, time: .init(time: time, timeZone: timeZone, timeZoneString: timeZoneString))
	}
}


// MARK: - DateTimeParserProtocol

extension ScannerDateTimeParser {

	package static func dateComponents(from input: some StringProtocol, config: DateTimeParserConfig) throws -> ParsedDate {
		try dateComponents(from: Scanner(string: String(input)), expectAtEnd: true)
	}

    package static func instantDateComponents(from input: some StringProtocol, config: DateTimeParserConfig) throws -> ParsedInstant.Date {
		try instantDateComponents(from: Scanner(string: String(input)), expectAtEnd: true)
	}

	package static func timeComponents(from input: some StringProtocol, config: DateTimeParserConfig) throws -> ParsedTime {
		try timeComponents(from: Scanner(string: String(input)), expectAtEnd: true)
	}

	package static func dateTimeComponents(from input: some StringProtocol, config: DateTimeParserConfig) throws -> ParsedDateTime {
		try dateTimeComponents(from: Scanner(string: String(input)), expectAtEnd: true)
	}

	package static func instantComponents(from input: some StringProtocol, config: DateTimeParserConfig) throws -> ParsedInstant {
		try instantComponents(from: Scanner(string: String(input)), expectAtEnd: true)
	}

	/// - Note: `TimeZone.hs_parseComponents` performs no end-of-input check after the offset, so trailing
	///   characters are currently ignored here (and in `TimeZone.init(_:)`), deviating from the protocol's
	///   whole-string contract; pinned as a known issue in ScannerParsingKnownIssueTests.
	package static func timeZoneComponents(from input: some StringProtocol, config: DateTimeParserConfig) throws -> ParsedTimeZone {
		let (secondsFromGMT, timeZoneString) = try TimeZone.hs_parseComponents(from: Scanner(string: String(input)), expectAtEnd: true)
		return ParsedTimeZone(secondsFromGMT: secondsFromGMT, timeZoneString: timeZoneString)
	}
}
