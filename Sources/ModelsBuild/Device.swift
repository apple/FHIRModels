//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Device)
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
	public var definition: Reference?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiCarrier: [DeviceUdiCarrier]?
	
	/// Status of the Device record. This is not the status of the device like availability.
	public var status: FHIRPrimitive<FHIRDeviceStatus>?
	
	/// discarded | obsolete | removed
	public var statusReason: [CodeableConcept]?
	
	/// The distinct identification string
	public var distinctIdentifier: FHIRPrimitive<FHIRString>?
	
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
	
	/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose,
	/// and used for the communication
	public var specialization: [DeviceSpecialization]?
	
	/// The actual design of the device or software version running on the device
	public var version: [DeviceVersion]?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties
	public var property: [DeviceProperty]?
	
	/// Patient to whom Device is affixed
	public var patient: Reference?
	
	/// The status of the device itself - whether it is switched on, or activated, etc
	public var operationalStatus: DeviceOperationalStatus?
	
	/// The state of the usage or application of the device
	public var associationStatus: DeviceAssociationStatus?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Where the device is found
	public var location: Reference?
	
	/// Network address to contact device
	public var url: FHIRPrimitive<FHIRURI>?
	
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
							associationStatus: DeviceAssociationStatus? = nil,
							contact: [ContactPoint]? = nil,
							contained: [ResourceProxy]? = nil,
							definition: Reference? = nil,
							deviceName: [DeviceDeviceName]? = nil,
							displayName: FHIRPrimitive<FHIRString>? = nil,
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
							operationalStatus: DeviceOperationalStatus? = nil,
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
							type: [CodeableConcept]? = nil,
							udiCarrier: [DeviceUdiCarrier]? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							version: [DeviceVersion]? = nil)
	{
		self.init()
		self.associationStatus = associationStatus
		self.contact = contact
		self.contained = contained
		self.definition = definition
		self.deviceName = deviceName
		self.displayName = displayName
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
		self.operationalStatus = operationalStatus
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
		case associationStatus
		case contact
		case definition
		case deviceName
		case displayName; case _displayName
		case distinctIdentifier; case _distinctIdentifier
		case expirationDate; case _expirationDate
		case identifier
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
		case patient
		case property
		case safety
		case serialNumber; case _serialNumber
		case specialization
		case status; case _status
		case statusReason
		case type
		case udiCarrier
		case url; case _url
		case version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associationStatus = try DeviceAssociationStatus(from: _container, forKeyIfPresent: .associationStatus)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.deviceName = try [DeviceDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.displayName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .displayName, auxiliaryKey: ._displayName)
		self.distinctIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .distinctIdentifier, auxiliaryKey: ._distinctIdentifier)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
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
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.property = try [DeviceProperty](from: _container, forKeyIfPresent: .property)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.serialNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serialNumber, auxiliaryKey: ._serialNumber)
		self.specialization = try [DeviceSpecialization](from: _container, forKeyIfPresent: .specialization)
		self.status = try FHIRPrimitive<FHIRDeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
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
		try associationStatus?.encode(on: &_container, forKey: .associationStatus)
		try contact?.encode(on: &_container, forKey: .contact)
		try definition?.encode(on: &_container, forKey: .definition)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try displayName?.encode(on: &_container, forKey: .displayName, auxiliaryKey: ._displayName)
		try distinctIdentifier?.encode(on: &_container, forKey: .distinctIdentifier, auxiliaryKey: ._distinctIdentifier)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		try patient?.encode(on: &_container, forKey: .patient)
		try property?.encode(on: &_container, forKey: .property)
		try safety?.encode(on: &_container, forKey: .safety)
		try serialNumber?.encode(on: &_container, forKey: .serialNumber, auxiliaryKey: ._serialNumber)
		try specialization?.encode(on: &_container, forKey: .specialization)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
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
		return associationStatus == _other.associationStatus
		    && contact == _other.contact
		    && definition == _other.definition
		    && deviceName == _other.deviceName
		    && displayName == _other.displayName
		    && distinctIdentifier == _other.distinctIdentifier
		    && expirationDate == _other.expirationDate
		    && identifier == _other.identifier
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
		    && patient == _other.patient
		    && property == _other.property
		    && safety == _other.safety
		    && serialNumber == _other.serialNumber
		    && specialization == _other.specialization
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && type == _other.type
		    && udiCarrier == _other.udiCarrier
		    && url == _other.url
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associationStatus)
		hasher.combine(contact)
		hasher.combine(definition)
		hasher.combine(deviceName)
		hasher.combine(displayName)
		hasher.combine(distinctIdentifier)
		hasher.combine(expirationDate)
		hasher.combine(identifier)
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
		hasher.combine(patient)
		hasher.combine(property)
		hasher.combine(safety)
		hasher.combine(serialNumber)
		hasher.combine(specialization)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(type)
		hasher.combine(udiCarrier)
		hasher.combine(url)
		hasher.combine(version)
	}
}

