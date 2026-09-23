//
//  Availability.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Availability)
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
 Availability data for an {item}.
 
 Availability data for an {item}, declaring what days/times are available, and any exceptions. The exceptions could be
 textual only, e.g. Public holidays, or could be time period specific and indicate a specific years dates.
 */
public struct Availability: DataType {
	
	/// Times the {item} is available
	public var availableTime: [AvailabilityAvailableTime]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Not available during this time due to provided reason
	public var notAvailableTime: [AvailabilityNotAvailableTime]?
	
	/// When the availability applies
	public var period: Period?
	
	/// Designated initializer
	public init(
		availableTime: [AvailabilityAvailableTime]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		notAvailableTime: [AvailabilityNotAvailableTime]? = nil,
		period: Period? = nil
	) {
		self.availableTime = availableTime
		self.`extension` = `extension`
		self.id = id
		self.notAvailableTime = notAvailableTime
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availableTime
		case `extension` = "extension"
		case id; case _id
		case notAvailableTime
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.availableTime = try [AvailabilityAvailableTime](from: _container, forKeyIfPresent: .availableTime)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.notAvailableTime = try [AvailabilityNotAvailableTime](from: _container, forKeyIfPresent: .notAvailableTime)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try availableTime?.encode(on: &_container, forKey: .availableTime)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try notAvailableTime?.encode(on: &_container, forKey: .notAvailableTime)
		try period?.encode(on: &_container, forKey: .period)
	}
}

/**
 Times the {item} is available.
 
 A collection of times that the {item} is available.
 */
public struct AvailabilityAvailableTime: Element {
	
	/// Always available? i.e. 24 hour service
	public var allDay: FHIRPrimitive<FHIRBool>?
	
	/// Closing time of day (ignored if allDay = true)
	public var availableEndTime: FHIRPrimitive<FHIRTime>?
	
	/// Opening time of day (ignored if allDay = true)
	public var availableStartTime: FHIRPrimitive<FHIRTime>?
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [FHIRPrimitive<DaysOfWeek>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		allDay: FHIRPrimitive<FHIRBool>? = nil,
		availableEndTime: FHIRPrimitive<FHIRTime>? = nil,
		availableStartTime: FHIRPrimitive<FHIRTime>? = nil,
		daysOfWeek: [FHIRPrimitive<DaysOfWeek>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allDay = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allDay, auxiliaryKey: ._allDay)
		self.availableEndTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableEndTime, auxiliaryKey: ._availableEndTime)
		self.availableStartTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableStartTime, auxiliaryKey: ._availableStartTime)
		self.daysOfWeek = try [FHIRPrimitive<DaysOfWeek>](from: _container, forKeyIfPresent: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try allDay?.encode(on: &_container, forKey: .allDay, auxiliaryKey: ._allDay)
		try availableEndTime?.encode(on: &_container, forKey: .availableEndTime, auxiliaryKey: ._availableEndTime)
		try availableStartTime?.encode(on: &_container, forKey: .availableStartTime, auxiliaryKey: ._availableStartTime)
		try daysOfWeek?.encode(on: &_container, forKey: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
	}
}

/**
 Not available during this time due to provided reason.
 
 The {item} is not available during this period of time due to the provided reason.
 */
public struct AvailabilityNotAvailableTime: Element {
	
	/// Reason presented to the user explaining why time not available
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Service not available during this period
	public var during: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		during: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil
	) {
		self.description_fhir = description_fhir
		self.during = during
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case during
		case `extension` = "extension"
		case id; case _id
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.during = try Period(from: _container, forKeyIfPresent: .during)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try during?.encode(on: &_container, forKey: .during)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
	}
}
