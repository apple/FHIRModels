//
//  FHIRPrimitive.swift
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
 A boolean value: true | false
 
 http://hl7.org/fhir/datatypes.html#boolean
 */
public struct FHIRBool: FHIRPrimitiveType {
	
	public typealias BooleanLiteralType = Bool
	
	public var bool: Self.BooleanLiteralType
	
	/**
	 Designated initializer.
	 */
	public init(_ bool: Self.BooleanLiteralType) {
		self.bool = bool
	}
}

extension FHIRBool: ExpressibleByBooleanLiteral {
	
	public init(booleanLiteral value: Self.BooleanLiteralType) {
		self.bool = value
	}
}

extension FHIRBool: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		self.bool = try container.decode(Self.BooleanLiteralType.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(bool)
	}
}

extension FHIRBool: Equatable {
	
	public static func ==(l: FHIRBool, r: FHIRBool) -> Bool {
		return l.bool == r.bool
	}
	
	public static func ==(l: Bool, r: FHIRBool) -> Bool {
		return l == r.bool
	}
	
	public static func ==(l: FHIRBool, r: Bool) -> Bool {
		return l.bool == r
	}
}

// MARK: -

extension Bool {
	
	public func asPrimitive() -> FHIRPrimitive<FHIRBool> {
		return FHIRPrimitive(FHIRBool(self))
	}
}

extension FHIRPrimitive: ExpressibleByBooleanLiteral where PrimitiveType == FHIRBool {
	
	public typealias BooleanLiteralType = Bool
	
	public init(booleanLiteral value: Self.BooleanLiteralType) {
		self.init(FHIRBool(value))
	}
}
