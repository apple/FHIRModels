//
//  AppointmentResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse)
//  Copyright 2023 Apple Inc.
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
 A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
open class AppointmentResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .appointmentResponse }
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// Appointment this response relates to
	public var appointment: Reference
	
	/// Indicator for a counter proposal
	public var proposedNewTime: FHIRPrimitive<FHIRBool>?
	
	/// Time from appointment, or requested new start time
	public var start: FHIRPrimitive<Instant>?
	
	/// Time from appointment, or requested new end time
	public var end: FHIRPrimitive<Instant>?
	
	/// Role of participant in the appointment
	public var participantType: [CodeableConcept]?
	
	/// Person(s), Location, HealthcareService, or Device
	public var actor: Reference?
	
	/// accepted | declined | tentative | needs-action | entered-in-error
	public var participantStatus: FHIRPrimitive<FHIRString>
	
	/// Additional comments
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// This response is for all occurrences in a recurring request
	public var recurring: FHIRPrimitive<FHIRBool>?
	
	/// Original date within a recurring request
	public var occurrenceDate: FHIRPrimitive<FHIRDate>?
	
	/// The recurrence ID of the specific recurring request
	public var recurrenceId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	public init(appointment: Reference, participantStatus: FHIRPrimitive<FHIRString>) {
		self.appointment = appointment
		self.participantStatus = participantStatus
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference? = nil,
		appointment: Reference,
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		end: FHIRPrimitive<Instant>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		occurrenceDate: FHIRPrimitive<FHIRDate>? = nil,
		participantStatus: FHIRPrimitive<FHIRString>,
		participantType: [CodeableConcept]? = nil,
		proposedNewTime: FHIRPrimitive<FHIRBool>? = nil,
		recurrenceId: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		recurring: FHIRPrimitive<FHIRBool>? = nil,
		start: FHIRPrimitive<Instant>? = nil,
		text: Narrative? = nil
	) {
		self.init(appointment: appointment, participantStatus: participantStatus)
		self.actor = actor
		self.comment = comment
		self.contained = contained
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.occurrenceDate = occurrenceDate
		self.participantType = participantType
		self.proposedNewTime = proposedNewTime
		self.recurrenceId = recurrenceId
		self.recurring = recurring
		self.start = start
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case appointment
		case comment; case _comment
		case end; case _end
		case identifier
		case occurrenceDate; case _occurrenceDate
		case participantStatus; case _participantStatus
		case participantType
		case proposedNewTime; case _proposedNewTime
		case recurrenceId; case _recurrenceId
		case recurring; case _recurring
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.appointment = try Reference(from: _container, forKey: .appointment)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.occurrenceDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .occurrenceDate, auxiliaryKey: ._occurrenceDate)
		self.participantStatus = try FHIRPrimitive<FHIRString>(from: _container, forKey: .participantStatus, auxiliaryKey: ._participantStatus)
		self.participantType = try [CodeableConcept](from: _container, forKeyIfPresent: .participantType)
		self.proposedNewTime = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .proposedNewTime, auxiliaryKey: ._proposedNewTime)
		self.recurrenceId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .recurrenceId, auxiliaryKey: ._recurrenceId)
		self.recurring = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .recurring, auxiliaryKey: ._recurring)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try appointment.encode(on: &_container, forKey: .appointment)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try occurrenceDate?.encode(on: &_container, forKey: .occurrenceDate, auxiliaryKey: ._occurrenceDate)
		try participantStatus.encode(on: &_container, forKey: .participantStatus, auxiliaryKey: ._participantStatus)
		try participantType?.encode(on: &_container, forKey: .participantType)
		try proposedNewTime?.encode(on: &_container, forKey: .proposedNewTime, auxiliaryKey: ._proposedNewTime)
		try recurrenceId?.encode(on: &_container, forKey: .recurrenceId, auxiliaryKey: ._recurrenceId)
		try recurring?.encode(on: &_container, forKey: .recurring, auxiliaryKey: ._recurring)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AppointmentResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && appointment == _other.appointment
		    && comment == _other.comment
		    && end == _other.end
		    && identifier == _other.identifier
		    && occurrenceDate == _other.occurrenceDate
		    && participantStatus == _other.participantStatus
		    && participantType == _other.participantType
		    && proposedNewTime == _other.proposedNewTime
		    && recurrenceId == _other.recurrenceId
		    && recurring == _other.recurring
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(appointment)
		hasher.combine(comment)
		hasher.combine(end)
		hasher.combine(identifier)
		hasher.combine(occurrenceDate)
		hasher.combine(participantStatus)
		hasher.combine(participantType)
		hasher.combine(proposedNewTime)
		hasher.combine(recurrenceId)
		hasher.combine(recurring)
		hasher.combine(start)
	}
}
