//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
//  Copyright 2025 Apple Inc.
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
open class EvidenceVariable: DomainResource {
	
	override open class var resourceType: ResourceType { return .evidenceVariable }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the evidence variable
	public var identifier: [Identifier]?
	
	/// Business version of the evidence variable
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this evidence variable (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this evidence variable (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Title for use in informal contexts
	public var shortTitle: FHIRPrimitive<FHIRString>?
	
	/// Display of how to cite this EvidenceVariable
	public var citeAs: FHIRPrimitive<FHIRString>?
	
	/// The status of this EvidenceVariable. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Who entered the data for the evidence variable
	public var recorder: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Why this EvidenceVariable is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Intellectual property ownership, may include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the resource was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the resource was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the resource is expected to be used
	public var effectivePeriod: Period?
	
	/// Relationships to other Resources
	public var relatesTo: [EvidenceVariableRelatesTo]?
	
	/// Actual or conceptual
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// The meaning of the evidence variable
	public var definition: CodeableReference?
	
	/// Further specification of the definition
	public var definitionModifier: [EvidenceVariableDefinitionModifier]?
	
	/// boolean | continuous | dichotomous | ordinal | polychotomous | time-to-event | not-specified
	public var handling: CodeableConcept?
	
	/// A grouping for dichotomous, ordinal, or polychotomouos variables
	public var category: [EvidenceVariableCategory]?
	
	/// Condition determining whether the data will be collected
	public var conditional: Expression?
	
	/// Classification
	public var classifier: [CodeableConcept]?
	
	/// How the data element (value of the variable) is found
	public var dataStorage: [EvidenceVariableDataStorage]?
	
	/// When the variable is observed
	public var timing: RelativeTime?
	
	/// Calendar-based timing when the variable is observed
	public var period: Period?
	
	/// Limit on acceptability of data value
	public var constraint: [EvidenceVariableConstraint]?
	
	/// How missing data can be interpreted
	public var missingDataMeaning: [CodeableConcept]?
	
	/// How erroneous data is processed
	public var unacceptableDataHandling: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		case actual; case _actual
		case approvalDate; case _approvalDate
		case author
		case category
		case citeAs; case _citeAs
		case classifier
		case conditional
		case constraint
		case contact
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
		case handling
		case identifier
		case lastReviewDate; case _lastReviewDate
		case missingDataMeaning
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.category = try [EvidenceVariableCategory](from: _container, forKeyIfPresent: .category)
		self.citeAs = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAs, auxiliaryKey: ._citeAs)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.conditional = try Expression(from: _container, forKeyIfPresent: .conditional)
		self.constraint = try [EvidenceVariableConstraint](from: _container, forKeyIfPresent: .constraint)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
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
		self.handling = try CodeableConcept(from: _container, forKeyIfPresent: .handling)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.missingDataMeaning = try [CodeableConcept](from: _container, forKeyIfPresent: .missingDataMeaning)
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
		self.timing = try RelativeTime(from: _container, forKeyIfPresent: .timing)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.unacceptableDataHandling = try [CodeableConcept](from: _container, forKeyIfPresent: .unacceptableDataHandling)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try citeAs?.encode(on: &_container, forKey: .citeAs, auxiliaryKey: ._citeAs)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try conditional?.encode(on: &_container, forKey: .conditional)
		try constraint?.encode(on: &_container, forKey: .constraint)
		try contact?.encode(on: &_container, forKey: .contact)
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
		try handling?.encode(on: &_container, forKey: .handling)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try missingDataMeaning?.encode(on: &_container, forKey: .missingDataMeaning)
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
		try timing?.encode(on: &_container, forKey: .timing)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try unacceptableDataHandling?.encode(on: &_container, forKey: .unacceptableDataHandling)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
		guard let _other = _other as? EvidenceVariable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actual == _other.actual
		    && approvalDate == _other.approvalDate
		    && author == _other.author
		    && category == _other.category
		    && citeAs == _other.citeAs
		    && classifier == _other.classifier
		    && conditional == _other.conditional
		    && constraint == _other.constraint
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && dataStorage == _other.dataStorage
		    && date == _other.date
		    && definition == _other.definition
		    && definitionModifier == _other.definitionModifier
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && handling == _other.handling
		    && identifier == _other.identifier
		    && lastReviewDate == _other.lastReviewDate
		    && missingDataMeaning == _other.missingDataMeaning
		    && name == _other.name
		    && note == _other.note
		    && period == _other.period
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && recorder == _other.recorder
		    && relatesTo == _other.relatesTo
		    && reviewer == _other.reviewer
		    && shortTitle == _other.shortTitle
		    && status == _other.status
		    && timing == _other.timing
		    && title == _other.title
		    && unacceptableDataHandling == _other.unacceptableDataHandling
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actual)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(citeAs)
		hasher.combine(classifier)
		hasher.combine(conditional)
		hasher.combine(constraint)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(dataStorage)
		hasher.combine(date)
		hasher.combine(definition)
		hasher.combine(definitionModifier)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(handling)
		hasher.combine(identifier)
		hasher.combine(lastReviewDate)
		hasher.combine(missingDataMeaning)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(period)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(recorder)
		hasher.combine(relatesTo)
		hasher.combine(reviewer)
		hasher.combine(shortTitle)
		hasher.combine(status)
		hasher.combine(timing)
		hasher.combine(title)
		hasher.combine(unacceptableDataHandling)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 A grouping for dichotomous, ordinal, or polychotomouos variables.
 */
open class EvidenceVariableCategory: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
	}
	
	/// Description of the grouping
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Definition of the grouping
	/// One of `value[x]`
	public var value: ValueX?
	
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
		value: ValueX? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
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
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCategory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(value)
	}
}

