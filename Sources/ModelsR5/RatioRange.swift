//
//  RatioRange.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/RatioRange)
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
 Range of ratio values.
 
 A range of ratios expressed as a low and high numerator and a denominator.
 */
open class RatioRange: DataType {
	
	/// Low Numerator limit
	public var lowNumerator: Quantity?
	
	/// High Numerator limit
	public var highNumerator: Quantity?
	
	/// Denominator value
	public var denominator: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		denominator: Quantity? = nil,
		`extension`: [Extension]? = nil,
		highNumerator: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lowNumerator: Quantity? = nil
	) {
		self.init()
		self.denominator = denominator
		self.`extension` = `extension`
		self.highNumerator = highNumerator
		self.id = id
		self.lowNumerator = lowNumerator
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case denominator
		case highNumerator
		case lowNumerator
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.denominator = try Quantity(from: _container, forKeyIfPresent: .denominator)
		self.highNumerator = try Quantity(from: _container, forKeyIfPresent: .highNumerator)
		self.lowNumerator = try Quantity(from: _container, forKeyIfPresent: .lowNumerator)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try denominator?.encode(on: &_container, forKey: .denominator)
		try highNumerator?.encode(on: &_container, forKey: .highNumerator)
		try lowNumerator?.encode(on: &_container, forKey: .lowNumerator)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RatioRange else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return denominator == _other.denominator
		    && highNumerator == _other.highNumerator
		    && lowNumerator == _other.lowNumerator
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(denominator)
		hasher.combine(highNumerator)
		hasher.combine(lowNumerator)
	}
}
