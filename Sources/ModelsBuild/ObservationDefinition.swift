//
//  ObservationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ObservationDefinition)
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
 Definition of an observation.
 
 Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable
 health care service.
 */
public struct ObservationDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .observationDefinition
	
	/// All possible types for "device[x]"
	public enum DeviceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case reference(Reference)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When ObservationDefinition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Body structure to be observed
	public var bodyStructure: CodeableReference?
	
	/// General type of observation
	public var category: [CodeableConcept]?
	
	/// Type of observation
	public var code: CodeableConcept
	
	/// Component results
	public var component: [ObservationDefinitionComponent]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Based on FHIR definition of another observation
	public var derivedFromCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Based on external definition
	public var derivedFromUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Natural language description of the ObservationDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Measurement device or model of device
	/// One of `device[x]`
	public var device: DeviceX?
	
	/// The effective date range for the ObservationDefinition
	public var effectivePeriod: Period?
	
	/// If For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Definitions of related resources belonging to this kind of observation group
	public var hasMember: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifiers of the ObservationDefinition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Jurisdiction of the authority that maintains the this ObservationDefinition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Date on which the asset content was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Method used to produce the observation
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Multiple results allowed for conforming observations
	public var multipleResultsAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Name for this ObservationDefinition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Desired kind of performer for such kind of observation
	public var performerType: CodeableConcept?
	
	/// The data types allowed for the value element of the instance observations conforming to this
	/// ObservationDefinition.
	public var permittedDataType: [FHIRPrimitive<ObservationDataType>]?
	
	/// Unit for quantitative results
	public var permittedUnit: [Coding]?
	
	/// The preferred name to be used when reporting the observation results
	public var preferredReportName: FHIRPrimitive<FHIRString>?
	
	/// The name of the individual or organization that published the ObservationDefinition
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this ObservationDefinition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Set of qualified values for observation results
	public var qualifiedValue: [ObservationDefinitionQualifiedValue]?
	
	/// Kind of specimen used by this type of observation
	public var specimen: [Reference]?
	
	/// The current state of the ObservationDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Type of subject for the defined observation
	public var subject: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this ObservationDefinition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Logical canonical URL to reference this ObservationDefinition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Business version of the ObservationDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		bodyStructure: CodeableReference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		component: [ObservationDefinitionComponent]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFromCanonical: [FHIRPrimitive<Canonical>]? = nil,
		derivedFromUri: [FHIRPrimitive<FHIRURI>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		device: DeviceX? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		hasMember: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		multipleResultsAllowed: FHIRPrimitive<FHIRBool>? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		performerType: CodeableConcept? = nil,
		permittedDataType: [FHIRPrimitive<ObservationDataType>]? = nil,
		permittedUnit: [Coding]? = nil,
		preferredReportName: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		qualifiedValue: [ObservationDefinitionQualifiedValue]? = nil,
		specimen: [Reference]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.bodyStructure = bodyStructure
		self.category = category
		self.code = code
		self.component = component
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFromCanonical = derivedFromCanonical
		self.derivedFromUri = derivedFromUri
		self.description_fhir = description_fhir
		self.device = device
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.hasMember = hasMember
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.method = method
		self.modifierExtension = modifierExtension
		self.multipleResultsAllowed = multipleResultsAllowed
		self.name = name
		self.performerType = performerType
		self.permittedDataType = permittedDataType
		self.permittedUnit = permittedUnit
		self.preferredReportName = preferredReportName
		self.publisher = publisher
		self.purpose = purpose
		self.qualifiedValue = qualifiedValue
		self.specimen = specimen
		self.status = status
		self.subject = subject
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case bodyStructure
		case category
		case code
		case component
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFromCanonical; case _derivedFromCanonical
		case derivedFromUri; case _derivedFromUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case deviceCanonical; case _deviceCanonical
		case deviceReference
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case hasMember
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case method
		case modifierExtension
		case multipleResultsAllowed; case _multipleResultsAllowed
		case name; case _name
		case performerType
		case permittedDataType; case _permittedDataType
		case permittedUnit
		case preferredReportName; case _preferredReportName
		case publisher; case _publisher
		case purpose; case _purpose
		case qualifiedValue
		case specimen
		case status; case _status
		case subject
		case text
		case title; case _title
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
		self.bodyStructure = try CodeableReference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.component = try [ObservationDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Self._decodeDevice(from: _container)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hasMember = try [Reference](from: _container, forKeyIfPresent: .hasMember)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multipleResultsAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.permittedUnit = try [Coding](from: _container, forKeyIfPresent: .permittedUnit)
		self.preferredReportName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preferredReportName, auxiliaryKey: ._preferredReportName)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.qualifiedValue = try [ObservationDefinitionQualifiedValue](from: _container, forKeyIfPresent: .qualifiedValue)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try [CodeableConcept](from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
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
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try component?.encode(on: &_container, forKey: .component)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFromCanonical?.encode(on: &_container, forKey: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		try derivedFromUri?.encode(on: &_container, forKey: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = device {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .deviceCanonical, auxiliaryKey: ._deviceCanonical)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .deviceReference)
		}
		}
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hasMember?.encode(on: &_container, forKey: .hasMember)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try multipleResultsAllowed?.encode(on: &_container, forKey: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try permittedUnit?.encode(on: &_container, forKey: .permittedUnit)
		try preferredReportName?.encode(on: &_container, forKey: .preferredReportName, auxiliaryKey: ._preferredReportName)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try qualifiedValue?.encode(on: &_container, forKey: .qualifiedValue)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
	
	private static func _decodeDevice(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeviceX? {
		var _t_device: DeviceX? = nil
		if let deviceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .deviceCanonical, auxiliaryKey: ._deviceCanonical) {
			_t_device = .canonical(deviceCanonical)
		}
		if let deviceReference = try Reference(from: _container, forKeyIfPresent: .deviceReference) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceReference, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .reference(deviceReference)
		}
		return _t_device
	}
	
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
 Component results.
 
 Some observations have multiple component observations, expressed as separate code value pairs.
 */
public struct ObservationDefinitionComponent: BackboneElement {
	
	/// Type of observation
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The data types allowed for the value element of the instance of this component observations.
	public var permittedDataType: [FHIRPrimitive<ObservationDataType>]?
	
	/// Unit for quantitative results
	public var permittedUnit: [Coding]?
	
	/// Set of qualified values for observation results
	public var qualifiedValue: [ObservationDefinitionQualifiedValue]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		permittedDataType: [FHIRPrimitive<ObservationDataType>]? = nil,
		permittedUnit: [Coding]? = nil,
		qualifiedValue: [ObservationDefinitionQualifiedValue]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.permittedDataType = permittedDataType
		self.permittedUnit = permittedUnit
		self.qualifiedValue = qualifiedValue
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case permittedDataType; case _permittedDataType
		case permittedUnit
		case qualifiedValue
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.permittedUnit = try [Coding](from: _container, forKeyIfPresent: .permittedUnit)
		self.qualifiedValue = try [ObservationDefinitionQualifiedValue](from: _container, forKeyIfPresent: .qualifiedValue)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try permittedUnit?.encode(on: &_container, forKey: .permittedUnit)
		try qualifiedValue?.encode(on: &_container, forKey: .qualifiedValue)
	}
}

