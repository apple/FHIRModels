//
//  Ingredient.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Ingredient)
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
 An ingredient of a manufactured item or pharmaceutical product.
 */
open class Ingredient: DomainResource {
	
	override open class var resourceType: ResourceType { return .ingredient }
	
	/// An identifier or code by which the ingredient can be referenced
	public var identifier: Identifier?
	
	/// The status of this ingredient. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The product which this ingredient is a constituent part of
	public var `for`: [Reference]?
	
	/// Purpose of the ingredient within the product, e.g. active, inactive
	public var role: CodeableConcept
	
	/// Precise action within the drug product, e.g. antioxidant, alkalizing agent
	public var function: [CodeableConcept]?
	
	/// A classification of the ingredient according to where in the physical item it tends to be used, such the outer
	/// shell of a tablet, inner body or ink
	public var group: CodeableConcept?
	
	/// If the ingredient is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// A place for providing any notes that are relevant to the component, e.g. removed during process, adjusted for
	/// loss on drying
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// An organization that manufactures this ingredient
	public var manufacturer: [IngredientManufacturer]?
	
	/// The substance that comprises this ingredient
	public var substance: IngredientSubstance
	
	/// Designated initializer taking all required properties
	public init(role: CodeableConcept, status: FHIRPrimitive<PublicationStatus>, substance: IngredientSubstance) {
		self.role = role
		self.status = status
		self.substance = substance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(role: role, status: status, substance: substance)
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
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allergenicIndicator; case _allergenicIndicator
		case comment; case _comment
		case `for` = "for"
		case function
		case group
		case identifier
		case manufacturer
		case role
		case status; case _status
		case substance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.`for` = try [Reference](from: _container, forKeyIfPresent: .`for`)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.group = try CodeableConcept(from: _container, forKeyIfPresent: .group)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.manufacturer = try [IngredientManufacturer](from: _container, forKeyIfPresent: .manufacturer)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.substance = try IngredientSubstance(from: _container, forKey: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try `for`?.encode(on: &_container, forKey: .`for`)
		try function?.encode(on: &_container, forKey: .function)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try role.encode(on: &_container, forKey: .role)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substance.encode(on: &_container, forKey: .substance)
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
		    && comment == _other.comment
		    && `for` == _other.`for`
		    && function == _other.function
		    && group == _other.group
		    && identifier == _other.identifier
		    && manufacturer == _other.manufacturer
		    && role == _other.role
		    && status == _other.status
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allergenicIndicator)
		hasher.combine(comment)
		hasher.combine(`for`)
		hasher.combine(function)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(manufacturer)
		hasher.combine(role)
		hasher.combine(status)
		hasher.combine(substance)
	}
}

/**
 An organization that manufactures this ingredient.
 
 The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of
 that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of
 organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of
 context relevant to their use case.
 */
open class IngredientManufacturer: BackboneElement {
	
	/// The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one
	/// (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing
	/// process role.
	public var role: FHIRPrimitive<IngredientManufacturerRole>?
	
	/// An organization that manufactures this ingredient
	public var manufacturer: Reference
	
	/// Designated initializer taking all required properties
	public init(manufacturer: Reference) {
		self.manufacturer = manufacturer
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: Reference,
		modifierExtension: [Extension]? = nil,
		role: FHIRPrimitive<IngredientManufacturerRole>? = nil
	) {
		self.init(manufacturer: manufacturer)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case manufacturer
		case role; case _role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.manufacturer = try Reference(from: _container, forKey: .manufacturer)
		self.role = try FHIRPrimitive<IngredientManufacturerRole>(from: _container, forKeyIfPresent: .role, auxiliaryKey: ._role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try manufacturer.encode(on: &_container, forKey: .manufacturer)
		try role?.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? IngredientManufacturer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return manufacturer == _other.manufacturer
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(manufacturer)
		hasher.combine(role)
	}
}

/**
 The substance that comprises this ingredient.
 */
open class IngredientSubstance: BackboneElement {
	
