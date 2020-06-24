//
//  Appointment.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Appointment)
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
 A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
 date/time. This may result in one or more Encounter(s).
 */
open class Appointment: DomainResource {
	
	override open class var resourceType: ResourceType { return .appointment }
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// The overall status of the Appointment. Each of the participants has their own participation status which
	/// indicates their involvement in the process, however this status indicates the shared status.
	/// Restricted to: ['proposed', 'pending', 'booked', 'arrived', 'fulfilled', 'cancelled', 'noshow']
	public var status: FHIRPrimitive<AppointmentStatus>
	
	/// The type of appointment that is being booked
	public var type: CodeableConcept?
	
	/// Reason this appointment is scheduled
	public var reason: CodeableConcept?
	
	/// Used to make informed decisions if needing to re-prioritize
	public var priority: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Shown on a subject line in a meeting request, or appointment list
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When appointment is to take place
	public var start: FHIRPrimitive<Instant>?
	
	/// When appointment is to conclude
	public var end: FHIRPrimitive<Instant>?
	
	/// Can be less than start/end (e.g. estimate)
	public var minutesDuration: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// If provided, then no schedule and start/end values MUST match slot
	public var slot: [Reference]?
	
	/// Additional comments
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Participants involved in appointment
	public var participant: [AppointmentParticipant]
	
	/// Designated initializer taking all required properties
	public init(participant: [AppointmentParticipant], status: FHIRPrimitive<AppointmentStatus>) {
		self.participant = participant
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(participant: participant, status: status)
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
		self.priority = priority
		self.reason = reason
		self.slot = slot
		self.start = start
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case description_fhir = "description"; case _description_fhir = "_description"
		case end; case _end
		case identifier
		case minutesDuration; case _minutesDuration
		case participant
		case priority; case _priority
		case reason
		case slot
		case start; case _start
		case status; case _status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.minutesDuration = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .minutesDuration, auxiliaryKey: ._minutesDuration)
		self.participant = try [AppointmentParticipant](from: _container, forKey: .participant)
		self.priority = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.slot = try [Reference](from: _container, forKeyIfPresent: .slot)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<AppointmentStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try minutesDuration?.encode(on: &_container, forKey: .minutesDuration, auxiliaryKey: ._minutesDuration)
		try participant.encode(on: &_container, forKey: .participant)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try slot?.encode(on: &_container, forKey: .slot)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Appointment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comment == _other.comment
		    && description_fhir == _other.description_fhir
		    && end == _other.end
		    && identifier == _other.identifier
		    && minutesDuration == _other.minutesDuration
		    && participant == _other.participant
		    && priority == _other.priority
		    && reason == _other.reason
		    && slot == _other.slot
		    && start == _other.start
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(description_fhir)
		hasher.combine(end)
		hasher.combine(identifier)
		hasher.combine(minutesDuration)
		hasher.combine(participant)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(slot)
		hasher.combine(start)
		hasher.combine(status)
		hasher.combine(type)
	}
}

/**
 Participants involved in appointment.
 
 List of participants involved in the appointment.
 */
open class AppointmentParticipant: BackboneElement {
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	/// Person, Location/HealthcareService or Device
	public var actor: Reference?
	
	/// Is this participant required to be present at the meeting. This covers a use-case where 2 doctors need to meet
	/// to discuss the results for a specific patient, and the patient is not required to be present.
	/// Restricted to: ['required', 'optional', 'information-only']
	public var required: FHIRPrimitive<ParticipantRequired>?
	
	/// Participation status of the Patient.
	/// Restricted to: ['accepted', 'declined', 'tentative', 'needs-action']
	public var status: FHIRPrimitive<ParticipationStatus>
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ParticipationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							required: FHIRPrimitive<ParticipantRequired>? = nil,
							status: FHIRPrimitive<ParticipationStatus>,
							type: [CodeableConcept]? = nil)
	{
		self.init(status: status)
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.required = required
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case required; case _required
		case status; case _status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.required = try FHIRPrimitive<ParticipantRequired>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.status = try FHIRPrimitive<ParticipationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AppointmentParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && required == _other.required
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(required)
		hasher.combine(status)
		hasher.combine(type)
	}
}
