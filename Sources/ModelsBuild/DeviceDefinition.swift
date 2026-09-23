//
//  DeviceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DeviceDefinition)
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
 The definition of a kind of device or device component.
 
 The definition of a kind of device or device component. Typically, this definition corresponds to a device model
 although it may be a broader category of device.
 */
public struct DeviceDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .deviceDefinition
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When DeviceDefinition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Billing code or reference associated with the device
	public var chargeItem: [DeviceDefinitionChargeItem]?
	
	/// What kind of device or device system this is
	public var classification: [DeviceDefinitionClassification]?
	
	/// Identifies the standards, specifications, or formal guidances for the capabilities supported by the device
	public var conformsTo: [DeviceDefinitionConformsTo]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Tracking of latest field safety corrective action
	public var correctiveAction: DeviceDefinitionCorrectiveAction?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the DeviceDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The name or names of the device as given by the manufacturer
	public var deviceName: [DeviceDefinitionDeviceName]?
	
	/// The version of the device or software
	public var deviceVersion: [DeviceDefinitionDeviceVersion]?
	
	/// The effective date range for the DeviceDefinition
	public var effectivePeriod: Period?
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Information aimed at providing directions for the usage of this model of device
	public var guideline: DeviceDefinitionGuideline?
	
	/// A device, part of the current one
	public var hasPart: [DeviceDefinitionHasPart]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the DeviceDefinition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Jurisdiction of the authority that maintains the DeviceDefinition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Date on which the asset content was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// An associated device, attached to, used with, communicating with or linking a previous or new device model to
	/// the focal device
	public var link: [DeviceDefinitionLink]?
	
	/// Name of device manufacturer
	public var manufacturer: Reference?
	
	/// A substance used to create the material(s) of which the device is made
	public var material: [DeviceDefinitionMaterial]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// The catalog or model number for the device for example as defined by the manufacturer
	public var modelNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this DeviceDefinition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Language code for the human-readable text strings produced by the device (all supported)
	public var outputLanguage: [FHIRPrimitive<FHIRString>]?
	
	/// Information about the packaging of the device, i.e. how the device is packaged
	public var packaging: [DeviceDefinitionPackaging]?
	
	/// The part number or catalog number of the device
	public var partNumber: FHIRPrimitive<FHIRString>?
	
	/// lot-number | manufactured-date | serial-number | expiration-date | biological-source | software-version
	public var productionIdentifierInUDI: [CodeableConcept]?
	
	/// Inherent, essentially fixed, characteristics of this kind of device, e.g., time properties, size, etc
	public var property: [DeviceDefinitionProperty]?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this DeviceDefinition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Regulatory identifier(s) associated with this device
	public var regulatoryIdentifier: [DeviceDefinitionRegulatoryIdentifier]?
	
	/// Safety characteristics of the device
	public var safety: [CodeableConcept]?
	
	/// Shelf Life and storage information
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// The current state of this DeviceDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this DeviceDefinition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Unique Device Identifier (UDI) Barcode string
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Canonical identifier for this DeviceDefinition, represented as an absolute URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the DeviceDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		chargeItem: [DeviceDefinitionChargeItem]? = nil,
		classification: [DeviceDefinitionClassification]? = nil,
		conformsTo: [DeviceDefinitionConformsTo]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		correctiveAction: DeviceDefinitionCorrectiveAction? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		deviceName: [DeviceDefinitionDeviceName]? = nil,
		deviceVersion: [DeviceDefinitionDeviceVersion]? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		guideline: DeviceDefinitionGuideline? = nil,
		hasPart: [DeviceDefinitionHasPart]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		link: [DeviceDefinitionLink]? = nil,
		manufacturer: Reference? = nil,
		material: [DeviceDefinitionMaterial]? = nil,
		meta: Meta? = nil,
		modelNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		outputLanguage: [FHIRPrimitive<FHIRString>]? = nil,
		packaging: [DeviceDefinitionPackaging]? = nil,
		partNumber: FHIRPrimitive<FHIRString>? = nil,
		productionIdentifierInUDI: [CodeableConcept]? = nil,
		property: [DeviceDefinitionProperty]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		regulatoryIdentifier: [DeviceDefinitionRegulatoryIdentifier]? = nil,
		safety: [CodeableConcept]? = nil,
		shelfLifeStorage: [ProductShelfLife]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.chargeItem = chargeItem
		self.classification = classification
		self.conformsTo = conformsTo
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.correctiveAction = correctiveAction
		self.date = date
		self.description_fhir = description_fhir
		self.deviceName = deviceName
		self.deviceVersion = deviceVersion
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.guideline = guideline
		self.hasPart = hasPart
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.link = link
		self.manufacturer = manufacturer
		self.material = material
		self.meta = meta
		self.modelNumber = modelNumber
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.outputLanguage = outputLanguage
		self.packaging = packaging
		self.partNumber = partNumber
		self.productionIdentifierInUDI = productionIdentifierInUDI
		self.property = property
		self.publisher = publisher
		self.purpose = purpose
		self.regulatoryIdentifier = regulatoryIdentifier
		self.safety = safety
		self.shelfLifeStorage = shelfLifeStorage
		self.status = status
		self.text = text
		self.title = title
		self.udiDeviceIdentifier = udiDeviceIdentifier
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case chargeItem
		case classification
		case conformsTo
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case correctiveAction
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case deviceName
		case deviceVersion
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case guideline
		case hasPart
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case link
		case manufacturer
		case material
		case meta
		case modelNumber; case _modelNumber
		case modifierExtension
		case name; case _name
		case note
		case outputLanguage; case _outputLanguage
		case packaging
		case partNumber; case _partNumber
		case productionIdentifierInUDI
		case property
		case publisher; case _publisher
		case purpose; case _purpose
		case regulatoryIdentifier
		case safety
		case shelfLifeStorage
		case status; case _status
		case text
		case title; case _title
		case udiDeviceIdentifier
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.chargeItem = try [DeviceDefinitionChargeItem](from: _container, forKeyIfPresent: .chargeItem)
		self.classification = try [DeviceDefinitionClassification](from: _container, forKeyIfPresent: .classification)
		self.conformsTo = try [DeviceDefinitionConformsTo](from: _container, forKeyIfPresent: .conformsTo)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.correctiveAction = try DeviceDefinitionCorrectiveAction(from: _container, forKeyIfPresent: .correctiveAction)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.deviceName = try [DeviceDefinitionDeviceName](from: _container, forKeyIfPresent: .deviceName)
		self.deviceVersion = try [DeviceDefinitionDeviceVersion](from: _container, forKeyIfPresent: .deviceVersion)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.guideline = try DeviceDefinitionGuideline(from: _container, forKeyIfPresent: .guideline)
		self.hasPart = try [DeviceDefinitionHasPart](from: _container, forKeyIfPresent: .hasPart)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.link = try [DeviceDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.material = try [DeviceDefinitionMaterial](from: _container, forKeyIfPresent: .material)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modelNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modelNumber, auxiliaryKey: ._modelNumber)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outputLanguage = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .outputLanguage, auxiliaryKey: ._outputLanguage)
		self.packaging = try [DeviceDefinitionPackaging](from: _container, forKeyIfPresent: .packaging)
		self.partNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .partNumber, auxiliaryKey: ._partNumber)
		self.productionIdentifierInUDI = try [CodeableConcept](from: _container, forKeyIfPresent: .productionIdentifierInUDI)
		self.property = try [DeviceDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.regulatoryIdentifier = try [DeviceDefinitionRegulatoryIdentifier](from: _container, forKeyIfPresent: .regulatoryIdentifier)
		self.safety = try [CodeableConcept](from: _container, forKeyIfPresent: .safety)
		self.shelfLifeStorage = try [ProductShelfLife](from: _container, forKeyIfPresent: .shelfLifeStorage)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.udiDeviceIdentifier = try [DeviceDefinitionUdiDeviceIdentifier](from: _container, forKeyIfPresent: .udiDeviceIdentifier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try chargeItem?.encode(on: &_container, forKey: .chargeItem)
		try classification?.encode(on: &_container, forKey: .classification)
		try conformsTo?.encode(on: &_container, forKey: .conformsTo)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try correctiveAction?.encode(on: &_container, forKey: .correctiveAction)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try deviceName?.encode(on: &_container, forKey: .deviceName)
		try deviceVersion?.encode(on: &_container, forKey: .deviceVersion)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try guideline?.encode(on: &_container, forKey: .guideline)
		try hasPart?.encode(on: &_container, forKey: .hasPart)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try link?.encode(on: &_container, forKey: .link)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try material?.encode(on: &_container, forKey: .material)
		try meta?.encode(on: &_container, forKey: .meta)
		try modelNumber?.encode(on: &_container, forKey: .modelNumber, auxiliaryKey: ._modelNumber)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try outputLanguage?.encode(on: &_container, forKey: .outputLanguage, auxiliaryKey: ._outputLanguage)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try partNumber?.encode(on: &_container, forKey: .partNumber, auxiliaryKey: ._partNumber)
		try productionIdentifierInUDI?.encode(on: &_container, forKey: .productionIdentifierInUDI)
		try property?.encode(on: &_container, forKey: .property)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try regulatoryIdentifier?.encode(on: &_container, forKey: .regulatoryIdentifier)
		try safety?.encode(on: &_container, forKey: .safety)
		try shelfLifeStorage?.encode(on: &_container, forKey: .shelfLifeStorage)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try udiDeviceIdentifier?.encode(on: &_container, forKey: .udiDeviceIdentifier)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
		switch _enum {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeVersionAlgorithm(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> VersionAlgorithmX? {
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		return _t_versionAlgorithm
	}
}

/**
 Billing code or reference associated with the device.
 */
public struct DeviceDefinitionChargeItem: BackboneElement {
	
	/// The code or reference for the charge item
	public var chargeItemCode: CodeableReference
	
	/// Coefficient applicable to the billing code
	public var count: Quantity
	
	/// A specific time period in which this charge item applies
	public var effectivePeriod: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The context to which this charge item applies
	public var useContext: [UsageContext]?
	
	/// Designated initializer
	public init(
		chargeItemCode: CodeableReference,
		count: Quantity,
		effectivePeriod: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		useContext: [UsageContext]? = nil
	) {
		self.chargeItemCode = chargeItemCode
		self.count = count
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case useContext
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.chargeItemCode = try CodeableReference(from: _container, forKey: .chargeItemCode)
		self.count = try Quantity(from: _container, forKey: .count)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try chargeItemCode.encode(on: &_container, forKey: .chargeItemCode)
		try count.encode(on: &_container, forKey: .count)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try useContext?.encode(on: &_container, forKey: .useContext)
	}
}

/**
 What kind of device or device system this is.
 */
public struct DeviceDefinitionClassification: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Further information qualifying this classification of the device model
	public var justification: [RelatedArtifact]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A classification or risk class of the device model
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		justification: [RelatedArtifact]? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.justification = justification
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case justification
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.justification = try [RelatedArtifact](from: _container, forKeyIfPresent: .justification)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try justification?.encode(on: &_container, forKey: .justification)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device.
 
 Identifies the standards, specifications, or formal guidances for the capabilities supported by the device. The device
 may be certified as conformant to these specifications e.g., communication, performance, process, measurement, or
 specialization standards.
 */
public struct DeviceDefinitionConformsTo: BackboneElement {
	
	/// Describes the common type of the standard, specification, or formal guidance
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Standard, regulation, certification, or guidance website, document, or other publication, or similar, supporting
	/// the conformance
	public var source: [RelatedArtifact]?
	
	/// Identifies the standard, specification, or formal guidance that the device adheres to the Device Specification
	/// type
	public var specification: CodeableConcept
	
	/// The specific form or variant of the standard, specification or formal guidance
	public var version: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: [RelatedArtifact]? = nil,
		specification: CodeableConcept,
		version: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.specification = specification
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
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
		self.source = try [RelatedArtifact](from: _container, forKeyIfPresent: .source)
		self.specification = try CodeableConcept(from: _container, forKey: .specification)
		self.version = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
		try specification.encode(on: &_container, forKey: .specification)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Tracking of latest field safety corrective action.
 */
public struct DeviceDefinitionCorrectiveAction: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Start and end dates of the  corrective action
	public var period: Period
	
	/// Whether the corrective action was a recall
	public var recall: FHIRPrimitive<FHIRBool>
	
	/// The scope of the corrective action - whether the action targeted all units of a given device model, or only a
	/// specific set of batches identified by lot numbers, or individually identified devices identified by the serial
	/// name.
	public var scope: FHIRPrimitive<DeviceCorrectiveActionScope>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		recall: FHIRPrimitive<FHIRBool>,
		scope: FHIRPrimitive<DeviceCorrectiveActionScope>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.recall = recall
		self.scope = scope
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case recall; case _recall
		case scope; case _scope
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
		self.recall = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .recall, auxiliaryKey: ._recall)
		self.scope = try FHIRPrimitive<DeviceCorrectiveActionScope>(from: _container, forKeyIfPresent: .scope, auxiliaryKey: ._scope)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try recall.encode(on: &_container, forKey: .recall, auxiliaryKey: ._recall)
		try scope?.encode(on: &_container, forKey: .scope, auxiliaryKey: ._scope)
	}
}

/**
 The name or names of the device as given by the manufacturer.
 */
public struct DeviceDefinitionDeviceName: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A name that is used to refer to the device
	public var name: FHIRPrimitive<FHIRString>
	
	/// registered-name | user-friendly-name | patient-reported-name
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		type: CodeableConcept
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 The version of the device or software.
 */
public struct DeviceDefinitionDeviceVersion: BackboneElement {
	
	/// The hardware or software module of the device to which the version applies
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

/**
 Information aimed at providing directions for the usage of this model of device.
 */
public struct DeviceDefinitionGuideline: BackboneElement {
	
	/// A specific situation when a device should not be used because it may cause harm
	public var contraindication: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A clinical condition for which the device was designed to be used
	public var indication: [CodeableConcept]?
	
	/// A description of the general purpose or medical use of the device or its function
	public var intendedUse: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A source of information or reference for this guideline
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Detailed written and visual directions for the user on how to use the device
	public var usageInstruction: FHIRPrimitive<FHIRString>?
	
	/// The circumstances that form the setting for using the device
	public var useContext: [UsageContext]?
	
	/// Specific hazard alert information that a user needs to know before using the device
	public var warning: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case indication
		case intendedUse; case _intendedUse
		case modifierExtension
		case relatedArtifact
		case usageInstruction; case _usageInstruction
		case useContext
		case warning
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contraindication = try [CodeableConcept](from: _container, forKeyIfPresent: .contraindication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.indication = try [CodeableConcept](from: _container, forKeyIfPresent: .indication)
		self.intendedUse = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .intendedUse, auxiliaryKey: ._intendedUse)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.usageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usageInstruction, auxiliaryKey: ._usageInstruction)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.warning = try [CodeableConcept](from: _container, forKeyIfPresent: .warning)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try indication?.encode(on: &_container, forKey: .indication)
		try intendedUse?.encode(on: &_container, forKey: .intendedUse, auxiliaryKey: ._intendedUse)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try usageInstruction?.encode(on: &_container, forKey: .usageInstruction, auxiliaryKey: ._usageInstruction)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try warning?.encode(on: &_container, forKey: .warning)
	}
}

