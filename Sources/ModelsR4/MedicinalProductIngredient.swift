//
//  MedicinalProductIngredient.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient)
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
 An ingredient of a manufactured item or pharmaceutical product.
 */
open class MedicinalProductIngredient: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductIngredient }
	
	/// Identifier for the ingredient
	public var identifier: Identifier?
	
	/// Ingredient role e.g. Active ingredient, excipient
	public var role: CodeableConcept
	
	/// If the ingredient is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Manufacturer of this Ingredient
	public var manufacturer: [Reference]?
	
	/// A specified substance that comprises this ingredient
	public var specifiedSubstance: [MedicinalProductIngredientSpecifiedSubstance]?
	
	/// The ingredient substance
	public var substance: MedicinalProductIngredientSubstance?
	
	/// Designated initializer taking all required properties
	public init(role: CodeableConcept) {
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allergenicIndicator: FHIRPrimitive<FHIRBool>? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: [Reference]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept,
							specifiedSubstance: [MedicinalProductIngredientSpecifiedSubstance]? = nil,
							substance: MedicinalProductIngredientSubstance? = nil,
							text: Narrative? = nil)
	{
		self.init(role: role)
		self.allergenicIndicator = allergenicIndicator
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.specifiedSubstance = specifiedSubstance
		self.substance = substance
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allergenicIndicator; case _allergenicIndicator
		case identifier
		case manufacturer
		case role
		case specifiedSubstance
		case substance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		self.specifiedSubstance = try [MedicinalProductIngredientSpecifiedSubstance](from: _container, forKeyIfPresent: .specifiedSubstance)
		self.substance = try MedicinalProductIngredientSubstance(from: _container, forKeyIfPresent: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try role.encode(on: &_container, forKey: .role)
		try specifiedSubstance?.encode(on: &_container, forKey: .specifiedSubstance)
		try substance?.encode(on: &_container, forKey: .substance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductIngredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allergenicIndicator == _other.allergenicIndicator
		    && identifier == _other.identifier
		    && manufacturer == _other.manufacturer
		    && role == _other.role
		    && specifiedSubstance == _other.specifiedSubstance
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allergenicIndicator)
		hasher.combine(identifier)
		hasher.combine(manufacturer)
		hasher.combine(role)
		hasher.combine(specifiedSubstance)
		hasher.combine(substance)
	}
}

/**
 A specified substance that comprises this ingredient.
 */
open class MedicinalProductIngredientSpecifiedSubstance: BackboneElement {
	
	/// The specified substance
	public var code: CodeableConcept
	
	/// The group of specified substance, e.g. group 1 to 4
	public var group: CodeableConcept
	
