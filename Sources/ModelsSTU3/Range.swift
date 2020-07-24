//
//  Range.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Range)
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
 Set of values bounded by low and high.
 
 A set of ordered Quantities defined by a low and high limit.
 */
open class Range: Element {
	
	/// Low limit
	public var low: Quantity?
	
	/// High limit
	public var high: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							high: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							low: Quantity? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.high = high
		self.id = id
		self.low = low
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case high
		case low
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.high = try Quantity(from: _container, forKeyIfPresent: .high)
		self.low = try Quantity(from: _container, forKeyIfPresent: .low)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try high?.encode(on: &_container, forKey: .high)
		try low?.encode(on: &_container, forKey: .low)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Range else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return high == _other.high
		    && low == _other.low
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(high)
		hasher.combine(low)
	}
}
