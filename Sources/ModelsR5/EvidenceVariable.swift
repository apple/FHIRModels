//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
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
	
	/// The status of this evidence variable. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Why this EvidenceVariable is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the resource was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the resource was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the resource is expected to be used
	public var effectivePeriod: Period?
	
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
	
	/// Actual or conceptual
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// A defining factor of the EvidenceVariable
	public var characteristic: [EvidenceVariableCharacteristic]?
	
	/// The method of handling in statistical analysis.
	public var handling: FHIRPrimitive<EvidenceVariableHandling>?
	
	/// A grouping for ordinal or polychotomous variables
	public var category: [EvidenceVariableCategory]?
	
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
		characteristic: [EvidenceVariableCharacteristic]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		handling: FHIRPrimitive<EvidenceVariableHandling>? = nil,
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
		shortTitle: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
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
		self.characteristic = characteristic
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
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
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.text = text
		self.title = title
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
		case characteristic
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case handling; case _handling
		case identifier
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case note
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case title; case _title
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
		self.characteristic = try [EvidenceVariableCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.handling = try FHIRPrimitive<EvidenceVariableHandling>(from: _container, forKeyIfPresent: .handling, auxiliaryKey: ._handling)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
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
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try handling?.encode(on: &_container, forKey: .handling, auxiliaryKey: ._handling)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
		    && characteristic == _other.characteristic
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && handling == _other.handling
		    && identifier == _other.identifier
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && note == _other.note
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && shortTitle == _other.shortTitle
		    && status == _other.status
		    && title == _other.title
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
		hasher.combine(characteristic)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(handling)
		hasher.combine(identifier)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(shortTitle)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 A grouping for ordinal or polychotomous variables.
 */
open class EvidenceVariableCategory: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
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
 A defining factor of the EvidenceVariable.
 
 A defining factor of the EvidenceVariable. Multiple characteristics are applied with "and" semantics.
 */
open class EvidenceVariableCharacteristic: BackboneElement {
	
	/// All possible types for "duration[x]"
	public enum DurationX: Hashable {
		case quantity(Quantity)
		case range(Range)
	}
	
	/// All possible types for "instances[x]"
	public enum InstancesX: Hashable {
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Label for internal linking
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Whether the characteristic is an inclusion criterion or exclusion criterion
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Defines the characteristic (without using type and value) by a Reference
	public var definitionReference: Reference?
	
	/// Defines the characteristic (without using type and value) by a Canonical
	public var definitionCanonical: FHIRPrimitive<Canonical>?
	
	/// Defines the characteristic (without using type and value) by a CodeableConcept
	public var definitionCodeableConcept: CodeableConcept?
	
	/// Defines the characteristic (without using type and value) by an expression
	public var definitionExpression: Expression?
	
	/// Defines the characteristic (without using type and value) by an id
	public var definitionId: FHIRPrimitive<FHIRString>?
	
	/// Defines the characteristic using type and value
	public var definitionByTypeAndValue: EvidenceVariableCharacteristicDefinitionByTypeAndValue?
	
	/// Used to specify how two or more characteristics are combined
	public var definitionByCombination: EvidenceVariableCharacteristicDefinitionByCombination?
	
	/// Number of occurrences meeting the characteristic
	/// One of `instances[x]`
	public var instances: InstancesX?
	
	/// Length of time in which the characteristic is met
	/// One of `duration[x]`
	public var duration: DurationX?
	
	/// Timing in which the characteristic is determined
	public var timeFromEvent: [EvidenceVariableCharacteristicTimeFromEvent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		definitionByCombination: EvidenceVariableCharacteristicDefinitionByCombination? = nil,
		definitionByTypeAndValue: EvidenceVariableCharacteristicDefinitionByTypeAndValue? = nil,
		definitionCanonical: FHIRPrimitive<Canonical>? = nil,
		definitionCodeableConcept: CodeableConcept? = nil,
		definitionExpression: Expression? = nil,
		definitionId: FHIRPrimitive<FHIRString>? = nil,
		definitionReference: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		duration: DurationX? = nil,
		exclude: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instances: InstancesX? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		timeFromEvent: [EvidenceVariableCharacteristicTimeFromEvent]? = nil
	) {
		self.init()
		self.definitionByCombination = definitionByCombination
		self.definitionByTypeAndValue = definitionByTypeAndValue
		self.definitionCanonical = definitionCanonical
		self.definitionCodeableConcept = definitionCodeableConcept
		self.definitionExpression = definitionExpression
		self.definitionId = definitionId
		self.definitionReference = definitionReference
		self.description_fhir = description_fhir
		self.duration = duration
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.instances = instances
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.note = note
		self.timeFromEvent = timeFromEvent
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definitionByCombination
		case definitionByTypeAndValue
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case definitionExpression
		case definitionId; case _definitionId
		case definitionReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case durationQuantity
		case durationRange
		case exclude; case _exclude
		case instancesQuantity
		case instancesRange
		case linkId; case _linkId
		case note
		case timeFromEvent
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definitionByCombination = try EvidenceVariableCharacteristicDefinitionByCombination(from: _container, forKeyIfPresent: .definitionByCombination)
		self.definitionByTypeAndValue = try EvidenceVariableCharacteristicDefinitionByTypeAndValue(from: _container, forKeyIfPresent: .definitionByTypeAndValue)
		self.definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		self.definitionCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .definitionCodeableConcept)
		self.definitionExpression = try Expression(from: _container, forKeyIfPresent: .definitionExpression)
		self.definitionId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definitionId, auxiliaryKey: ._definitionId)
		self.definitionReference = try Reference(from: _container, forKeyIfPresent: .definitionReference)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_duration: DurationX? = nil
		if let durationQuantity = try Quantity(from: _container, forKeyIfPresent: .durationQuantity) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationQuantity, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .quantity(durationQuantity)
		}
		if let durationRange = try Range(from: _container, forKeyIfPresent: .durationRange) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationRange, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .range(durationRange)
		}
		self.duration = _t_duration
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		var _t_instances: InstancesX? = nil
		if let instancesQuantity = try Quantity(from: _container, forKeyIfPresent: .instancesQuantity) {
			if _t_instances != nil {
				throw DecodingError.dataCorruptedError(forKey: .instancesQuantity, in: _container, debugDescription: "More than one value provided for \"instances\"")
			}
			_t_instances = .quantity(instancesQuantity)
		}
		if let instancesRange = try Range(from: _container, forKeyIfPresent: .instancesRange) {
			if _t_instances != nil {
				throw DecodingError.dataCorruptedError(forKey: .instancesRange, in: _container, debugDescription: "More than one value provided for \"instances\"")
			}
			_t_instances = .range(instancesRange)
		}
		self.instances = _t_instances
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.timeFromEvent = try [EvidenceVariableCharacteristicTimeFromEvent](from: _container, forKeyIfPresent: .timeFromEvent)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definitionByCombination?.encode(on: &_container, forKey: .definitionByCombination)
		try definitionByTypeAndValue?.encode(on: &_container, forKey: .definitionByTypeAndValue)
		try definitionCanonical?.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		try definitionCodeableConcept?.encode(on: &_container, forKey: .definitionCodeableConcept)
		try definitionExpression?.encode(on: &_container, forKey: .definitionExpression)
		try definitionId?.encode(on: &_container, forKey: .definitionId, auxiliaryKey: ._definitionId)
		try definitionReference?.encode(on: &_container, forKey: .definitionReference)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = duration {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .durationQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .durationRange)
			}
		}
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		if let _enum = instances {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .instancesQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .instancesRange)
			}
		}
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try note?.encode(on: &_container, forKey: .note)
		try timeFromEvent?.encode(on: &_container, forKey: .timeFromEvent)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definitionByCombination == _other.definitionByCombination
		    && definitionByTypeAndValue == _other.definitionByTypeAndValue
		    && definitionCanonical == _other.definitionCanonical
		    && definitionCodeableConcept == _other.definitionCodeableConcept
		    && definitionExpression == _other.definitionExpression
		    && definitionId == _other.definitionId
		    && definitionReference == _other.definitionReference
		    && description_fhir == _other.description_fhir
		    && duration == _other.duration
		    && exclude == _other.exclude
		    && instances == _other.instances
		    && linkId == _other.linkId
		    && note == _other.note
		    && timeFromEvent == _other.timeFromEvent
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definitionByCombination)
		hasher.combine(definitionByTypeAndValue)
		hasher.combine(definitionCanonical)
		hasher.combine(definitionCodeableConcept)
		hasher.combine(definitionExpression)
		hasher.combine(definitionId)
		hasher.combine(definitionReference)
		hasher.combine(description_fhir)
		hasher.combine(duration)
		hasher.combine(exclude)
		hasher.combine(instances)
		hasher.combine(linkId)
		hasher.combine(note)
		hasher.combine(timeFromEvent)
	}
}

