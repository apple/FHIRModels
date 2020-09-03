//
//  Ingredient.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Ingredient)
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
open class Ingredient: DomainResource {
	
	override open class var resourceType: ResourceType { return .ingredient }
	
	/// An identifier or code by which the ingredient can be referenced
	public var identifier: Identifier?
	
	/// Ingredient role within a drug product e.g. Active ingredient, Excipient
	public var role: CodeableConcept
	
	/// A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the
	/// Ingredient.role to add more detail. Example: Antioxidant, Alkalizing Agent
	public var function: [CodeableConcept]?
	
	/// A general description of the ingredient, or any supporting text. May be used for an unstructured list of
	/// excipients
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If the ingredient is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// The organization that manufactures this ingredient
	public var manufacturer: [Reference]?
	
	/// The substance that comprises this ingredient
	public var substance: IngredientSubstance?
	
	/// A specified substance that comprises this ingredient
	public var specifiedSubstance: [IngredientSpecifiedSubstance]?
	
	/// Designated initializer taking all required properties
	public init(role: CodeableConcept) {
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allergenicIndicator: FHIRPrimitive<FHIRBool>? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							function: [CodeableConcept]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: [Reference]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept,
							specifiedSubstance: [IngredientSpecifiedSubstance]? = nil,
							substance: IngredientSubstance? = nil,
							text: Narrative? = nil)
	{
		self.init(role: role)
		self.allergenicIndicator = allergenicIndicator
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.function = function
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
		case description_fhir = "description"; case _description_fhir = "_description"
		case function
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
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		self.specifiedSubstance = try [IngredientSpecifiedSubstance](from: _container, forKeyIfPresent: .specifiedSubstance)
		self.substance = try IngredientSubstance(from: _container, forKeyIfPresent: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try function?.encode(on: &_container, forKey: .function)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try role.encode(on: &_container, forKey: .role)
		try specifiedSubstance?.encode(on: &_container, forKey: .specifiedSubstance)
		try substance?.encode(on: &_container, forKey: .substance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Ingredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allergenicIndicator == _other.allergenicIndicator
		    && description_fhir == _other.description_fhir
		    && function == _other.function
		    && identifier == _other.identifier
		    && manufacturer == _other.manufacturer
		    && role == _other.role
		    && specifiedSubstance == _other.specifiedSubstance
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allergenicIndicator)
		hasher.combine(description_fhir)
		hasher.combine(function)
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
open class IngredientSpecifiedSubstance: BackboneElement {
	
	/// All possible types for "code[x]"
	public enum CodeX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Substance as a 'specified substance', implying extra substance related characteristics
	/// One of `code[x]`
	public var code: CodeX
	
	/// The group of specified substance, e.g. group 1 to 4
	public var group: CodeableConcept
	
	/// Confidentiality level of the specified substance as the ingredient
	public var confidentiality: CodeableConcept?
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product
	public var strength: [IngredientSubstanceStrength]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeX, group: CodeableConcept) {
		self.code = code
		self.group = group
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeX,
							confidentiality: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							group: CodeableConcept,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: [IngredientSubstanceStrength]? = nil)
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
		case codeCodeableConcept
		case codeReference
		case confidentiality
		case group
		case strength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.codeCodeableConcept) || _container.contains(CodingKeys.codeReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.codeCodeableConcept, CodingKeys.codeReference], debugDescription: "Must have at least one value for \"code\" but have none"))
		}
		
		// Decode all our properties
		var _t_code: CodeX? = nil
		if let codeCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .codeCodeableConcept) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeCodeableConcept, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .codeableConcept(codeCodeableConcept)
		}
		if let codeReference = try Reference(from: _container, forKeyIfPresent: .codeReference) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeReference, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .reference(codeReference)
		}
		self.code = _t_code!
		self.confidentiality = try CodeableConcept(from: _container, forKeyIfPresent: .confidentiality)
		self.group = try CodeableConcept(from: _container, forKey: .group)
		self.strength = try [IngredientSubstanceStrength](from: _container, forKeyIfPresent: .strength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch code {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .codeCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .codeReference)
			}
		
		try confidentiality?.encode(on: &_container, forKey: .confidentiality)
		try group.encode(on: &_container, forKey: .group)
		try strength?.encode(on: &_container, forKey: .strength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? IngredientSpecifiedSubstance else {
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
 The substance that comprises this ingredient.
 */
open class IngredientSubstance: BackboneElement {
	
	/// All possible types for "code[x]"
	public enum CodeX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// A code or full resource that represents the ingredient substance
	/// One of `code[x]`
	public var code: CodeX
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product
	public var strength: [IngredientSubstanceStrength]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeX) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: [IngredientSubstanceStrength]? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeCodeableConcept
		case codeReference
		case strength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.codeCodeableConcept) || _container.contains(CodingKeys.codeReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.codeCodeableConcept, CodingKeys.codeReference], debugDescription: "Must have at least one value for \"code\" but have none"))
		}
		
		// Decode all our properties
		var _t_code: CodeX? = nil
		if let codeCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .codeCodeableConcept) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeCodeableConcept, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .codeableConcept(codeCodeableConcept)
		}
		if let codeReference = try Reference(from: _container, forKeyIfPresent: .codeReference) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeReference, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .reference(codeReference)
		}
		self.code = _t_code!
		self.strength = try [IngredientSubstanceStrength](from: _container, forKeyIfPresent: .strength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch code {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .codeCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .codeReference)
			}
		
		try strength?.encode(on: &_container, forKey: .strength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? IngredientSubstance else {
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

/**
 Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
 */
open class IngredientSubstanceStrength: BackboneElement {
	
	/// The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical
	/// product or manufactured item
	public var presentation: Ratio?
	
	/// An upper limit for the quantity of substance in the unit of presentation. For use when there is a range of
	/// strengths, this is the high limit, with the presentation attribute becoming the lower limit
	public var presentationHighLimit: Ratio?
	
	/// A textual represention of either the whole of the presentation strength or a part of it - with the rest being in
	/// Strength.presentation as a ratio
	public var presentationText: FHIRPrimitive<FHIRString>?
	
	/// The strength per unitary volume (or mass)
	public var concentration: Ratio?
	
	/// An upper limit for the strength per unitary volume (or mass), for when there is a range. The concentration
	/// attribute then becomes the lower limit
	public var concentrationHighLimit: Ratio?
	
	/// A textual represention of either the whole of the concentration strength or a part of it - with the rest being
	/// in Strength.concentration as a ratio
	public var concentrationText: FHIRPrimitive<FHIRString>?
	
	/// For when strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// The country or countries for which the strength range applies
	public var country: [CodeableConcept]?
	
	/// Strength expressed in terms of a reference substance
	public var referenceStrength: [IngredientSubstanceStrengthReferenceStrength]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							concentration: Ratio? = nil,
							concentrationHighLimit: Ratio? = nil,
							concentrationText: FHIRPrimitive<FHIRString>? = nil,
							country: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measurementPoint: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							presentation: Ratio? = nil,
							presentationHighLimit: Ratio? = nil,
							presentationText: FHIRPrimitive<FHIRString>? = nil,
							referenceStrength: [IngredientSubstanceStrengthReferenceStrength]? = nil)
	{
		self.init()
		self.concentration = concentration
		self.concentrationHighLimit = concentrationHighLimit
		self.concentrationText = concentrationText
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.presentation = presentation
		self.presentationHighLimit = presentationHighLimit
		self.presentationText = presentationText
		self.referenceStrength = referenceStrength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concentration
		case concentrationHighLimit
		case concentrationText; case _concentrationText
		case country
		case measurementPoint; case _measurementPoint
		case presentation
		case presentationHighLimit
		case presentationText; case _presentationText
		case referenceStrength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.concentration = try Ratio(from: _container, forKeyIfPresent: .concentration)
		self.concentrationHighLimit = try Ratio(from: _container, forKeyIfPresent: .concentrationHighLimit)
		self.concentrationText = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .concentrationText, auxiliaryKey: ._concentrationText)
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.presentation = try Ratio(from: _container, forKeyIfPresent: .presentation)
		self.presentationHighLimit = try Ratio(from: _container, forKeyIfPresent: .presentationHighLimit)
		self.presentationText = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .presentationText, auxiliaryKey: ._presentationText)
		self.referenceStrength = try [IngredientSubstanceStrengthReferenceStrength](from: _container, forKeyIfPresent: .referenceStrength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try concentration?.encode(on: &_container, forKey: .concentration)
		try concentrationHighLimit?.encode(on: &_container, forKey: .concentrationHighLimit)
		try concentrationText?.encode(on: &_container, forKey: .concentrationText, auxiliaryKey: ._concentrationText)
		try country?.encode(on: &_container, forKey: .country)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try presentation?.encode(on: &_container, forKey: .presentation)
		try presentationHighLimit?.encode(on: &_container, forKey: .presentationHighLimit)
		try presentationText?.encode(on: &_container, forKey: .presentationText, auxiliaryKey: ._presentationText)
		try referenceStrength?.encode(on: &_container, forKey: .referenceStrength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? IngredientSubstanceStrength else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return concentration == _other.concentration
		    && concentrationHighLimit == _other.concentrationHighLimit
		    && concentrationText == _other.concentrationText
		    && country == _other.country
		    && measurementPoint == _other.measurementPoint
		    && presentation == _other.presentation
		    && presentationHighLimit == _other.presentationHighLimit
		    && presentationText == _other.presentationText
		    && referenceStrength == _other.referenceStrength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(concentration)
		hasher.combine(concentrationHighLimit)
		hasher.combine(concentrationText)
		hasher.combine(country)
		hasher.combine(measurementPoint)
		hasher.combine(presentation)
		hasher.combine(presentationHighLimit)
		hasher.combine(presentationText)
		hasher.combine(referenceStrength)
	}
}

/**
 Strength expressed in terms of a reference substance.
 */
open class IngredientSubstanceStrengthReferenceStrength: BackboneElement {
	
	/// All possible types for "substance[x]"
	public enum SubstanceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Relevant reference substance
	/// One of `substance[x]`
	public var substance: SubstanceX?
	
	/// Strength expressed in terms of a reference substance
	public var strength: Ratio
	
	/// Strength expressed in terms of a reference substance, upper limit
	public var strengthHighLimit: Ratio?
	
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
							strengthHighLimit: Ratio? = nil,
							substance: SubstanceX? = nil)
	{
		self.init(strength: strength)
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.strengthHighLimit = strengthHighLimit
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case measurementPoint; case _measurementPoint
		case strength
		case strengthHighLimit
		case substanceCodeableConcept
		case substanceReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.strength = try Ratio(from: _container, forKey: .strength)
		self.strengthHighLimit = try Ratio(from: _container, forKeyIfPresent: .strengthHighLimit)
		var _t_substance: SubstanceX? = nil
		if let substanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .substanceCodeableConcept) {
			if _t_substance != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"substance\"")
			}
			_t_substance = .codeableConcept(substanceCodeableConcept)
		}
		if let substanceReference = try Reference(from: _container, forKeyIfPresent: .substanceReference) {
			if _t_substance != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceReference, in: _container, debugDescription: "More than one value provided for \"substance\"")
			}
			_t_substance = .reference(substanceReference)
		}
		self.substance = _t_substance
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try strength.encode(on: &_container, forKey: .strength)
		try strengthHighLimit?.encode(on: &_container, forKey: .strengthHighLimit)
		if let _enum = substance {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .substanceCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .substanceReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? IngredientSubstanceStrengthReferenceStrength else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && measurementPoint == _other.measurementPoint
		    && strength == _other.strength
		    && strengthHighLimit == _other.strengthHighLimit
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(measurementPoint)
		hasher.combine(strength)
		hasher.combine(strengthHighLimit)
		hasher.combine(substance)
	}
}
