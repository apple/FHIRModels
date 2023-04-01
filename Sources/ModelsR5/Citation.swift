//
//  Citation.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Citation)
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
 A description of identification, location, or contributorship of a publication (article or artifact).
 
 The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The
 Citation Resource supports existing reference structures and developing publication practices such as versioning,
 expressing complex contributorship roles, and referencing computable resources.
 */
open class Citation: DomainResource {
	
	override open class var resourceType: ResourceType { return .citation }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this citation record, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Identifier for the citation record itself
	public var identifier: [Identifier]?
	
	/// Business version of the citation record
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this citation record (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this citation record (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The publisher of the citation record, not the publisher of the article or artifact being cited
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher of the citation record
	public var contact: [ContactDetail]?
	
	/// Natural language description of the citation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the citation record content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for citation record (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this citation is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions for the citation record, not for the cited artifact
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s) for the ciation record, not for the cited artifact
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the citation record was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the citation record was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the citation record is expected to be used
	public var effectivePeriod: Period?
	
	/// Who authored the citation record
	public var author: [ContactDetail]?
	
	/// Who edited the citation record
	public var editor: [ContactDetail]?
	
	/// Who reviewed the citation record
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the citation record
	public var endorser: [ContactDetail]?
	
	/// A human-readable display of key concepts to represent the citation
	public var summary: [CitationSummary]?
	
	/// The assignment to an organizing scheme
	public var classification: [CitationClassification]?
	
	/// Used for general notes and annotations not coded elsewhere
	public var note: [Annotation]?
	
	/// The status of the citation record
	public var currentState: [CodeableConcept]?
	
	/// An effective date or period for a status of the citation record
	public var statusDate: [CitationStatusDate]?
	
	/// Artifact related to the citation record
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The article or artifact being described
	public var citedArtifact: CitationCitedArtifact?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		case approvalDate; case _approvalDate
		case author
		case citedArtifact
		case classification
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case currentState
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case note
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case status; case _status
		case statusDate
		case summary
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.citedArtifact = try CitationCitedArtifact(from: _container, forKeyIfPresent: .citedArtifact)
		self.classification = try [CitationClassification](from: _container, forKeyIfPresent: .classification)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.currentState = try [CodeableConcept](from: _container, forKeyIfPresent: .currentState)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try [CitationStatusDate](from: _container, forKeyIfPresent: .statusDate)
		self.summary = try [CitationSummary](from: _container, forKeyIfPresent: .summary)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try citedArtifact?.encode(on: &_container, forKey: .citedArtifact)
		try classification?.encode(on: &_container, forKey: .classification)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try currentState?.encode(on: &_container, forKey: .currentState)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate)
		try summary?.encode(on: &_container, forKey: .summary)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Citation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && author == _other.author
		    && citedArtifact == _other.citedArtifact
		    && classification == _other.classification
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && currentState == _other.currentState
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && note == _other.note
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && summary == _other.summary
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(citedArtifact)
		hasher.combine(classification)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(currentState)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(summary)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 The article or artifact being described.
 */
open class CitationCitedArtifact: BackboneElement {
	
	/// Unique identifier. May include DOI, PMID, PMCID, etc
	public var identifier: [Identifier]?
	
	/// Identifier not unique to the cited artifact. May include trial registry identifiers
	public var relatedIdentifier: [Identifier]?
	
	/// When the cited artifact was accessed
	public var dateAccessed: FHIRPrimitive<DateTime>?
	
	/// The defined version of the cited artifact
	public var version: CitationCitedArtifactVersion?
	
	/// The status of the cited artifact
	public var currentState: [CodeableConcept]?
	
	/// An effective date or period for a status of the cited artifact
	public var statusDate: [CitationCitedArtifactStatusDate]?
	
	/// The title details of the article or artifact
	public var title: [CitationCitedArtifactTitle]?
	
	/// Summary of the article or artifact
	public var abstract: [CitationCitedArtifactAbstract]?
	
	/// The component of the article or artifact
	public var part: CitationCitedArtifactPart?
	
	/// The artifact related to the cited artifact
	public var relatesTo: [CitationCitedArtifactRelatesTo]?
	
