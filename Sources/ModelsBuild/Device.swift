//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Device)
//  Copyright 2024 Apple Inc.
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
	
	/// The reference to the definition for the device
	public var definition: Reference?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiCarrier: [DeviceUdiCarrier]?
	
	/// The Device record status. This is not the status of the device like availability.
	public var status: FHIRPrimitive<FHIRDeviceStatus>?
	
	/// lost | damaged | destroyed | available
	public var availabilityStatus: CodeableConcept?
	
	/// An identifier that supports traceability to the event during which material in this product from one or more
	/// biological entities was obtained or pooled
	public var biologicalSourceEvent: Identifier?
	
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
	public var name: [DeviceName]?
	
	/// The manufacturer's model number for the device
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// The part number or catalog number of the device
	public var partNumber: FHIRPrimitive<FHIRString>?
	
	/// Indicates a high-level grouping of the device
	public var category: [CodeableConcept]?
	
	/// The kind or type of device
	public var type: [CodeableConcept]?
	
	/// The actual design of the device or software version running on the device
	public var deviceVersion: [DeviceDeviceVersion]?
	
	/// Identifies the standards, specifications, or formal guidances for the capabilities supported by the device
	public var conformsTo: [DeviceConformsTo]?
	
	/// Inherent, essentially fixed, characteristics of the device.  e.g., time properties, size, material, etc.
	public var property: [DeviceProperty]?
	
	/// The designated condition for performing a task
	public var mode: CodeableConcept?
	
	/// The series of occurrences that repeats during the operation of the device
	public var cycle: Count?
	
	/// A measurement of time during the device's operation (e.g., days, hours, mins, etc.)
	public var duration: Duration?
	
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
	
	/// Linked device acting as a communication/data collector, translator or controller
	public var gateway: [CodeableReference]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Safety Characteristics of Device
	public var safety: [CodeableConcept]?
	
	/// The higher level or encompassing device that this device is a logical part of
	public var parent: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		availabilityStatus: CodeableConcept? = nil,
		biologicalSourceEvent: Identifier? = nil,
		category: [CodeableConcept]? = nil,
		conformsTo: [DeviceConformsTo]? = nil,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		cycle: Count? = nil,
		definition: Reference? = nil,
		deviceVersion: [DeviceDeviceVersion]? = nil,
		duration: Duration? = nil,
		endpoint: [Reference]? = nil,
		expirationDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		gateway: [CodeableReference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		manufactureDate: FHIRPrimitive<DateTime>? = nil,
		manufacturer: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		mode: CodeableConcept? = nil,
		modelNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: [DeviceName]? = nil,
		note: [Annotation]? = nil,
		owner: Reference? = nil,
		parent: Reference? = nil,
		partNumber: FHIRPrimitive<FHIRString>? = nil,
		property: [DeviceProperty]? = nil,
		safety: [CodeableConcept]? = nil,
		serialNumber: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<FHIRDeviceStatus>? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil,
		udiCarrier: [DeviceUdiCarrier]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init()
		self.availabilityStatus = availabilityStatus
		self.biologicalSourceEvent = biologicalSourceEvent
		self.category = category
		self.conformsTo = conformsTo
		self.contact = contact
		self.contained = contained
		self.cycle = cycle
		self.definition = definition
		self.deviceVersion = deviceVersion
		self.duration = duration
		self.endpoint = endpoint
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.gateway = gateway
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.lotNumber = lotNumber
		self.manufactureDate = manufactureDate
		self.manufacturer = manufacturer
		self.meta = meta
		self.mode = mode
		self.modelNumber = modelNumber
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.owner = owner
		self.parent = parent
		self.partNumber = partNumber
		self.property = property
		self.safety = safety
		self.serialNumber = serialNumber
		self.status = status
		self.text = text
		self.type = type
		self.udiCarrier = udiCarrier
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availabilityStatus
		case biologicalSourceEvent
		case category
		case conformsTo
		case contact
		case cycle
		case definition
		case deviceVersion
		case duration
		case endpoint
		case expirationDate; case _expirationDate
		case gateway
		case identifier
		case location
		case lotNumber; case _lotNumber
		case manufactureDate; case _manufactureDate
		case manufacturer; case _manufacturer
		case mode
		case modelNumber; case _modelNumber
		case name
		case note
		case owner
		case parent
		case partNumber; case _partNumber
		case property
		case safety
		case serialNumber; case _serialNumber
		case status; case _status
		case type
		case udiCarrier
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.availabilityStatus = try CodeableConcept(from: _container, forKeyIfPresent: .availabilityStatus)
		self.biologicalSourceEvent = try Identifier(from: _container, forKeyIfPresent: .biologicalSourceEvent)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.conformsTo = try [DeviceConformsTo](from: _container, forKeyIfPresent: .conformsTo)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.cycle = try Count(from: _container, forKeyIfPresent: .cycle)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.deviceVersion = try [DeviceDeviceVersion](from: _container, forKeyIfPresent: .deviceVersion)
		self.duration = try Duration(from: _container, forKeyIfPresent: .duration)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.gateway = try [CodeableReference](from: _container, forKeyIfPresent: .gateway)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufactureDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .manufactureDate, auxiliaryKey: ._manufactureDate)
		self.manufacturer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .manufacturer, auxiliaryKey: ._manufacturer)
		self.mode = try CodeableConcept(from: _container, forKeyIfPresent: .mode)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
		self.name = try [DeviceName](from: _container, forKeyIfPresent: .name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.partNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .partNumber, auxiliaryKey: ._partNumber)
		self.property = try [DeviceProperty](from: _container, forKeyIfPresent: .property)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.serialNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serialNumber, auxiliaryKey: ._serialNumber)
		self.status = try FHIRPrimitive<FHIRDeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udiCarrier = try [DeviceUdiCarrier](from: _container, forKeyIfPresent: .udiCarrier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try availabilityStatus?.encode(on: &_container, forKey: .availabilityStatus)
		try biologicalSourceEvent?.encode(on: &_container, forKey: .biologicalSourceEvent)
		try category?.encode(on: &_container, forKey: .category)
		try conformsTo?.encode(on: &_container, forKey: .conformsTo)
		try contact?.encode(on: &_container, forKey: .contact)
		try cycle?.encode(on: &_container, forKey: .cycle)
		try definition?.encode(on: &_container, forKey: .definition)
		try deviceVersion?.encode(on: &_container, forKey: .deviceVersion)
		try duration?.encode(on: &_container, forKey: .duration)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try gateway?.encode(on: &_container, forKey: .gateway)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufactureDate?.encode(on: &_container, forKey: .manufactureDate, auxiliaryKey: ._manufactureDate)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer, auxiliaryKey: ._manufacturer)
		try mode?.encode(on: &_container, forKey: .mode)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
		try name?.encode(on: &_container, forKey: .name)
		try note?.encode(on: &_container, forKey: .note)
		try owner?.encode(on: &_container, forKey: .owner)
		try parent?.encode(on: &_container, forKey: .parent)
		try partNumber?.encode(on: &_container, forKey: .partNumber, auxiliaryKey: ._partNumber)
		try property?.encode(on: &_container, forKey: .property)
		try safety?.encode(on: &_container, forKey: .safety)
		try serialNumber?.encode(on: &_container, forKey: .serialNumber, auxiliaryKey: ._serialNumber)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try udiCarrier?.encode(on: &_container, forKey: .udiCarrier)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
		return availabilityStatus == _other.availabilityStatus
		    && biologicalSourceEvent == _other.biologicalSourceEvent
		    && category == _other.category
		    && conformsTo == _other.conformsTo
		    && contact == _other.contact
		    && cycle == _other.cycle
		    && definition == _other.definition
		    && deviceVersion == _other.deviceVersion
		    && duration == _other.duration
		    && endpoint == _other.endpoint
		    && expirationDate == _other.expirationDate
		    && gateway == _other.gateway
		    && identifier == _other.identifier
		    && location == _other.location
		    && lotNumber == _other.lotNumber
		    && manufactureDate == _other.manufactureDate
		    && manufacturer == _other.manufacturer
		    && mode == _other.mode
		    && modelNumber == _other.modelNumber
		    && name == _other.name
		    && note == _other.note
		    && owner == _other.owner
		    && parent == _other.parent
		    && partNumber == _other.partNumber
		    && property == _other.property
		    && safety == _other.safety
		    && serialNumber == _other.serialNumber
		    && status == _other.status
		    && type == _other.type
		    && udiCarrier == _other.udiCarrier
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(availabilityStatus)
		hasher.combine(biologicalSourceEvent)
		hasher.combine(category)
		hasher.combine(conformsTo)
		hasher.combine(contact)
		hasher.combine(cycle)
		hasher.combine(definition)
		hasher.combine(deviceVersion)
		hasher.combine(duration)
		hasher.combine(endpoint)
		hasher.combine(expirationDate)
		hasher.combine(gateway)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(lotNumber)
		hasher.combine(manufactureDate)
		hasher.combine(manufacturer)
		hasher.combine(mode)
		hasher.combine(modelNumber)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(owner)
		hasher.combine(parent)
		hasher.combine(partNumber)
		hasher.combine(property)
		hasher.combine(safety)
		hasher.combine(serialNumber)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(udiCarrier)
		hasher.combine(url)
	}
}

