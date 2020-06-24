//
//  Slot.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Slot)
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
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service -
	/// which is at a location, rather than the location itself). If provided then this overrides the value provided on
	/// the availability resource
	public var type: CodeableConcept?
	
	/// The schedule resource that this slot defines an interval of status information
	public var schedule: Reference
	
	/// 
	/// Restricted to: ['busy', 'free', 'busy-unavailable', 'busy-tentative']
	public var freeBusyType: FHIRPrimitive<SlotStatus>
	
	/// Date/Time that the slot is to begin
	public var start: FHIRPrimitive<Instant>
	
	/// Date/Time that the slot is to conclude
	public var end: FHIRPrimitive<Instant>
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time
	public var overbooked: FHIRPrimitive<FHIRBool>?
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(end: FHIRPrimitive<Instant>, freeBusyType: FHIRPrimitive<SlotStatus>, schedule: Reference, start: FHIRPrimitive<Instant>) {
		self.end = end
		self.freeBusyType = freeBusyType
		self.schedule = schedule
		self.start = start
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comment: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							end: FHIRPrimitive<Instant>,
							`extension`: [Extension]? = nil,
							freeBusyType: FHIRPrimitive<SlotStatus>,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							overbooked: FHIRPrimitive<FHIRBool>? = nil,
							schedule: Reference,
							start: FHIRPrimitive<Instant>,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(end: end, freeBusyType: freeBusyType, schedule: schedule, start: start)
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
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case end; case _end
		case freeBusyType; case _freeBusyType
		case identifier
		case overbooked; case _overbooked
		case schedule
		case start; case _start
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.freeBusyType = try FHIRPrimitive<SlotStatus>(from: _container, forKey: .freeBusyType, auxiliaryKey: ._freeBusyType)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.overbooked = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .overbooked, auxiliaryKey: ._overbooked)
		self.schedule = try Reference(from: _container, forKey: .schedule)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try end.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try freeBusyType.encode(on: &_container, forKey: .freeBusyType, auxiliaryKey: ._freeBusyType)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try overbooked?.encode(on: &_container, forKey: .overbooked, auxiliaryKey: ._overbooked)
		try schedule.encode(on: &_container, forKey: .schedule)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try type?.encode(on: &_container, forKey: .type)
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
		return comment == _other.comment
		    && end == _other.end
		    && freeBusyType == _other.freeBusyType
		    && identifier == _other.identifier
		    && overbooked == _other.overbooked
		    && schedule == _other.schedule
		    && start == _other.start
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(end)
		hasher.combine(freeBusyType)
		hasher.combine(identifier)
		hasher.combine(overbooked)
		hasher.combine(schedule)
		hasher.combine(start)
		hasher.combine(type)
	}
}
