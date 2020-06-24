//
//  SubstanceAmount.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceAmount)
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
 Chemical substances are a single substance type whose primary defining element is the molecular structure. Chemical
 substances shall be defined on the basis of their complete covalent molecular structure; the presence of a salt
 (counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or particle size are not
 taken into account in the definition of a chemical substance or in the assignment of a Substance ID.
 */
open class SubstanceAmount: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Most elements that require a quantitative value will also have a field called amount type. Amount type should
	/// always be specified because the actual value of the amount is often dependent on it. EXAMPLE: In capturing the
	/// actual relative amounts of substances or molecular fragments it is essential to indicate whether the amount
	/// refers to a mole ratio or weight ratio. For any given element an effort should be made to use same the amount
	/// type for all related definitional elements
	public var amountType: CodeableConcept?
	
	/// A textual comment on a numeric value
	public var amountText: FHIRPrimitive<FHIRString>?
	
	/// Reference range of possible or expected values
	public var referenceRange: SubstanceAmountReferenceRange?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: AmountX? = nil,
							amountText: FHIRPrimitive<FHIRString>? = nil,
							amountType: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							referenceRange: SubstanceAmountReferenceRange? = nil)
	{
		self.init()
		self.amount = amount
		self.amountText = amountText
		self.amountType = amountType
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.referenceRange = referenceRange
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRange
		case amountString; case _amountString
		case amountText; case _amountText
		case amountType
		case referenceRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountRange = try Range(from: _container, forKeyIfPresent: .amountRange) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRange, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .range(amountRange)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.amountText = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountText, auxiliaryKey: ._amountText)
		self.amountType = try CodeableConcept(from: _container, forKeyIfPresent: .amountType)
		self.referenceRange = try SubstanceAmountReferenceRange(from: _container, forKeyIfPresent: .referenceRange)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .amountRange)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try amountText?.encode(on: &_container, forKey: .amountText, auxiliaryKey: ._amountText)
		try amountType?.encode(on: &_container, forKey: .amountType)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceAmount else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && amountText == _other.amountText
		    && amountType == _other.amountType
		    && referenceRange == _other.referenceRange
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(amountText)
		hasher.combine(amountType)
		hasher.combine(referenceRange)
	}
}

/**
 Reference range of possible or expected values.
 */
open class SubstanceAmountReferenceRange: Element {
	
	/// Lower limit possible or expected
	public var lowLimit: Quantity?
	
	/// Upper limit possible or expected
	public var highLimit: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							highLimit: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lowLimit: Quantity? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.highLimit = highLimit
		self.id = id
		self.lowLimit = lowLimit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case highLimit
		case lowLimit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.highLimit = try Quantity(from: _container, forKeyIfPresent: .highLimit)
		self.lowLimit = try Quantity(from: _container, forKeyIfPresent: .lowLimit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try highLimit?.encode(on: &_container, forKey: .highLimit)
		try lowLimit?.encode(on: &_container, forKey: .lowLimit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceAmountReferenceRange else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return highLimit == _other.highLimit
		    && lowLimit == _other.lowLimit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(highLimit)
		hasher.combine(lowLimit)
	}
}
