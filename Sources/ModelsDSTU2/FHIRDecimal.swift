//
//  FHIRDecimal.swift
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
import Foundation

/**
 Rational numbers that have a decimal representation. See below about the precision of the number:
 
 The precision of the decimal value has significance:
 - e.g. 0.010 is regarded as different to 0.01, and the original precision should be preserved
 - Implementations SHALL handle decimal values in ways that preserve and respect the precision of the value as
   represented for presentation purposes
 - Implementations are not required to perform calculations with these numbers differently, though they may choose to do
   so (i.e. preserve significance)
 - See implementation comments for XML, JSON and RDF
 - In object code, implementations that might meet this constraint are GMP implementations or equivalents to Java
   BigDecimal that implement arbitrary precision, or a combination of a (64 bit) floating point value with a precision
   field
 - Note that large and/or highly precise values are extremely rare in medicine. One element where highly precise decimals
   may be encountered is the Location coordinates. Irrespective of this, the limits documented in XML Schema apply
 
 http://hl7.org/fhir/datatypes.html#decimal
 */
public struct FHIRDecimal: FHIRPrimitiveType, ExpressibleByFloatLiteral {
	
	public typealias FloatLiteralType = Double
	
	public var decimal: Decimal
	
	/**
	 Designated initializer.
	 */
	public init(_ decimal: Decimal) {
		self.decimal = decimal
	}
	
	public init(floatLiteral value: Self.FloatLiteralType) {
		self.decimal = Decimal(floatLiteral: value)
	}
}

extension FHIRDecimal: Codable {
	
	public init(from decoder: Decoder) throws {
		// TODO: preserve precision / trailing zeroes
		let container = try decoder.singleValueContainer()
		self.decimal = try container.decode(Decimal.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		// TODO: preserve precision / trailing zeroes
		var container = encoder.singleValueContainer()
		try container.encode(decimal)
	}
}

extension FHIRDecimal: Equatable {
	
	public static func ==(l: FHIRDecimal, r: FHIRDecimal) -> Bool {
		return l.decimal == r.decimal
	}
}

// MARK: -

extension Double {
	
	public func asFHIRDecimalPrimitive() -> FHIRPrimitive<FHIRDecimal> {
		return FHIRPrimitive(FHIRDecimal(floatLiteral: FHIRDecimal.FloatLiteralType(self)))
	}
}
