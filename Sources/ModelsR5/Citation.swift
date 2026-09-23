//
//  Citation.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Citation)
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
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When the citation record was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the citation record
	public var author: [ContactDetail]?
	
	/// The article or artifact being described
	public var citedArtifact: CitationCitedArtifact?
	
	/// The assignment to an organizing scheme
	public var classification: [CitationClassification]?
	
	/// Contact details for the publisher of the citation record
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions for the citation record, not for the cited artifact
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s) for the ciation record, not for the cited artifact
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// The status of the citation record
	public var currentState: [CodeableConcept]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the citation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the citation record
	public var editor: [ContactDetail]?
	
	/// When the citation record is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the citation record
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the citation record itself
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for citation record (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the citation record was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this citation record (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Used for general notes and annotations not coded elsewhere
	public var note: [Annotation]?
	
	/// The publisher of the citation record, not the publisher of the article or artifact being cited
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this citation is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Artifact related to the citation record
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the citation record
	public var reviewer: [ContactDetail]?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// An effective date or period for a status of the citation record
	public var statusDate: [CitationStatusDate]?
	
	/// A human-readable display of key concepts to represent the citation
	public var summary: [CitationSummary]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this citation record (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this citation record, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the citation record content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the citation record
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		citedArtifact: CitationCitedArtifact? = nil,
		classification: [CitationClassification]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
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
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		statusDate: [CitationStatusDate]? = nil,
		summary: [CitationSummary]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.citedArtifact = citedArtifact
		self.classification = classification
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
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
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.status = status
		self.statusDate = statusDate
		self.summary = summary
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
		case author
		case citedArtifact
		case classification
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
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
		case relatedArtifact
		case reviewer
		case status; case _status
		case statusDate
		case summary
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
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.citedArtifact = try CitationCitedArtifact(from: _container, forKeyIfPresent: .citedArtifact)
		self.classification = try [CitationClassification](from: _container, forKeyIfPresent: .classification)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
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
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try [CitationStatusDate](from: _container, forKeyIfPresent: .statusDate)
		self.summary = try [CitationSummary](from: _container, forKeyIfPresent: .summary)
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
		try author?.encode(on: &_container, forKey: .author)
		try citedArtifact?.encode(on: &_container, forKey: .citedArtifact)
		try classification?.encode(on: &_container, forKey: .classification)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
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
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate)
		try summary?.encode(on: &_container, forKey: .summary)
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
	
	/// Unique identifier. May include DOI, PMID, PMCID, etc
	public var identifier: [Identifier]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Any additional information or content for the article or artifact
	public var note: [Annotation]?
	
	/// The component of the article or artifact
	public var part: CitationCitedArtifactPart?
	
	/// If multiple, used to represent alternative forms of the article that are not separate citations
	public var publicationForm: [CitationCitedArtifactPublicationForm]?
	
	/// Identifier not unique to the cited artifact. May include trial registry identifiers
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
 
 The abstract may be used to convey article-contained abstracts, externally-created abstracts, or other descriptive
 summaries.
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
	
	/// Complex or externally created classification
	public var artifactAssessment: [Reference]?
	
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
		artifactAssessment: [Reference]? = nil,
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.artifactAssessment = artifactAssessment
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case artifactAssessment
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
		self.artifactAssessment = try [Reference](from: _container, forKeyIfPresent: .artifactAssessment)
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
		try artifactAssessment?.encode(on: &_container, forKey: .artifactAssessment)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
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
	
	/// An individual entity named as a contributor
	public var entry: [CitationCitedArtifactContributorshipEntry]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Used to record a display of the author/contributor list without separate data element for each list member
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
 An individual entity named as a contributor.
 
 An individual entity named as a contributor, for example in the author list or contributor list.
 */
public struct CitationCitedArtifactContributorshipEntry: BackboneElement {
	
	/// Organizational affiliation
	public var affiliation: [Reference]?
	
	/// Contributions with accounting for time or number
	public var contributionInstance: [CitationCitedArtifactContributorshipEntryContributionInstance]?
	
	/// The specific contribution
	public var contributionType: [CodeableConcept]?
	
	/// The identity of the individual contributor
	public var contributor: Reference
	
	/// Whether the contributor is the corresponding contributor for the role
	public var correspondingContact: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// For citation styles that use initials
	public var forenameInitials: FHIRPrimitive<FHIRString>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Ranked order of contribution
	public var rankingOrder: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The role of the contributor (e.g. author, editor, reviewer, funder)
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		affiliation: [Reference]? = nil,
		contributionInstance: [CitationCitedArtifactContributorshipEntryContributionInstance]? = nil,
		contributionType: [CodeableConcept]? = nil,
		contributor: Reference,
		correspondingContact: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		forenameInitials: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rankingOrder: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		role: CodeableConcept? = nil
	) {
		self.affiliation = affiliation
		self.contributionInstance = contributionInstance
		self.contributionType = contributionType
		self.contributor = contributor
		self.correspondingContact = correspondingContact
		self.`extension` = `extension`
		self.forenameInitials = forenameInitials
		self.id = id
		self.modifierExtension = modifierExtension
		self.rankingOrder = rankingOrder
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case affiliation
		case contributionInstance
		case contributionType
		case contributor
		case correspondingContact; case _correspondingContact
		case `extension` = "extension"
		case forenameInitials; case _forenameInitials
		case id; case _id
		case modifierExtension
		case rankingOrder; case _rankingOrder
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.affiliation = try [Reference](from: _container, forKeyIfPresent: .affiliation)
		self.contributionInstance = try [CitationCitedArtifactContributorshipEntryContributionInstance](from: _container, forKeyIfPresent: .contributionInstance)
		self.contributionType = try [CodeableConcept](from: _container, forKeyIfPresent: .contributionType)
		self.contributor = try Reference(from: _container, forKey: .contributor)
		self.correspondingContact = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .correspondingContact, auxiliaryKey: ._correspondingContact)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.forenameInitials = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .forenameInitials, auxiliaryKey: ._forenameInitials)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rankingOrder = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rankingOrder, auxiliaryKey: ._rankingOrder)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try affiliation?.encode(on: &_container, forKey: .affiliation)
		try contributionInstance?.encode(on: &_container, forKey: .contributionInstance)
		try contributionType?.encode(on: &_container, forKey: .contributionType)
		try contributor.encode(on: &_container, forKey: .contributor)
		try correspondingContact?.encode(on: &_container, forKey: .correspondingContact, auxiliaryKey: ._correspondingContact)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try forenameInitials?.encode(on: &_container, forKey: .forenameInitials, auxiliaryKey: ._forenameInitials)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rankingOrder?.encode(on: &_container, forKey: .rankingOrder, auxiliaryKey: ._rankingOrder)
		try role?.encode(on: &_container, forKey: .role)
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
 Used to record a display of the author/contributor list without separate data element for each list member.
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
	
	/// Such as author list, contributorship statement, funding statement, acknowledgements statement, or conflicts of
	/// interest statement
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
	
	/// Internet or Print
	public var citedMedium: CodeableConcept?
	
	/// Copyright notice for the full article or artifact
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Used for isolated representation of first page
	public var firstPage: FHIRPrimitive<FHIRString>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Issue, part or supplement of journal or other collection in which the article is published
	public var issue: FHIRPrimitive<FHIRString>?
	
	/// Language(s) in which this form of the article is published
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
	
	/// Season in which the cited artifact was published
	public var publicationDateSeason: FHIRPrimitive<FHIRString>?
	
	/// Text representation of the date on which the issue of the cited artifact was published
	public var publicationDateText: FHIRPrimitive<FHIRString>?
	
	/// The collection the cited article or artifact is published in
	public var publishedIn: CitationCitedArtifactPublicationFormPublishedIn?
	
	/// Volume number of journal or other collection in which the article is published
	public var volume: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		accessionNumber: FHIRPrimitive<FHIRString>? = nil,
		articleDate: FHIRPrimitive<DateTime>? = nil,
		citedMedium: CodeableConcept? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		firstPage: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		issue: FHIRPrimitive<FHIRString>? = nil,
		language: [CodeableConcept]? = nil,
		lastPage: FHIRPrimitive<FHIRString>? = nil,
		lastRevisionDate: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		pageCount: FHIRPrimitive<FHIRString>? = nil,
		pageString: FHIRPrimitive<FHIRString>? = nil,
		publicationDateSeason: FHIRPrimitive<FHIRString>? = nil,
		publicationDateText: FHIRPrimitive<FHIRString>? = nil,
		publishedIn: CitationCitedArtifactPublicationFormPublishedIn? = nil,
		volume: FHIRPrimitive<FHIRString>? = nil
	) {
		self.accessionNumber = accessionNumber
		self.articleDate = articleDate
		self.citedMedium = citedMedium
		self.copyright = copyright
		self.`extension` = `extension`
		self.firstPage = firstPage
		self.id = id
		self.issue = issue
		self.language = language
		self.lastPage = lastPage
		self.lastRevisionDate = lastRevisionDate
		self.modifierExtension = modifierExtension
		self.pageCount = pageCount
		self.pageString = pageString
		self.publicationDateSeason = publicationDateSeason
		self.publicationDateText = publicationDateText
		self.publishedIn = publishedIn
		self.volume = volume
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accessionNumber; case _accessionNumber
		case articleDate; case _articleDate
		case citedMedium
		case copyright; case _copyright
		case `extension` = "extension"
		case firstPage; case _firstPage
		case id; case _id
		case issue; case _issue
		case language
		case lastPage; case _lastPage
		case lastRevisionDate; case _lastRevisionDate
		case modifierExtension
		case pageCount; case _pageCount
		case pageString; case _pageString
		case publicationDateSeason; case _publicationDateSeason
		case publicationDateText; case _publicationDateText
		case publishedIn
		case volume; case _volume
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accessionNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .accessionNumber, auxiliaryKey: ._accessionNumber)
		self.articleDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .articleDate, auxiliaryKey: ._articleDate)
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.firstPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .firstPage, auxiliaryKey: ._firstPage)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.lastPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastPage, auxiliaryKey: ._lastPage)
		self.lastRevisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastRevisionDate, auxiliaryKey: ._lastRevisionDate)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.pageCount = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageCount, auxiliaryKey: ._pageCount)
		self.pageString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageString, auxiliaryKey: ._pageString)
		self.publicationDateSeason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicationDateSeason, auxiliaryKey: ._publicationDateSeason)
		self.publicationDateText = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicationDateText, auxiliaryKey: ._publicationDateText)
		self.publishedIn = try CitationCitedArtifactPublicationFormPublishedIn(from: _container, forKeyIfPresent: .publishedIn)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try accessionNumber?.encode(on: &_container, forKey: .accessionNumber, auxiliaryKey: ._accessionNumber)
		try articleDate?.encode(on: &_container, forKey: .articleDate, auxiliaryKey: ._articleDate)
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try firstPage?.encode(on: &_container, forKey: .firstPage, auxiliaryKey: ._firstPage)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try language?.encode(on: &_container, forKey: .language)
		try lastPage?.encode(on: &_container, forKey: .lastPage, auxiliaryKey: ._lastPage)
		try lastRevisionDate?.encode(on: &_container, forKey: .lastRevisionDate, auxiliaryKey: ._lastRevisionDate)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try pageCount?.encode(on: &_container, forKey: .pageCount, auxiliaryKey: ._pageCount)
		try pageString?.encode(on: &_container, forKey: .pageString, auxiliaryKey: ._pageString)
		try publicationDateSeason?.encode(on: &_container, forKey: .publicationDateSeason, auxiliaryKey: ._publicationDateSeason)
		try publicationDateText?.encode(on: &_container, forKey: .publicationDateText, auxiliaryKey: ._publicationDateText)
		try publishedIn?.encode(on: &_container, forKey: .publishedIn)
		try volume?.encode(on: &_container, forKey: .volume, auxiliaryKey: ._volume)
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
	
	/// Name of or resource describing the publisher
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
	
	/// Bibliographic citation for the artifact
	public var citation: FHIRPrimitive<FHIRString>?
	
	/// Additional classifiers
	public var classifier: [CodeableConcept]?
	
	/// Brief description of the related artifact
	public var display: FHIRPrimitive<FHIRString>?
	
	/// What document is being referenced
	public var document: Attachment?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Short label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What artifact is being referenced
	public var resource: FHIRPrimitive<Canonical>?
	
	/// What artifact, if not a conformance resource
	public var resourceReference: Reference?
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of
	public var type: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		citation: FHIRPrimitive<FHIRString>? = nil,
		classifier: [CodeableConcept]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		document: Attachment? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		resource: FHIRPrimitive<Canonical>? = nil,
		resourceReference: Reference? = nil,
		type: FHIRPrimitive<FHIRString>
	) {
		self.citation = citation
		self.classifier = classifier
		self.display = display
		self.document = document
		self.`extension` = `extension`
		self.id = id
		self.label = label
		self.modifierExtension = modifierExtension
		self.resource = resource
		self.resourceReference = resourceReference
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citation; case _citation
		case classifier
		case display; case _display
		case document
		case `extension` = "extension"
		case id; case _id
		case label; case _label
		case modifierExtension
		case resource; case _resource
		case resourceReference
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.citation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citation, auxiliaryKey: ._citation)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.document = try Attachment(from: _container, forKeyIfPresent: .document)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.resource = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.resourceReference = try Reference(from: _container, forKeyIfPresent: .resourceReference)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try citation?.encode(on: &_container, forKey: .citation, auxiliaryKey: ._citation)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try document?.encode(on: &_container, forKey: .document)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try resourceReference?.encode(on: &_container, forKey: .resourceReference)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 An effective date or period for a status of the cited artifact.
 
 An effective date or period, historical or future, actual or expected, for a status of the cited artifact.
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
	
	/// Code the reason for different URLs, e.g. abstract and full-text
	public var classifier: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The specific URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case url; case _url
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
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
 An effective date or period for a status of the citation record.
 
 The state or status of the citation record paired with an effective date or period for that state.
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
 A human-readable display of key concepts to represent the citation.
 */
public struct CitationSummary: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Format for display of the citation summary
	public var style: CodeableConcept?
	
	/// The human-readable display of the citation summary
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