/**
 A device, part of the current one.
 
 A device that is part (for example a component) of the present device.
 */
public struct DeviceDefinitionHasPart: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// Number of occurrences of the part
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Reference to the part
	/// One of `definition[x]`
	public var definition: DefinitionX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		count: FHIRPrimitive<FHIRInteger>? = nil,
		definition: DefinitionX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.count = count
		self.definition = definition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case count; case _count
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.definition = try Self._decodeDefinition(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		
		switch definition {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .definitionCodeableConcept)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDefinition(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DefinitionX {
		var _t_definition: DefinitionX? = nil
		if let definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical) {
			_t_definition = .canonical(definitionCanonical)
		}
		if let definitionCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .definitionCodeableConcept) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionCodeableConcept, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .codeableConcept(definitionCodeableConcept)
		}
		guard let _t_definition else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.definitionCodeableConcept)
			throw DecodingError.valueNotFound(DefinitionX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"definition\" but have none"))
		}
		return _t_definition
	}
}

/**
 An associated device, attached to, used with, communicating with or linking a previous or new device model to the focal
 device.
 */
public struct DeviceDefinitionLink: BackboneElement {
	
	/// All possible types for "relatedDevice[x]"
	public enum RelatedDeviceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A reference to the linked device
	/// One of `relatedDevice[x]`
	public var relatedDevice: RelatedDeviceX
	
