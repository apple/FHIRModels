//
//  DeviceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DeviceDefinition)
//  Copyright 2023 Apple Inc.
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
	
	/// Additional information to describe the device
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Regulatory identifier(s) associated with this device
	public var regulatoryIdentifier: [DeviceDefinitionRegulatoryIdentifier]?
	
	/// The part number or catalog number of the device
	public var partNumber: FHIRPrimitive<FHIRString>?
	
	/// Name of device manufacturer
	public var manufacturer: Reference?
	
	/// The name or names of the device as given by the manufacturer
	public var deviceName: [DeviceDefinitionDeviceName]?
	
	/// The catalog or model number for the device for example as defined by the manufacturer
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// What kind of device or device system this is
	public var classification: [DeviceDefinitionClassification]?
	
	/// Identifies the standards, specifications, or formal guidances for the capabilities supported by the device
	public var conformsTo: [DeviceDefinitionConformsTo]?
	
	/// A device, part of the current one
	public var hasPart: [DeviceDefinitionHasPart]?
	
	/// Information about the packaging of the device, i.e. how the device is packaged
	public var packaging: [DeviceDefinitionPackaging]?
	
	/// The version of the device or software
	public var version: [DeviceDefinitionVersion]?
	
	/// Safety characteristics of the device
	public var safety: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// Language code for the human-readable text strings produced by the device (all supported)
	public var languageCode: [CodeableConcept]?
	
	/// Inherent, essentially fixed, characteristics of this kind of device, e.g., time properties, size, etc
	public var property: [DeviceDefinitionProperty]?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// An associated device, attached to, used with, communicating with or linking a previous or new device model to
	/// the focal device
	public var link: [DeviceDefinitionLink]?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// A substance used to create the material(s) of which the device is made
	public var material: [DeviceDefinitionMaterial]?
	
	/// Indicates the production identifier(s) that are expected to appear in the UDI carrier on the device label.
	public var productionIdentifierInUDI: [FHIRPrimitive<DeviceProductionIdentifierInUDI>]?
	
	/// Information aimed at providing directions for the usage of this model of device
	public var guideline: DeviceDefinitionGuideline?
	
	/// Tracking of latest field safety corrective action
	public var correctiveAction: DeviceDefinitionCorrectiveAction?
	
	/// Billing code or reference associated with the device
	public var chargeItem: [DeviceDefinitionChargeItem]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		chargeItem: [DeviceDefinitionChargeItem]? = nil,
		classification: [DeviceDefinitionClassification]? = nil,
		conformsTo: [DeviceDefinitionConformsTo]? = nil,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		correctiveAction: DeviceDefinitionCorrectiveAction? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		deviceName: [DeviceDefinitionDeviceName]? = nil,
		`extension`: [Extension]? = nil,
		guideline: DeviceDefinitionGuideline? = nil,
		hasPart: [DeviceDefinitionHasPart]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		languageCode: [CodeableConcept]? = nil,
		link: [DeviceDefinitionLink]? = nil,
		manufacturer: Reference? = nil,
		material: [DeviceDefinitionMaterial]? = nil,
		meta: Meta? = nil,
		modelNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		owner: Reference? = nil,
		packaging: [DeviceDefinitionPackaging]? = nil,
		partNumber: FHIRPrimitive<FHIRString>? = nil,
		productionIdentifierInUDI: [FHIRPrimitive<DeviceProductionIdentifierInUDI>]? = nil,
		property: [DeviceDefinitionProperty]? = nil,
		regulatoryIdentifier: [DeviceDefinitionRegulatoryIdentifier]? = nil,
		safety: [CodeableConcept]? = nil,
		shelfLifeStorage: [ProductShelfLife]? = nil,
		text: Narrative? = nil,
		udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]? = nil,
		version: [DeviceDefinitionVersion]? = nil
	) {
		self.init()
		self.chargeItem = chargeItem
		self.classification = classification
		self.conformsTo = conformsTo
		self.contact = contact
		self.contained = contained
		self.correctiveAction = correctiveAction
		self.description_fhir = description_fhir
		self.deviceName = deviceName
		self.`extension` = `extension`
		self.guideline = guideline
		self.hasPart = hasPart
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.languageCode = languageCode
		self.link = link
		self.manufacturer = manufacturer
		self.material = material
		self.meta = meta
		self.modelNumber = modelNumber
		self.modifierExtension = modifierExtension
		self.note = note
		self.owner = owner
		self.packaging = packaging
		self.partNumber = partNumber
		self.productionIdentifierInUDI = productionIdentifierInUDI
		self.property = property
		self.regulatoryIdentifier = regulatoryIdentifier
		self.safety = safety
		self.shelfLifeStorage = shelfLifeStorage
		self.text = text
		self.udiDeviceIdentifier = udiDeviceIdentifier
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chargeItem
		case classification
		case conformsTo
		case contact
		case correctiveAction
		case description_fhir = "description"; case _description_fhir = "_description"
		case deviceName
		case guideline
		case hasPart
		case identifier
		case languageCode
		case link
		case manufacturer
		case material
		case modelNumber; case _modelNumber
		case note
		case owner
		case packaging
		case partNumber; case _partNumber
		case productionIdentifierInUDI; case _productionIdentifierInUDI
		case property
		case regulatoryIdentifier
		case safety
		case shelfLifeStorage
		case udiDeviceIdentifier
		case version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.chargeItem = try [DeviceDefinitionChargeItem](from: _container, forKeyIfPresent: .chargeItem)
		self.classification = try [DeviceDefinitionClassification](from: _container, forKeyIfPresent: .classification)
		self.conformsTo = try [DeviceDefinitionConformsTo](from: _container, forKeyIfPresent: .conformsTo)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.correctiveAction = try DeviceDefinitionCorrectiveAction(from: _container, forKeyIfPresent: .correctiveAction)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.deviceName = try [DeviceDefinitionDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.guideline = try DeviceDefinitionGuideline(from: _container, forKeyIfPresent: .guideline)
		self.hasPart = try [DeviceDefinitionHasPart](from: _container, forKeyIfPresent: .hasPart)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.languageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .languageCode)
		self.link = try [DeviceDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [DeviceDefinitionMaterial](from: _container, forKeyIfPresent: .material)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.packaging = try [DeviceDefinitionPackaging](from: _container, forKeyIfPresent: .packaging)
		self.partNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .partNumber, auxiliaryKey: ._partNumber)
		self.productionIdentifierInUDI = try [FHIRPrimitive<DeviceProductionIdentifierInUDI>](from: _container, forKeyIfPresent: .productionIdentifierInUDI, auxiliaryKey: ._productionIdentifierInUDI)
		self.property = try [DeviceDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.regulatoryIdentifier = try [DeviceDefinitionRegulatoryIdentifier](from: _container, forKeyIfPresent: .regulatoryIdentifier)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.shelfLifeStorage = try [ProductShelfLife](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.udiDeviceIdentifier = try [DeviceDefinitionUdiDeviceIdentifier](from: _container, forKeyIfPresent: .udiDeviceIdentifier)
		self.version = try [DeviceDefinitionVersion](from: _container, forKeyIfPresent: .version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try chargeItem?.encode(on: &_container, forKey: .chargeItem)
		try classification?.encode(on: &_container, forKey: .classification)
		try conformsTo?.encode(on: &_container, forKey: .conformsTo)
		try contact?.encode(on: &_container, forKey: .contact)
		try correctiveAction?.encode(on: &_container, forKey: .correctiveAction)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try guideline?.encode(on: &_container, forKey: .guideline)
		try hasPart?.encode(on: &_container, forKey: .hasPart)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try languageCode?.encode(on: &_container, forKey: .languageCode)
		try link?.encode(on: &_container, forKey: .link)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
		try note?.encode(on: &_container, forKey: .note)
		try owner?.encode(on: &_container, forKey: .owner)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try partNumber?.encode(on: &_container, forKey: .partNumber, auxiliaryKey: ._partNumber)
		try productionIdentifierInUDI?.encode(on: &_container, forKey: .productionIdentifierInUDI, auxiliaryKey: ._productionIdentifierInUDI)
		try property?.encode(on: &_container, forKey: .property)
		try regulatoryIdentifier?.encode(on: &_container, forKey: .regulatoryIdentifier)
		try safety?.encode(on: &_container, forKey: .safety)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try udiDeviceIdentifier?.encode(on: &_container, forKey: .udiDeviceIdentifier)
		try version?.encode(on: &_container, forKey: .version)
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
		return chargeItem == _other.chargeItem
		    && classification == _other.classification
		    && conformsTo == _other.conformsTo
		    && contact == _other.contact
		    && correctiveAction == _other.correctiveAction
		    && description_fhir == _other.description_fhir
		    && deviceName == _other.deviceName
		    && guideline == _other.guideline
		    && hasPart == _other.hasPart
		    && identifier == _other.identifier
		    && languageCode == _other.languageCode
		    && link == _other.link
		    && manufacturer == _other.manufacturer
		    && material == _other.material
		    && modelNumber == _other.modelNumber
		    && note == _other.note
		    && owner == _other.owner
		    && packaging == _other.packaging
		    && partNumber == _other.partNumber
		    && productionIdentifierInUDI == _other.productionIdentifierInUDI
		    && property == _other.property
		    && regulatoryIdentifier == _other.regulatoryIdentifier
		    && safety == _other.safety
		    && shelfLifeStorage == _other.shelfLifeStorage
		    && udiDeviceIdentifier == _other.udiDeviceIdentifier
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chargeItem)
		hasher.combine(classification)
		hasher.combine(conformsTo)
		hasher.combine(contact)
		hasher.combine(correctiveAction)
		hasher.combine(description_fhir)
		hasher.combine(deviceName)
		hasher.combine(guideline)
		hasher.combine(hasPart)
		hasher.combine(identifier)
		hasher.combine(languageCode)
		hasher.combine(link)
		hasher.combine(manufacturer)
		hasher.combine(material)
		hasher.combine(modelNumber)
		hasher.combine(note)
		hasher.combine(owner)
		hasher.combine(packaging)
		hasher.combine(partNumber)
		hasher.combine(productionIdentifierInUDI)
		hasher.combine(property)
		hasher.combine(regulatoryIdentifier)
		hasher.combine(safety)
		hasher.combine(shelfLifeStorage)
		hasher.combine(udiDeviceIdentifier)
		hasher.combine(version)
	}
}

/**
 Billing code or reference associated with the device.
 */
open class DeviceDefinitionChargeItem: BackboneElement {
	
	/// The code or reference for the charge item
	public var chargeItemCode: CodeableReference
	
	/// Coefficient applicable to the billing code
	public var count: Quantity
	
	/// A specific time period in which this charge item applies
	public var effectivePeriod: Period?
	
	/// The context to which this charge item applies
	public var useContext: [UsageContext]?
	
	/// Designated initializer taking all required properties
	public init(chargeItemCode: CodeableReference, count: Quantity) {
		self.chargeItemCode = chargeItemCode
		self.count = count
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		chargeItemCode: CodeableReference,
		count: Quantity,
		effectivePeriod: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		useContext: [UsageContext]? = nil
	) {
		self.init(chargeItemCode: chargeItemCode, count: count)
		self.effectivePeriod = effectivePeriod
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.useContext = useContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chargeItemCode
		case count
		case effectivePeriod
		case useContext
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.chargeItemCode = try CodeableReference(from: _container, forKey: .chargeItemCode)
		self.count = try Quantity(from: _container, forKey: .count)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try chargeItemCode.encode(on: &_container, forKey: .chargeItemCode)
		try count.encode(on: &_container, forKey: .count)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionChargeItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return chargeItemCode == _other.chargeItemCode
		    && count == _other.count
		    && effectivePeriod == _other.effectivePeriod
		    && useContext == _other.useContext
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chargeItemCode)
		hasher.combine(count)
		hasher.combine(effectivePeriod)
		hasher.combine(useContext)
	}
}