	/// If multiple, used to represent alternative forms of the article that are not separate citations
	public var publicationForm: [CitationCitedArtifactPublicationForm]?
	
	/// Used for any URL for the article or artifact cited
	public var webLocation: [CitationCitedArtifactWebLocation]?
	
	/// The assignment to an organizing scheme
	public var classification: [CitationCitedArtifactClassification]?
	
	/// Attribution of authors and other contributors
	public var contributorship: CitationCitedArtifactContributorship?
	
	/// Any additional information or content for the article or artifact
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case identifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try [CitationCitedArtifactAbstract](from: _container, forKeyIfPresent: .abstract)
		self.classification = try [CitationCitedArtifactClassification](from: _container, forKeyIfPresent: .classification)
		self.contributorship = try CitationCitedArtifactContributorship(from: _container, forKeyIfPresent: .contributorship)
		self.currentState = try [CodeableConcept](from: _container, forKeyIfPresent: .currentState)
		self.dateAccessed = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAccessed, auxiliaryKey: ._dateAccessed)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.part = try CitationCitedArtifactPart(from: _container, forKeyIfPresent: .part)
		self.publicationForm = try [CitationCitedArtifactPublicationForm](from: _container, forKeyIfPresent: .publicationForm)
		self.relatedIdentifier = try [Identifier](from: _container, forKeyIfPresent: .relatedIdentifier)
		self.relatesTo = try [CitationCitedArtifactRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.statusDate = try [CitationCitedArtifactStatusDate](from: _container, forKeyIfPresent: .statusDate)
		self.title = try [CitationCitedArtifactTitle](from: _container, forKeyIfPresent: .title)
		self.version = try CitationCitedArtifactVersion(from: _container, forKeyIfPresent: .version)
		self.webLocation = try [CitationCitedArtifactWebLocation](from: _container, forKeyIfPresent: .webLocation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract?.encode(on: &_container, forKey: .abstract)
		try classification?.encode(on: &_container, forKey: .classification)
		try contributorship?.encode(on: &_container, forKey: .contributorship)
		try currentState?.encode(on: &_container, forKey: .currentState)
		try dateAccessed?.encode(on: &_container, forKey: .dateAccessed, auxiliaryKey: ._dateAccessed)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try note?.encode(on: &_container, forKey: .note)
		try part?.encode(on: &_container, forKey: .part)
		try publicationForm?.encode(on: &_container, forKey: .publicationForm)
		try relatedIdentifier?.encode(on: &_container, forKey: .relatedIdentifier)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try statusDate?.encode(on: &_container, forKey: .statusDate)
		try title?.encode(on: &_container, forKey: .title)
		try version?.encode(on: &_container, forKey: .version)
		try webLocation?.encode(on: &_container, forKey: .webLocation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abstract == _other.abstract
		    && classification == _other.classification
		    && contributorship == _other.contributorship
		    && currentState == _other.currentState
		    && dateAccessed == _other.dateAccessed
		    && identifier == _other.identifier
		    && note == _other.note
		    && part == _other.part
		    && publicationForm == _other.publicationForm
		    && relatedIdentifier == _other.relatedIdentifier
		    && relatesTo == _other.relatesTo
		    && statusDate == _other.statusDate
		    && title == _other.title
		    && version == _other.version
		    && webLocation == _other.webLocation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(classification)
		hasher.combine(contributorship)
		hasher.combine(currentState)
		hasher.combine(dateAccessed)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(part)
		hasher.combine(publicationForm)
		hasher.combine(relatedIdentifier)
		hasher.combine(relatesTo)
		hasher.combine(statusDate)
		hasher.combine(title)
		hasher.combine(version)
		hasher.combine(webLocation)
	}
}

/**
 Summary of the article or artifact.
 
 The abstract may be used to convey article-contained abstracts, externally-created abstracts, or other descriptive
 summaries.
 */
open class CitationCitedArtifactAbstract: BackboneElement {
	
	/// The kind of abstract
	public var type: CodeableConcept?
	
	/// Used to express the specific language
	public var language: CodeableConcept?
	
	/// Abstract content
	public var text: FHIRPrimitive<FHIRString>
	
	/// Copyright notice for the abstract
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(text: FHIRPrimitive<FHIRString>) {
		self.text = text
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		copyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		text: FHIRPrimitive<FHIRString>,
		type: CodeableConcept? = nil
	) {
		self.init(text: text)
		self.copyright = copyright
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case copyright; case _copyright
		case language
		case text; case _text
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try language?.encode(on: &_container, forKey: .language)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactAbstract else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return copyright == _other.copyright
		    && language == _other.language
		    && text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(copyright)
		hasher.combine(language)
		hasher.combine(text)
		hasher.combine(type)
	}
}

/**
 The assignment to an organizing scheme.
 */
open class CitationCitedArtifactClassification: BackboneElement {
	
	/// The kind of classifier (e.g. publication type, keyword)
	public var type: CodeableConcept?
	
	/// The specific classification value
	public var classifier: [CodeableConcept]?
	
	/// Complex or externally created classification
	public var artifactAssessment: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		artifactAssessment: [Reference]? = nil,
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
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
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.artifactAssessment = try [Reference](from: _container, forKeyIfPresent: .artifactAssessment)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try artifactAssessment?.encode(on: &_container, forKey: .artifactAssessment)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactClassification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return artifactAssessment == _other.artifactAssessment
		    && classifier == _other.classifier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(artifactAssessment)
		hasher.combine(classifier)
		hasher.combine(type)
	}
}

/**
 Attribution of authors and other contributors.
 
 This element is used to list authors and other contributors, their contact information, specific contributions, and
 summary statements.
 */
open class CitationCitedArtifactContributorship: BackboneElement {
	
