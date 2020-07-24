//
//  ProcedureRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest)
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
 A request for a procedure or diagnostic to be performed.
 
 A record of a request for diagnostic investigations, treatments, or operations to be performed.
 */
open class ProcedureRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .procedureRequest }
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// Protocol or definition
	public var definition: [Reference]?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// What request replaces
	public var replaces: [Reference]?
	
	/// Composite Request ID
	public var requisition: Identifier?
	
	/// The status of the order.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Indicates how quickly the ProcedureRequest should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// True if procedure should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Classification of procedure
	public var category: [CodeableConcept]?
	
	/// What is being requested/ordered
	public var code: CodeableConcept
	
	/// Individual the service is ordered for
	public var subject: Reference
	
	/// Encounter or Episode during which request was created
	public var context: Reference?
	
	/// When procedure should occur
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Preconditions for procedure or diagnostic
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Date request signed
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/what is requesting procedure or diagnostic
	public var requester: ProcedureRequestRequester?
	
	/// Performer role
	public var performerType: CodeableConcept?
	
	/// Requested perfomer
	public var performer: Reference?
	
	/// Explanation/Justification for test
	public var reasonCode: [CodeableConcept]?
	
	/// Explanation/Justification for test
	public var reasonReference: [Reference]?
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Procedure Samples
	public var specimen: [Reference]?
	
	/// Location on Body
	public var bodySite: [CodeableConcept]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, intent: FHIRPrimitive<RequestIntent>, status: FHIRPrimitive<RequestStatus>, subject: Reference) {
		self.code = code
		self.intent = intent
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							asNeeded: AsNeededX? = nil,
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							bodySite: [CodeableConcept]? = nil,
							category: [CodeableConcept]? = nil,
							code: CodeableConcept,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: [Reference]? = nil,
							doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							intent: FHIRPrimitive<RequestIntent>,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							performer: Reference? = nil,
							performerType: CodeableConcept? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							relevantHistory: [Reference]? = nil,
							replaces: [Reference]? = nil,
							requester: ProcedureRequestRequester? = nil,
							requisition: Identifier? = nil,
							specimen: [Reference]? = nil,
							status: FHIRPrimitive<RequestStatus>,
							subject: Reference,
							supportingInfo: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(code: code, intent: intent, status: status, subject: subject)
		self.asNeeded = asNeeded
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.contained = contained
		self.context = context
		self.definition = definition
		self.doNotPerform = doNotPerform
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.performer = performer
		self.performerType = performerType
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.relevantHistory = relevantHistory
		self.replaces = replaces
		self.requester = requester
		self.requisition = requisition
		self.specimen = specimen
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case authoredOn; case _authoredOn
		case basedOn
		case bodySite
		case category
		case code
		case context
		case definition
		case doNotPerform; case _doNotPerform
		case identifier
		case intent; case _intent
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case performer
		case performerType
		case priority; case _priority
		case reasonCode
		case reasonReference
		case relevantHistory
		case replaces
		case requester
		case requisition
		case specimen
		case status; case _status
		case subject
		case supportingInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededBoolean, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		self.asNeeded = _t_asNeeded
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		self.occurrence = _t_occurrence
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try ProcedureRequestRequester(from: _container, forKeyIfPresent: .requester)
		self.requisition = try Identifier(from: _container, forKeyIfPresent: .requisition)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = asNeeded {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
			}
		}
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceTiming)
			}
		}
		try performer?.encode(on: &_container, forKey: .performer)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try requisition?.encode(on: &_container, forKey: .requisition)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcedureRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && context == _other.context
		    && definition == _other.definition
		    && doNotPerform == _other.doNotPerform
		    && identifier == _other.identifier
		    && intent == _other.intent
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && performer == _other.performer
		    && performerType == _other.performerType
		    && priority == _other.priority
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && relevantHistory == _other.relevantHistory
		    && replaces == _other.replaces
		    && requester == _other.requester
		    && requisition == _other.requisition
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(doNotPerform)
		hasher.combine(identifier)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(performer)
		hasher.combine(performerType)
		hasher.combine(priority)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(relevantHistory)
		hasher.combine(replaces)
		hasher.combine(requester)
		hasher.combine(requisition)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
	}
}

/**
 Who/what is requesting procedure or diagnostic.
 
 The individual who initiated the request and has responsibility for its activation.
 */
open class ProcedureRequestRequester: BackboneElement {
	
	/// Individual making the request
	public var agent: Reference
	
	/// Organization agent is acting for
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
		guard let _other = _other as? ProcedureRequestRequester else {
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
