//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
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
 A definition of an exposure, outcome, or other variable.
 
 The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
 */
public struct EvidenceVariable: DomainResource {
	
	public static let resourceType: ResourceType = .evidenceVariable
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Actual or conceptual
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// When the resource was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// A grouping for dichotomous, ordinal, or polychotomouos variables
	public var category: [EvidenceVariableCategory]?
	
	/// Display of how to cite this EvidenceVariable
	public var citeAs: FHIRPrimitive<FHIRString>?
	
	/// Classification
	public var classifier: [CodeableConcept]?
	
	/// Condition determining whether the data will be collected
	public var conditional: Expression?
	
	/// Limit on acceptability of data value
	public var constraint: [EvidenceVariableConstraint]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Intellectual property ownership, may include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// How the data element (value of the variable) is found
	public var dataStorage: [EvidenceVariableDataStorage]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The meaning of the evidence variable
	public var definition: CodeableReference?
	
	/// Further specification of the definition
	public var definitionModifier: [EvidenceVariableDefinitionModifier]?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the resource is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// boolean | continuous | dichotomous | ordinal | polychotomous | time-to-event | not-specified
	public var handling: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the evidence variable
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the resource was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// How missing data can be interpreted
	public var missingDataMeaning: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this evidence variable (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Calendar-based timing when the variable is observed
	public var period: Period?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this EvidenceVariable is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Who entered the data for the evidence variable
	public var recorder: [ContactDetail]?
	
	/// Relationships to other Resources
	public var relatesTo: [EvidenceVariableRelatesTo]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Title for use in informal contexts
	public var shortTitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this EvidenceVariable. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// When the variable is observed
	public var timing: RelativeTime?
	
	/// Name for this evidence variable (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// How erroneous data is processed
	public var unacceptableDataHandling: [CodeableConcept]?
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the evidence variable
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		actual: FHIRPrimitive<FHIRBool>? = nil,
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		category: [EvidenceVariableCategory]? = nil,
		citeAs: FHIRPrimitive<FHIRString>? = nil,
		classifier: [CodeableConcept]? = nil,
		conditional: Expression? = nil,
		constraint: [EvidenceVariableConstraint]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		dataStorage: [EvidenceVariableDataStorage]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		definition: CodeableReference? = nil,
		definitionModifier: [EvidenceVariableDefinitionModifier]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		handling: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		missingDataMeaning: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		period: Period? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		recorder: [ContactDetail]? = nil,
		relatesTo: [EvidenceVariableRelatesTo]? = nil,
		reviewer: [ContactDetail]? = nil,
		shortTitle: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		timing: RelativeTime? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		unacceptableDataHandling: [CodeableConcept]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.actual = actual
		self.approvalDate = approvalDate
		self.author = author
		self.category = category
		self.citeAs = citeAs
		self.classifier = classifier
		self.conditional = conditional
		self.constraint = constraint
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.dataStorage = dataStorage
		self.date = date
		self.definition = definition
		self.definitionModifier = definitionModifier
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.missingDataMeaning = missingDataMeaning
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.period = period
		self.publisher = publisher
		self.purpose = purpose
		self.recorder = recorder
		self.relatesTo = relatesTo
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.status = status
		self.text = text
		self.timing = timing
		self.title = title
		self.unacceptableDataHandling = unacceptableDataHandling
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actual; case _actual
		case approvalDate; case _approvalDate
		case author
		case category
		case citeAs; case _citeAs
		case classifier
		case conditional
		case constraint
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case dataStorage
		case date; case _date
		case definition
		case definitionModifier
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case handling
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case missingDataMeaning
		case modifierExtension
		case name; case _name
		case note
		case period
		case publisher; case _publisher
		case purpose; case _purpose
		case recorder
		case relatesTo
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case text
		case timing
		case title; case _title
		case unacceptableDataHandling
		case url; case _url
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
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.category = try [EvidenceVariableCategory](from: _container, forKeyIfPresent: .category)
		self.citeAs = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAs, auxiliaryKey: ._citeAs)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.conditional = try Expression(from: _container, forKeyIfPresent: .conditional)
		self.constraint = try [EvidenceVariableConstraint](from: _container, forKeyIfPresent: .constraint)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.dataStorage = try [EvidenceVariableDataStorage](from: _container, forKeyIfPresent: .dataStorage)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.definition = try CodeableReference(from: _container, forKeyIfPresent: .definition)
		self.definitionModifier = try [EvidenceVariableDefinitionModifier](from: _container, forKeyIfPresent: .definitionModifier)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.handling = try CodeableConcept(from: _container, forKeyIfPresent: .handling)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.missingDataMeaning = try [CodeableConcept](from: _container, forKeyIfPresent: .missingDataMeaning)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.recorder = try [ContactDetail](from: _container, forKeyIfPresent: .recorder)
		self.relatesTo = try [EvidenceVariableRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timing = try RelativeTime(from: _container, forKeyIfPresent: .timing)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.unacceptableDataHandling = try [CodeableConcept](from: _container, forKeyIfPresent: .unacceptableDataHandling)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try citeAs?.encode(on: &_container, forKey: .citeAs, auxiliaryKey: ._citeAs)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try conditional?.encode(on: &_container, forKey: .conditional)
		try constraint?.encode(on: &_container, forKey: .constraint)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try dataStorage?.encode(on: &_container, forKey: .dataStorage)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try definition?.encode(on: &_container, forKey: .definition)
		try definitionModifier?.encode(on: &_container, forKey: .definitionModifier)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try handling?.encode(on: &_container, forKey: .handling)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try missingDataMeaning?.encode(on: &_container, forKey: .missingDataMeaning)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try period?.encode(on: &_container, forKey: .period)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try timing?.encode(on: &_container, forKey: .timing)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try unacceptableDataHandling?.encode(on: &_container, forKey: .unacceptableDataHandling)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
 A grouping for dichotomous, ordinal, or polychotomouos variables.
 */
public struct EvidenceVariableCategory: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Description of the grouping
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Definition of the grouping
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = value {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		return _t_value
	}
}

/**
 Limit on acceptability of data value.
 
 Limit on acceptability of data used to express values of the variable.
 */
public struct EvidenceVariableConstraint: BackboneElement {
	
