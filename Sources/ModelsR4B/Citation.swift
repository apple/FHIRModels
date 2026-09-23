//
//  Citation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Citation)
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
 A description of identification, location, or contributorship of a publication (article or artifact).
 
 The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The
 Citation Resource supports existing reference structures and developing publication practices such as versioning,
 expressing complex contributorship roles, and referencing computable resources.
 */
public struct Citation: DomainResource {
	
	public static let resourceType: ResourceType = .citation
	
	/// When the citation was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the Citation
	public var author: [ContactDetail]?
	
	/// The article or artifact being described
	public var citedArtifact: CitationCitedArtifact?
	
	/// The assignment to an organizing scheme
	public var classification: [CitationClassification]?
	
	/// Contact details for the publisher of the Citation Resource
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions for the Citation, not for the cited artifact
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// The status of the citation
	public var currentState: [CodeableConcept]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the citation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the Citation
	public var editor: [ContactDetail]?
	
	/// When the citation is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the Citation
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the Citation resource itself
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for citation (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the citation was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this citation (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Used for general notes and annotations not coded elsewhere
	public var note: [Annotation]?
	
	/// The publisher of the Citation, not the publisher of the article or artifact being cited
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this citation is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Artifact related to the Citation Resource
	public var relatesTo: [CitationRelatesTo]?
	
	/// Who reviewed the Citation
	public var reviewer: [ContactDetail]?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// An effective date or period for a status of the citation
	public var statusDate: [CitationStatusDate]?
	
	/// A human-readable display of the citation
	public var summary: [CitationSummary]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this citation (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this citation, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the Citation Resource content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the citation
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		citedArtifact: CitationCitedArtifact? = nil,
		classification: [CitationClassification]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		currentState: [CodeableConcept]? = nil,
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
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		relatesTo: [CitationRelatesTo]? = nil,
		reviewer: [ContactDetail]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		statusDate: [CitationStatusDate]? = nil,
		summary: [CitationSummary]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.citedArtifact = citedArtifact
		self.classification = classification
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.currentState = currentState
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
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.publisher = publisher
		self.purpose = purpose
		self.relatesTo = relatesTo
		self.reviewer = reviewer
		self.status = status
		self.statusDate = statusDate
		self.summary = summary
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case author
		case citedArtifact
		case classification
		case contact
		case contained
		case copyright; case _copyright
		case currentState
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
		case meta
		case modifierExtension
		case name; case _name
		case note
		case publisher; case _publisher
		case purpose; case _purpose
		case relatesTo
		case reviewer
		case status; case _status
		case statusDate
		case summary
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.citedArtifact = try CitationCitedArtifact(from: _container, forKeyIfPresent: .citedArtifact)
		self.classification = try [CitationClassification](from: _container, forKeyIfPresent: .classification)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.currentState = try [CodeableConcept](from: _container, forKeyIfPresent: .currentState)
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
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatesTo = try [CitationRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try [CitationStatusDate](from: _container, forKeyIfPresent: .statusDate)
		self.summary = try [CitationSummary](from: _container, forKeyIfPresent: .summary)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try author?.encode(on: &_container, forKey: .author)
		try citedArtifact?.encode(on: &_container, forKey: .citedArtifact)
		try classification?.encode(on: &_container, forKey: .classification)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try currentState?.encode(on: &_container, forKey: .currentState)
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
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate)
		try summary?.encode(on: &_container, forKey: .summary)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 The article or artifact being described.
 */
public struct CitationCitedArtifact: BackboneElement {
	
	/// Summary of the article or artifact
	public var abstract: [CitationCitedArtifactAbstract]?
	
	/// The assignment to an organizing scheme
	public var classification: [CitationCitedArtifactClassification]?
	
	/// Attribution of authors and other contributors
	public var contributorship: CitationCitedArtifactContributorship?
	
	/// The status of the cited artifact
	public var currentState: [CodeableConcept]?
	
	/// When the cited artifact was accessed
	public var dateAccessed: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// May include DOI, PMID, PMCID, etc.
	public var identifier: [Identifier]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Any additional information or content for the article or artifact
	public var note: [Annotation]?
	
	/// The component of the article or artifact
	public var part: CitationCitedArtifactPart?
	
	/// If multiple, used to represent alternative forms of the article that are not separate citations
	public var publicationForm: [CitationCitedArtifactPublicationForm]?
	
	/// May include trial registry identifiers
	public var relatedIdentifier: [Identifier]?
	
	/// The artifact related to the cited artifact
	public var relatesTo: [CitationCitedArtifactRelatesTo]?
	
	/// An effective date or period for a status of the cited artifact
	public var statusDate: [CitationCitedArtifactStatusDate]?
	
	/// The title details of the article or artifact
	public var title: [CitationCitedArtifactTitle]?
	
	/// The defined version of the cited artifact
	public var version: CitationCitedArtifactVersion?
	
	/// Used for any URL for the article or artifact cited
	public var webLocation: [CitationCitedArtifactWebLocation]?
	
	/// Designated initializer
	public init(
		abstract: [CitationCitedArtifactAbstract]? = nil,
		classification: [CitationCitedArtifactClassification]? = nil,
		contributorship: CitationCitedArtifactContributorship? = nil,
		currentState: [CodeableConcept]? = nil,
		dateAccessed: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		part: CitationCitedArtifactPart? = nil,
		publicationForm: [CitationCitedArtifactPublicationForm]? = nil,
		relatedIdentifier: [Identifier]? = nil,
		relatesTo: [CitationCitedArtifactRelatesTo]? = nil,
		statusDate: [CitationCitedArtifactStatusDate]? = nil,
		title: [CitationCitedArtifactTitle]? = nil,
		version: CitationCitedArtifactVersion? = nil,
		webLocation: [CitationCitedArtifactWebLocation]? = nil
	) {
		self.abstract = abstract
		self.classification = classification
		self.contributorship = contributorship
		self.currentState = currentState
		self.dateAccessed = dateAccessed
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.note = note
		self.part = part
		self.publicationForm = publicationForm
		self.relatedIdentifier = relatedIdentifier
		self.relatesTo = relatesTo
		self.statusDate = statusDate
		self.title = title
		self.version = version
		self.webLocation = webLocation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract
		case classification
		case contributorship
		case currentState
		case dateAccessed; case _dateAccessed
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case note
		case part
		case publicationForm
		case relatedIdentifier
		case relatesTo
		case statusDate
		case title
		case version
		case webLocation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.abstract = try [CitationCitedArtifactAbstract](from: _container, forKeyIfPresent: .abstract)
		self.classification = try [CitationCitedArtifactClassification](from: _container, forKeyIfPresent: .classification)
		self.contributorship = try CitationCitedArtifactContributorship(from: _container, forKeyIfPresent: .contributorship)
		self.currentState = try [CodeableConcept](from: _container, forKeyIfPresent: .currentState)
		self.dateAccessed = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAccessed, auxiliaryKey: ._dateAccessed)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.part = try CitationCitedArtifactPart(from: _container, forKeyIfPresent: .part)
		self.publicationForm = try [CitationCitedArtifactPublicationForm](from: _container, forKeyIfPresent: .publicationForm)
		self.relatedIdentifier = try [Identifier](from: _container, forKeyIfPresent: .relatedIdentifier)
		self.relatesTo = try [CitationCitedArtifactRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.statusDate = try [CitationCitedArtifactStatusDate](from: _container, forKeyIfPresent: .statusDate)
		self.title = try [CitationCitedArtifactTitle](from: _container, forKeyIfPresent: .title)
		self.version = try CitationCitedArtifactVersion(from: _container, forKeyIfPresent: .version)
		self.webLocation = try [CitationCitedArtifactWebLocation](from: _container, forKeyIfPresent: .webLocation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try abstract?.encode(on: &_container, forKey: .abstract)
		try classification?.encode(on: &_container, forKey: .classification)
		try contributorship?.encode(on: &_container, forKey: .contributorship)
		try currentState?.encode(on: &_container, forKey: .currentState)
		try dateAccessed?.encode(on: &_container, forKey: .dateAccessed, auxiliaryKey: ._dateAccessed)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try part?.encode(on: &_container, forKey: .part)
		try publicationForm?.encode(on: &_container, forKey: .publicationForm)
		try relatedIdentifier?.encode(on: &_container, forKey: .relatedIdentifier)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try statusDate?.encode(on: &_container, forKey: .statusDate)
		try title?.encode(on: &_container, forKey: .title)
		try version?.encode(on: &_container, forKey: .version)
		try webLocation?.encode(on: &_container, forKey: .webLocation)
	}
}

/**
 Summary of the article or artifact.
 */
public struct CitationCitedArtifactAbstract: BackboneElement {
	
	/// Copyright notice for the abstract
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Used to express the specific language
	public var language: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Abstract content
	public var text: FHIRPrimitive<FHIRString>
	
	/// The kind of abstract
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		copyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		text: FHIRPrimitive<FHIRString>,
		type: CodeableConcept? = nil
	) {
		self.copyright = copyright
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case copyright; case _copyright
		case `extension` = "extension"
		case id; case _id
		case language
		case modifierExtension
		case text; case _text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The assignment to an organizing scheme.
 */
public struct CitationCitedArtifactClassification: BackboneElement {
	
	/// The specific classification value
	public var classifier: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The kind of classifier (e.g. publication type, keyword)
	public var type: CodeableConcept?
	
	/// Provenance and copyright of classification
	public var whoClassified: CitationCitedArtifactClassificationWhoClassified?
	
	/// Designated initializer
	public init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		whoClassified: CitationCitedArtifactClassificationWhoClassified? = nil
	) {
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.whoClassified = whoClassified
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case whoClassified
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.whoClassified = try CitationCitedArtifactClassificationWhoClassified(from: _container, forKeyIfPresent: .whoClassified)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try whoClassified?.encode(on: &_container, forKey: .whoClassified)
	}
}

/**
 Provenance and copyright of classification.
 */
public struct CitationCitedArtifactClassificationWhoClassified: BackboneElement {
	
	/// Rights management statement for the classification
	public var classifierCopyright: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Acceptable to re-use the classification
	public var freeToShare: FHIRPrimitive<FHIRBool>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Organization who created the classification
	public var organization: Reference?
	
	/// Person who created the classification
	public var person: Reference?
	
	/// The publisher of the classification, not the publisher of the article or artifact being cited
	public var publisher: Reference?
	
	/// Designated initializer
	public init(
		classifierCopyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		freeToShare: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference? = nil,
		person: Reference? = nil,
		publisher: Reference? = nil
	) {
		self.classifierCopyright = classifierCopyright
		self.`extension` = `extension`
		self.freeToShare = freeToShare
		self.id = id
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.person = person
		self.publisher = publisher
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifierCopyright; case _classifierCopyright
		case `extension` = "extension"
		case freeToShare; case _freeToShare
		case id; case _id
		case modifierExtension
		case organization
		case person
		case publisher
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classifierCopyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .classifierCopyright, auxiliaryKey: ._classifierCopyright)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.freeToShare = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .freeToShare, auxiliaryKey: ._freeToShare)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.person = try Reference(from: _container, forKeyIfPresent: .person)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classifierCopyright?.encode(on: &_container, forKey: .classifierCopyright, auxiliaryKey: ._classifierCopyright)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try freeToShare?.encode(on: &_container, forKey: .freeToShare, auxiliaryKey: ._freeToShare)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization?.encode(on: &_container, forKey: .organization)
		try person?.encode(on: &_container, forKey: .person)
		try publisher?.encode(on: &_container, forKey: .publisher)
	}
}

/**
 Attribution of authors and other contributors.
 
 This element is used to list authors and other contributors, their contact information, specific contributions, and
 summary statements.
 */
public struct CitationCitedArtifactContributorship: BackboneElement {
	
	/// Indicates if the list includes all authors and/or contributors
	public var complete: FHIRPrimitive<FHIRBool>?
	
	/// An individual entity named in the list
	public var entry: [CitationCitedArtifactContributorshipEntry]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Used to record a display of the author/contributor list without separate coding for each list member
	public var summary: [CitationCitedArtifactContributorshipSummary]?
	
	/// Designated initializer
	public init(
		complete: FHIRPrimitive<FHIRBool>? = nil,
		entry: [CitationCitedArtifactContributorshipEntry]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		summary: [CitationCitedArtifactContributorshipSummary]? = nil
	) {
		self.complete = complete
		self.entry = entry
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.summary = summary
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case complete; case _complete
		case entry
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case summary
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.complete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .complete, auxiliaryKey: ._complete)
		self.entry = try [CitationCitedArtifactContributorshipEntry](from: _container, forKeyIfPresent: .entry)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.summary = try [CitationCitedArtifactContributorshipSummary](from: _container, forKeyIfPresent: .summary)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try complete?.encode(on: &_container, forKey: .complete, auxiliaryKey: ._complete)
		try entry?.encode(on: &_container, forKey: .entry)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try summary?.encode(on: &_container, forKey: .summary)
	}
}

/**
 An individual entity named in the list.
 
 An individual entity named in the author list or contributor list.
 */
public struct CitationCitedArtifactContributorshipEntry: BackboneElement {
	
	/// Physical mailing address
	public var address: [Address]?
	
	/// Organizational affiliation
	public var affiliationInfo: [CitationCitedArtifactContributorshipEntryAffiliationInfo]?
	
	/// Used for collective or corporate name as an author
	public var collectiveName: FHIRPrimitive<FHIRString>?
	
	/// Contributions with accounting for time or number
	public var contributionInstance: [CitationCitedArtifactContributorshipEntryContributionInstance]?
	
	/// The specific contribution
	public var contributionType: [CodeableConcept]?
	
	/// Indication of which contributor is the corresponding contributor for the role
	public var correspondingContact: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Author identifier, eg ORCID
	public var identifier: [Identifier]?
	
	/// Initials for forename
	public var initials: FHIRPrimitive<FHIRString>?
	
	/// Used to code order of authors
	public var listOrder: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// The role of the contributor (e.g. author, editor, reviewer)
	public var role: CodeableConcept?
	
	/// Email or telephone contact methods for the author or contributor
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		address: [Address]? = nil,
		affiliationInfo: [CitationCitedArtifactContributorshipEntryAffiliationInfo]? = nil,
		collectiveName: FHIRPrimitive<FHIRString>? = nil,
		contributionInstance: [CitationCitedArtifactContributorshipEntryContributionInstance]? = nil,
		contributionType: [CodeableConcept]? = nil,
		correspondingContact: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		initials: FHIRPrimitive<FHIRString>? = nil,
		listOrder: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		name: HumanName? = nil,
		role: CodeableConcept? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.address = address
		self.affiliationInfo = affiliationInfo
		self.collectiveName = collectiveName
		self.contributionInstance = contributionInstance
		self.contributionType = contributionType
		self.correspondingContact = correspondingContact
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.initials = initials
		self.listOrder = listOrder
		self.modifierExtension = modifierExtension
		self.name = name
		self.role = role
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case affiliationInfo
		case collectiveName; case _collectiveName
		case contributionInstance
		case contributionType
		case correspondingContact; case _correspondingContact
		case `extension` = "extension"
		case id; case _id
		case identifier
		case initials; case _initials
		case listOrder; case _listOrder
		case modifierExtension
		case name
		case role
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.affiliationInfo = try [CitationCitedArtifactContributorshipEntryAffiliationInfo](from: _container, forKeyIfPresent: .affiliationInfo)
		self.collectiveName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .collectiveName, auxiliaryKey: ._collectiveName)
		self.contributionInstance = try [CitationCitedArtifactContributorshipEntryContributionInstance](from: _container, forKeyIfPresent: .contributionInstance)
		self.contributionType = try [CodeableConcept](from: _container, forKeyIfPresent: .contributionType)
		self.correspondingContact = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .correspondingContact, auxiliaryKey: ._correspondingContact)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.initials = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initials, auxiliaryKey: ._initials)
		self.listOrder = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .listOrder, auxiliaryKey: ._listOrder)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try address?.encode(on: &_container, forKey: .address)
		try affiliationInfo?.encode(on: &_container, forKey: .affiliationInfo)
		try collectiveName?.encode(on: &_container, forKey: .collectiveName, auxiliaryKey: ._collectiveName)
		try contributionInstance?.encode(on: &_container, forKey: .contributionInstance)
		try contributionType?.encode(on: &_container, forKey: .contributionType)
		try correspondingContact?.encode(on: &_container, forKey: .correspondingContact, auxiliaryKey: ._correspondingContact)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try initials?.encode(on: &_container, forKey: .initials, auxiliaryKey: ._initials)
		try listOrder?.encode(on: &_container, forKey: .listOrder, auxiliaryKey: ._listOrder)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try role?.encode(on: &_container, forKey: .role)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}

