//
//  Device.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Device)
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
 
 A manufactured item that is used in the provision of healthcare without being substantially changed through that
 activity. The device may be a medical or non-medical device.
 */
public struct Device: DomainResource {
	
	public static let resourceType: ResourceType = .device
	
	/// Material added to a container device
	public var additive: [DeviceAdditive]?
	
	/// lost | damaged | destroyed | available
	public var availabilityStatus: CodeableConcept?
	
	/// A production identifier of the donor, donation, or pooling event associated with the biological material
	/// incorporated into the device
	public var biologicalSourceEvent: Identifier?
	
	/// Indicates a high-level grouping of the device
	public var category: [CodeableConcept]?
	
	/// Identifies the standards, specifications, or formal guidances for the capabilities supported by the device
	public var conformsTo: [DeviceConformsTo]?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The reference to the definition for the device
	public var definition: FHIRPrimitive<Canonical>?
	
	/// The actual design of the device or software version running on the device
	public var deviceVersion: [DeviceDeviceVersion]?
	
	/// A production identifier that indicates the date and time of expiry of this device (if applicable)
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
	
	/// A production identifier that indicates the Lot number of manufacture
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// A production identifier that indicates the date when the device was made
	public var manufactureDate: FHIRPrimitive<DateTime>?
	
	/// Name of device manufacturer
	public var manufacturer: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// The manufacturer's model number for the device
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The name or names of the device as known to the manufacturer and/or patient
	public var name: [DeviceName]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// The higher level or encompassing device that this device is a logical part of
	public var parent: Reference?
	
	/// The part number or catalog number of the device
	public var partNumber: FHIRPrimitive<FHIRString>?
	
	/// Inherent, essentially fixed, characteristics of the device.  e.g., time properties, size, material, etc.
	public var property: [DeviceProperty]?
	
	/// Safety Characteristics of Device
	public var safety: [CodeableConcept]?
	
	/// A production identifier that indicates the Serial number assigned by the manufacturer
	public var serialNumber: FHIRPrimitive<FHIRString>?
	
	/// The Device record status. This is not the status of the device like availability.
	public var status: FHIRPrimitive<FHIRDeviceStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The kind or type of device
	public var type: [CodeableConcept]?
	
	/// Unique Device Identifier (UDI) value
	public var udiCarrier: [DeviceUdiCarrier]?
	
	/// Designated initializer
	public init(
		additive: [DeviceAdditive]? = nil,
		availabilityStatus: CodeableConcept? = nil,
		biologicalSourceEvent: Identifier? = nil,
		category: [CodeableConcept]? = nil,
		conformsTo: [DeviceConformsTo]? = nil,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		definition: FHIRPrimitive<Canonical>? = nil,
		deviceVersion: [DeviceDeviceVersion]? = nil,
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
		name: [DeviceName]? = nil,
		note: [Annotation]? = nil,
		parent: Reference? = nil,
		partNumber: FHIRPrimitive<FHIRString>? = nil,
		property: [DeviceProperty]? = nil,
		safety: [CodeableConcept]? = nil,
		serialNumber: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<FHIRDeviceStatus>? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil,
		udiCarrier: [DeviceUdiCarrier]? = nil
	) {
		self.additive = additive
		self.availabilityStatus = availabilityStatus
		self.biologicalSourceEvent = biologicalSourceEvent
		self.category = category
		self.conformsTo = conformsTo
		self.contact = contact
		self.contained = contained
		self.definition = definition
		self.deviceVersion = deviceVersion
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
		self.name = name
		self.note = note
		self.parent = parent
		self.partNumber = partNumber
		self.property = property
		self.safety = safety
		self.serialNumber = serialNumber
		self.status = status
		self.text = text
		self.type = type
		self.udiCarrier = udiCarrier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case additive
		case availabilityStatus
		case biologicalSourceEvent
		case category
		case conformsTo
		case contact
		case contained
		case definition; case _definition
		case deviceVersion
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
		case name
		case note
		case parent
		case partNumber; case _partNumber
		case property
		case safety
		case serialNumber; case _serialNumber
		case status; case _status
		case text
		case type
		case udiCarrier
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try [DeviceAdditive](from: _container, forKeyIfPresent: .additive)
		self.availabilityStatus = try CodeableConcept(from: _container, forKeyIfPresent: .availabilityStatus)
		self.biologicalSourceEvent = try Identifier(from: _container, forKeyIfPresent: .biologicalSourceEvent)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.conformsTo = try [DeviceConformsTo](from: _container, forKeyIfPresent: .conformsTo)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.deviceVersion = try [DeviceDeviceVersion](from: _container, forKeyIfPresent: .deviceVersion)
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
		self.name = try [DeviceName](from: _container, forKeyIfPresent: .name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.partNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .partNumber, auxiliaryKey: ._partNumber)
		self.property = try [DeviceProperty](from: _container, forKeyIfPresent: .property)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.serialNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serialNumber, auxiliaryKey: ._serialNumber)
		self.status = try FHIRPrimitive<FHIRDeviceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udiCarrier = try [DeviceUdiCarrier](from: _container, forKeyIfPresent: .udiCarrier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try availabilityStatus?.encode(on: &_container, forKey: .availabilityStatus)
		try biologicalSourceEvent?.encode(on: &_container, forKey: .biologicalSourceEvent)
		try category?.encode(on: &_container, forKey: .category)
		try conformsTo?.encode(on: &_container, forKey: .conformsTo)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try deviceVersion?.encode(on: &_container, forKey: .deviceVersion)
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
		try name?.encode(on: &_container, forKey: .name)
		try note?.encode(on: &_container, forKey: .note)
		try parent?.encode(on: &_container, forKey: .parent)
		try partNumber?.encode(on: &_container, forKey: .partNumber, auxiliaryKey: ._partNumber)
		try property?.encode(on: &_container, forKey: .property)
		try safety?.encode(on: &_container, forKey: .safety)
		try serialNumber?.encode(on: &_container, forKey: .serialNumber, auxiliaryKey: ._serialNumber)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try udiCarrier?.encode(on: &_container, forKey: .udiCarrier)
	}
}

