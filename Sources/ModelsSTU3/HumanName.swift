//
//  HumanName.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/HumanName)
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
 Name of a human - parts and usage.
 
 A human's name with the ability to identify parts and usage.
 */
open class HumanName: Element {
	
	/// Identifies the purpose for this name.
	public var use: FHIRPrimitive<NameUse>?
	
	/// Text representation of the full name
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Family name (often called 'Surname')
	public var family: FHIRPrimitive<FHIRString>?
	
	/// Given names (not always 'first'). Includes middle names
	public var given: [FHIRPrimitive<FHIRString>]?
	
	/// Parts that come before the name
	public var prefix: [FHIRPrimitive<FHIRString>]?
	
	/// Parts that come after the name
	public var suffix: [FHIRPrimitive<FHIRString>]?
	
	/// Time period when name was/is in use
	public var period: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							family: FHIRPrimitive<FHIRString>? = nil,
							given: [FHIRPrimitive<FHIRString>]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							period: Period? = nil,
							prefix: [FHIRPrimitive<FHIRString>]? = nil,
							suffix: [FHIRPrimitive<FHIRString>]? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							use: FHIRPrimitive<NameUse>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.family = family
		self.given = given
		self.id = id
		self.period = period
		self.prefix = prefix
		self.suffix = suffix
		self.text = text
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case family; case _family
		case given; case _given
		case period
		case prefix; case _prefix
		case suffix; case _suffix
		case text; case _text
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.family = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .family, auxiliaryKey: ._family)
		self.given = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .given, auxiliaryKey: ._given)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.prefix = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.suffix = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .suffix, auxiliaryKey: ._suffix)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.use = try FHIRPrimitive<NameUse>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try family?.encode(on: &_container, forKey: .family, auxiliaryKey: ._family)
		try given?.encode(on: &_container, forKey: .given, auxiliaryKey: ._given)
		try period?.encode(on: &_container, forKey: .period)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try suffix?.encode(on: &_container, forKey: .suffix, auxiliaryKey: ._suffix)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? HumanName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return family == _other.family
		    && given == _other.given
		    && period == _other.period
		    && prefix == _other.prefix
		    && suffix == _other.suffix
		    && text == _other.text
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(family)
		hasher.combine(given)
		hasher.combine(period)
		hasher.combine(prefix)
		hasher.combine(suffix)
		hasher.combine(text)
		hasher.combine(use)
	}
}