/**
 Organizational affiliation.
 
 Organization affiliated with the entity.
 */
public struct CitationCitedArtifactContributorshipEntryAffiliationInfo: BackboneElement {
	
	/// Display for the organization
	public var affiliation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the organization
	public var identifier: [Identifier]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Role within the organization, such as professional title
	public var role: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		affiliation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		modifierExtension: [Extension]? = nil,
		role: FHIRPrimitive<FHIRString>? = nil
	) {
		self.affiliation = affiliation
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case affiliation; case _affiliation
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case role; case _role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.affiliation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .affiliation, auxiliaryKey: ._affiliation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .role, auxiliaryKey: ._role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try affiliation?.encode(on: &_container, forKey: .affiliation, auxiliaryKey: ._affiliation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
	}
}

/**
 Contributions with accounting for time or number.
 */
public struct CitationCitedArtifactContributorshipEntryContributionInstance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The time that the contribution was made
	public var time: FHIRPrimitive<DateTime>?
	
	/// The specific contribution
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		time: FHIRPrimitive<DateTime>? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.time = time
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case time; case _time
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
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Used to record a display of the author/contributor list without separate coding for each list member.
 */
public struct CitationCitedArtifactContributorshipSummary: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Used to code the producer or rule for creating the display string
	public var source: CodeableConcept?
	
	/// The format for the display string
	public var style: CodeableConcept?
	
	/// Either authorList or contributorshipStatement
	public var type: CodeableConcept?
	
	/// The display string for the author list, contributor list, or contributorship statement
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: CodeableConcept? = nil,
		style: CodeableConcept? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.style = style
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
		case style
		case type
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try CodeableConcept(from: _container, forKeyIfPresent: .source)
		self.style = try CodeableConcept(from: _container, forKeyIfPresent: .style)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
		try style?.encode(on: &_container, forKey: .style)
		try type?.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 The component of the article or artifact.
 */
