//
//  Appointment.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Appointment)
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
	
	/// The set of accounts that may be used for billing for this Appointment
	public var account: [Reference]?
	
	/// The style of appointment or patient that has been booked in the slot (not service type)
	public var appointmentType: CodeableConcept?
	
	/// The request this appointment is allocated to assess
	public var basedOn: [Reference]?
	
	/// When the appointment was cancelled
	public var cancellationDate: FHIRPrimitive<DateTime>?
	
	/// The coded reason for the appointment being cancelled
	public var cancellationReason: CodeableConcept?
	
	/// Classification when becoming an encounter
	public var `class`: [CodeableConcept]?
	
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
	
	/// Additional comments
	public var note: [Annotation]?
	
	/// Indicates that this appointment varies from a recurrence pattern
	public var occurrenceChanged: FHIRPrimitive<FHIRBool>?
	
	/// The originating appointment in a recurring set of appointments
	public var originatingAppointment: Reference?
	
	/// Participants involved in appointment
	public var participant: [AppointmentParticipant]
	
	/// Detailed information and instructions for the patient
	public var patientInstruction: [CodeableReference]?
	
	/// The previous appointment in a series
	public var previousAppointment: Reference?
	
	/// Used to make informed decisions if needing to re-prioritize
	public var priority: CodeableConcept?
	
	/// Reason this appointment is scheduled
	public var reason: [CodeableReference]?
	
	/// The sequence number in the recurrence
	public var recurrenceId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Details of the recurrence pattern/template used to generate occurrences
	public var recurrenceTemplate: [AppointmentRecurrenceTemplate]?
	
	/// Appointment replaced by this Appointment
	public var replaces: [Reference]?
	
	/// Potential date/time interval(s) requested to allocate the appointment within
	public var requestedPeriod: [Period]?
	
	/// A broad categorization of the service that is to be performed during this appointment
	public var serviceCategory: [CodeableConcept]?
	
	/// The specific service that is to be performed during this appointment
	public var serviceType: [CodeableReference]?
	
	/// The slots that this appointment is filling
	public var slot: [Reference]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment
	public var specialty: [CodeableConcept]?
	
	/// When appointment is to take place
	public var start: FHIRPrimitive<Instant>?
	
	/// The overall status of the Appointment. Each of the participants has their own participation status which
	/// indicates their involvement in the process, however this status indicates the shared status.
	public var status: FHIRPrimitive<AppointmentStatus>
	
	/// The patient or group associated with the appointment
	public var subject: Reference?
	
	/// Additional information to support the appointment
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Connection details of a virtual service (e.g. conference call)
	public var virtualService: [VirtualServiceDetail]?
	
	/// Designated initializer
	public init(
		account: [Reference]? = nil,
		appointmentType: CodeableConcept? = nil,
		basedOn: [Reference]? = nil,
		cancellationDate: FHIRPrimitive<DateTime>? = nil,
		cancellationReason: CodeableConcept? = nil,
		`class`: [CodeableConcept]? = nil,
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
		occurrenceChanged: FHIRPrimitive<FHIRBool>? = nil,
		originatingAppointment: Reference? = nil,
		participant: [AppointmentParticipant],
		patientInstruction: [CodeableReference]? = nil,
		previousAppointment: Reference? = nil,
		priority: CodeableConcept? = nil,
		reason: [CodeableReference]? = nil,
		recurrenceId: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		recurrenceTemplate: [AppointmentRecurrenceTemplate]? = nil,
		replaces: [Reference]? = nil,
		requestedPeriod: [Period]? = nil,
		serviceCategory: [CodeableConcept]? = nil,
		serviceType: [CodeableReference]? = nil,
		slot: [Reference]? = nil,
		specialty: [CodeableConcept]? = nil,
		start: FHIRPrimitive<Instant>? = nil,
		status: FHIRPrimitive<AppointmentStatus>,
		subject: Reference? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		virtualService: [VirtualServiceDetail]? = nil
	) {
		self.account = account
		self.appointmentType = appointmentType
		self.basedOn = basedOn
		self.cancellationDate = cancellationDate
		self.cancellationReason = cancellationReason
		self.`class` = `class`
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
		self.occurrenceChanged = occurrenceChanged
		self.originatingAppointment = originatingAppointment
		self.participant = participant
		self.patientInstruction = patientInstruction
		self.previousAppointment = previousAppointment
		self.priority = priority
		self.reason = reason
		self.recurrenceId = recurrenceId
		self.recurrenceTemplate = recurrenceTemplate
		self.replaces = replaces
		self.requestedPeriod = requestedPeriod
		self.serviceCategory = serviceCategory
		self.serviceType = serviceType
		self.slot = slot
		self.specialty = specialty
		self.start = start
		self.status = status
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
		self.virtualService = virtualService
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case account
		case appointmentType
		case basedOn
		case cancellationDate; case _cancellationDate
		case cancellationReason
		case `class` = "class"
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
		case note
		case occurrenceChanged; case _occurrenceChanged
		case originatingAppointment
		case participant
		case patientInstruction
		case previousAppointment
		case priority
		case reason
		case recurrenceId; case _recurrenceId
		case recurrenceTemplate
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
		case text
		case virtualService
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.appointmentType = try CodeableConcept(from: _container, forKeyIfPresent: .appointmentType)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.cancellationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .cancellationDate, auxiliaryKey: ._cancellationDate)
		self.cancellationReason = try CodeableConcept(from: _container, forKeyIfPresent: .cancellationReason)
		self.`class` = try [CodeableConcept](from: _container, forKeyIfPresent: .`class`)
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
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrenceChanged = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .occurrenceChanged, auxiliaryKey: ._occurrenceChanged)
		self.originatingAppointment = try Reference(from: _container, forKeyIfPresent: .originatingAppointment)
		self.participant = try [AppointmentParticipant](from: _container, forKey: .participant)
		self.patientInstruction = try [CodeableReference](from: _container, forKeyIfPresent: .patientInstruction)
		self.previousAppointment = try Reference(from: _container, forKeyIfPresent: .previousAppointment)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recurrenceId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .recurrenceId, auxiliaryKey: ._recurrenceId)
		self.recurrenceTemplate = try [AppointmentRecurrenceTemplate](from: _container, forKeyIfPresent: .recurrenceTemplate)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requestedPeriod = try [Period](from: _container, forKeyIfPresent: .requestedPeriod)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableReference](from: _container, forKeyIfPresent: .serviceType)
		self.slot = try [Reference](from: _container, forKeyIfPresent: .slot)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<AppointmentStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.virtualService = try [VirtualServiceDetail](from: _container, forKeyIfPresent: .virtualService)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try appointmentType?.encode(on: &_container, forKey: .appointmentType)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try cancellationDate?.encode(on: &_container, forKey: .cancellationDate, auxiliaryKey: ._cancellationDate)
		try cancellationReason?.encode(on: &_container, forKey: .cancellationReason)
		try `class`?.encode(on: &_container, forKey: .`class`)
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
		try note?.encode(on: &_container, forKey: .note)
		try occurrenceChanged?.encode(on: &_container, forKey: .occurrenceChanged, auxiliaryKey: ._occurrenceChanged)
		try originatingAppointment?.encode(on: &_container, forKey: .originatingAppointment)
		try participant.encode(on: &_container, forKey: .participant)
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction)
		try previousAppointment?.encode(on: &_container, forKey: .previousAppointment)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try recurrenceId?.encode(on: &_container, forKey: .recurrenceId, auxiliaryKey: ._recurrenceId)
		try recurrenceTemplate?.encode(on: &_container, forKey: .recurrenceTemplate)
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
		try text?.encode(on: &_container, forKey: .text)
		try virtualService?.encode(on: &_container, forKey: .virtualService)
	}
}

