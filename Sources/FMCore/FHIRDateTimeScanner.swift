//
//  FHIRDateTimeScanner.swift
//  HealthSoftware
//
//  2026, Apple Inc.
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

/**
 A specialized scanner over the UTF-8 bytes of a FHIR date/time string.
 
 FHIR's date and time grammars are pure ASCII (digits and the separators `-`, `:`, `.`, `T`, `+`, `Z`), so scanning at
 the byte level is safe: no multi-byte UTF-8 scalar can contain a byte in those ranges, meaning the cursor can never
 land in the middle of a scalar and byte offsets are equivalent to character offsets.
 */
public struct FHIRDateTimeScanner: Sendable {
	
	/**
	 The longest a syntactically valid FHIR date/time string can be: a full `dateTime` with a 4-digit year, a 9-digit
	 fractional second and a numeric time zone offset, e.g. `9999-12-31T23:59:60.123456789+14:00` (35 characters). A
	 10 digit slack is added to allow the parser to process the whole string and return a meaningful error.
	 */
	private static let maxLength = 45
	
	@usableFromInline
	internal let bytes: [UInt8]
	
	@usableFromInline
	internal var _index: Int
	
	/// The current scan position, as a byte (== character, see type description) offset into `string`.
	@inlinable
	public var index: Int {
		return _index
	}
	
	public init(_ string: String) throws {
		guard string.utf8.count <= FHIRDateTimeScanner.maxLength else {
			throw FHIRDateParserError.inputTooLong(FHIRDateParserErrorPosition(string: string, location: FHIRDateTimeScanner.maxLength))
		}
		self.bytes = Array(string.utf8)
		self._index = 0
	}
	
	@inlinable
	public var isAtEnd: Bool {
		return _index >= bytes.count
	}
	
	/// Reconstructs the original string. Only used when building an error position.
	public var string: String {
		return String(decoding: bytes, as: UTF8.self)
	}
	
	public func position(at index: Int) -> FHIRDateParserErrorPosition {
		return FHIRDateParserErrorPosition(string: string, location: index)
	}
	
	/// Decodes the substring of the original input spanning `range`.
	@inlinable
	public func substring(_ range: Range<Int>) -> String {
		return String(decoding: bytes[range], as: UTF8.self)
	}
	
	// MARK: Scanning
	
	/// Consumes exactly one byte if it matches `literal`, otherwise leaves the cursor untouched.
	@inlinable
	@discardableResult
	public mutating func scan(_ literal: Unicode.Scalar) -> Bool {
		guard _index < bytes.count, bytes[_index] == UInt8(ascii: literal) else {
			return false
		}
		_index += 1
		return true
	}
	
	/// Consumes an unbounded run of ASCII digit bytes (`0`-`9`), starting at the current index.
	@inlinable
	public mutating func scanDigits() -> ArraySlice<UInt8>? {
		let start = _index
		while _index < bytes.count, (0x30...0x39).contains(bytes[_index]) {
			_index += 1
		}
		guard _index > start else {
			return nil
		}
		return bytes[start..<_index]
	}
	
	/// Consumes exactly `numDigits` digit bytes and returns their accumulated value, or `nil` if fewer than
	/// `numDigits` digits were available.
	@inlinable
	public mutating func scanDigits<T: FixedWidthInteger>(_ numDigits: Int, as type: T.Type) -> T? {
		let start = _index
		let end = min(bytes.count, start + numDigits)
		
		var value: T = 0
		while _index < end, (0x30...0x39).contains(bytes[_index]) {
			value = value &* 10 &+ T(bytes[_index] &- 0x30)
			_index += 1
		}
		guard _index - start == numDigits else {
			return nil
		}
		return value
	}
	
	/// Scans exactly `numDigits` digits, converts them to `T` and verifies the value lies within `range`.
	@inlinable
	public mutating func scanDigitsAndVerify<T: FixedWidthInteger>(
		_ numDigits: Int,
		in range: ClosedRange<T>,
		orThrow makeError: (FHIRDateParserErrorPosition) -> FHIRDateParserError
	) throws -> T {
		let scanStart = _index
		
		guard let value = scanDigits(numDigits, as: T.self) else {
			throw makeError(position(at: _index))
		}
		guard range.contains(value) else {
			throw makeError(position(at: scanStart))
		}
		return value
	}
}
