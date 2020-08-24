//
//  DateTime.swift
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
 A date, date-time or partial date (e.g. just year or year + month).  If hours and minutes are specified, a time SHALL
 be populated. The format is a union of the schema types gYear, gYearMonth, date and dateTime. Seconds must be
 provided due to schema type constraints but may be zero-filled and may be ignored. Dates SHALL be valid dates.
 
 There are slight variations in permitted members, see FHIRDate's and FHIRTime's descriptions.
 
 http://hl7.org/fhir/datatypes.html#datetime
 */
public struct DateTime: FHIRPrimitiveType {
	
	private var _timeZoneIsUnaltered = true
	
	public var date: FHIRDate
	
	public var time: FHIRTime?
	
	public var timeZone: TimeZone? {
		didSet {
			_timeZoneIsUnaltered = false
		}
	}
	
	public let originalTimeZoneString: String?
	
	/**
	 Preferred initializer. You can only have a time if you have a timezone.
	 */
	public init(date: FHIRDate, time: FHIRTime? = nil, timezone: TimeZone? = nil) {
		self.init(date: date, time: time, timezone: timezone, originalTimeZoneString: nil)
	}
	
	public init(_ originalString: String) throws {
		let scanner = Scanner(string: originalString)
		let (date, time, timezone, timeZoneString) = try DateTime.parse(from: scanner)
		self.init(date: date, time: time, timezone: timezone, originalTimeZoneString: timeZoneString)
	}
	
	/**
	 Designated, private initializer. You can only have a time if you have a timezone.
	 */
	private init(date: FHIRDate, time: FHIRTime? = nil, timezone: TimeZone? = nil, originalTimeZoneString: String? = nil) {
		self.date = date
		self.time = time
		self.timeZone = timezone
		self.originalTimeZoneString = originalTimeZoneString
	}
	
	// MARK: Parsing
	
	/// Parse valid "datetime" strings.
	public static func parse(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (date: FHIRDate, time: FHIRTime?, timezone: TimeZone?, timeZoneString: String?) {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		
		// Date
		let date = try FHIRDate.parse(from: scanner, expectAtEnd: false)
		var time: FHIRTime? = nil
		var timeZone: TimeZone? = nil
		var timeZoneString: String? = nil
		
		// Time
		if scanner.scanString("T", into: nil) {
			time = try FHIRTime.parse(from: scanner, expectAtEnd: false)
			
			// TimeZone
			let (secondsFromGMT, tzString) = try TimeZone.hs_parseComponents(from: scanner, expectAtEnd: true)
			timeZone = TimeZone(secondsFromGMT: secondsFromGMT)
			timeZoneString = tzString
		}
		
		// At end
		let scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		return (date, time, timeZone, timeZoneString)
	}
}

// MARK: -

extension DateTime: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		try! self.init(value)
	}
}

extension DateTime: Decodable {
	
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

extension DateTime: CustomStringConvertible {
	
	public var description: String {
		if let time = time, let timeZone = timeZone {
			if _timeZoneIsUnaltered, let originalTimeZoneString = originalTimeZoneString {
				return "\(date.description)T\(time.description)\(originalTimeZoneString)"
			}
			return "\(date.description)T\(time.description)\(timeZone.fhirDescription)"
		}
		return date.description
	}
}

extension DateTime: Equatable {
	
	public static func ==(l: DateTime, r: DateTime) -> Bool {
		if l.date != r.date {
			return false
		}
		if l.time != r.time {
			return false
		}
		if l.timeZone != r.timeZone {
			return false
		}
		return true
	}
}
