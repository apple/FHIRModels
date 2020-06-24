//
//  TriggerDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition)
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
 
 A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by
 the type element.
 */
open class TriggerDefinition: Element {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case reference(Reference)
		case timing(Timing)
	}
	
	/// The type of triggering event.
	public var type: FHIRPrimitive<TriggerType>
	
	/// Name or URI that identifies the event
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Timing of the event
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Triggering data of the event (multiple = 'and')
	public var data: [DataRequirement]?
	
	/// Whether the event triggers (boolean expression)
	public var condition: Expression?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<TriggerType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							condition: Expression? = nil,
							data: [DataRequirement]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							timing: TimingX? = nil,
							type: FHIRPrimitive<TriggerType>)
	{
		self.init(type: type)
		self.condition = condition
		self.data = data
		self.`extension` = `extension`
		self.id = id
		self.name = name
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case data
		case name; case _name
		case timingDate; case _timingDate
		case timingDateTime; case _timingDateTime
		case timingReference
		case timingTiming
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try Expression(from: _container, forKeyIfPresent: .condition)
		self.data = try [DataRequirement](from: _container, forKeyIfPresent: .data)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		var _t_timing: TimingX? = nil
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		if let timingReference = try Reference(from: _container, forKeyIfPresent: .timingReference) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingReference, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .reference(timingReference)
		}
		if let timingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .timingDate, auxiliaryKey: ._timingDate) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDate, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .date(timingDate)
		}
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .dateTime(timingDateTime)
		}
		self.timing = _t_timing
		self.type = try FHIRPrimitive<TriggerType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition?.encode(on: &_container, forKey: .condition)
		try data?.encode(on: &_container, forKey: .data)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = timing {
			switch _enum {
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .timingTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .timingReference)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .timingDate, auxiliaryKey: ._timingDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
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
		return condition == _other.condition
		    && data == _other.data
		    && name == _other.name
		    && timing == _other.timing
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(data)
		hasher.combine(name)
		hasher.combine(timing)
		hasher.combine(type)
	}
}
