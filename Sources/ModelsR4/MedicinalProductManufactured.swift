//
//  MedicinalProductManufactured.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured)
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
 The manufactured item as contained in the packaged medicinal product.
 */
open class MedicinalProductManufactured: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductManufactured }
	
	/// Dose form as manufactured and before any transformation into the pharmaceutical product
	public var manufacturedDoseForm: CodeableConcept
	
	/// The “real world” units in which the quantity of the manufactured item is described
	public var unitOfPresentation: CodeableConcept?
	
	/// The quantity or "count number" of the manufactured item
	public var quantity: Quantity
	
	/// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical
	/// issues)
	public var manufacturer: [Reference]?
	
	/// Ingredient
	public var ingredient: [Reference]?
	
	/// Dimensions, color etc.
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// Other codeable characteristics
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(manufacturedDoseForm: CodeableConcept, quantity: Quantity) {
		self.manufacturedDoseForm = manufacturedDoseForm
		self.quantity = quantity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							unitOfPresentation: CodeableConcept? = nil)
	{
		self.init(manufacturedDoseForm: manufacturedDoseForm, quantity: quantity)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.otherCharacteristics = otherCharacteristics
		self.physicalCharacteristics = physicalCharacteristics
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case ingredient
		case manufacturedDoseForm
		case manufacturer
		case otherCharacteristics
		case physicalCharacteristics
		case quantity
		case unitOfPresentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.ingredient = try [Reference](from: _container, forKeyIfPresent: .ingredient)
		self.manufacturedDoseForm = try CodeableConcept(from: _container, forKey: .manufacturedDoseForm)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.otherCharacteristics = try [CodeableConcept](from: _container, forKeyIfPresent: .otherCharacteristics)
		self.physicalCharacteristics = try ProdCharacteristic(from: _container, forKeyIfPresent: .physicalCharacteristics)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try manufacturedDoseForm.encode(on: &_container, forKey: .manufacturedDoseForm)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try otherCharacteristics?.encode(on: &_container, forKey: .otherCharacteristics)
		try physicalCharacteristics?.encode(on: &_container, forKey: .physicalCharacteristics)
		try quantity.encode(on: &_container, forKey: .quantity)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductManufactured else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return ingredient == _other.ingredient
		    && manufacturedDoseForm == _other.manufacturedDoseForm
		    && manufacturer == _other.manufacturer
		    && otherCharacteristics == _other.otherCharacteristics
		    && physicalCharacteristics == _other.physicalCharacteristics
		    && quantity == _other.quantity
		    && unitOfPresentation == _other.unitOfPresentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(ingredient)
		hasher.combine(manufacturedDoseForm)
		hasher.combine(manufacturer)
		hasher.combine(otherCharacteristics)
		hasher.combine(physicalCharacteristics)
		hasher.combine(quantity)
		hasher.combine(unitOfPresentation)
	}
}