/**
 Participants involved in appointment.
 
 List of participants involved in the appointment.
 */
public struct AppointmentParticipant: BackboneElement {
	
	/// The individual, device, location, or service participating in the appointment
	public var actor: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Participation period of the actor
	public var period: Period?
	
	/// The participant is required to attend (optional when false)
	public var required: FHIRPrimitive<FHIRBool>?
	
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
		required: FHIRPrimitive<FHIRBool>? = nil,
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
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
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

/**
 Details of the recurrence pattern/template used to generate occurrences.
 
 The details of the recurrence pattern or template that is used to generate recurring appointments.
 */
public struct AppointmentRecurrenceTemplate: BackboneElement {
	
	/// Any dates that should be excluded from the series
	public var excludingDate: [FHIRPrimitive<FHIRDate>]?
	
	/// Any recurrence IDs that should be excluded from the recurrence
	public var excludingRecurrenceId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The date when the recurrence should end
	public var lastOccurrenceDate: FHIRPrimitive<FHIRDate>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Information about monthly recurring appointments
	public var monthlyTemplate: AppointmentRecurrenceTemplateMonthlyTemplate?
	
	/// The number of planned occurrences
	public var occurrenceCount: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Specific dates for a recurring set of appointments (no template)
	public var occurrenceDate: [FHIRPrimitive<FHIRDate>]?
	