/**
 Set of qualified values for observation results.
 
 A set of qualified values associated with a context and a set of conditions -  provides a range for quantitative and
 ordinal observations and a collection of value sets for qualitative observations.
 */
public struct ObservationDefinitionQualifiedValue: BackboneElement {
	
	/// Value set of abnormal coded values as part of this set of qualified values
	public var abnormalCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Applicable age range for the set of qualified values
	public var age: Range?
	
	/// Targetted population for the set of qualified values
	public var appliesTo: [CodeableConcept]?
	
	/// Validity criterion for the qualified value
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Context qualifier for the set of qualified values
	public var context: CodeableConcept?
	
	/// Value set of critical coded values as part of this set of qualified values
	public var criticalCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Applicable gestational age range for the set of qualified values
	public var gestationalAge: Range?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Expected coded interpretation values
	public var interpretation: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value set of normal coded values as part of this set of qualified values
	public var normalCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// The range for continuous or ordinal observations
	public var range: Range?
	
	/// The category of range of values for continuous or ordinal observations that match the criteria of this set of
	/// qualified values.
	public var rangeCategory: FHIRPrimitive<ObservationRangeCategory>?
	
	/// The sex parameter for clinical use this set of qualified values applies to.
	public var sexParameterForClinicalUse: FHIRPrimitive<AdministrativeGender>?
	
