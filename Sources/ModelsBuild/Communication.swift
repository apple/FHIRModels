//
//  Communication.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Communication)
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
 A clinical or business level record of information being transmitted or shared.
 
 A clinical or business level record of information being transmitted or shared; e.g. an alert that was sent to a
 responsible provider, a public health agency communication to a provider/reporter in response to a case report for a
 reportable condition.
 */
open class Communication: DomainResource {
	
	override open class var resourceType: ResourceType { return .communication }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Request fulfilled by this communication
	public var basedOn: [Reference]?
	
	/// Part of referenced event (e.g. Communication, Procedure)
	public var partOf: [Reference]?
	
	/// Reply to
	public var inResponseTo: [Reference]?
	
	/// The status of the transmission.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Message category
	public var category: [CodeableConcept]?
	
	/// Characterizes how quickly the planned or in progress communication must be addressed. Includes concepts such as
	/// stat, urgent, routine.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Description of the purpose/content
	public var topic: CodeableConcept?
	
	/// Resources that pertain to this communication
	public var about: [Reference]?
	
	/// The Encounter during which this Communication was created
	public var encounter: Reference?
	
	/// When sent
	public var sent: FHIRPrimitive<DateTime>?
	
	/// When received
	public var received: FHIRPrimitive<DateTime>?
	
	/// Who the information is shared with
	public var recipient: [Reference]?
	
	/// Who shares the information
	public var sender: Reference?
	
	/// Indication for message
	public var reason: [CodeableReference]?
	
	/// Message payload
	public var payload: [CommunicationPayload]?
	
	/// Comments made about the communication
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EventStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							about: [Reference]? = nil,
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							inResponseTo: [Reference]? = nil,
							instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
							instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medium: [CodeableConcept]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							partOf: [Reference]? = nil,
							payload: [CommunicationPayload]? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reason: [CodeableReference]? = nil,
							received: FHIRPrimitive<DateTime>? = nil,
							recipient: [Reference]? = nil,
							sender: Reference? = nil,
							sent: FHIRPrimitive<DateTime>? = nil,
							status: FHIRPrimitive<EventStatus>,
							statusReason: CodeableConcept? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil,
							topic: CodeableConcept? = nil)
	{
		self.init(status: status)
		self.about = about
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.inResponseTo = inResponseTo
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.language = language
		self.medium = medium
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.payload = payload
		self.priority = priority
		self.reason = reason
		self.received = received
		self.recipient = recipient
		self.sender = sender
		self.sent = sent
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
		self.topic = topic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case about
		case basedOn
		case category
		case encounter
		case identifier
		case inResponseTo
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case medium
		case note
		case partOf
		case payload
		case priority; case _priority
		case reason
		case received; case _received
		case recipient
		case sender
		case sent; case _sent
		case status; case _status
		case statusReason
		case subject
		case topic
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.about = try [Reference](from: _container, forKeyIfPresent: .about)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.inResponseTo = try [Reference](from: _container, forKeyIfPresent: .inResponseTo)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.payload = try [CommunicationPayload](from: _container, forKeyIfPresent: .payload)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.received = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .received, auxiliaryKey: ._received)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.sent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .sent, auxiliaryKey: ._sent)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.topic = try CodeableConcept(from: _container, forKeyIfPresent: .topic)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try about?.encode(on: &_container, forKey: .about)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try inResponseTo?.encode(on: &_container, forKey: .inResponseTo)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try medium?.encode(on: &_container, forKey: .medium)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try payload?.encode(on: &_container, forKey: .payload)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try received?.encode(on: &_container, forKey: .received, auxiliaryKey: ._received)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try sender?.encode(on: &_container, forKey: .sender)
		try sent?.encode(on: &_container, forKey: .sent, auxiliaryKey: ._sent)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		try topic?.encode(on: &_container, forKey: .topic)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Communication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return about == _other.about
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && inResponseTo == _other.inResponseTo
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && medium == _other.medium
		    && note == _other.note
		    && partOf == _other.partOf
		    && payload == _other.payload
		    && priority == _other.priority
		    && reason == _other.reason
		    && received == _other.received
		    && recipient == _other.recipient
		    && sender == _other.sender
		    && sent == _other.sent
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && topic == _other.topic
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(about)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(inResponseTo)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(medium)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(payload)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(received)
		hasher.combine(recipient)
		hasher.combine(sender)
		hasher.combine(sent)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(topic)
	}
}

/**
 Message payload.
 
 Text, attachment(s), or resource(s) that was communicated to the recipient.
 */
open class CommunicationPayload: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Hashable {
		case attachment(Attachment)
		case codeableConcept(CodeableConcept)
		case reference(Reference)
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
		case contentCodeableConcept
		case contentReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.contentAttachment) || _container.contains(CodingKeys.contentCodeableConcept) || _container.contains(CodingKeys.contentReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.contentAttachment, CodingKeys.contentCodeableConcept, CodingKeys.contentReference], debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		
		// Decode all our properties
		var _t_content: ContentX? = nil
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
		if let contentCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .contentCodeableConcept) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentCodeableConcept, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .codeableConcept(contentCodeableConcept)
		}
		self.content = _t_content!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch content {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .contentAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .contentReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .contentCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CommunicationPayload else {
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
