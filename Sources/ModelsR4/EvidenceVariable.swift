//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
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
 A population, intervention, or exposure definition.
 
 The EvidenceVariable resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
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
	
	/// Intended jurisdiction for evidence variable (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the evidence variable was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the evidence variable was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the evidence variable is expected to be used
	public var effectivePeriod: Period?
	
	/// The category of the EvidenceVariable, such as Education, Treatment, Assessment, etc.
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
	
	/// The type of evidence element, a population, an exposure, or an outcome.
	public var type: FHIRPrimitive<EvidenceVariableType>?
	
	/// What defines the members of the evidence element
	public var characteristic: [EvidenceVariableCharacteristic]
	
	/// Designated initializer taking all required properties
	public init(characteristic: [EvidenceVariableCharacteristic], status: FHIRPrimitive<PublicationStatus>) {
		self.characteristic = characteristic
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(characteristic: characteristic, status: status)
		self.approvalDate = approvalDate
		self.author = author
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
		case approvalDate; case _approvalDate
		case author
		case characteristic
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case identifier
		case jurisdiction
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
		case topic
		case type; case _type
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
		self.characteristic = try [EvidenceVariableCharacteristic](from: _container, forKey: .characteristic)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
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
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try FHIRPrimitive<EvidenceVariableType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
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
		try characteristic.encode(on: &_container, forKey: .characteristic)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
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
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		return approvalDate == _other.approvalDate
		    && author == _other.author
		    && characteristic == _other.characteristic
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
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
		    && topic == _other.topic
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(characteristic)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
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
		hasher.combine(topic)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 What defines the members of the evidence element.
 
 A characteristic that defines the members of the evidence element. Multiple characteristics are applied with "and"
 semantics.
 */
open class EvidenceVariableCharacteristic: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case codeableConcept(CodeableConcept)
		case dataRequirement(DataRequirement)
		case expression(Expression)
		case reference(Reference)
		case triggerDefinition(TriggerDefinition)
	}
	
	/// All possible types for "participantEffective[x]"
	public enum ParticipantEffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case duration(Duration)
		case period(Period)
		case timing(Timing)
	}
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// What code or expression defines members?
	/// One of `definition[x]`
	public var definition: DefinitionX
	
	/// What code/value pairs define members?
	public var usageContext: [UsageContext]?
	
	/// Whether the characteristic includes or excludes members
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// What time period do participants cover
	/// One of `participantEffective[x]`
	public var participantEffective: ParticipantEffectiveX?
	
	/// Observation time from study start
	public var timeFromStart: Duration?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var groupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Designated initializer taking all required properties
	public init(definition: DefinitionX) {
		self.definition = definition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: DefinitionX,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							exclude: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							groupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							participantEffective: ParticipantEffectiveX? = nil,
							timeFromStart: Duration? = nil,
							usageContext: [UsageContext]? = nil)
	{
		self.init(definition: definition)
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
		case groupMeasure; case _groupMeasure
		case participantEffectiveDateTime; case _participantEffectiveDateTime
		case participantEffectiveDuration
		case participantEffectivePeriod
		case participantEffectiveTiming
		case timeFromStart
		case usageContext
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.definitionCanonical) || _container.contains(CodingKeys.definitionCodeableConcept) || _container.contains(CodingKeys.definitionDataRequirement) || _container.contains(CodingKeys.definitionExpression) || _container.contains(CodingKeys.definitionReference) || _container.contains(CodingKeys.definitionTriggerDefinition) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.definitionCanonical, CodingKeys.definitionCodeableConcept, CodingKeys.definitionDataRequirement, CodingKeys.definitionExpression, CodingKeys.definitionReference, CodingKeys.definitionTriggerDefinition], debugDescription: "Must have at least one value for \"definition\" but have none"))
		}
		
		// Decode all our properties
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
		if let definitionDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .definitionDataRequirement) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionDataRequirement, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .dataRequirement(definitionDataRequirement)
		}
		if let definitionTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .definitionTriggerDefinition) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .triggerDefinition(definitionTriggerDefinition)
		}
		self.definition = _t_definition!
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.groupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .groupMeasure, auxiliaryKey: ._groupMeasure)
		var _t_participantEffective: ParticipantEffectiveX? = nil
		if let participantEffectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .participantEffectiveDateTime, auxiliaryKey: ._participantEffectiveDateTime) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveDateTime, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .dateTime(participantEffectiveDateTime)
		}
		if let participantEffectivePeriod = try Period(from: _container, forKeyIfPresent: .participantEffectivePeriod) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectivePeriod, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .period(participantEffectivePeriod)
		}
		if let participantEffectiveDuration = try Duration(from: _container, forKeyIfPresent: .participantEffectiveDuration) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveDuration, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .duration(participantEffectiveDuration)
		}
		if let participantEffectiveTiming = try Timing(from: _container, forKeyIfPresent: .participantEffectiveTiming) {
			if _t_participantEffective != nil {
				throw DecodingError.dataCorruptedError(forKey: .participantEffectiveTiming, in: _container, debugDescription: "More than one value provided for \"participantEffective\"")
			}
			_t_participantEffective = .timing(participantEffectiveTiming)
		}
		self.participantEffective = _t_participantEffective
		self.timeFromStart = try Duration(from: _container, forKeyIfPresent: .timeFromStart)
		self.usageContext = try [UsageContext](from: _container, forKeyIfPresent: .usageContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch definition {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .definitionReference)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .definitionCodeableConcept)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .definitionExpression)
			case .dataRequirement(let _value):
				try _value.encode(on: &_container, forKey: .definitionDataRequirement)
			case .triggerDefinition(let _value):
				try _value.encode(on: &_container, forKey: .definitionTriggerDefinition)
			}
		
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try groupMeasure?.encode(on: &_container, forKey: .groupMeasure, auxiliaryKey: ._groupMeasure)
		if let _enum = participantEffective {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .participantEffectiveDateTime, auxiliaryKey: ._participantEffectiveDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .participantEffectivePeriod)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .participantEffectiveDuration)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .participantEffectiveTiming)
			}
		}
		try timeFromStart?.encode(on: &_container, forKey: .timeFromStart)
		try usageContext?.encode(on: &_container, forKey: .usageContext)
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
		return definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && exclude == _other.exclude
		    && groupMeasure == _other.groupMeasure
		    && participantEffective == _other.participantEffective
		    && timeFromStart == _other.timeFromStart
		    && usageContext == _other.usageContext
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(exclude)
		hasher.combine(groupMeasure)
		hasher.combine(participantEffective)
		hasher.combine(timeFromStart)
		hasher.combine(usageContext)
	}
}
