//
//  Evidence.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Evidence)
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
 Single evidence bit.
 
 The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence
 variables (eg population, exposures/interventions, comparators, outcomes, measured variables, confounding variables),
 the statistics, and the certainty of this evidence.
 */
open class Evidence: DomainResource {
	
	override open class var resourceType: ResourceType { return .evidence }
	
	/// All possible types for "citeAs[x]"
	public enum CiteAsX: Hashable {
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// Canonical identifier for this evidence, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the summary
	public var identifier: [Identifier]?
	
	/// Business version of this summary
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this summary (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Citation for this evidence
	/// One of `citeAs[x]`
	public var citeAs: CiteAsX?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// When the summary was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the summary was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Link or citation to artifact associated with the summary
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Description of the particular summary
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Declarative description of the Evidence
	public var assertion: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Evidence variable such as population, exposure, or outcome
	public var variableDefinition: [EvidenceVariableDefinition]
	
	/// The method to combine studies
	public var synthesisType: CodeableConcept?
	
	/// The type of study that produced this evidence
	public var studyType: CodeableConcept?
	
	/// Values and parameters for a single statistic
	public var statistic: [EvidenceStatistic]?
	
	/// Certainty or quality of the evidence
	public var certainty: [EvidenceCertainty]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, variableDefinition: [EvidenceVariableDefinition]) {
		self.status = status
		self.variableDefinition = variableDefinition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		assertion: FHIRPrimitive<FHIRString>? = nil,
		author: [ContactDetail]? = nil,
		certainty: [EvidenceCertainty]? = nil,
		citeAs: CiteAsX? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		endorser: [ContactDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		statistic: [EvidenceStatistic]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		studyType: CodeableConcept? = nil,
		synthesisType: CodeableConcept? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		variableDefinition: [EvidenceVariableDefinition],
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(status: status, variableDefinition: variableDefinition)
		self.approvalDate = approvalDate
		self.assertion = assertion
		self.author = author
		self.certainty = certainty
		self.citeAs = citeAs
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.endorser = endorser
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.statistic = statistic
		self.studyType = studyType
		self.synthesisType = synthesisType
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case assertion; case _assertion
		case author
		case certainty
		case citeAsMarkdown; case _citeAsMarkdown
		case citeAsReference
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case endorser
		case identifier
		case lastReviewDate; case _lastReviewDate
		case note
		case publisher; case _publisher
		case relatedArtifact
		case reviewer
		case statistic
		case status; case _status
		case studyType
		case synthesisType
		case title; case _title
		case url; case _url
		case useContext
		case variableDefinition
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.assertion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .assertion, auxiliaryKey: ._assertion)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.certainty = try [EvidenceCertainty](from: _container, forKeyIfPresent: .certainty)
		var _t_citeAs: CiteAsX? = nil
		if let citeAsReference = try Reference(from: _container, forKeyIfPresent: .citeAsReference) {
			if _t_citeAs != nil {
				throw DecodingError.dataCorruptedError(forKey: .citeAsReference, in: _container, debugDescription: "More than one value provided for \"citeAs\"")
			}
			_t_citeAs = .reference(citeAsReference)
		}
		if let citeAsMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown) {
			if _t_citeAs != nil {
				throw DecodingError.dataCorruptedError(forKey: .citeAsMarkdown, in: _container, debugDescription: "More than one value provided for \"citeAs\"")
			}
			_t_citeAs = .markdown(citeAsMarkdown)
		}
		self.citeAs = _t_citeAs
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.statistic = try [EvidenceStatistic](from: _container, forKeyIfPresent: .statistic)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyType = try CodeableConcept(from: _container, forKeyIfPresent: .studyType)
		self.synthesisType = try CodeableConcept(from: _container, forKeyIfPresent: .synthesisType)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variableDefinition = try [EvidenceVariableDefinition](from: _container, forKey: .variableDefinition)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try assertion?.encode(on: &_container, forKey: .assertion, auxiliaryKey: ._assertion)
		try author?.encode(on: &_container, forKey: .author)
		try certainty?.encode(on: &_container, forKey: .certainty)
		if let _enum = citeAs {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .citeAsReference)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown)
			}
		}
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try statistic?.encode(on: &_container, forKey: .statistic)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyType?.encode(on: &_container, forKey: .studyType)
		try synthesisType?.encode(on: &_container, forKey: .synthesisType)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variableDefinition.encode(on: &_container, forKey: .variableDefinition)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Evidence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && assertion == _other.assertion
		    && author == _other.author
		    && certainty == _other.certainty
		    && citeAs == _other.citeAs
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && endorser == _other.endorser
		    && identifier == _other.identifier
		    && lastReviewDate == _other.lastReviewDate
		    && note == _other.note
		    && publisher == _other.publisher
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && statistic == _other.statistic
		    && status == _other.status
		    && studyType == _other.studyType
		    && synthesisType == _other.synthesisType
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && variableDefinition == _other.variableDefinition
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(assertion)
		hasher.combine(author)
		hasher.combine(certainty)
		hasher.combine(citeAs)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(endorser)
		hasher.combine(identifier)
		hasher.combine(lastReviewDate)
		hasher.combine(note)
		hasher.combine(publisher)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(statistic)
		hasher.combine(status)
		hasher.combine(studyType)
		hasher.combine(synthesisType)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(variableDefinition)
		hasher.combine(version)
	}
}