/**
 Limit on acceptability of data value.
 
 Limit on acceptability of data used to express values of the variable.
 */
open class EvidenceVariableConstraint: BackboneElement {
	
	/// Condition determining whether this constraint applies
	public var conditional: CodeableConcept?
	
	/// The lowest permissible value of the variable
	public var minimumQuantity: Quantity?
	
	/// The highest permissible value of the variable
	public var maximumQuantity: Quantity?
	
	/// The earliest permissible value of the variable
	public var earliestDateTime: FHIRPrimitive<DateTime>?
	
	/// The latest permissible value of the variable
	public var latestDateTime: FHIRPrimitive<DateTime>?
	
	/// The lowest number of characters allowed for a value of the variable
	public var minimumStringLength: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The highest number of characters allowed for a value of the variable
	public var maximumStringLength: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Rule for acceptable data values
	public var code: CodeableConcept?
	
	/// Rule for acceptable data values, as an Expression
	public var expression: Expression?
	
	/// List of anticipated values used to express value of the variable
	public var expectedValueSet: Reference?
	
	/// List of anticipated values used to express units for the value of the variable
	public var expectedUnitsValueSet: Reference?
	
	/// Permissibility of unanticipated value used to express value of the variable
	public var anyValueAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case latestDateTime; case _latestDateTime
		case maximumQuantity
		case maximumStringLength; case _maximumStringLength
		case minimumQuantity
		case minimumStringLength; case _minimumStringLength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.anyValueAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .anyValueAllowed, auxiliaryKey: ._anyValueAllowed)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.conditional = try CodeableConcept(from: _container, forKeyIfPresent: .conditional)
		self.earliestDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .earliestDateTime, auxiliaryKey: ._earliestDateTime)
		self.expectedUnitsValueSet = try Reference(from: _container, forKeyIfPresent: .expectedUnitsValueSet)
		self.expectedValueSet = try Reference(from: _container, forKeyIfPresent: .expectedValueSet)
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.latestDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .latestDateTime, auxiliaryKey: ._latestDateTime)
		self.maximumQuantity = try Quantity(from: _container, forKeyIfPresent: .maximumQuantity)
		self.maximumStringLength = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maximumStringLength, auxiliaryKey: ._maximumStringLength)
		self.minimumQuantity = try Quantity(from: _container, forKeyIfPresent: .minimumQuantity)
		self.minimumStringLength = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .minimumStringLength, auxiliaryKey: ._minimumStringLength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try anyValueAllowed?.encode(on: &_container, forKey: .anyValueAllowed, auxiliaryKey: ._anyValueAllowed)
		try code?.encode(on: &_container, forKey: .code)
		try conditional?.encode(on: &_container, forKey: .conditional)
		try earliestDateTime?.encode(on: &_container, forKey: .earliestDateTime, auxiliaryKey: ._earliestDateTime)
		try expectedUnitsValueSet?.encode(on: &_container, forKey: .expectedUnitsValueSet)
		try expectedValueSet?.encode(on: &_container, forKey: .expectedValueSet)
		try expression?.encode(on: &_container, forKey: .expression)
		try latestDateTime?.encode(on: &_container, forKey: .latestDateTime, auxiliaryKey: ._latestDateTime)
		try maximumQuantity?.encode(on: &_container, forKey: .maximumQuantity)
		try maximumStringLength?.encode(on: &_container, forKey: .maximumStringLength, auxiliaryKey: ._maximumStringLength)
		try minimumQuantity?.encode(on: &_container, forKey: .minimumQuantity)
		try minimumStringLength?.encode(on: &_container, forKey: .minimumStringLength, auxiliaryKey: ._minimumStringLength)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableConstraint else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return anyValueAllowed == _other.anyValueAllowed
		    && code == _other.code
		    && conditional == _other.conditional
		    && earliestDateTime == _other.earliestDateTime
		    && expectedUnitsValueSet == _other.expectedUnitsValueSet
		    && expectedValueSet == _other.expectedValueSet
		    && expression == _other.expression
		    && latestDateTime == _other.latestDateTime
		    && maximumQuantity == _other.maximumQuantity
		    && maximumStringLength == _other.maximumStringLength
		    && minimumQuantity == _other.minimumQuantity
		    && minimumStringLength == _other.minimumStringLength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(anyValueAllowed)
		hasher.combine(code)
		hasher.combine(conditional)
		hasher.combine(earliestDateTime)
		hasher.combine(expectedUnitsValueSet)
		hasher.combine(expectedValueSet)
		hasher.combine(expression)
		hasher.combine(latestDateTime)
		hasher.combine(maximumQuantity)
		hasher.combine(maximumStringLength)
		hasher.combine(minimumQuantity)
		hasher.combine(minimumStringLength)
	}
}