public struct CitationCitedArtifactPart: BackboneElement {
	
	/// The citation for the full article or artifact
	public var baseCitation: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The kind of component
	public var type: CodeableConcept?
	
	/// The specification of the component
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		baseCitation: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.baseCitation = baseCitation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case baseCitation
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
		self.baseCitation = try Reference(from: _container, forKeyIfPresent: .baseCitation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try baseCitation?.encode(on: &_container, forKey: .baseCitation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 If multiple, used to represent alternative forms of the article that are not separate citations.
 */
public struct CitationCitedArtifactPublicationForm: BackboneElement {
	
	/// Entry number or identifier for inclusion in a database
	public var accessionNumber: FHIRPrimitive<FHIRString>?
	
	/// The date the article was added to the database, or the date the article was released
	public var articleDate: FHIRPrimitive<DateTime>?
	
	/// Copyright notice for the full article or artifact
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Used for isolated representation of first page
	public var firstPage: FHIRPrimitive<FHIRString>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Language in which this form of the article is published
	public var language: [CodeableConcept]?
	
	/// Used for isolated representation of last page
	public var lastPage: FHIRPrimitive<FHIRString>?
	
	/// The date the article was last revised or updated in the database
	public var lastRevisionDate: FHIRPrimitive<DateTime>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Number of pages or screens
	public var pageCount: FHIRPrimitive<FHIRString>?
	
	/// Used for full display of pagination
	public var pageString: FHIRPrimitive<FHIRString>?
	
	/// The specific issue in which the cited article resides
	public var periodicRelease: CitationCitedArtifactPublicationFormPeriodicRelease?
	
	/// The collection the cited article or artifact is published in
	public var publishedIn: CitationCitedArtifactPublicationFormPublishedIn?
	
	/// Designated initializer
	public init(
		accessionNumber: FHIRPrimitive<FHIRString>? = nil,
		articleDate: FHIRPrimitive<DateTime>? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		firstPage: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: [CodeableConcept]? = nil,
		lastPage: FHIRPrimitive<FHIRString>? = nil,
		lastRevisionDate: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		pageCount: FHIRPrimitive<FHIRString>? = nil,
		pageString: FHIRPrimitive<FHIRString>? = nil,
		periodicRelease: CitationCitedArtifactPublicationFormPeriodicRelease? = nil,
		publishedIn: CitationCitedArtifactPublicationFormPublishedIn? = nil
	) {
		self.accessionNumber = accessionNumber
		self.articleDate = articleDate
		self.copyright = copyright
		self.`extension` = `extension`
		self.firstPage = firstPage
		self.id = id
		self.language = language
		self.lastPage = lastPage
		self.lastRevisionDate = lastRevisionDate
		self.modifierExtension = modifierExtension
		self.pageCount = pageCount
		self.pageString = pageString
		self.periodicRelease = periodicRelease
		self.publishedIn = publishedIn
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accessionNumber; case _accessionNumber
		case articleDate; case _articleDate
		case copyright; case _copyright
		case `extension` = "extension"
		case firstPage; case _firstPage
		case id; case _id
		case language
		case lastPage; case _lastPage
		case lastRevisionDate; case _lastRevisionDate
		case modifierExtension
		case pageCount; case _pageCount
		case pageString; case _pageString
		case periodicRelease
		case publishedIn
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accessionNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .accessionNumber, auxiliaryKey: ._accessionNumber)
		self.articleDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .articleDate, auxiliaryKey: ._articleDate)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.firstPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .firstPage, auxiliaryKey: ._firstPage)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.lastPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastPage, auxiliaryKey: ._lastPage)
		self.lastRevisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastRevisionDate, auxiliaryKey: ._lastRevisionDate)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.pageCount = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageCount, auxiliaryKey: ._pageCount)
		self.pageString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageString, auxiliaryKey: ._pageString)
		self.periodicRelease = try CitationCitedArtifactPublicationFormPeriodicRelease(from: _container, forKeyIfPresent: .periodicRelease)
		self.publishedIn = try CitationCitedArtifactPublicationFormPublishedIn(from: _container, forKeyIfPresent: .publishedIn)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try accessionNumber?.encode(on: &_container, forKey: .accessionNumber, auxiliaryKey: ._accessionNumber)
		try articleDate?.encode(on: &_container, forKey: .articleDate, auxiliaryKey: ._articleDate)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try firstPage?.encode(on: &_container, forKey: .firstPage, auxiliaryKey: ._firstPage)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language)
		try lastPage?.encode(on: &_container, forKey: .lastPage, auxiliaryKey: ._lastPage)
		try lastRevisionDate?.encode(on: &_container, forKey: .lastRevisionDate, auxiliaryKey: ._lastRevisionDate)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try pageCount?.encode(on: &_container, forKey: .pageCount, auxiliaryKey: ._pageCount)
		try pageString?.encode(on: &_container, forKey: .pageString, auxiliaryKey: ._pageString)
		try periodicRelease?.encode(on: &_container, forKey: .periodicRelease)
		try publishedIn?.encode(on: &_container, forKey: .publishedIn)
	}
}