/**
 Certainty or quality of the evidence.
 
 Assessment of certainty, confidence in the estimates, or quality of the evidence.
 */
open class EvidenceCertainty: BackboneElement {
	
	/// Textual description of certainty
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Aspect of certainty being rated
	public var type: CodeableConcept?
	
	/// Assessment or judgement of the aspect
	public var rating: CodeableConcept?
	
	/// Individual or group who did the rating
	public var rater: FHIRPrimitive<FHIRString>?
	
	/// A domain or subdomain of certainty
	public var subcomponent: [EvidenceCertainty]?
	
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
		note: [Annotation]? = nil,
		rater: FHIRPrimitive<FHIRString>? = nil,
		rating: CodeableConcept? = nil,
		subcomponent: [EvidenceCertainty]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.rater = rater
		self.rating = rating
		self.subcomponent = subcomponent
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case note
		case rater; case _rater
		case rating
		case subcomponent
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rater = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rater, auxiliaryKey: ._rater)
		self.rating = try CodeableConcept(from: _container, forKeyIfPresent: .rating)
		self.subcomponent = try [EvidenceCertainty](from: _container, forKeyIfPresent: .subcomponent)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try note?.encode(on: &_container, forKey: .note)
		try rater?.encode(on: &_container, forKey: .rater, auxiliaryKey: ._rater)
		try rating?.encode(on: &_container, forKey: .rating)
		try subcomponent?.encode(on: &_container, forKey: .subcomponent)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceCertainty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && note == _other.note
		    && rater == _other.rater
		    && rating == _other.rating
		    && subcomponent == _other.subcomponent
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(note)
		hasher.combine(rater)
		hasher.combine(rating)
		hasher.combine(subcomponent)
		hasher.combine(type)
	}
}

/**
 Values and parameters for a single statistic.
 */
open class EvidenceStatistic: BackboneElement {
	
	/// Description of content
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Type of statistic, eg relative risk
	public var statisticType: CodeableConcept?
	
	/// Associated category for categorical variable
	public var category: CodeableConcept?
	
	/// Statistic value
	public var quantity: Quantity?
	
	/// The number of events associated with the statistic
	public var numberOfEvents: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The number of participants affected
	public var numberAffected: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of samples in the statistic
	public var sampleSize: EvidenceStatisticSampleSize?
	
	/// An attribute of the Statistic
	public var attributeEstimate: [EvidenceStatisticAttributeEstimate]?
	
