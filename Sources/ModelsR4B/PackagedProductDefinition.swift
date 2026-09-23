//
//  PackagedProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/PackagedProductDefinition)
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
 A medically related item or items, in a container or package.
 */
public struct PackagedProductDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .packagedProductDefinition
	
	/// Allows the key features to be recorded, such as "hospital pack", "nurse prescribable"
	public var characteristic: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// A total of the complete count of contained items of a particular type/form, independent of sub-packaging or
	/// organization. This can be considered as the pack size
	public var containedItemQuantity: [Quantity]?
	
	/// If the drug product is supplied with another item such as a diluent or adjuvant
	public var copackagedIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Textual description. Note that this is not the name of the package or product
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A unique identifier for this package as whole
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the packaged item as classified by the regulator
	public var legalStatusOfSupply: [PackagedProductDefinitionLegalStatusOfSupply]?
	
	/// Manufacturer of this package type (multiple means these are all possible manufacturers)
	public var manufacturer: [Reference]?
	
	/// Allows specifying that an item is on the market for sale, or that it is not available, and the dates and
	/// locations associated
	public var marketingStatus: [MarketingStatus]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name for this package. Typically as listed in a drug formulary, catalogue, inventory etc
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A packaging item, as a container for medically related items, possibly with other packaging items within, or a
	/// packaging component, such as bottle cap
	public var package: PackagedProductDefinitionPackage?
	
	/// The product that this is a pack for
	public var packageFor: [Reference]?
	
	/// The status within the lifecycle of this item. High level - not intended to duplicate details elsewhere e.g.
	/// legal status, or authorization/marketing status
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// A high level category e.g. medicinal product, raw material, shipping container etc
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		characteristic: [CodeableConcept]? = nil,
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
		package: PackagedProductDefinitionPackage? = nil,
		packageFor: [Reference]? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
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
		self.package = package
		self.packageFor = packageFor
		self.status = status
		self.statusDate = statusDate
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case characteristic
		case contained
		case containedItemQuantity
		case copackagedIndicator; case _copackagedIndicator
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case legalStatusOfSupply
		case manufacturer
		case marketingStatus
		case meta
		case modifierExtension
		case name; case _name
		case package
		case packageFor
		case status
		case statusDate; case _statusDate
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.containedItemQuantity = try [Quantity](from: _container, forKeyIfPresent: .containedItemQuantity)
		self.copackagedIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .copackagedIndicator, auxiliaryKey: ._copackagedIndicator)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legalStatusOfSupply = try [PackagedProductDefinitionLegalStatusOfSupply](from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.package = try PackagedProductDefinitionPackage(from: _container, forKeyIfPresent: .package)
		self.packageFor = try [Reference](from: _container, forKeyIfPresent: .packageFor)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try contained?.encode(on: &_container, forKey: .contained)
		try containedItemQuantity?.encode(on: &_container, forKey: .containedItemQuantity)
		try copackagedIndicator?.encode(on: &_container, forKey: .copackagedIndicator, auxiliaryKey: ._copackagedIndicator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try package?.encode(on: &_container, forKey: .package)
		try packageFor?.encode(on: &_container, forKey: .packageFor)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The legal status of supply of the packaged item as classified by the regulator.
 */
public struct PackagedProductDefinitionLegalStatusOfSupply: BackboneElement {
	
	/// The actual status of supply. In what situation this package type may be supplied for use
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The place where the legal status of supply applies
	public var jurisdiction: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case jurisdiction
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.jurisdiction = try CodeableConcept(from: _container, forKeyIfPresent: .jurisdiction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 A packaging item, as a container for medically related items, possibly with other packaging items within, or a
 packaging component, such as bottle cap.
 
 A packaging item, as a container for medically related items, possibly with other packaging items within, or a
 packaging component, such as bottle cap (which is not a device or a medication manufactured item).
 */
public struct PackagedProductDefinitionPackage: BackboneElement {
	
	/// A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual
	/// material
	public var alternateMaterial: [CodeableConcept]?
	
	/// The item(s) within the packaging
	public var containedItem: [PackagedProductDefinitionPackageContainedItem]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier that is specific to this particular part of the packaging. Including possibly a Data Carrier
	/// Identifier
	public var identifier: [Identifier]?
	
	/// Manufacturer of this package Item (multiple means these are all possible manufacturers)
	public var manufacturer: [Reference]?
	
	/// Material type of the package item
	public var material: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Allows containers (and parts of containers) within containers, still a single packaged product
	public var package: [PackagedProductDefinitionPackage]?
	
	/// General characteristics of this item
	public var property: [PackagedProductDefinitionPackageProperty]?
	
	/// The quantity of this level of packaging in the package that contains it (with the outermost level being 1)
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [PackagedProductDefinitionPackageShelfLifeStorage]?
	
	/// The physical type of the container of the items
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		shelfLifeStorage: [PackagedProductDefinitionPackageShelfLifeStorage]? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case manufacturer
		case material
		case modifierExtension
		case package
		case property
		case quantity; case _quantity
		case shelfLifeStorage
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.alternateMaterial = try [CodeableConcept](from: _container, forKeyIfPresent: .alternateMaterial)
		self.containedItem = try [PackagedProductDefinitionPackageContainedItem](from: _container, forKeyIfPresent: .containedItem)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [CodeableConcept](from: _container, forKeyIfPresent: .material)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.package = try [PackagedProductDefinitionPackage](from: _container, forKeyIfPresent: .package)
		self.property = try [PackagedProductDefinitionPackageProperty](from: _container, forKeyIfPresent: .property)
		self.quantity = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.shelfLifeStorage = try [PackagedProductDefinitionPackageShelfLifeStorage](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try alternateMaterial?.encode(on: &_container, forKey: .alternateMaterial)
		try containedItem?.encode(on: &_container, forKey: .containedItem)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try package?.encode(on: &_container, forKey: .package)
		try property?.encode(on: &_container, forKey: .property)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The item(s) within the packaging.
 */
public struct PackagedProductDefinitionPackageContainedItem: BackboneElement {
	
	/// The number of this type of item within this packaging
	public var amount: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The actual item(s) of medication, as manufactured, or a device, or other medically related item (food,
	/// biologicals, raw materials, medical fluids, gases etc.), as contained in the package
	public var item: CodeableReference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try CodeableReference(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 General characteristics of this item.
 */
public struct PackagedProductDefinitionPackageProperty: BackboneElement {
	
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

/**
 Shelf Life and storage information.
 */
public struct PackagedProductDefinitionPackageShelfLifeStorage: BackboneElement {
	
	/// All possible types for "period[x]"
	public enum PeriodX: Equatable, Hashable, Sendable {
		indirect case duration(Duration)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The shelf life time period can be specified using a numerical value for the period of time and its unit of time
	/// measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting
	/// terminology The symbol and the symbol identifier shall be used
	/// One of `period[x]`
	public var period: PeriodX?
	
	/// Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary. The
	/// controlled term and the controlled term identifier shall be specified
	public var specialPrecautionsForStorage: [CodeableConcept]?
	
	/// This describes the shelf life, taking into account various scenarios such as shelf life of the packaged
	/// Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening
	/// of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: PeriodX? = nil,
		specialPrecautionsForStorage: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.specialPrecautionsForStorage = specialPrecautionsForStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case periodDuration
		case periodString; case _periodString
		case specialPrecautionsForStorage
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Self._decodePeriod(from: _container)
		self.specialPrecautionsForStorage = try [CodeableConcept](from: _container, forKeyIfPresent: .specialPrecautionsForStorage)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = period {
		switch _enum {
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .periodDuration)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .periodString, auxiliaryKey: ._periodString)
		}
		}
		try specialPrecautionsForStorage?.encode(on: &_container, forKey: .specialPrecautionsForStorage)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodePeriod(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PeriodX? {
		var _t_period: PeriodX? = nil
		if let periodDuration = try Duration(from: _container, forKeyIfPresent: .periodDuration) {
			_t_period = .duration(periodDuration)
		}
		if let periodString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .periodString, auxiliaryKey: ._periodString) {
			if _t_period != nil {
				throw DecodingError.dataCorruptedError(forKey: .periodString, in: _container, debugDescription: "More than one value provided for \"period\"")
			}
			_t_period = .string(periodString)
		}
		return _t_period
	}
}
