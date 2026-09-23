//
//  Appointment.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Appointment)
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
 A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
 date/time. This may result in one or more Encounter(s).
 */
public struct Appointment: DomainResource {
	
	public static let resourceType: ResourceType = .appointment
	
	/// Additional comments
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Shown on a subject line in a meeting request, or appointment list
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When appointment is to conclude
	public var end: FHIRPrimitive<Instant>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Can be less than start/end (e.g. estimate)
	public var minutesDuration: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Participants involved in appointment
	public var participant: [AppointmentParticipant]
	
	/// Used to make informed decisions if needing to re-prioritize
	public var priority: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Reason this appointment is scheduled
	public var reason: CodeableConcept?
	
	/// If provided, then no schedule and start/end values MUST match slot
	public var slot: [Reference]?
	
	/// When appointment is to take place
	public var start: FHIRPrimitive<Instant>?
	
	/// The overall status of the Appointment. Each of the participants has their own participation status which
	/// indicates their involvement in the process, however this status indicates the shared status.
	/// Restricted to: ['proposed', 'pending', 'booked', 'arrived', 'fulfilled', 'cancelled', 'noshow']
	public var status: FHIRPrimitive<AppointmentStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of appointment that is being booked
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		end: FHIRPrimitive<Instant>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		minutesDuration: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		participant: [AppointmentParticipant],
		priority: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		reason: CodeableConcept? = nil,
		slot: [Reference]? = nil,
		start: FHIRPrimitive<Instant>? = nil,
		status: FHIRPrimitive<AppointmentStatus>,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.comment = comment
		self.contained = contained
		self.description_fhir = description_fhir
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.minutesDuration = minutesDuration
		self.modifierExtension = modifierExtension
		self.participant = participant
		self.priority = priority
		self.reason = reason
		self.slot = slot
		self.start = start
		self.status = status
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case comment; case _comment
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case end; case _end
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case minutesDuration; case _minutesDuration
		case modifierExtension
		case participant
		case priority; case _priority
		case reason
		case slot
		case start; case _start
		case status; case _status
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.minutesDuration = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .minutesDuration, auxiliaryKey: ._minutesDuration)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.participant = try [AppointmentParticipant](from: _container, forKey: .participant)
		self.priority = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.slot = try [Reference](from: _container, forKeyIfPresent: .slot)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<AppointmentStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try minutesDuration?.encode(on: &_container, forKey: .minutesDuration, auxiliaryKey: ._minutesDuration)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try participant.encode(on: &_container, forKey: .participant)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try slot?.encode(on: &_container, forKey: .slot)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Participants involved in appointment.
 
 List of participants involved in the appointment.
 */
public struct AppointmentParticipant: BackboneElement {
	
	/// Person, Location/HealthcareService or Device
	public var actor: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Is this participant required to be present at the meeting. This covers a use-case where 2 doctors need to meet
	/// to discuss the results for a specific patient, and the patient is not required to be present.
	/// Restricted to: ['required', 'optional', 'information-only']
	public var required: FHIRPrimitive<ParticipantRequired>?
	
	/// Participation status of the Patient.
	/// Restricted to: ['accepted', 'declined', 'tentative', 'needs-action']
	public var status: FHIRPrimitive<ParticipationStatus>
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		required: FHIRPrimitive<ParticipantRequired>? = nil,
		status: FHIRPrimitive<ParticipationStatus>,
		type: [CodeableConcept]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.required = required
		self.status = status
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case required; case _required
		case status; case _status
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.required = try FHIRPrimitive<ParticipantRequired>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.status = try FHIRPrimitive<ParticipationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
	}
}
