//
//  DeviceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/DeviceDefinition)
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
 An instance of a medical-related component of a medical device.
 
 The characteristics, operational status and capabilities of a medical-related component of a medical device.
 */
public struct DeviceDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .deviceDefinition
	
	/// All possible types for "manufacturer[x]"
	public enum ManufacturerX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Device capabilities
	public var capability: [DeviceDefinitionCapability]?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// A name given to the device to identify it
	public var deviceName: [DeviceDefinitionDeviceName]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Language code for the human-readable text strings produced by the device (all supported)
	public var languageCode: [CodeableConcept]?
	
	/// Name of device manufacturer
	/// One of `manufacturer[x]`
	public var manufacturer: ManufacturerX?
	
	/// A substance used to create the material(s) of which the device is made
	public var material: [DeviceDefinitionMaterial]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// The model number for the device
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Access to on-line information
	public var onlineInformation: FHIRPrimitive<FHIRURI>?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// The parent device it can be part of
	public var parentDevice: Reference?
	
	/// Dimensions, color etc.
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties
	public var property: [DeviceDefinitionProperty]?
	
	/// The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number
	/// of devices in the same package of the medicinal product)
	public var quantity: Quantity?
	
	/// Safety characteristics of the device
	public var safety: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose,
	/// and used for the communication
	public var specialization: [DeviceDefinitionSpecialization]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What kind of device or device system this is
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Available versions
	public var version: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		capability: [DeviceDefinitionCapability]? = nil,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		deviceName: [DeviceDefinitionDeviceName]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		languageCode: [CodeableConcept]? = nil,
		manufacturer: ManufacturerX? = nil,
		material: [DeviceDefinitionMaterial]? = nil,
		meta: Meta? = nil,
		modelNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		onlineInformation: FHIRPrimitive<FHIRURI>? = nil,
		owner: Reference? = nil,
		parentDevice: Reference? = nil,
		physicalCharacteristics: ProdCharacteristic? = nil,
		property: [DeviceDefinitionProperty]? = nil,
		quantity: Quantity? = nil,
		safety: [CodeableConcept]? = nil,
		shelfLifeStorage: [ProductShelfLife]? = nil,
		specialization: [DeviceDefinitionSpecialization]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.capability = capability
		self.contact = contact
		self.contained = contained
		self.deviceName = deviceName
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.languageCode = languageCode
		self.manufacturer = manufacturer
		self.material = material
		self.meta = meta
		self.modelNumber = modelNumber
		self.modifierExtension = modifierExtension
		self.note = note
		self.onlineInformation = onlineInformation
		self.owner = owner
		self.parentDevice = parentDevice
		self.physicalCharacteristics = physicalCharacteristics
		self.property = property
		self.quantity = quantity
		self.safety = safety
		self.shelfLifeStorage = shelfLifeStorage
		self.specialization = specialization
		self.text = text
		self.type = type
		self.udiDeviceIdentifier = udiDeviceIdentifier
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case capability
		case contact
		case contained
		case deviceName
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case languageCode
		case manufacturerReference
		case manufacturerString; case _manufacturerString
		case material
		case meta
		case modelNumber; case _modelNumber
		case modifierExtension
		case note
		case onlineInformation; case _onlineInformation
		case owner
		case parentDevice
		case physicalCharacteristics
		case property
		case quantity
		case safety
		case shelfLifeStorage
		case specialization
		case text
		case type
		case udiDeviceIdentifier
		case url; case _url
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.capability = try [DeviceDefinitionCapability](from: _container, forKeyIfPresent: .capability)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.deviceName = try [DeviceDefinitionDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.languageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .languageCode)
		self.manufacturer = try Self._decodeManufacturer(from: _container)
		self.material = try [DeviceDefinitionMaterial](from: _container, forKeyIfPresent: .material)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.onlineInformation = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .onlineInformation, auxiliaryKey: ._onlineInformation)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.parentDevice = try Reference(from: _container, forKeyIfPresent: .parentDevice)
		self.physicalCharacteristics = try ProdCharacteristic(from: _container, forKeyIfPresent: .physicalCharacteristics)
		self.property = try [DeviceDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.shelfLifeStorage = try [ProductShelfLife](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.specialization = try [DeviceDefinitionSpecialization](from: _container, forKeyIfPresent: .specialization)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.udiDeviceIdentifier = try [DeviceDefinitionUdiDeviceIdentifier](from: _container, forKeyIfPresent: .udiDeviceIdentifier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try capability?.encode(on: &_container, forKey: .capability)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try languageCode?.encode(on: &_container, forKey: .languageCode)
		if let _enum = manufacturer {
		switch _enum {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .manufacturerReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .manufacturerString, auxiliaryKey: ._manufacturerString)
		}
		}
		try material?.encode(on: &_container, forKey: .material)
		try meta?.encode(on: &_container, forKey: .meta)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try onlineInformation?.encode(on: &_container, forKey: .onlineInformation, auxiliaryKey: ._onlineInformation)
		try owner?.encode(on: &_container, forKey: .owner)
		try parentDevice?.encode(on: &_container, forKey: .parentDevice)
		try physicalCharacteristics?.encode(on: &_container, forKey: .physicalCharacteristics)
		try property?.encode(on: &_container, forKey: .property)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try safety?.encode(on: &_container, forKey: .safety)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try specialization?.encode(on: &_container, forKey: .specialization)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try udiDeviceIdentifier?.encode(on: &_container, forKey: .udiDeviceIdentifier)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeManufacturer(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ManufacturerX? {
		var _t_manufacturer: ManufacturerX? = nil
		if let manufacturerReference = try Reference(from: _container, forKeyIfPresent: .manufacturerReference) {
			_t_manufacturer = .reference(manufacturerReference)
		}
		if let manufacturerString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .manufacturerString, auxiliaryKey: ._manufacturerString) {
			if _t_manufacturer != nil {
				throw DecodingError.dataCorruptedError(forKey: .manufacturerString, in: _container, debugDescription: "More than one value provided for \"manufacturer\"")
			}
			_t_manufacturer = .string(manufacturerString)
		}
		return _t_manufacturer
	}
}

/**
 Device capabilities.
 */
public struct DeviceDefinitionCapability: BackboneElement {
	
	/// Description of capability
	public var description_fhir: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of capability
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		description_fhir: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try [CodeableConcept](from: _container, forKeyIfPresent: .description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 A name given to the device to identify it.
 */
public struct DeviceDefinitionDeviceName: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name of the device
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of deviceName.
	/// UDILabelName | UserFriendlyName | PatientReportedName | ManufactureDeviceName | ModelName.
	public var type: FHIRPrimitive<DeviceNameType>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		type: FHIRPrimitive<DeviceNameType>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<DeviceNameType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 A substance used to create the material(s) of which the device is made.
 */
public struct DeviceDefinitionMaterial: BackboneElement {
	
	/// Whether the substance is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Indicates an alternative material of the device
	public var alternate: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The substance
	public var substance: CodeableConcept
	
	/// Designated initializer
	public init(
		allergenicIndicator: FHIRPrimitive<FHIRBool>? = nil,
		alternate: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		substance: CodeableConcept
	) {
		self.allergenicIndicator = allergenicIndicator
		self.alternate = alternate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allergenicIndicator; case _allergenicIndicator
		case alternate; case _alternate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case substance
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.alternate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .alternate, auxiliaryKey: ._alternate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.substance = try CodeableConcept(from: _container, forKey: .substance)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try alternate?.encode(on: &_container, forKey: .alternate, auxiliaryKey: ._alternate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try substance.encode(on: &_container, forKey: .substance)
	}
}

/**
 The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
 */
public struct DeviceDefinitionProperty: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code that specifies the property DeviceDefinitionPropetyCode (Extensible)
	public var type: CodeableConcept
	
	/// Property value as a code, e.g., NTP4 (synced to NTP)
	public var valueCode: [CodeableConcept]?
	
	/// Property value as a quantity
	public var valueQuantity: [Quantity]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		valueCode: [CodeableConcept]? = nil,
		valueQuantity: [Quantity]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.valueCode = valueCode
		self.valueQuantity = valueQuantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case valueCode
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
		self.valueCode = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCode)
		self.valueQuantity = try [Quantity](from: _container, forKeyIfPresent: .valueQuantity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		try valueCode?.encode(on: &_container, forKey: .valueCode)
		try valueQuantity?.encode(on: &_container, forKey: .valueQuantity)
	}
}

/**
 The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used
 for the communication.
 */
public struct DeviceDefinitionSpecialization: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The standard that is used to operate and communicate
	public var systemType: FHIRPrimitive<FHIRString>
	
	/// The version of the standard that is used to operate and communicate
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		systemType: FHIRPrimitive<FHIRString>,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.systemType = systemType
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case systemType; case _systemType
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.systemType = try FHIRPrimitive<FHIRString>(from: _container, forKey: .systemType, auxiliaryKey: ._systemType)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try systemType.encode(on: &_container, forKey: .systemType, auxiliaryKey: ._systemType)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Unique Device Identifier (UDI) Barcode string.
 
 Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple
 udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions
 it could have been sold.
 */
public struct DeviceDefinitionUdiDeviceIdentifier: BackboneElement {
	
	/// The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer
	/// and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The organization that assigns the identifier algorithm
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// The jurisdiction to which the deviceIdentifier applies
	public var jurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		deviceIdentifier: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issuer: FHIRPrimitive<FHIRURI>,
		jurisdiction: FHIRPrimitive<FHIRURI>,
		modifierExtension: [Extension]? = nil
	) {
		self.deviceIdentifier = deviceIdentifier
		self.`extension` = `extension`
		self.id = id
		self.issuer = issuer
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case deviceIdentifier; case _deviceIdentifier
		case `extension` = "extension"
		case id; case _id
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
