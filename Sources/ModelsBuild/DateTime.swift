//
//  DateTime.swift
//  HealthSoftware
//
//  2021, Apple Inc.
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
 
 A caveat on `Comparable` and `Equatable`:
 
 - When using `Equatable`, the instances are compared directly, meaning all properties must be identical
     - Use `==` to compare whether two instances are identical
     - Use `a.compare(b) == .orderedSame` to compare whether two instances represent the exact same date & time
 - When using `Comparable`, the instances are converted to an absolute time respecting their timezone
 
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
		let parsed = try DateTimeParser.dateTimeComponents(from: originalString, config: .r6)
		let date = FHIRDate(year: parsed.date.year, month: parsed.date.month, day: parsed.date.day)
		let time = parsed.time.map {
			FHIRTime(hour: $0.time.hour, minute: $0.time.minute, second: $0.time.second, originalSecondsString: $0.time.originalSecondsString)
		}
		self.init(date: date, time: time, timezone: parsed.time?.timeZone, originalTimeZoneString: parsed.time?.timeZoneString)
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
		let parsed = try ScannerDateTimeParser.dateTimeComponents(from: scanner, expectAtEnd: expectAtEnd)
		let date = FHIRDate(year: parsed.date.year, month: parsed.date.month, day: parsed.date.day)
		let time = parsed.time.map {
			FHIRTime(hour: $0.time.hour, minute: $0.time.minute, second: $0.time.second, originalSecondsString: $0.time.originalSecondsString)
		}
		return (date, time, parsed.time?.timeZone, parsed.time?.timeZoneString)
	}
}

// MARK: -

extension DateTime: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		try! self.init(value)
	}
}

extension DateTime: Codable {
	
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
			return "\(date.description)T\(time.description)\(timeZone.gmtOffsetString(for: self))"
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

extension DateTime: Comparable {
	
	/// This comparison will be done by taking time zones into account.
	public static func <(l: DateTime, r: DateTime) -> Bool {
		do {
			return try l.compare(r) == .orderedAscending
		} catch {
			print("DateTime comparison \(String(describing: l)) < \(String(describing: r)) raised \(String(describing: error))")
			return false
		}
	}
}
