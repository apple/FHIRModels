//
//  InventoryItem.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/InventoryItem)
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
 A functional description of an inventory item used in inventory and supply-related workflows.
 */
open class InventoryItem: DomainResource {
	
	override open class var resourceType: ResourceType { return .inventoryItem }
	
	/// Business identifier for the inventory item
	public var identifier: [Identifier]?
	
	/// Status of the item entry.
	public var status: FHIRPrimitive<InventoryItemStatus>
	
	/// Category or class of the item
	public var category: [CodeableConcept]?
	
	/// Code designating the specific type of item
	public var code: [CodeableConcept]?
	
	/// The item name(s) - the brand name, or common name, functional name, generic name or others
	public var name: [InventoryItemName]?
	
	/// Organization(s) responsible for the product
	public var responsibleOrganization: [InventoryItemResponsibleOrganization]?
	
	/// Descriptive characteristics of the item
	public var description_fhir: InventoryItemDescription?
	
	/// The usage status like recalled, in use, discarded
	public var inventoryStatus: [CodeableConcept]?
	
	/// The base unit of measure - the unit in which the product is used or counted
	public var baseUnit: CodeableConcept?
	
	/// Net content or amount present in the item
	public var netContent: Quantity?
	
	/// Association with other items or products
	public var association: [InventoryItemAssociation]?
	
	/// Characteristic of the item
	public var characteristic: [InventoryItemCharacteristic]?
	
	/// Instances or occurrences of the product
	public var instance: InventoryItemInstance?
	
	/// Link to a product resource used in clinical workflows
	public var productReference: Reference?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<InventoryItemStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case association
		case baseUnit
		case category
		case characteristic
		case code
		case description_fhir = "description"
		case identifier
		case instance
		case inventoryStatus
		case name
		case netContent
		case productReference
		case responsibleOrganization
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.association = try [InventoryItemAssociation](from: _container, forKeyIfPresent: .association)
		self.baseUnit = try CodeableConcept(from: _container, forKeyIfPresent: .baseUnit)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [InventoryItemCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.description_fhir = try InventoryItemDescription(from: _container, forKeyIfPresent: .description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instance = try InventoryItemInstance(from: _container, forKeyIfPresent: .instance)
		self.inventoryStatus = try [CodeableConcept](from: _container, forKeyIfPresent: .inventoryStatus)
		self.name = try [InventoryItemName](from: _container, forKeyIfPresent: .name)
		self.netContent = try Quantity(from: _container, forKeyIfPresent: .netContent)
		self.productReference = try Reference(from: _container, forKeyIfPresent: .productReference)
		self.responsibleOrganization = try [InventoryItemResponsibleOrganization](from: _container, forKeyIfPresent: .responsibleOrganization)
		self.status = try FHIRPrimitive<InventoryItemStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try association?.encode(on: &_container, forKey: .association)
		try baseUnit?.encode(on: &_container, forKey: .baseUnit)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instance?.encode(on: &_container, forKey: .instance)
		try inventoryStatus?.encode(on: &_container, forKey: .inventoryStatus)
		try name?.encode(on: &_container, forKey: .name)
		try netContent?.encode(on: &_container, forKey: .netContent)
		try productReference?.encode(on: &_container, forKey: .productReference)
		try responsibleOrganization?.encode(on: &_container, forKey: .responsibleOrganization)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return association == _other.association
		    && baseUnit == _other.baseUnit
		    && category == _other.category
		    && characteristic == _other.characteristic
		    && code == _other.code
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && instance == _other.instance
		    && inventoryStatus == _other.inventoryStatus
		    && name == _other.name
		    && netContent == _other.netContent
		    && productReference == _other.productReference
		    && responsibleOrganization == _other.responsibleOrganization
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(association)
		hasher.combine(baseUnit)
		hasher.combine(category)
		hasher.combine(characteristic)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(instance)
		hasher.combine(inventoryStatus)
		hasher.combine(name)
		hasher.combine(netContent)
		hasher.combine(productReference)
		hasher.combine(responsibleOrganization)
		hasher.combine(status)
	}
}

/**
 Association with other items or products.
 */
open class InventoryItemAssociation: BackboneElement {
	
	/// The type of association between the device and the other item
	public var associationType: CodeableConcept
	
	/// The related item or product
	public var relatedItem: Reference
	
	/// The quantity of the product in this product
	public var quantity: Ratio
	
