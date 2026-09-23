//
//  SampledData.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/SampledData)
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
 A series of measurements taken by a device.
 
 A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the
 data.
 */
public struct SampledData: Element {
	
	/// Decimal values with spaces, or "E" | "U" | "L"
	public var data: FHIRPrimitive<FHIRString>
	
	/// Number of sample points at each time point
	public var dimensions: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Multiply data by this before adding to origin
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Lower limit of detection
	public var lowerLimit: FHIRPrimitive<FHIRDecimal>?
	
	/// Zero value and units
	public var origin: Quantity
	
	/// Number of milliseconds between samples
	public var period: FHIRPrimitive<FHIRDecimal>
	
	/// Upper limit of detection
	public var upperLimit: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		data: FHIRPrimitive<FHIRString>,
		dimensions: FHIRPrimitive<FHIRPositiveInteger>,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lowerLimit: FHIRPrimitive<FHIRDecimal>? = nil,
		origin: Quantity,
		period: FHIRPrimitive<FHIRDecimal>,
		upperLimit: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.data = data
		self.dimensions = dimensions
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.lowerLimit = lowerLimit
		self.origin = origin
		self.period = period
		self.upperLimit = upperLimit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case data; case _data
		case dimensions; case _dimensions
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case lowerLimit; case _lowerLimit
		case origin
		case period; case _period
		case upperLimit; case _upperLimit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.data = try FHIRPrimitive<FHIRString>(from: _container, forKey: .data, auxiliaryKey: ._data)
		self.dimensions = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .dimensions, auxiliaryKey: ._dimensions)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lowerLimit = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .lowerLimit, auxiliaryKey: ._lowerLimit)
		self.origin = try Quantity(from: _container, forKey: .origin)
		self.period = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .period, auxiliaryKey: ._period)
		self.upperLimit = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .upperLimit, auxiliaryKey: ._upperLimit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try data.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try dimensions.encode(on: &_container, forKey: .dimensions, auxiliaryKey: ._dimensions)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lowerLimit?.encode(on: &_container, forKey: .lowerLimit, auxiliaryKey: ._lowerLimit)
		try origin.encode(on: &_container, forKey: .origin)
		try period.encode(on: &_container, forKey: .period, auxiliaryKey: ._period)
		try upperLimit?.encode(on: &_container, forKey: .upperLimit, auxiliaryKey: ._upperLimit)
	}
}
