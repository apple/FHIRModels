//
//  FHIRInteger.swift
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

import FMCore

/**
 *  Any positive integer in the range 1..2,147,483,647 (that's only 31 bit because the positive int is a constraint on
 *  the signed int in FHIR).
 *
 *  http://hl7.org/fhir/datatypes.html#positiveInt
 */
public struct FHIRPositiveInteger: FHIRPrimitiveType, FHIRIntegerRepresentable {
	
	public typealias IntegerLiteralType = Int32
	
	public var integer: Self.IntegerLiteralType {
		didSet {
			if integer < 1 {
				integer = oldValue
			}
		}
	}
	
	/**
	 Designated initializer.
	 */
	public init(_ integer: Self.IntegerLiteralType) {
		self.integer = max(1, integer)
	}
	
	/// When initializing with a value < 1, the value will be set to 1
	public init(integerLiteral value: Self.IntegerLiteralType) {
		self.integer = max(1, value)
	}
}

extension FHIRPositiveInteger: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		let integer = try container.decode(Self.IntegerLiteralType.self)
		if integer < 1 {
			throw FHIRPositiveIntegerError.valueIsLessThanOne
		}
		self.integer = integer
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(integer)
	}
}

// MARK: -

public enum FHIRPositiveIntegerError: Error {
	case valueIsLessThanOne
}

// MARK: -

extension Int {
	
	public func asFHIRPositiveIntegerPrimitive() -> FHIRPrimitive<FHIRPositiveInteger> {
		return FHIRPrimitive(FHIRPositiveInteger(FHIRPositiveInteger.IntegerLiteralType(self)))
	}
}
