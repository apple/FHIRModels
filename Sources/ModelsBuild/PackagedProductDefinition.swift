//
//  PackagedProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/PackagedProductDefinition)
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
 A medically related item or items, in a container or package.
 */
open class PackagedProductDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .packagedProductDefinition }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A high level category e.g. medicinal product, raw material, shipping/transport container, etc
	public var type: CodeableConcept?
	
	/// The product that this is a pack for
	public var subject: [Reference]?
	
	/// The status within the lifecycle of this item. A high level status, this is not intended to duplicate details
	/// carried elsewhere such as legal status, or authorization or marketing status
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Textual description. Note that this is not the name of the package or product
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the packaged item as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Marketing information
	public var marketingStatus: [MarketingStatus]?
	
	/// Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack"
	public var characteristic: [CodeableConcept]?
	
	/// States whether a drug product is supplied with another item such as a diluent or adjuvant
	public var copackagedIndicator: FHIRPrimitive<FHIRBool>?
	
	/// An authorization for this package type
	public var marketingAuthorization: Reference?
	
	/// Manufacturer of this package type
	public var manufacturer: [Reference]?
	
	/// Batch numbering
	public var batchIdentifier: [PackagedProductDefinitionBatchIdentifier]?
	
	/// A packaging item, as a container for medically related items, possibly with other packaging items within
	public var package: [PackagedProductDefinitionPackage]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							batchIdentifier: [PackagedProductDefinitionBatchIdentifier]? = nil,
							characteristic: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							copackagedIndicator: FHIRPrimitive<FHIRBool>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							legalStatusOfSupply: CodeableConcept? = nil,
							manufacturer: [Reference]? = nil,
							marketingAuthorization: Reference? = nil,
							marketingStatus: [MarketingStatus]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							package: [PackagedProductDefinitionPackage]? = nil,
							status: CodeableConcept? = nil,
							statusDate: FHIRPrimitive<DateTime>? = nil,
							subject: [Reference]? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.batchIdentifier = batchIdentifier
		self.characteristic = characteristic
		self.contained = contained
		self.copackagedIndicator = copackagedIndicator
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.legalStatusOfSupply = legalStatusOfSupply
		self.manufacturer = manufacturer
		self.marketingAuthorization = marketingAuthorization
		self.marketingStatus = marketingStatus
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.package = package
		self.status = status
		self.statusDate = statusDate
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case batchIdentifier
		case characteristic
		case copackagedIndicator; case _copackagedIndicator
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case legalStatusOfSupply
		case manufacturer
		case marketingAuthorization
		case marketingStatus
		case name; case _name
		case package
		case status
		case statusDate; case _statusDate
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.batchIdentifier = try [PackagedProductDefinitionBatchIdentifier](from: _container, forKeyIfPresent: .batchIdentifier)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.copackagedIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .copackagedIndicator, auxiliaryKey: ._copackagedIndicator)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingAuthorization = try Reference(from: _container, forKeyIfPresent: .marketingAuthorization)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.package = try [PackagedProductDefinitionPackage](from: _container, forKeyIfPresent: .package)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try batchIdentifier?.encode(on: &_container, forKey: .batchIdentifier)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try copackagedIndicator?.encode(on: &_container, forKey: .copackagedIndicator, auxiliaryKey: ._copackagedIndicator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingAuthorization?.encode(on: &_container, forKey: .marketingAuthorization)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try package?.encode(on: &_container, forKey: .package)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try subject?.encode(on: &_container, forKey: .subject)
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
		return batchIdentifier == _other.batchIdentifier
		    && characteristic == _other.characteristic
		    && copackagedIndicator == _other.copackagedIndicator
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && manufacturer == _other.manufacturer
		    && marketingAuthorization == _other.marketingAuthorization
		    && marketingStatus == _other.marketingStatus
		    && name == _other.name
		    && package == _other.package
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(batchIdentifier)
		hasher.combine(characteristic)
		hasher.combine(copackagedIndicator)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(manufacturer)
		hasher.combine(marketingAuthorization)
		hasher.combine(marketingStatus)
		hasher.combine(name)
		hasher.combine(package)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Batch numbering.
 */
open class PackagedProductDefinitionBatchIdentifier: BackboneElement {
	
	/// A number appearing on the outer packaging of a specific batch
	public var outerPackaging: Identifier
	
	/// A number appearing on the immediate packaging (and not the outer packaging)
	public var immediatePackaging: Identifier?
	
	/// Designated initializer taking all required properties
	public init(outerPackaging: Identifier) {
		self.outerPackaging = outerPackaging
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							immediatePackaging: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							outerPackaging: Identifier)
	{
		self.init(outerPackaging: outerPackaging)
		self.`extension` = `extension`
		self.id = id
		self.immediatePackaging = immediatePackaging
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case immediatePackaging
		case outerPackaging
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.immediatePackaging = try Identifier(from: _container, forKeyIfPresent: .immediatePackaging)
		self.outerPackaging = try Identifier(from: _container, forKey: .outerPackaging)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try immediatePackaging?.encode(on: &_container, forKey: .immediatePackaging)
		try outerPackaging.encode(on: &_container, forKey: .outerPackaging)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionBatchIdentifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return immediatePackaging == _other.immediatePackaging
		    && outerPackaging == _other.outerPackaging
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(immediatePackaging)
		hasher.combine(outerPackaging)
	}
}

/**
 A packaging item, as a container for medically related items, possibly with other packaging items within.
 */
open class PackagedProductDefinitionPackage: BackboneElement {
	
	/// Including possibly Data Carrier Identifier
	public var identifier: [Identifier]?
	
	/// The physical type of the container of the items
	public var type: CodeableConcept?
	
	/// The quantity of this level of packaging in the package that contains it. If specified, the outermost level is
	/// always 1
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// Material type of the package item
	public var material: [CodeableConcept]?
	
	/// A possible alternate material for the packaging
	public var alternateMaterial: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// Manufacturer of this package Item
	public var manufacturer: [Reference]?
	
	/// General characteristics of this item
	public var property: [PackagedProductDefinitionPackageProperty]?
	
	/// The item(s) within the packaging
	public var containedItem: [PackagedProductDefinitionPackageContainedItem]?
	
	/// Allows containers within containers
	public var package: [PackagedProductDefinitionPackage]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							alternateMaterial: [CodeableConcept]? = nil,
							containedItem: [PackagedProductDefinitionPackageContainedItem]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							manufacturer: [Reference]? = nil,
							material: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							package: [PackagedProductDefinitionPackage]? = nil,
							property: [PackagedProductDefinitionPackageProperty]? = nil,
							quantity: FHIRPrimitive<FHIRInteger>? = nil,
							shelfLifeStorage: [ProductShelfLife]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.alternateMaterial = alternateMaterial
		self.containedItem = containedItem
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.manufacturer = manufacturer
		self.material = material
		self.modifierExtension = modifierExtension
		self.package = package
		self.property = property
		self.quantity = quantity
		self.shelfLifeStorage = shelfLifeStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alternateMaterial
		case containedItem
		case identifier
		case manufacturer
		case material
		case package
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
		self.containedItem = try [PackagedProductDefinitionPackageContainedItem](from: _container, forKeyIfPresent: .containedItem)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [CodeableConcept](from: _container, forKeyIfPresent: .material)
		self.package = try [PackagedProductDefinitionPackage](from: _container, forKeyIfPresent: .package)
		self.property = try [PackagedProductDefinitionPackageProperty](from: _container, forKeyIfPresent: .property)
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
		try containedItem?.encode(on: &_container, forKey: .containedItem)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try package?.encode(on: &_container, forKey: .package)
		try property?.encode(on: &_container, forKey: .property)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionPackage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alternateMaterial == _other.alternateMaterial
		    && containedItem == _other.containedItem
		    && identifier == _other.identifier
		    && manufacturer == _other.manufacturer
		    && material == _other.material
		    && package == _other.package
		    && property == _other.property
		    && quantity == _other.quantity
		    && shelfLifeStorage == _other.shelfLifeStorage
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alternateMaterial)
		hasher.combine(containedItem)
		hasher.combine(identifier)
		hasher.combine(manufacturer)
		hasher.combine(material)
		hasher.combine(package)
		hasher.combine(property)
		hasher.combine(quantity)
		hasher.combine(shelfLifeStorage)
		hasher.combine(type)
	}
}

/**
 The item(s) within the packaging.
 */
open class PackagedProductDefinitionPackageContainedItem: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
	}
	
	/// The actual item(s) of medication, as manufactured, or a device (typically, but not necessarily, a co-packaged
	/// one), or other medically related item (such as food, biologicals, raw materials, medical fluids, gases etc.), as
	/// contained in the package
	public var item: [Reference]?
	
	/// The number of this type of item within this packaging
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: AmountX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: [Reference]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountInteger; case _amountInteger
		case amountQuantity
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .amountInteger, auxiliaryKey: ._amountInteger) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountInteger, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .integer(amountInteger)
		}
		self.amount = _t_amount
		self.item = try [Reference](from: _container, forKeyIfPresent: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .amountInteger, auxiliaryKey: ._amountInteger)
			}
		}
		try item?.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PackagedProductDefinitionPackageContainedItem else {
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
open class PackagedProductDefinitionPackageProperty: BackboneElement {
	
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
							value: ValueX? = nil)
	{
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
		guard let _other = _other as? PackagedProductDefinitionPackageProperty else {
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
