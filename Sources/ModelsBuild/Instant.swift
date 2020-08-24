//
//  Instant.swift
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
 An instant in time in the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (e.g. 2015-02-07T13:28:17.239+02:00 or
 2017-01-01T00:00:00Z). The time SHALL specified at least to the second and SHALL include a time zone.
 
 - Note: This is intended for when precisely observed times are required (typically system logs etc.), and not
 human-reported times - for those, use date or dateTime (which can be as precise as instant, but is not required to be).
 Instant is a more constrained dateTime.
 
 http://hl7.org/fhir/datatypes.html#instant
 */
public struct Instant: FHIRPrimitiveType {
	
	private var _timezoneIsUnaltered = true
	
	public var date: InstantDate
	
	public var time: FHIRTime
	
	public var timeZone: TimeZone {
		didSet {
			_timezoneIsUnaltered = false
		}
	}
	
	public let originalTimeZoneString: String?
	
	/**
	 *  Designated initializer.
	 */
	public init(date: InstantDate, time: FHIRTime, timezone: TimeZone) {
		self.init(date: date, time: time, timezone: timezone, originalTimeZoneString: nil)
	}
	
	public init(_ originalString: String) throws {
		let scanner = Scanner(string: originalString)
		let (date, time, timezone, timeZoneString) = try Instant.parse(from: scanner)
		self.init(date: date, time: time, timezone: timezone, originalTimeZoneString: timeZoneString)
	}
	
	private init(date: InstantDate, time: FHIRTime, timezone: TimeZone, originalTimeZoneString: String? = nil) {
		self.date = date
		self.time = time
		self.timeZone = timezone
		self.originalTimeZoneString = originalTimeZoneString
	}
	
	// MARK: Parsing
	
	/// Parse valid "instant" strings.
	public static func parse(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (date: InstantDate, time: FHIRTime, timezone: TimeZone, timeZoneString: String) {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		
		// Date, Time & TimeZone
		let date = try InstantDate.parse(from: scanner, expectAtEnd: false)
		guard scanner.scanString("T", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}
		
		let scanLocation = scanner.scanLocation
		let time = try FHIRTime.parse(from: scanner, expectAtEnd: false)
		let (secondsFromGMT, timeZoneString) = try TimeZone.hs_parseComponents(from: scanner, expectAtEnd: true)
		guard let timeZone = TimeZone(secondsFromGMT: secondsFromGMT) else {    // we should never hit this since `TimeZone.hs_parseComponents` takes care of validation
			throw FHIRDateParserError.invalidTimeZoneHour(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// Done
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRParserErrorPosition(string: scanner.string, location: scanner.scanLocation))
		}
		
		return (date, time, timeZone, timeZoneString)
	}
}

// MARK: -

extension Instant: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		try! self.init(value)
	}
}

extension Instant: Codable {
	
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

extension Instant: CustomStringConvertible {
	
	public var description: String {
		if _timezoneIsUnaltered, let originalTimeZoneString = originalTimeZoneString {
			return "\(date.description)T\(time.description)\(originalTimeZoneString)"
		}
		return "\(date.description)T\(time.description)\(timeZone.fhirDescription)"
	}
}

extension Instant: Equatable {
	
	public static func ==(l: Instant, r: Instant) -> Bool {
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
	
	public static func ==(l: Instant, r: DateTime) -> Bool {
		if !(l.date == r.date) {
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
	
	public static func ==(l: DateTime, r: Instant) -> Bool {
		if !(l.date == r.date) {
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