	/// Indicates if the list includes all authors and/or contributors
	public var complete: FHIRPrimitive<FHIRBool>?
	
	/// An individual entity named as a contributor
	public var entry: [CitationCitedArtifactContributorshipEntry]?
	
	/// Used to record a display of the author/contributor list without separate data element for each list member
	public var summary: [CitationCitedArtifactContributorshipSummary]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		complete: FHIRPrimitive<FHIRBool>? = nil,
		entry: [CitationCitedArtifactContributorshipEntry]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		summary: [CitationCitedArtifactContributorshipSummary]? = nil
	) {
		self.init()
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
		case summary
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.complete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .complete, auxiliaryKey: ._complete)
		self.entry = try [CitationCitedArtifactContributorshipEntry](from: _container, forKeyIfPresent: .entry)
		self.summary = try [CitationCitedArtifactContributorshipSummary](from: _container, forKeyIfPresent: .summary)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try complete?.encode(on: &_container, forKey: .complete, auxiliaryKey: ._complete)
		try entry?.encode(on: &_container, forKey: .entry)
		try summary?.encode(on: &_container, forKey: .summary)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactContributorship else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return complete == _other.complete
		    && entry == _other.entry
		    && summary == _other.summary
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(complete)
		hasher.combine(entry)
		hasher.combine(summary)
	}
}

/**
 An individual entity named as a contributor.
 
 An individual entity named as a contributor, for example in the author list or contributor list.
 */
open class CitationCitedArtifactContributorshipEntry: BackboneElement {
	
	/// The identity of the individual contributor
	public var contributor: Reference
	
	/// For citation styles that use initials
	public var forenameInitials: FHIRPrimitive<FHIRString>?
	
	/// Organizational affiliation
	public var affiliation: [Reference]?
	
	/// The specific contribution
	public var contributionType: [CodeableConcept]?
	
	/// The role of the contributor (e.g. author, editor, reviewer, funder)
	public var role: CodeableConcept?
	
	/// Contributions with accounting for time or number
	public var contributionInstance: [CitationCitedArtifactContributorshipEntryContributionInstance]?
	
	/// Whether the contributor is the corresponding contributor for the role
	public var correspondingContact: FHIRPrimitive<FHIRBool>?
	