/**
 Material added to a container device.
 
 Material added to a container device (typically used in specimen collection or initial processing).  The material may
 be added by the device manufacturer or by a different party subsequent to manufacturing.
 */
public struct DeviceAdditive: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Quantity of additive substance within container
	public var quantity: Quantity?
	
	/// The additive substance
	public var type: CodeableReference
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		type: CodeableReference
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case quantity
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
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.type = try CodeableReference(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device.
 
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device. The device
 may be certified as conformant to these specifications e.g., communication, performance, process, measurement, or
 specialization standards.
 */
public struct DeviceConformsTo: BackboneElement {
	
	/// Describes the common type of the standard, specification, or formal guidance.  communication | performance |
	/// measurement
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Identifies the standard, specification, or formal guidance that the device adheres to
	public var specification: CodeableConcept
	
	/// Specific form or variant of the standard
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		specification: CodeableConcept,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.specification = specification
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case specification
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.specification = try CodeableConcept(from: _container, forKey: .specification)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try specification.encode(on: &_container, forKey: .specification)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 The actual design of the device or software version running on the device.
 */
public struct DeviceDeviceVersion: BackboneElement {
	
	/// The hardware or software module of the device to which the version applies
	public var component: Identifier?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The date the version was installed on the device
	public var installDate: FHIRPrimitive<DateTime>?
	
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
		installDate: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.component = component
		self.`extension` = `extension`
		self.id = id
		self.installDate = installDate
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case `extension` = "extension"
		case id; case _id
		case installDate; case _installDate
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
		self.installDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .installDate, auxiliaryKey: ._installDate)
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
		try installDate?.encode(on: &_container, forKey: .installDate, auxiliaryKey: ._installDate)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 The name or names of the device as known to the manufacturer and/or patient.
 
 This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person
 describing the Device.  This typically would be used when a person provides the name(s) or when the device represents
 one of the names available from DeviceDefinition.
 */
public struct DeviceName: BackboneElement {
	
	/// The preferred device name
	public var display: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// registered-name | user-friendly-name | patient-reported-name
	public var type: CodeableConcept
	
	/// The term that names the device
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		display: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: FHIRPrimitive<FHIRString>
	) {
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case display; case _display
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
		self.display = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Inherent, essentially fixed, characteristics of the device.  e.g., time properties, size, material, etc..
 
 Static or essentially fixed characteristics or features of the device (e.g., time or timing attributes, resolution,
 accuracy, intended use or instructions for use, and physical attributes) that are not otherwise captured in more
 specific attributes.
 */
public struct DeviceProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code that specifies the property being represented
	public var type: CodeableConcept
	
	/// Value of the property
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
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
		case valueInteger; case _valueInteger
		case valueQuantity
		case valueRange
		case valueString; case _valueString
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
		
		switch value {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
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
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Unique Device Identifier (UDI) value.
 
 Unique Device Identifier (UDI) placed on a device label or package. Note that the Device may include multiple UDIs if
 it is sold in multiple jurisdictions.
 */
public struct DeviceUdiCarrier: BackboneElement {
	
	/// UDI Machine Readable value
	public var carrierAIDC: FHIRPrimitive<Base64Binary>?
	
	/// UDI Human Readable value
	public var carrierHRF: FHIRPrimitive<FHIRString>?
	
	/// Mandatory fixed portion of UDI
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// The namespace for the device identifier value
	public var deviceIdentifierSystem: FHIRPrimitive<FHIRURI>?
	
	/// A coded entry to indicate how the data was entered.
	public var entryType: FHIRPrimitive<UDIEntryType>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// UDI Issuing Organization
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// Regional UDI authority
	public var jurisdiction: FHIRPrimitive<FHIRURI>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
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
		self.carrierAIDC = carrierAIDC
		self.carrierHRF = carrierHRF
		self.deviceIdentifier = deviceIdentifier
		self.deviceIdentifierSystem = deviceIdentifierSystem
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
		case deviceIdentifierSystem; case _deviceIdentifierSystem
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
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.deviceIdentifierSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .deviceIdentifierSystem, auxiliaryKey: ._deviceIdentifierSystem)
		self.entryType = try FHIRPrimitive<UDIEntryType>(from: _container, forKeyIfPresent: .entryType, auxiliaryKey: ._entryType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try carrierAIDC?.encode(on: &_container, forKey: .carrierAIDC, auxiliaryKey: ._carrierAIDC)
		try carrierHRF?.encode(on: &_container, forKey: .carrierHRF, auxiliaryKey: ._carrierHRF)
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try deviceIdentifierSystem?.encode(on: &_container, forKey: .deviceIdentifierSystem, auxiliaryKey: ._deviceIdentifierSystem)
		try entryType?.encode(on: &_container, forKey: .entryType, auxiliaryKey: ._entryType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
