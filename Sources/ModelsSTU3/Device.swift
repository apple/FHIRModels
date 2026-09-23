//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Device)
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
 
 This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare
 without being substantially changed through that activity. The device may be a medical or non-medical device.  Medical
 devices include durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
 diagnostic, treatment, and research for healthcare and public health.  Non-medical devices may include items such as a
 machine, cellphone, computer, application, etc.
 */
public struct Device: DomainResource {
	
	public static let resourceType: ResourceType = .device
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date and time of expiry of this device (if applicable)
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the resource is found
	public var location: Reference?
	
	/// Lot number of manufacture
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Date when the device was made
	public var manufactureDate: FHIRPrimitive<DateTime>?
	
	/// Name of device manufacturer
	public var manufacturer: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Model id assigned by the manufacturer
	public var model: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// Patient to whom Device is affixed
	public var patient: Reference?
	
	/// Safety Characteristics of Device
	public var safety: [CodeableConcept]?
	
	/// Status of the Device availability.
	public var status: FHIRPrimitive<FHIRDeviceStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What kind of device this is
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udi: DeviceUdi?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Version number (i.e. software)
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
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
		model: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		owner: Reference? = nil,
		patient: Reference? = nil,
		safety: [CodeableConcept]? = nil,
		status: FHIRPrimitive<FHIRDeviceStatus>? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		udi: DeviceUdi? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
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
		self.model = model
		self.modifierExtension = modifierExtension
		self.note = note
		self.owner = owner
		self.patient = patient
		self.safety = safety
		self.status = status
		self.text = text
		self.type = type
		self.udi = udi
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
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
		case model; case _model
		case modifierExtension
		case note
		case owner
		case patient
		case safety
		case status; case _status
		case text
		case type
		case udi
		case url; case _url
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
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
		self.model = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .model, auxiliaryKey: ._model)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.status = try FHIRPrimitive<FHIRDeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.udi = try DeviceUdi(from: _container, forKeyIfPresent: .udi)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
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
		try model?.encode(on: &_container, forKey: .model, auxiliaryKey: ._model)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try owner?.encode(on: &_container, forKey: .owner)
		try patient?.encode(on: &_container, forKey: .patient)
		try safety?.encode(on: &_container, forKey: .safety)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Unique Device Identifier (UDI) Barcode string.
 
 [Unique device identifier (UDI)](device.html#5.11.3.2.2) assigned to device label or package.
 */
public struct DeviceUdi: BackboneElement {
	
	/// UDI Machine Readable Barcode String
	public var carrierAIDC: FHIRPrimitive<Base64Binary>?
	
	/// UDI Human Readable Barcode String
	public var carrierHRF: FHIRPrimitive<FHIRString>?
	
	/// Mandatory fixed portion of UDI
	public var deviceIdentifier: FHIRPrimitive<FHIRString>?
	
	/// A coded entry to indicate how the data was entered.
	public var entryType: FHIRPrimitive<UDIEntryType>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// UDI Issuing Organization
	public var issuer: FHIRPrimitive<FHIRURI>?
	
	/// Regional UDI authority
	public var jurisdiction: FHIRPrimitive<FHIRURI>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Device Name as appears on UDI label
	public var name: FHIRPrimitive<FHIRString>?
	
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
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil
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
		self.name = name
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
		case name; case _name
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
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
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}
