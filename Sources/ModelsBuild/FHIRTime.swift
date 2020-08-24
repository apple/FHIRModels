//
//  FHIRTime.swift
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
 A time during the day, in the format hh:mm:ss. There is no date specified. Seconds must be provided due to schema type
 constraints but may be zero-filled and may be ignored at receiver discretion. The time "24:00" SHALL NOT be used. A
 time zone SHALL NOT be present. Times can be converted to a Duration since midnight.
 
 While DSTU-2 did not allow "60" seconds (the leap second), this is allowed in R4 and we're gonna allow it here, too.
 
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
		let scanner = Scanner(string: originalString)
		let (hour, minute, second, originalSecondsString) = try FHIRTime.parseComponents(from: scanner)
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
	public static func parseComponents(from scanner: Scanner, expectAtEnd: Bool = true) throws -> (hour: UInt8, minute: UInt8, second: Decimal, originalSecondString: String) {
		let originalCharactersToBeSkipped = scanner.charactersToBeSkipped
		defer { scanner.charactersToBeSkipped = originalCharactersToBeSkipped }
		scanner.charactersToBeSkipped = nil
		let numbers = CharacterSet.decimalDigits
		
		// Hours
		var scanLocation = scanner.scanLocation
		guard let hourString = scanner.hs_scanCharacters(from: numbers) else {
			throw FHIRDateParserError.invalidHour(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		guard hourString.count == 2 else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation + hourString.count))
		}
		guard let hour = UInt8(hourString), hour <= 23 else {
			throw FHIRDateParserError.invalidHour(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		scanLocation = scanner.scanLocation
		guard scanner.scanString(":", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// Minutes
		scanLocation = scanner.scanLocation
		guard let minuteString = scanner.hs_scanCharacters(from: numbers) else {
			throw FHIRDateParserError.invalidMinute(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		guard minuteString.count == 2 else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation + minuteString.count))
		}
		guard let minute = UInt8(minuteString), minute <= 59 else {
			throw FHIRDateParserError.invalidMinute(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		scanLocation = scanner.scanLocation
		guard scanner.scanString(":", into: nil) else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// Seconds
		scanLocation = scanner.scanLocation
		guard let fullSecondString = scanner.hs_scanCharacters(from: numbers) else {
			throw FHIRDateParserError.invalidSecond(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		guard fullSecondString.count == 2 else {
			throw FHIRDateParserError.invalidSeparator(FHIRParserErrorPosition(string: scanner.string, location: scanLocation + fullSecondString.count))
		}
		guard let scanSecondAlone = Int(fullSecondString), scanSecondAlone <= 60 else {
			throw FHIRDateParserError.invalidSecond(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		let secondString: String
		scanLocation = scanner.scanLocation
		if scanner.scanString(".", into: nil) {
			scanLocation = scanner.scanLocation
			guard let subSecondString = scanner.hs_scanCharacters(from: numbers) else {
				throw FHIRDateParserError.invalidSecond(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
			}
			secondString = "\(fullSecondString).\(subSecondString)"
		} else {
			secondString = fullSecondString
		}
		guard let second = Decimal(string: secondString), second <= 60.0 else {
			throw FHIRDateParserError.invalidSecond(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		// End
		scanLocation = scanner.scanLocation
		if expectAtEnd && !scanner.isAtEnd {    // it's OK if we don't `expectAtEnd` but the scanner actually is
			throw FHIRDateParserError.additionalCharacters(FHIRParserErrorPosition(string: scanner.string, location: scanLocation))
		}
		
		return (hour, minute, second, secondString)
	}
	
	public static func parse(from scanner: Scanner, expectAtEnd: Bool = true) throws -> FHIRTime {
		let (hour, minute, second, originalSecondsString) = try FHIRTime.parseComponents(from: scanner, expectAtEnd: expectAtEnd)
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
