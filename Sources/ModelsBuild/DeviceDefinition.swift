//
//  DeviceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/DeviceDefinition)
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
 An instance of a medical-related component of a medical device.
 
 The characteristics, operational status and capabilities of a medical-related component of a medical device.
 */
open class DeviceDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceDefinition }
	
	/// All possible types for "manufacturer[x]"
	public enum ManufacturerX: Hashable {
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Name of device manufacturer
	/// One of `manufacturer[x]`
	public var manufacturer: ManufacturerX?
	
	/// The name or names of the device as given by the manufacturer
	public var deviceName: [DeviceDefinitionDeviceName]?
	
	/// The catalog or model number for the device for example as defined by the manufacturer
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// What kind of device or device system this is
	public var type: CodeableConcept?
	
	/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose,
	/// and used for the communication
	public var specialization: [DeviceDefinitionSpecialization]?
	
	/// Available versions
	public var version: [FHIRPrimitive<FHIRString>]?
	
	/// Safety characteristics of the device
	public var safety: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// Physical characteristics to define or specify the product - for example dimensions, color etc.
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// Language code for the human-readable text strings produced by the device (all supported)
	public var languageCode: [CodeableConcept]?
	
	/// Additional capabilities of the device
	public var capability: [DeviceDefinitionCapability]?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties
	public var property: [DeviceDefinitionProperty]?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Access to on-line information
	public var onlineInformation: FHIRPrimitive<FHIRURI>?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number
	/// of devices in the same package of the medicinal product)
	public var quantity: Quantity?
	
	/// The parent device it can be part of
	public var parentDevice: Reference?
	
	/// A substance used to create the material(s) of which the device is made
	public var material: [DeviceDefinitionMaterial]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init()
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
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case capability
		case contact
		case deviceName
		case identifier
		case languageCode
		case manufacturerReference
		case manufacturerString; case _manufacturerString
		case material
		case modelNumber; case _modelNumber
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
		case type
		case udiDeviceIdentifier
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.capability = try [DeviceDefinitionCapability](from: _container, forKeyIfPresent: .capability)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.deviceName = try [DeviceDefinitionDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.languageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .languageCode)
		var _t_manufacturer: ManufacturerX? = nil
		if let manufacturerString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .manufacturerString, auxiliaryKey: ._manufacturerString) {
			if _t_manufacturer != nil {
				throw DecodingError.dataCorruptedError(forKey: .manufacturerString, in: _container, debugDescription: "More than one value provided for \"manufacturer\"")
			}
			_t_manufacturer = .string(manufacturerString)
		}
		if let manufacturerReference = try Reference(from: _container, forKeyIfPresent: .manufacturerReference) {
			if _t_manufacturer != nil {
				throw DecodingError.dataCorruptedError(forKey: .manufacturerReference, in: _container, debugDescription: "More than one value provided for \"manufacturer\"")
			}
			_t_manufacturer = .reference(manufacturerReference)
		}
		self.manufacturer = _t_manufacturer
		self.material = try [DeviceDefinitionMaterial](from: _container, forKeyIfPresent: .material)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
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
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.udiDeviceIdentifier = try [DeviceDefinitionUdiDeviceIdentifier](from: _container, forKeyIfPresent: .udiDeviceIdentifier)
		self.version = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try capability?.encode(on: &_container, forKey: .capability)
		try contact?.encode(on: &_container, forKey: .contact)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try languageCode?.encode(on: &_container, forKey: .languageCode)
		if let _enum = manufacturer {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .manufacturerString, auxiliaryKey: ._manufacturerString)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .manufacturerReference)
			}
		}
		try material?.encode(on: &_container, forKey: .material)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
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
		try type?.encode(on: &_container, forKey: .type)
		try udiDeviceIdentifier?.encode(on: &_container, forKey: .udiDeviceIdentifier)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return capability == _other.capability
		    && contact == _other.contact
		    && deviceName == _other.deviceName
		    && identifier == _other.identifier
		    && languageCode == _other.languageCode
		    && manufacturer == _other.manufacturer
		    && material == _other.material
		    && modelNumber == _other.modelNumber
		    && note == _other.note
		    && onlineInformation == _other.onlineInformation
		    && owner == _other.owner
		    && parentDevice == _other.parentDevice
		    && physicalCharacteristics == _other.physicalCharacteristics
		    && property == _other.property
		    && quantity == _other.quantity
		    && safety == _other.safety
		    && shelfLifeStorage == _other.shelfLifeStorage
		    && specialization == _other.specialization
		    && type == _other.type
		    && udiDeviceIdentifier == _other.udiDeviceIdentifier
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(capability)
		hasher.combine(contact)
		hasher.combine(deviceName)
		hasher.combine(identifier)
		hasher.combine(languageCode)
		hasher.combine(manufacturer)
		hasher.combine(material)
		hasher.combine(modelNumber)
		hasher.combine(note)
		hasher.combine(onlineInformation)
		hasher.combine(owner)
		hasher.combine(parentDevice)
		hasher.combine(physicalCharacteristics)
		hasher.combine(property)
		hasher.combine(quantity)
		hasher.combine(safety)
		hasher.combine(shelfLifeStorage)
		hasher.combine(specialization)
		hasher.combine(type)
		hasher.combine(udiDeviceIdentifier)
		hasher.combine(version)
	}
}

