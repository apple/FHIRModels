//
//  Ratio.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Ratio)
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
 A ratio of two Quantity values - a numerator and a denominator.
 
 A relationship of two Quantity values - expressed as a numerator and a denominator.
 */
open class Ratio: Element {
	
	/// Numerator value
	public var numerator: Quantity?
	
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
							id: FHIRPrimitive<FHIRString>? = nil,
							numerator: Quantity? = nil)
	{
		self.init()
		self.denominator = denominator
		self.`extension` = `extension`
		self.id = id
		self.numerator = numerator
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case denominator
		case numerator
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.denominator = try Quantity(from: _container, forKeyIfPresent: .denominator)
		self.numerator = try Quantity(from: _container, forKeyIfPresent: .numerator)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try denominator?.encode(on: &_container, forKey: .denominator)
		try numerator?.encode(on: &_container, forKey: .numerator)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Ratio else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return denominator == _other.denominator
		    && numerator == _other.numerator
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(denominator)
		hasher.combine(numerator)
	}
}