	/// A code or full resource that represents the ingredient substance
	public var code: CodeableReference
	
	/// The quantity of substance, per presentation, or per volume or mass, and type of quantity
	public var strength: [IngredientSubstanceStrength]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableReference) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableReference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: [IngredientSubstanceStrength]? = nil
	) {
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
		self.code = try CodeableReference(from: _container, forKey: .code)
		self.strength = try [IngredientSubstanceStrength](from: _container, forKeyIfPresent: .strength)
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
 The quantity of substance, per presentation, or per volume or mass, and type of quantity.
 
 The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product
 or manufactured item. The allowed repetitions do not represent different strengths, but are different representations -
 mathematically equivalent - of a single strength.
 */
open class IngredientSubstanceStrength: BackboneElement {
	
	/// All possible types for "concentration[x]"
	public enum ConcentrationX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case ratio(Ratio)
		case ratioRange(RatioRange)
	}
	
	/// All possible types for "presentation[x]"
	public enum PresentationX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case ratio(Ratio)
		case ratioRange(RatioRange)
	}
	
	/// The quantity of substance in the unit of presentation
	/// One of `presentation[x]`
	public var presentation: PresentationX?
	
	/// Text of either the whole presentation strength or a part of it (rest being in Strength.presentation as a ratio)
	public var textPresentation: FHIRPrimitive<FHIRString>?
	
	/// The strength per unitary volume (or mass)
	/// One of `concentration[x]`
	public var concentration: ConcentrationX?
	
	/// Text of either the whole concentration strength or a part of it (rest being in Strength.concentration as a
	/// ratio)
	public var textConcentration: FHIRPrimitive<FHIRString>?
	
	/// A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the
	/// substance base (when the ingredient is a salt)
	public var basis: CodeableConcept?
	
	/// When strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// Where the strength range applies
	public var country: [CodeableConcept]?
	
	/// Strength expressed in terms of a reference substance
	public var referenceStrength: [IngredientSubstanceStrengthReferenceStrength]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case measurementPoint; case _measurementPoint
		case presentationCodeableConcept
		case presentationQuantity
		case presentationRatio
		case presentationRatioRange
		case referenceStrength
		case textConcentration; case _textConcentration
		case textPresentation; case _textPresentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basis = try CodeableConcept(from: _container, forKeyIfPresent: .basis)
		var _t_concentration: ConcentrationX? = nil
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
		if let concentrationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .concentrationCodeableConcept) {
			if _t_concentration != nil {
				throw DecodingError.dataCorruptedError(forKey: .concentrationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"concentration\"")
			}
			_t_concentration = .codeableConcept(concentrationCodeableConcept)
		}
		if let concentrationQuantity = try Quantity(from: _container, forKeyIfPresent: .concentrationQuantity) {
			if _t_concentration != nil {
				throw DecodingError.dataCorruptedError(forKey: .concentrationQuantity, in: _container, debugDescription: "More than one value provided for \"concentration\"")
			}
			_t_concentration = .quantity(concentrationQuantity)
		}
		self.concentration = _t_concentration
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		var _t_presentation: PresentationX? = nil
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
		if let presentationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .presentationCodeableConcept) {
			if _t_presentation != nil {
				throw DecodingError.dataCorruptedError(forKey: .presentationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"presentation\"")
			}
			_t_presentation = .codeableConcept(presentationCodeableConcept)
		}
		if let presentationQuantity = try Quantity(from: _container, forKeyIfPresent: .presentationQuantity) {
			if _t_presentation != nil {
				throw DecodingError.dataCorruptedError(forKey: .presentationQuantity, in: _container, debugDescription: "More than one value provided for \"presentation\"")
			}
			_t_presentation = .quantity(presentationQuantity)
		}
		self.presentation = _t_presentation
		self.referenceStrength = try [IngredientSubstanceStrengthReferenceStrength](from: _container, forKeyIfPresent: .referenceStrength)
		self.textConcentration = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textConcentration, auxiliaryKey: ._textConcentration)
		self.textPresentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textPresentation, auxiliaryKey: ._textPresentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basis?.encode(on: &_container, forKey: .basis)
		if let _enum = concentration {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .concentrationRatio)
			case .ratioRange(let _value):
				try _value.encode(on: &_container, forKey: .concentrationRatioRange)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .concentrationCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .concentrationQuantity)
			}
		}
		try country?.encode(on: &_container, forKey: .country)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		if let _enum = presentation {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .presentationRatio)
			case .ratioRange(let _value):
				try _value.encode(on: &_container, forKey: .presentationRatioRange)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .presentationCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .presentationQuantity)
			}
		}
		try referenceStrength?.encode(on: &_container, forKey: .referenceStrength)
		try textConcentration?.encode(on: &_container, forKey: .textConcentration, auxiliaryKey: ._textConcentration)
		try textPresentation?.encode(on: &_container, forKey: .textPresentation, auxiliaryKey: ._textPresentation)
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
		return basis == _other.basis
		    && concentration == _other.concentration
		    && country == _other.country
		    && measurementPoint == _other.measurementPoint
		    && presentation == _other.presentation
		    && referenceStrength == _other.referenceStrength
		    && textConcentration == _other.textConcentration
		    && textPresentation == _other.textPresentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basis)
		hasher.combine(concentration)
		hasher.combine(country)
		hasher.combine(measurementPoint)
		hasher.combine(presentation)
		hasher.combine(referenceStrength)
		hasher.combine(textConcentration)
		hasher.combine(textPresentation)
	}
}

