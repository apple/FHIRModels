//
//  Task.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Task)
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
 A task to be performed.
 */
open class Task: DomainResource {
	
	override open class var resourceType: ResourceType { return .task }
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Task Instance Identifier
	public var identifier: [Identifier]?
	
	/// Formal definition of task
	/// One of `definition[x]`
	public var definition: DefinitionX?
	
	/// Request fulfilled by this task
	public var basedOn: [Reference]?
	
	/// Requisition or grouper id
	public var groupIdentifier: Identifier?
	
	/// Composite task
	public var partOf: [Reference]?
	
	/// The current status of the task.
	public var status: FHIRPrimitive<TaskStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// E.g. "Specimen collected", "IV prepped"
	public var businessStatus: CodeableConcept?
	
	/// Indicates the "level" of actionability associated with the Task.  I.e. Is this a proposed task, a planned task,
	/// an actionable task, etc.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Indicates how quickly the Task should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Task Type
	public var code: CodeableConcept?
	
	/// Human-readable explanation of task
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// What task is acting on
	public var focus: Reference?
	
	/// Beneficiary of the Task
	public var `for`: Reference?
	
	/// Healthcare event during which this task originated
	public var context: Reference?
	
	/// Start and end time of execution
	public var executionPeriod: Period?
	
	/// Task Creation Date
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Task Last Modified Date
	public var lastModified: FHIRPrimitive<DateTime>?
	
	/// Who is asking for task to be done
	public var requester: TaskRequester?
	
	/// requester | dispatcher | scheduler | performer | monitor | manager | acquirer | reviewer
	public var performerType: [CodeableConcept]?
	
	/// Responsible individual
	public var owner: Reference?
	
	/// Why task is needed
	public var reason: CodeableConcept?
	
	/// Comments made about the task
	public var note: [Annotation]?
	
	/// Key events in history of the Task
	public var relevantHistory: [Reference]?
	
	/// Constraints on fulfillment tasks
	public var restriction: TaskRestriction?
	
	/// Information used to perform task
	public var input: [TaskInput]?
	