/**
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device.
 
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device. The device
 may be certified as conformant to these specifications e.g., communication, performance, process, measurement, or
 specialization standards.
 */
open class DeviceConformsTo: BackboneElement {
	
	/// Describes the common type of the standard, specification, or formal guidance.  communication | performance |
	/// measurement
	public var category: CodeableConcept?
	
	/// Identifies the standard, specification, or formal guidance that the device adheres to
	public var specification: CodeableConcept
	
	/// Specific form or variant of the standard
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(specification: CodeableConcept) {
		self.specification = specification
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		specification: CodeableConcept,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(specification: specification)
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case specification
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.specification = try CodeableConcept(from: _container, forKey: .specification)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try specification.encode(on: &_container, forKey: .specification)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceConformsTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && specification == _other.specification
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(specification)
		hasher.combine(version)
	}
}

/**
 The actual design of the device or software version running on the device.
 */
open class DeviceDeviceVersion: BackboneElement {
	
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
		guard let _other = _other as? DeviceDeviceVersion else {
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

/**
 The name or names of the device as known to the manufacturer and/or patient.
 
 This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person
 describing the Device.  This typically would be used when a person provides the name(s) or when the device represents
 one of the names available from DeviceDefinition.
 */
open class DeviceName: BackboneElement {
	
	/// The term that names the device
	public var value: FHIRPrimitive<FHIRString>
	
	/// registered-name | user-friendly-name | patient-reported-name
	public var type: CodeableConcept
	
	/// The preferred device name
	public var display: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: FHIRPrimitive<FHIRString>) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		display: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(type: type, value: value)
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case display; case _display
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.display = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try type.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return display == _other.display
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(display)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Inherent, essentially fixed, characteristics of the device.  e.g., time properties, size, material, etc..
 
 Static or essentially fixed characteristics or features of the device (e.g., time or timing attributes, resolution,
 accuracy, intended use or instructions for use, and physical attributes) that are not otherwise captured in more
 specific attributes.
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
	
	/// Value of the property
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
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
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAttachment, CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueInteger, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
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
	
	/// The namespace for the device identifier value
	public var deviceIdentifierSystem: FHIRPrimitive<FHIRURI>?
	
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
		deviceIdentifierSystem: FHIRPrimitive<FHIRURI>? = nil,
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
		self.deviceIdentifierSystem = deviceIdentifierSystem
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
		case deviceIdentifierSystem; case _deviceIdentifierSystem
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
		self.deviceIdentifierSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .deviceIdentifierSystem, auxiliaryKey: ._deviceIdentifierSystem)
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
		try deviceIdentifierSystem?.encode(on: &_container, forKey: .deviceIdentifierSystem, auxiliaryKey: ._deviceIdentifierSystem)
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
		    && deviceIdentifierSystem == _other.deviceIdentifierSystem
		    && entryType == _other.entryType
		    && issuer == _other.issuer
		    && jurisdiction == _other.jurisdiction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(carrierAIDC)
		hasher.combine(carrierHRF)
		hasher.combine(deviceIdentifier)
		hasher.combine(deviceIdentifierSystem)
		hasher.combine(entryType)
		hasher.combine(issuer)
		hasher.combine(jurisdiction)
	}
}
