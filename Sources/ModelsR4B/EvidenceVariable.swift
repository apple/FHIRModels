//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
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
	
	/// Actual or conceptual
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// A grouping for ordinal or polychotomous variables
	public var category: [EvidenceVariableCategory]?
	
	/// What defines the members of the evidence element
	public var characteristic: [EvidenceVariableCharacteristic]?
	
	/// Used to specify if two or more characteristics are combined with OR or AND.
	public var characteristicCombination: FHIRPrimitive<CharacteristicCombination>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Used for an outcome to classify.
	public var handling: FHIRPrimitive<EvidenceVariableHandling>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the evidence variable
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this evidence variable (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Title for use in informal contexts
	public var shortTitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this evidence variable. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Subordinate title of the EvidenceVariable
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this evidence variable (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the evidence variable
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		actual: FHIRPrimitive<FHIRBool>? = nil,
		author: [ContactDetail]? = nil,
		category: [EvidenceVariableCategory]? = nil,
		characteristic: [EvidenceVariableCharacteristic]? = nil,
		characteristicCombination: FHIRPrimitive<CharacteristicCombination>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		endorser: [ContactDetail]? = nil,
		`extension`: [Extension]? = nil,
		handling: FHIRPrimitive<EvidenceVariableHandling>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
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
		self.actual = actual
		self.author = author
		self.category = category
		self.characteristic = characteristic
		self.characteristicCombination = characteristicCombination
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.endorser = endorser
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.status = status
		self.subtitle = subtitle
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actual; case _actual
		case author
		case category
		case characteristic
		case characteristicCombination; case _characteristicCombination
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case endorser
		case `extension` = "extension"
		case handling; case _handling
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case note
		case publisher; case _publisher
		case relatedArtifact
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case subtitle; case _subtitle
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.category = try [EvidenceVariableCategory](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [EvidenceVariableCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.characteristicCombination = try FHIRPrimitive<CharacteristicCombination>(from: _container, forKeyIfPresent: .characteristicCombination, auxiliaryKey: ._characteristicCombination)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.handling = try FHIRPrimitive<EvidenceVariableHandling>(from: _container, forKeyIfPresent: .handling, auxiliaryKey: ._handling)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
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
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try characteristicCombination?.encode(on: &_container, forKey: .characteristicCombination, auxiliaryKey: ._characteristicCombination)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try handling?.encode(on: &_container, forKey: .handling, auxiliaryKey: ._handling)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 A grouping for ordinal or polychotomous variables.
 
 A grouping (or set of values) described along with other groupings to specify the set of groupings allowed for the
 variable.
 */
public struct EvidenceVariableCategory: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
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
		return _t_value
	}
}

/**
 What defines the members of the evidence element.
 
 A characteristic that defines the members of the evidence element. Multiple characteristics are applied with "and"
 semantics.
 */
public struct EvidenceVariableCharacteristic: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case expression(Expression)
		indirect case reference(Reference)
	}
	
	/// What code or expression defines members?
	/// One of `definition[x]`
	public var definition: DefinitionX
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Device used for determining characteristic
	public var device: Reference?
	
	/// Whether the characteristic includes or excludes members
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var groupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Method used for describing characteristic
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Observation time from study start
	public var timeFromStart: EvidenceVariableCharacteristicTimeFromStart?
	
	/// Designated initializer
	public init(
		definition: DefinitionX,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		device: Reference? = nil,
		exclude: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		groupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		timeFromStart: EvidenceVariableCharacteristicTimeFromStart? = nil
	) {
		self.definition = definition
		self.description_fhir = description_fhir
		self.device = device
		self.exclude = exclude
		self.`extension` = `extension`
		self.groupMeasure = groupMeasure
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.timeFromStart = timeFromStart
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case definitionExpression
		case definitionReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case device
		case exclude; case _exclude
		case `extension` = "extension"
		case groupMeasure; case _groupMeasure
		case id; case _id
		case method
		case modifierExtension
		case timeFromStart
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try Self._decodeDefinition(from: _container)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .groupMeasure, auxiliaryKey: ._groupMeasure)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.timeFromStart = try EvidenceVariableCharacteristicTimeFromStart(from: _container, forKeyIfPresent: .timeFromStart)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch definition {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .definitionCodeableConcept)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .definitionExpression)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .definitionReference)
		}
		
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try device?.encode(on: &_container, forKey: .device)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupMeasure?.encode(on: &_container, forKey: .groupMeasure, auxiliaryKey: ._groupMeasure)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try timeFromStart?.encode(on: &_container, forKey: .timeFromStart)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDefinition(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DefinitionX {
		var _t_definition: DefinitionX? = nil
		if let definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical) {
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
		if let definitionReference = try Reference(from: _container, forKeyIfPresent: .definitionReference) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionReference, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .reference(definitionReference)
		}
		guard let _t_definition else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.definitionReference)
			throw DecodingError.valueNotFound(DefinitionX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"definition\" but have none"))
		}
		return _t_definition
	}
}

/**
 Observation time from study start.
 
 Indicates duration, period, or point of observation from the participant's study entry.
 */
public struct EvidenceVariableCharacteristicTimeFromStart: BackboneElement {
	
	/// Human readable description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Used to express the observation at a defined amount of time after the study start
	public var quantity: Quantity?
	
	/// Used to express the observation within a period after the study start
	public var range: Range?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		quantity: Quantity? = nil,
		range: Range? = nil
	) {
		self.description_fhir = description_fhir
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case quantity
		case range
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
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
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
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
	}
}