	/// Information produced as part of task
	public var output: [TaskOutput]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<RequestIntent>, status: FHIRPrimitive<TaskStatus>) {
		self.intent = intent
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							businessStatus: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: DefinitionX? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							executionPeriod: Period? = nil,
							`extension`: [Extension]? = nil,
							focus: Reference? = nil,
							`for`: Reference? = nil,
							groupIdentifier: Identifier? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							input: [TaskInput]? = nil,
							intent: FHIRPrimitive<RequestIntent>,
							language: FHIRPrimitive<FHIRString>? = nil,
							lastModified: FHIRPrimitive<DateTime>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							output: [TaskOutput]? = nil,
							owner: Reference? = nil,
							partOf: [Reference]? = nil,
							performerType: [CodeableConcept]? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reason: CodeableConcept? = nil,
							relevantHistory: [Reference]? = nil,
							requester: TaskRequester? = nil,
							restriction: TaskRestriction? = nil,
							status: FHIRPrimitive<TaskStatus>,
							statusReason: CodeableConcept? = nil,
							text: Narrative? = nil)
	{
		self.init(intent: intent, status: status)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.businessStatus = businessStatus
		self.code = code
		self.contained = contained
		self.context = context
		self.definition = definition
		self.description_fhir = description_fhir
		self.executionPeriod = executionPeriod
		self.`extension` = `extension`
		self.focus = focus
		self.`for` = `for`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.input = input
		self.language = language
		self.lastModified = lastModified
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.output = output
		self.owner = owner
		self.partOf = partOf
		self.performerType = performerType
		self.priority = priority
		self.reason = reason
		self.relevantHistory = relevantHistory
		self.requester = requester
		self.restriction = restriction
		self.statusReason = statusReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case businessStatus
		case code
		case context
		case definitionReference
		case definitionUri; case _definitionUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case executionPeriod
		case focus
		case `for` = "for"
		case groupIdentifier
		case identifier
		case input
		case intent; case _intent
		case lastModified; case _lastModified
		case note
		case output
		case owner
		case partOf
		case performerType
		case priority; case _priority
		case reason
		case relevantHistory
		case requester
		case restriction
		case status; case _status
		case statusReason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.businessStatus = try CodeableConcept(from: _container, forKeyIfPresent: .businessStatus)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		var _t_definition: DefinitionX? = nil
		if let definitionUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definitionUri, auxiliaryKey: ._definitionUri) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionUri, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .uri(definitionUri)
		}
		if let definitionReference = try Reference(from: _container, forKeyIfPresent: .definitionReference) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionReference, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .reference(definitionReference)
		}
		self.definition = _t_definition
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.executionPeriod = try Period(from: _container, forKeyIfPresent: .executionPeriod)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.`for` = try Reference(from: _container, forKeyIfPresent: .`for`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.input = try [TaskInput](from: _container, forKeyIfPresent: .input)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.lastModified = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastModified, auxiliaryKey: ._lastModified)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.output = try [TaskOutput](from: _container, forKeyIfPresent: .output)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performerType = try [CodeableConcept](from: _container, forKeyIfPresent: .performerType)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.requester = try TaskRequester(from: _container, forKeyIfPresent: .requester)
		self.restriction = try TaskRestriction(from: _container, forKeyIfPresent: .restriction)
		self.status = try FHIRPrimitive<TaskStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try businessStatus?.encode(on: &_container, forKey: .businessStatus)
		try code?.encode(on: &_container, forKey: .code)
		try context?.encode(on: &_container, forKey: .context)
		if let _enum = definition {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .definitionUri, auxiliaryKey: ._definitionUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .definitionReference)
			}
		}
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try executionPeriod?.encode(on: &_container, forKey: .executionPeriod)
		try focus?.encode(on: &_container, forKey: .focus)
		try `for`?.encode(on: &_container, forKey: .`for`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try input?.encode(on: &_container, forKey: .input)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try lastModified?.encode(on: &_container, forKey: .lastModified, auxiliaryKey: ._lastModified)
		try note?.encode(on: &_container, forKey: .note)
		try output?.encode(on: &_container, forKey: .output)
		try owner?.encode(on: &_container, forKey: .owner)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try requester?.encode(on: &_container, forKey: .requester)
		try restriction?.encode(on: &_container, forKey: .restriction)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Task else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && businessStatus == _other.businessStatus
		    && code == _other.code
		    && context == _other.context
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && executionPeriod == _other.executionPeriod
		    && focus == _other.focus
		    && `for` == _other.`for`
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && input == _other.input
		    && intent == _other.intent
		    && lastModified == _other.lastModified
		    && note == _other.note
		    && output == _other.output
		    && owner == _other.owner
		    && partOf == _other.partOf
		    && performerType == _other.performerType
		    && priority == _other.priority
		    && reason == _other.reason
		    && relevantHistory == _other.relevantHistory
		    && requester == _other.requester
		    && restriction == _other.restriction
		    && status == _other.status
		    && statusReason == _other.statusReason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(businessStatus)
		hasher.combine(code)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(executionPeriod)
		hasher.combine(focus)
		hasher.combine(`for`)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(input)
		hasher.combine(intent)
		hasher.combine(lastModified)
		hasher.combine(note)
		hasher.combine(output)
		hasher.combine(owner)
		hasher.combine(partOf)
		hasher.combine(performerType)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(relevantHistory)
		hasher.combine(requester)
		hasher.combine(restriction)
		hasher.combine(status)
		hasher.combine(statusReason)
	}
}

/**
 Information used to perform task.
 
 Additional information that may be needed in the execution of the task.
 */
open class TaskInput: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Label for the input
	public var type: CodeableConcept
	
	/// Content to use in performing the task
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept,
							value: ValueX)
	{
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCoding
		case valueContactPoint
		case valueCount
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDuration
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueReference
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAddress) || _container.contains(CodingKeys.valueAge) || _container.contains(CodingKeys.valueAnnotation) || _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBase64Binary) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueContactPoint) || _container.contains(CodingKeys.valueCount) || _container.contains(CodingKeys.valueDate) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueDistance) || _container.contains(CodingKeys.valueDuration) || _container.contains(CodingKeys.valueHumanName) || _container.contains(CodingKeys.valueId) || _container.contains(CodingKeys.valueIdentifier) || _container.contains(CodingKeys.valueInstant) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueMarkdown) || _container.contains(CodingKeys.valueMeta) || _container.contains(CodingKeys.valueMoney) || _container.contains(CodingKeys.valueOid) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valuePositiveInt) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueSampledData) || _container.contains(CodingKeys.valueSignature) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) || _container.contains(CodingKeys.valueTiming) || _container.contains(CodingKeys.valueUnsignedInt) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAddress, CodingKeys.valueAge, CodingKeys.valueAnnotation, CodingKeys.valueAttachment, CodingKeys.valueBase64Binary, CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCodeableConcept, CodingKeys.valueCoding, CodingKeys.valueContactPoint, CodingKeys.valueCount, CodingKeys.valueDate, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueDistance, CodingKeys.valueDuration, CodingKeys.valueHumanName, CodingKeys.valueId, CodingKeys.valueIdentifier, CodingKeys.valueInstant, CodingKeys.valueInteger, CodingKeys.valueMarkdown, CodingKeys.valueMeta, CodingKeys.valueMoney, CodingKeys.valueOid, CodingKeys.valuePeriod, CodingKeys.valuePositiveInt, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueReference, CodingKeys.valueSampledData, CodingKeys.valueSignature, CodingKeys.valueString, CodingKeys.valueTime, CodingKeys.valueTiming, CodingKeys.valueUnsignedInt, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
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
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
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
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
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
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
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
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAddress, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
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
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
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
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
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
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
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
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .valueAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .valueAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .valueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .valueContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .valueCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .valueDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .valueHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .valueIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .valueMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .valueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .valueSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .valueTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .valueMeta)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TaskInput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Information produced as part of task.
 
 Outputs produced by the Task.
 */
