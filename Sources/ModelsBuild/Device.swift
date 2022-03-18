//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/Device)
//  Copyright 2022 Apple Inc.
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
open class Device: DomainResource {
	
	override open class var resourceType: ResourceType { return .device }
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// The name used to display by default when the device is referenced
	public var displayName: FHIRPrimitive<FHIRString>?
	
	/// The reference to the definition for the device
	public var definition: CodeableReference?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiCarrier: [DeviceUdiCarrier]?
	
	/// Status of the Device record. This is not the status of the device like availability.
	public var status: FHIRPrimitive<FHIRDeviceStatus>?
	
	/// discarded | obsolete | removed
	public var statusReason: [CodeableConcept]?
	
	/// An identifier that supports traceability to the biological entity that is the source of biological material in
	/// the product
	public var biologicalSource: Identifier?
	
	/// Name of device manufacturer
	public var manufacturer: FHIRPrimitive<FHIRString>?
	
	/// Date when the device was made
	public var manufactureDate: FHIRPrimitive<DateTime>?
	
	/// Date and time of expiry of this device (if applicable)
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// Lot number of manufacture
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Serial number assigned by the manufacturer
	public var serialNumber: FHIRPrimitive<FHIRString>?
	
	/// The name or names of the device as known to the manufacturer and/or patient
	public var deviceName: [DeviceDeviceName]?
	
	/// The manufacturer's model number for the device
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// The part number or catalog number of the device
	public var partNumber: FHIRPrimitive<FHIRString>?
	
	/// The kind or type of device
	public var type: [CodeableConcept]?
	
	/// The actual design of the device or software version running on the device
	public var version: [DeviceVersion]?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties
	public var property: [DeviceProperty]?
	
	/// Patient to whom Device is affixed
	public var subject: Reference?
	
	/// The status of the device itself - whether it is switched on, or activated, etc
	public var operationalStatus: DeviceOperationalStatus?
	
	/// Current state of the device
	public var associationState: [DeviceAssociationState]?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Where the device is found
	public var location: Reference?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Technical endpoints providing access to electronic services provided by the device
	public var endpoint: [Reference]?
	
	/// An associated device, attached to, used with, communicating with or linking a previous or new device model to
	/// the focal device
	public var link: [DeviceLink]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Safety Characteristics of Device
	public var safety: [CodeableConcept]?
	
