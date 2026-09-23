//
//  Measure.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Measure)
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
	
	/// When the measure was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Summary of clinical guidelines
	public var clinicalRecommendationStatement: FHIRPrimitive<FHIRString>?
	
	/// opportunity | all-or-nothing | linear | weighted
	public var compositeScoring: CodeableConcept?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// A content contributor
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Defined terms used in the measure documentation
	public var definition: [FHIRPrimitive<FHIRString>]?
	
	/// Natural language description of the measure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Disclaimer for use of the measure or its referenced content
	public var disclaimer: FHIRPrimitive<FHIRString>?
	
	/// When the measure is expected to be used
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Population criteria group
	public var group: [MeasureGroup]?
	
	/// Additional guidance for implementers
	public var guidance: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the measure
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Improvement notation for the measure, e.g. higher score indicates better quality
	public var improvementNotation: FHIRPrimitive<FHIRString>?
	
	/// Intended jurisdiction for measure (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the measure was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Logic used by the measure
	public var library: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this measure (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this measure is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// How is rate aggregation performed for this measure
	public var rateAggregation: FHIRPrimitive<FHIRString>?
	
	/// Why does this measure exist
	public var rationale: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// How is risk adjustment applied for this measure
	public var riskAdjustment: FHIRPrimitive<FHIRString>?
	
	/// proportion | ratio | continuous-variable | cohort
	public var scoring: CodeableConcept?
	
	/// The measure set, e.g. Preventive Care and Screening
	public var set: FHIRPrimitive<FHIRString>?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// What other data should be reported with the measure
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this measure (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// process | outcome | structure | patient-reported-outcome | composite
	public var type: [CodeableConcept]?
	
	/// Logical URI to reference this measure (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Describes the clinical usage of the measure
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the measure
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		clinicalRecommendationStatement: FHIRPrimitive<FHIRString>? = nil,
		compositeScoring: CodeableConcept? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		contributor: [Contributor]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		definition: [FHIRPrimitive<FHIRString>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		disclaimer: FHIRPrimitive<FHIRString>? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		group: [MeasureGroup]? = nil,
		guidance: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		improvementNotation: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		library: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		rateAggregation: FHIRPrimitive<FHIRString>? = nil,
		rationale: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		riskAdjustment: FHIRPrimitive<FHIRString>? = nil,
		scoring: CodeableConcept? = nil,
		set: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		supplementalData: [MeasureSupplementalData]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		type: [CodeableConcept]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.clinicalRecommendationStatement = clinicalRecommendationStatement
		self.compositeScoring = compositeScoring
		self.contact = contact
		self.contained = contained
		self.contributor = contributor
		self.copyright = copyright
		self.date = date
		self.definition = definition
		self.description_fhir = description_fhir
		self.disclaimer = disclaimer
		self.effectivePeriod = effectivePeriod
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
		self.riskAdjustment = riskAdjustment
		self.scoring = scoring
		self.set = set
		self.status = status
		self.supplementalData = supplementalData
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
		case clinicalRecommendationStatement; case _clinicalRecommendationStatement
		case compositeScoring
		case contact
		case contained
		case contributor
		case copyright; case _copyright
		case date; case _date
		case definition; case _definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case disclaimer; case _disclaimer
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case group
		case guidance; case _guidance
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case improvementNotation; case _improvementNotation
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case library
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case rateAggregation; case _rateAggregation
		case rationale; case _rationale
		case relatedArtifact
		case riskAdjustment; case _riskAdjustment
		case scoring
		case set; case _set
		case status; case _status
		case supplementalData
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
		self.clinicalRecommendationStatement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .clinicalRecommendationStatement, auxiliaryKey: ._clinicalRecommendationStatement)
		self.compositeScoring = try CodeableConcept(from: _container, forKeyIfPresent: .compositeScoring)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contributor = try [Contributor](from: _container, forKeyIfPresent: .contributor)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.definition = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.disclaimer = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disclaimer, auxiliaryKey: ._disclaimer)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [MeasureGroup](from: _container, forKeyIfPresent: .group)
		self.guidance = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .guidance, auxiliaryKey: ._guidance)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.improvementNotation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .improvementNotation, auxiliaryKey: ._improvementNotation)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [Reference](from: _container, forKeyIfPresent: .library)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.rateAggregation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rateAggregation, auxiliaryKey: ._rateAggregation)
		self.rationale = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rationale, auxiliaryKey: ._rationale)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.riskAdjustment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .riskAdjustment, auxiliaryKey: ._riskAdjustment)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.set = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .set, auxiliaryKey: ._set)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.supplementalData = try [MeasureSupplementalData](from: _container, forKeyIfPresent: .supplementalData)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
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
		try clinicalRecommendationStatement?.encode(on: &_container, forKey: .clinicalRecommendationStatement, auxiliaryKey: ._clinicalRecommendationStatement)
		try compositeScoring?.encode(on: &_container, forKey: .compositeScoring)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try disclaimer?.encode(on: &_container, forKey: .disclaimer, auxiliaryKey: ._disclaimer)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try guidance?.encode(on: &_container, forKey: .guidance, auxiliaryKey: ._guidance)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation, auxiliaryKey: ._improvementNotation)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try rateAggregation?.encode(on: &_container, forKey: .rateAggregation, auxiliaryKey: ._rateAggregation)
		try rationale?.encode(on: &_container, forKey: .rationale, auxiliaryKey: ._rationale)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try riskAdjustment?.encode(on: &_container, forKey: .riskAdjustment, auxiliaryKey: ._riskAdjustment)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try set?.encode(on: &_container, forKey: .set, auxiliaryKey: ._set)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supplementalData?.encode(on: &_container, forKey: .supplementalData)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Population criteria group.
 
 A group of population criteria for the measure.
 */
