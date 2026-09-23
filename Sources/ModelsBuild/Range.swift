//
//  Range.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Range)
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
 Set of values bounded by low and high.
 
 A set of ordered Quantities defined by a low and high limit.
 */
public struct Range: DataType {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// High limit
	public var high: Quantity?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Low limit
	public var low: Quantity?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		high: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		low: Quantity? = nil
	) {
		self.`extension` = `extension`
		self.high = high
		self.id = id
		self.low = low
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case high
		case id; case _id
		case low
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.high = try Quantity(from: _container, forKeyIfPresent: .high)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.low = try Quantity(from: _container, forKeyIfPresent: .low)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try high?.encode(on: &_container, forKey: .high)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try low?.encode(on: &_container, forKey: .low)
	}
}
