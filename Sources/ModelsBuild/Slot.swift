//
//  Slot.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Slot)
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
 A slot of time on a schedule that may be available for booking appointments.
 */
public struct Slot: DomainResource {
	
	public static let resourceType: ResourceType = .slot
	
	/// The style of appointment or patient that may be booked in the slot (not service type)
	public var appointmentType: [CodeableConcept]?
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date/Time that the slot is to conclude
	public var end: FHIRPrimitive<Instant>
	
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
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time
	public var overbooked: FHIRPrimitive<FHIRBool>?
	
	/// The schedule resource that this slot defines an interval of status information
	public var schedule: Reference
	
	/// A broad categorization of the service that is to be performed during this appointment
	public var serviceCategory: [CodeableConcept]?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service -
	/// which is at a location, rather than the location itself). If provided then this overrides the value provided on
	/// the Schedule resource
	public var serviceType: [CodeableReference]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment
	public var specialty: [CodeableConcept]?
	
	/// Date/Time that the slot is to begin
	public var start: FHIRPrimitive<Instant>
	
	/// None
	public var status: FHIRPrimitive<SlotStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		appointmentType: [CodeableConcept]? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		end: FHIRPrimitive<Instant>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		overbooked: FHIRPrimitive<FHIRBool>? = nil,
		schedule: Reference,
		serviceCategory: [CodeableConcept]? = nil,
		serviceType: [CodeableReference]? = nil,
		specialty: [CodeableConcept]? = nil,
		start: FHIRPrimitive<Instant>,
		status: FHIRPrimitive<SlotStatus>,
		text: Narrative? = nil
	) {
		self.appointmentType = appointmentType
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
		self.overbooked = overbooked
		self.schedule = schedule
		self.serviceCategory = serviceCategory
		self.serviceType = serviceType
		self.specialty = specialty
		self.start = start
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case appointmentType
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
		case overbooked; case _overbooked
		case schedule
		case serviceCategory
		case serviceType
		case specialty
		case start; case _start
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.appointmentType = try [CodeableConcept](from: _container, forKeyIfPresent: .appointmentType)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.overbooked = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .overbooked, auxiliaryKey: ._overbooked)
		self.schedule = try Reference(from: _container, forKey: .schedule)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableReference](from: _container, forKeyIfPresent: .serviceType)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<SlotStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try appointmentType?.encode(on: &_container, forKey: .appointmentType)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try end.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try overbooked?.encode(on: &_container, forKey: .overbooked, auxiliaryKey: ._overbooked)
		try schedule.encode(on: &_container, forKey: .schedule)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}
