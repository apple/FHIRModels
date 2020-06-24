//
//  Citation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.4.0-29ad3ab0 (http://hl7.org/fhir/StructureDefinition/Citation)
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
 A Citation.
 
 The Citation.
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class Citation: DomainResource {
	
	override open class var resourceType: ResourceType { return .citation }
	
	/// Canonical identifier for this citation, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business version of this summary
	public var version: FHIRPrimitive<FHIRString>?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Use context
	public var useContext: [UsageContext]?
	
	/// May include DOI, PMID, PMCID, etc.
	public var identifier: [Identifier]?
	
	/// May include trial registry identifiers
	public var relatedIdentifier: [Identifier]?
	
	/// Date Cited
	public var dateCited: FHIRPrimitive<DateTime>?
	
	/// Variant citation
	public var variantCitation: CitationVariantCitation?
	
	/// Identify the medium/media in which the cited article is published, eg print, electronic or print-electronic
	public var publishingModel: CodeableConcept?
	
	/// Contains identifiers and classifiers for the journal cited
	public var journal: CitationJournal?
	
	/// Full title of the article
	public var articleTitle: FHIRPrimitive<FHIRString>?
	
	/// Used for variant titles, such as translations
	public var alternativeTitle: [CitationAlternativeTitle]?
	
	/// Indicates the inclusive pages for the article cited
	public var pagination: CitationPagination?
	
	/// Used for any URL for the article cited
	public var articleUrl: [CitationArticleUrl]?
	
	/// Abstract text
	public var abstract: FHIRPrimitive<FHIRString>?
	
	/// Abstract copyright
	public var abstractCopyright: FHIRPrimitive<FHIRString>?
	
	/// Used for variant abstracts, such as translations
	public var alternativeAbstract: [CitationAlternativeAbstract]?
	
	/// Personal and collective author names
	public var authorList: CitationAuthorList?
	
	/// Used to record a display of the author list without separate coding for each author
	public var authorString: [CitationAuthorString]?
	
	/// Personal and collective contributor names
	public var contributorList: CitationContributorList?
	
	/// The language in which the article is published
	public var articleLanguage: CodeableConcept?
	
	/// Used to represent alternative forms of the article that are not separate citations
	public var alternativeForm: [CitationAlternativeForm]?
	
	/// Used for many classifiers including PublicationType, CitationSubset, MeshHeading, Chemical
	public var classifier: [CodeableConcept]?
	
	/// Link or citation to artifact associated with the summary
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Used for general notes and annotations not coded elsewhere
	public var note: [Annotation]?
	
	/// These elements are items with values assigned by MEDLINE or PubMed management
	public var medlinePubMed: CitationMedlinePubMed?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abstract: FHIRPrimitive<FHIRString>? = nil,
							abstractCopyright: FHIRPrimitive<FHIRString>? = nil,
							alternativeAbstract: [CitationAlternativeAbstract]? = nil,
							alternativeForm: [CitationAlternativeForm]? = nil,
							alternativeTitle: [CitationAlternativeTitle]? = nil,
							articleLanguage: CodeableConcept? = nil,
							articleTitle: FHIRPrimitive<FHIRString>? = nil,
							articleUrl: [CitationArticleUrl]? = nil,
							authorList: CitationAuthorList? = nil,
							authorString: [CitationAuthorString]? = nil,
							classifier: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							contributorList: CitationContributorList? = nil,
							dateCited: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							journal: CitationJournal? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medlinePubMed: CitationMedlinePubMed? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							pagination: CitationPagination? = nil,
							publishingModel: CodeableConcept? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							relatedIdentifier: [Identifier]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							variantCitation: CitationVariantCitation? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
		self.abstract = abstract
		self.abstractCopyright = abstractCopyright
		self.alternativeAbstract = alternativeAbstract
		self.alternativeForm = alternativeForm
		self.alternativeTitle = alternativeTitle
		self.articleLanguage = articleLanguage
		self.articleTitle = articleTitle
		self.articleUrl = articleUrl
		self.authorList = authorList
		self.authorString = authorString
		self.classifier = classifier
		self.contained = contained
		self.contributorList = contributorList
		self.dateCited = dateCited
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.journal = journal
		self.language = language
		self.medlinePubMed = medlinePubMed
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.pagination = pagination
		self.publishingModel = publishingModel
		self.relatedArtifact = relatedArtifact
		self.relatedIdentifier = relatedIdentifier
		self.text = text
		self.url = url
		self.useContext = useContext
		self.variantCitation = variantCitation
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case abstractCopyright; case _abstractCopyright
		case alternativeAbstract
		case alternativeForm
		case alternativeTitle
		case articleLanguage
		case articleTitle; case _articleTitle
		case articleUrl
		case authorList
		case authorString
		case classifier
		case contributorList
		case dateCited; case _dateCited
		case identifier
		case journal
		case medlinePubMed
		case note
		case pagination
		case publishingModel
		case relatedArtifact
		case relatedIdentifier
		case status; case _status
		case url; case _url
		case useContext
		case variantCitation
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .abstract, auxiliaryKey: ._abstract)
		self.abstractCopyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .abstractCopyright, auxiliaryKey: ._abstractCopyright)
		self.alternativeAbstract = try [CitationAlternativeAbstract](from: _container, forKeyIfPresent: .alternativeAbstract)
		self.alternativeForm = try [CitationAlternativeForm](from: _container, forKeyIfPresent: .alternativeForm)
		self.alternativeTitle = try [CitationAlternativeTitle](from: _container, forKeyIfPresent: .alternativeTitle)
		self.articleLanguage = try CodeableConcept(from: _container, forKeyIfPresent: .articleLanguage)
		self.articleTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .articleTitle, auxiliaryKey: ._articleTitle)
		self.articleUrl = try [CitationArticleUrl](from: _container, forKeyIfPresent: .articleUrl)
		self.authorList = try CitationAuthorList(from: _container, forKeyIfPresent: .authorList)
		self.authorString = try [CitationAuthorString](from: _container, forKeyIfPresent: .authorString)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.contributorList = try CitationContributorList(from: _container, forKeyIfPresent: .contributorList)
		self.dateCited = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateCited, auxiliaryKey: ._dateCited)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.journal = try CitationJournal(from: _container, forKeyIfPresent: .journal)
		self.medlinePubMed = try CitationMedlinePubMed(from: _container, forKeyIfPresent: .medlinePubMed)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.pagination = try CitationPagination(from: _container, forKeyIfPresent: .pagination)
		self.publishingModel = try CodeableConcept(from: _container, forKeyIfPresent: .publishingModel)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.relatedIdentifier = try [Identifier](from: _container, forKeyIfPresent: .relatedIdentifier)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variantCitation = try CitationVariantCitation(from: _container, forKeyIfPresent: .variantCitation)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract?.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try abstractCopyright?.encode(on: &_container, forKey: .abstractCopyright, auxiliaryKey: ._abstractCopyright)
		try alternativeAbstract?.encode(on: &_container, forKey: .alternativeAbstract)
		try alternativeForm?.encode(on: &_container, forKey: .alternativeForm)
		try alternativeTitle?.encode(on: &_container, forKey: .alternativeTitle)
		try articleLanguage?.encode(on: &_container, forKey: .articleLanguage)
		try articleTitle?.encode(on: &_container, forKey: .articleTitle, auxiliaryKey: ._articleTitle)
		try articleUrl?.encode(on: &_container, forKey: .articleUrl)
		try authorList?.encode(on: &_container, forKey: .authorList)
		try authorString?.encode(on: &_container, forKey: .authorString)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try contributorList?.encode(on: &_container, forKey: .contributorList)
		try dateCited?.encode(on: &_container, forKey: .dateCited, auxiliaryKey: ._dateCited)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try journal?.encode(on: &_container, forKey: .journal)
		try medlinePubMed?.encode(on: &_container, forKey: .medlinePubMed)
		try note?.encode(on: &_container, forKey: .note)
		try pagination?.encode(on: &_container, forKey: .pagination)
		try publishingModel?.encode(on: &_container, forKey: .publishingModel)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try relatedIdentifier?.encode(on: &_container, forKey: .relatedIdentifier)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variantCitation?.encode(on: &_container, forKey: .variantCitation)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
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
		return abstract == _other.abstract
		    && abstractCopyright == _other.abstractCopyright
		    && alternativeAbstract == _other.alternativeAbstract
		    && alternativeForm == _other.alternativeForm
		    && alternativeTitle == _other.alternativeTitle
		    && articleLanguage == _other.articleLanguage
		    && articleTitle == _other.articleTitle
		    && articleUrl == _other.articleUrl
		    && authorList == _other.authorList
		    && authorString == _other.authorString
		    && classifier == _other.classifier
		    && contributorList == _other.contributorList
		    && dateCited == _other.dateCited
		    && identifier == _other.identifier
		    && journal == _other.journal
		    && medlinePubMed == _other.medlinePubMed
		    && note == _other.note
		    && pagination == _other.pagination
		    && publishingModel == _other.publishingModel
		    && relatedArtifact == _other.relatedArtifact
		    && relatedIdentifier == _other.relatedIdentifier
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && variantCitation == _other.variantCitation
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(abstractCopyright)
		hasher.combine(alternativeAbstract)
		hasher.combine(alternativeForm)
		hasher.combine(alternativeTitle)
		hasher.combine(articleLanguage)
		hasher.combine(articleTitle)
		hasher.combine(articleUrl)
		hasher.combine(authorList)
		hasher.combine(authorString)
		hasher.combine(classifier)
		hasher.combine(contributorList)
		hasher.combine(dateCited)
		hasher.combine(identifier)
		hasher.combine(journal)
		hasher.combine(medlinePubMed)
		hasher.combine(note)
		hasher.combine(pagination)
		hasher.combine(publishingModel)
		hasher.combine(relatedArtifact)
		hasher.combine(relatedIdentifier)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(variantCitation)
		hasher.combine(version)
	}
}

