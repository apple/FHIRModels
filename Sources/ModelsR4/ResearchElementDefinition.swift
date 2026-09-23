//
//  ResearchElementDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ResearchElementDefinition)
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
 A population, intervention, or exposure definition.
 
 The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion, recommendation)
 is about.
 */
public struct ResearchElementDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .researchElementDefinition
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// When the research element definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// What defines the members of the research element
	public var characteristic: [ResearchElementDefinitionCharacteristic]
	
	/// Used for footnotes or explanatory notes
	public var comment: [FHIRPrimitive<FHIRString>]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the research element definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the research element definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the research element definition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for research element definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the research element definition was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Logic used by the ResearchElementDefinition
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this research element definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this research element definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Title for use in informal contexts
	public var shortTitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this research element definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Subordinate title of the ResearchElementDefinition
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this research element definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The category of the ResearchElementDefinition, such as Education, Treatment, Assessment, etc.
	public var topic: [CodeableConcept]?
	
	/// The type of research element, a population, an exposure, or an outcome.
	public var type: FHIRPrimitive<ResearchElementType>
	
	/// Canonical identifier for this research element definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Describes the clinical usage of the ResearchElementDefinition
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
	public var variableType: FHIRPrimitive<EvidenceVariableType>?
	
	/// Business version of the research element definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		characteristic: [ResearchElementDefinitionCharacteristic],
		comment: [FHIRPrimitive<FHIRString>]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		library: [FHIRPrimitive<Canonical>]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		shortTitle: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: SubjectX? = nil,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		type: FHIRPrimitive<ResearchElementType>,
		url: FHIRPrimitive<FHIRURI>? = nil,
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		variableType: FHIRPrimitive<EvidenceVariableType>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.characteristic = characteristic
		self.comment = comment
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.library = library
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.status = status
		self.subject = subject
		self.subtitle = subtitle
		self.text = text
		self.title = title
		self.topic = topic
		self.type = type
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.variableType = variableType
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case author
		case characteristic
		case comment; case _comment
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case library; case _library
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case subjectCodeableConcept
		case subjectReference
		case subtitle; case _subtitle
		case text
		case title; case _title
		case topic
		case type; case _type
		case url; case _url
		case usage; case _usage
		case useContext
		case variableType; case _variableType
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.characteristic = try [ResearchElementDefinitionCharacteristic](from: _container, forKey: .characteristic)
		self.comment = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Self._decodeSubject(from: _container)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try FHIRPrimitive<ResearchElementType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variableType = try FHIRPrimitive<EvidenceVariableType>(from: _container, forKeyIfPresent: .variableType, auxiliaryKey: ._variableType)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try characteristic.encode(on: &_container, forKey: .characteristic)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = subject {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .subjectReference)
		}
		}
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variableType?.encode(on: &_container, forKey: .variableType, auxiliaryKey: ._variableType)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSubject(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubjectX? {
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		return _t_subject
	}
}

/**
 What defines the members of the research element.
 
 A characteristic that defines the members of the research element. Multiple characteristics are applied with "and"
 semantics.
 */
