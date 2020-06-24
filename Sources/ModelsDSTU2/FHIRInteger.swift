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
 *  A signed integer in the range −2,147,483,648..2,147,483,647 (32-bit; for larger values, use decimal)
 *
 *  http://hl7.org/fhir/datatypes.html#integer
 */
public struct FHIRInteger: FHIRPrimitiveType, FHIRIntegerRepresentable {
	
	public typealias IntegerLiteralType = Int32
	
	public var integer: Self.IntegerLiteralType
	
	public init(_ integer: Self.IntegerLiteralType) {
		self.integer = integer
	}
	
	public init(integerLiteral value: Self.IntegerLiteralType) {
		self.integer = value
	}
}

extension FHIRInteger: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		self.integer = try container.decode(Self.IntegerLiteralType.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(integer)
	}
}

// MARK: -

extension Int {
	
	public func asFHIRIntegerPrimitive() -> FHIRPrimitive<FHIRInteger> {
		return FHIRPrimitive(FHIRInteger(FHIRInteger.IntegerLiteralType(self)))
	}
}
