//
//  Money.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Money)
//  Copyright 2026 Apple Inc.
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
 An amount of economic utility in some recognized currency.
 */
public struct Money: Element {
	
	/// ISO 4217 Currency Code
	public var currency: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Numerical value (with implicit precision)
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		currency: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.currency = currency
		self.`extension` = `extension`
		self.id = id
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case currency; case _currency
		case `extension` = "extension"
		case id; case _id
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.currency = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .currency, auxiliaryKey: ._currency)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try currency?.encode(on: &_container, forKey: .currency, auxiliaryKey: ._currency)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}
