//
//  Measure.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Measure)
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
 A quality measure definition.
 
 The Measure resource provides the definition of a quality measure.
 */
public struct Measure: DomainResource {
	
	public static let resourceType: ResourceType = .measure
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When the measure was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// The population basis specifies the type of elements in the population. For a subject-based measure, this is
	/// boolean (because the subject and the population basis are the same, and the population criteria define yes/no
	/// values for each individual in the population). For measures that have a population basis that is different than
	/// the subject, this element specifies the type of the population basis. For example, an encounter-based measure
	/// has a subject of Patient and a population basis of Encounter, and the population criteria all return lists of
	/// Encounters.
	public var basis: FHIRPrimitive<ResourceType>?
	
	/// Summary of clinical guidelines
	public var clinicalRecommendationStatement: FHIRPrimitive<FHIRString>?
	
	/// opportunity | all-or-nothing | linear | weighted
	public var compositeScoring: CodeableConcept?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the measure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Disclaimer for use of the measure or its referenced content
	public var disclaimer: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the measure is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Population criteria group
	public var group: [MeasureGroup]?
	
	/// Additional guidance for implementers (deprecated)
	public var guidance: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the measure
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Intended jurisdiction for measure (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the measure was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Logic used by the measure
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this measure (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this measure is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// How is rate aggregation performed for this measure
	public var rateAggregation: FHIRPrimitive<FHIRString>?
	
	/// Detailed description of why the measure exists
	public var rationale: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// How risk adjustment is applied for this measure
	public var riskAdjustment: FHIRPrimitive<FHIRString>?
	
	/// proportion | ratio | continuous-variable | cohort
	public var scoring: CodeableConcept?
	
	/// What units?
	public var scoringUnit: CodeableConcept?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Subordinate title of the measure
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// What other data should be reported with the measure
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Defined terms used in the measure documentation
	public var term: [MeasureTerm]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this measure (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The category of the measure, such as Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// process | outcome | structure | patient-reported-outcome | composite
	public var type: [CodeableConcept]?
	
	/// Canonical identifier for this measure, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Describes the clinical usage of the measure
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the measure
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		basis: FHIRPrimitive<ResourceType>? = nil,
		clinicalRecommendationStatement: FHIRPrimitive<FHIRString>? = nil,
		compositeScoring: CodeableConcept? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		disclaimer: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		group: [MeasureGroup]? = nil,
		guidance: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		improvementNotation: CodeableConcept? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		library: [FHIRPrimitive<Canonical>]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		rateAggregation: FHIRPrimitive<FHIRString>? = nil,
		rationale: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		riskAdjustment: FHIRPrimitive<FHIRString>? = nil,
		scoring: CodeableConcept? = nil,
		scoringUnit: CodeableConcept? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: SubjectX? = nil,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		supplementalData: [MeasureSupplementalData]? = nil,
		term: [MeasureTerm]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		type: [CodeableConcept]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.basis = basis
		self.clinicalRecommendationStatement = clinicalRecommendationStatement
		self.compositeScoring = compositeScoring
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.disclaimer = disclaimer
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.group = group
		self.guidance = guidance
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.improvementNotation = improvementNotation
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.library = library
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.rateAggregation = rateAggregation
		self.rationale = rationale
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.riskAdjustment = riskAdjustment
		self.scoring = scoring
		self.scoringUnit = scoringUnit
		self.status = status
		self.subject = subject
		self.subtitle = subtitle
		self.supplementalData = supplementalData
		self.term = term
		self.text = text
		self.title = title
		self.topic = topic
		self.type = type
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case author
		case basis; case _basis
		case clinicalRecommendationStatement; case _clinicalRecommendationStatement
		case compositeScoring
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case disclaimer; case _disclaimer
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case group
		case guidance; case _guidance
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case improvementNotation
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case library; case _library
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case rateAggregation; case _rateAggregation
		case rationale; case _rationale
		case relatedArtifact
		case reviewer
		case riskAdjustment; case _riskAdjustment
		case scoring
		case scoringUnit
		case status; case _status
		case subjectCodeableConcept
		case subjectReference
		case subtitle; case _subtitle
		case supplementalData
		case term
		case text
		case title; case _title
		case topic
		case type
		case url; case _url
		case usage; case _usage
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
		self.basis = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .basis, auxiliaryKey: ._basis)
		self.clinicalRecommendationStatement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .clinicalRecommendationStatement, auxiliaryKey: ._clinicalRecommendationStatement)
		self.compositeScoring = try CodeableConcept(from: _container, forKeyIfPresent: .compositeScoring)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.disclaimer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disclaimer, auxiliaryKey: ._disclaimer)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [MeasureGroup](from: _container, forKeyIfPresent: .group)
		self.guidance = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .guidance, auxiliaryKey: ._guidance)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.rateAggregation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rateAggregation, auxiliaryKey: ._rateAggregation)
		self.rationale = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rationale, auxiliaryKey: ._rationale)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.riskAdjustment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .riskAdjustment, auxiliaryKey: ._riskAdjustment)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.scoringUnit = try CodeableConcept(from: _container, forKeyIfPresent: .scoringUnit)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Self._decodeSubject(from: _container)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.supplementalData = try [MeasureSupplementalData](from: _container, forKeyIfPresent: .supplementalData)
		self.term = try [MeasureTerm](from: _container, forKeyIfPresent: .term)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
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
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try clinicalRecommendationStatement?.encode(on: &_container, forKey: .clinicalRecommendationStatement, auxiliaryKey: ._clinicalRecommendationStatement)
		try compositeScoring?.encode(on: &_container, forKey: .compositeScoring)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try disclaimer?.encode(on: &_container, forKey: .disclaimer, auxiliaryKey: ._disclaimer)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try guidance?.encode(on: &_container, forKey: .guidance, auxiliaryKey: ._guidance)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try rateAggregation?.encode(on: &_container, forKey: .rateAggregation, auxiliaryKey: ._rateAggregation)
		try rationale?.encode(on: &_container, forKey: .rationale, auxiliaryKey: ._rationale)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try riskAdjustment?.encode(on: &_container, forKey: .riskAdjustment, auxiliaryKey: ._riskAdjustment)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try scoringUnit?.encode(on: &_container, forKey: .scoringUnit)
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
		try supplementalData?.encode(on: &_container, forKey: .supplementalData)
		try term?.encode(on: &_container, forKey: .term)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
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
 Population criteria group.
 
 A group of population criteria for the measure.
 */
