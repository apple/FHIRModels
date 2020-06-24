//
//  Communication.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Communication)
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
	
	/// Message category
	public var category: CodeableConcept?
	
	/// Message sender
	public var sender: Reference?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Message payload
	public var payload: [CommunicationPayload]?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// The status of the transmission.
	/// Restricted to: ['in-progress', 'completed', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<CommunicationStatus>?
	
	/// Encounter leading to message
	public var encounter: Reference?
	
	/// When sent
	public var sent: FHIRPrimitive<DateTime>?
	
	/// When received
	public var received: FHIRPrimitive<DateTime>?
	
	/// Indication for message
	public var reason: [CodeableConcept]?
	
	/// Focus of message
	public var subject: Reference?
	
	/// CommunicationRequest producing this message
	public var requestDetail: Reference?
	
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
							payload: [CommunicationPayload]? = nil,
							reason: [CodeableConcept]? = nil,
							received: FHIRPrimitive<DateTime>? = nil,
							recipient: [Reference]? = nil,
							requestDetail: Reference? = nil,
							sender: Reference? = nil,
							sent: FHIRPrimitive<DateTime>? = nil,
							status: FHIRPrimitive<CommunicationStatus>? = nil,
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
		self.reason = reason
		self.received = received
		self.recipient = recipient
		self.requestDetail = requestDetail
		self.sender = sender
		self.sent = sent
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
		case reason
		case received; case _received
		case recipient
		case requestDetail
		case sender
		case sent; case _sent
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
		self.payload = try [CommunicationPayload](from: _container, forKeyIfPresent: .payload)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.received = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .received, auxiliaryKey: ._received)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.requestDetail = try Reference(from: _container, forKeyIfPresent: .requestDetail)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.sent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .sent, auxiliaryKey: ._sent)
		self.status = try FHIRPrimitive<CommunicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
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
		try reason?.encode(on: &_container, forKey: .reason)
		try received?.encode(on: &_container, forKey: .received, auxiliaryKey: ._received)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try requestDetail?.encode(on: &_container, forKey: .requestDetail)
		try sender?.encode(on: &_container, forKey: .sender)
		try sent?.encode(on: &_container, forKey: .sent, auxiliaryKey: ._sent)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
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
		return category == _other.category
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && medium == _other.medium
		    && payload == _other.payload
		    && reason == _other.reason
		    && received == _other.received
		    && recipient == _other.recipient
		    && requestDetail == _other.requestDetail
		    && sender == _other.sender
		    && sent == _other.sent
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
		hasher.combine(reason)
		hasher.combine(received)
		hasher.combine(recipient)
		hasher.combine(requestDetail)
		hasher.combine(sender)
		hasher.combine(sent)
		hasher.combine(status)
		hasher.combine(subject)
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