/**
 Additional capabilities of the device.
 
 Additional capabilities that the device is defined or required to have e.g. "water resistant", "long life".
 */
open class DeviceDefinitionCapability: BackboneElement {
	
	/// The type of capability - whether it is a physical attribute, a customization needed
	public var type: CodeableConcept
	
	/// The actual capability of the device
	public var description_fhir: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try [CodeableConcept](from: _container, forKeyIfPresent: .description_fhir)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionCapability else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(type)
	}
}

/**
 The name or names of the device as given by the manufacturer.
 */
open class DeviceDefinitionDeviceName: BackboneElement {
	
	/// A name that is used to refer to the device
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of deviceName.
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
		guard let _other = _other as? DeviceDefinitionDeviceName else {
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
 A substance used to create the material(s) of which the device is made.
 */
open class DeviceDefinitionMaterial: BackboneElement {
	
	/// A relevant substance that the device contains, may contain, or is made of
	public var substance: CodeableConcept
	
	/// Indicates an alternative material of the device
	public var alternate: FHIRPrimitive<FHIRBool>?
	
	/// Whether the substance is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(substance: CodeableConcept) {
		self.substance = substance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allergenicIndicator: FHIRPrimitive<FHIRBool>? = nil,
							alternate: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							substance: CodeableConcept)
	{
		self.init(substance: substance)
		self.allergenicIndicator = allergenicIndicator
		self.alternate = alternate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allergenicIndicator; case _allergenicIndicator
		case alternate; case _alternate
		case substance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.alternate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .alternate, auxiliaryKey: ._alternate)
		self.substance = try CodeableConcept(from: _container, forKey: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try alternate?.encode(on: &_container, forKey: .alternate, auxiliaryKey: ._alternate)
		try substance.encode(on: &_container, forKey: .substance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionMaterial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allergenicIndicator == _other.allergenicIndicator
		    && alternate == _other.alternate
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allergenicIndicator)
		hasher.combine(alternate)
		hasher.combine(substance)
	}
}

/**
 The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
 */
open class DeviceDefinitionProperty: BackboneElement {
	
	/// Code that specifies the property DeviceDefinitionPropetyCode (Extensible)
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
		guard let _other = _other as? DeviceDefinitionProperty else {
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
 */
open class DeviceDefinitionSpecialization: BackboneElement {
	
	/// The standard that is used to operate and communicate
	public var systemType: FHIRPrimitive<FHIRString>
	
	/// The version of the standard that is used to operate and communicate
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(systemType: FHIRPrimitive<FHIRString>) {
		self.systemType = systemType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							systemType: FHIRPrimitive<FHIRString>,
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
		case systemType; case _systemType
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.systemType = try FHIRPrimitive<FHIRString>(from: _container, forKey: .systemType, auxiliaryKey: ._systemType)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try systemType.encode(on: &_container, forKey: .systemType, auxiliaryKey: ._systemType)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionSpecialization else {
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
open class DeviceDefinitionUdiDeviceIdentifier: BackboneElement {
	
	/// The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer
	/// and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// The organization that assigns the identifier algorithm
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// The jurisdiction to which the deviceIdentifier applies
	public var jurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(deviceIdentifier: FHIRPrimitive<FHIRString>, issuer: FHIRPrimitive<FHIRURI>, jurisdiction: FHIRPrimitive<FHIRURI>) {
		self.deviceIdentifier = deviceIdentifier
		self.issuer = issuer
		self.jurisdiction = jurisdiction
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							deviceIdentifier: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							issuer: FHIRPrimitive<FHIRURI>,
							jurisdiction: FHIRPrimitive<FHIRURI>,
							modifierExtension: [Extension]? = nil)
	{
		self.init(deviceIdentifier: deviceIdentifier, issuer: issuer, jurisdiction: jurisdiction)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case deviceIdentifier; case _deviceIdentifier
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionUdiDeviceIdentifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return deviceIdentifier == _other.deviceIdentifier
		    && issuer == _other.issuer
		    && jurisdiction == _other.jurisdiction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(deviceIdentifier)
		hasher.combine(issuer)
		hasher.combine(jurisdiction)
	}
}
