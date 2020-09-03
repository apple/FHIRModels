//
//  Citation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Citation)
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
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Use context
	public var useContext: [UsageContext]?
	
	/// May include DOI, PMID, PMCID, etc.
	public var identifier: [Identifier]?
	
	/// May include trial registry identifiers
	public var relatedIdentifier: [Identifier]?
	
	/// A human-readable display of the citation
	public var summary: [CitationSummary]?
	
	/// Date Cited
	public var dateCited: FHIRPrimitive<DateTime>?
	
	/// Variant citation
	public var variantCitation: CitationVariantCitation?
	
	/// Identify the medium/media in which the cited article is published, eg print, electronic or print-electronic
	public var publishingModel: CodeableConcept?
	
	/// Contains identifiers and classifiers for the journal cited
	public var journal: CitationJournal?
	
	/// Citation detail for sources other than journals
	public var publicationInfo: CitationPublicationInfo?
	
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
	
	/// Attribution of authors and other contributors
	public var contributorship: CitationContributorship?
	
	/// The language in which the article is published
	public var articleLanguage: CodeableConcept?
	
	/// Used to represent alternative forms of the article that are not separate citations
	public var alternativeForm: [CitationAlternativeForm]?
	
	/// Used for many classifiers including PublicationType, CitationSubset, MeshHeading, Chemical
	public var classifier: [CodeableConcept]?
	
	/// Used to support keyword searches
	public var keywordList: [CitationKeywordList]?
	
	/// Link or citation to artifact associated with the referenced material
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
							classifier: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							contributorship: CitationContributorship? = nil,
							dateCited: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							journal: CitationJournal? = nil,
							keywordList: [CitationKeywordList]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medlinePubMed: CitationMedlinePubMed? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							pagination: CitationPagination? = nil,
							publicationInfo: CitationPublicationInfo? = nil,
							publishingModel: CodeableConcept? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							relatedIdentifier: [Identifier]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							summary: [CitationSummary]? = nil,
							text: Narrative? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							variantCitation: CitationVariantCitation? = nil)
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
		self.classifier = classifier
		self.contained = contained
		self.contributorship = contributorship
		self.dateCited = dateCited
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.journal = journal
		self.keywordList = keywordList
		self.language = language
		self.medlinePubMed = medlinePubMed
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.pagination = pagination
		self.publicationInfo = publicationInfo
		self.publishingModel = publishingModel
		self.relatedArtifact = relatedArtifact
		self.relatedIdentifier = relatedIdentifier
		self.summary = summary
		self.text = text
		self.url = url
		self.useContext = useContext
		self.variantCitation = variantCitation
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
		case classifier
		case contributorship
		case dateCited; case _dateCited
		case identifier
		case journal
		case keywordList
		case medlinePubMed
		case note
		case pagination
		case publicationInfo
		case publishingModel
		case relatedArtifact
		case relatedIdentifier
		case status; case _status
		case summary
		case url; case _url
		case useContext
		case variantCitation
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
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.contributorship = try CitationContributorship(from: _container, forKeyIfPresent: .contributorship)
		self.dateCited = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateCited, auxiliaryKey: ._dateCited)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.journal = try CitationJournal(from: _container, forKeyIfPresent: .journal)
		self.keywordList = try [CitationKeywordList](from: _container, forKeyIfPresent: .keywordList)
		self.medlinePubMed = try CitationMedlinePubMed(from: _container, forKeyIfPresent: .medlinePubMed)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.pagination = try CitationPagination(from: _container, forKeyIfPresent: .pagination)
		self.publicationInfo = try CitationPublicationInfo(from: _container, forKeyIfPresent: .publicationInfo)
		self.publishingModel = try CodeableConcept(from: _container, forKeyIfPresent: .publishingModel)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.relatedIdentifier = try [Identifier](from: _container, forKeyIfPresent: .relatedIdentifier)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.summary = try [CitationSummary](from: _container, forKeyIfPresent: .summary)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variantCitation = try CitationVariantCitation(from: _container, forKeyIfPresent: .variantCitation)
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
		try classifier?.encode(on: &_container, forKey: .classifier)
		try contributorship?.encode(on: &_container, forKey: .contributorship)
		try dateCited?.encode(on: &_container, forKey: .dateCited, auxiliaryKey: ._dateCited)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try journal?.encode(on: &_container, forKey: .journal)
		try keywordList?.encode(on: &_container, forKey: .keywordList)
		try medlinePubMed?.encode(on: &_container, forKey: .medlinePubMed)
		try note?.encode(on: &_container, forKey: .note)
		try pagination?.encode(on: &_container, forKey: .pagination)
		try publicationInfo?.encode(on: &_container, forKey: .publicationInfo)
		try publishingModel?.encode(on: &_container, forKey: .publishingModel)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try relatedIdentifier?.encode(on: &_container, forKey: .relatedIdentifier)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try summary?.encode(on: &_container, forKey: .summary)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variantCitation?.encode(on: &_container, forKey: .variantCitation)
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
		    && classifier == _other.classifier
		    && contributorship == _other.contributorship
		    && dateCited == _other.dateCited
		    && identifier == _other.identifier
		    && journal == _other.journal
		    && keywordList == _other.keywordList
		    && medlinePubMed == _other.medlinePubMed
		    && note == _other.note
		    && pagination == _other.pagination
		    && publicationInfo == _other.publicationInfo
		    && publishingModel == _other.publishingModel
		    && relatedArtifact == _other.relatedArtifact
		    && relatedIdentifier == _other.relatedIdentifier
		    && status == _other.status
		    && summary == _other.summary
		    && url == _other.url
		    && useContext == _other.useContext
		    && variantCitation == _other.variantCitation
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
		hasher.combine(classifier)
		hasher.combine(contributorship)
		hasher.combine(dateCited)
		hasher.combine(identifier)
		hasher.combine(journal)
		hasher.combine(keywordList)
		hasher.combine(medlinePubMed)
		hasher.combine(note)
		hasher.combine(pagination)
		hasher.combine(publicationInfo)
		hasher.combine(publishingModel)
		hasher.combine(relatedArtifact)
		hasher.combine(relatedIdentifier)
		hasher.combine(status)
		hasher.combine(summary)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(variantCitation)
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
	
	/// Language in which this form of the article is published
	public var language: CodeableConcept?
	
	/// The specific issue in which the cited article resides
	public var journalIssue: CitationAlternativeFormJournalIssue?
	
	/// Indicates the inclusive pages for the article cited
	public var pagination: CitationAlternativeFormPagination?
	
	/// Citation detail for sources other than journals
	public var publicationInfo: CitationAlternativeFormPublicationInfo?
	
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
							publicationInfo: CitationAlternativeFormPublicationInfo? = nil,
							publishingModel: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.journalIssue = journalIssue
		self.language = language
		self.modifierExtension = modifierExtension
		self.pagination = pagination
		self.publicationInfo = publicationInfo
		self.publishingModel = publishingModel
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case journalIssue
		case language
		case pagination
		case publicationInfo
		case publishingModel
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.journalIssue = try CitationAlternativeFormJournalIssue(from: _container, forKeyIfPresent: .journalIssue)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.pagination = try CitationAlternativeFormPagination(from: _container, forKeyIfPresent: .pagination)
		self.publicationInfo = try CitationAlternativeFormPublicationInfo(from: _container, forKeyIfPresent: .publicationInfo)
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
		try publicationInfo?.encode(on: &_container, forKey: .publicationInfo)
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
		    && publicationInfo == _other.publicationInfo
		    && publishingModel == _other.publishingModel
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(journalIssue)
		hasher.combine(language)
		hasher.combine(pagination)
		hasher.combine(publicationInfo)
		hasher.combine(publishingModel)
	}
}

