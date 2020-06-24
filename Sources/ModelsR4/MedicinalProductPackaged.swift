//
//  MedicinalProductPackaged.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged)
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
 A medicinal product in a container or package.
 */
open class MedicinalProductPackaged: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductPackaged }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// The product with this is a pack for
	public var subject: [Reference]?
	
	/// Textual description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Marketing information
	public var marketingStatus: [MarketingStatus]?
	
	/// Manufacturer of this Package Item
	public var marketingAuthorization: Reference?
	
	/// Manufacturer of this Package Item
	public var manufacturer: [Reference]?
	
	/// Batch numbering
	public var batchIdentifier: [MedicinalProductPackagedBatchIdentifier]?
	
	/// A packaging item, as a contained for medicine, possibly with other packaging items within
	public var packageItem: [MedicinalProductPackagedPackageItem]
	
	/// Designated initializer taking all required properties
	public init(packageItem: [MedicinalProductPackagedPackageItem]) {
		self.packageItem = packageItem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							batchIdentifier: [MedicinalProductPackagedBatchIdentifier]? = nil,
							contained: [ResourceProxy]? = nil,
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
							packageItem: [MedicinalProductPackagedPackageItem],
							subject: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(packageItem: packageItem)
		self.batchIdentifier = batchIdentifier
		self.contained = contained
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
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case batchIdentifier
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case legalStatusOfSupply
		case manufacturer
		case marketingAuthorization
		case marketingStatus
		case packageItem
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.batchIdentifier = try [MedicinalProductPackagedBatchIdentifier](from: _container, forKeyIfPresent: .batchIdentifier)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingAuthorization = try Reference(from: _container, forKeyIfPresent: .marketingAuthorization)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.packageItem = try [MedicinalProductPackagedPackageItem](from: _container, forKey: .packageItem)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try batchIdentifier?.encode(on: &_container, forKey: .batchIdentifier)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingAuthorization?.encode(on: &_container, forKey: .marketingAuthorization)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try packageItem.encode(on: &_container, forKey: .packageItem)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductPackaged else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return batchIdentifier == _other.batchIdentifier
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && manufacturer == _other.manufacturer
		    && marketingAuthorization == _other.marketingAuthorization
		    && marketingStatus == _other.marketingStatus
		    && packageItem == _other.packageItem
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(batchIdentifier)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(manufacturer)
		hasher.combine(marketingAuthorization)
		hasher.combine(marketingStatus)
		hasher.combine(packageItem)
		hasher.combine(subject)
	}
}

/**
 Batch numbering.
 */
open class MedicinalProductPackagedBatchIdentifier: BackboneElement {
	
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
		guard let _other = _other as? MedicinalProductPackagedBatchIdentifier else {
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
 A packaging item, as a contained for medicine, possibly with other packaging items within.
 */
open class MedicinalProductPackagedPackageItem: BackboneElement {
	
	/// Including possibly Data Carrier Identifier
	public var identifier: [Identifier]?
	
	/// The physical type of the container of the medicine
	public var type: CodeableConcept
	
	/// The quantity of this package in the medicinal product, at the current level of packaging. The outermost is
	/// always 1
	public var quantity: Quantity
	
	/// Material type of the package item
	public var material: [CodeableConcept]?
	
	/// A possible alternate material for the packaging
	public var alternateMaterial: [CodeableConcept]?
	
	/// A device accompanying a medicinal product
	public var device: [Reference]?
	
	/// The manufactured item as contained in the packaged medicinal product
	public var manufacturedItem: [Reference]?
	
	/// Allows containers within containers
	public var packageItem: [MedicinalProductPackagedPackageItem]?
	
	/// Dimensions, color etc.
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// Other codeable characteristics
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// Manufacturer of this Package Item
	public var manufacturer: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(quantity: Quantity, type: CodeableConcept) {
		self.quantity = quantity
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							alternateMaterial: [CodeableConcept]? = nil,
							device: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							manufacturedItem: [Reference]? = nil,
							manufacturer: [Reference]? = nil,
							material: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							otherCharacteristics: [CodeableConcept]? = nil,
							packageItem: [MedicinalProductPackagedPackageItem]? = nil,
							physicalCharacteristics: ProdCharacteristic? = nil,
							quantity: Quantity,
							shelfLifeStorage: [ProductShelfLife]? = nil,
							type: CodeableConcept)
	{
		self.init(quantity: quantity, type: type)
		self.alternateMaterial = alternateMaterial
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.manufacturedItem = manufacturedItem
		self.manufacturer = manufacturer
		self.material = material
		self.modifierExtension = modifierExtension
		self.otherCharacteristics = otherCharacteristics
		self.packageItem = packageItem
		self.physicalCharacteristics = physicalCharacteristics
		self.shelfLifeStorage = shelfLifeStorage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alternateMaterial
		case device
		case identifier
		case manufacturedItem
		case manufacturer
		case material
		case otherCharacteristics
		case packageItem
		case physicalCharacteristics
		case quantity
		case shelfLifeStorage
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alternateMaterial = try [CodeableConcept](from: _container, forKeyIfPresent: .alternateMaterial)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.manufacturedItem = try [Reference](from: _container, forKeyIfPresent: .manufacturedItem)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [CodeableConcept](from: _container, forKeyIfPresent: .material)
		self.otherCharacteristics = try [CodeableConcept](from: _container, forKeyIfPresent: .otherCharacteristics)
		self.packageItem = try [MedicinalProductPackagedPackageItem](from: _container, forKeyIfPresent: .packageItem)
		self.physicalCharacteristics = try ProdCharacteristic(from: _container, forKeyIfPresent: .physicalCharacteristics)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		self.shelfLifeStorage = try [ProductShelfLife](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alternateMaterial?.encode(on: &_container, forKey: .alternateMaterial)
		try device?.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturedItem?.encode(on: &_container, forKey: .manufacturedItem)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try otherCharacteristics?.encode(on: &_container, forKey: .otherCharacteristics)
		try packageItem?.encode(on: &_container, forKey: .packageItem)
		try physicalCharacteristics?.encode(on: &_container, forKey: .physicalCharacteristics)
		try quantity.encode(on: &_container, forKey: .quantity)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductPackagedPackageItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alternateMaterial == _other.alternateMaterial
		    && device == _other.device
		    && identifier == _other.identifier
		    && manufacturedItem == _other.manufacturedItem
		    && manufacturer == _other.manufacturer
		    && material == _other.material
		    && otherCharacteristics == _other.otherCharacteristics
		    && packageItem == _other.packageItem
		    && physicalCharacteristics == _other.physicalCharacteristics
		    && quantity == _other.quantity
		    && shelfLifeStorage == _other.shelfLifeStorage
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alternateMaterial)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(manufacturedItem)
		hasher.combine(manufacturer)
		hasher.combine(material)
		hasher.combine(otherCharacteristics)
		hasher.combine(packageItem)
		hasher.combine(physicalCharacteristics)
		hasher.combine(quantity)
		hasher.combine(shelfLifeStorage)
		hasher.combine(type)
	}
}
