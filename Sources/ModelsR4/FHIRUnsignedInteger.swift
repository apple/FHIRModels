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
 Any non-negative integer in the range 0..2,147,483,647 (that's only 31 bit because the positive int is a constraint
 on the signed int in FHIR).
   
 http://hl7.org/fhir/datatypes.html#unsignedInt
 */
public struct FHIRUnsignedInteger: FHIRPrimitiveType, FHIRIntegerRepresentable {
	
	public typealias IntegerLiteralType = Int32
	
	public var integer: Self.IntegerLiteralType {
		didSet {
			if integer < 0 {
				integer = oldValue
			}
		}
	}
	
	/**
	 Designated initializer.
	 */
	public init(_ integer: Self.IntegerLiteralType) {
		self.integer = max(0, integer)
	}
	
	/// When initializing with a value < 0, the value will be set to 0
	public init(integerLiteral value: Self.IntegerLiteralType) {
		self.integer = max(0, value)
	}
}

extension FHIRUnsignedInteger: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		let integer = try container.decode(Self.IntegerLiteralType.self)
		if integer < 0 {
			throw FHIRUnsignedIntegerError.valueIsLessThanZero
		}
		self.integer = integer
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(integer)
	}
}

// MARK: -

public enum FHIRUnsignedIntegerError: Error {
	case valueIsLessThanZero
}

// MARK: -

extension Int {
	
	public func asFHIRUnsignedIntegerPrimitive() -> FHIRPrimitive<FHIRUnsignedInteger> {
		return FHIRPrimitive(FHIRUnsignedInteger(FHIRUnsignedInteger.IntegerLiteralType(self)))
	}
}