/**
 How the data element (value of the variable) is found.
 
 How the data element is organized and where the data element (expressing the value of the variable) is found in the
 dataset.
 */
open class EvidenceVariableDataStorage: BackboneElement {
	
	/// Type of data used to express value of the variable
	public var datatype: CodeableConcept?
	
	/// Where to find the data element in the dataset
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Character(s) separating values in a string-based list
	public var delimiter: FHIRPrimitive<FHIRString>?
	
	/// None
	public var component: [EvidenceVariableDataStorage]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		component: [EvidenceVariableDataStorage]? = nil,
		datatype: CodeableConcept? = nil,
		delimiter: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
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
		case path; case _path
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try [EvidenceVariableDataStorage](from: _container, forKeyIfPresent: .component)
		self.datatype = try CodeableConcept(from: _container, forKeyIfPresent: .datatype)
		self.delimiter = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .delimiter, auxiliaryKey: ._delimiter)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component?.encode(on: &_container, forKey: .component)
		try datatype?.encode(on: &_container, forKey: .datatype)
		try delimiter?.encode(on: &_container, forKey: .delimiter, auxiliaryKey: ._delimiter)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableDataStorage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return component == _other.component
		    && datatype == _other.datatype
		    && delimiter == _other.delimiter
		    && path == _other.path
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(component)
		hasher.combine(datatype)
		hasher.combine(delimiter)
		hasher.combine(path)
	}
}

/**
 Further specification of the definition.
 */
open class EvidenceVariableDefinitionModifier: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case expression(Expression)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
		case relativeTime(RelativeTime)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Attribute of the definition
	public var code: CodeableConcept
	
	/// Specification of the definition attribute
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueExpression) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueRelativeTime) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueExpression, CodingKeys.valuePeriod, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueReference, CodingKeys.valueRelativeTime, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valueRelativeTime = try RelativeTime(from: _container, forKeyIfPresent: .valueRelativeTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelativeTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relativeTime(valueRelativeTime)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		
			switch value {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			case .relativeTime(let _value):
				try _value.encode(on: &_container, forKey: .valueRelativeTime)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .valueExpression)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableDefinitionModifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Relationships to other Resources.
 
 Relationships that this EvidenceVariable has with other FHIR or non-FHIR resources that already exist.
 */
open class EvidenceVariableRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case attachment(Attachment)
		case canonical(FHIRPrimitive<Canonical>)
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of | summarizes
	public var type: CodeableConcept
	
	/// The artifact that is related to this EvidenceVariable
	/// One of `target[x]`
	public var target: TargetX
	
	/// Designated initializer taking all required properties
	public init(target: TargetX, type: CodeableConcept) {
		self.target = target
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: TargetX,
		type: CodeableConcept
	) {
		self.init(target: target, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case targetAttachment
		case targetCanonical; case _targetCanonical
		case targetMarkdown; case _targetMarkdown
		case targetReference
		case targetUri; case _targetUri
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.targetAttachment) || _container.contains(CodingKeys.targetCanonical) || _container.contains(CodingKeys.targetMarkdown) || _container.contains(CodingKeys.targetReference) || _container.contains(CodingKeys.targetUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.targetAttachment, CodingKeys.targetCanonical, CodingKeys.targetMarkdown, CodingKeys.targetReference, CodingKeys.targetUri], debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		
		// Decode all our properties
		var _t_target: TargetX? = nil
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetAttachment, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .attachment(targetAttachment)
		}
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetCanonical, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .canonical(targetCanonical)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetMarkdown, auxiliaryKey: ._targetMarkdown) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetMarkdown, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .markdown(targetMarkdown)
		}
		self.target = _t_target!
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch target {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .targetAttachment)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .targetMarkdown, auxiliaryKey: ._targetMarkdown)
			}
		
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableRelatesTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(target)
		hasher.combine(type)
	}
}
