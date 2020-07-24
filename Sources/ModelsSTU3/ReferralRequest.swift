//
//  ReferralRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ReferralRequest)
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
 A request for referral or transfer of care.
 
 Used to record and send details about a request for referral service or transfer of a patient to the care of another
 provider or provider organization.
 */
open class ReferralRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .referralRequest }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Instantiates protocol or definition
	public var definition: [Reference]?
	
	/// Request fulfilled by this request
	public var basedOn: [Reference]?
	
	/// Request(s) replaced by this request
	public var replaces: [Reference]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// The status of the authorization/intention reflected by the referral request record.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Distinguishes the "level" of authorization/demand implicit in this request.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Referral/Transition of care request type
	public var type: CodeableConcept?
	
	/// An indication of the urgency of referral (or where applicable the type of transfer of care) request.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Actions requested as part of the referral
	public var serviceRequested: [CodeableConcept]?
	
	/// Patient referred to care or transfer
	public var subject: Reference
	
	/// Originating encounter
	public var context: Reference?
	
	/// When the service(s) requested in the referral should occur
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Date of creation/activation
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/what is requesting service
	public var requester: ReferralRequestRequester?
	
	/// The clinical specialty (discipline) that the referral is requested for
	public var specialty: CodeableConcept?
	
	/// Receiver of referral / transfer of care request
	public var recipient: [Reference]?
	
	/// Reason for referral / transfer of care request
	public var reasonCode: [CodeableConcept]?
	
	/// Why is service needed?
	public var reasonReference: [Reference]?
	
	/// A textual description of the referral
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additonal information to support referral or transfer of care request
	public var supportingInfo: [Reference]?
	
	/// Comments made about referral request
	public var note: [Annotation]?
	
	/// Key events in history of request
	public var relevantHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<RequestIntent>, status: FHIRPrimitive<RequestStatus>, subject: Reference) {
		self.intent = intent
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: [Reference]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							groupIdentifier: Identifier? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							intent: FHIRPrimitive<RequestIntent>,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							recipient: [Reference]? = nil,
							relevantHistory: [Reference]? = nil,
							replaces: [Reference]? = nil,
							requester: ReferralRequestRequester? = nil,
							serviceRequested: [CodeableConcept]? = nil,
							specialty: CodeableConcept? = nil,
							status: FHIRPrimitive<RequestStatus>,
							subject: Reference,
							supportingInfo: [Reference]? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(intent: intent, status: status, subject: subject)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.contained = contained
		self.context = context
		self.definition = definition
		self.description_fhir = description_fhir
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
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recipient = recipient
		self.relevantHistory = relevantHistory
		self.replaces = replaces
		self.requester = requester
		self.serviceRequested = serviceRequested
		self.specialty = specialty
		self.supportingInfo = supportingInfo
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case context
		case definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case groupIdentifier
		case identifier
		case intent; case _intent
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case priority; case _priority
		case reasonCode
		case reasonReference
		case recipient
		case relevantHistory
		case replaces
		case requester
		case serviceRequested
		case specialty
		case status; case _status
		case subject
		case supportingInfo
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
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
		self.occurrence = _t_occurrence
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try ReferralRequestRequester(from: _container, forKeyIfPresent: .requester)
		self.serviceRequested = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceRequested)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			}
		}
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try serviceRequested?.encode(on: &_container, forKey: .serviceRequested)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ReferralRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && context == _other.context
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && intent == _other.intent
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && priority == _other.priority
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && recipient == _other.recipient
		    && relevantHistory == _other.relevantHistory
		    && replaces == _other.replaces
		    && requester == _other.requester
		    && serviceRequested == _other.serviceRequested
		    && specialty == _other.specialty
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(priority)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(recipient)
		hasher.combine(relevantHistory)
		hasher.combine(replaces)
		hasher.combine(requester)
		hasher.combine(serviceRequested)
		hasher.combine(specialty)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
		hasher.combine(type)
	}
}

/**
 Who/what is requesting service.
 
 The individual who initiated the request and has responsibility for its activation.
 */
open class ReferralRequestRequester: BackboneElement {
	
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
		guard let _other = _other as? ReferralRequestRequester else {
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