/**
 Used to specify how two or more characteristics are combined.
 
 Defines the characteristic as a combination of two or more characteristics.
 */
open class EvidenceVariableCharacteristicDefinitionByCombination: BackboneElement {
	
	/// Used to specify if two or more characteristics are combined with OR or AND.
	public var code: FHIRPrimitive<CharacteristicCombination>
	
	/// Provides the value of "n" when "at-least" or "at-most" codes are used
	public var threshold: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// A defining factor of the characteristic
	public var characteristic: [EvidenceVariableCharacteristic]
	
	/// Designated initializer taking all required properties
	public init(characteristic: [EvidenceVariableCharacteristic], code: FHIRPrimitive<CharacteristicCombination>) {
		self.characteristic = characteristic
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		characteristic: [EvidenceVariableCharacteristic],
		code: FHIRPrimitive<CharacteristicCombination>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		threshold: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.init(characteristic: characteristic, code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.threshold = threshold
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristic
		case code; case _code
		case threshold; case _threshold
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.characteristic = try [EvidenceVariableCharacteristic](from: _container, forKey: .characteristic)
		self.code = try FHIRPrimitive<CharacteristicCombination>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.threshold = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .threshold, auxiliaryKey: ._threshold)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try characteristic.encode(on: &_container, forKey: .characteristic)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try threshold?.encode(on: &_container, forKey: .threshold, auxiliaryKey: ._threshold)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCharacteristicDefinitionByCombination else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return characteristic == _other.characteristic
		    && code == _other.code
		    && threshold == _other.threshold
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(characteristic)
		hasher.combine(code)
		hasher.combine(threshold)
	}
}