	/// An aspect of the statistical model
	public var modelCharacteristic: [EvidenceStatisticModelCharacteristic]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attributeEstimate: [EvidenceStatisticAttributeEstimate]? = nil,
		category: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modelCharacteristic: [EvidenceStatisticModelCharacteristic]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		numberAffected: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfEvents: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		quantity: Quantity? = nil,
		sampleSize: EvidenceStatisticSampleSize? = nil,
		statisticType: CodeableConcept? = nil
	) {
		self.init()
		self.attributeEstimate = attributeEstimate
		self.category = category
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modelCharacteristic = modelCharacteristic
		self.modifierExtension = modifierExtension
		self.note = note
		self.numberAffected = numberAffected
		self.numberOfEvents = numberOfEvents
		self.quantity = quantity
		self.sampleSize = sampleSize
		self.statisticType = statisticType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attributeEstimate
		case category
		case description_fhir = "description"; case _description_fhir = "_description"
		case modelCharacteristic
		case note
		case numberAffected; case _numberAffected
		case numberOfEvents; case _numberOfEvents
		case quantity
		case sampleSize
		case statisticType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attributeEstimate = try [EvidenceStatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.modelCharacteristic = try [EvidenceStatisticModelCharacteristic](from: _container, forKeyIfPresent: .modelCharacteristic)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberAffected = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberAffected, auxiliaryKey: ._numberAffected)
		self.numberOfEvents = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfEvents, auxiliaryKey: ._numberOfEvents)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sampleSize = try EvidenceStatisticSampleSize(from: _container, forKeyIfPresent: .sampleSize)
		self.statisticType = try CodeableConcept(from: _container, forKeyIfPresent: .statisticType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try modelCharacteristic?.encode(on: &_container, forKey: .modelCharacteristic)
		try note?.encode(on: &_container, forKey: .note)
		try numberAffected?.encode(on: &_container, forKey: .numberAffected, auxiliaryKey: ._numberAffected)
		try numberOfEvents?.encode(on: &_container, forKey: .numberOfEvents, auxiliaryKey: ._numberOfEvents)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sampleSize?.encode(on: &_container, forKey: .sampleSize)
		try statisticType?.encode(on: &_container, forKey: .statisticType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceStatistic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attributeEstimate == _other.attributeEstimate
		    && category == _other.category
		    && description_fhir == _other.description_fhir
		    && modelCharacteristic == _other.modelCharacteristic
		    && note == _other.note
		    && numberAffected == _other.numberAffected
		    && numberOfEvents == _other.numberOfEvents
		    && quantity == _other.quantity
		    && sampleSize == _other.sampleSize
		    && statisticType == _other.statisticType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attributeEstimate)
		hasher.combine(category)
		hasher.combine(description_fhir)
		hasher.combine(modelCharacteristic)
		hasher.combine(note)
		hasher.combine(numberAffected)
		hasher.combine(numberOfEvents)
		hasher.combine(quantity)
		hasher.combine(sampleSize)
		hasher.combine(statisticType)
	}
}

/**
 An attribute of the Statistic.
 
 A statistical attribute of the statistic such as a measure of heterogeneity.
 */
open class EvidenceStatisticAttributeEstimate: BackboneElement {
	
	/// Textual description of the attribute estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the estimate
	public var note: [Annotation]?
	
	/// The type of attribute estimate, eg confidence interval or p value
	public var type: CodeableConcept?
	
	/// The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used
	/// to report unit of measure
	public var quantity: Quantity?
	
	/// Level of confidence interval, eg 0.95 for 95% confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower and upper bound values of the attribute estimate
	public var range: Range?
	
	/// A nested attribute estimate; which is the attribute estimate of an attribute estimate
	public var attributeEstimate: [EvidenceStatisticAttributeEstimate]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attributeEstimate: [EvidenceStatisticAttributeEstimate]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		level: FHIRPrimitive<FHIRDecimal>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		quantity: Quantity? = nil,
		range: Range? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.attributeEstimate = attributeEstimate
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.level = level
		self.modifierExtension = modifierExtension
		self.note = note
		self.quantity = quantity
		self.range = range
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attributeEstimate
		case description_fhir = "description"; case _description_fhir = "_description"
		case level; case _level
		case note
		case quantity
		case range
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attributeEstimate = try [EvidenceStatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.level = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .level, auxiliaryKey: ._level)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try level?.encode(on: &_container, forKey: .level, auxiliaryKey: ._level)
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceStatisticAttributeEstimate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attributeEstimate == _other.attributeEstimate
		    && description_fhir == _other.description_fhir
		    && level == _other.level
		    && note == _other.note
		    && quantity == _other.quantity
		    && range == _other.range
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attributeEstimate)
		hasher.combine(description_fhir)
		hasher.combine(level)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(range)
		hasher.combine(type)
	}
}

