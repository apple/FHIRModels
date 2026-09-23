//
//  MedicinalProductIngredient.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient)
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
 An ingredient of a manufactured item or pharmaceutical product.
 */
public struct MedicinalProductIngredient: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductIngredient
	
	/// If the ingredient is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the ingredient
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Manufacturer of this Ingredient
	public var manufacturer: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Ingredient role e.g. Active ingredient, excipient
	public var role: CodeableConcept
	
	/// A specified substance that comprises this ingredient
	public var specifiedSubstance: [MedicinalProductIngredientSpecifiedSubstance]?
	
	/// The ingredient substance
	public var substance: MedicinalProductIngredientSubstance?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		self.role = role
		self.specifiedSubstance = specifiedSubstance
		self.substance = substance
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case allergenicIndicator; case _allergenicIndicator
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case manufacturer
		case meta
		case modifierExtension
		case role
		case specifiedSubstance
		case substance
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		self.specifiedSubstance = try [MedicinalProductIngredientSpecifiedSubstance](from: _container, forKeyIfPresent: .specifiedSubstance)
		self.substance = try MedicinalProductIngredientSubstance(from: _container, forKeyIfPresent: .substance)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role.encode(on: &_container, forKey: .role)
		try specifiedSubstance?.encode(on: &_container, forKey: .specifiedSubstance)
		try substance?.encode(on: &_container, forKey: .substance)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 A specified substance that comprises this ingredient.
 */
public struct MedicinalProductIngredientSpecifiedSubstance: BackboneElement {
	
	/// The specified substance
	public var code: CodeableConcept
	
	/// Confidentiality level of the specified substance as the ingredient
	public var confidentiality: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The group of specified substance, e.g. group 1 to 4
	public var group: CodeableConcept
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product
	public var strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		confidentiality: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		group: CodeableConcept,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]? = nil
	) {
		self.code = code
		self.confidentiality = confidentiality
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case confidentiality
		case `extension` = "extension"
		case group
		case id; case _id
		case modifierExtension
		case strength
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.confidentiality = try CodeableConcept(from: _container, forKeyIfPresent: .confidentiality)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try CodeableConcept(from: _container, forKey: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try [MedicinalProductIngredientSpecifiedSubstanceStrength](from: _container, forKeyIfPresent: .strength)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try confidentiality?.encode(on: &_container, forKey: .confidentiality)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try strength?.encode(on: &_container, forKey: .strength)
	}
}

/**
 Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
 */
public struct MedicinalProductIngredientSpecifiedSubstanceStrength: BackboneElement {
	
	/// The strength per unitary volume (or mass)
	public var concentration: Ratio?
	
	/// A lower limit for the strength per unitary volume (or mass), for when there is a range. The concentration
	/// attribute then becomes the upper limit
	public var concentrationLowLimit: Ratio?
	
	/// The country or countries for which the strength range applies
	public var country: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// For when strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical
	/// product or manufactured item
	public var presentation: Ratio
	
	/// A lower limit for the quantity of substance in the unit of presentation. For use when there is a range of
	/// strengths, this is the lower limit, with the presentation attribute becoming the upper limit
	public var presentationLowLimit: Ratio?
	
	/// Strength expressed in terms of a reference substance
	public var referenceStrength: [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength]?
	
	/// Designated initializer
	public init(
		concentration: Ratio? = nil,
		concentrationLowLimit: Ratio? = nil,
		country: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measurementPoint: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		presentation: Ratio,
		presentationLowLimit: Ratio? = nil,
		referenceStrength: [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength]? = nil
	) {
		self.concentration = concentration
		self.concentrationLowLimit = concentrationLowLimit
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.presentation = presentation
		self.presentationLowLimit = presentationLowLimit
		self.referenceStrength = referenceStrength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concentration
		case concentrationLowLimit
		case country
		case `extension` = "extension"
		case id; case _id
		case measurementPoint; case _measurementPoint
		case modifierExtension
		case presentation
		case presentationLowLimit
		case referenceStrength
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.concentration = try Ratio(from: _container, forKeyIfPresent: .concentration)
		self.concentrationLowLimit = try Ratio(from: _container, forKeyIfPresent: .concentrationLowLimit)
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.presentation = try Ratio(from: _container, forKey: .presentation)
		self.presentationLowLimit = try Ratio(from: _container, forKeyIfPresent: .presentationLowLimit)
		self.referenceStrength = try [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength](from: _container, forKeyIfPresent: .referenceStrength)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try concentration?.encode(on: &_container, forKey: .concentration)
		try concentrationLowLimit?.encode(on: &_container, forKey: .concentrationLowLimit)
		try country?.encode(on: &_container, forKey: .country)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try presentation.encode(on: &_container, forKey: .presentation)
		try presentationLowLimit?.encode(on: &_container, forKey: .presentationLowLimit)
		try referenceStrength?.encode(on: &_container, forKey: .referenceStrength)
	}
}

/**
 Strength expressed in terms of a reference substance.
 */
public struct MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength: BackboneElement {
	
	/// The country or countries for which the strength range applies
	public var country: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// For when strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Strength expressed in terms of a reference substance
	public var strength: Ratio
	
	/// Strength expressed in terms of a reference substance
	public var strengthLowLimit: Ratio?
	
	/// Relevant reference substance
	public var substance: CodeableConcept?
	
	/// Designated initializer
	public init(
		country: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measurementPoint: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: Ratio,
		strengthLowLimit: Ratio? = nil,
		substance: CodeableConcept? = nil
	) {
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.strength = strength
		self.strengthLowLimit = strengthLowLimit
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case `extension` = "extension"
		case id; case _id
		case measurementPoint; case _measurementPoint
		case modifierExtension
		case strength
		case strengthLowLimit
		case substance
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try Ratio(from: _container, forKey: .strength)
		self.strengthLowLimit = try Ratio(from: _container, forKeyIfPresent: .strengthLowLimit)
		self.substance = try CodeableConcept(from: _container, forKeyIfPresent: .substance)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try country?.encode(on: &_container, forKey: .country)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try strength.encode(on: &_container, forKey: .strength)
		try strengthLowLimit?.encode(on: &_container, forKey: .strengthLowLimit)
		try substance?.encode(on: &_container, forKey: .substance)
	}
}

/**
 The ingredient substance.
 */
public struct MedicinalProductIngredientSubstance: BackboneElement {
	
	/// The ingredient substance
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product
	public var strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case strength
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try [MedicinalProductIngredientSpecifiedSubstanceStrength](from: _container, forKeyIfPresent: .strength)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try strength?.encode(on: &_container, forKey: .strength)
	}
}