/**
 Used for variant abstracts, such as translations.
 */
open class CitationAlternativeAbstract: BackboneElement {
	
	/// Used to express the reason for the variant abstract, such as language
	public var type: CodeableConcept?
	
	/// Used to express the specific language
	public var language: CodeableConcept?
	
	/// Full variant abstract of the article
	public var abstract: FHIRPrimitive<FHIRString>
	
	/// Variant abstract copyright
	public var abstractCopyright: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(abstract: FHIRPrimitive<FHIRString>) {
		self.abstract = abstract
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abstract: FHIRPrimitive<FHIRString>,
							abstractCopyright: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(abstract: abstract)
		self.abstractCopyright = abstractCopyright
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case abstractCopyright; case _abstractCopyright
		case language
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRString>(from: _container, forKey: .abstract, auxiliaryKey: ._abstract)
		self.abstractCopyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .abstractCopyright, auxiliaryKey: ._abstractCopyright)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try abstractCopyright?.encode(on: &_container, forKey: .abstractCopyright, auxiliaryKey: ._abstractCopyright)
		try language?.encode(on: &_container, forKey: .language)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeAbstract else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abstract == _other.abstract
		    && abstractCopyright == _other.abstractCopyright
		    && language == _other.language
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(abstractCopyright)
		hasher.combine(language)
		hasher.combine(type)
	}
}