/**
 The specific issue in which the cited article resides.
 */
open class CitationAlternativeFormJournalIssue: BackboneElement {
	
	/// Internet or Print
	public var citedMedium: CodeableConcept?
	
	/// Volume number of journal in which the article is published
	public var volume: FHIRPrimitive<FHIRString>?
	
	/// Issue, part or supplement of journal in which the article is published
	public var issue: FHIRPrimitive<FHIRString>?
	
	/// Defining the date on which the issue of the joutnal was published
	public var publicationDate: CitationAlternativeFormJournalIssuePublicationDate?
	
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
							publicationDate: CitationAlternativeFormJournalIssuePublicationDate? = nil,
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
		case publicationDate
		case volume; case _volume
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.publicationDate = try CitationAlternativeFormJournalIssuePublicationDate(from: _container, forKeyIfPresent: .publicationDate)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate)
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
 Defining the date on which the issue of the joutnal was published.
 */
open class CitationAlternativeFormJournalIssuePublicationDate: BackboneElement {
	
	/// Date on which the issue of the journal was published
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Year on which the issue of the journal was published
	public var year: FHIRPrimitive<FHIRString>?
	
	/// Month on which the issue of the journal was published
	public var month: FHIRPrimitive<FHIRString>?
	
	/// Day on which the issue of the journal was published
	public var day: FHIRPrimitive<FHIRString>?
	
