//
//  MedicinalProductInteraction.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductInteraction)
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
 MedicinalProductInteraction.
 
 The interactions of the medicinal product with other medicinal products, or other forms of interactions.
 */
open class MedicinalProductInteraction: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductInteraction }
	
	/// The medication for which this is a described interaction
	public var subject: [Reference]?
	
	/// The interaction described
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The specific medication, food or laboratory test that interacts
	public var interactant: [MedicinalProductInteractionInteractant]?
	
	/// The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction
	public var type: CodeableConcept?
	
	/// The effect of the interaction, for example "reduced gastric absorption of primary medication"
	public var effect: CodeableConcept?
	
	/// The incidence of the interaction, e.g. theoretical, observed
	public var incidence: CodeableConcept?
	
	/// Actions for managing the interaction
	public var management: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							effect: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							incidence: CodeableConcept? = nil,
							interactant: [MedicinalProductInteractionInteractant]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							management: CodeableConcept? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							subject: [Reference]? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.contained = contained
		self.description_fhir = description_fhir
		self.effect = effect
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.incidence = incidence
		self.interactant = interactant
		self.language = language
		self.management = management
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case effect
		case incidence
		case interactant
		case management
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effect = try CodeableConcept(from: _container, forKeyIfPresent: .effect)
		self.incidence = try CodeableConcept(from: _container, forKeyIfPresent: .incidence)
		self.interactant = try [MedicinalProductInteractionInteractant](from: _container, forKeyIfPresent: .interactant)
		self.management = try CodeableConcept(from: _container, forKeyIfPresent: .management)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effect?.encode(on: &_container, forKey: .effect)
		try incidence?.encode(on: &_container, forKey: .incidence)
		try interactant?.encode(on: &_container, forKey: .interactant)
		try management?.encode(on: &_container, forKey: .management)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductInteraction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && effect == _other.effect
		    && incidence == _other.incidence
		    && interactant == _other.interactant
		    && management == _other.management
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(effect)
		hasher.combine(incidence)
		hasher.combine(interactant)
		hasher.combine(management)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 The specific medication, food or laboratory test that interacts.
 */
open class MedicinalProductInteractionInteractant: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The specific medication, food or laboratory test that interacts
	/// One of `item[x]`
	public var item: ItemX
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch item {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductInteractionInteractant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
	}
}