open class TaskOutput: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Label for output
	public var type: CodeableConcept
	
	/// Result of output
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept,
							value: ValueX)
	{
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCoding
		case valueContactPoint
		case valueCount
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDuration
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueReference
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAddress) || _container.contains(CodingKeys.valueAge) || _container.contains(CodingKeys.valueAnnotation) || _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBase64Binary) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueContactPoint) || _container.contains(CodingKeys.valueCount) || _container.contains(CodingKeys.valueDate) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueDistance) || _container.contains(CodingKeys.valueDuration) || _container.contains(CodingKeys.valueHumanName) || _container.contains(CodingKeys.valueId) || _container.contains(CodingKeys.valueIdentifier) || _container.contains(CodingKeys.valueInstant) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueMarkdown) || _container.contains(CodingKeys.valueMeta) || _container.contains(CodingKeys.valueMoney) || _container.contains(CodingKeys.valueOid) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valuePositiveInt) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueSampledData) || _container.contains(CodingKeys.valueSignature) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) || _container.contains(CodingKeys.valueTiming) || _container.contains(CodingKeys.valueUnsignedInt) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAddress, CodingKeys.valueAge, CodingKeys.valueAnnotation, CodingKeys.valueAttachment, CodingKeys.valueBase64Binary, CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCodeableConcept, CodingKeys.valueCoding, CodingKeys.valueContactPoint, CodingKeys.valueCount, CodingKeys.valueDate, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueDistance, CodingKeys.valueDuration, CodingKeys.valueHumanName, CodingKeys.valueId, CodingKeys.valueIdentifier, CodingKeys.valueInstant, CodingKeys.valueInteger, CodingKeys.valueMarkdown, CodingKeys.valueMeta, CodingKeys.valueMoney, CodingKeys.valueOid, CodingKeys.valuePeriod, CodingKeys.valuePositiveInt, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueReference, CodingKeys.valueSampledData, CodingKeys.valueSignature, CodingKeys.valueString, CodingKeys.valueTime, CodingKeys.valueTiming, CodingKeys.valueUnsignedInt, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
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
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
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
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
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
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
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
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAddress, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
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
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
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
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
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
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
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
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .valueAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .valueAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .valueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .valueContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .valueCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .valueDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .valueHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .valueIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .valueMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .valueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .valueSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .valueTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .valueMeta)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TaskOutput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Who is asking for task to be done.
 
 The creator of the task.
 */
open class TaskRequester: BackboneElement {
	
	/// Individual asking for task
	public var agent: Reference
	
	/// Organization individual is acting for
	public var onBehalfOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(agent: Reference) {
		self.agent = agent
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							agent: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							onBehalfOf: Reference? = nil)
	{
		self.init(agent: agent)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case onBehalfOf
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.agent = try Reference(from: _container, forKey: .agent)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent.encode(on: &_container, forKey: .agent)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TaskRequester else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return agent == _other.agent
		    && onBehalfOf == _other.onBehalfOf
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(agent)
		hasher.combine(onBehalfOf)
	}
}

/**
 Constraints on fulfillment tasks.
 
 If the Task.focus is a request resource and the task is seeking fulfillment (i.e is asking for the request to be
 actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
 */
open class TaskRestriction: BackboneElement {
	
	/// How many times to repeat
	public var repetitions: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// When fulfillment sought
	public var period: Period?
	
	/// For whom is fulfillment sought?
	public var recipient: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							recipient: [Reference]? = nil,
							repetitions: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.recipient = recipient
		self.repetitions = repetitions
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case recipient
		case repetitions; case _repetitions
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.repetitions = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .repetitions, auxiliaryKey: ._repetitions)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period?.encode(on: &_container, forKey: .period)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try repetitions?.encode(on: &_container, forKey: .repetitions, auxiliaryKey: ._repetitions)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TaskRestriction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && recipient == _other.recipient
		    && repetitions == _other.repetitions
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(recipient)
		hasher.combine(repetitions)
	}
}
