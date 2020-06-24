//
//  EffectEvidenceSynthesis.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/EffectEvidenceSynthesis)
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
 A quantified estimate of effect based on a body of evidence.
 
 The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a population
 where the effect estimate is derived from a combination of research studies.
 */
open class EffectEvidenceSynthesis: DomainResource {
	
	override open class var resourceType: ResourceType { return .effectEvidenceSynthesis }
	
	/// Canonical identifier for this effect evidence synthesis, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the effect evidence synthesis
	public var identifier: [Identifier]?
	
	/// Business version of the effect evidence synthesis
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this effect evidence synthesis (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this effect evidence synthesis (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this effect evidence synthesis. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the effect evidence synthesis
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for effect evidence synthesis (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the effect evidence synthesis was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the effect evidence synthesis was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the effect evidence synthesis is expected to be used
	public var effectivePeriod: Period?
	
	/// The category of the EffectEvidenceSynthesis, such as Education, Treatment, Assessment, etc.
	public var topic: [CodeableConcept]?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Type of synthesis
	public var synthesisType: CodeableConcept?
	
	/// Type of study
	public var studyType: CodeableConcept?
	
	/// What population?
	public var population: Reference
	
	/// What exposure?
	public var exposure: Reference
	
	/// What comparison exposure?
	public var exposureAlternative: Reference
	
	/// What outcome?
	public var outcome: Reference
	
	/// What sample size was involved?
	public var sampleSize: EffectEvidenceSynthesisSampleSize?
	
	/// What was the result per exposure?
	public var resultsByExposure: [EffectEvidenceSynthesisResultsByExposure]?
	
	/// What was the estimated effect
	public var effectEstimate: [EffectEvidenceSynthesisEffectEstimate]?
	
	/// How certain is the effect
	public var certainty: [EffectEvidenceSynthesisCertainty]?
	
	/// Designated initializer taking all required properties
	public init(exposure: Reference, exposureAlternative: Reference, outcome: Reference, population: Reference, status: FHIRPrimitive<PublicationStatus>) {
		self.exposure = exposure
		self.exposureAlternative = exposureAlternative
		self.outcome = outcome
		self.population = population
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							author: [ContactDetail]? = nil,
							certainty: [EffectEvidenceSynthesisCertainty]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							editor: [ContactDetail]? = nil,
							effectEstimate: [EffectEvidenceSynthesisEffectEstimate]? = nil,
							effectivePeriod: Period? = nil,
							endorser: [ContactDetail]? = nil,
							exposure: Reference,
							exposureAlternative: Reference,
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
							resultsByExposure: [EffectEvidenceSynthesisResultsByExposure]? = nil,
							reviewer: [ContactDetail]? = nil,
							sampleSize: EffectEvidenceSynthesisSampleSize? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							studyType: CodeableConcept? = nil,
							synthesisType: CodeableConcept? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							topic: [CodeableConcept]? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(exposure: exposure, exposureAlternative: exposureAlternative, outcome: outcome, population: population, status: status)
		self.approvalDate = approvalDate
		self.author = author
		self.certainty = certainty
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectEstimate = effectEstimate
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
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
		self.relatedArtifact = relatedArtifact
		self.resultsByExposure = resultsByExposure
		self.reviewer = reviewer
		self.sampleSize = sampleSize
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
		case approvalDate; case _approvalDate
		case author
		case certainty
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectEstimate
		case effectivePeriod
		case endorser
		case exposure
		case exposureAlternative
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case note
		case outcome
		case population
		case publisher; case _publisher
		case relatedArtifact
		case resultsByExposure
		case reviewer
		case sampleSize
		case status; case _status
		case studyType
		case synthesisType
		case title; case _title
		case topic
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.certainty = try [EffectEvidenceSynthesisCertainty](from: _container, forKeyIfPresent: .certainty)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectEstimate = try [EffectEvidenceSynthesisEffectEstimate](from: _container, forKeyIfPresent: .effectEstimate)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.exposure = try Reference(from: _container, forKey: .exposure)
		self.exposureAlternative = try Reference(from: _container, forKey: .exposureAlternative)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcome = try Reference(from: _container, forKey: .outcome)
		self.population = try Reference(from: _container, forKey: .population)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.resultsByExposure = try [EffectEvidenceSynthesisResultsByExposure](from: _container, forKeyIfPresent: .resultsByExposure)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.sampleSize = try EffectEvidenceSynthesisSampleSize(from: _container, forKeyIfPresent: .sampleSize)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyType = try CodeableConcept(from: _container, forKeyIfPresent: .studyType)
		self.synthesisType = try CodeableConcept(from: _container, forKeyIfPresent: .synthesisType)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try certainty?.encode(on: &_container, forKey: .certainty)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectEstimate?.encode(on: &_container, forKey: .effectEstimate)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try exposure.encode(on: &_container, forKey: .exposure)
		try exposureAlternative.encode(on: &_container, forKey: .exposureAlternative)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try outcome.encode(on: &_container, forKey: .outcome)
		try population.encode(on: &_container, forKey: .population)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try resultsByExposure?.encode(on: &_container, forKey: .resultsByExposure)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try sampleSize?.encode(on: &_container, forKey: .sampleSize)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyType?.encode(on: &_container, forKey: .studyType)
		try synthesisType?.encode(on: &_container, forKey: .synthesisType)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && author == _other.author
		    && certainty == _other.certainty
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectEstimate == _other.effectEstimate
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && exposure == _other.exposure
		    && exposureAlternative == _other.exposureAlternative
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && note == _other.note
		    && outcome == _other.outcome
		    && population == _other.population
		    && publisher == _other.publisher
		    && relatedArtifact == _other.relatedArtifact
		    && resultsByExposure == _other.resultsByExposure
		    && reviewer == _other.reviewer
		    && sampleSize == _other.sampleSize
		    && status == _other.status
		    && studyType == _other.studyType
		    && synthesisType == _other.synthesisType
		    && title == _other.title
		    && topic == _other.topic
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(certainty)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectEstimate)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(exposure)
		hasher.combine(exposureAlternative)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(outcome)
		hasher.combine(population)
		hasher.combine(publisher)
		hasher.combine(relatedArtifact)
		hasher.combine(resultsByExposure)
		hasher.combine(reviewer)
		hasher.combine(sampleSize)
		hasher.combine(status)
		hasher.combine(studyType)
		hasher.combine(synthesisType)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 How certain is the effect.
 
 A description of the certainty of the effect estimate.
 */
open class EffectEvidenceSynthesisCertainty: BackboneElement {
	
	/// Certainty rating
	public var rating: [CodeableConcept]?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// A component that contributes to the overall certainty
	public var certaintySubcomponent: [EffectEvidenceSynthesisCertaintyCertaintySubcomponent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							certaintySubcomponent: [EffectEvidenceSynthesisCertaintyCertaintySubcomponent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							rating: [CodeableConcept]? = nil)
	{
		self.init()
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
		case note
		case rating
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.certaintySubcomponent = try [EffectEvidenceSynthesisCertaintyCertaintySubcomponent](from: _container, forKeyIfPresent: .certaintySubcomponent)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rating = try [CodeableConcept](from: _container, forKeyIfPresent: .rating)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try certaintySubcomponent?.encode(on: &_container, forKey: .certaintySubcomponent)
		try note?.encode(on: &_container, forKey: .note)
		try rating?.encode(on: &_container, forKey: .rating)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesisCertainty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return certaintySubcomponent == _other.certaintySubcomponent
		    && note == _other.note
		    && rating == _other.rating
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(certaintySubcomponent)
		hasher.combine(note)
		hasher.combine(rating)
	}
}

/**
 A component that contributes to the overall certainty.
 
 A description of a component of the overall certainty.
 */
open class EffectEvidenceSynthesisCertaintyCertaintySubcomponent: BackboneElement {
	
	/// Type of subcomponent of certainty rating
	public var type: CodeableConcept?
	
	/// Subcomponent certainty rating
	public var rating: [CodeableConcept]?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							rating: [CodeableConcept]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.rating = rating
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case note
		case rating
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rating = try [CodeableConcept](from: _container, forKeyIfPresent: .rating)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try note?.encode(on: &_container, forKey: .note)
		try rating?.encode(on: &_container, forKey: .rating)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesisCertaintyCertaintySubcomponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return note == _other.note
		    && rating == _other.rating
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(note)
		hasher.combine(rating)
		hasher.combine(type)
	}
}

/**
 What was the estimated effect.
 
 The estimated effect of the exposure variant.
 */
open class EffectEvidenceSynthesisEffectEstimate: BackboneElement {
	
	/// Description of effect estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Type of efffect estimate
	public var type: CodeableConcept?
	
	/// Variant exposure states
	public var variantState: CodeableConcept?
	
	/// Point estimate
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// What unit is the outcome described in?
	public var unitOfMeasure: CodeableConcept?
	
	/// How precise the estimate is
	public var precisionEstimate: [EffectEvidenceSynthesisEffectEstimatePrecisionEstimate]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							precisionEstimate: [EffectEvidenceSynthesisEffectEstimatePrecisionEstimate]? = nil,
							type: CodeableConcept? = nil,
							unitOfMeasure: CodeableConcept? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil,
							variantState: CodeableConcept? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.precisionEstimate = precisionEstimate
		self.type = type
		self.unitOfMeasure = unitOfMeasure
		self.value = value
		self.variantState = variantState
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case precisionEstimate
		case type
		case unitOfMeasure
		case value; case _value
		case variantState
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.precisionEstimate = try [EffectEvidenceSynthesisEffectEstimatePrecisionEstimate](from: _container, forKeyIfPresent: .precisionEstimate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.unitOfMeasure = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfMeasure)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		self.variantState = try CodeableConcept(from: _container, forKeyIfPresent: .variantState)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try precisionEstimate?.encode(on: &_container, forKey: .precisionEstimate)
		try type?.encode(on: &_container, forKey: .type)
		try unitOfMeasure?.encode(on: &_container, forKey: .unitOfMeasure)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try variantState?.encode(on: &_container, forKey: .variantState)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesisEffectEstimate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && precisionEstimate == _other.precisionEstimate
		    && type == _other.type
		    && unitOfMeasure == _other.unitOfMeasure
		    && value == _other.value
		    && variantState == _other.variantState
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(precisionEstimate)
		hasher.combine(type)
		hasher.combine(unitOfMeasure)
		hasher.combine(value)
		hasher.combine(variantState)
	}
}

/**
 How precise the estimate is.
 
 A description of the precision of the estimate for the effect.
 */
open class EffectEvidenceSynthesisEffectEstimatePrecisionEstimate: BackboneElement {
	
	/// Type of precision estimate
	public var type: CodeableConcept?
	
	/// Level of confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower bound
	public var from: FHIRPrimitive<FHIRDecimal>?
	
	/// Upper bound
	public var to: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							from: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							level: FHIRPrimitive<FHIRDecimal>? = nil,
							modifierExtension: [Extension]? = nil,
							to: FHIRPrimitive<FHIRDecimal>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case from; case _from
		case level; case _level
		case to; case _to
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.from = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .from, auxiliaryKey: ._from)
		self.level = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .level, auxiliaryKey: ._level)
		self.to = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .to, auxiliaryKey: ._to)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try from?.encode(on: &_container, forKey: .from, auxiliaryKey: ._from)
		try level?.encode(on: &_container, forKey: .level, auxiliaryKey: ._level)
		try to?.encode(on: &_container, forKey: .to, auxiliaryKey: ._to)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesisEffectEstimatePrecisionEstimate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return from == _other.from
		    && level == _other.level
		    && to == _other.to
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(from)
		hasher.combine(level)
		hasher.combine(to)
		hasher.combine(type)
	}
}

