//
//  TriggerDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition)
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
 Defines an expected trigger for a module.
 
 A description of a triggering event.
 */
open class TriggerDefinition: Element {
	
	/// All possible types for "eventTiming[x]"
	public enum EventTimingX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case reference(Reference)
		case timing(Timing)
	}
	
	/// The type of triggering event.
	public var type: FHIRPrimitive<TriggerType>
	
	/// Triggering event name
	public var eventName: FHIRPrimitive<FHIRString>?
	
	/// Timing of the event
	/// One of `eventTiming[x]`
	public var eventTiming: EventTimingX?
	
	/// Triggering data of the event
	public var eventData: DataRequirement?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<TriggerType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							eventData: DataRequirement? = nil,
							eventName: FHIRPrimitive<FHIRString>? = nil,
							eventTiming: EventTimingX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<TriggerType>)
	{
		self.init(type: type)
		self.eventData = eventData
		self.eventName = eventName
		self.eventTiming = eventTiming
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case eventData
		case eventName; case _eventName
		case eventTimingDate; case _eventTimingDate
		case eventTimingDateTime; case _eventTimingDateTime
		case eventTimingReference
		case eventTimingTiming
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.eventData = try DataRequirement(from: _container, forKeyIfPresent: .eventData)
		self.eventName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .eventName, auxiliaryKey: ._eventName)
		var _t_eventTiming: EventTimingX? = nil
		if let eventTimingTiming = try Timing(from: _container, forKeyIfPresent: .eventTimingTiming) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingTiming, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .timing(eventTimingTiming)
		}
		if let eventTimingReference = try Reference(from: _container, forKeyIfPresent: .eventTimingReference) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingReference, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .reference(eventTimingReference)
		}
		if let eventTimingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .eventTimingDate, auxiliaryKey: ._eventTimingDate) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingDate, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .date(eventTimingDate)
		}
		if let eventTimingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .eventTimingDateTime, auxiliaryKey: ._eventTimingDateTime) {
			if _t_eventTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventTimingDateTime, in: _container, debugDescription: "More than one value provided for \"eventTiming\"")
			}
			_t_eventTiming = .dateTime(eventTimingDateTime)
		}
		self.eventTiming = _t_eventTiming
		self.type = try FHIRPrimitive<TriggerType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try eventData?.encode(on: &_container, forKey: .eventData)
		try eventName?.encode(on: &_container, forKey: .eventName, auxiliaryKey: ._eventName)
		if let _enum = eventTiming {
			switch _enum {
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .eventTimingTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .eventTimingReference)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .eventTimingDate, auxiliaryKey: ._eventTimingDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .eventTimingDateTime, auxiliaryKey: ._eventTimingDateTime)
			}
		}
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TriggerDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return eventData == _other.eventData
		    && eventName == _other.eventName
		    && eventTiming == _other.eventTiming
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(eventData)
		hasher.combine(eventName)
		hasher.combine(eventTiming)
		hasher.combine(type)
	}
}