/**
 An aspect of the statistical model.
 
 A component of the method to generate the statistic.
 */
open class EvidenceStatisticModelCharacteristic: BackboneElement {
	
	/// Model specification
	public var code: CodeableConcept
	
	/// Numerical value to complete model specification
	public var value: Quantity?
	
	/// A variable adjusted for in the adjusted analysis
	public var variable: [EvidenceStatisticModelCharacteristicVariable]?
	
	/// An attribute of the statistic used as a model characteristic
	public var attributeEstimate: [EvidenceStatisticAttributeEstimate]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attributeEstimate: [EvidenceStatisticAttributeEstimate]? = nil,
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: Quantity? = nil,
		variable: [EvidenceStatisticModelCharacteristicVariable]? = nil
	) {
		self.init(code: code)
		self.attributeEstimate = attributeEstimate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
		self.variable = variable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attributeEstimate
		case code
		case value
		case variable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attributeEstimate = try [EvidenceStatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
		self.variable = try [EvidenceStatisticModelCharacteristicVariable](from: _container, forKeyIfPresent: .variable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try code.encode(on: &_container, forKey: .code)
		try value?.encode(on: &_container, forKey: .value)
		try variable?.encode(on: &_container, forKey: .variable)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceStatisticModelCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attributeEstimate == _other.attributeEstimate
		    && code == _other.code
		    && value == _other.value
		    && variable == _other.variable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attributeEstimate)
		hasher.combine(code)
		hasher.combine(value)
		hasher.combine(variable)
	}
}

/**
 A variable adjusted for in the adjusted analysis.
 */
open class EvidenceStatisticModelCharacteristicVariable: BackboneElement {
	
	/// Description of the variable
	public var variableDefinition: Reference
	
	/// How the variable is classified for use in adjusted analysis.
	public var handling: FHIRPrimitive<EvidenceVariableHandling>?
	
	/// Description for grouping of ordinal or polychotomous variables
	public var valueCategory: [CodeableConcept]?
	
	/// Discrete value for grouping of ordinal or polychotomous variables
	public var valueQuantity: [Quantity]?
	
	/// Range of values for grouping of ordinal or polychotomous variables
	public var valueRange: [Range]?
	
	/// Designated initializer taking all required properties
	public init(variableDefinition: Reference) {
		self.variableDefinition = variableDefinition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		handling: FHIRPrimitive<EvidenceVariableHandling>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		valueCategory: [CodeableConcept]? = nil,
		valueQuantity: [Quantity]? = nil,
		valueRange: [Range]? = nil,
		variableDefinition: Reference
	) {
		self.init(variableDefinition: variableDefinition)
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.modifierExtension = modifierExtension
		self.valueCategory = valueCategory
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case handling; case _handling
		case valueCategory
		case valueQuantity
		case valueRange
		case variableDefinition
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.handling = try FHIRPrimitive<EvidenceVariableHandling>(from: _container, forKeyIfPresent: .handling, auxiliaryKey: ._handling)
		self.valueCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCategory)
		self.valueQuantity = try [Quantity](from: _container, forKeyIfPresent: .valueQuantity)
		self.valueRange = try [Range](from: _container, forKeyIfPresent: .valueRange)
		self.variableDefinition = try Reference(from: _container, forKey: .variableDefinition)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try handling?.encode(on: &_container, forKey: .handling, auxiliaryKey: ._handling)
		try valueCategory?.encode(on: &_container, forKey: .valueCategory)
		try valueQuantity?.encode(on: &_container, forKey: .valueQuantity)
		try valueRange?.encode(on: &_container, forKey: .valueRange)
		try variableDefinition.encode(on: &_container, forKey: .variableDefinition)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceStatisticModelCharacteristicVariable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return handling == _other.handling
		    && valueCategory == _other.valueCategory
		    && valueQuantity == _other.valueQuantity
		    && valueRange == _other.valueRange
		    && variableDefinition == _other.variableDefinition
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(handling)
		hasher.combine(valueCategory)
		hasher.combine(valueQuantity)
		hasher.combine(valueRange)
		hasher.combine(variableDefinition)
	}
}

