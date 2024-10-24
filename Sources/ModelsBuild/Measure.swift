//
//  Measure.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Measure)
//  Copyright 2024 Apple Inc.
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
open class Measure: DomainResource {
	
	override open class var resourceType: ResourceType { return .measure }
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this measure, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the measure
	public var identifier: [Identifier]?
	
	/// Business version of the measure
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this measure (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this measure (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Subordinate title of the measure
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// The population basis specifies the type of elements in the population. For a subject-based measure, this is
	/// boolean (because the subject and the population basis are the same, and the population criteria define yes/no
	/// values for each individual in the population). For measures that have a population basis that is different than
	/// the subject, this element specifies the type of the population basis. For example, an encounter-based measure
	/// has a subject of Patient and a population basis of Encounter, and the population criteria all return lists of
	/// Encounters.
	public var basis: FHIRPrimitive<ResourceType>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the measure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for measure (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this measure is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Describes the clinical usage of the measure
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the measure was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the measure was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the measure is expected to be used
	public var effectivePeriod: Period?
	
	/// The category of the measure, such as Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Logic used by the measure
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Disclaimer for use of the measure or its referenced content
	public var disclaimer: FHIRPrimitive<FHIRString>?
	
	/// proportion | ratio | continuous-variable | cohort
	public var scoring: CodeableConcept?
	
	/// What units?
	public var scoringUnit: CodeableConcept?
	
	/// opportunity | all-or-nothing | linear | weighted
	public var compositeScoring: CodeableConcept?
	
	/// process | outcome | structure | patient-reported-outcome | composite
	public var type: [CodeableConcept]?
	
	/// How risk adjustment is applied for this measure
	public var riskAdjustment: FHIRPrimitive<FHIRString>?
	
	/// How is rate aggregation performed for this measure
	public var rateAggregation: FHIRPrimitive<FHIRString>?
	
	/// Detailed description of why the measure exists
	public var rationale: FHIRPrimitive<FHIRString>?
	
	/// Summary of clinical guidelines
	public var clinicalRecommendationStatement: FHIRPrimitive<FHIRString>?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Defined terms used in the measure documentation
	public var term: [MeasureTerm]?
	
	/// Additional guidance for implementers (deprecated)
	public var guidance: FHIRPrimitive<FHIRString>?
	
	/// Population criteria group
	public var group: [MeasureGroup]?
	
	/// What other data should be reported with the measure
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		case approvalDate; case _approvalDate
		case author
		case basis; case _basis
		case clinicalRecommendationStatement; case _clinicalRecommendationStatement
		case compositeScoring
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case disclaimer; case _disclaimer
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case group
		case guidance; case _guidance
		case identifier
		case improvementNotation
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case library; case _library
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.basis = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .basis, auxiliaryKey: ._basis)
		self.clinicalRecommendationStatement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .clinicalRecommendationStatement, auxiliaryKey: ._clinicalRecommendationStatement)
		self.compositeScoring = try CodeableConcept(from: _container, forKeyIfPresent: .compositeScoring)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.disclaimer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disclaimer, auxiliaryKey: ._disclaimer)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.group = try [MeasureGroup](from: _container, forKeyIfPresent: .group)
		self.guidance = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .guidance, auxiliaryKey: ._guidance)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
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
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCodeableConcept, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		self.subject = _t_subject
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.supplementalData = try [MeasureSupplementalData](from: _container, forKeyIfPresent: .supplementalData)
		self.term = try [MeasureTerm](from: _container, forKeyIfPresent: .term)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
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
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try clinicalRecommendationStatement?.encode(on: &_container, forKey: .clinicalRecommendationStatement, auxiliaryKey: ._clinicalRecommendationStatement)
		try compositeScoring?.encode(on: &_container, forKey: .compositeScoring)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try disclaimer?.encode(on: &_container, forKey: .disclaimer, auxiliaryKey: ._disclaimer)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try group?.encode(on: &_container, forKey: .group)
		try guidance?.encode(on: &_container, forKey: .guidance, auxiliaryKey: ._guidance)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
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
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
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
		guard let _other = _other as? Measure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && author == _other.author
		    && basis == _other.basis
		    && clinicalRecommendationStatement == _other.clinicalRecommendationStatement
		    && compositeScoring == _other.compositeScoring
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && disclaimer == _other.disclaimer
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && group == _other.group
		    && guidance == _other.guidance
		    && identifier == _other.identifier
		    && improvementNotation == _other.improvementNotation
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && library == _other.library
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && rateAggregation == _other.rateAggregation
		    && rationale == _other.rationale
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && riskAdjustment == _other.riskAdjustment
		    && scoring == _other.scoring
		    && scoringUnit == _other.scoringUnit
		    && status == _other.status
		    && subject == _other.subject
		    && subtitle == _other.subtitle
		    && supplementalData == _other.supplementalData
		    && term == _other.term
		    && title == _other.title
		    && topic == _other.topic
		    && type == _other.type
		    && url == _other.url
		    && usage == _other.usage
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(basis)
		hasher.combine(clinicalRecommendationStatement)
		hasher.combine(compositeScoring)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(disclaimer)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(group)
		hasher.combine(guidance)
		hasher.combine(identifier)
		hasher.combine(improvementNotation)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(library)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(rateAggregation)
		hasher.combine(rationale)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(riskAdjustment)
		hasher.combine(scoring)
		hasher.combine(scoringUnit)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(subtitle)
		hasher.combine(supplementalData)
		hasher.combine(term)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(usage)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Population criteria group.
 
 A group of population criteria for the measure.
 */