	/// The frequency of the recurrence
	public var recurrenceType: CodeableConcept
	
	/// The timezone of the occurrences
	public var timezone: CodeableConcept?
	
	/// Information about weekly recurring appointments
	public var weeklyTemplate: AppointmentRecurrenceTemplateWeeklyTemplate?
	
	/// Information about yearly recurring appointments
	public var yearlyTemplate: AppointmentRecurrenceTemplateYearlyTemplate?
	
	/// Designated initializer
	public init(
		excludingDate: [FHIRPrimitive<FHIRDate>]? = nil,
		excludingRecurrenceId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lastOccurrenceDate: FHIRPrimitive<FHIRDate>? = nil,
		modifierExtension: [Extension]? = nil,
		monthlyTemplate: AppointmentRecurrenceTemplateMonthlyTemplate? = nil,
		occurrenceCount: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		occurrenceDate: [FHIRPrimitive<FHIRDate>]? = nil,
		recurrenceType: CodeableConcept,
		timezone: CodeableConcept? = nil,
		weeklyTemplate: AppointmentRecurrenceTemplateWeeklyTemplate? = nil,
		yearlyTemplate: AppointmentRecurrenceTemplateYearlyTemplate? = nil
	) {
		self.excludingDate = excludingDate
		self.excludingRecurrenceId = excludingRecurrenceId
		self.`extension` = `extension`
		self.id = id
		self.lastOccurrenceDate = lastOccurrenceDate
		self.modifierExtension = modifierExtension
		self.monthlyTemplate = monthlyTemplate
		self.occurrenceCount = occurrenceCount
		self.occurrenceDate = occurrenceDate
		self.recurrenceType = recurrenceType
		self.timezone = timezone
		self.weeklyTemplate = weeklyTemplate
		self.yearlyTemplate = yearlyTemplate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case excludingDate; case _excludingDate
		case excludingRecurrenceId; case _excludingRecurrenceId
		case `extension` = "extension"
		case id; case _id
		case lastOccurrenceDate; case _lastOccurrenceDate
		case modifierExtension
		case monthlyTemplate
		case occurrenceCount; case _occurrenceCount
		case occurrenceDate; case _occurrenceDate
		case recurrenceType
		case timezone
		case weeklyTemplate
		case yearlyTemplate
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.excludingDate = try [FHIRPrimitive<FHIRDate>](from: _container, forKeyIfPresent: .excludingDate, auxiliaryKey: ._excludingDate)
		self.excludingRecurrenceId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .excludingRecurrenceId, auxiliaryKey: ._excludingRecurrenceId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lastOccurrenceDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastOccurrenceDate, auxiliaryKey: ._lastOccurrenceDate)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.monthlyTemplate = try AppointmentRecurrenceTemplateMonthlyTemplate(from: _container, forKeyIfPresent: .monthlyTemplate)
		self.occurrenceCount = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .occurrenceCount, auxiliaryKey: ._occurrenceCount)
		self.occurrenceDate = try [FHIRPrimitive<FHIRDate>](from: _container, forKeyIfPresent: .occurrenceDate, auxiliaryKey: ._occurrenceDate)
		self.recurrenceType = try CodeableConcept(from: _container, forKey: .recurrenceType)
		self.timezone = try CodeableConcept(from: _container, forKeyIfPresent: .timezone)
		self.weeklyTemplate = try AppointmentRecurrenceTemplateWeeklyTemplate(from: _container, forKeyIfPresent: .weeklyTemplate)
		self.yearlyTemplate = try AppointmentRecurrenceTemplateYearlyTemplate(from: _container, forKeyIfPresent: .yearlyTemplate)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try excludingDate?.encode(on: &_container, forKey: .excludingDate, auxiliaryKey: ._excludingDate)
		try excludingRecurrenceId?.encode(on: &_container, forKey: .excludingRecurrenceId, auxiliaryKey: ._excludingRecurrenceId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lastOccurrenceDate?.encode(on: &_container, forKey: .lastOccurrenceDate, auxiliaryKey: ._lastOccurrenceDate)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try monthlyTemplate?.encode(on: &_container, forKey: .monthlyTemplate)
		try occurrenceCount?.encode(on: &_container, forKey: .occurrenceCount, auxiliaryKey: ._occurrenceCount)
		try occurrenceDate?.encode(on: &_container, forKey: .occurrenceDate, auxiliaryKey: ._occurrenceDate)
		try recurrenceType.encode(on: &_container, forKey: .recurrenceType)
		try timezone?.encode(on: &_container, forKey: .timezone)
		try weeklyTemplate?.encode(on: &_container, forKey: .weeklyTemplate)
		try yearlyTemplate?.encode(on: &_container, forKey: .yearlyTemplate)
	}
}