/**
 The specific issue in which the cited article resides.
 */
public struct CitationCitedArtifactPublicationFormPeriodicRelease: BackboneElement {
	
	/// Internet or Print
	public var citedMedium: CodeableConcept?
	
	/// Defining the date on which the issue of the journal was published
	public var dateOfPublication: CitationCitedArtifactPublicationFormPeriodicReleaseDateOfPublication?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Issue, part or supplement of journal in which the article is published
	public var issue: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Volume number of journal in which the article is published
	public var volume: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		citedMedium: CodeableConcept? = nil,
		dateOfPublication: CitationCitedArtifactPublicationFormPeriodicReleaseDateOfPublication? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issue: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		volume: FHIRPrimitive<FHIRString>? = nil
	) {
		self.citedMedium = citedMedium
		self.dateOfPublication = dateOfPublication
		self.`extension` = `extension`
		self.id = id
		self.issue = issue
		self.modifierExtension = modifierExtension
		self.volume = volume
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citedMedium
		case dateOfPublication
		case `extension` = "extension"
		case id; case _id
		case issue; case _issue
		case modifierExtension
		case volume; case _volume
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.dateOfPublication = try CitationCitedArtifactPublicationFormPeriodicReleaseDateOfPublication(from: _container, forKeyIfPresent: .dateOfPublication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try dateOfPublication?.encode(on: &_container, forKey: .dateOfPublication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try volume?.encode(on: &_container, forKey: .volume, auxiliaryKey: ._volume)
	}
}

/**
 Defining the date on which the issue of the journal was published.
 */
public struct CitationCitedArtifactPublicationFormPeriodicReleaseDateOfPublication: BackboneElement {
	
	/// Date on which the issue of the journal was published
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Day on which the issue of the journal was published
	public var day: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Month on which the issue of the journal was published
	public var month: FHIRPrimitive<FHIRString>?
	
	/// Season on which the issue of the journal was published
	public var season: FHIRPrimitive<FHIRString>?
	
	/// Text representation of the date of which the issue of the journal was published
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Year on which the issue of the journal was published
	public var year: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<FHIRDate>? = nil,
		day: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		month: FHIRPrimitive<FHIRString>? = nil,
		season: FHIRPrimitive<FHIRString>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		year: FHIRPrimitive<FHIRString>? = nil
	) {
		self.date = date
		self.day = day
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.month = month
		self.season = season
		self.text = text
		self.year = year
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case day; case _day
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case month; case _month
		case season; case _season
		case text; case _text
		case year; case _year
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.day = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .day, auxiliaryKey: ._day)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.month = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .month, auxiliaryKey: ._month)
		self.season = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .season, auxiliaryKey: ._season)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.year = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .year, auxiliaryKey: ._year)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try day?.encode(on: &_container, forKey: .day, auxiliaryKey: ._day)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try month?.encode(on: &_container, forKey: .month, auxiliaryKey: ._month)
		try season?.encode(on: &_container, forKey: .season, auxiliaryKey: ._season)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try year?.encode(on: &_container, forKey: .year, auxiliaryKey: ._year)
	}
}

