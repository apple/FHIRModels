//
//  Evidence.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Evidence)
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
 Single evidence bit.
 
 The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence
 variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding
 variables), the statistics, and the certainty of this evidence.
 */
public struct Evidence: DomainResource {
	
	public static let resourceType: ResourceType = .evidence
	
	/// All possible types for "citeAs[x]"
	public enum CiteAsX: Equatable, Hashable, Sendable {
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case reference(Reference)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When the summary was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Declarative description of the Evidence
	public var assertion: FHIRPrimitive<FHIRString>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Certainty or quality of the evidence
	public var certainty: [EvidenceCertainty]?
	
	/// Citation for this evidence
	/// One of `citeAs[x]`
	public var citeAs: CiteAsX?
	
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
	
	/// Description of the particular summary
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the summary
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the summary was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this summary (machine friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this Evidence is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Link or citation to artifact associated with the summary
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Values and parameters for a single statistic
	public var statistic: [EvidenceStatistic]?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The design of the study that produced this evidence
	public var studyDesign: [CodeableConcept]?
	
	/// The method to combine studies
	public var synthesisType: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this summary (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this evidence, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Evidence variable such as population, exposure, or outcome
	public var variableDefinition: [EvidenceVariableDefinition]
	
	/// Business version of this summary
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		assertion: FHIRPrimitive<FHIRString>? = nil,
		author: [ContactDetail]? = nil,
		certainty: [EvidenceCertainty]? = nil,
		citeAs: CiteAsX? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
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
		statistic: [EvidenceStatistic]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		studyDesign: [CodeableConcept]? = nil,
		synthesisType: CodeableConcept? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		variableDefinition: [EvidenceVariableDefinition],
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.assertion = assertion
		self.author = author
		self.certainty = certainty
		self.citeAs = citeAs
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
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
		self.statistic = statistic
		self.status = status
		self.studyDesign = studyDesign
		self.synthesisType = synthesisType
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.variableDefinition = variableDefinition
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case assertion; case _assertion
		case author
		case certainty
		case citeAsMarkdown; case _citeAsMarkdown
		case citeAsReference
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
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
		case statistic
		case status; case _status
		case studyDesign
		case synthesisType
		case text
		case title; case _title
		case url; case _url
		case useContext
		case variableDefinition
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
		self.assertion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .assertion, auxiliaryKey: ._assertion)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.certainty = try [EvidenceCertainty](from: _container, forKeyIfPresent: .certainty)
		self.citeAs = try Self._decodeCiteAs(from: _container)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
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
		self.statistic = try [EvidenceStatistic](from: _container, forKeyIfPresent: .statistic)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyDesign = try [CodeableConcept](from: _container, forKeyIfPresent: .studyDesign)
		self.synthesisType = try CodeableConcept(from: _container, forKeyIfPresent: .synthesisType)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variableDefinition = try [EvidenceVariableDefinition](from: _container, forKey: .variableDefinition)
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
		try assertion?.encode(on: &_container, forKey: .assertion, auxiliaryKey: ._assertion)
		try author?.encode(on: &_container, forKey: .author)
		try certainty?.encode(on: &_container, forKey: .certainty)
		if let _enum = citeAs {
		switch _enum {
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .citeAsReference)
		}
		}
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
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
		try statistic?.encode(on: &_container, forKey: .statistic)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyDesign?.encode(on: &_container, forKey: .studyDesign)
		try synthesisType?.encode(on: &_container, forKey: .synthesisType)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variableDefinition.encode(on: &_container, forKey: .variableDefinition)
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
	
