//
//  Timing.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Timing)
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
 A timing schedule that specifies an event that may occur multiple times.
 
 Specifies an event that may occur multiple times. Timing schedules are used to record when things are expected or
 requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning
 care of various kinds.
 */
public struct Timing: Element {
	
	/// QD | QOD | Q4H | Q6H | BID | TID | QID | AM | PM +
	public var code: CodeableConcept?
	
	/// When the event occurs
	public var event: [FHIRPrimitive<DateTime>]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// When the event is to occur
	public var `repeat`: TimingRepeat?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		event: [FHIRPrimitive<DateTime>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		`repeat`: TimingRepeat? = nil
	) {
		self.code = code
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.`repeat` = `repeat`
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case event; case _event
		case `extension` = "extension"
		case id; case _id
		case `repeat` = "repeat"
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.event = try [FHIRPrimitive<DateTime>](from: _container, forKeyIfPresent: .event, auxiliaryKey: ._event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.`repeat` = try TimingRepeat(from: _container, forKeyIfPresent: .`repeat`)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try event?.encode(on: &_container, forKey: .event, auxiliaryKey: ._event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try `repeat`?.encode(on: &_container, forKey: .`repeat`)
	}
}

/**
 When the event is to occur.
 
 A set of rules that describe when the event should occur.
 */
public struct TimingRepeat: Element {
	
	/// All possible types for "bounds[x]"
	public enum BoundsX: Equatable, Hashable, Sendable {
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// Length/Range of lengths, or (Start and/or end) limits
	/// One of `bounds[x]`
	public var bounds: BoundsX?
	
	/// Number of times to repeat
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// How long when it happens
	public var duration: FHIRPrimitive<FHIRDecimal>?
	
	/// How long when it happens (Max)
	public var durationMax: FHIRPrimitive<FHIRDecimal>?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var durationUnits: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Event occurs frequency times per period
	public var frequency: FHIRPrimitive<FHIRInteger>?
	
	/// Event occurs up to frequencyMax times per period
	public var frequencyMax: FHIRPrimitive<FHIRInteger>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Event occurs frequency times per period
	public var period: FHIRPrimitive<FHIRDecimal>?
	
	/// Upper limit of period (3-4 hours)
	public var periodMax: FHIRPrimitive<FHIRDecimal>?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var periodUnits: FHIRPrimitive<FHIRString>?
	
	/// Regular life events the event is tied to
	public var when: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		bounds: BoundsX? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		duration: FHIRPrimitive<FHIRDecimal>? = nil,
		durationMax: FHIRPrimitive<FHIRDecimal>? = nil,
		durationUnits: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		frequency: FHIRPrimitive<FHIRInteger>? = nil,
		frequencyMax: FHIRPrimitive<FHIRInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		period: FHIRPrimitive<FHIRDecimal>? = nil,
		periodMax: FHIRPrimitive<FHIRDecimal>? = nil,
		periodUnits: FHIRPrimitive<FHIRString>? = nil,
		when: FHIRPrimitive<FHIRString>? = nil
	) {
		self.bounds = bounds
		self.count = count
		self.duration = duration
		self.durationMax = durationMax
		self.durationUnits = durationUnits
		self.`extension` = `extension`
		self.frequency = frequency
		self.frequencyMax = frequencyMax
		self.id = id
		self.period = period
		self.periodMax = periodMax
		self.periodUnits = periodUnits
		self.when = when
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case boundsPeriod
		case boundsQuantity
		case boundsRange
		case count; case _count
		case duration; case _duration
		case durationMax; case _durationMax
		case durationUnits; case _durationUnits
		case `extension` = "extension"
		case frequency; case _frequency
		case frequencyMax; case _frequencyMax
		case id; case _id
		case period; case _period
		case periodMax; case _periodMax
		case periodUnits; case _periodUnits
		case when; case _when
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bounds = try Self._decodeBounds(from: _container)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.duration = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.durationMax = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .durationMax, auxiliaryKey: ._durationMax)
		self.durationUnits = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .durationUnits, auxiliaryKey: ._durationUnits)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frequency = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .frequency, auxiliaryKey: ._frequency)
		self.frequencyMax = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .frequencyMax, auxiliaryKey: ._frequencyMax)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.period = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .period, auxiliaryKey: ._period)
		self.periodMax = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .periodMax, auxiliaryKey: ._periodMax)
		self.periodUnits = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .periodUnits, auxiliaryKey: ._periodUnits)
		self.when = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .when, auxiliaryKey: ._when)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = bounds {
		switch _enum {
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .boundsPeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .boundsQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .boundsRange)
		}
		}
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try durationMax?.encode(on: &_container, forKey: .durationMax, auxiliaryKey: ._durationMax)
		try durationUnits?.encode(on: &_container, forKey: .durationUnits, auxiliaryKey: ._durationUnits)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frequency?.encode(on: &_container, forKey: .frequency, auxiliaryKey: ._frequency)
		try frequencyMax?.encode(on: &_container, forKey: .frequencyMax, auxiliaryKey: ._frequencyMax)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try period?.encode(on: &_container, forKey: .period, auxiliaryKey: ._period)
		try periodMax?.encode(on: &_container, forKey: .periodMax, auxiliaryKey: ._periodMax)
		try periodUnits?.encode(on: &_container, forKey: .periodUnits, auxiliaryKey: ._periodUnits)
		try when?.encode(on: &_container, forKey: .when, auxiliaryKey: ._when)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeBounds(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> BoundsX? {
		var _t_bounds: BoundsX? = nil
		if let boundsPeriod = try Period(from: _container, forKeyIfPresent: .boundsPeriod) {
			_t_bounds = .period(boundsPeriod)
		}
		if let boundsQuantity = try Quantity(from: _container, forKeyIfPresent: .boundsQuantity) {
			if _t_bounds != nil {
				throw DecodingError.dataCorruptedError(forKey: .boundsQuantity, in: _container, debugDescription: "More than one value provided for \"bounds\"")
			}
			_t_bounds = .quantity(boundsQuantity)
		}
		if let boundsRange = try Range(from: _container, forKeyIfPresent: .boundsRange) {
			if _t_bounds != nil {
				throw DecodingError.dataCorruptedError(forKey: .boundsRange, in: _container, debugDescription: "More than one value provided for \"bounds\"")
			}
			_t_bounds = .range(boundsRange)
		}
		return _t_bounds
	}
}