/**
 Used to represent alternative forms of the article that are not separate citations.
 */
open class CitationAlternativeForm: BackboneElement {
	
	/// Identify the medium/media in which the cited article is published, eg print, electronic or print-electronic
	public var publishingModel: CodeableConcept?
	
	/// Language in which the article is published
	public var language: CodeableConcept?
	
	/// The specific issue in which the cited article resides
	public var journalIssue: CitationAlternativeFormJournalIssue?
	
	/// Indicates the inclusive pages for the article cited
	public var pagination: CitationAlternativeFormPagination?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							journalIssue: CitationAlternativeFormJournalIssue? = nil,
							language: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							pagination: CitationAlternativeFormPagination? = nil,
							publishingModel: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.journalIssue = journalIssue
		self.language = language
		self.modifierExtension = modifierExtension
		self.pagination = pagination
		self.publishingModel = publishingModel
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case journalIssue
		case language
		case pagination
		case publishingModel
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.journalIssue = try CitationAlternativeFormJournalIssue(from: _container, forKeyIfPresent: .journalIssue)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.pagination = try CitationAlternativeFormPagination(from: _container, forKeyIfPresent: .pagination)
		self.publishingModel = try CodeableConcept(from: _container, forKeyIfPresent: .publishingModel)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try journalIssue?.encode(on: &_container, forKey: .journalIssue)
		try language?.encode(on: &_container, forKey: .language)
		try pagination?.encode(on: &_container, forKey: .pagination)
		try publishingModel?.encode(on: &_container, forKey: .publishingModel)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeForm else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return journalIssue == _other.journalIssue
		    && language == _other.language
		    && pagination == _other.pagination
		    && publishingModel == _other.publishingModel
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(journalIssue)
		hasher.combine(language)
		hasher.combine(pagination)
		hasher.combine(publishingModel)
	}
}

/**
 The specific issue in which the cited article resides.
 */
open class CitationAlternativeFormJournalIssue: BackboneElement {
	
	/// NLM codes Internet or Print
	public var citedMedium: CodeableConcept?
	
	/// Volume number of journal in which the article is published
	public var volume: FHIRPrimitive<FHIRString>?
	
	/// Issue, part or supplement of journal in which the article is published
	public var issue: FHIRPrimitive<FHIRString>?
	
	/// Date on which the issue of the journal was published
	public var publicationDate: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							citedMedium: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							issue: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							publicationDate: FHIRPrimitive<FHIRString>? = nil,
							volume: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.citedMedium = citedMedium
		self.`extension` = `extension`
		self.id = id
		self.issue = issue
		self.modifierExtension = modifierExtension
		self.publicationDate = publicationDate
		self.volume = volume
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citedMedium
		case issue; case _issue
		case publicationDate; case _publicationDate
		case volume; case _volume
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.publicationDate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicationDate, auxiliaryKey: ._publicationDate)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate, auxiliaryKey: ._publicationDate)
		try volume?.encode(on: &_container, forKey: .volume, auxiliaryKey: ._volume)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeFormJournalIssue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return citedMedium == _other.citedMedium
		    && issue == _other.issue
		    && publicationDate == _other.publicationDate
		    && volume == _other.volume
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(citedMedium)
		hasher.combine(issue)
		hasher.combine(publicationDate)
		hasher.combine(volume)
	}
}

/**
 Indicates the inclusive pages for the article cited.
 */
open class CitationAlternativeFormPagination: BackboneElement {
	
	/// Used for full display of pagination
	public var pageString: FHIRPrimitive<FHIRString>?
	
	/// Used for isolated representation of first page
	public var firstPage: FHIRPrimitive<FHIRString>?
	
