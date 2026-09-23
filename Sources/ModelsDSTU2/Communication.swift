//
//  Communication.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Communication)
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
 A record of information transmitted from a sender to a receiver.
 
 An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health
 agency was notified about a reportable condition.
 */
public struct Communication: DomainResource {
	
	public static let resourceType: ResourceType = .communication
	
	/// Message category
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter leading to message
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Message payload
	public var payload: [CommunicationPayload]?
	
	/// Indication for message
	public var reason: [CodeableConcept]?
	
	/// When received
	public var received: FHIRPrimitive<DateTime>?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// CommunicationRequest producing this message
	public var requestDetail: Reference?
	
	/// Message sender
	public var sender: Reference?
	
	/// When sent
	public var sent: FHIRPrimitive<DateTime>?
	
	/// The status of the transmission.
	/// Restricted to: ['in-progress', 'completed', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<CommunicationStatus>?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case category
		case contained
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case medium
		case meta
		case modifierExtension
		case payload
		case reason
		case received; case _received
		case recipient
		case requestDetail
		case sender
		case sent; case _sent
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.payload = try [CommunicationPayload](from: _container, forKeyIfPresent: .payload)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.received = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .received, auxiliaryKey: ._received)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.requestDetail = try Reference(from: _container, forKeyIfPresent: .requestDetail)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.sent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .sent, auxiliaryKey: ._sent)
		self.status = try FHIRPrimitive<CommunicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medium?.encode(on: &_container, forKey: .medium)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try payload?.encode(on: &_container, forKey: .payload)
		try reason?.encode(on: &_container, forKey: .reason)
		try received?.encode(on: &_container, forKey: .received, auxiliaryKey: ._received)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try requestDetail?.encode(on: &_container, forKey: .requestDetail)
		try sender?.encode(on: &_container, forKey: .sender)
		try sent?.encode(on: &_container, forKey: .sent, auxiliaryKey: ._sent)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Message payload.
 
 Text, attachment(s), or resource(s) that was communicated to the recipient.
 */
public struct CommunicationPayload: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Message part content
	/// One of `content[x]`
	public var content: ContentX
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		content: ContentX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
		case contentString; case _contentString
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.content = try Self._decodeContent(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch content {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .contentAttachment)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .contentReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .contentString, auxiliaryKey: ._contentString)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeContent(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ContentX {
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		if let contentString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentString, auxiliaryKey: ._contentString) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentString, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .string(contentString)
		}
		guard let _t_content else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.contentString)
			throw DecodingError.valueNotFound(ContentX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		return _t_content
	}
}
