//
//  TriggerDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition)
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
 
 A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by
 the type element.
 */
public struct TriggerDefinition: Element {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case reference(Reference)
		indirect case timing(Timing)
	}
	
	/// Whether the event triggers (boolean expression)
	public var condition: Expression?
	
	/// Triggering data of the event (multiple = 'and')
	public var data: [DataRequirement]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Name or URI that identifies the event
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Timing of the event
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// The type of triggering event.
	public var type: FHIRPrimitive<TriggerType>
	
	/// Designated initializer
	public init(
		condition: Expression? = nil,
		data: [DataRequirement]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		timing: TimingX? = nil,
		type: FHIRPrimitive<TriggerType>
	) {
		self.condition = condition
		self.data = data
		self.`extension` = `extension`
		self.id = id
		self.name = name
		self.timing = timing
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case data
		case `extension` = "extension"
		case id; case _id
		case name; case _name
		case timingDate; case _timingDate
		case timingDateTime; case _timingDateTime
		case timingReference
		case timingTiming
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.condition = try Expression(from: _container, forKeyIfPresent: .condition)
		self.data = try [DataRequirement](from: _container, forKeyIfPresent: .data)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.timing = try Self._decodeTiming(from: _container)
		self.type = try FHIRPrimitive<TriggerType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try condition?.encode(on: &_container, forKey: .condition)
		try data?.encode(on: &_container, forKey: .data)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = timing {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .timingDate, auxiliaryKey: ._timingDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .timingReference)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .timingTiming)
		}
		}
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimingX? {
		var _t_timing: TimingX? = nil
		if let timingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .timingDate, auxiliaryKey: ._timingDate) {
			_t_timing = .date(timingDate)
		}
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .dateTime(timingDateTime)
		}
		if let timingReference = try Reference(from: _container, forKeyIfPresent: .timingReference) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingReference, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .reference(timingReference)
		}
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		return _t_timing
	}
}