	/// Ranked order of contribution
	public var rankingOrder: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	public init(contributor: Reference) {
		self.contributor = contributor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(contributor: contributor)
		self.affiliation = affiliation
		self.contributionInstance = contributionInstance
		self.contributionType = contributionType
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
		case forenameInitials; case _forenameInitials
		case rankingOrder; case _rankingOrder
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.affiliation = try [Reference](from: _container, forKeyIfPresent: .affiliation)
		self.contributionInstance = try [CitationCitedArtifactContributorshipEntryContributionInstance](from: _container, forKeyIfPresent: .contributionInstance)
		self.contributionType = try [CodeableConcept](from: _container, forKeyIfPresent: .contributionType)
		self.contributor = try Reference(from: _container, forKey: .contributor)
		self.correspondingContact = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .correspondingContact, auxiliaryKey: ._correspondingContact)
		self.forenameInitials = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .forenameInitials, auxiliaryKey: ._forenameInitials)
		self.rankingOrder = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rankingOrder, auxiliaryKey: ._rankingOrder)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try affiliation?.encode(on: &_container, forKey: .affiliation)
		try contributionInstance?.encode(on: &_container, forKey: .contributionInstance)
		try contributionType?.encode(on: &_container, forKey: .contributionType)
		try contributor.encode(on: &_container, forKey: .contributor)
		try correspondingContact?.encode(on: &_container, forKey: .correspondingContact, auxiliaryKey: ._correspondingContact)
		try forenameInitials?.encode(on: &_container, forKey: .forenameInitials, auxiliaryKey: ._forenameInitials)
		try rankingOrder?.encode(on: &_container, forKey: .rankingOrder, auxiliaryKey: ._rankingOrder)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactContributorshipEntry else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return affiliation == _other.affiliation
		    && contributionInstance == _other.contributionInstance
		    && contributionType == _other.contributionType
		    && contributor == _other.contributor
		    && correspondingContact == _other.correspondingContact
		    && forenameInitials == _other.forenameInitials
		    && rankingOrder == _other.rankingOrder
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(affiliation)
		hasher.combine(contributionInstance)
		hasher.combine(contributionType)
		hasher.combine(contributor)
		hasher.combine(correspondingContact)
		hasher.combine(forenameInitials)
		hasher.combine(rankingOrder)
		hasher.combine(role)
	}
}

/**
 Contributions with accounting for time or number.
 */
open class CitationCitedArtifactContributorshipEntryContributionInstance: BackboneElement {
	
	/// The specific contribution
	public var type: CodeableConcept
	
	/// The time that the contribution was made
	public var time: FHIRPrimitive<DateTime>?
	
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
		time: FHIRPrimitive<DateTime>? = nil,
		type: CodeableConcept
	) {
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case time; case _time
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactContributorshipEntryContributionInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return time == _other.time
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(time)
		hasher.combine(type)
	}
}

/**
 Used to record a display of the author/contributor list without separate data element for each list member.
 */
open class CitationCitedArtifactContributorshipSummary: BackboneElement {
	
	/// Such as author list, contributorship statement, funding statement, acknowledgements statement, or conflicts of
	/// interest statement
	public var type: CodeableConcept?
	
	/// The format for the display string
	public var style: CodeableConcept?
	
	/// Used to code the producer or rule for creating the display string
	public var source: CodeableConcept?
	
	/// The display string for the author list, contributor list, or contributorship statement
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: CodeableConcept? = nil,
		style: CodeableConcept? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.style = style
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case source
		case style
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.source = try CodeableConcept(from: _container, forKeyIfPresent: .source)
		self.style = try CodeableConcept(from: _container, forKeyIfPresent: .style)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try source?.encode(on: &_container, forKey: .source)
		try style?.encode(on: &_container, forKey: .style)
		try type?.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactContributorshipSummary else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return source == _other.source
		    && style == _other.style
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(source)
		hasher.combine(style)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 The component of the article or artifact.
 */
open class CitationCitedArtifactPart: BackboneElement {
	
	/// The kind of component
	public var type: CodeableConcept?
	
	/// The specification of the component
	public var value: FHIRPrimitive<FHIRString>?
	