public struct MeasureGroup: BackboneElement {
	
	/// Summary description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: Identifier
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Short name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Population criteria
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure
	public var stratifier: [MeasureGroupStratifier]?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		population: [MeasureGroupPopulation]? = nil,
		stratifier: [MeasureGroupStratifier]? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.population = population
		self.stratifier = stratifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case name; case _name
		case population
		case stratifier
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.population = try [MeasureGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.stratifier = try [MeasureGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try population?.encode(on: &_container, forKey: .population)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
	}
}

/**
 Population criteria.
 
 A population criteria for the measure.
 */
public struct MeasureGroupPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// The name of a valid referenced CQL expression (may be namespaced) that defines this population criteria
	public var criteria: FHIRPrimitive<FHIRString>
	
	/// The human readable description of this population criteria
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Short name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		criteria: FHIRPrimitive<FHIRString>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil
	) {
		self.code = code
		self.criteria = criteria
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case criteria; case _criteria
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case name; case _name
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criteria = try FHIRPrimitive<FHIRString>(from: _container, forKey: .criteria, auxiliaryKey: ._criteria)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try criteria.encode(on: &_container, forKey: .criteria, auxiliaryKey: ._criteria)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}

/**
 Stratifier criteria for the measure.
 
 The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a
 referenced library, or a valid FHIR Resource Path.
 */
public struct MeasureGroupStratifier: BackboneElement {
	
	/// How the measure should be stratified
	public var criteria: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The identifier for the stratifier used to coordinate the reported data back to this stratifier
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Path to the stratifier
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		criteria: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil
	) {
		self.criteria = criteria
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.path = path
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case criteria; case _criteria
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case path; case _path
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.criteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .criteria, auxiliaryKey: ._criteria)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try criteria?.encode(on: &_container, forKey: .criteria, auxiliaryKey: ._criteria)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
	}
}

/**
 What other data should be reported with the measure.
 
 The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a
 referenced library, or a valid FHIR Resource Path.
 */
public struct MeasureSupplementalData: BackboneElement {
	
	/// Expression describing additional data to be reported
	public var criteria: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier, unique within the measure
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Path to the supplemental data element
	public var path: FHIRPrimitive<FHIRString>?
	
	/// supplemental-data | risk-adjustment-factor
	public var usage: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		criteria: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		usage: [CodeableConcept]? = nil
	) {
		self.criteria = criteria
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.path = path
		self.usage = usage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case criteria; case _criteria
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case path; case _path
		case usage
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.criteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .criteria, auxiliaryKey: ._criteria)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.usage = try [CodeableConcept](from: _container, forKeyIfPresent: .usage)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try criteria?.encode(on: &_container, forKey: .criteria, auxiliaryKey: ._criteria)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try usage?.encode(on: &_container, forKey: .usage)
	}
}
