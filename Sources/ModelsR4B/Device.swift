//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Device)
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
 Item used in healthcare.
 
 A type of a manufactured item that is used in the provision of healthcare without being substantially changed through
 that activity. The device may be a medical or non-medical device.
 */
public struct Device: DomainResource {
	
	public static let resourceType: ResourceType = .device
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The reference to the definition for the device
	public var definition: Reference?
	
	/// The name of the device as given by the manufacturer
	public var deviceName: [DeviceDeviceName]?
	
	/// The distinct identification string
	public var distinctIdentifier: FHIRPrimitive<FHIRString>?
	
	/// Date and time of expiry of this device (if applicable)
	public var expirationDate: FHIRPrimitive<DateTime>?
	
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
	
	/// Where the device is found
	public var location: Reference?
	
	/// Lot number of manufacture
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Date when the device was made
	public var manufactureDate: FHIRPrimitive<DateTime>?
	
	/// Name of device manufacturer
	public var manufacturer: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// The manufacturer's model number for the device
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// The device that this device is attached to or is part of
	public var parent: Reference?
	
	/// The part number or catalog number of the device
	public var partNumber: FHIRPrimitive<FHIRString>?
	
	/// Patient to whom Device is affixed
	public var patient: Reference?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties
	public var property: [DeviceProperty]?
	
	/// Safety Characteristics of Device
	public var safety: [CodeableConcept]?
	
	/// Serial number assigned by the manufacturer
	public var serialNumber: FHIRPrimitive<FHIRString>?
	
	/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose,
	/// and used for the communication
	public var specialization: [DeviceSpecialization]?
	
	/// Status of the Device availability.
	public var status: FHIRPrimitive<FHIRDeviceStatus>?
	
	/// online | paused | standby | offline | not-ready | transduc-discon | hw-discon | off
	public var statusReason: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The kind or type of device
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiCarrier: [DeviceUdiCarrier]?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The actual design of the device or software version running on the device
	public var version: [DeviceVersion]?
	
	/// Designated initializer
	public init(
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		definition: Reference? = nil,
		deviceName: [DeviceDeviceName]? = nil,
		distinctIdentifier: FHIRPrimitive<FHIRString>? = nil,
		expirationDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		manufactureDate: FHIRPrimitive<DateTime>? = nil,
		manufacturer: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modelNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		owner: Reference? = nil,
		parent: Reference? = nil,
		partNumber: FHIRPrimitive<FHIRString>? = nil,
		patient: Reference? = nil,
		property: [DeviceProperty]? = nil,
		safety: [CodeableConcept]? = nil,
		serialNumber: FHIRPrimitive<FHIRString>? = nil,
		specialization: [DeviceSpecialization]? = nil,
		status: FHIRPrimitive<FHIRDeviceStatus>? = nil,
		statusReason: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		udiCarrier: [DeviceUdiCarrier]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: [DeviceVersion]? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.definition = definition
		self.deviceName = deviceName
		self.distinctIdentifier = distinctIdentifier
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.lotNumber = lotNumber
		self.manufactureDate = manufactureDate
		self.manufacturer = manufacturer
		self.meta = meta
		self.modelNumber = modelNumber
		self.modifierExtension = modifierExtension
		self.note = note
		self.owner = owner
		self.parent = parent
		self.partNumber = partNumber
		self.patient = patient
		self.property = property
		self.safety = safety
		self.serialNumber = serialNumber
		self.specialization = specialization
		self.status = status
		self.statusReason = statusReason
		self.text = text
		self.type = type
		self.udiCarrier = udiCarrier
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case definition
		case deviceName
		case distinctIdentifier; case _distinctIdentifier
		case expirationDate; case _expirationDate
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case lotNumber; case _lotNumber
		case manufactureDate; case _manufactureDate
		case manufacturer; case _manufacturer
		case meta
		case modelNumber; case _modelNumber
		case modifierExtension
		case note
		case owner
		case parent
		case partNumber; case _partNumber
		case patient
		case property
		case safety
		case serialNumber; case _serialNumber
		case specialization
		case status; case _status
		case statusReason
		case text
		case type
		case udiCarrier
		case url; case _url
		case version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.deviceName = try [DeviceDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.distinctIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .distinctIdentifier, auxiliaryKey: ._distinctIdentifier)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufactureDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .manufactureDate, auxiliaryKey: ._manufactureDate)
		self.manufacturer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .manufacturer, auxiliaryKey: ._manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.partNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .partNumber, auxiliaryKey: ._partNumber)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.property = try [DeviceProperty](from: _container, forKeyIfPresent: .property)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.serialNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serialNumber, auxiliaryKey: ._serialNumber)
		self.specialization = try [DeviceSpecialization](from: _container, forKeyIfPresent: .specialization)
		self.status = try FHIRPrimitive<FHIRDeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.udiCarrier = try [DeviceUdiCarrier](from: _container, forKeyIfPresent: .udiCarrier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try [DeviceVersion](from: _container, forKeyIfPresent: .version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try definition?.encode(on: &_container, forKey: .definition)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try distinctIdentifier?.encode(on: &_container, forKey: .distinctIdentifier, auxiliaryKey: ._distinctIdentifier)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufactureDate?.encode(on: &_container, forKey: .manufactureDate, auxiliaryKey: ._manufactureDate)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer, auxiliaryKey: ._manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try owner?.encode(on: &_container, forKey: .owner)
		try parent?.encode(on: &_container, forKey: .parent)
		try partNumber?.encode(on: &_container, forKey: .partNumber, auxiliaryKey: ._partNumber)
		try patient?.encode(on: &_container, forKey: .patient)
		try property?.encode(on: &_container, forKey: .property)
		try safety?.encode(on: &_container, forKey: .safety)
		try serialNumber?.encode(on: &_container, forKey: .serialNumber, auxiliaryKey: ._serialNumber)
		try specialization?.encode(on: &_container, forKey: .specialization)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try udiCarrier?.encode(on: &_container, forKey: .udiCarrier)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version)
	}
}