/**
 Defines the characteristic using type and value.
 
 Defines the characteristic using both a type and value[x] elements.
 */
open class EvidenceVariableCharacteristicDefinitionByTypeAndValue: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case id(FHIRPrimitive<FHIRString>)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
	}
	
	/// Expresses the type of characteristic
	public var type: CodeableConcept
	
	/// Method for how the characteristic value was determined
	public var method: [CodeableConcept]?
	
	/// Device used for determining characteristic
	public var device: Reference?
	
	/// Defines the characteristic when coupled with characteristic.type
	/// One of `value[x]`
	public var value: ValueX
	
	/// Reference point for valueQuantity or valueRange
	public var offset: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		device: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		offset: CodeableConcept? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.init(type: type, value: value)
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.offset = offset
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case device
		case method
		case offset
		case type
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueId; case _valueId
		case valueQuantity
		case valueRange
		case valueReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueId) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueId, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueReference], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.method = try [CodeableConcept](from: _container, forKeyIfPresent: .method)
		self.offset = try CodeableConcept(from: _container, forKeyIfPresent: .offset)
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try device?.encode(on: &_container, forKey: .device)
		try method?.encode(on: &_container, forKey: .method)
		try offset?.encode(on: &_container, forKey: .offset)
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCharacteristicDefinitionByTypeAndValue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return device == _other.device
		    && method == _other.method
		    && offset == _other.offset
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(device)
		hasher.combine(method)
		hasher.combine(offset)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Timing in which the characteristic is determined.
 */
open class EvidenceVariableCharacteristicTimeFromEvent: BackboneElement {
	
	/// All possible types for "event[x]"
	public enum EventX: Hashable {
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case id(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// Human readable description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// The event used as a base point (reference point) in time
	/// One of `event[x]`
	public var event: EventX?
	
	/// Used to express the observation at a defined amount of time before or after the event
	public var quantity: Quantity?
	
	/// Used to express the observation within a period before and/or after the event
	public var range: Range?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		event: EventX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		quantity: Quantity? = nil,
		range: Range? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.quantity = quantity
		self.range = range
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case eventCodeableConcept
		case eventDateTime; case _eventDateTime
		case eventId; case _eventId
		case eventReference
		case note
		case quantity
		case range
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_event: EventX? = nil
		if let eventCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .eventCodeableConcept) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventCodeableConcept, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .codeableConcept(eventCodeableConcept)
		}
		if let eventReference = try Reference(from: _container, forKeyIfPresent: .eventReference) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventReference, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .reference(eventReference)
		}
		if let eventDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .eventDateTime, auxiliaryKey: ._eventDateTime) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventDateTime, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .dateTime(eventDateTime)
		}
		if let eventId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .eventId, auxiliaryKey: ._eventId) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventId, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .id(eventId)
		}
		self.event = _t_event
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = event {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .eventCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .eventReference)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .eventDateTime, auxiliaryKey: ._eventDateTime)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .eventId, auxiliaryKey: ._eventId)
			}
		}
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCharacteristicTimeFromEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && event == _other.event
		    && note == _other.note
		    && quantity == _other.quantity
		    && range == _other.range
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(event)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(range)
	}
}