	/// Designated initializer taking all required properties
	public init(associationType: CodeableConcept, quantity: Ratio, relatedItem: Reference) {
		self.associationType = associationType
		self.quantity = quantity
		self.relatedItem = relatedItem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		associationType: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Ratio,
		relatedItem: Reference
	) {
		self.init(associationType: associationType, quantity: quantity, relatedItem: relatedItem)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case associationType
		case quantity
		case relatedItem
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associationType = try CodeableConcept(from: _container, forKey: .associationType)
		self.quantity = try Ratio(from: _container, forKey: .quantity)
		self.relatedItem = try Reference(from: _container, forKey: .relatedItem)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try associationType.encode(on: &_container, forKey: .associationType)
		try quantity.encode(on: &_container, forKey: .quantity)
		try relatedItem.encode(on: &_container, forKey: .relatedItem)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItemAssociation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return associationType == _other.associationType
		    && quantity == _other.quantity
		    && relatedItem == _other.relatedItem
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associationType)
		hasher.combine(quantity)
		hasher.combine(relatedItem)
	}
}

/**
 Characteristic of the item.
 
 The descriptive or identifying characteristics of the item.
 */
open class InventoryItemCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case address(Address)
		case annotation(Annotation)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case duration(Duration)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// The characteristic that is being defined
	public var characteristicType: CodeableConcept
	
	/// The value of the attribute
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(characteristicType: CodeableConcept, value: ValueX) {
		self.characteristicType = characteristicType
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		characteristicType: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(characteristicType: characteristicType, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristicType
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAddress) || _container.contains(CodingKeys.valueAnnotation) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueDuration) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueUrl) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAddress, CodingKeys.valueAnnotation, CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueDuration, CodingKeys.valueInteger, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueString, CodingKeys.valueUrl], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.characteristicType = try CodeableConcept(from: _container, forKey: .characteristicType)
		var _t_value: ValueX? = nil
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUrl, auxiliaryKey: ._valueUrl) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUrl, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .url(valueUrl)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
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
		if let valueAnnotation = try Annotation(from: _container, forKeyIfPresent: .valueAnnotation) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAnnotation, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .annotation(valueAnnotation)
		}
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAddress, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .address(valueAddress)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try characteristicType.encode(on: &_container, forKey: .characteristicType)
		
			switch value {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .url(let _value):
				try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .valueAnnotation)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .valueAddress)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItemCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return characteristicType == _other.characteristicType
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(characteristicType)
		hasher.combine(value)
	}
}

/**
 Descriptive characteristics of the item.
 
 The descriptive characteristics of the inventory item.
 */
open class InventoryItemDescription: BackboneElement {
	
	/// The language that is used in the item description
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Textual description of the item
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case language; case _language
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItemDescription else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && language == _other.language
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(language)
	}
}

/**
 Instances or occurrences of the product.
 */
open class InventoryItemInstance: BackboneElement {
	
	/// The identifier for the physical instance, typically a serial number
	public var identifier: [Identifier]?
	
	/// The lot or batch number of the item
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// The expiry date or date and time for the product
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// The subject that the item is associated with
	public var subject: Reference?
	
	/// The location that the item is associated with
	public var location: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		expiry: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subject: Reference? = nil
	) {
		self.init()
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
		case identifier
		case location
		case lotNumber; case _lotNumber
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItemInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expiry == _other.expiry
		    && identifier == _other.identifier
		    && location == _other.location
		    && lotNumber == _other.lotNumber
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expiry)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(lotNumber)
		hasher.combine(subject)
	}
}

/**
 The item name(s) - the brand name, or common name, functional name, generic name or others.
 
 The item name(s) - the brand name, or common name, functional name, generic name.
 */
open class InventoryItemName: BackboneElement {
	
	/// The type of name e.g. 'brand-name', 'functional-name', 'common-name'
	public var nameType: Coding
	
	/// The language used to express the item name
	public var language: FHIRPrimitive<FHIRString>
	
	/// The name or designation of the item
	public var name: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(language: FHIRPrimitive<FHIRString>, name: FHIRPrimitive<FHIRString>, nameType: Coding) {
		self.language = language
		self.name = name
		self.nameType = nameType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		nameType: Coding
	) {
		self.init(language: language, name: name, nameType: nameType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language; case _language
		case name; case _name
		case nameType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKey: .language, auxiliaryKey: ._language)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.nameType = try Coding(from: _container, forKey: .nameType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try nameType.encode(on: &_container, forKey: .nameType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItemName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && name == _other.name
		    && nameType == _other.nameType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(name)
		hasher.combine(nameType)
	}
}

/**
 Organization(s) responsible for the product.
 */
open class InventoryItemResponsibleOrganization: BackboneElement {
	
	/// The role of the organization e.g. manufacturer, distributor, or other
	public var role: CodeableConcept
	
	/// An organization that is associated with the item
	public var organization: Reference
	
	/// Designated initializer taking all required properties
	public init(organization: Reference, role: CodeableConcept) {
		self.organization = organization
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference,
		role: CodeableConcept
	) {
		self.init(organization: organization, role: role)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case organization
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.organization = try Reference(from: _container, forKey: .organization)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try organization.encode(on: &_container, forKey: .organization)
		try role.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryItemResponsibleOrganization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return organization == _other.organization
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(organization)
		hasher.combine(role)
	}
}