/**
 Strength expressed in terms of a reference substance.
 
 Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as
 equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents
 the strength (quantitative composition) of the active moiety of the active substance. There are situations when the
 active substance and active moiety are different, therefore both a strength and a reference strength are needed.
 */
open class IngredientSubstanceStrengthReferenceStrength: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
		case ratioRange(RatioRange)
	}
	
	/// Relevant reference substance
	public var substance: CodeableReference
	
	/// Strength expressed in terms of a reference substance
	/// One of `strength[x]`
	public var strength: StrengthX
	
	/// When strength is measured at a particular point or distance
	public var measurementPoint: FHIRPrimitive<FHIRString>?
	
	/// Where the strength range applies
	public var country: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(strength: StrengthX, substance: CodeableReference) {
		self.strength = strength
		self.substance = substance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		country: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measurementPoint: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: StrengthX,
		substance: CodeableReference
	) {
		self.init(strength: strength, substance: substance)
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.measurementPoint = measurementPoint
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case measurementPoint; case _measurementPoint
		case strengthQuantity
		case strengthRatio
		case strengthRatioRange
		case substance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.strengthQuantity) || _container.contains(CodingKeys.strengthRatio) || _container.contains(CodingKeys.strengthRatioRange) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.strengthQuantity, CodingKeys.strengthRatio, CodingKeys.strengthRatioRange], debugDescription: "Must have at least one value for \"strength\" but have none"))
		}
		
		// Decode all our properties
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.measurementPoint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .measurementPoint, auxiliaryKey: ._measurementPoint)
		var _t_strength: StrengthX? = nil
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
		if let strengthQuantity = try Quantity(from: _container, forKeyIfPresent: .strengthQuantity) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthQuantity, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .quantity(strengthQuantity)
		}
		self.strength = _t_strength!
		self.substance = try CodeableReference(from: _container, forKey: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country)
		try measurementPoint?.encode(on: &_container, forKey: .measurementPoint, auxiliaryKey: ._measurementPoint)
		
			switch strength {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .strengthRatio)
			case .ratioRange(let _value):
				try _value.encode(on: &_container, forKey: .strengthRatioRange)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .strengthQuantity)
			}
		
		try substance.encode(on: &_container, forKey: .substance)
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
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(measurementPoint)
		hasher.combine(strength)
		hasher.combine(substance)
	}
}
