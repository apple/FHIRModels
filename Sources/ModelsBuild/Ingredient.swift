//
//  Ingredient.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Ingredient)
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
public struct Ingredient: DomainResource {
	
	public static let resourceType: ResourceType = .ingredient
	
	/// If the ingredient is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// A place for providing any notes that are relevant to the component, e.g. removed during process, adjusted for
	/// loss on drying
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The product which this ingredient is a constituent part of
	public var `for`: [Reference]?
	
	/// Precise action within the drug product, e.g. antioxidant, alkalizing agent
	public var function: [CodeableConcept]?
	
	/// A classification of the ingredient according to where in the physical item it tends to be used, such the outer
	/// shell of a tablet, inner body or ink
	public var group: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier or code by which the ingredient can be referenced
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// An organization that manufactures this ingredient
	public var manufacturer: [IngredientManufacturer]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Purpose of the ingredient within the product, e.g. active, inactive
	public var role: CodeableConcept
	
	/// The status of this ingredient. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The substance that comprises this ingredient
	public var substance: IngredientSubstance
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		allergenicIndicator: FHIRPrimitive<FHIRBool>? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		`for`: [Reference]? = nil,
		function: [CodeableConcept]? = nil,
		group: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: [IngredientManufacturer]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept,
		status: FHIRPrimitive<PublicationStatus>,
		substance: IngredientSubstance,
		text: Narrative? = nil
	) {
		self.allergenicIndicator = allergenicIndicator
		self.comment = comment
		self.contained = contained
		self.`extension` = `extension`
		self.`for` = `for`
		self.function = function
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.role = role
		self.status = status
		self.substance = substance
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case allergenicIndicator; case _allergenicIndicator
		case comment; case _comment
		case contained
		case `extension` = "extension"
		case `for` = "for"
		case function
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case manufacturer
		case meta
		case modifierExtension
		case role
		case status; case _status
		case substance
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.`for` = try [Reference](from: _container, forKeyIfPresent: .`for`)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.group = try CodeableConcept(from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturer = try [IngredientManufacturer](from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.substance = try IngredientSubstance(from: _container, forKey: .substance)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try `for`?.encode(on: &_container, forKey: .`for`)
		try function?.encode(on: &_container, forKey: .function)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role.encode(on: &_container, forKey: .role)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substance.encode(on: &_container, forKey: .substance)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 An organization that manufactures this ingredient.
 
 The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of
 that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of
 organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of
 context relevant to their use case.
 */
public struct IngredientManufacturer: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An organization that manufactures this ingredient
	public var manufacturer: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one
	/// (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing
	/// process role.
	public var role: FHIRPrimitive<IngredientManufacturerRole>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: Reference,
		modifierExtension: [Extension]? = nil,
		role: FHIRPrimitive<IngredientManufacturerRole>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.manufacturer = manufacturer
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case manufacturer
		case modifierExtension
		case role; case _role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.manufacturer = try Reference(from: _container, forKey: .manufacturer)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try FHIRPrimitive<IngredientManufacturerRole>(from: _container, forKeyIfPresent: .role, auxiliaryKey: ._role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try manufacturer.encode(on: &_container, forKey: .manufacturer)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
	}
}

/**
 The substance that comprises this ingredient.
 */
public struct IngredientSubstance: BackboneElement {
	
	/// A code or full resource that represents the ingredient substance
	public var code: CodeableReference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The quantity of substance, per presentation, or per volume or mass, and type of quantity
	public var strength: [IngredientSubstanceStrength]?
	
	/// Designated initializer
	public init(
		code: CodeableReference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: [IngredientSubstanceStrength]? = nil
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
		self.code = try CodeableReference(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try [IngredientSubstanceStrength](from: _container, forKeyIfPresent: .strength)
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

/**
 The quantity of substance, per presentation, or per volume or mass, and type of quantity.
 
 The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product
 or manufactured item. The allowed repetitions do not represent different strengths, but are different representations -
 mathematically equivalent - of a single strength.
 */
public struct IngredientSubstanceStrength: BackboneElement {
	
	/// All possible types for "concentration[x]"
	public enum ConcentrationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
	}
	
	/// All possible types for "presentation[x]"
	public enum PresentationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
	}
	
	/// A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the
	/// substance base (when the ingredient is a salt)
	public var basis: CodeableConcept?
	
	/// The strength per unitary volume (or mass)
	/// One of `concentration[x]`
	public var concentration: ConcentrationX?
	
	/// Where the strength range applies
	public var country: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// When strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The quantity of substance in the unit of presentation
	/// One of `presentation[x]`
	public var presentation: PresentationX?
	
	/// Strength expressed in terms of a reference substance
	public var referenceStrength: [IngredientSubstanceStrengthReferenceStrength]?
	
	/// Text of either the whole concentration strength or a part of it (rest being in Strength.concentration as a
	/// ratio)
	public var textConcentration: FHIRPrimitive<FHIRString>?
	
	/// Text of either the whole presentation strength or a part of it (rest being in Strength.presentation as a ratio)
	public var textPresentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		basis: CodeableConcept? = nil,
		concentration: ConcentrationX? = nil,
		country: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measurementPoint: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		presentation: PresentationX? = nil,
		referenceStrength: [IngredientSubstanceStrengthReferenceStrength]? = nil,
		textConcentration: FHIRPrimitive<FHIRString>? = nil,
		textPresentation: FHIRPrimitive<FHIRString>? = nil
	) {
		self.basis = basis
		self.concentration = concentration
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.presentation = presentation
		self.referenceStrength = referenceStrength
		self.textConcentration = textConcentration
		self.textPresentation = textPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basis
		case concentrationCodeableConcept
		case concentrationQuantity
		case concentrationRatio
		case concentrationRatioRange
		case country
		case `extension` = "extension"
		case id; case _id
		case measurementPoint; case _measurementPoint
		case modifierExtension
		case presentationCodeableConcept
		case presentationQuantity
		case presentationRatio
		case presentationRatioRange
		case referenceStrength
		case textConcentration; case _textConcentration
		case textPresentation; case _textPresentation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basis = try CodeableConcept(from: _container, forKeyIfPresent: .basis)
		self.concentration = try Self._decodeConcentration(from: _container)
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.presentation = try Self._decodePresentation(from: _container)
		self.referenceStrength = try [IngredientSubstanceStrengthReferenceStrength](from: _container, forKeyIfPresent: .referenceStrength)
		self.textConcentration = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textConcentration, auxiliaryKey: ._textConcentration)
		self.textPresentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textPresentation, auxiliaryKey: ._textPresentation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try basis?.encode(on: &_container, forKey: .basis)
		if let _enum = concentration {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .concentrationCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .concentrationQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .concentrationRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .concentrationRatioRange)
		}
		}
		try country?.encode(on: &_container, forKey: .country)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = presentation {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .presentationCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .presentationQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .presentationRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .presentationRatioRange)
		}
		}
		try referenceStrength?.encode(on: &_container, forKey: .referenceStrength)
		try textConcentration?.encode(on: &_container, forKey: .textConcentration, auxiliaryKey: ._textConcentration)
		try textPresentation?.encode(on: &_container, forKey: .textPresentation, auxiliaryKey: ._textPresentation)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeConcentration(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ConcentrationX? {
		var _t_concentration: ConcentrationX? = nil
		if let concentrationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .concentrationCodeableConcept) {
			_t_concentration = .codeableConcept(concentrationCodeableConcept)
		}
		if let concentrationQuantity = try Quantity(from: _container, forKeyIfPresent: .concentrationQuantity) {
			if _t_concentration != nil {
				throw DecodingError.dataCorruptedError(forKey: .concentrationQuantity, in: _container, debugDescription: "More than one value provided for \"concentration\"")
			}
			_t_concentration = .quantity(concentrationQuantity)
		}
		if let concentrationRatio = try Ratio(from: _container, forKeyIfPresent: .concentrationRatio) {
			if _t_concentration != nil {
				throw DecodingError.dataCorruptedError(forKey: .concentrationRatio, in: _container, debugDescription: "More than one value provided for \"concentration\"")
			}
			_t_concentration = .ratio(concentrationRatio)
		}
		if let concentrationRatioRange = try RatioRange(from: _container, forKeyIfPresent: .concentrationRatioRange) {
			if _t_concentration != nil {
				throw DecodingError.dataCorruptedError(forKey: .concentrationRatioRange, in: _container, debugDescription: "More than one value provided for \"concentration\"")
			}
			_t_concentration = .ratioRange(concentrationRatioRange)
		}
		return _t_concentration
	}
	
	private static func _decodePresentation(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PresentationX? {
		var _t_presentation: PresentationX? = nil
		if let presentationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .presentationCodeableConcept) {
			_t_presentation = .codeableConcept(presentationCodeableConcept)
		}
		if let presentationQuantity = try Quantity(from: _container, forKeyIfPresent: .presentationQuantity) {
			if _t_presentation != nil {
				throw DecodingError.dataCorruptedError(forKey: .presentationQuantity, in: _container, debugDescription: "More than one value provided for \"presentation\"")
			}
			_t_presentation = .quantity(presentationQuantity)
		}
		if let presentationRatio = try Ratio(from: _container, forKeyIfPresent: .presentationRatio) {
			if _t_presentation != nil {
				throw DecodingError.dataCorruptedError(forKey: .presentationRatio, in: _container, debugDescription: "More than one value provided for \"presentation\"")
			}
			_t_presentation = .ratio(presentationRatio)
		}
		if let presentationRatioRange = try RatioRange(from: _container, forKeyIfPresent: .presentationRatioRange) {
			if _t_presentation != nil {
				throw DecodingError.dataCorruptedError(forKey: .presentationRatioRange, in: _container, debugDescription: "More than one value provided for \"presentation\"")
			}
			_t_presentation = .ratioRange(presentationRatioRange)
		}
		return _t_presentation
	}
}

