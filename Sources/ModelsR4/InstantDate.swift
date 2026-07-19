//
//  InstantDate.swift
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
		let parsed = try DateTimeParser.instantDateComponents(from: originalString, config: .r4)
		self.init(year: parsed.year, month: parsed.month, day: parsed.day)
	}
	
	// MARK: Parsing
	
	/// Parse valid "date" strings but require month and day to be present
	/// See http://hl7.org/fhir/datatypes.html#date
	public static func parseComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (year: Int, month: UInt8, day: UInt8) {
		let parsed = try ScannerDateTimeParser.instantDateComponents(from: scanner, expectAtEnd: expectAtEnd)
		return (parsed.year, parsed.month, parsed.day)
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

extension InstantDate: Comparable {
	
	public static func <(l: InstantDate, r: InstantDate) -> Bool {
		if l.year < r.year {
			return true
		} else if l.year == r.year {
			if l.month < r.month {
				return true
			} else if l.month == r.month {
				return l.day < r.day
			}
		}
		return false
	}
	
	public static func <(l: InstantDate, r: FHIRDate) -> Bool {
		if l.year < r.year {
			return true
		} else if l.year == r.year {
			if l.month < r.month ?? 0 {
				return true
			} else if l.month == r.month {
				return l.day < r.day ?? 0
			}
		}
		return false
	}
	
	public static func <(l: FHIRDate, r: InstantDate) -> Bool {
		if l.year < r.year {
			return true
		} else if l.year == r.year {
			if l.month ?? 0 < r.month {
				return true
			} else if l.month == r.month {
				return l.day ?? 0 < r.day
			}
		}
		return false
	}
}

extension InstantDate {
	
	public var fhirDate: FHIRDate {
		return FHIRDate(year: year, month: month, day: day)
	}
}
