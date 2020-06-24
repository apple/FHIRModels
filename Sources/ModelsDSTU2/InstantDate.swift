//
//  InstantDate.swift
//  HealthSoftware
//
//  2020, Apple Inc.
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
import FMCore

/**
 A stricter version of `FHIRDate` which requires month and day to be present, for use in `Instant`.
 
 http://hl7.org/fhir/datatypes.html#date
 */
public struct InstantDate: FHIRPrimitiveType {
	
	public var year: Int
	
	public var month: UInt8 {
		didSet {
			if month > 12 {
				month = oldValue
			}
		}
	}
	
	public var day: UInt8 {
		didSet {
			if day > 31 {
				day = oldValue
			}
		}
	}
	
	/**
	 Designated initializer. Day is capped at 31, month is capped at 12.
	 */
	public init(year: Int, month: UInt8, day: UInt8) {
		self.year = year
		self.month = min(month, 12)
		self.day = min(day, 31)
	}
	
	public init(_ originalString: String) throws {
		let scanner = Scanner(string: originalString)
		let (year, month, day) = try InstantDate.parseComponents(from: scanner)
		self.init(year: year, month: month, day: day)
	}
	
	// MARK: Parsing
	
	/// Parse valid "date" strings but require month and day to be present
	/// See http://hl7.org/fhir/datatypes.html#date
	public static func parseComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (year: Int, month: UInt8, day: UInt8) {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		let numbers = CharacterSet.decimalDigits
		
		// Year
		var scanLocation = scanner.scanLocation
		guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 4, let year = Int(scanned), year > 0 else {
			throw FHIRDateParserError.invalidYear(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// Month
		guard scanner.scanString("-", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}
		scanLocation = scanner.scanLocation
		guard let scannedMonth = scanner.hs_scanCharacters(from: numbers), scannedMonth.count == 2, let month = UInt8(scannedMonth), (1...12).contains(month) else {
			throw FHIRDateParserError.invalidMonth(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// Day
		guard scanner.scanString("-", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}
		scanLocation = scanner.scanLocation
		guard let scannedDay = scanner.hs_scanCharacters(from: numbers), scannedDay.count == 2, let day = UInt8(scannedDay), (1...31).contains(day) else {
			throw FHIRDateParserError.invalidDay(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// Finish
		scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		return (year, month, day)
	}
	
	public static func parse(from scanner: Scanner, expectAtEnd: Bool = true) throws -> InstantDate {
		let (year, month, day) = try InstantDate.parseComponents(from: scanner, expectAtEnd: expectAtEnd)
		return self.init(year: year, month: month, day: day)
	}
}

// MARK: -

extension InstantDate: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		try! self.init(value)
	}
}

extension InstantDate: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		let string = try container.decode(String.self)
		try self.init(string)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(description)
	}
}

extension InstantDate: CustomStringConvertible {
	
	public var description: String {
		return String(format: "%04d-%02d-%02d", year, month, day)
	}
}

extension InstantDate: Equatable {
	
	public static func ==(l: InstantDate, r: InstantDate) -> Bool {
		if l.year != r.year {
			return false
		}
		if l.month != r.month {
			return false
		}
		if l.day != r.day {
			return false
		}
		return true
	}
	
	public static func ==(l: InstantDate, r: FHIRDate) -> Bool {
		if l.year != r.year {
			return false
		}
		if l.month != r.month {
			return false
		}
		if l.day != r.day {
			return false
		}
		return true
	}
	
	public static func ==(l: FHIRDate, r: InstantDate) -> Bool {
		if l.year != r.year {
			return false
		}
		if l.month != r.month {
			return false
		}
		if l.day != r.day {
			return false
		}
		return true
	}
}

extension InstantDate {
	
	public var fhirDate: FHIRDate {
		return FHIRDate(year: year, month: month, day: day)
	}
}
