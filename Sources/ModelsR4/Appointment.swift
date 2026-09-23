//
//  Appointment.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Appointment)
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
	
	/// The style of appointment or patient that has been booked in the slot (not service type)
	public var appointmentType: CodeableConcept?
	
	/// The service request this appointment is allocated to assess
	public var basedOn: [Reference]?
	
	/// The coded reason for the appointment being cancelled
	public var cancelationReason: CodeableConcept?
	
	/// Additional comments
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The date that this appointment was initially created
	public var created: FHIRPrimitive<DateTime>?
	
	/// Shown on a subject line in a meeting request, or appointment list
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When appointment is to conclude
	public var end: FHIRPrimitive<Instant>?
	
	/// Additional content defined by implementations
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
	
	/// Detailed information and instructions for the patient
	public var patientInstruction: FHIRPrimitive<FHIRString>?
	
	/// Used to make informed decisions if needing to re-prioritize
	public var priority: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Coded reason this appointment is scheduled
	public var reasonCode: [CodeableConcept]?
	
	/// Reason the appointment is to take place (resource)
	public var reasonReference: [Reference]?
	
	/// Potential date/time interval(s) requested to allocate the appointment within
	public var requestedPeriod: [Period]?
	
	/// A broad categorization of the service that is to be performed during this appointment
	public var serviceCategory: [CodeableConcept]?
	
	/// The specific service that is to be performed during this appointment
	public var serviceType: [CodeableConcept]?
	
	/// The slots that this appointment is filling
	public var slot: [Reference]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment
	public var specialty: [CodeableConcept]?
	
	/// When appointment is to take place
	public var start: FHIRPrimitive<Instant>?
	
	/// The overall status of the Appointment. Each of the participants has their own participation status which
	/// indicates their involvement in the process, however this status indicates the shared status.
	public var status: FHIRPrimitive<AppointmentStatus>
	
	/// Additional information to support the appointment
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		appointmentType: CodeableConcept? = nil,
		basedOn: [Reference]? = nil,
		cancelationReason: CodeableConcept? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
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
		participant: [AppointmentParticipant],
		patientInstruction: FHIRPrimitive<FHIRString>? = nil,
		priority: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		requestedPeriod: [Period]? = nil,
		serviceCategory: [CodeableConcept]? = nil,
		serviceType: [CodeableConcept]? = nil,
		slot: [Reference]? = nil,
		specialty: [CodeableConcept]? = nil,
		start: FHIRPrimitive<Instant>? = nil,
		status: FHIRPrimitive<AppointmentStatus>,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.appointmentType = appointmentType
		self.basedOn = basedOn
		self.cancelationReason = cancelationReason
		self.comment = comment
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
		self.participant = participant
		self.patientInstruction = patientInstruction
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.requestedPeriod = requestedPeriod
		self.serviceCategory = serviceCategory
		self.serviceType = serviceType
		self.slot = slot
		self.specialty = specialty
		self.start = start
		self.status = status
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case appointmentType
		case basedOn
		case cancelationReason
		case comment; case _comment
		case contained
		case created; case _created
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
		case patientInstruction; case _patientInstruction
		case priority; case _priority
		case reasonCode
		case reasonReference
		case requestedPeriod
		case serviceCategory
		case serviceType
		case slot
		case specialty
		case start; case _start
		case status; case _status
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.appointmentType = try CodeableConcept(from: _container, forKeyIfPresent: .appointmentType)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.cancelationReason = try CodeableConcept(from: _container, forKeyIfPresent: .cancelationReason)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
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
		self.patientInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patientInstruction, auxiliaryKey: ._patientInstruction)
		self.priority = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.requestedPeriod = try [Period](from: _container, forKeyIfPresent: .requestedPeriod)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceType)
		self.slot = try [Reference](from: _container, forKeyIfPresent: .slot)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<AppointmentStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try appointmentType?.encode(on: &_container, forKey: .appointmentType)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try cancelationReason?.encode(on: &_container, forKey: .cancelationReason)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
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
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction, auxiliaryKey: ._patientInstruction)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try requestedPeriod?.encode(on: &_container, forKey: .requestedPeriod)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try slot?.encode(on: &_container, forKey: .slot)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Participants involved in appointment.
 
 List of participants involved in the appointment.
 */
public struct AppointmentParticipant: BackboneElement {
	
	/// Person, Location/HealthcareService or Device
	public var actor: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Participation period of the actor
	public var period: Period?
	
	/// Whether this participant is required to be present at the meeting. This covers a use-case where two doctors need
	/// to meet to discuss the results for a specific patient, and the patient is not required to be present.
	public var required: FHIRPrimitive<ParticipantRequired>?
	
	/// Participation status of the actor.
	public var status: FHIRPrimitive<ParticipationStatus>
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		required: FHIRPrimitive<ParticipantRequired>? = nil,
		status: FHIRPrimitive<ParticipationStatus>,
		type: [CodeableConcept]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
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
		case period
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
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
		try period?.encode(on: &_container, forKey: .period)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
	}
}
