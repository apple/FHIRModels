//
//  Contributor.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Contributor)
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
 Contributor information.
 
 A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
 */
open class Contributor: Element {
	
	/// The type of contributor.
	public var type: FHIRPrimitive<ContributorType>
	
	/// Who contributed the content
	public var name: FHIRPrimitive<FHIRString>
	
	/// Contact details of the contributor
	public var contact: [ContactDetail]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<ContributorType>) {
		self.name = name
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: [ContactDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							name: FHIRPrimitive<FHIRString>,
							type: FHIRPrimitive<ContributorType>)
	{
		self.init(name: name, type: type)
		self.contact = contact
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case name; case _name
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<ContributorType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Contributor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(name)
		hasher.combine(type)
	}
}
