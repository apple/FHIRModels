//
//  Quantity.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MoneyQuantity)
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
 A measured or measurable amount.
 
 A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are
 not precisely quantified, including amounts involving arbitrary units and floating currencies.
 */
open class Quantity: Element {
	
	/// Numerical value (with implicit precision)
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// How the value should be understood and represented - whether the actual value is greater or less than the stated
	/// value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
	public var comparator: FHIRPrimitive<QuantityComparator>?
	
	/// Unit representation
	public var unit: FHIRPrimitive<FHIRString>?
	
	/// System that defines coded unit form
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// Coded form of the unit
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>? = nil,
							comparator: FHIRPrimitive<QuantityComparator>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							system: FHIRPrimitive<FHIRURI>? = nil,
							unit: FHIRPrimitive<FHIRString>? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init()
		self.code = code
		self.comparator = comparator
		self.`extension` = `extension`
		self.id = id
		self.system = system
		self.unit = unit
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case comparator; case _comparator
		case system; case _system
		case unit; case _unit
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comparator = try FHIRPrimitive<QuantityComparator>(from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.unit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .unit, auxiliaryKey: ._unit)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try unit?.encode(on: &_container, forKey: .unit, auxiliaryKey: ._unit)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Quantity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && comparator == _other.comparator
		    && system == _other.system
		    && unit == _other.unit
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(comparator)
		hasher.combine(system)
		hasher.combine(unit)
		hasher.combine(value)
	}
}