	/// Season on which the issue of the jornal was published
	public var season: FHIRPrimitive<FHIRString>?
	
	/// Text representation of the date of which the issue of the journal was published
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<FHIRDate>? = nil,
							day: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							month: FHIRPrimitive<FHIRString>? = nil,
							season: FHIRPrimitive<FHIRString>? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							year: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case month; case _month
		case season; case _season
		case text; case _text
		case year; case _year
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.day = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .day, auxiliaryKey: ._day)
		self.month = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .month, auxiliaryKey: ._month)
		self.season = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .season, auxiliaryKey: ._season)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.year = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .year, auxiliaryKey: ._year)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try day?.encode(on: &_container, forKey: .day, auxiliaryKey: ._day)
		try month?.encode(on: &_container, forKey: .month, auxiliaryKey: ._month)
		try season?.encode(on: &_container, forKey: .season, auxiliaryKey: ._season)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try year?.encode(on: &_container, forKey: .year, auxiliaryKey: ._year)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeFormJournalIssuePublicationDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && day == _other.day
		    && month == _other.month
		    && season == _other.season
		    && text == _other.text
		    && year == _other.year
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(day)
		hasher.combine(month)
		hasher.combine(season)
		hasher.combine(text)
		hasher.combine(year)
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
 Citation detail for sources other than journals.
 
 Citation detail for sources other than journals such as books and databases.
 */
open class CitationAlternativeFormPublicationInfo: BackboneElement {
	
	/// The collection the cited article is published in
	public var publishedIn: CitationAlternativeFormPublicationInfoPublishedIn?
	
	/// The date the article was added to the database
	public var entryDate: FHIRPrimitive<DateTime>?
	
	/// The date the article was last revised or updated in the database
	public var revisionDate: FHIRPrimitive<DateTime>?
	
	/// Number of pages or screens
	public var pageCount: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							entryDate: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							pageCount: FHIRPrimitive<FHIRString>? = nil,
							publishedIn: CitationAlternativeFormPublicationInfoPublishedIn? = nil,
							revisionDate: FHIRPrimitive<DateTime>? = nil)
	{
		self.init()
		self.entryDate = entryDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.pageCount = pageCount
		self.publishedIn = publishedIn
		self.revisionDate = revisionDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entryDate; case _entryDate
		case pageCount; case _pageCount
		case publishedIn
		case revisionDate; case _revisionDate
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.entryDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .entryDate, auxiliaryKey: ._entryDate)
		self.pageCount = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageCount, auxiliaryKey: ._pageCount)
		self.publishedIn = try CitationAlternativeFormPublicationInfoPublishedIn(from: _container, forKeyIfPresent: .publishedIn)
		self.revisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .revisionDate, auxiliaryKey: ._revisionDate)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try entryDate?.encode(on: &_container, forKey: .entryDate, auxiliaryKey: ._entryDate)
		try pageCount?.encode(on: &_container, forKey: .pageCount, auxiliaryKey: ._pageCount)
		try publishedIn?.encode(on: &_container, forKey: .publishedIn)
		try revisionDate?.encode(on: &_container, forKey: .revisionDate, auxiliaryKey: ._revisionDate)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeFormPublicationInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return entryDate == _other.entryDate
		    && pageCount == _other.pageCount
		    && publishedIn == _other.publishedIn
		    && revisionDate == _other.revisionDate
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(entryDate)
		hasher.combine(pageCount)
		hasher.combine(publishedIn)
		hasher.combine(revisionDate)
	}
}

