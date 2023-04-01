//
//  SampledData.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SampledData)
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
 A series of measurements taken by a device.
 
 A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the
 data.
 */
open class SampledData: DataType {
	
	/// Zero value and units
	public var origin: Quantity
	
	/// Number of intervalUnits between samples
	public var interval: FHIRPrimitive<FHIRDecimal>?
	
	/// The measurement unit of the interval between samples
	public var intervalUnit: FHIRPrimitive<FHIRString>
	
	/// Multiply data by this before adding to origin
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower limit of detection
	public var lowerLimit: FHIRPrimitive<FHIRDecimal>?
	
	/// Upper limit of detection
	public var upperLimit: FHIRPrimitive<FHIRDecimal>?
	
	/// Number of sample points at each time point
	public var dimensions: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Defines the codes used in the data
	public var codeMap: FHIRPrimitive<Canonical>?
	
	/// Offsets, typically in time, at which data values were taken
	public var offsets: FHIRPrimitive<FHIRString>?
	
	/// Decimal values with spaces, or "E" | "U" | "L", or another code
	public var data: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(dimensions: FHIRPrimitive<FHIRPositiveInteger>, intervalUnit: FHIRPrimitive<FHIRString>, origin: Quantity) {
		self.dimensions = dimensions
		self.intervalUnit = intervalUnit
		self.origin = origin
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		codeMap: FHIRPrimitive<Canonical>? = nil,
		data: FHIRPrimitive<FHIRString>? = nil,
		dimensions: FHIRPrimitive<FHIRPositiveInteger>,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		interval: FHIRPrimitive<FHIRDecimal>? = nil,
		intervalUnit: FHIRPrimitive<FHIRString>,
		lowerLimit: FHIRPrimitive<FHIRDecimal>? = nil,
		offsets: FHIRPrimitive<FHIRString>? = nil,
		origin: Quantity,
		upperLimit: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.init(dimensions: dimensions, intervalUnit: intervalUnit, origin: origin)
		self.codeMap = codeMap
		self.data = data
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.interval = interval
		self.lowerLimit = lowerLimit
		self.offsets = offsets
		self.upperLimit = upperLimit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeMap; case _codeMap
		case data; case _data
		case dimensions; case _dimensions
		case factor; case _factor
		case interval; case _interval
		case intervalUnit; case _intervalUnit
		case lowerLimit; case _lowerLimit
		case offsets; case _offsets
		case origin
		case upperLimit; case _upperLimit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.codeMap = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .codeMap, auxiliaryKey: ._codeMap)
		self.data = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.dimensions = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .dimensions, auxiliaryKey: ._dimensions)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.interval = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .interval, auxiliaryKey: ._interval)
		self.intervalUnit = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intervalUnit, auxiliaryKey: ._intervalUnit)
		self.lowerLimit = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .lowerLimit, auxiliaryKey: ._lowerLimit)
		self.offsets = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .offsets, auxiliaryKey: ._offsets)
		self.origin = try Quantity(from: _container, forKey: .origin)
		self.upperLimit = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .upperLimit, auxiliaryKey: ._upperLimit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try codeMap?.encode(on: &_container, forKey: .codeMap, auxiliaryKey: ._codeMap)
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try dimensions.encode(on: &_container, forKey: .dimensions, auxiliaryKey: ._dimensions)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try interval?.encode(on: &_container, forKey: .interval, auxiliaryKey: ._interval)
		try intervalUnit.encode(on: &_container, forKey: .intervalUnit, auxiliaryKey: ._intervalUnit)
		try lowerLimit?.encode(on: &_container, forKey: .lowerLimit, auxiliaryKey: ._lowerLimit)
		try offsets?.encode(on: &_container, forKey: .offsets, auxiliaryKey: ._offsets)
		try origin.encode(on: &_container, forKey: .origin)
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
		return codeMap == _other.codeMap
		    && data == _other.data
		    && dimensions == _other.dimensions
		    && factor == _other.factor
		    && interval == _other.interval
		    && intervalUnit == _other.intervalUnit
		    && lowerLimit == _other.lowerLimit
		    && offsets == _other.offsets
		    && origin == _other.origin
		    && upperLimit == _other.upperLimit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(codeMap)
		hasher.combine(data)
		hasher.combine(dimensions)
		hasher.combine(factor)
		hasher.combine(interval)
		hasher.combine(intervalUnit)
		hasher.combine(lowerLimit)
		hasher.combine(offsets)
		hasher.combine(origin)
		hasher.combine(upperLimit)
	}
}
