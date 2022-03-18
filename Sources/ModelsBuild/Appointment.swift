//
//  Appointment.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/Appointment)
//  Copyright 2022 Apple Inc.
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
	public var status: FHIRPrimitive<AppointmentStatus>
	
	/// The coded reason for the appointment being cancelled
	public var cancellationReason: CodeableConcept?
	
	/// A broad categorization of the service that is to be performed during this appointment
	public var serviceCategory: [CodeableConcept]?
	
	/// The specific service that is to be performed during this appointment
	public var serviceType: [CodeableConcept]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment
	public var specialty: [CodeableConcept]?
	
	/// The style of appointment or patient that has been booked in the slot (not service type)
	public var appointmentType: CodeableConcept?
	
	/// Reason this appointment is scheduled
	public var reason: [CodeableReference]?
	
	/// Used to make informed decisions if needing to re-prioritize
	public var priority: CodeableConcept?
	
	/// Shown on a subject line in a meeting request, or appointment list
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Appointment replaced by this Appointment
	public var replaces: [Reference]?
	
	/// Additional information to support the appointment
	public var supportingInformation: [Reference]?
	
	/// When appointment is to take place
	public var start: FHIRPrimitive<Instant>?
	
	/// When appointment is to conclude
	public var end: FHIRPrimitive<Instant>?
	
	/// Can be less than start/end (e.g. estimate)
	public var minutesDuration: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The slots that this appointment is filling
	public var slot: [Reference]?
	
	/// The set of accounts that may be used for billing for this Appointment
	public var account: [Reference]?
	
	/// The date that this appointment was initially created
	public var created: FHIRPrimitive<DateTime>?
	
	/// Additional comments
	public var note: [Annotation]?
	
	/// Detailed information and instructions for the patient
	public var patientInstruction: [CodeableReference]?
	
	/// The service request this appointment is allocated to assess
	public var basedOn: [Reference]?
	
	/// The patient or group associated with the appointment
	public var subject: Reference?
	
	/// Participants involved in appointment
	public var participant: [AppointmentParticipant]
	
	/// Potential date/time interval(s) requested to allocate the appointment within
	public var requestedPeriod: [Period]?
	
	/// Designated initializer taking all required properties
	public init(participant: [AppointmentParticipant], status: FHIRPrimitive<AppointmentStatus>) {
		self.participant = participant
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		account: [Reference]? = nil,
		appointmentType: CodeableConcept? = nil,
		basedOn: [Reference]? = nil,
		cancellationReason: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
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
		note: [Annotation]? = nil,
		participant: [AppointmentParticipant],
		patientInstruction: [CodeableReference]? = nil,
		priority: CodeableConcept? = nil,
		reason: [CodeableReference]? = nil,
		replaces: [Reference]? = nil,
		requestedPeriod: [Period]? = nil,
		serviceCategory: [CodeableConcept]? = nil,
		serviceType: [CodeableConcept]? = nil,
		slot: [Reference]? = nil,
		specialty: [CodeableConcept]? = nil,
		start: FHIRPrimitive<Instant>? = nil,
		status: FHIRPrimitive<AppointmentStatus>,
		subject: Reference? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.init(participant: participant, status: status)
		self.account = account
		self.appointmentType = appointmentType
		self.basedOn = basedOn
		self.cancellationReason = cancellationReason
		self.contained = contained
		self.created = created
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
		self.note = note
		self.patientInstruction = patientInstruction
		self.priority = priority
		self.reason = reason
		self.replaces = replaces
		self.requestedPeriod = requestedPeriod
		self.serviceCategory = serviceCategory
		self.serviceType = serviceType
		self.slot = slot
		self.specialty = specialty
		self.start = start
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case appointmentType
		case basedOn
		case cancellationReason
		case created; case _created
		case description_fhir = "description"; case _description_fhir = "_description"
		case end; case _end
		case identifier
		case minutesDuration; case _minutesDuration
		case note
		case participant
		case patientInstruction
		case priority
		case reason
		case replaces
		case requestedPeriod
		case serviceCategory
		case serviceType
		case slot
		case specialty
		case start; case _start
		case status; case _status
		case subject
		case supportingInformation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.appointmentType = try CodeableConcept(from: _container, forKeyIfPresent: .appointmentType)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.cancellationReason = try CodeableConcept(from: _container, forKeyIfPresent: .cancellationReason)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.minutesDuration = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .minutesDuration, auxiliaryKey: ._minutesDuration)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.participant = try [AppointmentParticipant](from: _container, forKey: .participant)
		self.patientInstruction = try [CodeableReference](from: _container, forKeyIfPresent: .patientInstruction)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requestedPeriod = try [Period](from: _container, forKeyIfPresent: .requestedPeriod)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceType)
		self.slot = try [Reference](from: _container, forKeyIfPresent: .slot)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<AppointmentStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try appointmentType?.encode(on: &_container, forKey: .appointmentType)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try cancellationReason?.encode(on: &_container, forKey: .cancellationReason)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try minutesDuration?.encode(on: &_container, forKey: .minutesDuration, auxiliaryKey: ._minutesDuration)
		try note?.encode(on: &_container, forKey: .note)
		try participant.encode(on: &_container, forKey: .participant)
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requestedPeriod?.encode(on: &_container, forKey: .requestedPeriod)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try slot?.encode(on: &_container, forKey: .slot)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
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
		return account == _other.account
		    && appointmentType == _other.appointmentType
		    && basedOn == _other.basedOn
		    && cancellationReason == _other.cancellationReason
		    && created == _other.created
		    && description_fhir == _other.description_fhir
		    && end == _other.end
		    && identifier == _other.identifier
		    && minutesDuration == _other.minutesDuration
		    && note == _other.note
		    && participant == _other.participant
		    && patientInstruction == _other.patientInstruction
		    && priority == _other.priority
		    && reason == _other.reason
		    && replaces == _other.replaces
		    && requestedPeriod == _other.requestedPeriod
		    && serviceCategory == _other.serviceCategory
		    && serviceType == _other.serviceType
		    && slot == _other.slot
		    && specialty == _other.specialty
		    && start == _other.start
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(appointmentType)
		hasher.combine(basedOn)
		hasher.combine(cancellationReason)
		hasher.combine(created)
		hasher.combine(description_fhir)
		hasher.combine(end)
		hasher.combine(identifier)
		hasher.combine(minutesDuration)
		hasher.combine(note)
		hasher.combine(participant)
		hasher.combine(patientInstruction)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(replaces)
		hasher.combine(requestedPeriod)
		hasher.combine(serviceCategory)
		hasher.combine(serviceType)
		hasher.combine(slot)
		hasher.combine(specialty)
		hasher.combine(start)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInformation)
	}
}

/**
 Participants involved in appointment.
 
 List of participants involved in the appointment.
 */
open class AppointmentParticipant: BackboneElement {
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	/// Participation period of the actor
	public var period: Period?
	
	/// Person, Location/HealthcareService or Device
	public var actor: Reference?
	
	/// The participant is required to attend (optional when false)
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Participation status of the actor.
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
		period: Period? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		status: FHIRPrimitive<ParticipationStatus>,
		type: [CodeableConcept]? = nil
	) {
		self.init(status: status)
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.required = required
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case period
		case required; case _required
		case status; case _status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.status = try FHIRPrimitive<ParticipationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try period?.encode(on: &_container, forKey: .period)
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
		    && period == _other.period
		    && required == _other.required
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(period)
		hasher.combine(required)
		hasher.combine(status)
		hasher.combine(type)
	}
}
