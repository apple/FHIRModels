//
//  Library.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Library)
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
 Represents a library of quality improvement components.
 
 The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and
 expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a
 collection of knowledge assets.
 */
public struct Library: DomainResource {
	
	public static let resourceType: ResourceType = .library
	
	/// When the library was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Contents of the library, either embedded or referenced
	public var content: [Attachment]?
	
	/// A content contributor
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// What data is referenced by this library
	public var dataRequirement: [DataRequirement]?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the library
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When the library is expected to be used
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the library
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for library (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the library was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this library (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Parameters defined by the library
	public var parameter: [ParameterDefinition]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this library is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The status of this library. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this library (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// logic-library | model-definition | asset-collection | module-definition
	public var type: CodeableConcept
	
	/// Logical URI to reference this library (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Describes the clinical usage of the library
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the library
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		content: [Attachment]? = nil,
		contributor: [Contributor]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		dataRequirement: [DataRequirement]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		parameter: [ParameterDefinition]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		type: CodeableConcept,
		url: FHIRPrimitive<FHIRURI>? = nil,
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.contact = contact
		self.contained = contained
		self.content = content
		self.contributor = contributor
		self.copyright = copyright
		self.dataRequirement = dataRequirement
		self.date = date
		self.description_fhir = description_fhir
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.parameter = parameter
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.status = status
		self.text = text
		self.title = title
		self.topic = topic
		self.type = type
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case contact
		case contained
		case content
		case contributor
		case copyright; case _copyright
		case dataRequirement
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
		case name; case _name
		case parameter
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case status; case _status
		case text
		case title; case _title
		case topic
		case type
		case url; case _url
		case usage; case _usage
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try [Attachment](from: _container, forKeyIfPresent: .content)
		self.contributor = try [Contributor](from: _container, forKeyIfPresent: .contributor)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.dataRequirement = try [DataRequirement](from: _container, forKeyIfPresent: .dataRequirement)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.parameter = try [ParameterDefinition](from: _container, forKeyIfPresent: .parameter)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try content?.encode(on: &_container, forKey: .content)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try dataRequirement?.encode(on: &_container, forKey: .dataRequirement)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}