/**
 What kind of device or device system this is.
 */
open class DeviceDefinitionClassification: BackboneElement {
	
	/// A classification or risk class of the device model
	public var type: CodeableConcept
	
	/// Further information qualifying this classification of the device model
	public var justification: [RelatedArtifact]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		justification: [RelatedArtifact]? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.justification = justification
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case justification
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.justification = try [RelatedArtifact](from: _container, forKeyIfPresent: .justification)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try justification?.encode(on: &_container, forKey: .justification)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionClassification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return justification == _other.justification
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(justification)
		hasher.combine(type)
	}
}

/**
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device.
 
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device. The device
 may be certified as conformant to these specifications e.g., communication, performance, process, measurement, or
 specialization standards.
 */
open class DeviceDefinitionConformsTo: BackboneElement {
	
	/// Describes the common type of the standard, specification, or formal guidance
	public var category: CodeableConcept?
	
	/// Identifies the standard, specification, or formal guidance that the device adheres to the Device Specification
	/// type
	public var specification: CodeableConcept
	
	/// The specific form or variant of the standard, specification or formal guidance
	public var version: [FHIRPrimitive<FHIRString>]?
	
	/// Standard, regulation, certification, or guidance website, document, or other publication, or similar, supporting
	/// the conformance
	public var source: [RelatedArtifact]?
	
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
		source: [RelatedArtifact]? = nil,
		specification: CodeableConcept,
		version: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.init(specification: specification)
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case source
		case specification
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.source = try [RelatedArtifact](from: _container, forKeyIfPresent: .source)
		self.specification = try CodeableConcept(from: _container, forKey: .specification)
		self.version = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try source?.encode(on: &_container, forKey: .source)
		try specification.encode(on: &_container, forKey: .specification)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionConformsTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && source == _other.source
		    && specification == _other.specification
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(source)
		hasher.combine(specification)
		hasher.combine(version)
	}
}

