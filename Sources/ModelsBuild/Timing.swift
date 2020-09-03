//
//  Timing.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Timing)
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
 A timing schedule that specifies an event that may occur multiple times.
 
 Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected
 or requested to occur. The most common usage is in dosage instructions for medications. They are also used when
 planning care of various kinds, and may be used for reporting the schedule to which past regular activities were
 carried out.
 */
open class Timing: BackboneType {
	
	/// When the event occurs
	public var event: [FHIRPrimitive<DateTime>]?
	
	/// When the event is to occur
	public var `repeat`: TimingRepeat?
	
	/// BID | TID | QID | AM | PM | QD | QOD | +
	public var code: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							event: [FHIRPrimitive<DateTime>]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							`repeat`: TimingRepeat? = nil)
	{
		self.init()
		self.code = code
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.`repeat` = `repeat`
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case event; case _event
		case `repeat` = "repeat"
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.event = try [FHIRPrimitive<DateTime>](from: _container, forKeyIfPresent: .event, auxiliaryKey: ._event)
		self.`repeat` = try TimingRepeat(from: _container, forKeyIfPresent: .`repeat`)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try event?.encode(on: &_container, forKey: .event, auxiliaryKey: ._event)
		try `repeat`?.encode(on: &_container, forKey: .`repeat`)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Timing else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && event == _other.event
		    && `repeat` == _other.`repeat`
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(event)
		hasher.combine(`repeat`)
	}
}

/**
 When the event is to occur.
 
 A set of rules that describe when the event is scheduled.
 */
open class TimingRepeat: Element {
	
	/// All possible types for "bounds[x]"
	public enum BoundsX: Hashable {
		case duration(Duration)
		case period(Period)
		case range(Range)
	}
	
	/// Length/Range of lengths, or (Start and/or end) limits
	/// One of `bounds[x]`
	public var bounds: BoundsX?
	
	/// Number of times to repeat
	public var count: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Maximum number of times to repeat
	public var countMax: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// How long when it happens
	public var duration: FHIRPrimitive<FHIRDecimal>?
	
	/// How long when it happens (Max)
	public var durationMax: FHIRPrimitive<FHIRDecimal>?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var durationUnit: FHIRPrimitive<FHIRString>?
	
	/// Event occurs frequency times per period
	public var frequency: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Event occurs up to frequencyMax times per period
	public var frequencyMax: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Event occurs frequency times per period
	public var period: FHIRPrimitive<FHIRDecimal>?
	
	/// Upper limit of period (3-4 hours)
	public var periodMax: FHIRPrimitive<FHIRDecimal>?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var periodUnit: FHIRPrimitive<FHIRString>?
	
	/// If one or more days of week is provided, then the action happens only on the specified day(s).
	public var dayOfWeek: [FHIRPrimitive<DaysOfWeek>]?
	
	/// Time of day for action
	public var timeOfDay: [FHIRPrimitive<FHIRTime>]?
	
	/// Code for time period of occurrence
	public var when: [FHIRPrimitive<FHIRString>]?
	