/**
 The collection the cited article is published in.
 */
open class CitationAlternativeFormPublicationInfoPublishedIn: BackboneElement {
	
	/// Database or book
	public var type: CodeableConcept?
	
	/// Name of the database or title of the book
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher
	public var publisher: Reference?
	
	/// Geographic location of the publisher
	public var publisherLocation: FHIRPrimitive<FHIRString>?
	
	/// When the database was first available or when the book was published
	public var startDate: FHIRPrimitive<FHIRDate>?
	
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
							publisher: Reference? = nil,
							publisherLocation: FHIRPrimitive<FHIRString>? = nil,
							startDate: FHIRPrimitive<FHIRDate>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.publisherLocation = publisherLocation
		self.startDate = startDate
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case publisher
		case publisherLocation; case _publisherLocation
		case startDate; case _startDate
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.publisherLocation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisherLocation, auxiliaryKey: ._publisherLocation)
		self.startDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try publisherLocation?.encode(on: &_container, forKey: .publisherLocation, auxiliaryKey: ._publisherLocation)
		try startDate?.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationAlternativeFormPublicationInfoPublishedIn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && publisher == _other.publisher
		    && publisherLocation == _other.publisherLocation
		    && startDate == _other.startDate
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(publisherLocation)
		hasher.combine(startDate)
		hasher.combine(type)
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
 Attribution of authors and other contributors.
 
 This element is used to list authors and other contributors, their contact information, specific contributions, and
 summary statements.
 */
open class CitationContributorship: BackboneElement {
	
	/// Indicates if the list includes all authors and/or contributors
	public var complete: FHIRPrimitive<FHIRBool>?
	
	/// An individual entity named in the list
	public var entry: [CitationContributorshipEntry]?
	