/**
 Strength expressed in terms of a reference substance.
 
 Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as
 equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents
 the strength (quantitative composition) of the active moiety of the active substance. There are situations when the
 active substance and active moiety are different, therefore both a strength and a reference strength are needed.
 */
public struct IngredientSubstanceStrengthReferenceStrength: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
	}
	
	/// Where the strength range applies
	public var country: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// When strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Strength expressed in terms of a reference substance
	/// One of `strength[x]`
	public var strength: StrengthX
	
	/// Relevant reference substance
	public var substance: CodeableReference
	
	/// Designated initializer
	public init(
		country: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measurementPoint: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: StrengthX,
		substance: CodeableReference
	) {
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
		self.strength = strength
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case `extension` = "extension"
		case id; case _id
		case measurementPoint; case _measurementPoint
		case modifierExtension
		case strengthQuantity
		case strengthRatio
		case strengthRatioRange
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
		self.strength = try Self._decodeStrength(from: _container)
		self.substance = try CodeableReference(from: _container, forKey: .substance)
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
		
		switch strength {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .strengthQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .strengthRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .strengthRatioRange)
		}
		
		try substance.encode(on: &_container, forKey: .substance)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeStrength(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StrengthX {
		var _t_strength: StrengthX? = nil
		if let strengthQuantity = try Quantity(from: _container, forKeyIfPresent: .strengthQuantity) {
			_t_strength = .quantity(strengthQuantity)
		}
		if let strengthRatio = try Ratio(from: _container, forKeyIfPresent: .strengthRatio) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthRatio, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .ratio(strengthRatio)
		}
		if let strengthRatioRange = try RatioRange(from: _container, forKeyIfPresent: .strengthRatioRange) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthRatioRange, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .ratioRange(strengthRatioRange)
		}
		guard let _t_strength else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.strengthRatioRange)
			throw DecodingError.valueNotFound(StrengthX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"strength\" but have none"))
		}
		return _t_strength
	}
}