	/// The type indicates the relationship of the related device to the device instance
	public var relation: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedDevice: RelatedDeviceX,
		relation: Coding
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedDevice = relatedDevice
		self.relation = relation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relatedDeviceCanonical; case _relatedDeviceCanonical
		case relatedDeviceCodeableConcept
		case relation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatedDevice = try Self._decodeRelatedDevice(from: _container)
		self.relation = try Coding(from: _container, forKey: .relation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch relatedDevice {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .relatedDeviceCanonical, auxiliaryKey: ._relatedDeviceCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .relatedDeviceCodeableConcept)
		}
		
		try relation.encode(on: &_container, forKey: .relation)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeRelatedDevice(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> RelatedDeviceX {
		var _t_relatedDevice: RelatedDeviceX? = nil
		if let relatedDeviceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .relatedDeviceCanonical, auxiliaryKey: ._relatedDeviceCanonical) {
			_t_relatedDevice = .canonical(relatedDeviceCanonical)
		}
		if let relatedDeviceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .relatedDeviceCodeableConcept) {
			if _t_relatedDevice != nil {
				throw DecodingError.dataCorruptedError(forKey: .relatedDeviceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"relatedDevice\"")
			}
			_t_relatedDevice = .codeableConcept(relatedDeviceCodeableConcept)
		}
		guard let _t_relatedDevice else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.relatedDeviceCodeableConcept)
			throw DecodingError.valueNotFound(RelatedDeviceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"relatedDevice\" but have none"))
		}
		return _t_relatedDevice
	}
}