/**
 The collection the cited article or artifact is published in.
 */
public struct CitationCitedArtifactPublicationFormPublishedIn: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID; Book identifiers include ISBN
	public var identifier: [Identifier]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of the publisher
	public var publisher: Reference?
	
	/// Geographic location of the publisher
	public var publisherLocation: FHIRPrimitive<FHIRString>?
	
	/// Name of the database or title of the book or journal
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Kind of container (e.g. Periodical, database, or book)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		modifierExtension: [Extension]? = nil,
		publisher: Reference? = nil,
		publisherLocation: FHIRPrimitive<FHIRString>? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.publisherLocation = publisherLocation
		self.title = title
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case publisher
		case publisherLocation; case _publisherLocation
		case title; case _title
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.publisherLocation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisherLocation, auxiliaryKey: ._publisherLocation)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try publisherLocation?.encode(on: &_container, forKey: .publisherLocation, auxiliaryKey: ._publisherLocation)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The artifact related to the cited artifact.
 */
public struct CitationCitedArtifactRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case identifier(Identifier)
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// How the cited artifact relates to the target artifact
	public var relationshipType: CodeableConcept
	
	/// The article or artifact that the cited artifact is related to
	/// One of `target[x]`
	public var target: TargetX
	
	/// The clasification of the related artifact
	public var targetClassifier: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relationshipType: CodeableConcept,
		target: TargetX,
		targetClassifier: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relationshipType = relationshipType
		self.target = target
		self.targetClassifier = targetClassifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relationshipType
		case targetAttachment
		case targetClassifier
		case targetIdentifier
		case targetReference
		case targetUri; case _targetUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relationshipType = try CodeableConcept(from: _container, forKey: .relationshipType)
		self.target = try Self._decodeTarget(from: _container)
		self.targetClassifier = try [CodeableConcept](from: _container, forKeyIfPresent: .targetClassifier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relationshipType.encode(on: &_container, forKey: .relationshipType)
		
		switch target {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .targetAttachment)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .targetIdentifier)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .targetReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
		}
		
		try targetClassifier?.encode(on: &_container, forKey: .targetClassifier)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX {
		var _t_target: TargetX? = nil
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			_t_target = .attachment(targetAttachment)
		}
		if let targetIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetIdentifier) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetIdentifier, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .identifier(targetIdentifier)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		guard let _t_target else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.targetUri)
			throw DecodingError.valueNotFound(TargetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		return _t_target
	}
}