	/// Used for isolated representation of last page
	public var lastPage: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							firstPage: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lastPage: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							pageString: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.firstPage = firstPage
		self.id = id
		self.lastPage = lastPage
		self.modifierExtension = modifierExtension
		self.pageString = pageString
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case firstPage; case _firstPage
		case lastPage; case _lastPage
		case pageString; case _pageString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.firstPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .firstPage, auxiliaryKey: ._firstPage)
		self.lastPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastPage, auxiliaryKey: ._lastPage)
		self.pageString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageString, auxiliaryKey: ._pageString)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try firstPage?.encode(on: &_container, forKey: .firstPage, auxiliaryKey: ._firstPage)
		try lastPage?.encode(on: &_container, forKey: .lastPage, auxiliaryKey: ._lastPage)
		try pageString?.encode(on: &_container, forKey: .pageString, auxiliaryKey: ._pageString)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeFormPagination else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return firstPage == _other.firstPage
		    && lastPage == _other.lastPage
		    && pageString == _other.pageString
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(firstPage)
		hasher.combine(lastPage)
		hasher.combine(pageString)
	}
}

/**
 Used for variant titles, such as translations.
 */
open class CitationAlternativeTitle: BackboneElement {
	
	/// Used to express the reason and specific aspect for the variant title, such as language
	public var type: CodeableConcept?
	
	/// Used to express the specific language
	public var language: CodeableConcept?
	
	/// Full variant title of the article
	public var title: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(title: FHIRPrimitive<FHIRString>) {
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							title: FHIRPrimitive<FHIRString>,
							type: CodeableConcept? = nil)
	{
		self.init(title: title)
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language
		case title; case _title
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeTitle else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(title)
		hasher.combine(type)
	}
}

/**
 Used for any URL for the article cited.
 */
open class CitationArticleUrl: BackboneElement {
	
	/// Code the reason for different URLs, eg abstract and full-text
	public var type: CodeableConcept?
	
	/// The specific URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationArticleUrl else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(url)
	}
}

/**
 Personal and collective author names.
 */
open class CitationAuthorList: BackboneElement {
	
	/// Indicates if the list includes all authors, else “et al” should be appended for display
	public var complete: FHIRPrimitive<FHIRBool>?
	
	/// An individual entity named in the author list
	public var author: [CitationAuthorListAuthor]
	
	/// Designated initializer taking all required properties
	public init(author: [CitationAuthorListAuthor]) {
		self.author = author
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: [CitationAuthorListAuthor],
							complete: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(author: author)
		self.complete = complete
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case complete; case _complete
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [CitationAuthorListAuthor](from: _container, forKey: .author)
		self.complete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .complete, auxiliaryKey: ._complete)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author.encode(on: &_container, forKey: .author)
		try complete?.encode(on: &_container, forKey: .complete, auxiliaryKey: ._complete)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAuthorList else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && complete == _other.complete
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(complete)
	}
}

/**
 An individual entity named in the author list.
 */
open class CitationAuthorListAuthor: BackboneElement {
	
	/// Surname or single name
	public var lastName: FHIRPrimitive<FHIRString>?
	
	/// Remainder of name except for suffix
	public var foreName: FHIRPrimitive<FHIRString>?
	
	/// Eg 2nd, 3rd, Jr, Sr
	public var suffix: FHIRPrimitive<FHIRString>?
	
	/// Initials for forename
	public var initials: FHIRPrimitive<FHIRString>?
	
	/// Used for collective or corporate name as an author
	public var collectiveName: FHIRPrimitive<FHIRString>?
	
	/// Author identifier, eg ORCID
	public var identifier: [Identifier]?
	
	/// Organizational affiliation
	public var affiliationInfo: [CitationAuthorListAuthorAffiliationInfo]?
	
	/// Physical mailing address for the author
	public var address: [FHIRPrimitive<FHIRString>]?
	
	/// Email or telephone contact methods for the author
	public var telecom: [ContactPoint]?
	
	/// Indication of which author is the corresponding author for the article cited
	public var correspondingAuthor: FHIRPrimitive<FHIRBool>?
	
