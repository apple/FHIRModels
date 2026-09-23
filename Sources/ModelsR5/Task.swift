//
//  Task.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Task)
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
 A task to be performed.
 */
public struct Task: DomainResource {
	
	public static let resourceType: ResourceType = .task
	
	/// Task Creation Date
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Request fulfilled by this task
	public var basedOn: [Reference]?
	
	/// E.g. "Specimen collected", "IV prepped"
	public var businessStatus: CodeableConcept?
	
	/// Task Type
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Human-readable explanation of task
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// True if Task is prohibiting action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Healthcare event during which this task originated
	public var encounter: Reference?
	
	/// Start and end time of execution
	public var executionPeriod: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What task is acting on
	public var focus: Reference?
	
	/// Beneficiary of the Task
	public var `for`: Reference?
	
	/// Requisition or grouper id
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Task Instance Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Information used to perform task
	public var input: [TaskInput]?
	
	/// Formal definition of task
	public var instantiatesCanonical: FHIRPrimitive<Canonical>?
	
	/// Formal definition of task
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
	public var intent: FHIRPrimitive<FHIRString>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Task Last Modified Date
	public var lastModified: FHIRPrimitive<DateTime>?
	
	/// Where task occurs
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the task
	public var note: [Annotation]?
	
	/// Information produced as part of task
	public var output: [TaskOutput]?
	
	/// Responsible individual
	public var owner: Reference?
	
	/// Composite task
	public var partOf: [Reference]?
	
	/// Who or what performed the task
	public var performer: [TaskPerformer]?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Why task is needed
	public var reason: [CodeableReference]?
	
	/// Key events in history of the Task
	public var relevantHistory: [Reference]?
	
	/// Who should perform Task
	public var requestedPerformer: [CodeableReference]?
	
	/// When the task should be performed
	public var requestedPeriod: Period?
	
	/// Who is asking for task to be done
	public var requester: Reference?
	
	/// Constraints on fulfillment tasks
	public var restriction: TaskRestriction?
	
	/// The current status of the task.
	public var status: FHIRPrimitive<TaskStatus>
	