/**
 A substance used to create the material(s) of which the device is made.
 */
public struct DeviceDefinitionMaterial: BackboneElement {
	
	/// Whether the substance is a known or suspected allergen
	public var allergenicIndicator: FHIRPrimitive<FHIRBool>?
	
	/// Indicates an alternative material of the device
	public var alternate: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A relevant substance that the device contains, may contain, or is made of
	public var substance: CodeableConcept
	
	/// Designated initializer
	public init(
		allergenicIndicator: FHIRPrimitive<FHIRBool>? = nil,
		alternate: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		substance: CodeableConcept
	) {
		self.allergenicIndicator = allergenicIndicator
		self.alternate = alternate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allergenicIndicator; case _allergenicIndicator
		case alternate; case _alternate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case substance
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allergenicIndicator = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		self.alternate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .alternate, auxiliaryKey: ._alternate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.substance = try CodeableConcept(from: _container, forKey: .substance)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try allergenicIndicator?.encode(on: &_container, forKey: .allergenicIndicator, auxiliaryKey: ._allergenicIndicator)
		try alternate?.encode(on: &_container, forKey: .alternate, auxiliaryKey: ._alternate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try substance.encode(on: &_container, forKey: .substance)
	}
}

/**
 Information about the packaging of the device, i.e. how the device is packaged.
 */
public struct DeviceDefinitionPackaging: BackboneElement {
	