	/// The citation for the full article or artifact
	public var baseCitation: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		baseCitation: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
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
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.baseCitation = try Reference(from: _container, forKeyIfPresent: .baseCitation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try baseCitation?.encode(on: &_container, forKey: .baseCitation)
		try type?.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactPart else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return baseCitation == _other.baseCitation
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(baseCitation)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 If multiple, used to represent alternative forms of the article that are not separate citations.
 */
open class CitationCitedArtifactPublicationForm: BackboneElement {
	
	/// The collection the cited article or artifact is published in
	public var publishedIn: CitationCitedArtifactPublicationFormPublishedIn?
	
	/// Internet or Print
	public var citedMedium: CodeableConcept?
	
	/// Volume number of journal or other collection in which the article is published
	public var volume: FHIRPrimitive<FHIRString>?
	
	/// Issue, part or supplement of journal or other collection in which the article is published
	public var issue: FHIRPrimitive<FHIRString>?
	
	/// The date the article was added to the database, or the date the article was released
	public var articleDate: FHIRPrimitive<DateTime>?
	
	/// Text representation of the date on which the issue of the cited artifact was published
	public var publicationDateText: FHIRPrimitive<FHIRString>?
	
	/// Season in which the cited artifact was published
	public var publicationDateSeason: FHIRPrimitive<FHIRString>?
	
	/// The date the article was last revised or updated in the database
	public var lastRevisionDate: FHIRPrimitive<DateTime>?
	
	/// Language(s) in which this form of the article is published
	public var language: [CodeableConcept]?
	
	/// Entry number or identifier for inclusion in a database
	public var accessionNumber: FHIRPrimitive<FHIRString>?
	
	/// Used for full display of pagination
	public var pageString: FHIRPrimitive<FHIRString>?
	
	/// Used for isolated representation of first page
	public var firstPage: FHIRPrimitive<FHIRString>?
	
	/// Used for isolated representation of last page
	public var lastPage: FHIRPrimitive<FHIRString>?
	
	/// Number of pages or screens
	public var pageCount: FHIRPrimitive<FHIRString>?
	
	/// Copyright notice for the full article or artifact
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case firstPage; case _firstPage
		case issue; case _issue
		case language
		case lastPage; case _lastPage
		case lastRevisionDate; case _lastRevisionDate
		case pageCount; case _pageCount
		case pageString; case _pageString
		case publicationDateSeason; case _publicationDateSeason
		case publicationDateText; case _publicationDateText
		case publishedIn
		case volume; case _volume
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accessionNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .accessionNumber, auxiliaryKey: ._accessionNumber)
		self.articleDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .articleDate, auxiliaryKey: ._articleDate)
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.firstPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .firstPage, auxiliaryKey: ._firstPage)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.lastPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastPage, auxiliaryKey: ._lastPage)
		self.lastRevisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastRevisionDate, auxiliaryKey: ._lastRevisionDate)
		self.pageCount = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageCount, auxiliaryKey: ._pageCount)
		self.pageString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageString, auxiliaryKey: ._pageString)
		self.publicationDateSeason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicationDateSeason, auxiliaryKey: ._publicationDateSeason)
		self.publicationDateText = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicationDateText, auxiliaryKey: ._publicationDateText)
		self.publishedIn = try CitationCitedArtifactPublicationFormPublishedIn(from: _container, forKeyIfPresent: .publishedIn)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accessionNumber?.encode(on: &_container, forKey: .accessionNumber, auxiliaryKey: ._accessionNumber)
		try articleDate?.encode(on: &_container, forKey: .articleDate, auxiliaryKey: ._articleDate)
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try firstPage?.encode(on: &_container, forKey: .firstPage, auxiliaryKey: ._firstPage)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try language?.encode(on: &_container, forKey: .language)
		try lastPage?.encode(on: &_container, forKey: .lastPage, auxiliaryKey: ._lastPage)
		try lastRevisionDate?.encode(on: &_container, forKey: .lastRevisionDate, auxiliaryKey: ._lastRevisionDate)
		try pageCount?.encode(on: &_container, forKey: .pageCount, auxiliaryKey: ._pageCount)
		try pageString?.encode(on: &_container, forKey: .pageString, auxiliaryKey: ._pageString)
		try publicationDateSeason?.encode(on: &_container, forKey: .publicationDateSeason, auxiliaryKey: ._publicationDateSeason)
		try publicationDateText?.encode(on: &_container, forKey: .publicationDateText, auxiliaryKey: ._publicationDateText)
		try publishedIn?.encode(on: &_container, forKey: .publishedIn)
		try volume?.encode(on: &_container, forKey: .volume, auxiliaryKey: ._volume)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactPublicationForm else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accessionNumber == _other.accessionNumber
		    && articleDate == _other.articleDate
		    && citedMedium == _other.citedMedium
		    && copyright == _other.copyright
		    && firstPage == _other.firstPage
		    && issue == _other.issue
		    && language == _other.language
		    && lastPage == _other.lastPage
		    && lastRevisionDate == _other.lastRevisionDate
		    && pageCount == _other.pageCount
		    && pageString == _other.pageString
		    && publicationDateSeason == _other.publicationDateSeason
		    && publicationDateText == _other.publicationDateText
		    && publishedIn == _other.publishedIn
		    && volume == _other.volume
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accessionNumber)
		hasher.combine(articleDate)
		hasher.combine(citedMedium)
		hasher.combine(copyright)
		hasher.combine(firstPage)
		hasher.combine(issue)
		hasher.combine(language)
		hasher.combine(lastPage)
		hasher.combine(lastRevisionDate)
		hasher.combine(pageCount)
		hasher.combine(pageString)
		hasher.combine(publicationDateSeason)
		hasher.combine(publicationDateText)
		hasher.combine(publishedIn)
		hasher.combine(volume)
	}
}

