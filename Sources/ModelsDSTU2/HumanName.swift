//
//  HumanName.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/HumanName)
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
 Name of a human - parts and usage.
 
 A human's name with the ability to identify parts and usage.
 */
public struct HumanName: Element {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Family name (often called 'Surname')
	public var family: [FHIRPrimitive<FHIRString>]?
	
	/// Given names (not always 'first'). Includes middle names
	public var given: [FHIRPrimitive<FHIRString>]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Time period when name was/is in use
	public var period: Period?
	
	/// Parts that come before the name
	public var prefix: [FHIRPrimitive<FHIRString>]?
	
	/// Parts that come after the name
	public var suffix: [FHIRPrimitive<FHIRString>]?
	
	/// Text representation of the full name
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Identifies the purpose for this name.
	/// Restricted to: ['usual', 'official', 'temp', 'nickname', 'anonymous', 'old', 'maiden']
	public var use: FHIRPrimitive<NameUse>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		family: [FHIRPrimitive<FHIRString>]? = nil,
		given: [FHIRPrimitive<FHIRString>]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		period: Period? = nil,
		prefix: [FHIRPrimitive<FHIRString>]? = nil,
		suffix: [FHIRPrimitive<FHIRString>]? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		use: FHIRPrimitive<NameUse>? = nil
	) {
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
		case `extension` = "extension"
		case family; case _family
		case given; case _given
		case id; case _id
		case period
		case prefix; case _prefix
		case suffix; case _suffix
		case text; case _text
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.family = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .family, auxiliaryKey: ._family)
		self.given = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .given, auxiliaryKey: ._given)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.prefix = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.suffix = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .suffix, auxiliaryKey: ._suffix)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.use = try FHIRPrimitive<NameUse>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try family?.encode(on: &_container, forKey: .family, auxiliaryKey: ._family)
		try given?.encode(on: &_container, forKey: .given, auxiliaryKey: ._given)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try period?.encode(on: &_container, forKey: .period)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try suffix?.encode(on: &_container, forKey: .suffix, auxiliaryKey: ._suffix)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}
