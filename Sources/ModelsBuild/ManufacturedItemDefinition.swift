//
//  ManufacturedItemDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ManufacturedItemDefinition)
//  Copyright 2024 Apple Inc.
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
 The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a
 packaged medicinal product.
 */
open class ManufacturedItemDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .manufacturedItemDefinition }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// The status of this item. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// A descriptive name applied to this item
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Dose form as manufactured (before any necessary transformation)
	public var manufacturedDoseForm: CodeableConcept
	
	/// The “real-world” units in which the quantity of the item is described
	public var unitOfPresentation: CodeableConcept?
	
	/// Manufacturer of the item, one of several possible
	public var manufacturer: [Reference]?
	
	/// Allows specifying that an item is on the market for sale, or that it is not available, and the dates and
	/// locations associated
	public var marketingStatus: [MarketingStatus]?
	
	/// The ingredients of this manufactured item. Only needed if these are not specified by incoming references from
	/// the Ingredient resource
	public var ingredient: [CodeableConcept]?
	
	/// General characteristics of this item
	public var property: [ManufacturedItemDefinitionProperty]?
	
	/// Physical parts of the manufactured item, that it is intrisically made from. This is distinct from the
	/// ingredients that are part of its chemical makeup
	public var component: [ManufacturedItemDefinitionComponent]?
	
	/// Designated initializer taking all required properties
	public init(manufacturedDoseForm: CodeableConcept, status: FHIRPrimitive<PublicationStatus>) {
		self.manufacturedDoseForm = manufacturedDoseForm
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		component: [ManufacturedItemDefinitionComponent]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturedDoseForm: CodeableConcept,
		manufacturer: [Reference]? = nil,
		marketingStatus: [MarketingStatus]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		property: [ManufacturedItemDefinitionProperty]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		unitOfPresentation: CodeableConcept? = nil
	) {
		self.init(manufacturedDoseForm: manufacturedDoseForm, status: status)
		self.component = component
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.manufacturer = manufacturer
		self.marketingStatus = marketingStatus
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.property = property
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case identifier
		case ingredient
		case manufacturedDoseForm
		case manufacturer
		case marketingStatus
		case name; case _name
		case property
		case status; case _status
		case unitOfPresentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try [ManufacturedItemDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.manufacturedDoseForm = try CodeableConcept(from: _container, forKey: .manufacturedDoseForm)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.property = try [ManufacturedItemDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component?.encode(on: &_container, forKey: .component)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try manufacturedDoseForm.encode(on: &_container, forKey: .manufacturedDoseForm)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try property?.encode(on: &_container, forKey: .property)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ManufacturedItemDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return component == _other.component
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && manufacturedDoseForm == _other.manufacturedDoseForm
		    && manufacturer == _other.manufacturer
		    && marketingStatus == _other.marketingStatus
		    && name == _other.name
		    && property == _other.property
		    && status == _other.status
		    && unitOfPresentation == _other.unitOfPresentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(component)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(manufacturedDoseForm)
		hasher.combine(manufacturer)
		hasher.combine(marketingStatus)
		hasher.combine(name)
		hasher.combine(property)
		hasher.combine(status)
		hasher.combine(unitOfPresentation)
	}
}

/**
 Physical parts of the manufactured item, that it is intrisically made from. This is distinct from the ingredients that
 are part of its chemical makeup.
 */
open class ManufacturedItemDefinitionComponent: BackboneElement {
	
	/// Defining type of the component e.g. shell, layer, ink
	public var type: CodeableConcept
	
	/// The function of this component within the item e.g. delivers active ingredient, masks taste
	public var function: [CodeableConcept]?
	
	/// The measurable amount of total quantity of all substances in the component, expressable in different ways (e.g.
	/// by mass or volume)
	public var amount: [Quantity]?
	
	/// A reference to a constituent of the manufactured item as a whole, linked here so that its component location
	/// within the item can be indicated. This not where the item's ingredient are primarily stated (for which see
	/// Ingredient.for or ManufacturedItemDefinition.ingredient)
	public var constituent: [ManufacturedItemDefinitionComponentConstituent]?
	
	/// General characteristics of this component
	public var property: [ManufacturedItemDefinitionProperty]?
	
	/// A component that this component contains or is made from
	public var component: [ManufacturedItemDefinitionComponent]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: [Quantity]? = nil,
		component: [ManufacturedItemDefinitionComponent]? = nil,
		constituent: [ManufacturedItemDefinitionComponentConstituent]? = nil,
		`extension`: [Extension]? = nil,
		function: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		property: [ManufacturedItemDefinitionProperty]? = nil,
		type: CodeableConcept
	) {
		self.init(type: type)
		self.amount = amount
		self.component = component
		self.constituent = constituent
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
		self.property = property
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case component
		case constituent
		case function
		case property
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try [Quantity](from: _container, forKeyIfPresent: .amount)
		self.component = try [ManufacturedItemDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.constituent = try [ManufacturedItemDefinitionComponentConstituent](from: _container, forKeyIfPresent: .constituent)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.property = try [ManufacturedItemDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try component?.encode(on: &_container, forKey: .component)
		try constituent?.encode(on: &_container, forKey: .constituent)
		try function?.encode(on: &_container, forKey: .function)
		try property?.encode(on: &_container, forKey: .property)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ManufacturedItemDefinitionComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && component == _other.component
		    && constituent == _other.constituent
		    && function == _other.function
		    && property == _other.property
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(component)
		hasher.combine(constituent)
		hasher.combine(function)
		hasher.combine(property)
		hasher.combine(type)
	}
}

/**
 A reference to a constituent of the manufactured item as a whole, linked here so that its component location within the
 item can be indicated. This not where the item's ingredient are primarily stated (for which see Ingredient.for or
 ManufacturedItemDefinition.ingredient).
 */
open class ManufacturedItemDefinitionComponentConstituent: BackboneElement {
	
	/// The measurable amount of the substance, expressable in different ways (e.g. by mass or volume)
	public var amount: [Quantity]?
	
	/// The physical location of the constituent/ingredient within the component
	public var location: [CodeableConcept]?
	
	/// The function of this constituent within the component e.g. binder
	public var function: [CodeableConcept]?
	
	/// The ingredient that is the constituent of the given component
	public var hasIngredient: [CodeableReference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: [Quantity]? = nil,
		`extension`: [Extension]? = nil,
		function: [CodeableConcept]? = nil,
		hasIngredient: [CodeableReference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.function = function
		self.hasIngredient = hasIngredient
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case function
		case hasIngredient
		case location
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try [Quantity](from: _container, forKeyIfPresent: .amount)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.hasIngredient = try [CodeableReference](from: _container, forKeyIfPresent: .hasIngredient)
		self.location = try [CodeableConcept](from: _container, forKeyIfPresent: .location)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try function?.encode(on: &_container, forKey: .function)
		try hasIngredient?.encode(on: &_container, forKey: .hasIngredient)
		try location?.encode(on: &_container, forKey: .location)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ManufacturedItemDefinitionComponentConstituent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && function == _other.function
		    && hasIngredient == _other.hasIngredient
		    && location == _other.location
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(function)
		hasher.combine(hasIngredient)
		hasher.combine(location)
	}
}

/**
 General characteristics of this item.
 */
open class ManufacturedItemDefinitionProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case markdown(FHIRPrimitive<FHIRString>)
		case quantity(Quantity)
		case reference(Reference)
	}
	
	/// A code expressing the type of characteristic
	public var type: CodeableConcept
	
	/// A value for the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX? = nil
	) {
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueMarkdown; case _valueMarkdown
		case valueQuantity
		case valueReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ManufacturedItemDefinitionProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}
