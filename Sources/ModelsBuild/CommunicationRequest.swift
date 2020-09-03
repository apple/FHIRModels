//
//  CommunicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/CommunicationRequest)
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
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Message category
	public var category: [CodeableConcept]?
	
	/// Characterizes how quickly the proposed act must be initiated. Includes concepts such as stat, urgent, routine.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// True if request is prohibiting action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// A channel of communication
	public var medium: [CodeableConcept]?
	
	/// Focus of message
	public var subject: Reference?
	
	/// Resources that pertain to this communication request
	public var about: [Reference]?
	
	/// The Encounter during which this CommunicationRequest was created
	public var encounter: Reference?
	
	/// Message payload
	public var payload: [CommunicationRequestPayload]?
	
	/// When scheduled
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When request transitioned to being actionable
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who asks for the information to be shared
	public var requester: Reference?
	
	/// Who to share the information with
	public var recipient: [Reference]?
	
	/// Who should share the information
	public var informationProvider: [Reference]?
	
	/// Why is communication needed?
	public var reason: [CodeableReference]?
	
	/// Comments made about communication request
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<RequestStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							informationProvider: [Reference]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medium: [CodeableConcept]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							payload: [CommunicationRequestPayload]? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reason: [CodeableReference]? = nil,
							recipient: [Reference]? = nil,
							replaces: [Reference]? = nil,
							requester: Reference? = nil,
							status: FHIRPrimitive<RequestStatus>,
							statusReason: CodeableConcept? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init(status: status)
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
		self.informationProvider = informationProvider
		self.language = language
		self.medium = medium
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.payload = payload
		self.priority = priority
		self.reason = reason
		self.recipient = recipient
		self.replaces = replaces
		self.requester = requester
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case about
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case doNotPerform; case _doNotPerform
		case encounter
		case groupIdentifier
		case identifier
		case informationProvider
		case medium
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case payload
		case priority; case _priority
		case reason
		case recipient
		case replaces
		case requester
		case status; case _status
		case statusReason
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.about = try [Reference](from: _container, forKeyIfPresent: .about)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationProvider = try [Reference](from: _container, forKeyIfPresent: .informationProvider)
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
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try about?.encode(on: &_container, forKey: .about)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationProvider?.encode(on: &_container, forKey: .informationProvider)
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
		try reason?.encode(on: &_container, forKey: .reason)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
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
		return about == _other.about
		    && authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && doNotPerform == _other.doNotPerform
		    && encounter == _other.encounter
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && informationProvider == _other.informationProvider
		    && medium == _other.medium
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && payload == _other.payload
		    && priority == _other.priority
		    && reason == _other.reason
		    && recipient == _other.recipient
		    && replaces == _other.replaces
		    && requester == _other.requester
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(about)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(doNotPerform)
		hasher.combine(encounter)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(informationProvider)
		hasher.combine(medium)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(payload)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(recipient)
		hasher.combine(replaces)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(statusReason)
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