/**
 The name of the device as given by the manufacturer.
 
 This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person
 describing the Device.  This typically would be used when a person provides the name(s) or when the device represents
 one of the names available from DeviceDefinition.
 */
public struct DeviceDeviceName: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name that identifies the device
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
 The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
 */
public struct DeviceProperty: BackboneElement {
	
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
public struct DeviceSpecialization: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The standard that is used to operate and communicate
	public var systemType: CodeableConcept
	
	/// The version of the standard that is used to operate and communicate
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		systemType: CodeableConcept,
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
		case systemType
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
		self.systemType = try CodeableConcept(from: _container, forKey: .systemType)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try systemType.encode(on: &_container, forKey: .systemType)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Unique Device Identifier (UDI) Barcode string.
 
 Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple
 udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions
 it could have been sold.
 */
public struct DeviceUdiCarrier: BackboneElement {
	
	/// UDI Machine Readable Barcode String
	public var carrierAIDC: FHIRPrimitive<Base64Binary>?
	
	/// UDI Human Readable Barcode String
	public var carrierHRF: FHIRPrimitive<FHIRString>?
	
	/// Mandatory fixed portion of UDI
	public var deviceIdentifier: FHIRPrimitive<FHIRString>?
	
	/// A coded entry to indicate how the data was entered.
	public var entryType: FHIRPrimitive<UDIEntryType>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// UDI Issuing Organization
	public var issuer: FHIRPrimitive<FHIRURI>?
	
	/// Regional UDI authority
	public var jurisdiction: FHIRPrimitive<FHIRURI>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		carrierAIDC: FHIRPrimitive<Base64Binary>? = nil,
		carrierHRF: FHIRPrimitive<FHIRString>? = nil,
		deviceIdentifier: FHIRPrimitive<FHIRString>? = nil,
		entryType: FHIRPrimitive<UDIEntryType>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issuer: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: FHIRPrimitive<FHIRURI>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.carrierAIDC = carrierAIDC
		self.carrierHRF = carrierHRF
		self.deviceIdentifier = deviceIdentifier
		self.entryType = entryType
		self.`extension` = `extension`
		self.id = id
		self.issuer = issuer
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case carrierAIDC; case _carrierAIDC
		case carrierHRF; case _carrierHRF
		case deviceIdentifier; case _deviceIdentifier
		case entryType; case _entryType
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
		self.carrierAIDC = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		self.carrierHRF = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .carrierHRF, auxiliaryKey: ._carrierHRF)
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.entryType = try FHIRPrimitive<UDIEntryType>(from: _container, forKeyIfPresent: .entryType, auxiliaryKey: ._entryType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try carrierAIDC?.encode(on: &_container, forKey: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		try carrierHRF?.encode(on: &_container, forKey: .carrierHRF, auxiliaryKey: ._carrierHRF)
		try deviceIdentifier?.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try entryType?.encode(on: &_container, forKey: .entryType, auxiliaryKey: ._entryType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try issuer?.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 The actual design of the device or software version running on the device.
 */
public struct DeviceVersion: BackboneElement {
	
	/// A single component of the device version
	public var component: Identifier?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of the device version, e.g. manufacturer, approved, internal
	public var type: CodeableConcept?
	
	/// The version text
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		component: Identifier? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.component = component
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.component = try Identifier(from: _container, forKeyIfPresent: .component)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try component?.encode(on: &_container, forKey: .component)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}