/**
 Number of samples in the statistic.
 */
open class EvidenceStatisticSampleSize: BackboneElement {
	
	/// Textual description of sample size for statistic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the sample size
	public var note: [Annotation]?
	
	/// Number of contributing studies
	public var numberOfStudies: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Cumulative number of participants
	public var numberOfParticipants: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of participants with known results for measured variables
	public var knownDataCount: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		knownDataCount: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		numberOfParticipants: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfStudies: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.knownDataCount = knownDataCount
		self.modifierExtension = modifierExtension
		self.note = note
		self.numberOfParticipants = numberOfParticipants
		self.numberOfStudies = numberOfStudies
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case knownDataCount; case _knownDataCount
		case note
		case numberOfParticipants; case _numberOfParticipants
		case numberOfStudies; case _numberOfStudies
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.knownDataCount = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .knownDataCount, auxiliaryKey: ._knownDataCount)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberOfParticipants = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		self.numberOfStudies = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try knownDataCount?.encode(on: &_container, forKey: .knownDataCount, auxiliaryKey: ._knownDataCount)
		try note?.encode(on: &_container, forKey: .note)
		try numberOfParticipants?.encode(on: &_container, forKey: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		try numberOfStudies?.encode(on: &_container, forKey: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceStatisticSampleSize else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && knownDataCount == _other.knownDataCount
		    && note == _other.note
		    && numberOfParticipants == _other.numberOfParticipants
		    && numberOfStudies == _other.numberOfStudies
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(knownDataCount)
		hasher.combine(note)
		hasher.combine(numberOfParticipants)
		hasher.combine(numberOfStudies)
	}
}

/**
 Evidence variable such as population, exposure, or outcome.
 */
open class EvidenceVariableDefinition: BackboneElement {
	
	/// A text description or summary of the variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// population | subpopulation | exposure | referenceExposure | measuredVariable | confounder
	public var variableRole: CodeableConcept
	
	/// Definition of the actual variable related to the statistic(s)
	public var observed: Reference?
	
	/// Definition of the intended variable related to the Evidence
	public var intended: Reference?
	
	/// low | moderate | high | exact
	public var directnessMatch: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(variableRole: CodeableConcept) {
		self.variableRole = variableRole
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		directnessMatch: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intended: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		observed: Reference? = nil,
		variableRole: CodeableConcept
	) {
		self.init(variableRole: variableRole)
		self.description_fhir = description_fhir
		self.directnessMatch = directnessMatch
		self.`extension` = `extension`
		self.id = id
		self.intended = intended
		self.modifierExtension = modifierExtension
		self.note = note
		self.observed = observed
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case directnessMatch
		case intended
		case note
		case observed
		case variableRole
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.directnessMatch = try CodeableConcept(from: _container, forKeyIfPresent: .directnessMatch)
		self.intended = try Reference(from: _container, forKeyIfPresent: .intended)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.observed = try Reference(from: _container, forKeyIfPresent: .observed)
		self.variableRole = try CodeableConcept(from: _container, forKey: .variableRole)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try directnessMatch?.encode(on: &_container, forKey: .directnessMatch)
		try intended?.encode(on: &_container, forKey: .intended)
		try note?.encode(on: &_container, forKey: .note)
		try observed?.encode(on: &_container, forKey: .observed)
		try variableRole.encode(on: &_container, forKey: .variableRole)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && directnessMatch == _other.directnessMatch
		    && intended == _other.intended
		    && note == _other.note
		    && observed == _other.observed
		    && variableRole == _other.variableRole
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(directnessMatch)
		hasher.combine(intended)
		hasher.combine(note)
		hasher.combine(observed)
		hasher.combine(variableRole)
	}
}