	/// The number of items contained in the package (devices or sub-packages)
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// An organization that distributes the packaged device
	public var distributor: [DeviceDefinitionPackagingDistributor]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier of the packaged medication
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Allows packages within packages
	public var packaging: [DeviceDefinitionPackaging]?
	
	/// A code that defines the specific type of packaging
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string on the packaging
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case packaging
		case type
		case udiDeviceIdentifier
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.distributor = try [DeviceDefinitionPackagingDistributor](from: _container, forKeyIfPresent: .distributor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.packaging = try [DeviceDefinitionPackaging](from: _container, forKeyIfPresent: .packaging)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.udiDeviceIdentifier = try [DeviceDefinitionUdiDeviceIdentifier](from: _container, forKeyIfPresent: .udiDeviceIdentifier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try distributor?.encode(on: &_container, forKey: .distributor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try type?.encode(on: &_container, forKey: .type)
		try udiDeviceIdentifier?.encode(on: &_container, forKey: .udiDeviceIdentifier)
	}
}

/**
 An organization that distributes the packaged device.
 */
public struct DeviceDefinitionPackagingDistributor: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Distributor's human-readable name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Distributor as an Organization resource
	public var organizationReference: [Reference]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		organizationReference: [Reference]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.organizationReference = organizationReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case organizationReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.organizationReference = try [Reference](from: _container, forKeyIfPresent: .organizationReference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try organizationReference?.encode(on: &_container, forKey: .organizationReference)
	}
}

/**
 Inherent, essentially fixed, characteristics of this kind of device, e.g., time properties, size, etc.
 
 Static or essentially fixed characteristics or features of this kind of device that are otherwise not captured in more
 specific attributes, e.g., time or timing attributes, resolution, accuracy, and physical attributes.
 */
public struct DeviceDefinitionProperty: BackboneElement {
	
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
 Regulatory identifier(s) associated with this device.
 