/**
 An effective date or period for a status of the cited artifact.
 */
public struct CitationCitedArtifactStatusDate: BackboneElement {
	
	/// Classification of the status
	public var activity: CodeableConcept
	
	/// Either occurred or expected
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// When the status started and/or ended
	public var period: Period
	
	/// Designated initializer
	public init(
		activity: CodeableConcept,
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period
	) {
		self.activity = activity
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case actual; case _actual
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try CodeableConcept(from: _container, forKey: .activity)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try activity.encode(on: &_container, forKey: .activity)
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
	}
}

/**
 The title details of the article or artifact.
 */
public struct CitationCitedArtifactTitle: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Used to express the specific language
	public var language: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The title of the article or artifact
	public var text: FHIRPrimitive<FHIRString>
	
	/// The kind of title
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		text: FHIRPrimitive<FHIRString>,
		type: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case language
		case modifierExtension
		case text; case _text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The defined version of the cited artifact.
 */
public struct CitationCitedArtifactVersion: BackboneElement {
	
	/// Citation for the main version of the cited artifact
	public var baseCitation: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The version number or other version identifier
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		baseCitation: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.baseCitation = baseCitation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case baseCitation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.baseCitation = try Reference(from: _container, forKeyIfPresent: .baseCitation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try baseCitation?.encode(on: &_container, forKey: .baseCitation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Used for any URL for the article or artifact cited.
 */
public struct CitationCitedArtifactWebLocation: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code the reason for different URLs, e.g. abstract and full-text
	public var type: CodeableConcept?
	
	/// The specific URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 The assignment to an organizing scheme.
 */
public struct CitationClassification: BackboneElement {
	
	/// The specific classification value
	public var classifier: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The kind of classifier (e.g. publication type, keyword)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Artifact related to the Citation Resource.
 */
public struct CitationRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case identifier(Identifier)
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// How the Citation resource relates to the target artifact
	public var relationshipType: CodeableConcept
	
	/// The article or artifact that the Citation Resource is related to
	/// One of `target[x]`
	public var target: TargetX
	
	/// The clasification of the related artifact
	public var targetClassifier: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relationshipType: CodeableConcept,
		target: TargetX,
		targetClassifier: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relationshipType = relationshipType
		self.target = target
		self.targetClassifier = targetClassifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relationshipType
		case targetAttachment
		case targetClassifier
		case targetIdentifier
		case targetReference
		case targetUri; case _targetUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relationshipType = try CodeableConcept(from: _container, forKey: .relationshipType)
		self.target = try Self._decodeTarget(from: _container)
		self.targetClassifier = try [CodeableConcept](from: _container, forKeyIfPresent: .targetClassifier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relationshipType.encode(on: &_container, forKey: .relationshipType)
		
		switch target {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .targetAttachment)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .targetIdentifier)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .targetReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
		}
		
		try targetClassifier?.encode(on: &_container, forKey: .targetClassifier)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX {
		var _t_target: TargetX? = nil
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			_t_target = .attachment(targetAttachment)
		}
		if let targetIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetIdentifier) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetIdentifier, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .identifier(targetIdentifier)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		guard let _t_target else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.targetUri)
			throw DecodingError.valueNotFound(TargetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		return _t_target
	}
}

/**
 An effective date or period for a status of the citation.
 */
public struct CitationStatusDate: BackboneElement {
	
	/// Classification of the status
	public var activity: CodeableConcept
	
	/// Either occurred or expected
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// When the status started and/or ended
	public var period: Period
	
	/// Designated initializer
	public init(
		activity: CodeableConcept,
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period
	) {
		self.activity = activity
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case actual; case _actual
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try CodeableConcept(from: _container, forKey: .activity)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try activity.encode(on: &_container, forKey: .activity)
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
	}
}

/**
 A human-readable display of the citation.
 */
public struct CitationSummary: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Format for display of the citation
	public var style: CodeableConcept?
	
	/// The human-readable display of the citation
	public var text: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		style: CodeableConcept? = nil,
		text: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.style = style
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case style
		case text; case _text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.style = try CodeableConcept(from: _container, forKeyIfPresent: .style)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try style?.encode(on: &_container, forKey: .style)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
	}
}
