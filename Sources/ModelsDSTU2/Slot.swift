//
//  Slot.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Slot)
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
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date/Time that the slot is to conclude
	public var end: FHIRPrimitive<Instant>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// 
	/// Restricted to: ['busy', 'free', 'busy-unavailable', 'busy-tentative']
	public var freeBusyType: FHIRPrimitive<SlotStatus>
	
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
	
	/// Date/Time that the slot is to begin
	public var start: FHIRPrimitive<Instant>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service -
	/// which is at a location, rather than the location itself). If provided then this overrides the value provided on
	/// the availability resource
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept? = nil
	) {
		self.comment = comment
		self.contained = contained
		self.end = end
		self.`extension` = `extension`
		self.freeBusyType = freeBusyType
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.overbooked = overbooked
		self.schedule = schedule
		self.start = start
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case comment; case _comment
		case contained
		case end; case _end
		case `extension` = "extension"
		case freeBusyType; case _freeBusyType
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case overbooked; case _overbooked
		case schedule
		case start; case _start
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
		self.end = try FHIRPrimitive<Instant>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.freeBusyType = try FHIRPrimitive<SlotStatus>(from: _container, forKey: .freeBusyType, auxiliaryKey: ._freeBusyType)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.overbooked = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .overbooked, auxiliaryKey: ._overbooked)
		self.schedule = try Reference(from: _container, forKey: .schedule)
		self.start = try FHIRPrimitive<Instant>(from: _container, forKey: .start, auxiliaryKey: ._start)
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
		try end.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try freeBusyType.encode(on: &_container, forKey: .freeBusyType, auxiliaryKey: ._freeBusyType)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try overbooked?.encode(on: &_container, forKey: .overbooked, auxiliaryKey: ._overbooked)
		try schedule.encode(on: &_container, forKey: .schedule)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}
