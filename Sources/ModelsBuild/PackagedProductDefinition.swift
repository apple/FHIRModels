//
//  PackagedProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/PackagedProductDefinition)
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
 A medically related item or items, in a container or package.
 */
open class PackagedProductDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .packagedProductDefinition }
	
	/// A unique identifier for this package as whole - not for the content of the package
	public var identifier: [Identifier]?
	
	/// A name for this package. Typically as listed in a drug formulary, catalogue, inventory etc
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A high level category e.g. medicinal product, raw material, shipping container etc
	public var type: CodeableConcept?
	
	/// The product that this is a pack for
	public var packageFor: [Reference]?
	
	/// The status within the lifecycle of this item. High level - not intended to duplicate details elsewhere e.g.
	/// legal status, or authorization/marketing status
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// A total of the complete count of contained items of a particular type/form, independent of sub-packaging or
	/// organization. This can be considered as the pack size. See also packaging.containedItem.amount (especially the
	/// long definition)
	public var containedItemQuantity: [Quantity]?
	
	/// Textual description. Note that this is not the name of the package or product
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the packaged item as classified by the regulator
	public var legalStatusOfSupply: [PackagedProductDefinitionLegalStatusOfSupply]?
	
	/// Allows specifying that an item is on the market for sale, or that it is not available, and the dates and
	/// locations associated
	public var marketingStatus: [MarketingStatus]?
	
	/// Identifies if the drug product is supplied with another item such as a diluent or adjuvant
	public var copackagedIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Manufacturer of this package type (multiple means these are all possible manufacturers)
	public var manufacturer: [Reference]?
	
	/// Additional information or supporting documentation about the packaged product
	public var attachedDocument: [Reference]?
	
	/// A packaging item, as a container for medically related items, possibly with other packaging items within, or a
	/// packaging component, such as bottle cap
	public var packaging: PackagedProductDefinitionPackaging?
	
	/// Allows the key features to be recorded, such as "hospital pack", "nurse prescribable"
	public var characteristic: [PackagedProductDefinitionPackagingProperty]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attachedDocument: [Reference]? = nil,
		characteristic: [PackagedProductDefinitionPackagingProperty]? = nil,
		contained: [ResourceProxy]? = nil,
		containedItemQuantity: [Quantity]? = nil,
		copackagedIndicator: FHIRPrimitive<FHIRBool>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		legalStatusOfSupply: [PackagedProductDefinitionLegalStatusOfSupply]? = nil,
		manufacturer: [Reference]? = nil,
		marketingStatus: [MarketingStatus]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		packageFor: [Reference]? = nil,
		packaging: PackagedProductDefinitionPackaging? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.attachedDocument = attachedDocument
		self.characteristic = characteristic
		self.contained = contained
		self.containedItemQuantity = containedItemQuantity
		self.copackagedIndicator = copackagedIndicator
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.legalStatusOfSupply = legalStatusOfSupply
		self.manufacturer = manufacturer
		self.marketingStatus = marketingStatus
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.packageFor = packageFor
		self.packaging = packaging
		self.status = status
		self.statusDate = statusDate
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachedDocument
		case characteristic
		case containedItemQuantity
		case copackagedIndicator; case _copackagedIndicator
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case legalStatusOfSupply
		case manufacturer
		case marketingStatus
		case name; case _name
		case packageFor
		case packaging
		case status
		case statusDate; case _statusDate
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.characteristic = try [PackagedProductDefinitionPackagingProperty](from: _container, forKeyIfPresent: .characteristic)
		self.containedItemQuantity = try [Quantity](from: _container, forKeyIfPresent: .containedItemQuantity)
		self.copackagedIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .copackagedIndicator, auxiliaryKey: ._copackagedIndicator)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.legalStatusOfSupply = try [PackagedProductDefinitionLegalStatusOfSupply](from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.packageFor = try [Reference](from: _container, forKeyIfPresent: .packageFor)
		self.packaging = try PackagedProductDefinitionPackaging(from: _container, forKeyIfPresent: .packaging)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try containedItemQuantity?.encode(on: &_container, forKey: .containedItemQuantity)
		try copackagedIndicator?.encode(on: &_container, forKey: .copackagedIndicator, auxiliaryKey: ._copackagedIndicator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try packageFor?.encode(on: &_container, forKey: .packageFor)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attachedDocument == _other.attachedDocument
		    && characteristic == _other.characteristic
		    && containedItemQuantity == _other.containedItemQuantity
		    && copackagedIndicator == _other.copackagedIndicator
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && manufacturer == _other.manufacturer
		    && marketingStatus == _other.marketingStatus
		    && name == _other.name
		    && packageFor == _other.packageFor
		    && packaging == _other.packaging
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachedDocument)
		hasher.combine(characteristic)
		hasher.combine(containedItemQuantity)
		hasher.combine(copackagedIndicator)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(manufacturer)
		hasher.combine(marketingStatus)
		hasher.combine(name)
		hasher.combine(packageFor)
		hasher.combine(packaging)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(type)
	}
}

/**
 The legal status of supply of the packaged item as classified by the regulator.
 */
open class PackagedProductDefinitionLegalStatusOfSupply: BackboneElement {
	
	/// The actual status of supply. In what situation this package type may be supplied for use
	public var code: CodeableConcept?
	
