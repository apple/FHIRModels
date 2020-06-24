//
//  CommunicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest)
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
	
	/// All possible types for "scheduled[x]"
	public enum ScheduledX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// Message category
	public var category: CodeableConcept?
	
	/// Message sender
	public var sender: Reference?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Message payload
	public var payload: [CommunicationRequestPayload]?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// An individual who requested a communication
	public var requester: Reference?
	
	/// The status of the proposal or order.
	/// Restricted to: ['proposed', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'completed',
	/// 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<CommunicationRequestStatus>?
	
	/// Encounter leading to message
	public var encounter: Reference?
	
	/// When scheduled
	/// One of `scheduled[x]`
	public var scheduled: ScheduledX?
	
	/// Indication for message
	public var reason: [CodeableConcept]?
	
	/// When ordered or proposed
	public var requestedOn: FHIRPrimitive<DateTime>?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Message urgency
	public var priority: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medium: [CodeableConcept]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							payload: [CommunicationRequestPayload]? = nil,
							priority: CodeableConcept? = nil,
							reason: [CodeableConcept]? = nil,
							recipient: [Reference]? = nil,
							requestedOn: FHIRPrimitive<DateTime>? = nil,
							requester: Reference? = nil,
							scheduled: ScheduledX? = nil,
							sender: Reference? = nil,
							status: FHIRPrimitive<CommunicationRequestStatus>? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.category = category
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.medium = medium
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.payload = payload
		self.priority = priority
		self.reason = reason
		self.recipient = recipient
		self.requestedOn = requestedOn
		self.requester = requester
		self.scheduled = scheduled
		self.sender = sender
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case encounter
		case identifier
		case medium
		case payload
		case priority
		case reason
		case recipient
		case requestedOn; case _requestedOn
		case requester
		case scheduledDateTime; case _scheduledDateTime
		case scheduledPeriod
		case sender
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
		self.payload = try [CommunicationRequestPayload](from: _container, forKeyIfPresent: .payload)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.requestedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .requestedOn, auxiliaryKey: ._requestedOn)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		var _t_scheduled: ScheduledX? = nil
		if let scheduledDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .scheduledDateTime, auxiliaryKey: ._scheduledDateTime) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledDateTime, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .dateTime(scheduledDateTime)
		}
		if let scheduledPeriod = try Period(from: _container, forKeyIfPresent: .scheduledPeriod) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledPeriod, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .period(scheduledPeriod)
		}
		self.scheduled = _t_scheduled
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.status = try FHIRPrimitive<CommunicationRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try medium?.encode(on: &_container, forKey: .medium)
		try payload?.encode(on: &_container, forKey: .payload)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try requestedOn?.encode(on: &_container, forKey: .requestedOn, auxiliaryKey: ._requestedOn)
		try requester?.encode(on: &_container, forKey: .requester)
		if let _enum = scheduled {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .scheduledDateTime, auxiliaryKey: ._scheduledDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .scheduledPeriod)
			}
		}
		try sender?.encode(on: &_container, forKey: .sender)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
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
		return category == _other.category
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && medium == _other.medium
		    && payload == _other.payload
		    && priority == _other.priority
		    && reason == _other.reason
		    && recipient == _other.recipient
		    && requestedOn == _other.requestedOn
		    && requester == _other.requester
		    && scheduled == _other.scheduled
		    && sender == _other.sender
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(medium)
		hasher.combine(payload)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(recipient)
		hasher.combine(requestedOn)
		hasher.combine(requester)
		hasher.combine(scheduled)
		hasher.combine(sender)
		hasher.combine(status)
		hasher.combine(subject)
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