/**
 Information about monthly recurring appointments.
 */
public struct AppointmentRecurrenceTemplateMonthlyTemplate: BackboneElement {
	
	/// Recurs on a specific day of the month
	public var dayOfMonth: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Indicates which day of the week the appointment should occur
	public var dayOfWeek: Coding?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Recurs every nth month
	public var monthInterval: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Indicates which week of the month the appointment should occur
	public var nthWeekOfMonth: Coding?
	
	/// Designated initializer
	public init(
		dayOfMonth: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		dayOfWeek: Coding? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		monthInterval: FHIRPrimitive<FHIRPositiveInteger>,
		nthWeekOfMonth: Coding? = nil
	) {
		self.dayOfMonth = dayOfMonth
		self.dayOfWeek = dayOfWeek
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.monthInterval = monthInterval
		self.nthWeekOfMonth = nthWeekOfMonth
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dayOfMonth; case _dayOfMonth
		case dayOfWeek
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case monthInterval; case _monthInterval
		case nthWeekOfMonth
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dayOfMonth = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .dayOfMonth, auxiliaryKey: ._dayOfMonth)
		self.dayOfWeek = try Coding(from: _container, forKeyIfPresent: .dayOfWeek)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.monthInterval = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .monthInterval, auxiliaryKey: ._monthInterval)
		self.nthWeekOfMonth = try Coding(from: _container, forKeyIfPresent: .nthWeekOfMonth)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dayOfMonth?.encode(on: &_container, forKey: .dayOfMonth, auxiliaryKey: ._dayOfMonth)
		try dayOfWeek?.encode(on: &_container, forKey: .dayOfWeek)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try monthInterval.encode(on: &_container, forKey: .monthInterval, auxiliaryKey: ._monthInterval)
		try nthWeekOfMonth?.encode(on: &_container, forKey: .nthWeekOfMonth)
	}
}