	/// Reason for current status
	public var statusReason: CodeableReference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		businessStatus: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		encounter: Reference? = nil,
		executionPeriod: Period? = nil,
		`extension`: [Extension]? = nil,
		focus: Reference? = nil,
		`for`: Reference? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		input: [TaskInput]? = nil,
		instantiatesCanonical: FHIRPrimitive<Canonical>? = nil,
		instantiatesUri: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<FHIRString>,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastModified: FHIRPrimitive<DateTime>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		output: [TaskOutput]? = nil,
		owner: Reference? = nil,
		partOf: [Reference]? = nil,
		performer: [TaskPerformer]? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		reason: [CodeableReference]? = nil,
		relevantHistory: [Reference]? = nil,
		requestedPerformer: [CodeableReference]? = nil,
		requestedPeriod: Period? = nil,
		requester: Reference? = nil,
		restriction: TaskRestriction? = nil,
		status: FHIRPrimitive<TaskStatus>,
		statusReason: CodeableReference? = nil,
		text: Narrative? = nil
	) {
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.businessStatus = businessStatus
		self.code = code
		self.contained = contained
		self.description_fhir = description_fhir
		self.doNotPerform = doNotPerform
		self.encounter = encounter
		self.executionPeriod = executionPeriod
		self.`extension` = `extension`
		self.focus = focus
		self.`for` = `for`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.input = input
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.insurance = insurance
		self.intent = intent
		self.language = language
		self.lastModified = lastModified
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.output = output
		self.owner = owner
		self.partOf = partOf
		self.performer = performer
		self.priority = priority
		self.reason = reason
		self.relevantHistory = relevantHistory
		self.requestedPerformer = requestedPerformer
		self.requestedPeriod = requestedPeriod
		self.requester = requester
		self.restriction = restriction
		self.status = status
		self.statusReason = statusReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authoredOn; case _authoredOn
		case basedOn
		case businessStatus
		case code
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case doNotPerform; case _doNotPerform
		case encounter
		case executionPeriod
		case `extension` = "extension"
		case focus
		case `for` = "for"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case input
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case language; case _language
		case lastModified; case _lastModified
		case location
		case meta
		case modifierExtension
		case note
		case output
		case owner
		case partOf
		case performer
		case priority; case _priority
		case reason
		case relevantHistory
		case requestedPerformer
		case requestedPeriod
		case requester
		case restriction
		case status; case _status
		case statusReason
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.businessStatus = try CodeableConcept(from: _container, forKeyIfPresent: .businessStatus)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.executionPeriod = try Period(from: _container, forKeyIfPresent: .executionPeriod)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.`for` = try Reference(from: _container, forKeyIfPresent: .`for`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.input = try [TaskInput](from: _container, forKeyIfPresent: .input)
		self.instantiatesCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastModified = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastModified, auxiliaryKey: ._lastModified)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.output = try [TaskOutput](from: _container, forKeyIfPresent: .output)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [TaskPerformer](from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.requestedPerformer = try [CodeableReference](from: _container, forKeyIfPresent: .requestedPerformer)
		self.requestedPeriod = try Period(from: _container, forKeyIfPresent: .requestedPeriod)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.restriction = try TaskRestriction(from: _container, forKeyIfPresent: .restriction)
		self.status = try FHIRPrimitive<TaskStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableReference(from: _container, forKeyIfPresent: .statusReason)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try businessStatus?.encode(on: &_container, forKey: .businessStatus)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try executionPeriod?.encode(on: &_container, forKey: .executionPeriod)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try `for`?.encode(on: &_container, forKey: .`for`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try input?.encode(on: &_container, forKey: .input)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastModified?.encode(on: &_container, forKey: .lastModified, auxiliaryKey: ._lastModified)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try output?.encode(on: &_container, forKey: .output)
		try owner?.encode(on: &_container, forKey: .owner)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try requestedPerformer?.encode(on: &_container, forKey: .requestedPerformer)
		try requestedPeriod?.encode(on: &_container, forKey: .requestedPeriod)
		try requester?.encode(on: &_container, forKey: .requester)
		try restriction?.encode(on: &_container, forKey: .restriction)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Information used to perform task.
 
 Additional information that may be needed in the execution of the task.
 */
public struct TaskInput: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case age(Age)
		indirect case annotation(Annotation)
		indirect case attachment(Attachment)
		indirect case availability(Availability)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case codeableConcept(CodeableConcept)
		indirect case codeableReference(CodeableReference)
		indirect case coding(Coding)
		indirect case contactDetail(ContactDetail)
		indirect case contactPoint(ContactPoint)
		indirect case count(Count)
		indirect case dataRequirement(DataRequirement)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case distance(Distance)
		indirect case dosage(Dosage)
		indirect case duration(Duration)
		indirect case expression(Expression)
		indirect case extendedContactDetail(ExtendedContactDetail)
		indirect case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		indirect case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case integer64(FHIRInteger64)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case meta(Meta)
		indirect case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		indirect case parameterDefinition(ParameterDefinition)
		indirect case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
		indirect case reference(Reference)
		indirect case relatedArtifact(RelatedArtifact)
		indirect case sampledData(SampledData)
		indirect case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		indirect case timing(Timing)
		indirect case triggerDefinition(TriggerDefinition)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
		case url(FHIRPrimitive<FHIRURI>)
		indirect case usageContext(UsageContext)
		case uuid(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for the input
	public var type: CodeableConcept
	
	/// Content to use in performing the task
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueAvailability
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCanonical; case _valueCanonical
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCodeableReference
		case valueCoding
		case valueContactDetail
		case valueContactPoint
		case valueCount
		case valueDataRequirement
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDosage
		case valueDuration
		case valueExpression
		case valueExtendedContactDetail
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueInteger64
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valueParameterDefinition
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueRatioRange
		case valueReference
		case valueRelatedArtifact
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueTriggerDefinition
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
		case valueUrl; case _valueUrl
		case valueUsageContext
		case valueUuid; case _valueUuid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch value {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .valueAddress)
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .valueAge)
		case .annotation(let _value):
			try _value.encode(on: &_container, forKey: .valueAnnotation)
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .availability(let _value):
			try _value.encode(on: &_container, forKey: .valueAvailability)
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .codeableReference(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableReference)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .contactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueContactDetail)
		case .contactPoint(let _value):
			try _value.encode(on: &_container, forKey: .valueContactPoint)
		case .count(let _value):
			try _value.encode(on: &_container, forKey: .valueCount)
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .valueDataRequirement)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .distance(let _value):
			try _value.encode(on: &_container, forKey: .valueDistance)
		case .dosage(let _value):
			try _value.encode(on: &_container, forKey: .valueDosage)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .valueDuration)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .valueExpression)
		case .extendedContactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueExtendedContactDetail)
		case .humanName(let _value):
			try _value.encode(on: &_container, forKey: .valueHumanName)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .valueIdentifier)
		case .instant(let _value):
			try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .integer64(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger64)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .meta(let _value):
			try _value.encode(on: &_container, forKey: .valueMeta)
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .valueMoney)
		case .oid(let _value):
			try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
		case .parameterDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueParameterDefinition)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .valueRatioRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .relatedArtifact(let _value):
			try _value.encode(on: &_container, forKey: .valueRelatedArtifact)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .valueSampledData)
		case .signature(let _value):
			try _value.encode(on: &_container, forKey: .valueSignature)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .valueTiming)
		case .triggerDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueTriggerDefinition)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
		case .usageContext(let _value):
			try _value.encode(on: &_container, forKey: .valueUsageContext)
		case .uuid(let _value):
			try _value.encode(on: &_container, forKey: .valueUuid, auxiliaryKey: ._valueUuid)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			_t_value = .address(valueAddress)
		}
		if let valueAge = try Age(from: _container, forKeyIfPresent: .valueAge) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAge, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .age(valueAge)
		}
		if let valueAnnotation = try Annotation(from: _container, forKeyIfPresent: .valueAnnotation) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAnnotation, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .annotation(valueAnnotation)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueAvailability = try Availability(from: _container, forKeyIfPresent: .valueAvailability) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAvailability, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .availability(valueAvailability)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueCanonical, auxiliaryKey: ._valueCanonical) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCanonical, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .canonical(valueCanonical)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCodeableReference = try CodeableReference(from: _container, forKeyIfPresent: .valueCodeableReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableReference(valueCodeableReference)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueContactDetail = try ContactDetail(from: _container, forKeyIfPresent: .valueContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactDetail(valueContactDetail)
		}
		if let valueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .valueContactPoint) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactPoint, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactPoint(valueContactPoint)
		}
		if let valueCount = try Count(from: _container, forKeyIfPresent: .valueCount) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCount, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .count(valueCount)
		}
		if let valueDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .valueDataRequirement) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDataRequirement, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dataRequirement(valueDataRequirement)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDosage = try Dosage(from: _container, forKeyIfPresent: .valueDosage) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDosage, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dosage(valueDosage)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valueExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .valueExtendedContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .extendedContactDetail(valueExtendedContactDetail)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .valueInstant, auxiliaryKey: ._valueInstant) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInstant, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .instant(valueInstant)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueInteger64 = try FHIRInteger64(from: _container, forKeyIfPresent: .valueInteger64) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger64, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer64(valueInteger64)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valueParameterDefinition = try ParameterDefinition(from: _container, forKeyIfPresent: .valueParameterDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueParameterDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .parameterDefinition(valueParameterDefinition)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
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
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueRatioRange = try RatioRange(from: _container, forKeyIfPresent: .valueRatioRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatioRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratioRange(valueRatioRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueRelatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .valueRelatedArtifact) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelatedArtifact, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relatedArtifact(valueRelatedArtifact)
		}
		if let valueSampledData = try SampledData(from: _container, forKeyIfPresent: .valueSampledData) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSampledData, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .sampledData(valueSampledData)
		}
		if let valueSignature = try Signature(from: _container, forKeyIfPresent: .valueSignature) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSignature, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .signature(valueSignature)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .valueTriggerDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .triggerDefinition(valueTriggerDefinition)
		}
		if let valueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .unsignedInt(valueUnsignedInt)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUrl, auxiliaryKey: ._valueUrl) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUrl, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .url(valueUrl)
		}
		if let valueUsageContext = try UsageContext(from: _container, forKeyIfPresent: .valueUsageContext) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUsageContext, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .usageContext(valueUsageContext)
		}
		if let valueUuid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUuid, auxiliaryKey: ._valueUuid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUuid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uuid(valueUuid)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUuid)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Information produced as part of task.
 
 Outputs produced by the Task.
 */