/**
 The collection the cited article or artifact is published in.
 */
open class CitationCitedArtifactPublicationFormPublishedIn: BackboneElement {
	
	/// Kind of container (e.g. Periodical, database, or book)
	public var type: CodeableConcept?
	
	/// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID; Book identifiers include ISBN
	public var identifier: [Identifier]?
	
	/// Name of the database or title of the book or journal
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Name of or resource describing the publisher
	public var publisher: Reference?
	
	/// Geographic location of the publisher
	public var publisherLocation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		modifierExtension: [Extension]? = nil,
		publisher: Reference? = nil,
		publisherLocation: FHIRPrimitive<FHIRString>? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
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
		case identifier
		case publisher
		case publisherLocation; case _publisherLocation
		case title; case _title
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.publisherLocation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisherLocation, auxiliaryKey: ._publisherLocation)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try publisherLocation?.encode(on: &_container, forKey: .publisherLocation, auxiliaryKey: ._publisherLocation)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactPublicationFormPublishedIn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && publisher == _other.publisher
		    && publisherLocation == _other.publisherLocation
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(publisher)
		hasher.combine(publisherLocation)
		hasher.combine(title)
		hasher.combine(type)
	}
}

/**
 The artifact related to the cited artifact.
 */
open class CitationCitedArtifactRelatesTo: BackboneElement {
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of
	public var type: FHIRPrimitive<FHIRString>
	
	/// Additional classifiers
	public var classifier: [CodeableConcept]?
	
	/// Short label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Brief description of the related artifact
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Bibliographic citation for the artifact
	public var citation: FHIRPrimitive<FHIRString>?
	
	/// What document is being referenced
	public var document: Attachment?
	
	/// What artifact is being referenced
	public var resource: FHIRPrimitive<Canonical>?
	
	/// What artifact, if not a conformance resource
	public var resourceReference: Reference?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<FHIRString>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(type: type)
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
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citation; case _citation
		case classifier
		case display; case _display
		case document
		case label; case _label
		case resource; case _resource
		case resourceReference
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.citation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citation, auxiliaryKey: ._citation)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.document = try Attachment(from: _container, forKeyIfPresent: .document)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.resource = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.resourceReference = try Reference(from: _container, forKeyIfPresent: .resourceReference)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try citation?.encode(on: &_container, forKey: .citation, auxiliaryKey: ._citation)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try document?.encode(on: &_container, forKey: .document)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try resourceReference?.encode(on: &_container, forKey: .resourceReference)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactRelatesTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return citation == _other.citation
		    && classifier == _other.classifier
		    && display == _other.display
		    && document == _other.document
		    && label == _other.label
		    && resource == _other.resource
		    && resourceReference == _other.resourceReference
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(citation)
		hasher.combine(classifier)
		hasher.combine(display)
		hasher.combine(document)
		hasher.combine(label)
		hasher.combine(resource)
		hasher.combine(resourceReference)
		hasher.combine(type)
	}
}

/**
 An effective date or period for a status of the cited artifact.
 
 An effective date or period, historical or future, actual or expected, for a status of the cited artifact.
 */
open class CitationCitedArtifactStatusDate: BackboneElement {
	
