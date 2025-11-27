//
//  DosageSafety.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/DosageSafety)
//  Copyright 2025 Apple Inc.
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
 Safety Details about the usage of the medication.
 */
open class DosageSafety: BackboneType {
	
	/// A dose limit for safe use of the medication
	public var doseLimit: [DosageSafetyDoseLimit]?
	
	/// What to do if the instructions lead to exceeding the dose limits
	public var ifExceeded: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		doseLimit: [DosageSafetyDoseLimit]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		ifExceeded: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.doseLimit = doseLimit
		self.`extension` = `extension`
		self.id = id
		self.ifExceeded = ifExceeded
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case doseLimit
		case ifExceeded; case _ifExceeded
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.doseLimit = try [DosageSafetyDoseLimit](from: _container, forKeyIfPresent: .doseLimit)
		self.ifExceeded = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifExceeded, auxiliaryKey: ._ifExceeded)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try doseLimit?.encode(on: &_container, forKey: .doseLimit)
		try ifExceeded?.encode(on: &_container, forKey: .ifExceeded, auxiliaryKey: ._ifExceeded)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DosageSafety else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return doseLimit == _other.doseLimit
		    && ifExceeded == _other.ifExceeded
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(doseLimit)
		hasher.combine(ifExceeded)
	}
}

/**
 A dose limit for safe use of the medication.
 */
open class DosageSafetyDoseLimit: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case expression(Expression)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
	}
	
	/// Quantity that is safe to use
	/// One of `value[x]`
	public var value: ValueX
	
	/// None
	public var scope: FHIRPrimitive<DoseLimitScopeCodes>
	
	/// The period over which the quantity is safe to use (if scope = period)
	public var period: Duration?
	
	/// Additional notes about the dose limit
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(scope: FHIRPrimitive<DoseLimitScopeCodes>, value: ValueX) {
		self.scope = scope
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		period: Duration? = nil,
		scope: FHIRPrimitive<DoseLimitScopeCodes>,
		text: FHIRPrimitive<FHIRString>? = nil,
		value: ValueX
	) {
		self.init(scope: scope, value: value)
		self.`extension` = `extension`
		self.id = id
		self.period = period
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case scope; case _scope
		case text; case _text
		case valueExpression
		case valueInteger; case _valueInteger
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueExpression) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueQuantity) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueExpression, CodingKeys.valueInteger, CodingKeys.valueQuantity], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.period = try Duration(from: _container, forKeyIfPresent: .period)
		self.scope = try FHIRPrimitive<DoseLimitScopeCodes>(from: _container, forKey: .scope, auxiliaryKey: ._scope)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		var _t_value: ValueX? = nil
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period?.encode(on: &_container, forKey: .period)
		try scope.encode(on: &_container, forKey: .scope, auxiliaryKey: ._scope)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		
			switch value {
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .valueExpression)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DosageSafetyDoseLimit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && scope == _other.scope
		    && text == _other.text
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(scope)
		hasher.combine(text)
		hasher.combine(value)
	}
}