	/// Value set of valid coded values as part of this set of qualified values
	public var validCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		abnormalCodedValueSet: FHIRPrimitive<Canonical>? = nil,
		age: Range? = nil,
		appliesTo: [CodeableConcept]? = nil,
		condition: FHIRPrimitive<FHIRString>? = nil,
		context: CodeableConcept? = nil,
		criticalCodedValueSet: FHIRPrimitive<Canonical>? = nil,
		`extension`: [Extension]? = nil,
		gestationalAge: Range? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		interpretation: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		normalCodedValueSet: FHIRPrimitive<Canonical>? = nil,
		range: Range? = nil,
		rangeCategory: FHIRPrimitive<ObservationRangeCategory>? = nil,
		sexParameterForClinicalUse: FHIRPrimitive<AdministrativeGender>? = nil,
		validCodedValueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.abnormalCodedValueSet = abnormalCodedValueSet
		self.age = age
		self.appliesTo = appliesTo
		self.condition = condition
		self.context = context
		self.criticalCodedValueSet = criticalCodedValueSet
		self.`extension` = `extension`
		self.gestationalAge = gestationalAge
		self.id = id
		self.interpretation = interpretation
		self.modifierExtension = modifierExtension
		self.normalCodedValueSet = normalCodedValueSet
		self.range = range
		self.rangeCategory = rangeCategory
		self.sexParameterForClinicalUse = sexParameterForClinicalUse
		self.validCodedValueSet = validCodedValueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abnormalCodedValueSet; case _abnormalCodedValueSet
		case age
		case appliesTo
		case condition; case _condition
		case context
		case criticalCodedValueSet; case _criticalCodedValueSet
		case `extension` = "extension"
		case gestationalAge
		case id; case _id
		case interpretation
		case modifierExtension
		case normalCodedValueSet; case _normalCodedValueSet
		case range
		case rangeCategory; case _rangeCategory
		case sexParameterForClinicalUse; case _sexParameterForClinicalUse
		case validCodedValueSet; case _validCodedValueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.abnormalCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .abnormalCodedValueSet, auxiliaryKey: ._abnormalCodedValueSet)
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.appliesTo = try [CodeableConcept](from: _container, forKeyIfPresent: .appliesTo)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try CodeableConcept(from: _container, forKeyIfPresent: .context)
		self.criticalCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .criticalCodedValueSet, auxiliaryKey: ._criticalCodedValueSet)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gestationalAge = try Range(from: _container, forKeyIfPresent: .gestationalAge)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interpretation = try [CodeableConcept](from: _container, forKeyIfPresent: .interpretation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.normalCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .normalCodedValueSet, auxiliaryKey: ._normalCodedValueSet)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		self.rangeCategory = try FHIRPrimitive<ObservationRangeCategory>(from: _container, forKeyIfPresent: .rangeCategory, auxiliaryKey: ._rangeCategory)
		self.sexParameterForClinicalUse = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .sexParameterForClinicalUse, auxiliaryKey: ._sexParameterForClinicalUse)
		self.validCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .validCodedValueSet, auxiliaryKey: ._validCodedValueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try abnormalCodedValueSet?.encode(on: &_container, forKey: .abnormalCodedValueSet, auxiliaryKey: ._abnormalCodedValueSet)
		try age?.encode(on: &_container, forKey: .age)
		try appliesTo?.encode(on: &_container, forKey: .appliesTo)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try criticalCodedValueSet?.encode(on: &_container, forKey: .criticalCodedValueSet, auxiliaryKey: ._criticalCodedValueSet)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gestationalAge?.encode(on: &_container, forKey: .gestationalAge)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try interpretation?.encode(on: &_container, forKey: .interpretation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try normalCodedValueSet?.encode(on: &_container, forKey: .normalCodedValueSet, auxiliaryKey: ._normalCodedValueSet)
		try range?.encode(on: &_container, forKey: .range)
		try rangeCategory?.encode(on: &_container, forKey: .rangeCategory, auxiliaryKey: ._rangeCategory)
		try sexParameterForClinicalUse?.encode(on: &_container, forKey: .sexParameterForClinicalUse, auxiliaryKey: ._sexParameterForClinicalUse)
		try validCodedValueSet?.encode(on: &_container, forKey: .validCodedValueSet, auxiliaryKey: ._validCodedValueSet)
	}
}