	/// Used to record a display of the author/contributor list without separate coding for each list member
	public var summary: [CitationContributorshipSummary]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							complete: FHIRPrimitive<FHIRBool>? = nil,
							entry: [CitationContributorshipEntry]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							summary: [CitationContributorshipSummary]? = nil)
	{
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
		self.entry = try [CitationContributorshipEntry](from: _container, forKeyIfPresent: .entry)
		self.summary = try [CitationContributorshipSummary](from: _container, forKeyIfPresent: .summary)
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
		guard let _other = _other as? CitationContributorship else {
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
 An individual entity named in the list.
 
 An individual entity named in the author list or contributor list.
 */
open class CitationContributorshipEntry: BackboneElement {
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// Initials for forename
	public var initials: FHIRPrimitive<FHIRString>?
	
	/// Used for collective or corporate name as an author
	public var collectiveName: FHIRPrimitive<FHIRString>?
	
	/// Author identifier, eg ORCID
	public var identifier: [Identifier]?
	
	/// Organizational affiliation
	public var affiliationInfo: [CitationContributorshipEntryAffiliationInfo]?
	
	/// Physical mailing address
	public var address: [Address]?
	
	/// Email or telephone contact methods for
	public var telecom: [ContactPoint]?
	
	/// The specific contributions
	public var contribution: [CodeableConcept]?
	
	/// Used to identify non-author contributors
	public var notAnAuthor: FHIRPrimitive<FHIRBool>?
	
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
							address: [Address]? = nil,
							affiliationInfo: [CitationContributorshipEntryAffiliationInfo]? = nil,
							collectiveName: FHIRPrimitive<FHIRString>? = nil,
							contribution: [CodeableConcept]? = nil,
							correspondingAuthor: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							initials: FHIRPrimitive<FHIRString>? = nil,
							listOrder: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							name: HumanName? = nil,
							notAnAuthor: FHIRPrimitive<FHIRBool>? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.address = address
		self.affiliationInfo = affiliationInfo
		self.collectiveName = collectiveName
		self.contribution = contribution
		self.correspondingAuthor = correspondingAuthor
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.initials = initials
		self.listOrder = listOrder
		self.modifierExtension = modifierExtension
		self.name = name
		self.notAnAuthor = notAnAuthor
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case affiliationInfo
		case collectiveName; case _collectiveName
		case contribution
		case correspondingAuthor; case _correspondingAuthor
		case identifier
		case initials; case _initials
		case listOrder; case _listOrder
		case name
		case notAnAuthor; case _notAnAuthor
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.affiliationInfo = try [CitationContributorshipEntryAffiliationInfo](from: _container, forKeyIfPresent: .affiliationInfo)
		self.collectiveName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .collectiveName, auxiliaryKey: ._collectiveName)
		self.contribution = try [CodeableConcept](from: _container, forKeyIfPresent: .contribution)
		self.correspondingAuthor = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .correspondingAuthor, auxiliaryKey: ._correspondingAuthor)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.initials = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initials, auxiliaryKey: ._initials)
		self.listOrder = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .listOrder, auxiliaryKey: ._listOrder)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.notAnAuthor = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notAnAuthor, auxiliaryKey: ._notAnAuthor)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try affiliationInfo?.encode(on: &_container, forKey: .affiliationInfo)
		try collectiveName?.encode(on: &_container, forKey: .collectiveName, auxiliaryKey: ._collectiveName)
		try contribution?.encode(on: &_container, forKey: .contribution)
		try correspondingAuthor?.encode(on: &_container, forKey: .correspondingAuthor, auxiliaryKey: ._correspondingAuthor)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try initials?.encode(on: &_container, forKey: .initials, auxiliaryKey: ._initials)
		try listOrder?.encode(on: &_container, forKey: .listOrder, auxiliaryKey: ._listOrder)
		try name?.encode(on: &_container, forKey: .name)
		try notAnAuthor?.encode(on: &_container, forKey: .notAnAuthor, auxiliaryKey: ._notAnAuthor)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationContributorshipEntry else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && affiliationInfo == _other.affiliationInfo
		    && collectiveName == _other.collectiveName
		    && contribution == _other.contribution
		    && correspondingAuthor == _other.correspondingAuthor
		    && identifier == _other.identifier
		    && initials == _other.initials
		    && listOrder == _other.listOrder
		    && name == _other.name
		    && notAnAuthor == _other.notAnAuthor
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(affiliationInfo)
		hasher.combine(collectiveName)
		hasher.combine(contribution)
		hasher.combine(correspondingAuthor)
		hasher.combine(identifier)
		hasher.combine(initials)
		hasher.combine(listOrder)
		hasher.combine(name)
		hasher.combine(notAnAuthor)
		hasher.combine(telecom)
	}
}

/**
 Organizational affiliation.
 
 Organization affiliated with the entity.
 */
open class CitationContributorshipEntryAffiliationInfo: BackboneElement {
	
	/// Display for the organization
	public var affiliation: FHIRPrimitive<FHIRString>?
	
	/// Role within the organization, such as professional title
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
		guard let _other = _other as? CitationContributorshipEntryAffiliationInfo else {
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
 Used to record a display of the author/contributor list without separate coding for each list member.
 */
open class CitationContributorshipSummary: BackboneElement {
	
	/// Either authorList or contributorshipStatement
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
							value: FHIRPrimitive<FHIRString>)
	{
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
		guard let _other = _other as? CitationContributorshipSummary else {
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
	public var publicationDate: CitationJournalJournalIssuePublicationDate?
	
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
							publicationDate: CitationJournalJournalIssuePublicationDate? = nil,
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
		case publicationDate
		case volume; case _volume
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.citedMedium = try CodeableConcept(from: _container, forKeyIfPresent: .citedMedium)
		self.issue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .issue, auxiliaryKey: ._issue)
		self.publicationDate = try CitationJournalJournalIssuePublicationDate(from: _container, forKeyIfPresent: .publicationDate)
		self.volume = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .volume, auxiliaryKey: ._volume)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try citedMedium?.encode(on: &_container, forKey: .citedMedium)
		try issue?.encode(on: &_container, forKey: .issue, auxiliaryKey: ._issue)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate)
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
 Date on which the issue of the journal was published.
 */
open class CitationJournalJournalIssuePublicationDate: BackboneElement {
	