	/// The device that this device is attached to or is part of
	public var parent: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		associationState: [DeviceAssociationState]? = nil,
		biologicalSource: Identifier? = nil,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		definition: CodeableReference? = nil,
		deviceName: [DeviceDeviceName]? = nil,
		displayName: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [Reference]? = nil,
		expirationDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		link: [DeviceLink]? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		manufactureDate: FHIRPrimitive<DateTime>? = nil,
		manufacturer: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modelNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		operationalStatus: DeviceOperationalStatus? = nil,
		owner: Reference? = nil,
		parent: Reference? = nil,
		partNumber: FHIRPrimitive<FHIRString>? = nil,
		property: [DeviceProperty]? = nil,
		safety: [CodeableConcept]? = nil,
		serialNumber: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<FHIRDeviceStatus>? = nil,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil,
		udiCarrier: [DeviceUdiCarrier]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: [DeviceVersion]? = nil
	) {
		self.init()
		self.associationState = associationState
		self.biologicalSource = biologicalSource
		self.contact = contact
		self.contained = contained
		self.definition = definition
		self.deviceName = deviceName
		self.displayName = displayName
		self.endpoint = endpoint
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.link = link
		self.location = location
		self.lotNumber = lotNumber
		self.manufactureDate = manufactureDate
		self.manufacturer = manufacturer
		self.meta = meta
		self.modelNumber = modelNumber
		self.modifierExtension = modifierExtension
		self.note = note
		self.operationalStatus = operationalStatus
		self.owner = owner
		self.parent = parent
		self.partNumber = partNumber
		self.property = property
		self.safety = safety
		self.serialNumber = serialNumber
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
		self.type = type
		self.udiCarrier = udiCarrier
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case associationState
		case biologicalSource
		case contact
		case definition
		case deviceName
		case displayName; case _displayName
		case endpoint
		case expirationDate; case _expirationDate
		case identifier
		case link
		case location
		case lotNumber; case _lotNumber
		case manufactureDate; case _manufactureDate
		case manufacturer; case _manufacturer
		case modelNumber; case _modelNumber
		case note
		case operationalStatus
		case owner
		case parent
		case partNumber; case _partNumber
		case property
		case safety
		case serialNumber; case _serialNumber
		case status; case _status
		case statusReason
		case subject
		case type
		case udiCarrier
		case url; case _url
		case version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associationState = try [DeviceAssociationState](from: _container, forKeyIfPresent: .associationState)
		self.biologicalSource = try Identifier(from: _container, forKeyIfPresent: .biologicalSource)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.definition = try CodeableReference(from: _container, forKeyIfPresent: .definition)
		self.deviceName = try [DeviceDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.displayName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .displayName, auxiliaryKey: ._displayName)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.link = try [DeviceLink](from: _container, forKeyIfPresent: .link)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufactureDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .manufactureDate, auxiliaryKey: ._manufactureDate)
		self.manufacturer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .manufacturer, auxiliaryKey: ._manufacturer)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.operationalStatus = try DeviceOperationalStatus(from: _container, forKeyIfPresent: .operationalStatus)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.partNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .partNumber, auxiliaryKey: ._partNumber)
		self.property = try [DeviceProperty](from: _container, forKeyIfPresent: .property)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.serialNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serialNumber, auxiliaryKey: ._serialNumber)
		self.status = try FHIRPrimitive<FHIRDeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udiCarrier = try [DeviceUdiCarrier](from: _container, forKeyIfPresent: .udiCarrier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try [DeviceVersion](from: _container, forKeyIfPresent: .version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try associationState?.encode(on: &_container, forKey: .associationState)
		try biologicalSource?.encode(on: &_container, forKey: .biologicalSource)
		try contact?.encode(on: &_container, forKey: .contact)
		try definition?.encode(on: &_container, forKey: .definition)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try displayName?.encode(on: &_container, forKey: .displayName, auxiliaryKey: ._displayName)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try link?.encode(on: &_container, forKey: .link)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufactureDate?.encode(on: &_container, forKey: .manufactureDate, auxiliaryKey: ._manufactureDate)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer, auxiliaryKey: ._manufacturer)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
		try note?.encode(on: &_container, forKey: .note)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus)
		try owner?.encode(on: &_container, forKey: .owner)
		try parent?.encode(on: &_container, forKey: .parent)
		try partNumber?.encode(on: &_container, forKey: .partNumber, auxiliaryKey: ._partNumber)
		try property?.encode(on: &_container, forKey: .property)
		try safety?.encode(on: &_container, forKey: .safety)
		try serialNumber?.encode(on: &_container, forKey: .serialNumber, auxiliaryKey: ._serialNumber)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try udiCarrier?.encode(on: &_container, forKey: .udiCarrier)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version)
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
		return associationState == _other.associationState
		    && biologicalSource == _other.biologicalSource
		    && contact == _other.contact
		    && definition == _other.definition
		    && deviceName == _other.deviceName
		    && displayName == _other.displayName
		    && endpoint == _other.endpoint
		    && expirationDate == _other.expirationDate
		    && identifier == _other.identifier
		    && link == _other.link
		    && location == _other.location
		    && lotNumber == _other.lotNumber
		    && manufactureDate == _other.manufactureDate
		    && manufacturer == _other.manufacturer
		    && modelNumber == _other.modelNumber
		    && note == _other.note
		    && operationalStatus == _other.operationalStatus
		    && owner == _other.owner
		    && parent == _other.parent
		    && partNumber == _other.partNumber
		    && property == _other.property
		    && safety == _other.safety
		    && serialNumber == _other.serialNumber
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && type == _other.type
		    && udiCarrier == _other.udiCarrier
		    && url == _other.url
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associationState)
		hasher.combine(biologicalSource)
		hasher.combine(contact)
		hasher.combine(definition)
		hasher.combine(deviceName)
		hasher.combine(displayName)
		hasher.combine(endpoint)
		hasher.combine(expirationDate)
		hasher.combine(identifier)
		hasher.combine(link)
		hasher.combine(location)
		hasher.combine(lotNumber)
		hasher.combine(manufactureDate)
		hasher.combine(manufacturer)
		hasher.combine(modelNumber)
		hasher.combine(note)
		hasher.combine(operationalStatus)
		hasher.combine(owner)
		hasher.combine(parent)
		hasher.combine(partNumber)
		hasher.combine(property)
		hasher.combine(safety)
		hasher.combine(serialNumber)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(udiCarrier)
		hasher.combine(url)
		hasher.combine(version)
	}
}

