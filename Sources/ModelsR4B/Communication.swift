//
//  Communication.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Communication)
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
 agency that was notified about a reportable condition.
 */
public struct Communication: DomainResource {
	
	public static let resourceType: ResourceType = .communication
	
	/// Resources that pertain to this communication
	public var about: [Reference]?
	
	/// Request fulfilled by this communication
	public var basedOn: [Reference]?
	
	/// Message category
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Reply to
	public var inResponseTo: [Reference]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the communication
	public var note: [Annotation]?
	
	/// Part of this action
	public var partOf: [Reference]?
	
	/// Message payload
	public var payload: [CommunicationPayload]?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Indication for message
	public var reasonCode: [CodeableConcept]?
	
	/// Why was communication done?
	public var reasonReference: [Reference]?
	
	/// When received
	public var received: FHIRPrimitive<DateTime>?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Message sender
	public var sender: Reference?
	
	/// When sent
	public var sent: FHIRPrimitive<DateTime>?
	
	/// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Description of the purpose/content
	public var topic: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		priority: FHIRPrimitive<FHIRString>? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		received: FHIRPrimitive<DateTime>? = nil,
		recipient: [Reference]? = nil,
		sender: Reference? = nil,
		sent: FHIRPrimitive<DateTime>? = nil,
		status: FHIRPrimitive<FHIRString>,
		statusReason: CodeableConcept? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		topic: CodeableConcept? = nil
	) {
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
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.received = received
		self.recipient = recipient
		self.sender = sender
		self.sent = sent
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
		self.topic = topic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case about
		case basedOn
		case category
		case contained
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case inResponseTo
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case language; case _language
		case medium
		case meta
		case modifierExtension
		case note
		case partOf
		case payload
		case priority; case _priority
		case reasonCode
		case reasonReference
		case received; case _received
		case recipient
		case sender
		case sent; case _sent
		case status; case _status
		case statusReason
		case subject
		case text
		case topic
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.about = try [Reference](from: _container, forKeyIfPresent: .about)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.inResponseTo = try [Reference](from: _container, forKeyIfPresent: .inResponseTo)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.payload = try [CommunicationPayload](from: _container, forKeyIfPresent: .payload)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.received = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .received, auxiliaryKey: ._received)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.sent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .sent, auxiliaryKey: ._sent)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.topic = try CodeableConcept(from: _container, forKeyIfPresent: .topic)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try about?.encode(on: &_container, forKey: .about)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try inResponseTo?.encode(on: &_container, forKey: .inResponseTo)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medium?.encode(on: &_container, forKey: .medium)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try payload?.encode(on: &_container, forKey: .payload)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try received?.encode(on: &_container, forKey: .received, auxiliaryKey: ._received)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try sender?.encode(on: &_container, forKey: .sender)
		try sent?.encode(on: &_container, forKey: .sent, auxiliaryKey: ._sent)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try topic?.encode(on: &_container, forKey: .topic)
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
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