 Identifier associated with the regulatory documentation (certificates, technical documentation, post-market
 surveillance documentation and reports) of a set of device models sharing the same intended purpose, risk class and
 essential design and manufacturing characteristics. One example is the Basic UDI-DI in Europe.
 */
public struct DeviceDefinitionRegulatoryIdentifier: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The identifier itself
	public var identifier: FHIRPrimitive<FHIRString>
	
	/// The namespace for the device identifier value
	public var identifierSystem: FHIRPrimitive<FHIRURI>?
	
	/// The organization that issued this identifier
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// Relevant jurisdiction governing the identifier
	public var jurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// basic | master | license
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: FHIRPrimitive<FHIRString>,
		identifierSystem: FHIRPrimitive<FHIRURI>? = nil,
		issuer: FHIRPrimitive<FHIRURI>,
		jurisdiction: FHIRPrimitive<FHIRURI>,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.identifierSystem = identifierSystem
		self.issuer = issuer
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier; case _identifier
		case identifierSystem; case _identifierSystem
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identifier, auxiliaryKey: ._identifier)
		self.identifierSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .identifierSystem, auxiliaryKey: ._identifierSystem)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier, auxiliaryKey: ._identifier)
		try identifierSystem?.encode(on: &_container, forKey: .identifierSystem, auxiliaryKey: ._identifierSystem)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Unique Device Identifier (UDI) Barcode string.
 
 The Device Identifier (DI) portion of the Unique Device Identifier (UDI) placed on a device label or package. Also
 known as UDI-DI. Note that the DeviceDefinition may include multiple UDI-DIs if it is sold in multiple jurisdictions.
 */
