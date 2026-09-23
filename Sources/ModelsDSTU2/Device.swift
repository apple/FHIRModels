//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Device)
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
 An instance of a manufactured te that is used in the provision of healthcare.
 
 This resource identifies an instance of a manufactured item that is used in the provision of healthcare without being
 substantially changed through that activity. The device may be a medical or non-medical device.  Medical devices
 includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
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
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance id from manufacturer, owner, and others
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the resource is found
	public var location: Reference?
	
	/// Lot number of manufacture
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Manufacture date
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
	
	/// If the resource is affixed to a person
	public var patient: Reference?
	
	/// Status of the Device availability.
	/// Restricted to: ['available', 'not-available', 'entered-in-error']
	public var status: FHIRPrimitive<DeviceStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What kind of device this is
	public var type: CodeableConcept
	
	/// FDA mandated Unique Device Identifier
	public var udi: FHIRPrimitive<FHIRString>?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Version number (i.e. software)
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		expiry: FHIRPrimitive<DateTime>? = nil,
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
		status: FHIRPrimitive<DeviceStatus>? = nil,
		text: Narrative? = nil,
		type: CodeableConcept,
		udi: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.expiry = expiry
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
		case expiry; case _expiry
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
		case status; case _status
		case text
		case type
		case udi; case _udi
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
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
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
		self.status = try FHIRPrimitive<DeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.udi = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .udi, auxiliaryKey: ._udi)
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
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
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
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi, auxiliaryKey: ._udi)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}
