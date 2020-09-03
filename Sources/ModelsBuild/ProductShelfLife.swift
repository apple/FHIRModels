//
//  ProductShelfLife.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ProductShelfLife)
//  Copyright 2020 Apple Inc.
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
 The shelf-life and storage information for a medicinal product item or container can be described using this class.
 */
open class ProductShelfLife: BackboneType {
	
	/// All possible types for "period[x]"
	public enum PeriodX: Hashable {
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// This describes the shelf life, taking into account various scenarios such as shelf life of the packaged
	/// Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening
	/// of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var type: CodeableConcept?
	
	/// The shelf life time period can be specified using a numerical value for the period of time and its unit of time
	/// measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting
	/// terminology The symbol and the symbol identifier shall be used
	/// One of `period[x]`
	public var period: PeriodX?
	
	/// Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var specialPrecautionsForStorage: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: PeriodX? = nil,
							specialPrecautionsForStorage: [CodeableConcept]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.specialPrecautionsForStorage = specialPrecautionsForStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case periodQuantity
		case periodString; case _periodString
		case specialPrecautionsForStorage
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_period: PeriodX? = nil
		if let periodQuantity = try Quantity(from: _container, forKeyIfPresent: .periodQuantity) {
			if _t_period != nil {
				throw DecodingError.dataCorruptedError(forKey: .periodQuantity, in: _container, debugDescription: "More than one value provided for \"period\"")
			}
			_t_period = .quantity(periodQuantity)
		}
		if let periodString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .periodString, auxiliaryKey: ._periodString) {
			if _t_period != nil {
				throw DecodingError.dataCorruptedError(forKey: .periodString, in: _container, debugDescription: "More than one value provided for \"period\"")
			}
			_t_period = .string(periodString)
		}
		self.period = _t_period
		self.specialPrecautionsForStorage = try [CodeableConcept](from: _container, forKeyIfPresent: .specialPrecautionsForStorage)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = period {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .periodQuantity)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .periodString, auxiliaryKey: ._periodString)
			}
		}
		try specialPrecautionsForStorage?.encode(on: &_container, forKey: .specialPrecautionsForStorage)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProductShelfLife else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && specialPrecautionsForStorage == _other.specialPrecautionsForStorage
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(specialPrecautionsForStorage)
		hasher.combine(type)
	}
}
