//
//  FHIRInteger64.swift
//  HealthSoftware
//
//  2023, Apple Inc.
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
 A signed integer in the range -9,223,372,036,854,775,808 to +9,223,372,036,854,775,807 (64-bit).
 This type is defined to allow for record/time counters that can get very large.
 
 http://hl7.org/fhir/datatypes.html#integer64
 */
public struct FHIRInteger64: FHIRPrimitiveType, FHIRIntegerRepresentable, Sendable {
	
	public typealias IntegerLiteralType = Int64
	
	public var integer: Self.IntegerLiteralType
	
	public init(_ integer: Self.IntegerLiteralType) {
		self.integer = integer
	}
	
	public init(integerLiteral value: Self.IntegerLiteralType) {
		self.integer = value
	}
}

extension FHIRInteger64: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		self.integer = try container.decode(Self.IntegerLiteralType.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(integer)
	}
}
