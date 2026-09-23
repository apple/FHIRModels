//
//  MedicinalProductManufactured.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured)
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
 The manufactured item as contained in the packaged medicinal product.
 */
public struct MedicinalProductManufactured: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductManufactured
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Ingredient
	public var ingredient: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Dose form as manufactured and before any transformation into the pharmaceutical product
	public var manufacturedDoseForm: CodeableConcept
	
	/// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical
	/// issues)
	public var manufacturer: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Other codeable characteristics
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Dimensions, color etc.
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The quantity or "count number" of the manufactured item
	public var quantity: Quantity
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The “real world” units in which the quantity of the manufactured item is described
	public var unitOfPresentation: CodeableConcept?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturedDoseForm: CodeableConcept,
		manufacturer: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		otherCharacteristics: [CodeableConcept]? = nil,
		physicalCharacteristics: ProdCharacteristic? = nil,
		quantity: Quantity,
		text: Narrative? = nil,
		unitOfPresentation: CodeableConcept? = nil
	) {
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.manufacturedDoseForm = manufacturedDoseForm
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.otherCharacteristics = otherCharacteristics
		self.physicalCharacteristics = physicalCharacteristics
		self.quantity = quantity
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case ingredient
		case language; case _language
		case manufacturedDoseForm
		case manufacturer
		case meta
		case modifierExtension
		case otherCharacteristics
		case physicalCharacteristics
		case quantity
		case text
		case unitOfPresentation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [Reference](from: _container, forKeyIfPresent: .ingredient)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturedDoseForm = try CodeableConcept(from: _container, forKey: .manufacturedDoseForm)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.otherCharacteristics = try [CodeableConcept](from: _container, forKeyIfPresent: .otherCharacteristics)
		self.physicalCharacteristics = try ProdCharacteristic(from: _container, forKeyIfPresent: .physicalCharacteristics)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturedDoseForm.encode(on: &_container, forKey: .manufacturedDoseForm)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try otherCharacteristics?.encode(on: &_container, forKey: .otherCharacteristics)
		try physicalCharacteristics?.encode(on: &_container, forKey: .physicalCharacteristics)
		try quantity.encode(on: &_container, forKey: .quantity)
		try text?.encode(on: &_container, forKey: .text)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
	}
}
