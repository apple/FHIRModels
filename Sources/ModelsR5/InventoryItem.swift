//
//  InventoryItem.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/InventoryItem)
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
 A functional description of an inventory item used in inventory and supply-related workflows.
 */
public struct InventoryItem: DomainResource {
	
	public static let resourceType: ResourceType = .inventoryItem
	
	/// Association with other items or products
	public var association: [InventoryItemAssociation]?
	
	/// The base unit of measure - the unit in which the product is used or counted
	public var baseUnit: CodeableConcept?
	
	/// Category or class of the item
	public var category: [CodeableConcept]?
	
	/// Characteristic of the item
	public var characteristic: [InventoryItemCharacteristic]?
	
	/// Code designating the specific type of item
	public var code: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Descriptive characteristics of the item
	public var description_fhir: InventoryItemDescription?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the inventory item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Instances or occurrences of the product
	public var instance: InventoryItemInstance?
	
	/// The usage status like recalled, in use, discarded
	public var inventoryStatus: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The item name(s) - the brand name, or common name, functional name, generic name or others
	public var name: [InventoryItemName]?
	
	/// Net content or amount present in the item
	public var netContent: Quantity?
	
	/// Link to a product resource used in clinical workflows
	public var productReference: Reference?
	
	/// Organization(s) responsible for the product
	public var responsibleOrganization: [InventoryItemResponsibleOrganization]?
	