/**
 Information about weekly recurring appointments.
 */
public struct AppointmentRecurrenceTemplateWeeklyTemplate: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Recurs on Friday
	public var friday: FHIRPrimitive<FHIRBool>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Recurs on Mondays
	public var monday: FHIRPrimitive<FHIRBool>?
	
	/// Recurs on Saturday
	public var saturday: FHIRPrimitive<FHIRBool>?
	
	/// Recurs on Sunday
	public var sunday: FHIRPrimitive<FHIRBool>?
	
	/// Recurs on Thursday
	public var thursday: FHIRPrimitive<FHIRBool>?
	
	/// Recurs on Tuesday
	public var tuesday: FHIRPrimitive<FHIRBool>?
	
	/// Recurs on Wednesday
	public var wednesday: FHIRPrimitive<FHIRBool>?
	
	/// Recurs every nth week
	public var weekInterval: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		friday: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		monday: FHIRPrimitive<FHIRBool>? = nil,
		saturday: FHIRPrimitive<FHIRBool>? = nil,
		sunday: FHIRPrimitive<FHIRBool>? = nil,
		thursday: FHIRPrimitive<FHIRBool>? = nil,
		tuesday: FHIRPrimitive<FHIRBool>? = nil,
		wednesday: FHIRPrimitive<FHIRBool>? = nil,
		weekInterval: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.`extension` = `extension`
		self.friday = friday
		self.id = id
		self.modifierExtension = modifierExtension
		self.monday = monday
		self.saturday = saturday
		self.sunday = sunday
		self.thursday = thursday
		self.tuesday = tuesday
		self.wednesday = wednesday
		self.weekInterval = weekInterval
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case friday; case _friday
		case id; case _id
		case modifierExtension
		case monday; case _monday
		case saturday; case _saturday
		case sunday; case _sunday
		case thursday; case _thursday
		case tuesday; case _tuesday
		case wednesday; case _wednesday
		case weekInterval; case _weekInterval
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.friday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .friday, auxiliaryKey: ._friday)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.monday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .monday, auxiliaryKey: ._monday)
		self.saturday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .saturday, auxiliaryKey: ._saturday)
		self.sunday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .sunday, auxiliaryKey: ._sunday)
		self.thursday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .thursday, auxiliaryKey: ._thursday)
		self.tuesday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .tuesday, auxiliaryKey: ._tuesday)
		self.wednesday = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .wednesday, auxiliaryKey: ._wednesday)
		self.weekInterval = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .weekInterval, auxiliaryKey: ._weekInterval)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try friday?.encode(on: &_container, forKey: .friday, auxiliaryKey: ._friday)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try monday?.encode(on: &_container, forKey: .monday, auxiliaryKey: ._monday)
		try saturday?.encode(on: &_container, forKey: .saturday, auxiliaryKey: ._saturday)
		try sunday?.encode(on: &_container, forKey: .sunday, auxiliaryKey: ._sunday)
		try thursday?.encode(on: &_container, forKey: .thursday, auxiliaryKey: ._thursday)
		try tuesday?.encode(on: &_container, forKey: .tuesday, auxiliaryKey: ._tuesday)
		try wednesday?.encode(on: &_container, forKey: .wednesday, auxiliaryKey: ._wednesday)
		try weekInterval?.encode(on: &_container, forKey: .weekInterval, auxiliaryKey: ._weekInterval)
	}
}

/**
 Information about yearly recurring appointments.
 */
public struct AppointmentRecurrenceTemplateYearlyTemplate: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Recurs every nth year
	public var yearInterval: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		yearInterval: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.yearInterval = yearInterval
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case yearInterval; case _yearInterval
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.yearInterval = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .yearInterval, auxiliaryKey: ._yearInterval)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try yearInterval.encode(on: &_container, forKey: .yearInterval, auxiliaryKey: ._yearInterval)
	}
}