public struct MeasureGroup: BackboneElement {
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// The population basis specifies the type of elements in the population. For a subject-based measure, this is
	/// boolean (because the subject and the population basis are the same, and the population criteria define yes/no
	/// values for each individual in the population). For measures that have a population basis that is different than
	/// the subject, this element specifies the type of the population basis. For example, an encounter-based measure
	/// has a subject of Patient and a population basis of Encounter, and the population criteria all return lists of
	/// Encounters.
	public var basis: FHIRPrimitive<ResourceType>?
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// Summary description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Logic used by the measure group
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Unique id for group in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Population criteria
	public var population: [MeasureGroupPopulation]?
	
	/// How is rate aggregation performed for this measure
	public var rateAggregation: FHIRPrimitive<FHIRString>?
	
	/// proportion | ratio | continuous-variable | cohort
	public var scoring: CodeableConcept?
	
	/// What units?
	public var scoringUnit: CodeableConcept?
	
	/// Stratifier criteria for the measure
	public var stratifier: [MeasureGroupStratifier]?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// process | outcome | structure | patient-reported-outcome | composite
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		basis: FHIRPrimitive<ResourceType>? = nil,
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		improvementNotation: CodeableConcept? = nil,
		library: [FHIRPrimitive<Canonical>]? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureGroupPopulation]? = nil,
		rateAggregation: FHIRPrimitive<FHIRString>? = nil,
		scoring: CodeableConcept? = nil,
		scoringUnit: CodeableConcept? = nil,
		stratifier: [MeasureGroupStratifier]? = nil,
		subject: SubjectX? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.basis = basis
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.improvementNotation = improvementNotation
		self.library = library
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.population = population
		self.rateAggregation = rateAggregation
		self.scoring = scoring
		self.scoringUnit = scoringUnit
		self.stratifier = stratifier
		self.subject = subject
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basis; case _basis
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case improvementNotation
		case library; case _library
		case linkId; case _linkId
		case modifierExtension
		case population
		case rateAggregation; case _rateAggregation
		case scoring
		case scoringUnit
		case stratifier
		case subjectCodeableConcept
		case subjectReference
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basis = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .basis, auxiliaryKey: ._basis)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.rateAggregation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rateAggregation, auxiliaryKey: ._rateAggregation)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.scoringUnit = try CodeableConcept(from: _container, forKeyIfPresent: .scoringUnit)
		self.stratifier = try [MeasureGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		self.subject = try Self._decodeSubject(from: _container)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try rateAggregation?.encode(on: &_container, forKey: .rateAggregation, auxiliaryKey: ._rateAggregation)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try scoringUnit?.encode(on: &_container, forKey: .scoringUnit)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
		if let _enum = subject {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .subjectReference)
		}
		}
		try type?.encode(on: &_container, forKey: .type)
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
 Population criteria.
 
 A population criteria for the measure.
 */
public struct MeasureGroupPopulation: BackboneElement {
	
	/// Aggregation method for a measure score (e.g. sum, average, median, minimum, maximum, count)
	public var aggregateMethod: CodeableConcept?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// The criteria that defines this population
	public var criteria: Expression?
	