/**
 Current state of the device.
 
 The details about the device when it is affixed or inside of a patient.
 */
open class DeviceAssociationState: BackboneElement {
	
	/// Device useage state
	public var status: CodeableConcept
	
	/// The reasons given for the current association status
	public var statusReason: [CodeableConcept]?
	
	/// The individual associated with the device
	public var humanSubject: Reference?
	
	/// Designated initializer taking all required properties
	public init(status: CodeableConcept) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		humanSubject: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept,
		statusReason: [CodeableConcept]? = nil
	) {
		self.init(status: status)
		self.`extension` = `extension`
		self.humanSubject = humanSubject
		self.id = id
		self.modifierExtension = modifierExtension
		self.statusReason = statusReason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case humanSubject
		case status
		case statusReason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.humanSubject = try Reference(from: _container, forKeyIfPresent: .humanSubject)
		self.status = try CodeableConcept(from: _container, forKey: .status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try humanSubject?.encode(on: &_container, forKey: .humanSubject)
		try status.encode(on: &_container, forKey: .status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAssociationState else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return humanSubject == _other.humanSubject
		    && status == _other.status
		    && statusReason == _other.statusReason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(humanSubject)
		hasher.combine(status)
		hasher.combine(statusReason)
	}
}

/**
 The name or names of the device as known to the manufacturer and/or patient.
 
 This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person
 describing the Device.  This typically would be used when a person provides the name(s) or when the device represents
 one of the names available from DeviceDefinition.
 */
open class DeviceDeviceName: BackboneElement {
	
	/// The name that identifies the device
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of deviceName. Note that ManufactureDeviceName means that the name is the name as given by the
	/// manufacturer, not the name of the manufacturer.
	/// RegisteredName | UserFriendlyName | PatientReportedName.
	public var type: FHIRPrimitive<DeviceNameType>
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<DeviceNameType>) {
		self.name = name
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		type: FHIRPrimitive<DeviceNameType>
	) {
		self.init(name: name, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<DeviceNameType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDeviceName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(type)
	}
}

/**
 An associated device, attached to, used with, communicating with or linking a previous or new device model to the focal
 device.
 */
open class DeviceLink: BackboneElement {
	
	/// The type indicates the relationship of the related device to the device instance
	public var relation: Coding
	
	/// A reference to the linked device
	public var relatedDevice: CodeableReference
	
	/// Designated initializer taking all required properties
	public init(relatedDevice: CodeableReference, relation: Coding) {
		self.relatedDevice = relatedDevice
		self.relation = relation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedDevice: CodeableReference,
		relation: Coding
	) {
		self.init(relatedDevice: relatedDevice, relation: relation)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case relatedDevice
		case relation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.relatedDevice = try CodeableReference(from: _container, forKey: .relatedDevice)
		self.relation = try Coding(from: _container, forKey: .relation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try relatedDevice.encode(on: &_container, forKey: .relatedDevice)
		try relation.encode(on: &_container, forKey: .relation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return relatedDevice == _other.relatedDevice
		    && relation == _other.relation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(relatedDevice)
		hasher.combine(relation)
	}
}

/**
 The status of the device itself - whether it is switched on, or activated, etc.
 */
open class DeviceOperationalStatus: BackboneElement {
	
	/// on |off | standby
	public var value: CodeableConcept
	
	/// The reasons given for the current operational status
	public var reason: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(value: CodeableConcept) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]? = nil,
		value: CodeableConcept
	) {
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reason
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.value = try CodeableConcept(from: _container, forKey: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try value.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceOperationalStatus else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reason == _other.reason
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reason)
		hasher.combine(value)
	}
}

/**
 The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
 */
open class DeviceProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Code that specifies the property being represented
	public var type: CodeableConcept
	
	/// Property value - as a code, quantity, boolean, string or attachmment
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
		case valueInteger; case _valueInteger
		case valueQuantity
		case valueRange
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
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
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceProperty else {
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

/**
 Unique Device Identifier (UDI) Barcode string.
 
 Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple
 udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions
 it could have been sold.
 */
open class DeviceUdiCarrier: BackboneElement {
	
	/// Mandatory fixed portion of UDI
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// UDI Issuing Organization
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// Regional UDI authority
	public var jurisdiction: FHIRPrimitive<FHIRURI>?
	
	/// UDI Machine Readable Barcode String
	public var carrierAIDC: FHIRPrimitive<Base64Binary>?
	
	/// UDI Human Readable Barcode String
	public var carrierHRF: FHIRPrimitive<FHIRString>?
	
	/// A coded entry to indicate how the data was entered.
	public var entryType: FHIRPrimitive<UDIEntryType>?
	
	/// Designated initializer taking all required properties
	public init(deviceIdentifier: FHIRPrimitive<FHIRString>, issuer: FHIRPrimitive<FHIRURI>) {
		self.deviceIdentifier = deviceIdentifier
		self.issuer = issuer
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		carrierAIDC: FHIRPrimitive<Base64Binary>? = nil,
		carrierHRF: FHIRPrimitive<FHIRString>? = nil,
		deviceIdentifier: FHIRPrimitive<FHIRString>,
		entryType: FHIRPrimitive<UDIEntryType>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issuer: FHIRPrimitive<FHIRURI>,
		jurisdiction: FHIRPrimitive<FHIRURI>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(deviceIdentifier: deviceIdentifier, issuer: issuer)
		self.carrierAIDC = carrierAIDC
		self.carrierHRF = carrierHRF
		self.entryType = entryType
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case carrierAIDC; case _carrierAIDC
		case carrierHRF; case _carrierHRF
		case deviceIdentifier; case _deviceIdentifier
		case entryType; case _entryType
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.carrierAIDC = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		self.carrierHRF = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .carrierHRF, auxiliaryKey: ._carrierHRF)
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.entryType = try FHIRPrimitive<UDIEntryType>(from: _container, forKeyIfPresent: .entryType, auxiliaryKey: ._entryType)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try carrierAIDC?.encode(on: &_container, forKey: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		try carrierHRF?.encode(on: &_container, forKey: .carrierHRF, auxiliaryKey: ._carrierHRF)
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try entryType?.encode(on: &_container, forKey: .entryType, auxiliaryKey: ._entryType)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceUdiCarrier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return carrierAIDC == _other.carrierAIDC
		    && carrierHRF == _other.carrierHRF
		    && deviceIdentifier == _other.deviceIdentifier
		    && entryType == _other.entryType
		    && issuer == _other.issuer
		    && jurisdiction == _other.jurisdiction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(carrierAIDC)
		hasher.combine(carrierHRF)
		hasher.combine(deviceIdentifier)
		hasher.combine(entryType)
		hasher.combine(issuer)
		hasher.combine(jurisdiction)
	}
}

/**
 The actual design of the device or software version running on the device.
 */
open class DeviceVersion: BackboneElement {
	
	/// The type of the device version, e.g. manufacturer, approved, internal
	public var type: CodeableConcept?
	
	/// The hardware or software module of the device to which the version applies
	public var component: Identifier?
	
	/// The date the version was installed on the device
	public var installDate: FHIRPrimitive<DateTime>?
	
	/// The version text
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		component: Identifier? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		installDate: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(value: value)
		self.component = component
		self.`extension` = `extension`
		self.id = id
		self.installDate = installDate
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case installDate; case _installDate
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try Identifier(from: _container, forKeyIfPresent: .component)
		self.installDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .installDate, auxiliaryKey: ._installDate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component?.encode(on: &_container, forKey: .component)
		try installDate?.encode(on: &_container, forKey: .installDate, auxiliaryKey: ._installDate)
		try type?.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceVersion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return component == _other.component
		    && installDate == _other.installDate
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(component)
		hasher.combine(installDate)
		hasher.combine(type)
		hasher.combine(value)
	}
}