	/// The place where the legal status of supply applies
	public var jurisdiction: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case jurisdiction
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.jurisdiction = try CodeableConcept(from: _container, forKeyIfPresent: .jurisdiction)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionLegalStatusOfSupply else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && jurisdiction == _other.jurisdiction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(jurisdiction)
	}
}

/**
 A packaging item, as a container for medically related items, possibly with other packaging items within, or a
 packaging component, such as bottle cap.
 
 A packaging item, as a container for medically related items, possibly with other packaging items within, or a
 packaging component, such as bottle cap (which is not a device or a medication manufactured item).
 */
open class PackagedProductDefinitionPackaging: BackboneElement {
	
	/// An identifier that is specific to this particular part of the packaging. Including possibly a Data Carrier
	/// Identifier
	public var identifier: [Identifier]?
	
	/// The physical type of the container of the items
	public var type: CodeableConcept?
	
	/// Is this a part of the packaging (e.g. a cap or bottle stopper), rather than the packaging itself (e.g. a bottle
	/// or vial)
	public var componentPart: FHIRPrimitive<FHIRBool>?
	
	/// The quantity of this level of packaging in the package that contains it (with the outermost level being 1)
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// Material type of the package item
	public var material: [CodeableConcept]?
	
	/// A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual
	/// material
	public var alternateMaterial: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// Manufacturer of this packaging item (multiple means these are all potential manufacturers)
	public var manufacturer: [Reference]?
	
	/// General characteristics of this item
	public var property: [PackagedProductDefinitionPackagingProperty]?
	
	/// The item(s) within the packaging
	public var containedItem: [PackagedProductDefinitionPackagingContainedItem]?
	
	/// Allows containers (and parts of containers) within containers, still as a part of single packaged product
	public var packaging: [PackagedProductDefinitionPackaging]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		alternateMaterial: [CodeableConcept]? = nil,
		componentPart: FHIRPrimitive<FHIRBool>? = nil,
		containedItem: [PackagedProductDefinitionPackagingContainedItem]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		manufacturer: [Reference]? = nil,
		material: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		packaging: [PackagedProductDefinitionPackaging]? = nil,
		property: [PackagedProductDefinitionPackagingProperty]? = nil,
		quantity: FHIRPrimitive<FHIRInteger>? = nil,
		shelfLifeStorage: [ProductShelfLife]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.alternateMaterial = alternateMaterial
		self.componentPart = componentPart
		self.containedItem = containedItem
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.manufacturer = manufacturer
		self.material = material
		self.modifierExtension = modifierExtension
		self.packaging = packaging
		self.property = property
		self.quantity = quantity
		self.shelfLifeStorage = shelfLifeStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alternateMaterial
		case componentPart; case _componentPart
		case containedItem
		case identifier
		case manufacturer
		case material
		case packaging
		case property
		case quantity; case _quantity
		case shelfLifeStorage
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alternateMaterial = try [CodeableConcept](from: _container, forKeyIfPresent: .alternateMaterial)
		self.componentPart = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .componentPart, auxiliaryKey: ._componentPart)
		self.containedItem = try [PackagedProductDefinitionPackagingContainedItem](from: _container, forKeyIfPresent: .containedItem)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [CodeableConcept](from: _container, forKeyIfPresent: .material)
		self.packaging = try [PackagedProductDefinitionPackaging](from: _container, forKeyIfPresent: .packaging)
		self.property = try [PackagedProductDefinitionPackagingProperty](from: _container, forKeyIfPresent: .property)
		self.quantity = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.shelfLifeStorage = try [ProductShelfLife](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alternateMaterial?.encode(on: &_container, forKey: .alternateMaterial)
		try componentPart?.encode(on: &_container, forKey: .componentPart, auxiliaryKey: ._componentPart)
		try containedItem?.encode(on: &_container, forKey: .containedItem)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try property?.encode(on: &_container, forKey: .property)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionPackaging else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alternateMaterial == _other.alternateMaterial
		    && componentPart == _other.componentPart
		    && containedItem == _other.containedItem
		    && identifier == _other.identifier
		    && manufacturer == _other.manufacturer
		    && material == _other.material
		    && packaging == _other.packaging
		    && property == _other.property
		    && quantity == _other.quantity
		    && shelfLifeStorage == _other.shelfLifeStorage
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alternateMaterial)
		hasher.combine(componentPart)
		hasher.combine(containedItem)
		hasher.combine(identifier)
		hasher.combine(manufacturer)
		hasher.combine(material)
		hasher.combine(packaging)
		hasher.combine(property)
		hasher.combine(quantity)
		hasher.combine(shelfLifeStorage)
		hasher.combine(type)
	}
}

/**
 The item(s) within the packaging.
 */
open class PackagedProductDefinitionPackagingContainedItem: BackboneElement {
	
	/// The actual item(s) of medication, as manufactured, or a device, or other medically related item (food,
	/// biologicals, raw materials, medical fluids, gases etc.), as contained in the package
	public var item: CodeableReference
	
	/// The number of this type of item within this packaging or for continuous items such as liquids it is the quantity
	/// (for example 25ml). See also PackagedProductDefinition.containedItemQuantity (especially the long definition)
	public var amount: Quantity?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil
	) {
		self.init(item: item)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.item = try CodeableReference(from: _container, forKey: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try item.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionPackagingContainedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(item)
	}
}

/**
 General characteristics of this item.
 */
open class PackagedProductDefinitionPackagingProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case quantity(Quantity)
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
		case valueQuantity
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
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
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
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionPackagingProperty else {
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