	/// Defining the date on which the issue of the joutnal was published
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Year on which the issue of the journal was published
	public var year: FHIRPrimitive<FHIRString>?
	
	/// Month on which the issue of the journal was published
	public var month: FHIRPrimitive<FHIRString>?
	
	/// Day on which the issue of the journal was published
	public var day: FHIRPrimitive<FHIRString>?
	
	/// Season on which the issue of the jornal was published
	public var season: FHIRPrimitive<FHIRString>?
	
	/// Text representation of the date of which the issue of the journal was published
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<FHIRDate>? = nil,
							day: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							month: FHIRPrimitive<FHIRString>? = nil,
							season: FHIRPrimitive<FHIRString>? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							year: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case month; case _month
		case season; case _season
		case text; case _text
		case year; case _year
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.day = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .day, auxiliaryKey: ._day)
		self.month = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .month, auxiliaryKey: ._month)
		self.season = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .season, auxiliaryKey: ._season)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.year = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .year, auxiliaryKey: ._year)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try day?.encode(on: &_container, forKey: .day, auxiliaryKey: ._day)
		try month?.encode(on: &_container, forKey: .month, auxiliaryKey: ._month)
		try season?.encode(on: &_container, forKey: .season, auxiliaryKey: ._season)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try year?.encode(on: &_container, forKey: .year, auxiliaryKey: ._year)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationJournalJournalIssuePublicationDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && day == _other.day
		    && month == _other.month
		    && season == _other.season
		    && text == _other.text
		    && year == _other.year
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(day)
		hasher.combine(month)
		hasher.combine(season)
		hasher.combine(text)
		hasher.combine(year)
	}
}

/**
 Used to support keyword searches.
 
 A list of words classified as keywords for specific use in search functions.
 */
open class CitationKeywordList: BackboneElement {
	
	/// Author, publisher, or custodian of the keyword list
	public var owner: FHIRPrimitive<FHIRString>?
	
	/// For each keyword in the keyword list
	public var keyword: [CitationKeywordListKeyword]
	
	/// Designated initializer taking all required properties
	public init(keyword: [CitationKeywordListKeyword]) {
		self.keyword = keyword
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							keyword: [CitationKeywordListKeyword],
							modifierExtension: [Extension]? = nil,
							owner: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(keyword: keyword)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.owner = owner
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case keyword
		case owner; case _owner
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.keyword = try [CitationKeywordListKeyword](from: _container, forKey: .keyword)
		self.owner = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .owner, auxiliaryKey: ._owner)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try keyword.encode(on: &_container, forKey: .keyword)
		try owner?.encode(on: &_container, forKey: .owner, auxiliaryKey: ._owner)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationKeywordList else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return keyword == _other.keyword
		    && owner == _other.owner
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(keyword)
		hasher.combine(owner)
	}
}

/**
 For each keyword in the keyword list.
 */
open class CitationKeywordListKeyword: BackboneElement {
	
	/// Whether or not it is a major topic
	public var majorTopic: FHIRPrimitive<FHIRBool>?
	
	/// The actual keyword
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
							majorTopic: FHIRPrimitive<FHIRBool>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.majorTopic = majorTopic
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case majorTopic; case _majorTopic
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.majorTopic = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .majorTopic, auxiliaryKey: ._majorTopic)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try majorTopic?.encode(on: &_container, forKey: .majorTopic, auxiliaryKey: ._majorTopic)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationKeywordListKeyword else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return majorTopic == _other.majorTopic
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(majorTopic)
		hasher.combine(value)
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
 Citation detail for sources other than journals.
 
 Citation detail for sources other than journals such as books and databases.
 */