public struct ResearchElementDefinitionCharacteristic: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case dataRequirement(DataRequirement)
		indirect case expression(Expression)
	}
	
	/// All possible types for "participantEffective[x]"
	public enum ParticipantEffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// All possible types for "studyEffective[x]"
	public enum StudyEffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// What code or expression defines members?
	/// One of `definition[x]`
	public var definition: DefinitionX
	
	/// Whether the characteristic includes or excludes members
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What time period do participants cover
	/// One of `participantEffective[x]`
	public var participantEffective: ParticipantEffectiveX?
	
	/// What time period do participants cover
	public var participantEffectiveDescription: FHIRPrimitive<FHIRString>?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var participantEffectiveGroupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Observation time from study start
	public var participantEffectiveTimeFromStart: Duration?
	
	/// What time period does the study cover
	/// One of `studyEffective[x]`
	public var studyEffective: StudyEffectiveX?
	
	/// What time period does the study cover
	public var studyEffectiveDescription: FHIRPrimitive<FHIRString>?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var studyEffectiveGroupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Observation time from study start
	public var studyEffectiveTimeFromStart: Duration?
	
	/// What unit is the outcome described in?
	public var unitOfMeasure: CodeableConcept?
	
	/// What code/value pairs define members?
	public var usageContext: [UsageContext]?
	
	/// Designated initializer
	public init(
		definition: DefinitionX,
		exclude: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		participantEffective: ParticipantEffectiveX? = nil,
		participantEffectiveDescription: FHIRPrimitive<FHIRString>? = nil,
		participantEffectiveGroupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
		participantEffectiveTimeFromStart: Duration? = nil,
		studyEffective: StudyEffectiveX? = nil,
		studyEffectiveDescription: FHIRPrimitive<FHIRString>? = nil,
		studyEffectiveGroupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
		studyEffectiveTimeFromStart: Duration? = nil,
		unitOfMeasure: CodeableConcept? = nil,
		usageContext: [UsageContext]? = nil
	) {
		self.definition = definition
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.participantEffective = participantEffective
		self.participantEffectiveDescription = participantEffectiveDescription
		self.participantEffectiveGroupMeasure = participantEffectiveGroupMeasure
		self.participantEffectiveTimeFromStart = participantEffectiveTimeFromStart
		self.studyEffective = studyEffective
		self.studyEffectiveDescription = studyEffectiveDescription
		self.studyEffectiveGroupMeasure = studyEffectiveGroupMeasure
		self.studyEffectiveTimeFromStart = studyEffectiveTimeFromStart
		self.unitOfMeasure = unitOfMeasure
		self.usageContext = usageContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case definitionDataRequirement
		case definitionExpression
		case exclude; case _exclude
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case participantEffectiveDateTime; case _participantEffectiveDateTime
		case participantEffectiveDescription; case _participantEffectiveDescription
		case participantEffectiveDuration
		case participantEffectiveGroupMeasure; case _participantEffectiveGroupMeasure
		case participantEffectivePeriod
		case participantEffectiveTimeFromStart
		case participantEffectiveTiming
		case studyEffectiveDateTime; case _studyEffectiveDateTime
		case studyEffectiveDescription; case _studyEffectiveDescription
		case studyEffectiveDuration
		case studyEffectiveGroupMeasure; case _studyEffectiveGroupMeasure
		case studyEffectivePeriod
		case studyEffectiveTimeFromStart
		case studyEffectiveTiming
		case unitOfMeasure
		case usageContext
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try Self._decodeDefinition(from: _container)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.participantEffective = try Self._decodeParticipantEffective(from: _container)
		self.participantEffectiveDescription = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .participantEffectiveDescription, auxiliaryKey: ._participantEffectiveDescription)
		self.participantEffectiveGroupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .participantEffectiveGroupMeasure, auxiliaryKey: ._participantEffectiveGroupMeasure)
		self.participantEffectiveTimeFromStart = try Duration(from: _container, forKeyIfPresent: .participantEffectiveTimeFromStart)
		self.studyEffective = try Self._decodeStudyEffective(from: _container)
		self.studyEffectiveDescription = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .studyEffectiveDescription, auxiliaryKey: ._studyEffectiveDescription)
		self.studyEffectiveGroupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .studyEffectiveGroupMeasure, auxiliaryKey: ._studyEffectiveGroupMeasure)
		self.studyEffectiveTimeFromStart = try Duration(from: _container, forKeyIfPresent: .studyEffectiveTimeFromStart)
		self.unitOfMeasure = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfMeasure)
		self.usageContext = try [UsageContext](from: _container, forKeyIfPresent: .usageContext)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch definition {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .definitionCodeableConcept)
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .definitionDataRequirement)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .definitionExpression)
		}
		
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = participantEffective {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectiveDateTime, auxiliaryKey: ._participantEffectiveDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectiveDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectivePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectiveTiming)
		}
		}
		try participantEffectiveDescription?.encode(on: &_container, forKey: .participantEffectiveDescription, auxiliaryKey: ._participantEffectiveDescription)
		try participantEffectiveGroupMeasure?.encode(on: &_container, forKey: .participantEffectiveGroupMeasure, auxiliaryKey: ._participantEffectiveGroupMeasure)
		try participantEffectiveTimeFromStart?.encode(on: &_container, forKey: .participantEffectiveTimeFromStart)
		if let _enum = studyEffective {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .studyEffectiveDateTime, auxiliaryKey: ._studyEffectiveDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .studyEffectiveDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .studyEffectivePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .studyEffectiveTiming)
		}
		}
		try studyEffectiveDescription?.encode(on: &_container, forKey: .studyEffectiveDescription, auxiliaryKey: ._studyEffectiveDescription)
		try studyEffectiveGroupMeasure?.encode(on: &_container, forKey: .studyEffectiveGroupMeasure, auxiliaryKey: ._studyEffectiveGroupMeasure)
		try studyEffectiveTimeFromStart?.encode(on: &_container, forKey: .studyEffectiveTimeFromStart)
		try unitOfMeasure?.encode(on: &_container, forKey: .unitOfMeasure)
		try usageContext?.encode(on: &_container, forKey: .usageContext)
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
		if let definitionDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .definitionDataRequirement) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionDataRequirement, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .dataRequirement(definitionDataRequirement)
		}
		if let definitionExpression = try Expression(from: _container, forKeyIfPresent: .definitionExpression) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionExpression, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .expression(definitionExpression)
		}
		guard let _t_definition else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.definitionExpression)
			throw DecodingError.valueNotFound(DefinitionX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"definition\" but have none"))
		}
		return _t_definition
	}
	
	private static func _decodeParticipantEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ParticipantEffectiveX? {
		var _t_participantEffective: ParticipantEffectiveX? = nil
		if let participantEffectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .participantEffectiveDateTime, auxiliaryKey: ._participantEffectiveDateTime) {
			_t_participantEffective = .dateTime(participantEffectiveDateTime)
		}
		if let participantEffectiveDuration = try Duration(from: _container, forKeyIfPresent: .participantEffectiveDuration) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveDuration, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .duration(participantEffectiveDuration)
		}
		if let participantEffectivePeriod = try Period(from: _container, forKeyIfPresent: .participantEffectivePeriod) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectivePeriod, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .period(participantEffectivePeriod)
		}
		if let participantEffectiveTiming = try Timing(from: _container, forKeyIfPresent: .participantEffectiveTiming) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveTiming, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .timing(participantEffectiveTiming)
		}
		return _t_participantEffective
	}
	
	private static func _decodeStudyEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StudyEffectiveX? {
		var _t_studyEffective: StudyEffectiveX? = nil
		if let studyEffectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .studyEffectiveDateTime, auxiliaryKey: ._studyEffectiveDateTime) {
			_t_studyEffective = .dateTime(studyEffectiveDateTime)
		}
		if let studyEffectiveDuration = try Duration(from: _container, forKeyIfPresent: .studyEffectiveDuration) {
			if _t_studyEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .studyEffectiveDuration, in: _container, debugDescription: "More than one value provided for \"studyEffective\"")
			}
			_t_studyEffective = .duration(studyEffectiveDuration)
		}
		if let studyEffectivePeriod = try Period(from: _container, forKeyIfPresent: .studyEffectivePeriod) {
			if _t_studyEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .studyEffectivePeriod, in: _container, debugDescription: "More than one value provided for \"studyEffective\"")
			}
			_t_studyEffective = .period(studyEffectivePeriod)
		}
		if let studyEffectiveTiming = try Timing(from: _container, forKeyIfPresent: .studyEffectiveTiming) {
			if _t_studyEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .studyEffectiveTiming, in: _container, debugDescription: "More than one value provided for \"studyEffective\"")
			}
			_t_studyEffective = .timing(studyEffectiveTiming)
		}
		return _t_studyEffective
	}
}