/**
 Tracking of latest field safety corrective action.
 */
open class DeviceDefinitionCorrectiveAction: BackboneElement {
	
	/// Whether the corrective action was a recall
	public var recall: FHIRPrimitive<FHIRBool>
	
	/// The scope of the corrective action - whether the action targeted all units of a given device model, or only a
	/// specific set of batches identified by lot numbers, or individually identified devices identified by the serial
	/// name.
	public var scope: FHIRPrimitive<DeviceCorrectiveActionScope>?
	
	/// Start and end dates of the  corrective action
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(period: Period, recall: FHIRPrimitive<FHIRBool>) {
		self.period = period
		self.recall = recall
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		recall: FHIRPrimitive<FHIRBool>,
		scope: FHIRPrimitive<DeviceCorrectiveActionScope>? = nil
	) {
		self.init(period: period, recall: recall)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.scope = scope
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case recall; case _recall
		case scope; case _scope
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Period(from: _container, forKey: .period)
		self.recall = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .recall, auxiliaryKey: ._recall)
		self.scope = try FHIRPrimitive<DeviceCorrectiveActionScope>(from: _container, forKeyIfPresent: .scope, auxiliaryKey: ._scope)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period.encode(on: &_container, forKey: .period)
		try recall.encode(on: &_container, forKey: .recall, auxiliaryKey: ._recall)
		try scope?.encode(on: &_container, forKey: .scope, auxiliaryKey: ._scope)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionCorrectiveAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && recall == _other.recall
		    && scope == _other.scope
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(recall)
		hasher.combine(scope)
	}
}

