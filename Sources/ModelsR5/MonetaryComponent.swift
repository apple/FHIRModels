//
//  MonetaryComponent.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MonetaryComponent)
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
 Availability data for an {item}.
 */
public struct MonetaryComponent: DataType {
	
	/// Explicit value amount to be used
	public var amount: Money?
	
	/// Codes may be used to differentiate between kinds of taxes, surcharges, discounts etc.
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Factor used for calculating this component
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// None
	public var type: FHIRPrimitive<PriceComponentType>
	
	/// Designated initializer
	public init(
		amount: Money? = nil,
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<PriceComponentType>
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.type = try FHIRPrimitive<PriceComponentType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
