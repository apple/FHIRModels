//
//  FHIRDate.swift
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
 A date, or partial date (e.g. just year or year + month) as used in human communication. The format is YYYY, YYYY-MM,
 or YYYY-MM-DD, e.g. 2018, 1973-06, or 1905-08-23. There SHALL be no time zone. Dates SHALL be valid dates.
 
 While DSTU-2 permitted years from -9999 to 9999, R4 only allows years from 0001 to 9999, which is what we'll enforce,
 too.
 
 http://hl7.org/fhir/datatypes.html#date
 */
public struct FHIRDate: FHIRPrimitiveType {
	
	public var year: Int
	
	public var month: UInt8? {
		didSet {
			if let month = month, month > 12 {
				self.month = oldValue
			}
		}
	}
	
	public var day: UInt8? {
		didSet {
			if let day = day, day > 31 {
				self.day = oldValue
			}
		}
	}
	
	/**
	 Designated initializer. You can only have a day if you have a month. Day is capped at 31, month is capped at 12.
	 */
	public init(year: Int, month: UInt8? = nil, day: UInt8? = nil) {
		self.year = year
		if let month = month, month <= 12 {
			self.month = month
			if let day = day, day <= 31 {
				self.day = day
			}
		}
	}
	
	public init(_ originalString: String) throws {
		let scanner = Scanner(string: originalString)
		let (year, month, day) = try FHIRDate.parseComponents(from: scanner)
		self.init(year: year, month: month, day: day)
	}
	
	// MARK: Parsing
	
	/// Parse valid "date" strings.
	/// See http://hl7.org/fhir/datatypes.html#date
	public static func parseComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (year: Int, month: UInt8?, day: UInt8?) {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		let numbers = CharacterSet.decimalDigits
		
		var scanLocation = scanner.scanLocation
		guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 4, let year = Int(scanned), year > 0 else {
			throw FHIRDateParserError.invalidYear(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		var month: UInt8? = nil
		var day: UInt8? = nil
		if scanner.scanString("-", into: nil) {
			scanLocation = scanner.scanLocation
			guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 2, let scanMonth = UInt8(scanned), (1...12).contains(scanMonth) else {
				throw FHIRDateParserError.invalidMonth(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			month = scanMonth
			
			if scanner.scanString("-", into: nil) {
				scanLocation = scanner.scanLocation
				guard let scanned = scanner.hs_scanCharacters(from: numbers), scanned.count == 2, let scanDay = UInt8(scanned), (1...31).contains(scanDay) else {
					throw FHIRDateParserError.invalidDay(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
				}
				day = scanDay
			}
		}
		
		scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		return (year, month, day)
	}
	
	public static func parse(from scanner: Scanner, expectAtEnd: Bool = true) throws -> FHIRDate {
		let (year, month, day) = try FHIRDate.parseComponents(from: scanner, expectAtEnd: expectAtEnd)
		return self.init(year: year, month: month, day: day)
	}
}

// MARK: -

extension FHIRDate: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		try! self.init(value)
	}
}

extension FHIRDate: Codable {
	
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

extension FHIRDate: CustomStringConvertible {
	
	public var description: String {
		if let month = month {
			if let day = day {
				return String(format: "%04d-%02d-%02d", year, month, day)
			}
			return String(format: "%04d-%02d", year, month)
		}
		return String(format: "%04d", year)
	}
}

extension FHIRDate: Equatable {
	
	public static func ==(l: FHIRDate, r: FHIRDate) -> Bool {
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