open class CitationPublicationInfo: BackboneElement {
	
	/// The collection the cited article is published in
	public var publishedIn: CitationPublicationInfoPublishedIn?
	
	/// The date the article was added to the database
	public var entryDate: FHIRPrimitive<DateTime>?
	
	/// The date the article was last revised or updated in the database
	public var revisionDate: FHIRPrimitive<DateTime>?
	
	/// Number of pages or screens
	public var pageCount: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							entryDate: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							pageCount: FHIRPrimitive<FHIRString>? = nil,
							publishedIn: CitationPublicationInfoPublishedIn? = nil,
							revisionDate: FHIRPrimitive<DateTime>? = nil)
	{
		self.init()
		self.entryDate = entryDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.pageCount = pageCount
		self.publishedIn = publishedIn
		self.revisionDate = revisionDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entryDate; case _entryDate
		case pageCount; case _pageCount
		case publishedIn
		case revisionDate; case _revisionDate
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.entryDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .entryDate, auxiliaryKey: ._entryDate)
		self.pageCount = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .pageCount, auxiliaryKey: ._pageCount)
		self.publishedIn = try CitationPublicationInfoPublishedIn(from: _container, forKeyIfPresent: .publishedIn)
		self.revisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .revisionDate, auxiliaryKey: ._revisionDate)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try entryDate?.encode(on: &_container, forKey: .entryDate, auxiliaryKey: ._entryDate)
		try pageCount?.encode(on: &_container, forKey: .pageCount, auxiliaryKey: ._pageCount)
		try publishedIn?.encode(on: &_container, forKey: .publishedIn)
		try revisionDate?.encode(on: &_container, forKey: .revisionDate, auxiliaryKey: ._revisionDate)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationPublicationInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return entryDate == _other.entryDate
		    && pageCount == _other.pageCount
		    && publishedIn == _other.publishedIn
		    && revisionDate == _other.revisionDate
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(entryDate)
		hasher.combine(pageCount)
		hasher.combine(publishedIn)
		hasher.combine(revisionDate)
	}
}

/**
 The collection the cited article is published in.
 */
open class CitationPublicationInfoPublishedIn: BackboneElement {
	
	/// Database or book
	public var type: CodeableConcept?
	
	/// Identifiers may include ISBN for books
	public var identifier: [Identifier]?
	
	/// Name of the database or title of the book
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher
	public var publisher: Reference?
	
	/// Geographic location of the publisher
	public var publisherLocation: FHIRPrimitive<FHIRString>?
	
	/// When the database was first available or when the book was published
	public var startDate: FHIRPrimitive<FHIRDate>?
	
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
							name: FHIRPrimitive<FHIRString>? = nil,
							publisher: Reference? = nil,
							publisherLocation: FHIRPrimitive<FHIRString>? = nil,
							startDate: FHIRPrimitive<FHIRDate>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.publisherLocation = publisherLocation
		self.startDate = startDate
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case name; case _name
		case publisher
		case publisherLocation; case _publisherLocation
		case startDate; case _startDate
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.publisherLocation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisherLocation, auxiliaryKey: ._publisherLocation)
		self.startDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try publisherLocation?.encode(on: &_container, forKey: .publisherLocation, auxiliaryKey: ._publisherLocation)
		try startDate?.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CitationPublicationInfoPublishedIn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && name == _other.name
		    && publisher == _other.publisher
		    && publisherLocation == _other.publisherLocation
		    && startDate == _other.startDate
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(publisherLocation)
		hasher.combine(startDate)
		hasher.combine(type)
	}
}

/**
 A human-readable display of the citation.
 */
open class CitationSummary: BackboneElement {
	
	/// Format for display of the citation
	public var style: CodeableConcept?
	
	/// The human-readable display of the citation
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
							text: FHIRPrimitive<FHIRString>)
	{
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
