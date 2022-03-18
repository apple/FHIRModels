//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
//  Copyright 2022 Apple Inc.
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
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class EvidenceVariable: DomainResource {
	
	override open class var resourceType: ResourceType { return .evidenceVariable }
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the evidence variable
	public var identifier: [Identifier]?
	
	/// Business version of the evidence variable
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this evidence variable (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this evidence variable (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Title for use in informal contexts
	public var shortTitle: FHIRPrimitive<FHIRString>?
	
	/// Subordinate title of the EvidenceVariable
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this evidence variable. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the resource was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the resource was last reviewed
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
	
	/// Additional documentation, citations, etc.
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
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		shortTitle: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
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
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.subtitle = subtitle
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
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
		case relatedArtifact
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case subtitle; case _subtitle
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
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
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
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
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
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
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && shortTitle == _other.shortTitle
		    && status == _other.status
		    && subtitle == _other.subtitle
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
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
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(shortTitle)
		hasher.combine(status)
		hasher.combine(subtitle)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
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
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case codeableConcept(CodeableConcept)
		case expression(Expression)
		case id(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// All possible types for "type[x]"
	public enum TypeX: Hashable {
		case codeableConcept(CodeableConcept)
		case id(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case id(FHIRPrimitive<FHIRString>)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
	}
	
	/// Label for internal linking
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Defines the characteristic (without using type and value)
	/// One of `definition[x]`
	public var definition: DefinitionX?
	
	/// Expresses the type of characteristic
	/// One of `type[x]`
	public var type: TypeX?
	
	/// Defines the characteristic when coupled with characteristic.type[x]
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Method used for describing characteristic
	public var method: CodeableConcept?
	
	/// Device used for determining characteristic
	public var device: Reference?
	
	/// Whether the characteristic includes or excludes members
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Reference point for characteristic.valueQuantity
	public var offset: CodeableConcept?
	
	/// Observation time from study specified event
	public var timeFromEvent: [EvidenceVariableCharacteristicTimeFromEvent]?
	
	/// Value or set of values that define the grouping.
	public var groupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Used to specify how two or more characteristics are combined
	public var combination: EvidenceVariableCharacteristicCombination?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		combination: EvidenceVariableCharacteristicCombination? = nil,
		definition: DefinitionX? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		device: Reference? = nil,
		exclude: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		groupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		offset: CodeableConcept? = nil,
		timeFromEvent: [EvidenceVariableCharacteristicTimeFromEvent]? = nil,
		type: TypeX? = nil,
		value: ValueX? = nil
	) {
		self.init()
		self.combination = combination
		self.definition = definition
		self.description_fhir = description_fhir
		self.device = device
		self.exclude = exclude
		self.`extension` = `extension`
		self.groupMeasure = groupMeasure
		self.id = id
		self.linkId = linkId
		self.method = method
		self.modifierExtension = modifierExtension
		self.note = note
		self.offset = offset
		self.timeFromEvent = timeFromEvent
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case combination
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case definitionExpression
		case definitionId; case _definitionId
		case definitionReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case device
		case exclude; case _exclude
		case groupMeasure; case _groupMeasure
		case linkId; case _linkId
		case method
		case note
		case offset
		case timeFromEvent
		case typeCodeableConcept
		case typeId; case _typeId
		case typeReference
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
		
		// Decode all our properties
		self.combination = try EvidenceVariableCharacteristicCombination(from: _container, forKeyIfPresent: .combination)
		var _t_definition: DefinitionX? = nil
		if let definitionReference = try Reference(from: _container, forKeyIfPresent: .definitionReference) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionReference, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .reference(definitionReference)
		}
		if let definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionCanonical, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .canonical(definitionCanonical)
		}
		if let definitionCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .definitionCodeableConcept) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionCodeableConcept, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .codeableConcept(definitionCodeableConcept)
		}
		if let definitionExpression = try Expression(from: _container, forKeyIfPresent: .definitionExpression) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionExpression, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .expression(definitionExpression)
		}
		if let definitionId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definitionId, auxiliaryKey: ._definitionId) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionId, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .id(definitionId)
		}
		self.definition = _t_definition
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.groupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .groupMeasure, auxiliaryKey: ._groupMeasure)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.offset = try CodeableConcept(from: _container, forKeyIfPresent: .offset)
		self.timeFromEvent = try [EvidenceVariableCharacteristicTimeFromEvent](from: _container, forKeyIfPresent: .timeFromEvent)
		var _t_type: TypeX? = nil
		if let typeCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .typeCodeableConcept) {
			if _t_type != nil {
				throw DecodingError.dataCorruptedError(forKey: .typeCodeableConcept, in: _container, debugDescription: "More than one value provided for \"type\"")
			}
			_t_type = .codeableConcept(typeCodeableConcept)
		}
		if let typeReference = try Reference(from: _container, forKeyIfPresent: .typeReference) {
			if _t_type != nil {
				throw DecodingError.dataCorruptedError(forKey: .typeReference, in: _container, debugDescription: "More than one value provided for \"type\"")
			}
			_t_type = .reference(typeReference)
		}
		if let typeId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .typeId, auxiliaryKey: ._typeId) {
			if _t_type != nil {
				throw DecodingError.dataCorruptedError(forKey: .typeId, in: _container, debugDescription: "More than one value provided for \"type\"")
			}
			_t_type = .id(typeId)
		}
		self.type = _t_type
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
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try combination?.encode(on: &_container, forKey: .combination)
		if let _enum = definition {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .definitionReference)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .definitionCodeableConcept)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .definitionExpression)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .definitionId, auxiliaryKey: ._definitionId)
			}
		}
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try device?.encode(on: &_container, forKey: .device)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try groupMeasure?.encode(on: &_container, forKey: .groupMeasure, auxiliaryKey: ._groupMeasure)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try method?.encode(on: &_container, forKey: .method)
		try note?.encode(on: &_container, forKey: .note)
		try offset?.encode(on: &_container, forKey: .offset)
		try timeFromEvent?.encode(on: &_container, forKey: .timeFromEvent)
		if let _enum = type {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .typeCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .typeReference)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .typeId, auxiliaryKey: ._typeId)
			}
		}
		if let _enum = value {
			switch _enum {
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
		}
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
		return combination == _other.combination
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && device == _other.device
		    && exclude == _other.exclude
		    && groupMeasure == _other.groupMeasure
		    && linkId == _other.linkId
		    && method == _other.method
		    && note == _other.note
		    && offset == _other.offset
		    && timeFromEvent == _other.timeFromEvent
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(combination)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(device)
		hasher.combine(exclude)
		hasher.combine(groupMeasure)
		hasher.combine(linkId)
		hasher.combine(method)
		hasher.combine(note)
		hasher.combine(offset)
		hasher.combine(timeFromEvent)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Used to specify how two or more characteristics are combined.
 */
open class EvidenceVariableCharacteristicCombination: BackboneElement {
	
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
		guard let _other = _other as? EvidenceVariableCharacteristicCombination else {
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
 Observation time from study specified event.
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
	
	/// The event used as a base point (reference point) in time
	/// One of `event[x]`
	public var event: EventX?
	
	/// Used to express the observation at a defined amount of time after the study start
	public var quantity: Quantity?
	
	/// Used to express the observation within a period after the study start
	public var range: Range?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
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
