//
//  Slot.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Slot)
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
 A slot of time on a schedule that may be available for booking appointments.
 */
open class Slot: DomainResource {
	
	override open class var resourceType: ResourceType { return .slot }
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// A broad categorization of the service that is to be performed during this appointment
	public var serviceCategory: [CodeableConcept]?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service -
	/// which is at a location, rather than the location itself). If provided then this overrides the value provided on
	/// the availability resource
	public var serviceType: [CodeableConcept]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment
	public var specialty: [CodeableConcept]?
	
	/// The style of appointment or patient that may be booked in the slot (not service type)
	public var appointmentType: CodeableConcept?
	
	/// The schedule resource that this slot defines an interval of status information
	public var schedule: Reference
	
	/// None
	public var status: FHIRPrimitive<SlotStatus>
	
	/// Date/Time that the slot is to begin
	public var start: FHIRPrimitive<Instant>
	
	/// Date/Time that the slot is to conclude
	public var end: FHIRPrimitive<Instant>
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time
	public var overbooked: FHIRPrimitive<FHIRBool>?
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(end: FHIRPrimitive<Instant>, schedule: Reference, start: FHIRPrimitive<Instant>, status: FHIRPrimitive<SlotStatus>) {
		self.end = end
		self.schedule = schedule
		self.start = start
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							appointmentType: CodeableConcept? = nil,
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
							serviceType: [CodeableConcept]? = nil,
							specialty: [CodeableConcept]? = nil,
							start: FHIRPrimitive<Instant>,
							status: FHIRPrimitive<SlotStatus>,
							text: Narrative? = nil)
	{
		self.init(end: end, schedule: schedule, start: start, status: status)
		self.appointmentType = appointmentType
		self.comment = comment
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.overbooked = overbooked
		self.serviceCategory = serviceCategory
		self.serviceType = serviceType
		self.specialty = specialty
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case appointmentType
		case comment; case _comment
		case end; case _end
		case identifier
		case overbooked; case _overbooked
		case schedule
		case serviceCategory
		case serviceType
		case specialty
		case start; case _start
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.appointmentType = try CodeableConcept(from: _container, forKeyIfPresent: .appointmentType)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.overbooked = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .overbooked, auxiliaryKey: ._overbooked)
		self.schedule = try Reference(from: _container, forKey: .schedule)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceType)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<SlotStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try appointmentType?.encode(on: &_container, forKey: .appointmentType)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try end.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try overbooked?.encode(on: &_container, forKey: .overbooked, auxiliaryKey: ._overbooked)
		try schedule.encode(on: &_container, forKey: .schedule)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Slot else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return appointmentType == _other.appointmentType
		    && comment == _other.comment
		    && end == _other.end
		    && identifier == _other.identifier
		    && overbooked == _other.overbooked
		    && schedule == _other.schedule
		    && serviceCategory == _other.serviceCategory
		    && serviceType == _other.serviceType
		    && specialty == _other.specialty
		    && start == _other.start
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(appointmentType)
		hasher.combine(comment)
		hasher.combine(end)
		hasher.combine(identifier)
		hasher.combine(overbooked)
		hasher.combine(schedule)
		hasher.combine(serviceCategory)
		hasher.combine(serviceType)
		hasher.combine(specialty)
		hasher.combine(start)
		hasher.combine(status)
	}
}
