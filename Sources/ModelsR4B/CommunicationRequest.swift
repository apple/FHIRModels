//
//  CommunicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest)
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
 A request for information to be sent to a receiver.
 
 A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS
 system proposes that the public health agency be notified about a reportable condition.
 */
public struct CommunicationRequest: DomainResource {
	
	public static let resourceType: ResourceType = .communicationRequest
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Resources that pertain to this communication request
	public var about: [Reference]?
	
	/// When request transitioned to being actionable
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Fulfills plan or proposal
	public var basedOn: [Reference]?
	
	/// Message category
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// True if request is prohibiting action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
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
	
	/// Comments made about communication request
	public var note: [Annotation]?
	
	/// When scheduled
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Message payload
	public var payload: [CommunicationRequestPayload]?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Why is communication needed?
	public var reasonCode: [CodeableConcept]?
	
	/// Why is communication needed?
	public var reasonReference: [Reference]?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Request(s) replaced by this request
	public var replaces: [Reference]?
	
	/// Who/what is requesting service
	public var requester: Reference?
	
	/// Message sender
	public var sender: Reference?
	
	/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		about: [Reference]? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		encounter: Reference? = nil,
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
		priority: FHIRPrimitive<FHIRString>? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		recipient: [Reference]? = nil,
		replaces: [Reference]? = nil,
		requester: Reference? = nil,
		sender: Reference? = nil,
		status: FHIRPrimitive<FHIRString>,
		statusReason: CodeableConcept? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.about = about
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.doNotPerform = doNotPerform
		self.encounter = encounter
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
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case about
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case contained
		case doNotPerform; case _doNotPerform
		case encounter
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case medium
		case meta
		case modifierExtension
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
		case statusReason
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.about = try [Reference](from: _container, forKeyIfPresent: .about)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medium = try [CodeableConcept](from: _container, forKeyIfPresent: .medium)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.payload = try [CommunicationRequestPayload](from: _container, forKeyIfPresent: .payload)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try about?.encode(on: &_container, forKey: .about)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medium?.encode(on: &_container, forKey: .medium)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		return _t_occurrence
	}
}

/**
 Message payload.
 
 Text, attachment(s), or resource(s) to be communicated to the recipient.
 */
public struct CommunicationRequestPayload: BackboneElement {
	
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
