//
//  Availability.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Availability)
//  Copyright 2023 Apple Inc.
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
 Availability data for an {item}.
 */
open class Availability: DataType {
	
	/// Times the {item} is available
	public var availableTime: [AvailabilityAvailableTime]?
	
	/// Not available during this time due to provided reason
	public var notAvailableTime: [AvailabilityNotAvailableTime]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		availableTime: [AvailabilityAvailableTime]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		notAvailableTime: [AvailabilityNotAvailableTime]? = nil
	) {
		self.init()
		self.availableTime = availableTime
		self.`extension` = `extension`
		self.id = id
		self.notAvailableTime = notAvailableTime
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availableTime
		case notAvailableTime
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.availableTime = try [AvailabilityAvailableTime](from: _container, forKeyIfPresent: .availableTime)
		self.notAvailableTime = try [AvailabilityNotAvailableTime](from: _container, forKeyIfPresent: .notAvailableTime)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try availableTime?.encode(on: &_container, forKey: .availableTime)
		try notAvailableTime?.encode(on: &_container, forKey: .notAvailableTime)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Availability else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return availableTime == _other.availableTime
		    && notAvailableTime == _other.notAvailableTime
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(availableTime)
		hasher.combine(notAvailableTime)
	}
}

/**
 Times the {item} is available.
 */
open class AvailabilityAvailableTime: Element {
	
	/// None
	public var daysOfWeek: [FHIRPrimitive<DaysOfWeek>]?
	
	/// Always available? i.e. 24 hour service
	public var allDay: FHIRPrimitive<FHIRBool>?
	
	/// Opening time of day (ignored if allDay = true)
	public var availableStartTime: FHIRPrimitive<FHIRTime>?
	
	/// Closing time of day (ignored if allDay = true)
	public var availableEndTime: FHIRPrimitive<FHIRTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		allDay: FHIRPrimitive<FHIRBool>? = nil,
		availableEndTime: FHIRPrimitive<FHIRTime>? = nil,
		availableStartTime: FHIRPrimitive<FHIRTime>? = nil,
		daysOfWeek: [FHIRPrimitive<DaysOfWeek>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.allDay = allDay
		self.availableEndTime = availableEndTime
		self.availableStartTime = availableStartTime
		self.daysOfWeek = daysOfWeek
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allDay; case _allDay
		case availableEndTime; case _availableEndTime
		case availableStartTime; case _availableStartTime
		case daysOfWeek; case _daysOfWeek
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allDay = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allDay, auxiliaryKey: ._allDay)
		self.availableEndTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableEndTime, auxiliaryKey: ._availableEndTime)
		self.availableStartTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableStartTime, auxiliaryKey: ._availableStartTime)
		self.daysOfWeek = try [FHIRPrimitive<DaysOfWeek>](from: _container, forKeyIfPresent: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allDay?.encode(on: &_container, forKey: .allDay, auxiliaryKey: ._allDay)
		try availableEndTime?.encode(on: &_container, forKey: .availableEndTime, auxiliaryKey: ._availableEndTime)
		try availableStartTime?.encode(on: &_container, forKey: .availableStartTime, auxiliaryKey: ._availableStartTime)
		try daysOfWeek?.encode(on: &_container, forKey: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AvailabilityAvailableTime else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allDay == _other.allDay
		    && availableEndTime == _other.availableEndTime
		    && availableStartTime == _other.availableStartTime
		    && daysOfWeek == _other.daysOfWeek
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allDay)
		hasher.combine(availableEndTime)
		hasher.combine(availableStartTime)
		hasher.combine(daysOfWeek)
	}
}

/**
 Not available during this time due to provided reason.
 */
open class AvailabilityNotAvailableTime: Element {
	
	/// Reason presented to the user explaining why time not available
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Service not available during this period
	public var during: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		during: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.during = during
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case during
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.during = try Period(from: _container, forKeyIfPresent: .during)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try during?.encode(on: &_container, forKey: .during)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AvailabilityNotAvailableTime else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && during == _other.during
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(during)
	}
}
