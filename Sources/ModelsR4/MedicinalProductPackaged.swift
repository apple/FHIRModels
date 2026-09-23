//
//  MedicinalProductPackaged.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged)
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
 A medicinal product in a container or package.
 */
public struct MedicinalProductPackaged: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductPackaged
	
	/// Batch numbering
	public var batchIdentifier: [MedicinalProductPackagedBatchIdentifier]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Textual description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Manufacturer of this Package Item
	public var manufacturer: [Reference]?
	
	/// Manufacturer of this Package Item
	public var marketingAuthorization: Reference?
	
	/// Marketing information
	public var marketingStatus: [MarketingStatus]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A packaging item, as a contained for medicine, possibly with other packaging items within
	public var packageItem: [MedicinalProductPackagedPackageItem]
	
	/// The product with this is a pack for
	public var subject: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		self.packageItem = packageItem
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case batchIdentifier
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case legalStatusOfSupply
		case manufacturer
		case marketingAuthorization
		case marketingStatus
		case meta
		case modifierExtension
		case packageItem
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.batchIdentifier = try [MedicinalProductPackagedBatchIdentifier](from: _container, forKeyIfPresent: .batchIdentifier)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingAuthorization = try Reference(from: _container, forKeyIfPresent: .marketingAuthorization)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.packageItem = try [MedicinalProductPackagedPackageItem](from: _container, forKey: .packageItem)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try batchIdentifier?.encode(on: &_container, forKey: .batchIdentifier)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingAuthorization?.encode(on: &_container, forKey: .marketingAuthorization)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try packageItem.encode(on: &_container, forKey: .packageItem)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Batch numbering.
 */
public struct MedicinalProductPackagedBatchIdentifier: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A number appearing on the immediate packaging (and not the outer packaging)
	public var immediatePackaging: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A number appearing on the outer packaging of a specific batch
	public var outerPackaging: Identifier
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		immediatePackaging: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		outerPackaging: Identifier
	) {
		self.`extension` = `extension`
		self.id = id
		self.immediatePackaging = immediatePackaging
		self.modifierExtension = modifierExtension
		self.outerPackaging = outerPackaging
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case immediatePackaging
		case modifierExtension
		case outerPackaging
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.immediatePackaging = try Identifier(from: _container, forKeyIfPresent: .immediatePackaging)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outerPackaging = try Identifier(from: _container, forKey: .outerPackaging)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try immediatePackaging?.encode(on: &_container, forKey: .immediatePackaging)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outerPackaging.encode(on: &_container, forKey: .outerPackaging)
	}
}

/**
 A packaging item, as a contained for medicine, possibly with other packaging items within.
 */
public struct MedicinalProductPackagedPackageItem: BackboneElement {
	
	/// A possible alternate material for the packaging
	public var alternateMaterial: [CodeableConcept]?
	
	/// A device accompanying a medicinal product
	public var device: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Including possibly Data Carrier Identifier
	public var identifier: [Identifier]?
	
	/// The manufactured item as contained in the packaged medicinal product
	public var manufacturedItem: [Reference]?
	
	/// Manufacturer of this Package Item
	public var manufacturer: [Reference]?
	
	/// Material type of the package item
	public var material: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Other codeable characteristics
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Allows containers within containers
	public var packageItem: [MedicinalProductPackagedPackageItem]?
	
	/// Dimensions, color etc.
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The quantity of this package in the medicinal product, at the current level of packaging. The outermost is
	/// always 1
	public var quantity: Quantity
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// The physical type of the container of the medicine
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept
	) {
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
		self.quantity = quantity
		self.shelfLifeStorage = shelfLifeStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alternateMaterial
		case device
		case `extension` = "extension"
		case id; case _id
		case identifier
		case manufacturedItem
		case manufacturer
		case material
		case modifierExtension
		case otherCharacteristics
		case packageItem
		case physicalCharacteristics
		case quantity
		case shelfLifeStorage
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.alternateMaterial = try [CodeableConcept](from: _container, forKeyIfPresent: .alternateMaterial)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.manufacturedItem = try [Reference](from: _container, forKeyIfPresent: .manufacturedItem)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [CodeableConcept](from: _container, forKeyIfPresent: .material)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.otherCharacteristics = try [CodeableConcept](from: _container, forKeyIfPresent: .otherCharacteristics)
		self.packageItem = try [MedicinalProductPackagedPackageItem](from: _container, forKeyIfPresent: .packageItem)
		self.physicalCharacteristics = try ProdCharacteristic(from: _container, forKeyIfPresent: .physicalCharacteristics)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		self.shelfLifeStorage = try [ProductShelfLife](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try alternateMaterial?.encode(on: &_container, forKey: .alternateMaterial)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturedItem?.encode(on: &_container, forKey: .manufacturedItem)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try otherCharacteristics?.encode(on: &_container, forKey: .otherCharacteristics)
		try packageItem?.encode(on: &_container, forKey: .packageItem)
		try physicalCharacteristics?.encode(on: &_container, forKey: .physicalCharacteristics)
		try quantity.encode(on: &_container, forKey: .quantity)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try type.encode(on: &_container, forKey: .type)
	}
}