public struct DeviceDefinitionUdiDeviceIdentifier: BackboneElement {
	
	/// The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer
	/// and jurisdiction provided in the DeviceDefinition.udiDeviceIdentifier
	public var deviceIdentifier: FHIRPrimitive<FHIRString>
	
	/// The namespace for the device identifier value
	public var deviceIdentifierSystem: FHIRPrimitive<FHIRURI>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The organization that assigns the identifier algorithm
	public var issuer: FHIRPrimitive<FHIRURI>
	
	/// The jurisdiction to which the deviceIdentifier applies
	public var jurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Indicates whether and when the device is available on the market
	public var marketDistribution: [DeviceDefinitionUdiDeviceIdentifierMarketDistribution]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		deviceIdentifier: FHIRPrimitive<FHIRString>,
		deviceIdentifierSystem: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issuer: FHIRPrimitive<FHIRURI>,
		jurisdiction: FHIRPrimitive<FHIRURI>,
		marketDistribution: [DeviceDefinitionUdiDeviceIdentifierMarketDistribution]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.deviceIdentifier = deviceIdentifier
		self.deviceIdentifierSystem = deviceIdentifierSystem
		self.`extension` = `extension`
		self.id = id
		self.issuer = issuer
		self.jurisdiction = jurisdiction
		self.marketDistribution = marketDistribution
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case deviceIdentifier; case _deviceIdentifier
		case deviceIdentifierSystem; case _deviceIdentifierSystem
		case `extension` = "extension"
		case id; case _id
		case issuer; case _issuer
		case jurisdiction; case _jurisdiction
		case marketDistribution
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.deviceIdentifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		self.deviceIdentifierSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .deviceIdentifierSystem, auxiliaryKey: ._deviceIdentifierSystem)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.issuer = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .issuer, auxiliaryKey: ._issuer)
		self.jurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		self.marketDistribution = try [DeviceDefinitionUdiDeviceIdentifierMarketDistribution](from: _container, forKeyIfPresent: .marketDistribution)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try deviceIdentifier.encode(on: &_container, forKey: .deviceIdentifier, auxiliaryKey: ._deviceIdentifier)
		try deviceIdentifierSystem?.encode(on: &_container, forKey: .deviceIdentifierSystem, auxiliaryKey: ._deviceIdentifierSystem)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try issuer.encode(on: &_container, forKey: .issuer, auxiliaryKey: ._issuer)
		try jurisdiction.encode(on: &_container, forKey: .jurisdiction, auxiliaryKey: ._jurisdiction)
		try marketDistribution?.encode(on: &_container, forKey: .marketDistribution)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Indicates whether and when the device is available on the market.
 
 Indicates where and when the device is available on the market.
 */
public struct DeviceDefinitionUdiDeviceIdentifierMarketDistribution: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Begin and end dates for the commercial distribution of the device
	public var marketPeriod: Period
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// National state or territory where the device is commercialized
	public var subJurisdiction: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		marketPeriod: Period,
		modifierExtension: [Extension]? = nil,
		subJurisdiction: FHIRPrimitive<FHIRURI>
	) {
		self.`extension` = `extension`
		self.id = id
		self.marketPeriod = marketPeriod
		self.modifierExtension = modifierExtension
		self.subJurisdiction = subJurisdiction
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case marketPeriod
		case modifierExtension
		case subJurisdiction; case _subJurisdiction
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.marketPeriod = try Period(from: _container, forKey: .marketPeriod)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subJurisdiction = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .subJurisdiction, auxiliaryKey: ._subJurisdiction)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try marketPeriod.encode(on: &_container, forKey: .marketPeriod)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subJurisdiction.encode(on: &_container, forKey: .subJurisdiction, auxiliaryKey: ._subJurisdiction)
	}
}
