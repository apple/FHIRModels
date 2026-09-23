//
//  AppointmentResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse)
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
 A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
public struct AppointmentResponse: DomainResource {
	
	public static let resourceType: ResourceType = .appointmentResponse
	
	/// Person(s), Location, HealthcareService, or Device
	public var actor: Reference?
	
	/// Appointment this response relates to
	public var appointment: Reference
	
	/// Additional comments
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Time from appointment, or requested new end time
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
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Original date within a recurring request
	public var occurrenceDate: FHIRPrimitive<FHIRDate>?
	
	/// accepted | declined | tentative | needs-action | entered-in-error
	public var participantStatus: FHIRPrimitive<FHIRString>
	
	/// Role of participant in the appointment
	public var participantType: [CodeableConcept]?
	
	/// Indicator for a counter proposal
	public var proposedNewTime: FHIRPrimitive<FHIRBool>?
	
	/// The recurrence ID of the specific recurring request
	public var recurrenceId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// This response is for all occurrences in a recurring request
	public var recurring: FHIRPrimitive<FHIRBool>?
	
	/// Time from appointment, or requested new start time
	public var start: FHIRPrimitive<Instant>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		self.actor = actor
		self.appointment = appointment
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
		self.participantStatus = participantStatus
		self.participantType = participantType
		self.proposedNewTime = proposedNewTime
		self.recurrenceId = recurrenceId
		self.recurring = recurring
		self.start = start
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actor
		case appointment
		case comment; case _comment
		case contained
		case end; case _end
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case occurrenceDate; case _occurrenceDate
		case participantStatus; case _participantStatus
		case participantType
		case proposedNewTime; case _proposedNewTime
		case recurrenceId; case _recurrenceId
		case recurring; case _recurring
		case start; case _start
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.appointment = try Reference(from: _container, forKey: .appointment)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.occurrenceDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .occurrenceDate, auxiliaryKey: ._occurrenceDate)
		self.participantStatus = try FHIRPrimitive<FHIRString>(from: _container, forKey: .participantStatus, auxiliaryKey: ._participantStatus)
		self.participantType = try [CodeableConcept](from: _container, forKeyIfPresent: .participantType)
		self.proposedNewTime = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .proposedNewTime, auxiliaryKey: ._proposedNewTime)
		self.recurrenceId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .recurrenceId, auxiliaryKey: ._recurrenceId)
		self.recurring = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .recurring, auxiliaryKey: ._recurring)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try appointment.encode(on: &_container, forKey: .appointment)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try occurrenceDate?.encode(on: &_container, forKey: .occurrenceDate, auxiliaryKey: ._occurrenceDate)
		try participantStatus.encode(on: &_container, forKey: .participantStatus, auxiliaryKey: ._participantStatus)
		try participantType?.encode(on: &_container, forKey: .participantType)
		try proposedNewTime?.encode(on: &_container, forKey: .proposedNewTime, auxiliaryKey: ._proposedNewTime)
		try recurrenceId?.encode(on: &_container, forKey: .recurrenceId, auxiliaryKey: ._recurrenceId)
		try recurring?.encode(on: &_container, forKey: .recurring, auxiliaryKey: ._recurring)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try text?.encode(on: &_container, forKey: .text)
	}
}
