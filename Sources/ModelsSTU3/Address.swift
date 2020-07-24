//
//  Address.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Address)
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
 An address expressed using postal conventions (as opposed to GPS or other location definition formats).
 
 An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type
 may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid
 for mail delivery.  There are a variety of postal address formats defined around the world.
 */
open class Address: Element {
	
	/// The purpose of this address.
	public var use: FHIRPrimitive<AddressUse>?
	
	/// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of
	/// addresses). Most addresses are both.
	public var type: FHIRPrimitive<AddressType>?
	
	/// Text representation of the address
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Street name, number, direction & P.O. Box etc.
	public var line: [FHIRPrimitive<FHIRString>]?
	
	/// Name of city, town etc.
	public var city: FHIRPrimitive<FHIRString>?
	
	/// District name (aka county)
	public var district: FHIRPrimitive<FHIRString>?
	
	/// Sub-unit of country (abbreviations ok)
	public var state: FHIRPrimitive<FHIRString>?
	
	/// Postal code for area
	public var postalCode: FHIRPrimitive<FHIRString>?
	
	/// Country (e.g. can be ISO 3166 2 or 3 letter code)
	public var country: FHIRPrimitive<FHIRString>?
	
	/// Time period when address was/is in use
	public var period: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							city: FHIRPrimitive<FHIRString>? = nil,
							country: FHIRPrimitive<FHIRString>? = nil,
							district: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							line: [FHIRPrimitive<FHIRString>]? = nil,
							period: Period? = nil,
							postalCode: FHIRPrimitive<FHIRString>? = nil,
							state: FHIRPrimitive<FHIRString>? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<AddressType>? = nil,
							use: FHIRPrimitive<AddressUse>? = nil)
	{
		self.init()
		self.city = city
		self.country = country
		self.district = district
		self.`extension` = `extension`
		self.id = id
		self.line = line
		self.period = period
		self.postalCode = postalCode
		self.state = state
		self.text = text
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case city; case _city
		case country; case _country
		case district; case _district
		case line; case _line
		case period
		case postalCode; case _postalCode
		case state; case _state
		case text; case _text
		case type; case _type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.city = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .city, auxiliaryKey: ._city)
		self.country = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .country, auxiliaryKey: ._country)
		self.district = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .district, auxiliaryKey: ._district)
		self.line = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .line, auxiliaryKey: ._line)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.postalCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .postalCode, auxiliaryKey: ._postalCode)
		self.state = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .state, auxiliaryKey: ._state)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<AddressType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<AddressUse>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try city?.encode(on: &_container, forKey: .city, auxiliaryKey: ._city)
		try country?.encode(on: &_container, forKey: .country, auxiliaryKey: ._country)
		try district?.encode(on: &_container, forKey: .district, auxiliaryKey: ._district)
		try line?.encode(on: &_container, forKey: .line, auxiliaryKey: ._line)
		try period?.encode(on: &_container, forKey: .period)
		try postalCode?.encode(on: &_container, forKey: .postalCode, auxiliaryKey: ._postalCode)
		try state?.encode(on: &_container, forKey: .state, auxiliaryKey: ._state)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Address else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return city == _other.city
		    && country == _other.country
		    && district == _other.district
		    && line == _other.line
		    && period == _other.period
		    && postalCode == _other.postalCode
		    && state == _other.state
		    && text == _other.text
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(city)
		hasher.combine(country)
		hasher.combine(district)
		hasher.combine(line)
		hasher.combine(period)
		hasher.combine(postalCode)
		hasher.combine(state)
		hasher.combine(text)
		hasher.combine(type)
		hasher.combine(use)
	}
}
