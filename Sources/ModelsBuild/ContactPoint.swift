//
//  ContactPoint.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ContactPoint)
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
 Details of a Technology mediated contact point (phone, fax, email, etc.).
 
 Details for all kinds of technology mediated contact points for a person or organization, including telephone, email,
 etc.
 */
public struct ContactPoint: DataType {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Time period when the contact point was/is in use
	public var period: Period?
	
	/// Specify preferred order of use (1 = highest)
	public var rank: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Telecommunications form for contact point - what communications system is required to make use of the contact.
	public var system: FHIRPrimitive<ContactPointSystem>?
	
	/// Identifies the purpose for the contact point.
	public var use: FHIRPrimitive<ContactPointUse>?
	
	/// The actual contact point details
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		period: Period? = nil,
		rank: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		system: FHIRPrimitive<ContactPointSystem>? = nil,
		use: FHIRPrimitive<ContactPointUse>? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.period = period
		self.rank = rank
		self.system = system
		self.use = use
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case period
		case rank; case _rank
		case system; case _system
		case use; case _use
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.rank = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rank, auxiliaryKey: ._rank)
		self.system = try FHIRPrimitive<ContactPointSystem>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.use = try FHIRPrimitive<ContactPointUse>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try period?.encode(on: &_container, forKey: .period)
		try rank?.encode(on: &_container, forKey: .rank, auxiliaryKey: ._rank)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}
