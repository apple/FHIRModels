//
//  SampledData.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/SampledData)
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
 A series of measurements taken by a device.
 
 A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the
 data.
 */
open class SampledData: DataType {
	
	/// Zero value and units
	public var origin: Quantity
	
	/// Number of milliseconds between samples
	public var period: FHIRPrimitive<FHIRDecimal>
	
	/// Multiply data by this before adding to origin
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower limit of detection
	public var lowerLimit: FHIRPrimitive<FHIRDecimal>?
	
	/// Upper limit of detection
	public var upperLimit: FHIRPrimitive<FHIRDecimal>?
	
	/// Number of sample points at each time point
	public var dimensions: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Decimal values with spaces, or "E" | "U" | "L"
	public var data: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(dimensions: FHIRPrimitive<FHIRPositiveInteger>, origin: Quantity, period: FHIRPrimitive<FHIRDecimal>) {
		self.dimensions = dimensions
		self.origin = origin
		self.period = period
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							data: FHIRPrimitive<FHIRString>? = nil,
							dimensions: FHIRPrimitive<FHIRPositiveInteger>,
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lowerLimit: FHIRPrimitive<FHIRDecimal>? = nil,
							origin: Quantity,
							period: FHIRPrimitive<FHIRDecimal>,
							upperLimit: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(dimensions: dimensions, origin: origin, period: period)
		self.data = data
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.lowerLimit = lowerLimit
		self.upperLimit = upperLimit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case data; case _data
		case dimensions; case _dimensions
		case factor; case _factor
		case lowerLimit; case _lowerLimit
		case origin
		case period; case _period
		case upperLimit; case _upperLimit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.data = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.dimensions = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .dimensions, auxiliaryKey: ._dimensions)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.lowerLimit = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .lowerLimit, auxiliaryKey: ._lowerLimit)
		self.origin = try Quantity(from: _container, forKey: .origin)
		self.period = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .period, auxiliaryKey: ._period)
		self.upperLimit = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .upperLimit, auxiliaryKey: ._upperLimit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try dimensions.encode(on: &_container, forKey: .dimensions, auxiliaryKey: ._dimensions)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try lowerLimit?.encode(on: &_container, forKey: .lowerLimit, auxiliaryKey: ._lowerLimit)
		try origin.encode(on: &_container, forKey: .origin)
		try period.encode(on: &_container, forKey: .period, auxiliaryKey: ._period)
		try upperLimit?.encode(on: &_container, forKey: .upperLimit, auxiliaryKey: ._upperLimit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SampledData else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return data == _other.data
		    && dimensions == _other.dimensions
		    && factor == _other.factor
		    && lowerLimit == _other.lowerLimit
		    && origin == _other.origin
		    && period == _other.period
		    && upperLimit == _other.upperLimit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(data)
		hasher.combine(dimensions)
		hasher.combine(factor)
		hasher.combine(lowerLimit)
		hasher.combine(origin)
		hasher.combine(period)
		hasher.combine(upperLimit)
	}
}