	private static func _decodeCiteAs(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CiteAsX? {
		var _t_citeAs: CiteAsX? = nil
		if let citeAsMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown) {
			_t_citeAs = .markdown(citeAsMarkdown)
		}
		if let citeAsReference = try Reference(from: _container, forKeyIfPresent: .citeAsReference) {
			if _t_citeAs != nil {
				throw DecodingError.dataCorruptedError(forKey: .citeAsReference, in: _container, debugDescription: "More than one value provided for \"citeAs\"")
			}
			_t_citeAs = .reference(citeAsReference)
		}
		return _t_citeAs
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
 Certainty or quality of the evidence.
 
 Assessment of certainty, confidence in the estimates, or quality of the evidence.
 */
public struct EvidenceCertainty: BackboneElement {
	
	/// Textual description of certainty
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Individual or group who did the rating
	public var rater: FHIRPrimitive<FHIRString>?
	
	/// Assessment or judgement of the aspect
	public var rating: CodeableConcept?
	
	/// A domain or subdomain of certainty
	public var subcomponent: [EvidenceCertainty]?
	
	/// Aspect of certainty being rated
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case rater; case _rater
		case rating
		case subcomponent
		case type
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
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rater = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rater, auxiliaryKey: ._rater)
		self.rating = try CodeableConcept(from: _container, forKeyIfPresent: .rating)
		self.subcomponent = try [EvidenceCertainty](from: _container, forKeyIfPresent: .subcomponent)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try rater?.encode(on: &_container, forKey: .rater, auxiliaryKey: ._rater)
		try rating?.encode(on: &_container, forKey: .rating)
		try subcomponent?.encode(on: &_container, forKey: .subcomponent)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Values and parameters for a single statistic.
 */
public struct EvidenceStatistic: BackboneElement {
	
	/// An attribute of the Statistic
	public var attributeEstimate: [EvidenceStatisticAttributeEstimate]?
	
	/// Associated category for categorical variable
	public var category: CodeableConcept?
	
	/// Description of content
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An aspect of the statistical model
	public var modelCharacteristic: [EvidenceStatisticModelCharacteristic]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// The number of participants affected
	public var numberAffected: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The number of events associated with the statistic
	public var numberOfEvents: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Statistic value
	public var quantity: Quantity?
	
	/// Number of samples in the statistic
	public var sampleSize: EvidenceStatisticSampleSize?
	
	/// Type of statistic, e.g., relative risk
	public var statisticType: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case modelCharacteristic
		case modifierExtension
		case note
		case numberAffected; case _numberAffected
		case numberOfEvents; case _numberOfEvents
		case quantity
		case sampleSize
		case statisticType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attributeEstimate = try [EvidenceStatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modelCharacteristic = try [EvidenceStatisticModelCharacteristic](from: _container, forKeyIfPresent: .modelCharacteristic)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberAffected = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberAffected, auxiliaryKey: ._numberAffected)
		self.numberOfEvents = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfEvents, auxiliaryKey: ._numberOfEvents)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sampleSize = try EvidenceStatisticSampleSize(from: _container, forKeyIfPresent: .sampleSize)
		self.statisticType = try CodeableConcept(from: _container, forKeyIfPresent: .statisticType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modelCharacteristic?.encode(on: &_container, forKey: .modelCharacteristic)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try numberAffected?.encode(on: &_container, forKey: .numberAffected, auxiliaryKey: ._numberAffected)
		try numberOfEvents?.encode(on: &_container, forKey: .numberOfEvents, auxiliaryKey: ._numberOfEvents)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sampleSize?.encode(on: &_container, forKey: .sampleSize)
		try statisticType?.encode(on: &_container, forKey: .statisticType)
	}
}

/**
 An attribute of the Statistic.
 
 A statistical attribute of the statistic such as a measure of heterogeneity.
 */
public struct EvidenceStatisticAttributeEstimate: BackboneElement {
	
	/// A nested attribute estimate; which is the attribute estimate of an attribute estimate
	public var attributeEstimate: [EvidenceStatisticAttributeEstimate]?
	
	/// Textual description of the attribute estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Level of confidence interval, e.g., 0.95 for 95% confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Footnote or explanatory note about the estimate
	public var note: [Annotation]?
	
	/// The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used
	/// to report unit of measure
	public var quantity: Quantity?
	
	/// Lower and upper bound values of the attribute estimate
	public var range: Range?
	
	/// The type of attribute estimate, e.g., confidence interval or p value
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case level; case _level
		case modifierExtension
		case note
		case quantity
		case range
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attributeEstimate = try [EvidenceStatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.level = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .level, auxiliaryKey: ._level)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try level?.encode(on: &_container, forKey: .level, auxiliaryKey: ._level)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 An aspect of the statistical model.
 
 A component of the method to generate the statistic.
 */
public struct EvidenceStatisticModelCharacteristic: BackboneElement {
	
	/// An attribute of the statistic used as a model characteristic
	public var attributeEstimate: [EvidenceStatisticAttributeEstimate]?
	
	/// Model specification
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Numerical value to complete model specification
	public var value: Quantity?
	
	/// A variable adjusted for in the adjusted analysis
	public var variable: [EvidenceStatisticModelCharacteristicVariable]?
	
	/// Designated initializer
	public init(
		attributeEstimate: [EvidenceStatisticAttributeEstimate]? = nil,
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: Quantity? = nil,
		variable: [EvidenceStatisticModelCharacteristicVariable]? = nil
	) {
		self.attributeEstimate = attributeEstimate
		self.code = code
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value
		case variable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attributeEstimate = try [EvidenceStatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
		self.variable = try [EvidenceStatisticModelCharacteristicVariable](from: _container, forKeyIfPresent: .variable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value)
		try variable?.encode(on: &_container, forKey: .variable)
	}
}

/**
 A variable adjusted for in the adjusted analysis.
 */
public struct EvidenceStatisticModelCharacteristicVariable: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// How the variable is classified for use in adjusted analysis.
	public var handling: FHIRPrimitive<EvidenceVariableHandling>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Description for grouping of ordinal or polychotomous variables
	public var valueCategory: [CodeableConcept]?
	
