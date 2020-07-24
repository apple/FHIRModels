//
//  CommunicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest)
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
 A request for information to be sent to a receiver.
 
 A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS
 system proposes that the public health agency be notified about a reportable condition.
 */
open class CommunicationRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .communicationRequest }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// Fulfills plan or proposal
	public var basedOn: [Reference]?
	
	/// Request(s) replaced by this request
	public var replaces: [Reference]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// The status of the proposal or order.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Message category
	public var category: [CodeableConcept]?
	
	/// Characterizes how quickly the proposed act must be initiated. Includes concepts such as stat, urgent, routine.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Focal resources
	public var topic: [Reference]?
	
	/// Encounter or episode leading to message
	public var context: Reference?
	
	/// Message payload
	public var payload: [CommunicationRequestPayload]?
	
	/// When scheduled
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When request transitioned to being actionable
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Message sender
	public var sender: Reference?
	
	/// Who/what is requesting service
	public var requester: CommunicationRequestRequester?
	
	/// Why is communication needed?
	public var reasonCode: [CodeableConcept]?
	
	/// Why is communication needed?
	public var reasonReference: [Reference]?
	
	/// Comments made about communication request
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<RequestStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							`extension`: [Extension]? = nil,
							groupIdentifier: Identifier? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medium: [CodeableConcept]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							payload: [CommunicationRequestPayload]? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							recipient: [Reference]? = nil,
							replaces: [Reference]? = nil,
							requester: CommunicationRequestRequester? = nil,
							sender: Reference? = nil,
							status: FHIRPrimitive<RequestStatus>,
							subject: Reference? = nil,
							text: Narrative? = nil,
							topic: [Reference]? = nil)
	{
		self.init(status: status)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.context = context
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.medium = medium
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.payload = payload
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recipient = recipient
		self.replaces = replaces
		self.requester = requester
		self.sender = sender
		self.subject = subject
		self.text = text
		self.topic = topic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case context
		case groupIdentifier
		case identifier
		case medium
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case payload
		case priority; case _priority
		case reasonCode
		case reasonReference
		case recipient
		case replaces
		case requester
		case sender
		case status; case _status
		case subject
		case topic
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
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
		self.payload = try [CommunicationRequestPayload](from: _container, forKeyIfPresent: .payload)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try CommunicationRequestRequester(from: _container, forKeyIfPresent: .requester)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.topic = try [Reference](from: _container, forKeyIfPresent: .topic)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try medium?.encode(on: &_container, forKey: .medium)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			}
		}
		try payload?.encode(on: &_container, forKey: .payload)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try sender?.encode(on: &_container, forKey: .sender)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try topic?.encode(on: &_container, forKey: .topic)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CommunicationRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && context == _other.context
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && medium == _other.medium
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && payload == _other.payload
		    && priority == _other.priority
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && recipient == _other.recipient
		    && replaces == _other.replaces
		    && requester == _other.requester
		    && sender == _other.sender
		    && status == _other.status
		    && subject == _other.subject
		    && topic == _other.topic
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(medium)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(payload)
		hasher.combine(priority)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(recipient)
		hasher.combine(replaces)
		hasher.combine(requester)
		hasher.combine(sender)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(topic)
	}
}

/**
 Message payload.
 
 Text, attachment(s), or resource(s) to be communicated to the recipient.
 */
open class CommunicationRequestPayload: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Message part content
	/// One of `content[x]`
	public var content: ContentX
	
	/// Designated initializer taking all required properties
	public init(content: ContentX) {
		self.content = content
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							content: ContentX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(content: content)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
		case contentString; case _contentString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.contentAttachment) || _container.contains(CodingKeys.contentReference) || _container.contains(CodingKeys.contentString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.contentAttachment, CodingKeys.contentReference, CodingKeys.contentString], debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		
		// Decode all our properties
		var _t_content: ContentX? = nil
		if let contentString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentString, auxiliaryKey: ._contentString) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentString, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .string(contentString)
		}
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentAttachment, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		self.content = _t_content!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch content {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .contentString, auxiliaryKey: ._contentString)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .contentAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .contentReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CommunicationRequestPayload else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
	}
}

/**
 Who/what is requesting service.
 
 The individual who initiated the request and has responsibility for its activation.
 */
open class CommunicationRequestRequester: BackboneElement {
	
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
		guard let _other = _other as? CommunicationRequestRequester else {
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
