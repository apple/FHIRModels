//
//  RiskEvidenceSynthesis.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis)
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
 A quantified estimate of risk based on a body of evidence.
 
 The RiskEvidenceSynthesis resource describes the likelihood of an outcome in a population plus exposure state where the
 risk estimate is derived from a combination of research studies.
 */
public struct RiskEvidenceSynthesis: DomainResource {
	
	public static let resourceType: ResourceType = .riskEvidenceSynthesis
	
	/// When the risk evidence synthesis was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// How certain is the risk
	public var certainty: [RiskEvidenceSynthesisCertainty]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the risk evidence synthesis
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the risk evidence synthesis is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// What exposure?
	public var exposure: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the risk evidence synthesis
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for risk evidence synthesis (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the risk evidence synthesis was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this risk evidence synthesis (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// What outcome?
	public var outcome: Reference
	
	/// What population?
	public var population: Reference
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// What was the estimated risk
	public var riskEstimate: RiskEvidenceSynthesisRiskEstimate?
	
	/// What sample size was involved?
	public var sampleSize: RiskEvidenceSynthesisSampleSize?
	
	/// The status of this risk evidence synthesis. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Type of study
	public var studyType: CodeableConcept?
	
	/// Type of synthesis
	public var synthesisType: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this risk evidence synthesis (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The category of the EffectEvidenceSynthesis, such as Education, Treatment, Assessment, etc.
	public var topic: [CodeableConcept]?
	
	/// Canonical identifier for this risk evidence synthesis, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the risk evidence synthesis
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		certainty: [RiskEvidenceSynthesisCertainty]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		exposure: Reference? = nil,
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
		outcome: Reference,
		population: Reference,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		riskEstimate: RiskEvidenceSynthesisRiskEstimate? = nil,
		sampleSize: RiskEvidenceSynthesisSampleSize? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		studyType: CodeableConcept? = nil,
		synthesisType: CodeableConcept? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.certainty = certainty
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.exposure = exposure
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
		self.outcome = outcome
		self.population = population
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.riskEstimate = riskEstimate
		self.sampleSize = sampleSize
		self.status = status
		self.studyType = studyType
		self.synthesisType = synthesisType
		self.text = text
		self.title = title
		self.topic = topic
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case author
		case certainty
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case exposure
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
		case outcome
		case population
		case publisher; case _publisher
		case relatedArtifact
		case reviewer
		case riskEstimate
		case sampleSize
		case status; case _status
		case studyType
		case synthesisType
		case text
		case title; case _title
		case topic
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
		self.certainty = try [RiskEvidenceSynthesisCertainty](from: _container, forKeyIfPresent: .certainty)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.exposure = try Reference(from: _container, forKeyIfPresent: .exposure)
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
		self.outcome = try Reference(from: _container, forKey: .outcome)
		self.population = try Reference(from: _container, forKey: .population)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.riskEstimate = try RiskEvidenceSynthesisRiskEstimate(from: _container, forKeyIfPresent: .riskEstimate)
		self.sampleSize = try RiskEvidenceSynthesisSampleSize(from: _container, forKeyIfPresent: .sampleSize)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyType = try CodeableConcept(from: _container, forKeyIfPresent: .studyType)
		self.synthesisType = try CodeableConcept(from: _container, forKeyIfPresent: .synthesisType)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
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
		try certainty?.encode(on: &_container, forKey: .certainty)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try exposure?.encode(on: &_container, forKey: .exposure)
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
		try outcome.encode(on: &_container, forKey: .outcome)
		try population.encode(on: &_container, forKey: .population)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try riskEstimate?.encode(on: &_container, forKey: .riskEstimate)
		try sampleSize?.encode(on: &_container, forKey: .sampleSize)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyType?.encode(on: &_container, forKey: .studyType)
		try synthesisType?.encode(on: &_container, forKey: .synthesisType)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 How certain is the risk.
 
 A description of the certainty of the risk estimate.
 */
public struct RiskEvidenceSynthesisCertainty: BackboneElement {
	
	/// A component that contributes to the overall certainty
	public var certaintySubcomponent: [RiskEvidenceSynthesisCertaintyCertaintySubcomponent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Certainty rating
	public var rating: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		certaintySubcomponent: [RiskEvidenceSynthesisCertaintyCertaintySubcomponent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		rating: [CodeableConcept]? = nil
	) {
		self.certaintySubcomponent = certaintySubcomponent
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.rating = rating
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case certaintySubcomponent
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case rating
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.certaintySubcomponent = try [RiskEvidenceSynthesisCertaintyCertaintySubcomponent](from: _container, forKeyIfPresent: .certaintySubcomponent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rating = try [CodeableConcept](from: _container, forKeyIfPresent: .rating)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try certaintySubcomponent?.encode(on: &_container, forKey: .certaintySubcomponent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try rating?.encode(on: &_container, forKey: .rating)
	}
}

/**
 A component that contributes to the overall certainty.
 
 A description of a component of the overall certainty.
 */
public struct RiskEvidenceSynthesisCertaintyCertaintySubcomponent: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Subcomponent certainty rating
	public var rating: [CodeableConcept]?
	
	/// Type of subcomponent of certainty rating
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		rating: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.rating = rating
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case rating
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
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rating = try [CodeableConcept](from: _container, forKeyIfPresent: .rating)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try rating?.encode(on: &_container, forKey: .rating)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 What was the estimated risk.
 
 The estimated risk of the outcome.
 */
public struct RiskEvidenceSynthesisRiskEstimate: BackboneElement {
	
	/// Sample size for group measured
	public var denominatorCount: FHIRPrimitive<FHIRInteger>?
	
	/// Description of risk estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Number with the outcome
	public var numeratorCount: FHIRPrimitive<FHIRInteger>?
	
	/// How precise the estimate is
	public var precisionEstimate: [RiskEvidenceSynthesisRiskEstimatePrecisionEstimate]?
	
	/// Type of risk estimate
	public var type: CodeableConcept?
	
	/// What unit is the outcome described in?
	public var unitOfMeasure: CodeableConcept?
	
	/// Point estimate
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		denominatorCount: FHIRPrimitive<FHIRInteger>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		numeratorCount: FHIRPrimitive<FHIRInteger>? = nil,
		precisionEstimate: [RiskEvidenceSynthesisRiskEstimatePrecisionEstimate]? = nil,
		type: CodeableConcept? = nil,
		unitOfMeasure: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.denominatorCount = denominatorCount
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.numeratorCount = numeratorCount
		self.precisionEstimate = precisionEstimate
		self.type = type
		self.unitOfMeasure = unitOfMeasure
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case denominatorCount; case _denominatorCount
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case numeratorCount; case _numeratorCount
		case precisionEstimate
		case type
		case unitOfMeasure
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.denominatorCount = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .denominatorCount, auxiliaryKey: ._denominatorCount)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numeratorCount = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numeratorCount, auxiliaryKey: ._numeratorCount)
		self.precisionEstimate = try [RiskEvidenceSynthesisRiskEstimatePrecisionEstimate](from: _container, forKeyIfPresent: .precisionEstimate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.unitOfMeasure = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfMeasure)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try denominatorCount?.encode(on: &_container, forKey: .denominatorCount, auxiliaryKey: ._denominatorCount)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numeratorCount?.encode(on: &_container, forKey: .numeratorCount, auxiliaryKey: ._numeratorCount)
		try precisionEstimate?.encode(on: &_container, forKey: .precisionEstimate)
		try type?.encode(on: &_container, forKey: .type)
		try unitOfMeasure?.encode(on: &_container, forKey: .unitOfMeasure)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 How precise the estimate is.
 
 A description of the precision of the estimate for the effect.
 */
public struct RiskEvidenceSynthesisRiskEstimatePrecisionEstimate: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Lower bound
	public var from: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Level of confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Upper bound
	public var to: FHIRPrimitive<FHIRDecimal>?
	
	/// Type of precision estimate
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		from: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		level: FHIRPrimitive<FHIRDecimal>? = nil,
		modifierExtension: [Extension]? = nil,
		to: FHIRPrimitive<FHIRDecimal>? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.from = from
		self.id = id
		self.level = level
		self.modifierExtension = modifierExtension
		self.to = to
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case from; case _from
		case id; case _id
		case level; case _level
		case modifierExtension
		case to; case _to
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.from = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .from, auxiliaryKey: ._from)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.level = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .level, auxiliaryKey: ._level)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.to = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .to, auxiliaryKey: ._to)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try from?.encode(on: &_container, forKey: .from, auxiliaryKey: ._from)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try level?.encode(on: &_container, forKey: .level, auxiliaryKey: ._level)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try to?.encode(on: &_container, forKey: .to, auxiliaryKey: ._to)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 What sample size was involved?.
 
 A description of the size of the sample involved in the synthesis.
 */
public struct RiskEvidenceSynthesisSampleSize: BackboneElement {
	
	/// Description of sample size
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// How many participants?
	public var numberOfParticipants: FHIRPrimitive<FHIRInteger>?
	
	/// How many studies?
	public var numberOfStudies: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfParticipants: FHIRPrimitive<FHIRInteger>? = nil,
		numberOfStudies: FHIRPrimitive<FHIRInteger>? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.numberOfParticipants = numberOfParticipants
		self.numberOfStudies = numberOfStudies
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case numberOfParticipants; case _numberOfParticipants
		case numberOfStudies; case _numberOfStudies
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfParticipants = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		self.numberOfStudies = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfParticipants?.encode(on: &_container, forKey: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		try numberOfStudies?.encode(on: &_container, forKey: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
	}
}
