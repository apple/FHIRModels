//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
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
 A population, intervention, or exposure definition.
 
 The EvidenceVariable resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
 */
public struct EvidenceVariable: DomainResource {
	
	public static let resourceType: ResourceType = .evidenceVariable
	
	/// When the evidence variable was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// What defines the members of the evidence element
	public var characteristic: [EvidenceVariableCharacteristic]
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the evidence variable is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the evidence variable
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for evidence variable (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the evidence variable was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
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
	
	/// The category of the EvidenceVariable, such as Education, Treatment, Assessment, etc.
	public var topic: [CodeableConcept]?
	
	/// The type of evidence element, a population, an exposure, or an outcome.
	public var type: FHIRPrimitive<EvidenceVariableType>?
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the evidence variable
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		characteristic: [EvidenceVariableCharacteristic],
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
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
		publisher: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		shortTitle: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		type: FHIRPrimitive<EvidenceVariableType>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.characteristic = characteristic
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
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
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.status = status
		self.subtitle = subtitle
		self.text = text
		self.title = title
		self.topic = topic
		self.type = type
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case author
		case characteristic
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
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
		case publisher; case _publisher
		case relatedArtifact
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case subtitle; case _subtitle
		case text
		case title; case _title
		case topic
		case type; case _type
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
		self.characteristic = try [EvidenceVariableCharacteristic](from: _container, forKey: .characteristic)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
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
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try FHIRPrimitive<EvidenceVariableType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
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
		try characteristic.encode(on: &_container, forKey: .characteristic)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
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
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
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
		indirect case dataRequirement(DataRequirement)
		indirect case expression(Expression)
		indirect case reference(Reference)
		indirect case triggerDefinition(TriggerDefinition)
	}
	
	/// All possible types for "participantEffective[x]"
	public enum ParticipantEffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// What code or expression defines members?
	/// One of `definition[x]`
	public var definition: DefinitionX
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Whether the characteristic includes or excludes members
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var groupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What time period do participants cover
	/// One of `participantEffective[x]`
	public var participantEffective: ParticipantEffectiveX?
	
	/// Observation time from study start
	public var timeFromStart: Duration?
	
	/// What code/value pairs define members?
	public var usageContext: [UsageContext]?
	
	/// Designated initializer
	public init(
		definition: DefinitionX,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		exclude: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		groupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		participantEffective: ParticipantEffectiveX? = nil,
		timeFromStart: Duration? = nil,
		usageContext: [UsageContext]? = nil
	) {
		self.definition = definition
		self.description_fhir = description_fhir
		self.exclude = exclude
		self.`extension` = `extension`
		self.groupMeasure = groupMeasure
		self.id = id
		self.modifierExtension = modifierExtension
		self.participantEffective = participantEffective
		self.timeFromStart = timeFromStart
		self.usageContext = usageContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case definitionDataRequirement
		case definitionExpression
		case definitionReference
		case definitionTriggerDefinition
		case description_fhir = "description"; case _description_fhir = "_description"
		case exclude; case _exclude
		case `extension` = "extension"
		case groupMeasure; case _groupMeasure
		case id; case _id
		case modifierExtension
		case participantEffectiveDateTime; case _participantEffectiveDateTime
		case participantEffectiveDuration
		case participantEffectivePeriod
		case participantEffectiveTiming
		case timeFromStart
		case usageContext
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try Self._decodeDefinition(from: _container)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .groupMeasure, auxiliaryKey: ._groupMeasure)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.participantEffective = try Self._decodeParticipantEffective(from: _container)
		self.timeFromStart = try Duration(from: _container, forKeyIfPresent: .timeFromStart)
		self.usageContext = try [UsageContext](from: _container, forKeyIfPresent: .usageContext)
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
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .definitionDataRequirement)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .definitionExpression)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .definitionReference)
		case .triggerDefinition(let _value):
			try _value.encode(on: &_container, forKey: .definitionTriggerDefinition)
		}
		
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupMeasure?.encode(on: &_container, forKey: .groupMeasure, auxiliaryKey: ._groupMeasure)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = participantEffective {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectiveDateTime, auxiliaryKey: ._participantEffectiveDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectiveDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectivePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .participantEffectiveTiming)
		}
		}
		try timeFromStart?.encode(on: &_container, forKey: .timeFromStart)
		try usageContext?.encode(on: &_container, forKey: .usageContext)
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
		if let definitionDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .definitionDataRequirement) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionDataRequirement, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .dataRequirement(definitionDataRequirement)
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
		if let definitionTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .definitionTriggerDefinition) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .triggerDefinition(definitionTriggerDefinition)
		}
		guard let _t_definition else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.definitionTriggerDefinition)
			throw DecodingError.valueNotFound(DefinitionX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"definition\" but have none"))
		}
		return _t_definition
	}
	
	private static func _decodeParticipantEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ParticipantEffectiveX? {
		var _t_participantEffective: ParticipantEffectiveX? = nil
		if let participantEffectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .participantEffectiveDateTime, auxiliaryKey: ._participantEffectiveDateTime) {
			_t_participantEffective = .dateTime(participantEffectiveDateTime)
		}
		if let participantEffectiveDuration = try Duration(from: _container, forKeyIfPresent: .participantEffectiveDuration) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveDuration, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .duration(participantEffectiveDuration)
		}
		if let participantEffectivePeriod = try Period(from: _container, forKeyIfPresent: .participantEffectivePeriod) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectivePeriod, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .period(participantEffectivePeriod)
		}
		if let participantEffectiveTiming = try Timing(from: _container, forKeyIfPresent: .participantEffectiveTiming) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveTiming, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .timing(participantEffectiveTiming)
		}
		return _t_participantEffective
	}
}
