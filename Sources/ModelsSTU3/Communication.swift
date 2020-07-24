//
//  Communication.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Communication)
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
 A record of information transmitted from a sender to a receiver.
 
 An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health
 agency was notified about a reportable condition.
 */
open class Communication: DomainResource {
	
	override open class var resourceType: ResourceType { return .communication }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// Instantiates protocol or definition
	public var definition: [Reference]?
	
	/// Request fulfilled by this communication
	public var basedOn: [Reference]?
	
	/// Part of this action
	public var partOf: [Reference]?
	
	/// The status of the transmission.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Communication did not occur
	public var notDone: FHIRPrimitive<FHIRBool>?
	
	/// Why communication did not occur
	public var notDoneReason: CodeableConcept?
	
	/// Message category
	public var category: [CodeableConcept]?
	
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
	
	/// When sent
	public var sent: FHIRPrimitive<DateTime>?
	
	/// When received
	public var received: FHIRPrimitive<DateTime>?
	
	/// Message sender
	public var sender: Reference?
	
	/// Indication for message
	public var reasonCode: [CodeableConcept]?
	
	/// Why was communication done?
	public var reasonReference: [Reference]?
	
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
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medium: [CodeableConcept]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							notDone: FHIRPrimitive<FHIRBool>? = nil,
							notDoneReason: CodeableConcept? = nil,
							note: [Annotation]? = nil,
							partOf: [Reference]? = nil,
							payload: [CommunicationPayload]? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							received: FHIRPrimitive<DateTime>? = nil,
							recipient: [Reference]? = nil,
							sender: Reference? = nil,
							sent: FHIRPrimitive<DateTime>? = nil,
							status: FHIRPrimitive<EventStatus>,
							subject: Reference? = nil,
							text: Narrative? = nil,
							topic: [Reference]? = nil)
	{
		self.init(status: status)
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.context = context
		self.definition = definition
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.medium = medium
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notDone = notDone
		self.notDoneReason = notDoneReason
		self.note = note
		self.partOf = partOf
		self.payload = payload
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.received = received
		self.recipient = recipient
		self.sender = sender
		self.sent = sent
		self.subject = subject
		self.text = text
		self.topic = topic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case category
		case context
		case definition
		case identifier
		case medium
		case notDone; case _notDone
		case notDoneReason
		case note
		case partOf
		case payload
		case reasonCode
		case reasonReference
		case received; case _received
		case recipient
		case sender
		case sent; case _sent
		case status; case _status
		case subject
		case topic
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
		self.notDone = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notDone, auxiliaryKey: ._notDone)
		self.notDoneReason = try CodeableConcept(from: _container, forKeyIfPresent: .notDoneReason)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.payload = try [CommunicationPayload](from: _container, forKeyIfPresent: .payload)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.received = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .received, auxiliaryKey: ._received)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.sent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .sent, auxiliaryKey: ._sent)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.topic = try [Reference](from: _container, forKeyIfPresent: .topic)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try medium?.encode(on: &_container, forKey: .medium)
		try notDone?.encode(on: &_container, forKey: .notDone, auxiliaryKey: ._notDone)
		try notDoneReason?.encode(on: &_container, forKey: .notDoneReason)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try payload?.encode(on: &_container, forKey: .payload)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try received?.encode(on: &_container, forKey: .received, auxiliaryKey: ._received)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try sender?.encode(on: &_container, forKey: .sender)
		try sent?.encode(on: &_container, forKey: .sent, auxiliaryKey: ._sent)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return basedOn == _other.basedOn
		    && category == _other.category
		    && context == _other.context
		    && definition == _other.definition
		    && identifier == _other.identifier
		    && medium == _other.medium
		    && notDone == _other.notDone
		    && notDoneReason == _other.notDoneReason
		    && note == _other.note
		    && partOf == _other.partOf
		    && payload == _other.payload
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && received == _other.received
		    && recipient == _other.recipient
		    && sender == _other.sender
		    && sent == _other.sent
		    && status == _other.status
		    && subject == _other.subject
		    && topic == _other.topic
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(identifier)
		hasher.combine(medium)
		hasher.combine(notDone)
		hasher.combine(notDoneReason)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(payload)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(received)
		hasher.combine(recipient)
		hasher.combine(sender)
		hasher.combine(sent)
		hasher.combine(status)
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
