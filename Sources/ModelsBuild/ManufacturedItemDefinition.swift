//
//  ManufacturedItemDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ManufacturedItemDefinition)
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
 The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a
 packaged medicinal product.
 */
public struct ManufacturedItemDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .manufacturedItemDefinition
	
	/// Physical parts of the manufactured item, that it is intrinsically made from. This is distinct from the
	/// ingredients that are part of its chemical makeup
	public var component: [ManufacturedItemDefinitionComponent]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The ingredients of this manufactured item. Only needed if these are not specified by incoming references from
	/// the Ingredient resource
	public var ingredient: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Dose form as manufactured (before any necessary transformation)
	public var manufacturedDoseForm: CodeableConcept
	
	/// Manufacturer of the item, one of several possible
	public var manufacturer: [Reference]?
	
	/// Allows specifying that an item is on the market for sale, or that it is not available, and the dates and
	/// locations associated
	public var marketingStatus: [MarketingStatus]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A descriptive name applied to this item
	public var name: FHIRPrimitive<FHIRString>?
	
	/// General characteristics of this item
	public var property: [ManufacturedItemDefinitionProperty]?
	
	/// The status of this item. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The “real-world” units in which the quantity of the item is described
	public var unitOfPresentation: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		self.component = component
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.manufacturedDoseForm = manufacturedDoseForm
		self.manufacturer = manufacturer
		self.marketingStatus = marketingStatus
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.property = property
		self.status = status
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case component
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case ingredient
		case language; case _language
		case manufacturedDoseForm
		case manufacturer
		case marketingStatus
		case meta
		case modifierExtension
		case name; case _name
		case property
		case status; case _status
		case text
		case unitOfPresentation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.component = try [ManufacturedItemDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturedDoseForm = try CodeableConcept(from: _container, forKey: .manufacturedDoseForm)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.property = try [ManufacturedItemDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try component?.encode(on: &_container, forKey: .component)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturedDoseForm.encode(on: &_container, forKey: .manufacturedDoseForm)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try property?.encode(on: &_container, forKey: .property)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
	}
}

/**
 Physical parts of the manufactured item, that it is intrinsically made from. This is distinct from the ingredients that
 are part of its chemical makeup.
 */
public struct ManufacturedItemDefinitionComponent: BackboneElement {
	
	/// The measurable amount of total quantity of all substances in the component, expressible in different ways (e.g.
	/// by mass or volume)
	public var amount: [Quantity]?
	
	/// A component that this component contains or is made from
	public var component: [ManufacturedItemDefinitionComponent]?
	
	/// A reference to a constituent of the manufactured item as a whole, linked here so that its component location
	/// within the item can be indicated. This not where the item's ingredient are primarily stated (for which see
	/// Ingredient.for or ManufacturedItemDefinition.ingredient)
	public var constituent: [ManufacturedItemDefinitionComponentConstituent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The function of this component within the item e.g. delivers active ingredient, masks taste
	public var function: [CodeableConcept]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// General characteristics of this component
	public var property: [ManufacturedItemDefinitionProperty]?
	
	/// Defining type of the component e.g. shell, layer, ink
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
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
		self.amount = amount
		self.component = component
		self.constituent = constituent
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
		self.property = property
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case component
		case constituent
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
		case property
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try [Quantity](from: _container, forKeyIfPresent: .amount)
		self.component = try [ManufacturedItemDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.constituent = try [ManufacturedItemDefinitionComponentConstituent](from: _container, forKeyIfPresent: .constituent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.property = try [ManufacturedItemDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try component?.encode(on: &_container, forKey: .component)
		try constituent?.encode(on: &_container, forKey: .constituent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try property?.encode(on: &_container, forKey: .property)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 A reference to a constituent of the manufactured item as a whole, linked here so that its component location within the
 item can be indicated. This not where the item's ingredient are primarily stated (for which see Ingredient.for or
 ManufacturedItemDefinition.ingredient).
 */
public struct ManufacturedItemDefinitionComponentConstituent: BackboneElement {
	
	/// The measurable amount of the substance, expressible in different ways (e.g. by mass or volume)
	public var amount: [Quantity]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The function of this constituent within the component e.g. binder
	public var function: [CodeableConcept]?
	
	/// The ingredient that is the constituent of the given component
	public var hasIngredient: [CodeableReference]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The physical location of the constituent/ingredient within the component
	public var location: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: [Quantity]? = nil,
		`extension`: [Extension]? = nil,
		function: [CodeableConcept]? = nil,
		hasIngredient: [CodeableReference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case function
		case hasIngredient
		case id; case _id
		case location
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try [Quantity](from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try [CodeableConcept](from: _container, forKeyIfPresent: .function)
		self.hasIngredient = try [CodeableReference](from: _container, forKeyIfPresent: .hasIngredient)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try [CodeableConcept](from: _container, forKeyIfPresent: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try hasIngredient?.encode(on: &_container, forKey: .hasIngredient)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location?.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 General characteristics of this item.
 */
public struct ManufacturedItemDefinitionProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A code expressing the type of characteristic
	public var type: CodeableConcept
	
	/// A value for the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueMarkdown; case _valueMarkdown
		case valueQuantity
		case valueRange
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		return _t_value
	}
}