	/// Used to code order of authors
	public var listOrder: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							address: [FHIRPrimitive<FHIRString>]? = nil,
							affiliationInfo: [CitationAuthorListAuthorAffiliationInfo]? = nil,
							collectiveName: FHIRPrimitive<FHIRString>? = nil,
							correspondingAuthor: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							foreName: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							initials: FHIRPrimitive<FHIRString>? = nil,
							lastName: FHIRPrimitive<FHIRString>? = nil,
							listOrder: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							suffix: FHIRPrimitive<FHIRString>? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.address = address
		self.affiliationInfo = affiliationInfo
		self.collectiveName = collectiveName
		self.correspondingAuthor = correspondingAuthor
		self.`extension` = `extension`
		self.foreName = foreName
		self.id = id
		self.identifier = identifier
		self.initials = initials
		self.lastName = lastName
		self.listOrder = listOrder
		self.modifierExtension = modifierExtension
		self.suffix = suffix
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case affiliationInfo
		case collectiveName; case _collectiveName
		case correspondingAuthor; case _correspondingAuthor
		case foreName; case _foreName
		case identifier
		case initials; case _initials
		case lastName; case _lastName
		case listOrder; case _listOrder
		case suffix; case _suffix
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .address, auxiliaryKey: ._address)
		self.affiliationInfo = try [CitationAuthorListAuthorAffiliationInfo](from: _container, forKeyIfPresent: .affiliationInfo)
		self.collectiveName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .collectiveName, auxiliaryKey: ._collectiveName)
		self.correspondingAuthor = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .correspondingAuthor, auxiliaryKey: ._correspondingAuthor)
		self.foreName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .foreName, auxiliaryKey: ._foreName)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.initials = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initials, auxiliaryKey: ._initials)
		self.lastName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastName, auxiliaryKey: ._lastName)
		self.listOrder = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .listOrder, auxiliaryKey: ._listOrder)
		self.suffix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .suffix, auxiliaryKey: ._suffix)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try affiliationInfo?.encode(on: &_container, forKey: .affiliationInfo)
		try collectiveName?.encode(on: &_container, forKey: .collectiveName, auxiliaryKey: ._collectiveName)
		try correspondingAuthor?.encode(on: &_container, forKey: .correspondingAuthor, auxiliaryKey: ._correspondingAuthor)
		try foreName?.encode(on: &_container, forKey: .foreName, auxiliaryKey: ._foreName)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try initials?.encode(on: &_container, forKey: .initials, auxiliaryKey: ._initials)
		try lastName?.encode(on: &_container, forKey: .lastName, auxiliaryKey: ._lastName)
		try listOrder?.encode(on: &_container, forKey: .listOrder, auxiliaryKey: ._listOrder)
		try suffix?.encode(on: &_container, forKey: .suffix, auxiliaryKey: ._suffix)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAuthorListAuthor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && affiliationInfo == _other.affiliationInfo
		    && collectiveName == _other.collectiveName
		    && correspondingAuthor == _other.correspondingAuthor
		    && foreName == _other.foreName
		    && identifier == _other.identifier
		    && initials == _other.initials
		    && lastName == _other.lastName
		    && listOrder == _other.listOrder
		    && suffix == _other.suffix
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(affiliationInfo)
		hasher.combine(collectiveName)
		hasher.combine(correspondingAuthor)
		hasher.combine(foreName)
		hasher.combine(identifier)
		hasher.combine(initials)
		hasher.combine(lastName)
		hasher.combine(listOrder)
		hasher.combine(suffix)
		hasher.combine(telecom)
	}
}

/**
 Organizational affiliation.
 */
open class CitationAuthorListAuthorAffiliationInfo: BackboneElement {
	
	/// Display for the organization
	public var affiliation: FHIRPrimitive<FHIRString>?
	
	/// Role
	public var role: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the organization
	public var identifier: [Identifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							affiliation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							modifierExtension: [Extension]? = nil,
							role: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case identifier
		case role; case _role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.affiliation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .affiliation, auxiliaryKey: ._affiliation)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.role = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .role, auxiliaryKey: ._role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try affiliation?.encode(on: &_container, forKey: .affiliation, auxiliaryKey: ._affiliation)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try role?.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAuthorListAuthorAffiliationInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return affiliation == _other.affiliation
		    && identifier == _other.identifier
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(affiliation)
		hasher.combine(identifier)
		hasher.combine(role)
	}
}

/**
 Used to record a display of the author list without separate coding for each author.
 */
open class CitationAuthorString: BackboneElement {
	
	/// Used to code the producer or rule for creating the display string
	public var source: CodeableConcept?
	
	/// The display string for the author list
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
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case source
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.source = try CodeableConcept(from: _container, forKeyIfPresent: .source)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try source?.encode(on: &_container, forKey: .source)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAuthorString else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return source == _other.source
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(source)
		hasher.combine(value)
	}
}

/**
 Personal and collective contributor names.
 */
open class CitationContributorList: BackboneElement {
	
	/// Indicates if the list includes all contributors
	public var complete: FHIRPrimitive<FHIRBool>?
	
	/// An individual entity named in the contributor list
	public var contributor: [CitationContributorListContributor]
	
	/// Designated initializer taking all required properties
	public init(contributor: [CitationContributorListContributor]) {
		self.contributor = contributor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							complete: FHIRPrimitive<FHIRBool>? = nil,
							contributor: [CitationContributorListContributor],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(contributor: contributor)
		self.complete = complete
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case complete; case _complete
		case contributor
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.complete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .complete, auxiliaryKey: ._complete)
		self.contributor = try [CitationContributorListContributor](from: _container, forKey: .contributor)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try complete?.encode(on: &_container, forKey: .complete, auxiliaryKey: ._complete)
		try contributor.encode(on: &_container, forKey: .contributor)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationContributorList else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return complete == _other.complete
		    && contributor == _other.contributor
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(complete)
		hasher.combine(contributor)
	}
}

/**
 An individual entity named in the contributor list.
 */
open class CitationContributorListContributor: BackboneElement {
	
	/// Surname or single name
	public var lastName: FHIRPrimitive<FHIRString>?
	
	/// Remainder of name except for suffix
	public var foreName: FHIRPrimitive<FHIRString>?
	
	/// Eg 2nd, 3rd, Jr, Sr
	public var suffix: FHIRPrimitive<FHIRString>?
	
	/// Initials for forename
	public var initials: FHIRPrimitive<FHIRString>?
	
	/// Used for collective or corporate name as a contributor
	public var collectiveName: FHIRPrimitive<FHIRString>?
	
	/// Contributor identifier, eg ORCID
	public var identifier: [Identifier]?
	
	/// The specific contributions
	public var contribution: [CodeableConcept]?
	
	/// Organizational affiliation
	public var affiliationInfo: [CitationContributorListContributorAffiliationInfo]?
	