open class MeasureGroup: BackboneElement {
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Unique id for group in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// Summary description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// process | outcome | structure | patient-reported-outcome | composite
	public var type: [CodeableConcept]?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// The population basis specifies the type of elements in the population. For a subject-based measure, this is
	/// boolean (because the subject and the population basis are the same, and the population criteria define yes/no
	/// values for each individual in the population). For measures that have a population basis that is different than
	/// the subject, this element specifies the type of the population basis. For example, an encounter-based measure
	/// has a subject of Patient and a population basis of Encounter, and the population criteria all return lists of
	/// Encounters.
	public var basis: FHIRPrimitive<ResourceType>?
	
	/// proportion | ratio | continuous-variable | cohort
	public var scoring: CodeableConcept?
	
	/// What units?
	public var scoringUnit: CodeableConcept?
	
	/// How is rate aggregation performed for this measure
	public var rateAggregation: FHIRPrimitive<FHIRString>?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Logic used by the measure group
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Population criteria
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure
	public var stratifier: [MeasureGroupStratifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case improvementNotation
		case library; case _library
		case linkId; case _linkId
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basis = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .basis, auxiliaryKey: ._basis)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.population = try [MeasureGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.rateAggregation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rateAggregation, auxiliaryKey: ._rateAggregation)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.scoringUnit = try CodeableConcept(from: _container, forKeyIfPresent: .scoringUnit)
		self.stratifier = try [MeasureGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCodeableConcept, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		self.subject = _t_subject
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basis == _other.basis
		    && code == _other.code
		    && description_fhir == _other.description_fhir
		    && improvementNotation == _other.improvementNotation
		    && library == _other.library
		    && linkId == _other.linkId
		    && population == _other.population
		    && rateAggregation == _other.rateAggregation
		    && scoring == _other.scoring
		    && scoringUnit == _other.scoringUnit
		    && stratifier == _other.stratifier
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basis)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(improvementNotation)
		hasher.combine(library)
		hasher.combine(linkId)
		hasher.combine(population)
		hasher.combine(rateAggregation)
		hasher.combine(scoring)
		hasher.combine(scoringUnit)
		hasher.combine(stratifier)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Population criteria.
 
 A population criteria for the measure.
 */
open class MeasureGroupPopulation: BackboneElement {
	
	/// Unique id for population in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// The human readable description of this population criteria
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The criteria that defines this population
	public var criteria: Expression?
	
	/// A group resource that defines this population
	public var groupDefinition: Reference?
	
	/// Which population
	public var inputPopulationId: FHIRPrimitive<FHIRString>?
	
	/// Aggregation method for a measure score (e.g. sum, average, median, minimum, maximum, count)
	public var aggregateMethod: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case groupDefinition
		case inputPopulationId; case _inputPopulationId
		case linkId; case _linkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.aggregateMethod = try CodeableConcept(from: _container, forKeyIfPresent: .aggregateMethod)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try Expression(from: _container, forKeyIfPresent: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.groupDefinition = try Reference(from: _container, forKeyIfPresent: .groupDefinition)
		self.inputPopulationId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .inputPopulationId, auxiliaryKey: ._inputPopulationId)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try aggregateMethod?.encode(on: &_container, forKey: .aggregateMethod)
		try code?.encode(on: &_container, forKey: .code)
		try criteria?.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try groupDefinition?.encode(on: &_container, forKey: .groupDefinition)
		try inputPopulationId?.encode(on: &_container, forKey: .inputPopulationId, auxiliaryKey: ._inputPopulationId)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureGroupPopulation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return aggregateMethod == _other.aggregateMethod
		    && code == _other.code
		    && criteria == _other.criteria
		    && description_fhir == _other.description_fhir
		    && groupDefinition == _other.groupDefinition
		    && inputPopulationId == _other.inputPopulationId
		    && linkId == _other.linkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(aggregateMethod)
		hasher.combine(code)
		hasher.combine(criteria)
		hasher.combine(description_fhir)
		hasher.combine(groupDefinition)
		hasher.combine(inputPopulationId)
		hasher.combine(linkId)
	}
}

