//
//  Substance.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Substance)
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
 A homogeneous material with a definite composition.
 */
open class Substance: DomainResource {
	
	override open class var resourceType: ResourceType { return .substance }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A code to indicate if the substance is actively used.
	public var status: FHIRPrimitive<FHIRSubstanceStatus>?
	
	/// What class/type of substance this is
	public var category: [CodeableConcept]?
	
	/// What substance this is
	public var code: CodeableConcept
	
	/// Textual description of the substance, comments
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If this describes a specific package/container of the substance
	public var instance: [SubstanceInstance]?
	
	/// Composition information about the substance
	public var ingredient: [SubstanceIngredient]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: [CodeableConcept]? = nil,
							code: CodeableConcept,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							ingredient: [SubstanceIngredient]? = nil,
							instance: [SubstanceInstance]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							status: FHIRPrimitive<FHIRSubstanceStatus>? = nil,
							text: Narrative? = nil)
	{
		self.init(code: code)
		self.category = category
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.instance = instance
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case ingredient
		case instance
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [SubstanceIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.instance = try [SubstanceInstance](from: _container, forKeyIfPresent: .instance)
		self.status = try FHIRPrimitive<FHIRSubstanceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try instance?.encode(on: &_container, forKey: .instance)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Substance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && instance == _other.instance
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(instance)
		hasher.combine(status)
	}
}

/**
 Composition information about the substance.
 
 A substance can be composed of other substances.
 */
open class SubstanceIngredient: BackboneElement {
	
	/// All possible types for "substance[x]"
	public enum SubstanceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Optional amount (concentration)
	public var quantity: Ratio?
	
	/// A component of the substance
	/// One of `substance[x]`
	public var substance: SubstanceX
	
	/// Designated initializer taking all required properties
	public init(substance: SubstanceX) {
		self.substance = substance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Ratio? = nil,
							substance: SubstanceX)
	{
		self.init(substance: substance)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case quantity
		case substanceCodeableConcept
		case substanceReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.substanceCodeableConcept) || _container.contains(CodingKeys.substanceReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.substanceCodeableConcept, CodingKeys.substanceReference], debugDescription: "Must have at least one value for \"substance\" but have none"))
		}
		
		// Decode all our properties
		self.quantity = try Ratio(from: _container, forKeyIfPresent: .quantity)
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
		self.substance = _t_substance!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try quantity?.encode(on: &_container, forKey: .quantity)
		
			switch substance {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .substanceCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .substanceReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceIngredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return quantity == _other.quantity
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(quantity)
		hasher.combine(substance)
	}
}

/**
 If this describes a specific package/container of the substance.
 
 Substance may be used to describe a kind of substance, or a specific package/container of the substance: an instance.
 */
open class SubstanceInstance: BackboneElement {
	
	/// Identifier of the package/container
	public var identifier: Identifier?
	
	/// When no longer valid to use
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// Amount of substance in the package
	public var quantity: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							expiry: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity? = nil)
	{
		self.init()
		self.expiry = expiry
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expiry; case _expiry
		case identifier
		case quantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expiry == _other.expiry
		    && identifier == _other.identifier
		    && quantity == _other.quantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expiry)
		hasher.combine(identifier)
		hasher.combine(quantity)
	}
}