	/// Used to code order of contributors
	public var listOrder: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							affiliationInfo: [CitationContributorListContributorAffiliationInfo]? = nil,
							collectiveName: FHIRPrimitive<FHIRString>? = nil,
							contribution: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							foreName: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							initials: FHIRPrimitive<FHIRString>? = nil,
							lastName: FHIRPrimitive<FHIRString>? = nil,
							listOrder: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							suffix: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.affiliationInfo = affiliationInfo
		self.collectiveName = collectiveName
		self.contribution = contribution
		self.`extension` = `extension`
		self.foreName = foreName
		self.id = id
		self.identifier = identifier
		self.initials = initials
		self.lastName = lastName
		self.listOrder = listOrder
		self.modifierExtension = modifierExtension
		self.suffix = suffix
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case affiliationInfo
		case collectiveName; case _collectiveName
		case contribution
		case foreName; case _foreName
		case identifier
		case initials; case _initials
		case lastName; case _lastName
		case listOrder; case _listOrder
		case suffix; case _suffix
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.affiliationInfo = try [CitationContributorListContributorAffiliationInfo](from: _container, forKeyIfPresent: .affiliationInfo)
		self.collectiveName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .collectiveName, auxiliaryKey: ._collectiveName)
		self.contribution = try [CodeableConcept](from: _container, forKeyIfPresent: .contribution)
		self.foreName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .foreName, auxiliaryKey: ._foreName)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.initials = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initials, auxiliaryKey: ._initials)
		self.lastName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastName, auxiliaryKey: ._lastName)
		self.listOrder = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .listOrder, auxiliaryKey: ._listOrder)
		self.suffix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .suffix, auxiliaryKey: ._suffix)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try affiliationInfo?.encode(on: &_container, forKey: .affiliationInfo)
		try collectiveName?.encode(on: &_container, forKey: .collectiveName, auxiliaryKey: ._collectiveName)
		try contribution?.encode(on: &_container, forKey: .contribution)
		try foreName?.encode(on: &_container, forKey: .foreName, auxiliaryKey: ._foreName)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try initials?.encode(on: &_container, forKey: .initials, auxiliaryKey: ._initials)
		try lastName?.encode(on: &_container, forKey: .lastName, auxiliaryKey: ._lastName)
		try listOrder?.encode(on: &_container, forKey: .listOrder, auxiliaryKey: ._listOrder)
		try suffix?.encode(on: &_container, forKey: .suffix, auxiliaryKey: ._suffix)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationContributorListContributor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return affiliationInfo == _other.affiliationInfo
		    && collectiveName == _other.collectiveName
		    && contribution == _other.contribution
		    && foreName == _other.foreName
		    && identifier == _other.identifier
		    && initials == _other.initials
		    && lastName == _other.lastName
		    && listOrder == _other.listOrder
		    && suffix == _other.suffix
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(affiliationInfo)
		hasher.combine(collectiveName)
		hasher.combine(contribution)
		hasher.combine(foreName)
		hasher.combine(identifier)
		hasher.combine(initials)
		hasher.combine(lastName)
		hasher.combine(listOrder)
		hasher.combine(suffix)
	}
}

/**
 Organizational affiliation.
 */
open class CitationContributorListContributorAffiliationInfo: BackboneElement {
	
	/// Display for the organization
	public var affiliation: FHIRPrimitive<FHIRString>?
	
	/// Role
	public var role: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the organization
	public var identifier: [Identifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							affiliation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							modifierExtension: [Extension]? = nil,
							role: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case identifier
		case role; case _role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.affiliation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .affiliation, auxiliaryKey: ._affiliation)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.role = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .role, auxiliaryKey: ._role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try affiliation?.encode(on: &_container, forKey: .affiliation, auxiliaryKey: ._affiliation)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try role?.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationContributorListContributorAffiliationInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return affiliation == _other.affiliation
		    && identifier == _other.identifier
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(affiliation)
		hasher.combine(identifier)
		hasher.combine(role)
	}
}

/**
 Contains identifiers and classifiers for the journal cited.
 */
open class CitationJournal: BackboneElement {
	
	/// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID
	public var identifier: [Identifier]?
	
	/// Place of publication of the journal
	public var country: FHIRPrimitive<FHIRString>?
	
	/// The specific issue in which the cited article resides
	public var journalIssue: CitationJournalJournalIssue?
	
	/// Journal title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							country: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							journalIssue: CitationJournalJournalIssue? = nil,
							modifierExtension: [Extension]? = nil,
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.journalIssue = journalIssue
		self.modifierExtension = modifierExtension
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country; case _country
		case identifier
		case journalIssue
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .country, auxiliaryKey: ._country)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.journalIssue = try CitationJournalJournalIssue(from: _container, forKeyIfPresent: .journalIssue)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country, auxiliaryKey: ._country)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try journalIssue?.encode(on: &_container, forKey: .journalIssue)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationJournal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && identifier == _other.identifier
		    && journalIssue == _other.journalIssue
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(identifier)
		hasher.combine(journalIssue)
		hasher.combine(title)
	}
}

/**
 The specific issue in which the cited article resides.
 */