/**
 The name or names of the device as given by the manufacturer.
 */
open class DeviceDefinitionDeviceName: BackboneElement {
	
	/// A name that is used to refer to the device
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of deviceName.
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
 Information aimed at providing directions for the usage of this model of device.
 */
open class DeviceDefinitionGuideline: BackboneElement {
	
	/// The circumstances that form the setting for using the device
	public var useContext: [UsageContext]?
	
	/// Detailed written and visual directions for the user on how to use the device
	public var usageInstruction: FHIRPrimitive<FHIRString>?
	
	/// A source of information or reference for this guideline
	public var relatedArtifact: [RelatedArtifact]?
	
	/// A clinical condition for which the device was designed to be used
	public var indication: [CodeableConcept]?
	
	/// A specific situation when a device should not be used because it may cause harm
	public var contraindication: [CodeableConcept]?
	
	/// Specific hazard alert information that a user needs to know before using the device
	public var warning: [CodeableConcept]?
	
	/// A description of the general purpose or medical use of the device or its function
	public var intendedUse: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contraindication: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: [CodeableConcept]? = nil,
		intendedUse: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		usageInstruction: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		warning: [CodeableConcept]? = nil
	) {
		self.init()
		self.contraindication = contraindication
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.intendedUse = intendedUse
		self.modifierExtension = modifierExtension
		self.relatedArtifact = relatedArtifact
		self.usageInstruction = usageInstruction
		self.useContext = useContext
		self.warning = warning
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contraindication
		case indication
		case intendedUse; case _intendedUse
		case relatedArtifact
		case usageInstruction; case _usageInstruction
		case useContext
		case warning
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contraindication = try [CodeableConcept](from: _container, forKeyIfPresent: .contraindication)
		self.indication = try [CodeableConcept](from: _container, forKeyIfPresent: .indication)
		self.intendedUse = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .intendedUse, auxiliaryKey: ._intendedUse)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.usageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usageInstruction, auxiliaryKey: ._usageInstruction)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.warning = try [CodeableConcept](from: _container, forKeyIfPresent: .warning)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try indication?.encode(on: &_container, forKey: .indication)
		try intendedUse?.encode(on: &_container, forKey: .intendedUse, auxiliaryKey: ._intendedUse)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try usageInstruction?.encode(on: &_container, forKey: .usageInstruction, auxiliaryKey: ._usageInstruction)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try warning?.encode(on: &_container, forKey: .warning)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionGuideline else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contraindication == _other.contraindication
		    && indication == _other.indication
		    && intendedUse == _other.intendedUse
		    && relatedArtifact == _other.relatedArtifact
		    && usageInstruction == _other.usageInstruction
		    && useContext == _other.useContext
		    && warning == _other.warning
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contraindication)
		hasher.combine(indication)
		hasher.combine(intendedUse)
		hasher.combine(relatedArtifact)
		hasher.combine(usageInstruction)
		hasher.combine(useContext)
		hasher.combine(warning)
	}
}