	/// Classification of the status
	public var activity: CodeableConcept
	
	/// Either occurred or expected
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// When the status started and/or ended
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(activity: CodeableConcept, period: Period) {
		self.activity = activity
		self.period = period
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activity: CodeableConcept,
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period
	) {
		self.init(activity: activity, period: period)
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case actual; case _actual
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try CodeableConcept(from: _container, forKey: .activity)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.period = try Period(from: _container, forKey: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity.encode(on: &_container, forKey: .activity)
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try period.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactStatusDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activity == _other.activity
		    && actual == _other.actual
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(actual)
		hasher.combine(period)
	}
}

/**
 The title details of the article or artifact.
 */
open class CitationCitedArtifactTitle: BackboneElement {
	
	/// The kind of title
	public var type: [CodeableConcept]?
	
	/// Used to express the specific language
	public var language: CodeableConcept?
	
	/// The title of the article or artifact
	public var text: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(text: FHIRPrimitive<FHIRString>) {
		self.text = text
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		text: FHIRPrimitive<FHIRString>,
		type: [CodeableConcept]? = nil
	) {
		self.init(text: text)
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language
		case text; case _text
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactTitle else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(text)
		hasher.combine(type)
	}
}

/**
 The defined version of the cited artifact.
 */
open class CitationCitedArtifactVersion: BackboneElement {
	
	/// The version number or other version identifier
	public var value: FHIRPrimitive<FHIRString>
	
	/// Citation for the main version of the cited artifact
	public var baseCitation: Reference?
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		baseCitation: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(value: value)
		self.baseCitation = baseCitation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case baseCitation
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.baseCitation = try Reference(from: _container, forKeyIfPresent: .baseCitation)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try baseCitation?.encode(on: &_container, forKey: .baseCitation)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactVersion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return baseCitation == _other.baseCitation
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(baseCitation)
		hasher.combine(value)
	}
}

/**
 Used for any URL for the article or artifact cited.
 */
open class CitationCitedArtifactWebLocation: BackboneElement {
	
	/// Code the reason for different URLs, e.g. abstract and full-text
	public var classifier: [CodeableConcept]?
	
	/// The specific URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init()
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classifier?.encode(on: &_container, forKey: .classifier)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationCitedArtifactWebLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classifier == _other.classifier
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classifier)
		hasher.combine(url)
	}
}

/**
 The assignment to an organizing scheme.
 */
open class CitationClassification: BackboneElement {
	
	/// The kind of classifier (e.g. publication type, keyword)
	public var type: CodeableConcept?
	
	/// The specific classification value
	public var classifier: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classifier?.encode(on: &_container, forKey: .classifier)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationClassification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classifier == _other.classifier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classifier)
		hasher.combine(type)
	}
}

/**
 An effective date or period for a status of the citation record.
 
 The state or status of the citation record paired with an effective date or period for that state.
 */
open class CitationStatusDate: BackboneElement {
	
	/// Classification of the status
	public var activity: CodeableConcept
	
	/// Either occurred or expected
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// When the status started and/or ended
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(activity: CodeableConcept, period: Period) {
		self.activity = activity
		self.period = period
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activity: CodeableConcept,
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period
	) {
		self.init(activity: activity, period: period)
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case actual; case _actual
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try CodeableConcept(from: _container, forKey: .activity)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.period = try Period(from: _container, forKey: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity.encode(on: &_container, forKey: .activity)
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try period.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationStatusDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activity == _other.activity
		    && actual == _other.actual
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(actual)
		hasher.combine(period)
	}
}

/**
 A human-readable display of key concepts to represent the citation.
 */
open class CitationSummary: BackboneElement {
	
	/// Format for display of the citation summary
	public var style: CodeableConcept?
	
	/// The human-readable display of the citation summary
	public var text: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(text: FHIRPrimitive<FHIRString>) {
		self.text = text
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		style: CodeableConcept? = nil,
		text: FHIRPrimitive<FHIRString>
	) {
		self.init(text: text)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.style = style
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case style
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.style = try CodeableConcept(from: _container, forKeyIfPresent: .style)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try style?.encode(on: &_container, forKey: .style)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationSummary else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return style == _other.style
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(style)
		hasher.combine(text)
	}
}
