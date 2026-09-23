//
//  TriggerDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition)
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
 Defines an expected trigger for a module.
 
 A description of a triggering event.
 */
public struct TriggerDefinition: Element {
	
	/// All possible types for "eventTiming[x]"
	public enum EventTimingX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case reference(Reference)
		indirect case timing(Timing)
	}
	
	/// Triggering data of the event
	public var eventData: DataRequirement?
	
	/// Triggering event name
	public var eventName: FHIRPrimitive<FHIRString>?
	
	/// Timing of the event
	/// One of `eventTiming[x]`
	public var eventTiming: EventTimingX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The type of triggering event.
	public var type: FHIRPrimitive<TriggerType>
	
	/// Designated initializer
	public init(
		eventData: DataRequirement? = nil,
		eventName: FHIRPrimitive<FHIRString>? = nil,
		eventTiming: EventTimingX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<TriggerType>
	) {
		self.eventData = eventData
		self.eventName = eventName
		self.eventTiming = eventTiming
		self.`extension` = `extension`
		self.id = id
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case eventData
		case eventName; case _eventName
		case eventTimingDate; case _eventTimingDate
		case eventTimingDateTime; case _eventTimingDateTime
		case eventTimingReference
		case eventTimingTiming
		case `extension` = "extension"
		case id; case _id
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.eventData = try DataRequirement(from: _container, forKeyIfPresent: .eventData)
		self.eventName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .eventName, auxiliaryKey: ._eventName)
		self.eventTiming = try Self._decodeEventTiming(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.type = try FHIRPrimitive<TriggerType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try eventData?.encode(on: &_container, forKey: .eventData)
		try eventName?.encode(on: &_container, forKey: .eventName, auxiliaryKey: ._eventName)
		if let _enum = eventTiming {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .eventTimingDate, auxiliaryKey: ._eventTimingDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .eventTimingDateTime, auxiliaryKey: ._eventTimingDateTime)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .eventTimingReference)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .eventTimingTiming)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEventTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EventTimingX? {
		var _t_eventTiming: EventTimingX? = nil
		if let eventTimingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .eventTimingDate, auxiliaryKey: ._eventTimingDate) {
			_t_eventTiming = .date(eventTimingDate)
		}
		if let eventTimingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .eventTimingDateTime, auxiliaryKey: ._eventTimingDateTime) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingDateTime, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .dateTime(eventTimingDateTime)
		}
		if let eventTimingReference = try Reference(from: _container, forKeyIfPresent: .eventTimingReference) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingReference, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .reference(eventTimingReference)
		}
		if let eventTimingTiming = try Timing(from: _container, forKeyIfPresent: .eventTimingTiming) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingTiming, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .timing(eventTimingTiming)
		}
		return _t_eventTiming
	}
}
