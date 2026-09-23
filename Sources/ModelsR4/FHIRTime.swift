//
//  FHIRTime.swift
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
 A time during the day, in the format hh:mm:ss. There is no date specified. Seconds must be provided due to schema type
 constraints but may be zero-filled and may be ignored at receiver discretion. The time "24:00" SHALL NOT be used. A
 time zone SHALL NOT be present. Times can be converted to a Duration since midnight.
 
 While DSTU-2 did not allow "60" seconds (the leap second), this is allowed in R4 forward and we're gonna allow it
 universally.
 
 http://hl7.org/fhir/datatypes.html#time
 */
public struct FHIRTime: FHIRPrimitiveType {
	
	private var _secondsAreUnaltered = true
	
	public var hour: UInt8 {
		didSet {
			if hour > 23 {
				hour = 23
			}
		}
	}
	
	public var minute: UInt8 {
		didSet {
			if minute > 59 {
				minute = 59
			}
		}
	}
	
	public var second: Decimal {
		didSet {
			if second > 60 {
				second = 60.0
			}
			_secondsAreUnaltered = false
		}
	}
	
	public let originalSecondsString: String?
	
	/**
	 Preferred initializer. Hour is capped at 23, minute at 59 and second is capped at 60.0. If you supply higher
	 values they will independently be set to that maximum value.
	 */
	public init(hour: UInt8, minute: UInt8, second: Decimal) {
		self.init(hour: hour, minute: minute, second: second, originalSecondsString: nil)
	}
	
	public init(_ originalString: String) throws {
		var scanner = try FHIRDateTimeScanner(originalString)
		let (hour, minute, second, originalSecondsString) = try FHIRTime.parseComponents(from: &scanner)
		self.init(hour: hour, minute: minute, second: second, originalSecondsString: originalSecondsString)
	}
	
	/**
	 Designated, private initializer. Hour is capped at 23, minute at 59 and second is capped at 60.0. If you supply
	 higher values they will independently be set to that maximum value.
	 */
	private init(hour: UInt8, minute: UInt8, second: Decimal, originalSecondsString: String? = nil) {
		self.hour = (hour <= 23) ? hour : 23
		self.minute = (minute <= 59) ? minute : 59
		self.second = (second <= 60.0) ? second : 60.0
		self.originalSecondsString = originalSecondsString
	}
	
	// MARK: Parsing
	
	/// Parse valid "time" strings.
	/// See http://hl7.org/fhir/datatypes.html#time
	public static func parseComponents(from scanner: inout FHIRDateTimeScanner, expectAtEnd: Bool = true) throws -> (hour: UInt8, minute: UInt8, second: Decimal, originalSecondString: String) {
		// Hours
		let hour: UInt8 = try scanner.scanDigitsAndVerify(2, in: 0...23, orThrow: FHIRDateParserError.invalidHour)
		
		var scanLocation = scanner.index
		guard scanner.scan(":") else {
			throw FHIRDateParserError.invalidSeparator(scanner.position(at: scanLocation))
		}
		
		// Minutes
		let minute: UInt8 = try scanner.scanDigitsAndVerify(2, in: 0...59, orThrow: FHIRDateParserError.invalidMinute)
		
		scanLocation = scanner.index
		guard scanner.scan(":") else {
			throw FHIRDateParserError.invalidSeparator(scanner.position(at: scanLocation))
		}
		
		// Seconds
		let secondsStart = scanner.index
		let wholeSecond: Int = try scanner.scanDigitsAndVerify(2, in: 0...60, orThrow: FHIRDateParserError.invalidSecond)
		
		let second: Decimal
		scanLocation = scanner.index
		if scanner.scan(".") {
			scanLocation = scanner.index
			guard let subSecondDigits = scanner.scanDigits() else {
				throw FHIRDateParserError.invalidSecond(scanner.position(at: scanLocation))
			}
			second = Decimal(integerPart: wholeSecond, asciiFractionDigits: subSecondDigits)
		} else {
			second = Decimal(wholeSecond)
		}
		guard second <= 60.0 else {
			throw FHIRDateParserError.invalidSecond(scanner.position(at: scanLocation))
		}
		let secondString = scanner.substring(secondsStart..<scanner.index)
		
		// End
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(scanner.position(at: scanner.index))
		}
		
		return (hour, minute, second, secondString)
	}
	
	public static func parse(from scanner: inout FHIRDateTimeScanner, expectAtEnd: Bool = true) throws -> FHIRTime {
		let (hour, minute, second, originalSecondsString) = try FHIRTime.parseComponents(from: &scanner, expectAtEnd: expectAtEnd)
		return self.init(hour: hour, minute: minute, second: second, originalSecondsString: originalSecondsString)
	}
}

// MARK: -

extension FHIRTime: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		try! self.init(value)
	}
}

extension FHIRTime: Codable {
	
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

extension FHIRTime: CustomStringConvertible {
	
	static let secondsFormatter: NumberFormatter = {
		let formatter = NumberFormatter()
		formatter.allowsFloats = true
		formatter.decimalSeparator = "."
		formatter.maximumIntegerDigits = 2
		formatter.minimumIntegerDigits = 2
		formatter.alwaysShowsDecimalSeparator = false
		formatter.minimumFractionDigits = 0
		formatter.maximumFractionDigits = 15    // cannot do `.max`
		
		return formatter
	}()
	
	public var description: String {
		if _secondsAreUnaltered, let originalSecondsString = originalSecondsString {
			return String(format: "%02d:%02d:\(originalSecondsString)", hour, minute)
		}
		return String(format: "%02d:%02d:\(FHIRTime.secondsFormatter.string(for: second) ?? "00")", hour, minute)
	}
}

extension FHIRTime: Equatable {
	
	public static func ==(l: FHIRTime, r: FHIRTime) -> Bool {
		if l.hour != r.hour {
			return false
		}
		if l.minute != r.minute {
			return false
		}
		if l.second != r.second {
			return false
		}
		return true
	}
}

extension FHIRTime: Comparable {
	
	public static func <(l: FHIRTime, r: FHIRTime) -> Bool {
		if l.hour < r.hour {
			return true
		} else if l.hour == r.hour {
			if l.minute < r.minute {
				return true
			} else if l.minute == r.minute {
				return l.second < r.second
			}
		}
		return false
	}
}

// MARK: -

fileprivate extension Decimal {
	
	/// Creates a `Decimal` from an already-parsed integer part and a collection of ASCII fraction digits.
	///
	/// - parameter integerPart: The decimal's integer part, already parsed to an integer.
	/// - parameter fractionDigits: The digits making up the decimal's fraction part.
	///
	/// - Note: `fractionDigits` must contain only ASCII digits (`0x30...0x39`). No validation is performed.
	init(integerPart: some FixedWidthInteger, asciiFractionDigits fractionDigits: some Collection<UInt8>) {
		let fractionCount = fractionDigits.count
		var mantissa = UInt64(integerPart)
		for byte in fractionDigits { mantissa = mantissa &* 10 &+ UInt64(byte &- 48) }
		self.init(sign: .plus, exponent: -fractionCount, significand: Decimal(mantissa))
	}
}
