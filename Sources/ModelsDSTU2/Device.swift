//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Device)
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
 An instance of a manufactured te that is used in the provision of healthcare.
 
 This resource identifies an instance of a manufactured item that is used in the provision of healthcare without being
 substantially changed through that activity. The device may be a medical or non-medical device.  Medical devices
 includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
 diagnostic, treatment, and research for healthcare and public health.  Non-medical devices may include items such as a
 machine, cellphone, computer, application, etc.
 */
open class Device: DomainResource {
	
	override open class var resourceType: ResourceType { return .device }
	
	/// Instance id from manufacturer, owner, and others
	public var identifier: [Identifier]?
	
	/// What kind of device this is
	public var type: CodeableConcept
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Status of the Device availability.
	/// Restricted to: ['available', 'not-available', 'entered-in-error']
	public var status: FHIRPrimitive<DeviceStatus>?
	
	/// Name of device manufacturer
	public var manufacturer: FHIRPrimitive<FHIRString>?
	
	/// Model id assigned by the manufacturer
	public var model: FHIRPrimitive<FHIRString>?
	
	/// Version number (i.e. software)
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Manufacture date
	public var manufactureDate: FHIRPrimitive<DateTime>?
	
	/// Date and time of expiry of this device (if applicable)
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// FDA mandated Unique Device Identifier
	public var udi: FHIRPrimitive<FHIRString>?
	
	/// Lot number of manufacture
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// Where the resource is found
	public var location: Reference?
	
	/// If the resource is affixed to a person
	public var patient: Reference?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(type: type)
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
		self.udi = udi
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case expiry; case _expiry
		case identifier
		case location
		case lotNumber; case _lotNumber
		case manufactureDate; case _manufactureDate
		case manufacturer; case _manufacturer
		case model; case _model
		case note
		case owner
		case patient
		case status; case _status
		case type
		case udi; case _udi
		case url; case _url
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufactureDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .manufactureDate, auxiliaryKey: ._manufactureDate)
		self.manufacturer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .manufacturer, auxiliaryKey: ._manufacturer)
		self.model = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .model, auxiliaryKey: ._model)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.status = try FHIRPrimitive<DeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.udi = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .udi, auxiliaryKey: ._udi)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufactureDate?.encode(on: &_container, forKey: .manufactureDate, auxiliaryKey: ._manufactureDate)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer, auxiliaryKey: ._manufacturer)
		try model?.encode(on: &_container, forKey: .model, auxiliaryKey: ._model)
		try note?.encode(on: &_container, forKey: .note)
		try owner?.encode(on: &_container, forKey: .owner)
		try patient?.encode(on: &_container, forKey: .patient)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi, auxiliaryKey: ._udi)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Device else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && expiry == _other.expiry
		    && identifier == _other.identifier
		    && location == _other.location
		    && lotNumber == _other.lotNumber
		    && manufactureDate == _other.manufactureDate
		    && manufacturer == _other.manufacturer
		    && model == _other.model
		    && note == _other.note
		    && owner == _other.owner
		    && patient == _other.patient
		    && status == _other.status
		    && type == _other.type
		    && udi == _other.udi
		    && url == _other.url
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(expiry)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(lotNumber)
		hasher.combine(manufactureDate)
		hasher.combine(manufacturer)
		hasher.combine(model)
		hasher.combine(note)
		hasher.combine(owner)
		hasher.combine(patient)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(udi)
		hasher.combine(url)
		hasher.combine(version)
	}
}