	/// Status of the item entry.
	public var status: FHIRPrimitive<InventoryItemStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		association: [InventoryItemAssociation]? = nil,
		baseUnit: CodeableConcept? = nil,
		category: [CodeableConcept]? = nil,
		characteristic: [InventoryItemCharacteristic]? = nil,
		code: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: InventoryItemDescription? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instance: InventoryItemInstance? = nil,
		inventoryStatus: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: [InventoryItemName]? = nil,
		netContent: Quantity? = nil,
		productReference: Reference? = nil,
		responsibleOrganization: [InventoryItemResponsibleOrganization]? = nil,
		status: FHIRPrimitive<InventoryItemStatus>,
		text: Narrative? = nil
	) {
		self.association = association
		self.baseUnit = baseUnit
		self.category = category
		self.characteristic = characteristic
		self.code = code
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instance = instance
		self.inventoryStatus = inventoryStatus
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.netContent = netContent
		self.productReference = productReference
		self.responsibleOrganization = responsibleOrganization
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case association
		case baseUnit
		case category
		case characteristic
		case code
		case contained
		case description_fhir = "description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instance
		case inventoryStatus
		case language; case _language
		case meta
		case modifierExtension
		case name
		case netContent
		case productReference
		case responsibleOrganization
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.association = try [InventoryItemAssociation](from: _container, forKeyIfPresent: .association)
		self.baseUnit = try CodeableConcept(from: _container, forKeyIfPresent: .baseUnit)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [InventoryItemCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try InventoryItemDescription(from: _container, forKeyIfPresent: .description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instance = try InventoryItemInstance(from: _container, forKeyIfPresent: .instance)
		self.inventoryStatus = try [CodeableConcept](from: _container, forKeyIfPresent: .inventoryStatus)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try [InventoryItemName](from: _container, forKeyIfPresent: .name)
		self.netContent = try Quantity(from: _container, forKeyIfPresent: .netContent)
		self.productReference = try Reference(from: _container, forKeyIfPresent: .productReference)
		self.responsibleOrganization = try [InventoryItemResponsibleOrganization](from: _container, forKeyIfPresent: .responsibleOrganization)
		self.status = try FHIRPrimitive<InventoryItemStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try association?.encode(on: &_container, forKey: .association)
		try baseUnit?.encode(on: &_container, forKey: .baseUnit)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instance?.encode(on: &_container, forKey: .instance)
		try inventoryStatus?.encode(on: &_container, forKey: .inventoryStatus)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try netContent?.encode(on: &_container, forKey: .netContent)
		try productReference?.encode(on: &_container, forKey: .productReference)
		try responsibleOrganization?.encode(on: &_container, forKey: .responsibleOrganization)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Association with other items or products.
 */
public struct InventoryItemAssociation: BackboneElement {
	
	/// The type of association between the device and the other item
	public var associationType: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The quantity of the product in this product
	public var quantity: Ratio
	
	/// The related item or product
	public var relatedItem: Reference
	
	/// Designated initializer
	public init(
		associationType: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Ratio,
		relatedItem: Reference
	) {
		self.associationType = associationType
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.relatedItem = relatedItem
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case associationType
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case quantity
		case relatedItem
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.associationType = try CodeableConcept(from: _container, forKey: .associationType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Ratio(from: _container, forKey: .quantity)
		self.relatedItem = try Reference(from: _container, forKey: .relatedItem)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try associationType.encode(on: &_container, forKey: .associationType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity.encode(on: &_container, forKey: .quantity)
		try relatedItem.encode(on: &_container, forKey: .relatedItem)
	}
}

/**
 Characteristic of the item.
 
 The descriptive or identifying characteristics of the item.
 */
public struct InventoryItemCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case annotation(Annotation)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case duration(Duration)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// The characteristic that is being defined
	public var characteristicType: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The value of the attribute
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		characteristicType: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.characteristicType = characteristicType
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristicType
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueAddress
		case valueAnnotation
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDuration
		case valueInteger; case _valueInteger
		case valueQuantity
		case valueRange
		case valueRatio
		case valueString; case _valueString
		case valueUrl; case _valueUrl
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.characteristicType = try CodeableConcept(from: _container, forKey: .characteristicType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try characteristicType.encode(on: &_container, forKey: .characteristicType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .valueAddress)
		case .annotation(let _value):
			try _value.encode(on: &_container, forKey: .valueAnnotation)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .valueDuration)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			_t_value = .address(valueAddress)
		}
		if let valueAnnotation = try Annotation(from: _container, forKeyIfPresent: .valueAnnotation) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAnnotation, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .annotation(valueAnnotation)
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
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
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
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUrl, auxiliaryKey: ._valueUrl) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUrl, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .url(valueUrl)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUrl)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Descriptive characteristics of the item.
 
 The descriptive characteristics of the inventory item.
 */
public struct InventoryItemDescription: BackboneElement {
	
	/// Textual description of the item
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The language that is used in the item description
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case language; case _language
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Instances or occurrences of the product.
 */
public struct InventoryItemInstance: BackboneElement {
	
	/// The expiry date or date and time for the product
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The identifier for the physical instance, typically a serial number
	public var identifier: [Identifier]?
	
	/// The location that the item is associated with
	public var location: Reference?
	
	/// The lot or batch number of the item
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The subject that the item is associated with
	public var subject: Reference?
	
	/// Designated initializer
	public init(
		expiry: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subject: Reference? = nil
	) {
		self.expiry = expiry
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.location = location
		self.lotNumber = lotNumber
		self.modifierExtension = modifierExtension
		self.subject = subject
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expiry; case _expiry
		case `extension` = "extension"
		case id; case _id
		case identifier
		case location
		case lotNumber; case _lotNumber
		case modifierExtension
		case subject
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subject?.encode(on: &_container, forKey: .subject)
	}
}

/**
 The item name(s) - the brand name, or common name, functional name, generic name or others.
 
 The item name(s) - the brand name, or common name, functional name, generic name.
 */
public struct InventoryItemName: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The language used to express the item name
	public var language: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name or designation of the item
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of name e.g. 'brand-name', 'functional-name', 'common-name'
	public var nameType: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		nameType: Coding
	) {
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.name = name
		self.nameType = nameType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case language; case _language
		case modifierExtension
		case name; case _name
		case nameType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKey: .language, auxiliaryKey: ._language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.nameType = try Coding(from: _container, forKey: .nameType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try nameType.encode(on: &_container, forKey: .nameType)
	}
}

/**
 Organization(s) responsible for the product.
 */
public struct InventoryItemResponsibleOrganization: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// An organization that is associated with the item
	public var organization: Reference
	
	/// The role of the organization e.g. manufacturer, distributor, or other
	public var role: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference,
		role: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case organization
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try Reference(from: _container, forKey: .organization)
		self.role = try CodeableConcept(from: _container, forKey: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization.encode(on: &_container, forKey: .organization)
		try role.encode(on: &_container, forKey: .role)
	}
}