open class CitationJournalJournalIssue: BackboneElement {
	
	/// NLM codes Internet or Print
	public var citedMedium: CodeableConcept?
	
	/// Volume number of journal in which the article is published
	public var volume: FHIRPrimitive<FHIRString>?
	
	/// Issue, part or supplement of journal in which the article is published
	public var issue: FHIRPrimitive<FHIRString>?
	
	/// Date on which the issue of the journal was published
	public var publicationDate: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							citedMedium: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							issue: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							publicationDate: FHIRPrimitive<FHIRString>? = nil,
							volume: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.citedMedium = citedMedium
		self.`extension` = `extension`
		self.id = id
		self.issue = issue
		self.modifierExtension = modifierExtension
		self.publicationDate = publicationDate
		self.volume = volume
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citedMedium
		case issue; case _issue
		case publicationDate; case _publicationDate
		case volume; case _volume
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.publicationDate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicationDate, auxiliaryKey: ._publicationDate)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate, auxiliaryKey: ._publicationDate)
		try volume?.encode(on: &_container, forKey: .volume, auxiliaryKey: ._volume)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationJournalJournalIssue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return citedMedium == _other.citedMedium
		    && issue == _other.issue
		    && publicationDate == _other.publicationDate
		    && volume == _other.volume
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(citedMedium)
		hasher.combine(issue)
		hasher.combine(publicationDate)
		hasher.combine(volume)
	}
}

/**
 These elements are items with values assigned by MEDLINE or PubMed management.
 */
open class CitationMedlinePubMed: BackboneElement {
	
	/// Completed | In-Process | PubMed-not-MEDLINE | In-Data-Review | Publisher | MEDLINE | OLDMEDLINE
	public var medlineState: CodeableConcept?
	
	/// NLM | NASA | PIP | KIE | HSR | HMD | SIS | NOTNLM
	public var owner: CodeableConcept?
	
	/// PubMed ID
	public var pmid: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// PubMed ID Version
	public var pmidVersion: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Creation date
	public var dateCreated: FHIRPrimitive<FHIRDate>?
	
	/// Completion date
	public var dateCompleted: FHIRPrimitive<FHIRDate>?
	
	/// Revision date
	public var dateRevised: FHIRPrimitive<FHIRDate>?
	
	/// Subcomponent of certainty
	public var pubMedPubDate: [CitationMedlinePubMedPubMedPubDate]?
	
	/// Publication Status
	public var publicationState: CodeableConcept?
	
	/// Related article
	public var relatedArticle: [CitationMedlinePubMedRelatedArticle]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dateCompleted: FHIRPrimitive<FHIRDate>? = nil,
							dateCreated: FHIRPrimitive<FHIRDate>? = nil,
							dateRevised: FHIRPrimitive<FHIRDate>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							medlineState: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							owner: CodeableConcept? = nil,
							pmid: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							pmidVersion: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							pubMedPubDate: [CitationMedlinePubMedPubMedPubDate]? = nil,
							publicationState: CodeableConcept? = nil,
							relatedArticle: [CitationMedlinePubMedRelatedArticle]? = nil)
	{
		self.init()
		self.dateCompleted = dateCompleted
		self.dateCreated = dateCreated
		self.dateRevised = dateRevised
		self.`extension` = `extension`
		self.id = id
		self.medlineState = medlineState
		self.modifierExtension = modifierExtension
		self.owner = owner
		self.pmid = pmid
		self.pmidVersion = pmidVersion
		self.pubMedPubDate = pubMedPubDate
		self.publicationState = publicationState
		self.relatedArticle = relatedArticle
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dateCompleted; case _dateCompleted
		case dateCreated; case _dateCreated
		case dateRevised; case _dateRevised
		case medlineState
		case owner
		case pmid; case _pmid
		case pmidVersion; case _pmidVersion
		case pubMedPubDate
		case publicationState
		case relatedArticle
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dateCompleted = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .dateCompleted, auxiliaryKey: ._dateCompleted)
		self.dateCreated = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .dateCreated, auxiliaryKey: ._dateCreated)
		self.dateRevised = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .dateRevised, auxiliaryKey: ._dateRevised)
		self.medlineState = try CodeableConcept(from: _container, forKeyIfPresent: .medlineState)
		self.owner = try CodeableConcept(from: _container, forKeyIfPresent: .owner)
		self.pmid = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .pmid, auxiliaryKey: ._pmid)
		self.pmidVersion = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .pmidVersion, auxiliaryKey: ._pmidVersion)
		self.pubMedPubDate = try [CitationMedlinePubMedPubMedPubDate](from: _container, forKeyIfPresent: .pubMedPubDate)
		self.publicationState = try CodeableConcept(from: _container, forKeyIfPresent: .publicationState)
		self.relatedArticle = try [CitationMedlinePubMedRelatedArticle](from: _container, forKeyIfPresent: .relatedArticle)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dateCompleted?.encode(on: &_container, forKey: .dateCompleted, auxiliaryKey: ._dateCompleted)
		try dateCreated?.encode(on: &_container, forKey: .dateCreated, auxiliaryKey: ._dateCreated)
		try dateRevised?.encode(on: &_container, forKey: .dateRevised, auxiliaryKey: ._dateRevised)
		try medlineState?.encode(on: &_container, forKey: .medlineState)
		try owner?.encode(on: &_container, forKey: .owner)
		try pmid?.encode(on: &_container, forKey: .pmid, auxiliaryKey: ._pmid)
		try pmidVersion?.encode(on: &_container, forKey: .pmidVersion, auxiliaryKey: ._pmidVersion)
		try pubMedPubDate?.encode(on: &_container, forKey: .pubMedPubDate)
		try publicationState?.encode(on: &_container, forKey: .publicationState)
		try relatedArticle?.encode(on: &_container, forKey: .relatedArticle)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationMedlinePubMed else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dateCompleted == _other.dateCompleted
		    && dateCreated == _other.dateCreated
		    && dateRevised == _other.dateRevised
		    && medlineState == _other.medlineState
		    && owner == _other.owner
		    && pmid == _other.pmid
		    && pmidVersion == _other.pmidVersion
		    && pubMedPubDate == _other.pubMedPubDate
		    && publicationState == _other.publicationState
		    && relatedArticle == _other.relatedArticle
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dateCompleted)
		hasher.combine(dateCreated)
		hasher.combine(dateRevised)
		hasher.combine(medlineState)
		hasher.combine(owner)
		hasher.combine(pmid)
		hasher.combine(pmidVersion)
		hasher.combine(pubMedPubDate)
		hasher.combine(publicationState)
		hasher.combine(relatedArticle)
	}
}

