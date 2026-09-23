//
//  ManufacturedItemDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ManufacturedItemDefinition)
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
	
	/// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical
	/// issues)
	public var manufacturer: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// General characteristics of this item
	public var property: [ManufacturedItemDefinitionProperty]?
	
	/// The status of this item. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The “real world” units in which the quantity of the item is described
	public var unitOfPresentation: CodeableConcept?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturedDoseForm: CodeableConcept,
		manufacturer: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		property: [ManufacturedItemDefinitionProperty]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		unitOfPresentation: CodeableConcept? = nil
	) {
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.manufacturedDoseForm = manufacturedDoseForm
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.property = property
		self.status = status
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case ingredient
		case language; case _language
		case manufacturedDoseForm
		case manufacturer
		case meta
		case modifierExtension
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
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturedDoseForm = try CodeableConcept(from: _container, forKey: .manufacturedDoseForm)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturedDoseForm.encode(on: &_container, forKey: .manufacturedDoseForm)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try property?.encode(on: &_container, forKey: .property)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
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
		indirect case quantity(Quantity)
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
		case valueQuantity
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
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
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
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		return _t_value
	}
}