	/// Discrete value for grouping of ordinal or polychotomous variables
	public var valueQuantity: [Quantity]?
	
	/// Range of values for grouping of ordinal or polychotomous variables
	public var valueRange: [Range]?
	
	/// Description of the variable
	public var variableDefinition: Reference
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		handling: FHIRPrimitive<EvidenceVariableHandling>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		valueCategory: [CodeableConcept]? = nil,
		valueQuantity: [Quantity]? = nil,
		valueRange: [Range]? = nil,
		variableDefinition: Reference
	) {
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.modifierExtension = modifierExtension
		self.valueCategory = valueCategory
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
		self.variableDefinition = variableDefinition
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case handling; case _handling
		case id; case _id
		case modifierExtension
		case valueCategory
		case valueQuantity
		case valueRange
		case variableDefinition
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.handling = try FHIRPrimitive<EvidenceVariableHandling>(from: _container, forKeyIfPresent: .handling, auxiliaryKey: ._handling)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.valueCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCategory)
		self.valueQuantity = try [Quantity](from: _container, forKeyIfPresent: .valueQuantity)
		self.valueRange = try [Range](from: _container, forKeyIfPresent: .valueRange)
		self.variableDefinition = try Reference(from: _container, forKey: .variableDefinition)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try handling?.encode(on: &_container, forKey: .handling, auxiliaryKey: ._handling)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try valueCategory?.encode(on: &_container, forKey: .valueCategory)
		try valueQuantity?.encode(on: &_container, forKey: .valueQuantity)
		try valueRange?.encode(on: &_container, forKey: .valueRange)
		try variableDefinition.encode(on: &_container, forKey: .variableDefinition)
	}
}

/**
 Number of samples in the statistic.
 */
public struct EvidenceStatisticSampleSize: BackboneElement {
	
	/// Textual description of sample size for statistic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Number of participants with known results for measured variables
	public var knownDataCount: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Footnote or explanatory note about the sample size
	public var note: [Annotation]?
	
	/// Cumulative number of participants
	public var numberOfParticipants: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of contributing studies
	public var numberOfStudies: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		knownDataCount: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		numberOfParticipants: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfStudies: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case knownDataCount; case _knownDataCount
		case modifierExtension
		case note
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
		self.knownDataCount = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .knownDataCount, auxiliaryKey: ._knownDataCount)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberOfParticipants = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		self.numberOfStudies = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try knownDataCount?.encode(on: &_container, forKey: .knownDataCount, auxiliaryKey: ._knownDataCount)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try numberOfParticipants?.encode(on: &_container, forKey: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		try numberOfStudies?.encode(on: &_container, forKey: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
	}
}

/**
 Evidence variable such as population, exposure, or outcome.
 */
public struct EvidenceVariableDefinition: BackboneElement {
	
	/// A text description or summary of the variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// low | moderate | high | exact
	public var directnessMatch: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Definition of the intended variable related to the Evidence
	public var intended: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Definition of the actual variable related to the statistic(s)
	public var observed: Reference?
	
	/// population | subpopulation | exposure | referenceExposure | measuredVariable | confounder
	public var variableRole: CodeableConcept
	
	/// Designated initializer
	public init(
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
		self.description_fhir = description_fhir
		self.directnessMatch = directnessMatch
		self.`extension` = `extension`
		self.id = id
		self.intended = intended
		self.modifierExtension = modifierExtension
		self.note = note
		self.observed = observed
		self.variableRole = variableRole
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case directnessMatch
		case `extension` = "extension"
		case id; case _id
		case intended
		case modifierExtension
		case note
		case observed
		case variableRole
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.directnessMatch = try CodeableConcept(from: _container, forKeyIfPresent: .directnessMatch)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.intended = try Reference(from: _container, forKeyIfPresent: .intended)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.observed = try Reference(from: _container, forKeyIfPresent: .observed)
		self.variableRole = try CodeableConcept(from: _container, forKey: .variableRole)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try directnessMatch?.encode(on: &_container, forKey: .directnessMatch)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try intended?.encode(on: &_container, forKey: .intended)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try observed?.encode(on: &_container, forKey: .observed)
		try variableRole.encode(on: &_container, forKey: .variableRole)
	}
}