/**
 What was the result per exposure?.
 
 A description of the results for each exposure considered in the effect estimate.
 */
open class EffectEvidenceSynthesisResultsByExposure: BackboneElement {
	
	/// Description of results by exposure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Whether these results are for the exposure state or alternative exposure state.
	public var exposureState: FHIRPrimitive<ExposureState>?
	
	/// Variant exposure states
	public var variantState: CodeableConcept?
	
	/// Risk evidence synthesis
	public var riskEvidenceSynthesis: Reference
	
	/// Designated initializer taking all required properties
	public init(riskEvidenceSynthesis: Reference) {
		self.riskEvidenceSynthesis = riskEvidenceSynthesis
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							exposureState: FHIRPrimitive<ExposureState>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							riskEvidenceSynthesis: Reference,
							variantState: CodeableConcept? = nil)
	{
		self.init(riskEvidenceSynthesis: riskEvidenceSynthesis)
		self.description_fhir = description_fhir
		self.exposureState = exposureState
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.variantState = variantState
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case exposureState; case _exposureState
		case riskEvidenceSynthesis
		case variantState
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exposureState = try FHIRPrimitive<ExposureState>(from: _container, forKeyIfPresent: .exposureState, auxiliaryKey: ._exposureState)
		self.riskEvidenceSynthesis = try Reference(from: _container, forKey: .riskEvidenceSynthesis)
		self.variantState = try CodeableConcept(from: _container, forKeyIfPresent: .variantState)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try exposureState?.encode(on: &_container, forKey: .exposureState, auxiliaryKey: ._exposureState)
		try riskEvidenceSynthesis.encode(on: &_container, forKey: .riskEvidenceSynthesis)
		try variantState?.encode(on: &_container, forKey: .variantState)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesisResultsByExposure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && exposureState == _other.exposureState
		    && riskEvidenceSynthesis == _other.riskEvidenceSynthesis
		    && variantState == _other.variantState
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(exposureState)
		hasher.combine(riskEvidenceSynthesis)
		hasher.combine(variantState)
	}
}

/**
 What sample size was involved?.
 
 A description of the size of the sample involved in the synthesis.
 */
open class EffectEvidenceSynthesisSampleSize: BackboneElement {
	
	/// Description of sample size
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// How many studies?
	public var numberOfStudies: FHIRPrimitive<FHIRInteger>?
	
	/// How many participants?
	public var numberOfParticipants: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							numberOfParticipants: FHIRPrimitive<FHIRInteger>? = nil,
							numberOfStudies: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
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
		case numberOfParticipants; case _numberOfParticipants
		case numberOfStudies; case _numberOfStudies
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.numberOfParticipants = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		self.numberOfStudies = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try numberOfParticipants?.encode(on: &_container, forKey: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		try numberOfStudies?.encode(on: &_container, forKey: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EffectEvidenceSynthesisSampleSize else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && numberOfParticipants == _other.numberOfParticipants
		    && numberOfStudies == _other.numberOfStudies
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(numberOfParticipants)
		hasher.combine(numberOfStudies)
	}
}