	/// Confidentiality level of the specified substance as the ingredient
	public var confidentiality: CodeableConcept?
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product
	public var strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, group: CodeableConcept) {
		self.code = code
		self.group = group
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							confidentiality: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							group: CodeableConcept,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]? = nil)
	{
		self.init(code: code, group: group)
		self.confidentiality = confidentiality
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case confidentiality
		case group
		case strength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.confidentiality = try CodeableConcept(from: _container, forKeyIfPresent: .confidentiality)
		self.group = try CodeableConcept(from: _container, forKey: .group)
		self.strength = try [MedicinalProductIngredientSpecifiedSubstanceStrength](from: _container, forKeyIfPresent: .strength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try confidentiality?.encode(on: &_container, forKey: .confidentiality)
		try group.encode(on: &_container, forKey: .group)
		try strength?.encode(on: &_container, forKey: .strength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductIngredientSpecifiedSubstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && confidentiality == _other.confidentiality
		    && group == _other.group
		    && strength == _other.strength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(confidentiality)
		hasher.combine(group)
		hasher.combine(strength)
	}
}

/**
 Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
 */
open class MedicinalProductIngredientSpecifiedSubstanceStrength: BackboneElement {
	
	/// The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical
	/// product or manufactured item
	public var presentation: Ratio
	
	/// A lower limit for the quantity of substance in the unit of presentation. For use when there is a range of
	/// strengths, this is the lower limit, with the presentation attribute becoming the upper limit
	public var presentationLowLimit: Ratio?
	
	/// The strength per unitary volume (or mass)
	public var concentration: Ratio?
	
	/// A lower limit for the strength per unitary volume (or mass), for when there is a range. The concentration
	/// attribute then becomes the upper limit
	public var concentrationLowLimit: Ratio?
	
	/// For when strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// The country or countries for which the strength range applies
	public var country: [CodeableConcept]?
	
	/// Strength expressed in terms of a reference substance
	public var referenceStrength: [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength]?
	
	/// Designated initializer taking all required properties
	public init(presentation: Ratio) {
		self.presentation = presentation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							concentration: Ratio? = nil,
							concentrationLowLimit: Ratio? = nil,
							country: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measurementPoint: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							presentation: Ratio,
							presentationLowLimit: Ratio? = nil,
							referenceStrength: [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength]? = nil)
	{
		self.init(presentation: presentation)
		self.concentration = concentration
		self.concentrationLowLimit = concentrationLowLimit
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.presentationLowLimit = presentationLowLimit
		self.referenceStrength = referenceStrength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concentration
		case concentrationLowLimit
		case country
		case measurementPoint; case _measurementPoint
		case presentation
		case presentationLowLimit
		case referenceStrength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.concentration = try Ratio(from: _container, forKeyIfPresent: .concentration)
		self.concentrationLowLimit = try Ratio(from: _container, forKeyIfPresent: .concentrationLowLimit)
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.presentation = try Ratio(from: _container, forKey: .presentation)
		self.presentationLowLimit = try Ratio(from: _container, forKeyIfPresent: .presentationLowLimit)
		self.referenceStrength = try [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength](from: _container, forKeyIfPresent: .referenceStrength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try concentration?.encode(on: &_container, forKey: .concentration)
		try concentrationLowLimit?.encode(on: &_container, forKey: .concentrationLowLimit)
		try country?.encode(on: &_container, forKey: .country)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try presentation.encode(on: &_container, forKey: .presentation)
		try presentationLowLimit?.encode(on: &_container, forKey: .presentationLowLimit)
		try referenceStrength?.encode(on: &_container, forKey: .referenceStrength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductIngredientSpecifiedSubstanceStrength else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return concentration == _other.concentration
		    && concentrationLowLimit == _other.concentrationLowLimit
		    && country == _other.country
		    && measurementPoint == _other.measurementPoint
		    && presentation == _other.presentation
		    && presentationLowLimit == _other.presentationLowLimit
		    && referenceStrength == _other.referenceStrength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(concentration)
		hasher.combine(concentrationLowLimit)
		hasher.combine(country)
		hasher.combine(measurementPoint)
		hasher.combine(presentation)
		hasher.combine(presentationLowLimit)
		hasher.combine(referenceStrength)
	}
}

/**
 Strength expressed in terms of a reference substance.
 */
open class MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength: BackboneElement {
	
	/// Relevant reference substance
	public var substance: CodeableConcept?
	
	/// Strength expressed in terms of a reference substance
	public var strength: Ratio
	
	/// Strength expressed in terms of a reference substance
	public var strengthLowLimit: Ratio?
	
	/// For when strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// The country or countries for which the strength range applies
	public var country: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(strength: Ratio) {
		self.strength = strength
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							country: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measurementPoint: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: Ratio,
							strengthLowLimit: Ratio? = nil,
							substance: CodeableConcept? = nil)
	{
		self.init(strength: strength)
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.strengthLowLimit = strengthLowLimit
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case measurementPoint; case _measurementPoint
		case strength
		case strengthLowLimit
		case substance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.strength = try Ratio(from: _container, forKey: .strength)
		self.strengthLowLimit = try Ratio(from: _container, forKeyIfPresent: .strengthLowLimit)
		self.substance = try CodeableConcept(from: _container, forKeyIfPresent: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try strength.encode(on: &_container, forKey: .strength)
		try strengthLowLimit?.encode(on: &_container, forKey: .strengthLowLimit)
		try substance?.encode(on: &_container, forKey: .substance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && measurementPoint == _other.measurementPoint
		    && strength == _other.strength
		    && strengthLowLimit == _other.strengthLowLimit
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(measurementPoint)
		hasher.combine(strength)
		hasher.combine(strengthLowLimit)
		hasher.combine(substance)
	}
}

/**
 The ingredient substance.
 */
open class MedicinalProductIngredientSubstance: BackboneElement {
	
	/// The ingredient substance
	public var code: CodeableConcept
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product
	public var strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case strength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.strength = try [MedicinalProductIngredientSpecifiedSubstanceStrength](from: _container, forKeyIfPresent: .strength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try strength?.encode(on: &_container, forKey: .strength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductIngredientSubstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && strength == _other.strength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(strength)
	}
}