/**
 Stratifier criteria for the measure.
 
 The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a
 referenced library or a valid FHIR Resource Path.
 */
open class MeasureGroupStratifier: BackboneElement {
	
	/// Unique id for stratifier in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Meaning of the stratifier
	public var code: CodeableConcept?
	
	/// The human readable description of this stratifier
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// How the measure should be stratified
	public var criteria: Expression?
	
	/// A group resource that defines this population
	public var groupDefinition: Reference?
	
	/// Stratifier criteria component for the measure
	public var component: [MeasureGroupStratifierComponent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case groupDefinition
		case linkId; case _linkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.component = try [MeasureGroupStratifierComponent](from: _container, forKeyIfPresent: .component)
		self.criteria = try Expression(from: _container, forKeyIfPresent: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.groupDefinition = try Reference(from: _container, forKeyIfPresent: .groupDefinition)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try component?.encode(on: &_container, forKey: .component)
		try criteria?.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try groupDefinition?.encode(on: &_container, forKey: .groupDefinition)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureGroupStratifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && component == _other.component
		    && criteria == _other.criteria
		    && description_fhir == _other.description_fhir
		    && groupDefinition == _other.groupDefinition
		    && linkId == _other.linkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(component)
		hasher.combine(criteria)
		hasher.combine(description_fhir)
		hasher.combine(groupDefinition)
		hasher.combine(linkId)
	}
}

/**
 Stratifier criteria component for the measure.
 
 A component of the stratifier criteria for the measure report, specified as either the name of a valid CQL expression
 defined within a referenced library or a valid FHIR Resource Path.
 */
open class MeasureGroupStratifierComponent: BackboneElement {
	
	/// Unique id for stratifier component in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Meaning of the stratifier component
	public var code: CodeableConcept?
	
	/// The human readable description of this stratifier component
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Component of how the measure should be stratified
	public var criteria: Expression?
	
	/// A group resource that defines this population
	public var groupDefinition: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		criteria: Expression? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		groupDefinition: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
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
		case groupDefinition
		case linkId; case _linkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try Expression(from: _container, forKeyIfPresent: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.groupDefinition = try Reference(from: _container, forKeyIfPresent: .groupDefinition)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try criteria?.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try groupDefinition?.encode(on: &_container, forKey: .groupDefinition)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureGroupStratifierComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && criteria == _other.criteria
		    && description_fhir == _other.description_fhir
		    && groupDefinition == _other.groupDefinition
		    && linkId == _other.linkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(criteria)
		hasher.combine(description_fhir)
		hasher.combine(groupDefinition)
		hasher.combine(linkId)
	}
}

/**
 What other data should be reported with the measure.
 
 The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a
 referenced library, or a valid FHIR Resource Path.
 */
open class MeasureSupplementalData: BackboneElement {
	
	/// Unique id for supplementalData in measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Meaning of the supplemental data
	public var code: CodeableConcept?
	
	/// supplemental-data | risk-adjustment-factor
	public var usage: [CodeableConcept]?
	
	/// The human readable description of this supplemental data
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Expression describing additional data to be reported
	public var criteria: Expression
	
	/// Designated initializer taking all required properties
	public init(criteria: Expression) {
		self.criteria = criteria
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		criteria: Expression,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		usage: [CodeableConcept]? = nil
	) {
		self.init(criteria: criteria)
		self.code = code
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
		case linkId; case _linkId
		case usage
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try Expression(from: _container, forKey: .criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.usage = try [CodeableConcept](from: _container, forKeyIfPresent: .usage)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try criteria.encode(on: &_container, forKey: .criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try usage?.encode(on: &_container, forKey: .usage)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureSupplementalData else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && criteria == _other.criteria
		    && description_fhir == _other.description_fhir
		    && linkId == _other.linkId
		    && usage == _other.usage
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(criteria)
		hasher.combine(description_fhir)
		hasher.combine(linkId)
		hasher.combine(usage)
	}
}

/**
 Defined terms used in the measure documentation.
 
 Provides a description of an individual term used within the measure.
 */
open class MeasureTerm: BackboneElement {
	
	/// What term?
	public var code: CodeableConcept?
	
	/// Meaning of the term
	public var definition: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		definition: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.definition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureTerm else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && definition == _other.definition
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(definition)
	}
}
