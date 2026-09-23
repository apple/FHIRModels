//
//  RatioRange.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/RatioRange)
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
 Range of ratio values.
 
 A range of ratios expressed as a low and high numerator and a denominator.
 */
public struct RatioRange: DataType {
	
	/// Denominator value
	public var denominator: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// High Numerator limit
	public var highNumerator: Quantity?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Low Numerator limit
	public var lowNumerator: Quantity?
	
	/// Designated initializer
	public init(
		denominator: Quantity? = nil,
		`extension`: [Extension]? = nil,
		highNumerator: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lowNumerator: Quantity? = nil
	) {
		self.denominator = denominator
		self.`extension` = `extension`
		self.highNumerator = highNumerator
		self.id = id
		self.lowNumerator = lowNumerator
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case denominator
		case `extension` = "extension"
		case highNumerator
		case id; case _id
		case lowNumerator
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.denominator = try Quantity(from: _container, forKeyIfPresent: .denominator)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.highNumerator = try Quantity(from: _container, forKeyIfPresent: .highNumerator)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lowNumerator = try Quantity(from: _container, forKeyIfPresent: .lowNumerator)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try denominator?.encode(on: &_container, forKey: .denominator)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try highNumerator?.encode(on: &_container, forKey: .highNumerator)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lowNumerator?.encode(on: &_container, forKey: .lowNumerator)
	}
}