	/// Permissibility of unanticipated value used to express value of the variable
	public var anyValueAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Rule for acceptable data values
	public var code: CodeableConcept?
	
	/// Condition determining whether this constraint applies
	public var conditional: CodeableConcept?
	
	/// The earliest permissible value of the variable
	public var earliestDateTime: FHIRPrimitive<DateTime>?
	
	/// List of anticipated values used to express units for the value of the variable
	public var expectedUnitsValueSet: Reference?
	
	/// List of anticipated values used to express value of the variable
	public var expectedValueSet: Reference?
	
	/// Rule for acceptable data values, as an Expression
	public var expression: Expression?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The latest permissible value of the variable
	public var latestDateTime: FHIRPrimitive<DateTime>?
	
	/// The highest permissible value of the variable
	public var maximumQuantity: Quantity?
	
	/// The highest number of characters allowed for a value of the variable
	public var maximumStringLength: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The lowest permissible value of the variable
	public var minimumQuantity: Quantity?
	
	/// The lowest number of characters allowed for a value of the variable
	public var minimumStringLength: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		anyValueAllowed: FHIRPrimitive<FHIRBool>? = nil,
		code: CodeableConcept? = nil,
		conditional: CodeableConcept? = nil,
		earliestDateTime: FHIRPrimitive<DateTime>? = nil,
		expectedUnitsValueSet: Reference? = nil,
		expectedValueSet: Reference? = nil,
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		latestDateTime: FHIRPrimitive<DateTime>? = nil,
		maximumQuantity: Quantity? = nil,
		maximumStringLength: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		minimumQuantity: Quantity? = nil,
		minimumStringLength: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.anyValueAllowed = anyValueAllowed
		self.code = code
		self.conditional = conditional
		self.earliestDateTime = earliestDateTime
		self.expectedUnitsValueSet = expectedUnitsValueSet
		self.expectedValueSet = expectedValueSet
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.latestDateTime = latestDateTime
		self.maximumQuantity = maximumQuantity
		self.maximumStringLength = maximumStringLength
		self.minimumQuantity = minimumQuantity
		self.minimumStringLength = minimumStringLength
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case anyValueAllowed; case _anyValueAllowed
		case code
		case conditional
		case earliestDateTime; case _earliestDateTime
		case expectedUnitsValueSet
		case expectedValueSet
		case expression
		case `extension` = "extension"
		case id; case _id
		case latestDateTime; case _latestDateTime
		case maximumQuantity
		case maximumStringLength; case _maximumStringLength
		case minimumQuantity
		case minimumStringLength; case _minimumStringLength
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.anyValueAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .anyValueAllowed, auxiliaryKey: ._anyValueAllowed)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.conditional = try CodeableConcept(from: _container, forKeyIfPresent: .conditional)
		self.earliestDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .earliestDateTime, auxiliaryKey: ._earliestDateTime)
		self.expectedUnitsValueSet = try Reference(from: _container, forKeyIfPresent: .expectedUnitsValueSet)
		self.expectedValueSet = try Reference(from: _container, forKeyIfPresent: .expectedValueSet)
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.latestDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .latestDateTime, auxiliaryKey: ._latestDateTime)
		self.maximumQuantity = try Quantity(from: _container, forKeyIfPresent: .maximumQuantity)
		self.maximumStringLength = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maximumStringLength, auxiliaryKey: ._maximumStringLength)
		self.minimumQuantity = try Quantity(from: _container, forKeyIfPresent: .minimumQuantity)
		self.minimumStringLength = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .minimumStringLength, auxiliaryKey: ._minimumStringLength)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try anyValueAllowed?.encode(on: &_container, forKey: .anyValueAllowed, auxiliaryKey: ._anyValueAllowed)
		try code?.encode(on: &_container, forKey: .code)
		try conditional?.encode(on: &_container, forKey: .conditional)
		try earliestDateTime?.encode(on: &_container, forKey: .earliestDateTime, auxiliaryKey: ._earliestDateTime)
		try expectedUnitsValueSet?.encode(on: &_container, forKey: .expectedUnitsValueSet)
		try expectedValueSet?.encode(on: &_container, forKey: .expectedValueSet)
		try expression?.encode(on: &_container, forKey: .expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try latestDateTime?.encode(on: &_container, forKey: .latestDateTime, auxiliaryKey: ._latestDateTime)
		try maximumQuantity?.encode(on: &_container, forKey: .maximumQuantity)
		try maximumStringLength?.encode(on: &_container, forKey: .maximumStringLength, auxiliaryKey: ._maximumStringLength)
		try minimumQuantity?.encode(on: &_container, forKey: .minimumQuantity)
		try minimumStringLength?.encode(on: &_container, forKey: .minimumStringLength, auxiliaryKey: ._minimumStringLength)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 How the data element (value of the variable) is found.
 
 How the data element is organized and where the data element (expressing the value of the variable) is found in the
 dataset.
 */
public struct EvidenceVariableDataStorage: BackboneElement {
	
	/// None
	public var component: [EvidenceVariableDataStorage]?
	
	/// Type of data used to express value of the variable
	public var datatype: CodeableConcept?
	
	/// Character(s) separating values in a string-based list
	public var delimiter: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Where to find the data element in the dataset
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		component: [EvidenceVariableDataStorage]? = nil,
		datatype: CodeableConcept? = nil,
		delimiter: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil
	) {
		self.component = component
		self.datatype = datatype
		self.delimiter = delimiter
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.path = path
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case datatype
		case delimiter; case _delimiter
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case path; case _path
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.component = try [EvidenceVariableDataStorage](from: _container, forKeyIfPresent: .component)
		self.datatype = try CodeableConcept(from: _container, forKeyIfPresent: .datatype)
		self.delimiter = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .delimiter, auxiliaryKey: ._delimiter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try component?.encode(on: &_container, forKey: .component)
		try datatype?.encode(on: &_container, forKey: .datatype)
		try delimiter?.encode(on: &_container, forKey: .delimiter, auxiliaryKey: ._delimiter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
	}
}

/**
 Further specification of the definition.
 */
public struct EvidenceVariableDefinitionModifier: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case expression(Expression)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
		indirect case relativeTime(RelativeTime)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Attribute of the definition
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specification of the definition attribute
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueExpression
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueReference
		case valueRelativeTime
		case valueUri; case _valueUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .valueExpression)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .relativeTime(let _value):
			try _value.encode(on: &_container, forKey: .valueRelativeTime)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueRelativeTime = try RelativeTime(from: _container, forKeyIfPresent: .valueRelativeTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelativeTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relativeTime(valueRelativeTime)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUri)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Relationships to other Resources.
 
 Relationships that this EvidenceVariable has with other FHIR or non-FHIR resources that already exist.
 */
public struct EvidenceVariableRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case canonical(FHIRPrimitive<Canonical>)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The artifact that is related to this EvidenceVariable
	/// One of `target[x]`
	public var target: TargetX
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of | summarizes
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: TargetX,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case targetAttachment
		case targetCanonical; case _targetCanonical
		case targetMarkdown; case _targetMarkdown
		case targetReference
		case targetUri; case _targetUri
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
		self.target = try Self._decodeTarget(from: _container)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch target {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .targetAttachment)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .targetMarkdown, auxiliaryKey: ._targetMarkdown)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .targetReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
		}
		
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX {
		var _t_target: TargetX? = nil
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			_t_target = .attachment(targetAttachment)
		}
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetCanonical, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .canonical(targetCanonical)
		}
		if let targetMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetMarkdown, auxiliaryKey: ._targetMarkdown) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetMarkdown, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .markdown(targetMarkdown)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		guard let _t_target else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.targetUri)
			throw DecodingError.valueNotFound(TargetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		return _t_target
	}
}