/**
 Subcomponent of certainty.
 */
open class CitationMedlinePubMedPubMedPubDate: BackboneElement {
	
	/// PubMed Publication Status
	public var publicationState: CodeableConcept?
	
	/// PubMed Publication Date
	public var date: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							publicationState: CodeableConcept? = nil)
	{
		self.init()
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.publicationState = publicationState
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case publicationState
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.publicationState = try CodeableConcept(from: _container, forKeyIfPresent: .publicationState)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try publicationState?.encode(on: &_container, forKey: .publicationState)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationMedlinePubMedPubMedPubDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && publicationState == _other.publicationState
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(publicationState)
	}
}

/**
 Related article.
 */
open class CitationMedlinePubMedRelatedArticle: BackboneElement {
	
	/// Citation Resource for related article
	public var citationReference: Reference?
	
	/// Citation string for related article
	public var citationMarkdown: FHIRPrimitive<FHIRString>?
	
	/// Identifier for related article
	public var identifier: [Identifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							citationMarkdown: FHIRPrimitive<FHIRString>? = nil,
							citationReference: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.citationMarkdown = citationMarkdown
		self.citationReference = citationReference
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citationMarkdown; case _citationMarkdown
		case citationReference
		case identifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.citationMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citationMarkdown, auxiliaryKey: ._citationMarkdown)
		self.citationReference = try Reference(from: _container, forKeyIfPresent: .citationReference)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try citationMarkdown?.encode(on: &_container, forKey: .citationMarkdown, auxiliaryKey: ._citationMarkdown)
		try citationReference?.encode(on: &_container, forKey: .citationReference)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationMedlinePubMedRelatedArticle else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return citationMarkdown == _other.citationMarkdown
		    && citationReference == _other.citationReference
		    && identifier == _other.identifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(citationMarkdown)
		hasher.combine(citationReference)
		hasher.combine(identifier)
	}
}

/**
 Indicates the inclusive pages for the article cited.
 */
open class CitationPagination: BackboneElement {
	
	/// Used for full display of pagination
	public var pageString: FHIRPrimitive<FHIRString>?
	
	/// Used for isolated representation of first page
	public var firstPage: FHIRPrimitive<FHIRString>?
	
	/// Used for isolated representation of last page
	public var lastPage: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							firstPage: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lastPage: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							pageString: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.firstPage = firstPage
		self.id = id
		self.lastPage = lastPage
		self.modifierExtension = modifierExtension
		self.pageString = pageString
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case firstPage; case _firstPage
		case lastPage; case _lastPage
		case pageString; case _pageString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.firstPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .firstPage, auxiliaryKey: ._firstPage)
		self.lastPage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lastPage, auxiliaryKey: ._lastPage)
		self.pageString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageString, auxiliaryKey: ._pageString)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try firstPage?.encode(on: &_container, forKey: .firstPage, auxiliaryKey: ._firstPage)
		try lastPage?.encode(on: &_container, forKey: .lastPage, auxiliaryKey: ._lastPage)
		try pageString?.encode(on: &_container, forKey: .pageString, auxiliaryKey: ._pageString)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationPagination else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return firstPage == _other.firstPage
		    && lastPage == _other.lastPage
		    && pageString == _other.pageString
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(firstPage)
		hasher.combine(lastPage)
		hasher.combine(pageString)
	}
}

/**
 Variant citation.
 */
open class CitationVariantCitation: BackboneElement {
	
	/// Used to describe the reason for the variant citation, such as version or subpart specification
	public var type: CodeableConcept?
	
	/// Used to describe the specific variation, such as version number or subpart specification
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Base citation
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
							value: FHIRPrimitive<FHIRString>? = nil)
	{
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
		guard let _other = _other as? CitationVariantCitation else {
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
