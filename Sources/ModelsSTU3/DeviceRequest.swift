//
//  DeviceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DeviceRequest)
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
 Medical device request.
 
 Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
 assistive device, such as a walker.
 */
open class DeviceRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceRequest }
	
	/// All possible types for "code[x]"
	public enum CodeX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External Request identifier
	public var identifier: [Identifier]?
	
	/// Protocol or definition
	public var definition: [Reference]?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// What request replaces
	public var priorRequest: [Reference]?
	
	/// Identifier of composite request
	public var groupIdentifier: Identifier?
	
	/// The status of the request.
	public var status: FHIRPrimitive<RequestStatus>?
	
	/// proposal | plan | original-order | encoded | reflex-order
	public var intent: CodeableConcept
	
	/// None
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Device requested
	/// One of `code[x]`
	public var code: CodeX
	
	/// Focus of request
	public var subject: Reference
	
	/// Encounter or Episode motivating request
	public var context: Reference?
	
	/// Desired time or schedule for use
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When recorded
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/what is requesting diagnostics
	public var requester: DeviceRequestRequester?
	
	/// Fille role
	public var performerType: CodeableConcept?
	
	/// Requested Filler
	public var performer: Reference?
	
	/// Coded Reason for request
	public var reasonCode: [CodeableConcept]?
	
	/// Linked Reason for request
	public var reasonReference: [Reference]?
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Notes or comments
	public var note: [Annotation]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeX, intent: CodeableConcept, subject: Reference) {
		self.code = code
		self.intent = intent
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							code: CodeX,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							groupIdentifier: Identifier? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							intent: CodeableConcept,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							performer: Reference? = nil,
							performerType: CodeableConcept? = nil,
							priorRequest: [Reference]? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							relevantHistory: [Reference]? = nil,
							requester: DeviceRequestRequester? = nil,
							status: FHIRPrimitive<RequestStatus>? = nil,
							subject: Reference,
							supportingInfo: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(code: code, intent: intent, subject: subject)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.contained = contained
		self.context = context
		self.definition = definition
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
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
		self.priorRequest = priorRequest
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.relevantHistory = relevantHistory
		self.requester = requester
		self.status = status
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case codeCodeableConcept
		case codeReference
		case context
		case definition
		case groupIdentifier
		case identifier
		case intent
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case performer
		case performerType
		case priorRequest
		case priority; case _priority
		case reasonCode
		case reasonReference
		case relevantHistory
		case requester
		case status; case _status
		case subject
		case supportingInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.codeCodeableConcept) || _container.contains(CodingKeys.codeReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.codeCodeableConcept, CodingKeys.codeReference], debugDescription: "Must have at least one value for \"code\" but have none"))
		}
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		var _t_code: CodeX? = nil
		if let codeReference = try Reference(from: _container, forKeyIfPresent: .codeReference) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeReference, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .reference(codeReference)
		}
		if let codeCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .codeCodeableConcept) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeCodeableConcept, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .codeableConcept(codeCodeableConcept)
		}
		self.code = _t_code!
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.intent = try CodeableConcept(from: _container, forKey: .intent)
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
		self.priorRequest = try [Reference](from: _container, forKeyIfPresent: .priorRequest)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.requester = try DeviceRequestRequester(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		
			switch code {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .codeReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .codeCodeableConcept)
			}
		
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try intent.encode(on: &_container, forKey: .intent)
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
		try priorRequest?.encode(on: &_container, forKey: .priorRequest)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try requester?.encode(on: &_container, forKey: .requester)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && code == _other.code
		    && context == _other.context
		    && definition == _other.definition
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && intent == _other.intent
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && performer == _other.performer
		    && performerType == _other.performerType
		    && priorRequest == _other.priorRequest
		    && priority == _other.priority
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && relevantHistory == _other.relevantHistory
		    && requester == _other.requester
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(code)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(performer)
		hasher.combine(performerType)
		hasher.combine(priorRequest)
		hasher.combine(priority)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(relevantHistory)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
	}
}

/**
 Who/what is requesting diagnostics.
 
 The individual who initiated the request and has responsibility for its activation.
 */
open class DeviceRequestRequester: BackboneElement {
	
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
		guard let _other = _other as? DeviceRequestRequester else {
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