public struct TaskOutput: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case age(Age)
		indirect case annotation(Annotation)
		indirect case attachment(Attachment)
		indirect case availability(Availability)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case codeableConcept(CodeableConcept)
		indirect case codeableReference(CodeableReference)
		indirect case coding(Coding)
		indirect case contactDetail(ContactDetail)
		indirect case contactPoint(ContactPoint)
		indirect case count(Count)
		indirect case dataRequirement(DataRequirement)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case distance(Distance)
		indirect case dosage(Dosage)
		indirect case duration(Duration)
		indirect case expression(Expression)
		indirect case extendedContactDetail(ExtendedContactDetail)
		indirect case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		indirect case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case integer64(FHIRInteger64)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case meta(Meta)
		indirect case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		indirect case parameterDefinition(ParameterDefinition)
		indirect case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
		indirect case reference(Reference)
		indirect case relatedArtifact(RelatedArtifact)
		indirect case sampledData(SampledData)
		indirect case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		indirect case timing(Timing)
		indirect case triggerDefinition(TriggerDefinition)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
		case url(FHIRPrimitive<FHIRURI>)
		indirect case usageContext(UsageContext)
		case uuid(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for output
	public var type: CodeableConcept
	
	/// Result of output
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueAvailability
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCanonical; case _valueCanonical
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCodeableReference
		case valueCoding
		case valueContactDetail
		case valueContactPoint
		case valueCount
		case valueDataRequirement
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDosage
		case valueDuration
		case valueExpression
		case valueExtendedContactDetail
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueInteger64
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valueParameterDefinition
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueRatioRange
		case valueReference
		case valueRelatedArtifact
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueTriggerDefinition
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
		case valueUrl; case _valueUrl
		case valueUsageContext
		case valueUuid; case _valueUuid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch value {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .valueAddress)
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .valueAge)
		case .annotation(let _value):
			try _value.encode(on: &_container, forKey: .valueAnnotation)
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .availability(let _value):
			try _value.encode(on: &_container, forKey: .valueAvailability)
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .codeableReference(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableReference)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .contactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueContactDetail)
		case .contactPoint(let _value):
			try _value.encode(on: &_container, forKey: .valueContactPoint)
		case .count(let _value):
			try _value.encode(on: &_container, forKey: .valueCount)
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .valueDataRequirement)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .distance(let _value):
			try _value.encode(on: &_container, forKey: .valueDistance)
		case .dosage(let _value):
			try _value.encode(on: &_container, forKey: .valueDosage)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .valueDuration)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .valueExpression)
		case .extendedContactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueExtendedContactDetail)
		case .humanName(let _value):
			try _value.encode(on: &_container, forKey: .valueHumanName)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .valueIdentifier)
		case .instant(let _value):
			try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .integer64(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger64)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .meta(let _value):
			try _value.encode(on: &_container, forKey: .valueMeta)
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .valueMoney)
		case .oid(let _value):
			try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
		case .parameterDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueParameterDefinition)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .valueRatioRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .relatedArtifact(let _value):
			try _value.encode(on: &_container, forKey: .valueRelatedArtifact)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .valueSampledData)
		case .signature(let _value):
			try _value.encode(on: &_container, forKey: .valueSignature)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .valueTiming)
		case .triggerDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueTriggerDefinition)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
		case .usageContext(let _value):
			try _value.encode(on: &_container, forKey: .valueUsageContext)
		case .uuid(let _value):
			try _value.encode(on: &_container, forKey: .valueUuid, auxiliaryKey: ._valueUuid)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			_t_value = .address(valueAddress)
		}
		if let valueAge = try Age(from: _container, forKeyIfPresent: .valueAge) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAge, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .age(valueAge)
		}
		if let valueAnnotation = try Annotation(from: _container, forKeyIfPresent: .valueAnnotation) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAnnotation, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .annotation(valueAnnotation)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueAvailability = try Availability(from: _container, forKeyIfPresent: .valueAvailability) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAvailability, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .availability(valueAvailability)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueCanonical, auxiliaryKey: ._valueCanonical) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCanonical, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .canonical(valueCanonical)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCodeableReference = try CodeableReference(from: _container, forKeyIfPresent: .valueCodeableReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableReference(valueCodeableReference)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueContactDetail = try ContactDetail(from: _container, forKeyIfPresent: .valueContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactDetail(valueContactDetail)
		}
		if let valueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .valueContactPoint) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactPoint, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactPoint(valueContactPoint)
		}
		if let valueCount = try Count(from: _container, forKeyIfPresent: .valueCount) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCount, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .count(valueCount)
		}
		if let valueDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .valueDataRequirement) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDataRequirement, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dataRequirement(valueDataRequirement)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDosage = try Dosage(from: _container, forKeyIfPresent: .valueDosage) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDosage, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dosage(valueDosage)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valueExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .valueExtendedContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .extendedContactDetail(valueExtendedContactDetail)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .valueInstant, auxiliaryKey: ._valueInstant) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInstant, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .instant(valueInstant)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueInteger64 = try FHIRInteger64(from: _container, forKeyIfPresent: .valueInteger64) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger64, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer64(valueInteger64)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valueParameterDefinition = try ParameterDefinition(from: _container, forKeyIfPresent: .valueParameterDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueParameterDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .parameterDefinition(valueParameterDefinition)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
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
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueRatioRange = try RatioRange(from: _container, forKeyIfPresent: .valueRatioRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatioRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratioRange(valueRatioRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueRelatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .valueRelatedArtifact) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelatedArtifact, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relatedArtifact(valueRelatedArtifact)
		}
		if let valueSampledData = try SampledData(from: _container, forKeyIfPresent: .valueSampledData) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSampledData, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .sampledData(valueSampledData)
		}
		if let valueSignature = try Signature(from: _container, forKeyIfPresent: .valueSignature) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSignature, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .signature(valueSignature)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .valueTriggerDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .triggerDefinition(valueTriggerDefinition)
		}
		if let valueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .unsignedInt(valueUnsignedInt)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUrl, auxiliaryKey: ._valueUrl) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUrl, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .url(valueUrl)
		}
		if let valueUsageContext = try UsageContext(from: _container, forKeyIfPresent: .valueUsageContext) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUsageContext, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .usageContext(valueUsageContext)
		}
		if let valueUuid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUuid, auxiliaryKey: ._valueUuid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUuid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uuid(valueUuid)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUuid)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Who or what performed the task.
 
 The entity who performed the requested task.
 */
public struct TaskPerformer: BackboneElement {
	
	/// Who performed the task
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Constraints on fulfillment tasks.
 
 If the Task.focus is a request resource and the task is seeking fulfillment (i.e. is asking for the request to be
 actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
 */
public struct TaskRestriction: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// When fulfillment is sought
	public var period: Period?
	
	/// For whom is fulfillment sought?
	public var recipient: [Reference]?
	
	/// How many times to repeat
	public var repetitions: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		recipient: [Reference]? = nil,
		repetitions: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.recipient = recipient
		self.repetitions = repetitions
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case recipient
		case repetitions; case _repetitions
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.repetitions = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .repetitions, auxiliaryKey: ._repetitions)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try repetitions?.encode(on: &_container, forKey: .repetitions, auxiliaryKey: ._repetitions)
	}
}