/**
 The state of the usage or application of the device.
 
 The state of the usage or application of the device - whether the device is implanted, or explanted, or attached to the
 patient.
 */
open class DeviceAssociationStatus: BackboneElement {
	
	/// implanted|explanted|attached
	public var value: CodeableConcept?
	
	/// The reasons given for the current association status
	public var reason: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: [CodeableConcept]? = nil,
							value: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.value = value
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
		self.value = try CodeableConcept(from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAssociationStatus else {
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
	/// UDILabelName | UserFriendlyName | PatientReportedName | ManufactureDeviceName | ModelName.
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
							type: FHIRPrimitive<DeviceNameType>)
	{
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
 The status of the device itself - whether it is switched on, or activated, etc.
 */
open class DeviceOperationalStatus: BackboneElement {
	
	/// on |off | standby
	public var value: CodeableConcept?
	
	/// The reasons given for the current operational status
	public var reason: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: [CodeableConcept]? = nil,
							value: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.value = value
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
		self.value = try CodeableConcept(from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try value?.encode(on: &_container, forKey: .value)
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
	
	/// Code that specifies the property being represented
	public var type: CodeableConcept
	
	/// Property value as a quantity
	public var valueQuantity: [Quantity]?
	
	/// Property value as a code, e.g., NTP4 (synced to NTP)
	public var valueCode: [CodeableConcept]?
	
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
							valueCode: [CodeableConcept]? = nil,
							valueQuantity: [Quantity]? = nil)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.valueCode = valueCode
		self.valueQuantity = valueQuantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueCode
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.valueCode = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCode)
		self.valueQuantity = try [Quantity](from: _container, forKeyIfPresent: .valueQuantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		try valueCode?.encode(on: &_container, forKey: .valueCode)
		try valueQuantity?.encode(on: &_container, forKey: .valueQuantity)
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
		    && valueCode == _other.valueCode
		    && valueQuantity == _other.valueQuantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(valueCode)
		hasher.combine(valueQuantity)
	}
}

/**
 The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used
 for the communication.
 
 The device function, including in some cases whether or not the functionality conforms to some standard. For example, a
 PHD blood pressure specialization indicates that the device conforms to the IEEE 11073-10407 Blood Pressure
 Specialization. This is NOT an alternate name or an additional descriptive name given by the manufacturer. That would
 be found in the deviceName element.
 In the PHD case, there are 11073 10101 nomenclature codes that define the specialization standards and that will be
 used, for example, in the PHD case for the specialization.systemType element. The specialization.version would be the
 version of the standard if the systemType referred to a standard.
 */
open class DeviceSpecialization: BackboneElement {
	
	/// The standard that is used to operate and communicate
	public var systemType: CodeableConcept
	
	/// The version of the standard that is used to operate and communicate
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(systemType: CodeableConcept) {
		self.systemType = systemType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							systemType: CodeableConcept,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(systemType: systemType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case systemType
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.systemType = try CodeableConcept(from: _container, forKey: .systemType)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try systemType.encode(on: &_container, forKey: .systemType)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceSpecialization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return systemType == _other.systemType
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(systemType)
		hasher.combine(version)
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
	public var deviceIdentifier: FHIRPrimitive<FHIRString>?
	
	/// UDI Issuing Organization
	public var issuer: FHIRPrimitive<FHIRURI>?
	
	/// Regional UDI authority
	public var jurisdiction: FHIRPrimitive<FHIRURI>?
	
	/// UDI Machine Readable Barcode String
	public var carrierAIDC: FHIRPrimitive<Base64Binary>?
	
	/// UDI Human Readable Barcode String
	public var carrierHRF: FHIRPrimitive<FHIRString>?
	
	/// A coded entry to indicate how the data was entered.
	public var entryType: FHIRPrimitive<UDIEntryType>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							carrierAIDC: FHIRPrimitive<Base64Binary>? = nil,
							carrierHRF: FHIRPrimitive<FHIRString>? = nil,
							deviceIdentifier: FHIRPrimitive<FHIRString>? = nil,
							entryType: FHIRPrimitive<UDIEntryType>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							issuer: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: FHIRPrimitive<FHIRURI>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
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
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.carrierAIDC = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		self.carrierHRF = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .carrierHRF, auxiliaryKey: ._carrierHRF)
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.entryType = try FHIRPrimitive<UDIEntryType>(from: _container, forKeyIfPresent: .entryType, auxiliaryKey: ._entryType)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try carrierAIDC?.encode(on: &_container, forKey: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		try carrierHRF?.encode(on: &_container, forKey: .carrierHRF, auxiliaryKey: ._carrierHRF)
		try deviceIdentifier?.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try entryType?.encode(on: &_container, forKey: .entryType, auxiliaryKey: ._entryType)
		try issuer?.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
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
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(value: value)
		self.component = component
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try Identifier(from: _container, forKeyIfPresent: .component)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component?.encode(on: &_container, forKey: .component)
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
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(component)
		hasher.combine(type)
		hasher.combine(value)
	}
}
