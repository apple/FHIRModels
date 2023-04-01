//
//  MonetaryComponent.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MonetaryComponent)
//  Copyright 2023 Apple Inc.
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
open class MonetaryComponent: DataType {
	
	/// None
	public var type: FHIRPrimitive<PriceComponentType>
	
	/// Codes may be used to differentiate between kinds of taxes, surcharges, discounts etc.
	public var code: CodeableConcept?
	
	/// Factor used for calculating this component
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Explicit value amount to be used
	public var amount: Money?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<PriceComponentType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Money? = nil,
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<PriceComponentType>
	) {
		self.init(type: type)
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case factor; case _factor
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.type = try FHIRPrimitive<PriceComponentType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code?.encode(on: &_container, forKey: .code)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MonetaryComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && factor == _other.factor
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(factor)
		hasher.combine(type)
	}
}