	/// The human readable description of this population criteria
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// A group resource that defines this population
	public var groupDefinition: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Which population
	public var inputPopulationId: FHIRPrimitive<FHIRString>?
	
	/// Unique id for population in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		aggregateMethod: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		criteria: Expression? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		groupDefinition: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inputPopulationId: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.aggregateMethod = aggregateMethod
		self.code = code
		self.criteria = criteria
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.groupDefinition = groupDefinition
		self.id = id
		self.inputPopulationId = inputPopulationId
		self.linkId = linkId
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case aggregateMethod
		case code
		case criteria
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case groupDefinition
		case id; case _id
		case inputPopulationId; case _inputPopulationId
		case linkId; case _linkId
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.aggregateMethod = try CodeableConcept(from: _container, forKeyIfPresent: .aggregateMethod)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try Expression(from: _container, forKeyIfPresent: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupDefinition = try Reference(from: _container, forKeyIfPresent: .groupDefinition)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.inputPopulationId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .inputPopulationId, auxiliaryKey: ._inputPopulationId)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try aggregateMethod?.encode(on: &_container, forKey: .aggregateMethod)
		try code?.encode(on: &_container, forKey: .code)
		try criteria?.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupDefinition?.encode(on: &_container, forKey: .groupDefinition)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try inputPopulationId?.encode(on: &_container, forKey: .inputPopulationId, auxiliaryKey: ._inputPopulationId)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Stratifier criteria for the measure.
 
 The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a
 referenced library or a valid FHIR Resource Path.
 */
public struct MeasureGroupStratifier: BackboneElement {
	
	/// Meaning of the stratifier
	public var code: CodeableConcept?
	
	/// Stratifier criteria component for the measure
	public var component: [MeasureGroupStratifierComponent]?
	
	/// How the measure should be stratified
	public var criteria: Expression?
	
	/// The human readable description of this stratifier
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// A group resource that defines this population
	public var groupDefinition: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique id for stratifier in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		component: [MeasureGroupStratifierComponent]? = nil,
		criteria: Expression? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		groupDefinition: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.component = component
		self.criteria = criteria
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.groupDefinition = groupDefinition
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case component
		case criteria
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case groupDefinition
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.component = try [MeasureGroupStratifierComponent](from: _container, forKeyIfPresent: .component)
		self.criteria = try Expression(from: _container, forKeyIfPresent: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupDefinition = try Reference(from: _container, forKeyIfPresent: .groupDefinition)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try component?.encode(on: &_container, forKey: .component)
		try criteria?.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupDefinition?.encode(on: &_container, forKey: .groupDefinition)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Stratifier criteria component for the measure.
 
 A component of the stratifier criteria for the measure report, specified as either the name of a valid CQL expression
 defined within a referenced library or a valid FHIR Resource Path.
 */
public struct MeasureGroupStratifierComponent: BackboneElement {
	
	/// Meaning of the stratifier component
	public var code: CodeableConcept?
	
	/// Component of how the measure should be stratified
	public var criteria: Expression?
	
	/// The human readable description of this stratifier component
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// A group resource that defines this population
	public var groupDefinition: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique id for stratifier component in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		criteria: Expression? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		groupDefinition: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.criteria = criteria
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.groupDefinition = groupDefinition
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case criteria
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case groupDefinition
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try Expression(from: _container, forKeyIfPresent: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupDefinition = try Reference(from: _container, forKeyIfPresent: .groupDefinition)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try criteria?.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupDefinition?.encode(on: &_container, forKey: .groupDefinition)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 What other data should be reported with the measure.
 
 The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a
 referenced library, or a valid FHIR Resource Path.
 */
public struct MeasureSupplementalData: BackboneElement {
	
	/// Meaning of the supplemental data
	public var code: CodeableConcept?
	
	/// Expression describing additional data to be reported
	public var criteria: Expression
	
	/// The human readable description of this supplemental data
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique id for supplementalData in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// supplemental-data | risk-adjustment-factor
	public var usage: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		criteria: Expression,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		usage: [CodeableConcept]? = nil
	) {
		self.code = code
		self.criteria = criteria
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.usage = usage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case criteria
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case usage
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try Expression(from: _container, forKey: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.usage = try [CodeableConcept](from: _container, forKeyIfPresent: .usage)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try criteria.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try usage?.encode(on: &_container, forKey: .usage)
	}
}

/**
 Defined terms used in the measure documentation.
 
 Provides a description of an individual term used within the measure.
 */
public struct MeasureTerm: BackboneElement {
	
	/// What term?
	public var code: CodeableConcept?
	
	/// Meaning of the term
	public var definition: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		definition: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.definition = definition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case definition; case _definition
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.definition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