	/// Minutes from event (before or after)
	public var offset: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bounds: BoundsX? = nil,
							count: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							countMax: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							dayOfWeek: [FHIRPrimitive<DaysOfWeek>]? = nil,
							duration: FHIRPrimitive<FHIRDecimal>? = nil,
							durationMax: FHIRPrimitive<FHIRDecimal>? = nil,
							durationUnit: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							frequency: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							frequencyMax: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							offset: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							period: FHIRPrimitive<FHIRDecimal>? = nil,
							periodMax: FHIRPrimitive<FHIRDecimal>? = nil,
							periodUnit: FHIRPrimitive<FHIRString>? = nil,
							timeOfDay: [FHIRPrimitive<FHIRTime>]? = nil,
							when: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init()
		self.bounds = bounds
		self.count = count
		self.countMax = countMax
		self.dayOfWeek = dayOfWeek
		self.duration = duration
		self.durationMax = durationMax
		self.durationUnit = durationUnit
		self.`extension` = `extension`
		self.frequency = frequency
		self.frequencyMax = frequencyMax
		self.id = id
		self.offset = offset
		self.period = period
		self.periodMax = periodMax
		self.periodUnit = periodUnit
		self.timeOfDay = timeOfDay
		self.when = when
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case boundsDuration
		case boundsPeriod
		case boundsRange
		case count; case _count
		case countMax; case _countMax
		case dayOfWeek; case _dayOfWeek
		case duration; case _duration
		case durationMax; case _durationMax
		case durationUnit; case _durationUnit
		case frequency; case _frequency
		case frequencyMax; case _frequencyMax
		case offset; case _offset
		case period; case _period
		case periodMax; case _periodMax
		case periodUnit; case _periodUnit
		case timeOfDay; case _timeOfDay
		case when; case _when
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_bounds: BoundsX? = nil
		if let boundsDuration = try Duration(from: _container, forKeyIfPresent: .boundsDuration) {
			if _t_bounds != nil {
				throw DecodingError.dataCorruptedError(forKey: .boundsDuration, in: _container, debugDescription: "More than one value provided for \"bounds\"")
			}
			_t_bounds = .duration(boundsDuration)
		}
		if let boundsRange = try Range(from: _container, forKeyIfPresent: .boundsRange) {
			if _t_bounds != nil {
				throw DecodingError.dataCorruptedError(forKey: .boundsRange, in: _container, debugDescription: "More than one value provided for \"bounds\"")
			}
			_t_bounds = .range(boundsRange)
		}
		if let boundsPeriod = try Period(from: _container, forKeyIfPresent: .boundsPeriod) {
			if _t_bounds != nil {
				throw DecodingError.dataCorruptedError(forKey: .boundsPeriod, in: _container, debugDescription: "More than one value provided for \"bounds\"")
			}
			_t_bounds = .period(boundsPeriod)
		}
		self.bounds = _t_bounds
		self.count = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.countMax = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .countMax, auxiliaryKey: ._countMax)
		self.dayOfWeek = try [FHIRPrimitive<DaysOfWeek>](from: _container, forKeyIfPresent: .dayOfWeek, auxiliaryKey: ._dayOfWeek)
		self.duration = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.durationMax = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .durationMax, auxiliaryKey: ._durationMax)
		self.durationUnit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .durationUnit, auxiliaryKey: ._durationUnit)
		self.frequency = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frequency, auxiliaryKey: ._frequency)
		self.frequencyMax = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frequencyMax, auxiliaryKey: ._frequencyMax)
		self.offset = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .offset, auxiliaryKey: ._offset)
		self.period = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .period, auxiliaryKey: ._period)
		self.periodMax = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .periodMax, auxiliaryKey: ._periodMax)
		self.periodUnit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .periodUnit, auxiliaryKey: ._periodUnit)
		self.timeOfDay = try [FHIRPrimitive<FHIRTime>](from: _container, forKeyIfPresent: .timeOfDay, auxiliaryKey: ._timeOfDay)
		self.when = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .when, auxiliaryKey: ._when)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = bounds {
			switch _enum {
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .boundsDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .boundsRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .boundsPeriod)
			}
		}
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try countMax?.encode(on: &_container, forKey: .countMax, auxiliaryKey: ._countMax)
		try dayOfWeek?.encode(on: &_container, forKey: .dayOfWeek, auxiliaryKey: ._dayOfWeek)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try durationMax?.encode(on: &_container, forKey: .durationMax, auxiliaryKey: ._durationMax)
		try durationUnit?.encode(on: &_container, forKey: .durationUnit, auxiliaryKey: ._durationUnit)
		try frequency?.encode(on: &_container, forKey: .frequency, auxiliaryKey: ._frequency)
		try frequencyMax?.encode(on: &_container, forKey: .frequencyMax, auxiliaryKey: ._frequencyMax)
		try offset?.encode(on: &_container, forKey: .offset, auxiliaryKey: ._offset)
		try period?.encode(on: &_container, forKey: .period, auxiliaryKey: ._period)
		try periodMax?.encode(on: &_container, forKey: .periodMax, auxiliaryKey: ._periodMax)
		try periodUnit?.encode(on: &_container, forKey: .periodUnit, auxiliaryKey: ._periodUnit)
		try timeOfDay?.encode(on: &_container, forKey: .timeOfDay, auxiliaryKey: ._timeOfDay)
		try when?.encode(on: &_container, forKey: .when, auxiliaryKey: ._when)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TimingRepeat else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bounds == _other.bounds
		    && count == _other.count
		    && countMax == _other.countMax
		    && dayOfWeek == _other.dayOfWeek
		    && duration == _other.duration
		    && durationMax == _other.durationMax
		    && durationUnit == _other.durationUnit
		    && frequency == _other.frequency
		    && frequencyMax == _other.frequencyMax
		    && offset == _other.offset
		    && period == _other.period
		    && periodMax == _other.periodMax
		    && periodUnit == _other.periodUnit
		    && timeOfDay == _other.timeOfDay
		    && when == _other.when
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bounds)
		hasher.combine(count)
		hasher.combine(countMax)
		hasher.combine(dayOfWeek)
		hasher.combine(duration)
		hasher.combine(durationMax)
		hasher.combine(durationUnit)
		hasher.combine(frequency)
		hasher.combine(frequencyMax)
		hasher.combine(offset)
		hasher.combine(period)
		hasher.combine(periodMax)
		hasher.combine(periodUnit)
		hasher.combine(timeOfDay)
		hasher.combine(when)
	}
}