/**
 A device, part of the current one.
 
 A device that is part (for example a component) of the present device.
 */
open class DeviceDefinitionHasPart: BackboneElement {
	
	/// Reference to the part
	public var reference: Reference
	
	/// Number of occurrences of the part
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	public init(reference: Reference) {
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference
	) {
		self.init(reference: reference)
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case count; case _count
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.reference = try Reference(from: _container, forKey: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try reference.encode(on: &_container, forKey: .reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionHasPart else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return count == _other.count
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(count)
		hasher.combine(reference)
	}
}

/**
 An associated device, attached to, used with, communicating with or linking a previous or new device model to the focal
 device.
 */
open class DeviceDefinitionLink: BackboneElement {
	
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
		guard let _other = _other as? DeviceDefinitionLink else {
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
		substance: CodeableConcept
	) {
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
 Information about the packaging of the device, i.e. how the device is packaged.
 */
open class DeviceDefinitionPackaging: BackboneElement {
	
	/// Business identifier of the packaged medication
	public var identifier: Identifier?
	
	/// A code that defines the specific type of packaging
	public var type: CodeableConcept?
	
	/// The number of items contained in the package (devices or sub-packages)
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// An organization that distributes the packaged device
	public var distributor: [DeviceDefinitionPackagingDistributor]?
	
	/// Unique Device Identifier (UDI) Barcode string on the packaging
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Allows packages within packages
	public var packaging: [DeviceDefinitionPackaging]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		count: FHIRPrimitive<FHIRInteger>? = nil,
		distributor: [DeviceDefinitionPackagingDistributor]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		packaging: [DeviceDefinitionPackaging]? = nil,
		type: CodeableConcept? = nil,
		udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]? = nil
	) {
		self.init()
		self.count = count
		self.distributor = distributor
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.packaging = packaging
		self.type = type
		self.udiDeviceIdentifier = udiDeviceIdentifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case count; case _count
		case distributor
		case identifier
		case packaging
		case type
		case udiDeviceIdentifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.distributor = try [DeviceDefinitionPackagingDistributor](from: _container, forKeyIfPresent: .distributor)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.packaging = try [DeviceDefinitionPackaging](from: _container, forKeyIfPresent: .packaging)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.udiDeviceIdentifier = try [DeviceDefinitionUdiDeviceIdentifier](from: _container, forKeyIfPresent: .udiDeviceIdentifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try distributor?.encode(on: &_container, forKey: .distributor)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try type?.encode(on: &_container, forKey: .type)
		try udiDeviceIdentifier?.encode(on: &_container, forKey: .udiDeviceIdentifier)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionPackaging else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return count == _other.count
		    && distributor == _other.distributor
		    && identifier == _other.identifier
		    && packaging == _other.packaging
		    && type == _other.type
		    && udiDeviceIdentifier == _other.udiDeviceIdentifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(count)
		hasher.combine(distributor)
		hasher.combine(identifier)
		hasher.combine(packaging)
		hasher.combine(type)
		hasher.combine(udiDeviceIdentifier)
	}
}

/**
 An organization that distributes the packaged device.
 */
open class DeviceDefinitionPackagingDistributor: BackboneElement {
	
	/// Distributor's human-readable name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Distributor as an Organization resource
	public var organizationReference: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		organizationReference: [Reference]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.organizationReference = organizationReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case organizationReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.organizationReference = try [Reference](from: _container, forKeyIfPresent: .organizationReference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try organizationReference?.encode(on: &_container, forKey: .organizationReference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionPackagingDistributor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && organizationReference == _other.organizationReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(organizationReference)
	}
}

/**
 Inherent, essentially fixed, characteristics of this kind of device, e.g., time properties, size, etc.
 
 Static or essentially fixed characteristics or features of this kind of device that are otherwise not captured in more
 specific attributes, e.g., time or timing attributes, resolution, accuracy, and physical attributes.
 */
open class DeviceDefinitionProperty: BackboneElement {
	
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
		guard let _other = _other as? DeviceDefinitionProperty else {
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
 Regulatory identifier(s) associated with this device.
 
 Identifier associated with the regulatory documentation (certificates, technical documentation, post-market
 surveillance documentation and reports) of a set of device models sharing the same intended purpose, risk class and
 essential design and manufacturing characteristics. One example is the Basic UDI-DI in Europe.
 */
open class DeviceDefinitionRegulatoryIdentifier: BackboneElement {
	
	/// The type of identifier itself.
	public var type: FHIRPrimitive<DeviceRegulatoryIdentifierType>
	
	/// The identifier itself
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// The organization that issued this identifier
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// The jurisdiction to which the deviceIdentifier applies
	public var jurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(deviceIdentifier: FHIRPrimitive<FHIRString>, issuer: FHIRPrimitive<FHIRURI>, jurisdiction: FHIRPrimitive<FHIRURI>, type: FHIRPrimitive<DeviceRegulatoryIdentifierType>) {
		self.deviceIdentifier = deviceIdentifier
		self.issuer = issuer
		self.jurisdiction = jurisdiction
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		deviceIdentifier: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issuer: FHIRPrimitive<FHIRURI>,
		jurisdiction: FHIRPrimitive<FHIRURI>,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<DeviceRegulatoryIdentifierType>
	) {
		self.init(deviceIdentifier: deviceIdentifier, issuer: issuer, jurisdiction: jurisdiction, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case deviceIdentifier; case _deviceIdentifier
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.type = try FHIRPrimitive<DeviceRegulatoryIdentifierType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionRegulatoryIdentifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return deviceIdentifier == _other.deviceIdentifier
		    && issuer == _other.issuer
		    && jurisdiction == _other.jurisdiction
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(deviceIdentifier)
		hasher.combine(issuer)
		hasher.combine(jurisdiction)
		hasher.combine(type)
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
	/// and jurisdiction provided in the DeviceDefinition.udiDeviceIdentifier
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// The organization that assigns the identifier algorithm
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// The jurisdiction to which the deviceIdentifier applies
	public var jurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Indicates whether and when the device is available on the market
	public var marketDistribution: [DeviceDefinitionUdiDeviceIdentifierMarketDistribution]?
	
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
		marketDistribution: [DeviceDefinitionUdiDeviceIdentifierMarketDistribution]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(deviceIdentifier: deviceIdentifier, issuer: issuer, jurisdiction: jurisdiction)
		self.`extension` = `extension`
		self.id = id
		self.marketDistribution = marketDistribution
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case deviceIdentifier; case _deviceIdentifier
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
		case marketDistribution
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.marketDistribution = try [DeviceDefinitionUdiDeviceIdentifierMarketDistribution](from: _container, forKeyIfPresent: .marketDistribution)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try marketDistribution?.encode(on: &_container, forKey: .marketDistribution)
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
		    && marketDistribution == _other.marketDistribution
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(deviceIdentifier)
		hasher.combine(issuer)
		hasher.combine(jurisdiction)
		hasher.combine(marketDistribution)
	}
}

/**
 Indicates whether and when the device is available on the market.
 
 Indicates where and when the device is available on the market.
 */
open class DeviceDefinitionUdiDeviceIdentifierMarketDistribution: BackboneElement {
	
	/// Begin and end dates for the commercial distribution of the device
	public var marketPeriod: Period
	
	/// National state or territory where the device is commercialized
	public var subJurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(marketPeriod: Period, subJurisdiction: FHIRPrimitive<FHIRURI>) {
		self.marketPeriod = marketPeriod
		self.subJurisdiction = subJurisdiction
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		marketPeriod: Period,
		modifierExtension: [Extension]? = nil,
		subJurisdiction: FHIRPrimitive<FHIRURI>
	) {
		self.init(marketPeriod: marketPeriod, subJurisdiction: subJurisdiction)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case marketPeriod
		case subJurisdiction; case _subJurisdiction
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.marketPeriod = try Period(from: _container, forKey: .marketPeriod)
		self.subJurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .subJurisdiction, auxiliaryKey: ._subJurisdiction)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try marketPeriod.encode(on: &_container, forKey: .marketPeriod)
		try subJurisdiction.encode(on: &_container, forKey: .subJurisdiction, auxiliaryKey: ._subJurisdiction)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDefinitionUdiDeviceIdentifierMarketDistribution else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return marketPeriod == _other.marketPeriod
		    && subJurisdiction == _other.subJurisdiction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(marketPeriod)
		hasher.combine(subJurisdiction)
	}
}

/**
 The version of the device or software.
 */
open class DeviceDefinitionVersion: BackboneElement {
	
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
		value: FHIRPrimitive<FHIRString>
	) {
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
		guard let _other = _other as? DeviceDefinitionVersion else {
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
