//
//  Linkage.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Linkage)
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
 Links records for 'same' item.
 
 Identifies two or more records (resource instances) that refer to the same real-world "occurrence".
 */
open class Linkage: DomainResource {
	
	override open class var resourceType: ResourceType { return .linkage }
	
	/// Whether this linkage assertion is active or not
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Who is responsible for linkages
	public var author: Reference?
	
	/// Item to be linked
	public var item: [LinkageItem]
	
	/// Designated initializer taking all required properties
	public init(item: [LinkageItem]) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							author: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							item: [LinkageItem],
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							text: Narrative? = nil)
	{
		self.init(item: item)
		self.active = active
		self.author = author
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case author
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.item = try [LinkageItem](from: _container, forKey: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try author?.encode(on: &_container, forKey: .author)
		try item.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Linkage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && author == _other.author
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(author)
		hasher.combine(item)
	}
}

/**
 Item to be linked.
 
 Identifies which record considered as the reference to the same real-world occurrence as well as how the items should
 be evaluated within the collection of linked items.
 */
open class LinkageItem: BackboneElement {
	
	/// Distinguishes which item is "source of truth" (if any) and which items are no longer considered to be current
	/// representations.
	public var type: FHIRPrimitive<LinkageType>
	
	/// Resource being linked
	public var resource: Reference
	
	/// Designated initializer taking all required properties
	public init(resource: Reference, type: FHIRPrimitive<LinkageType>) {
		self.resource = resource
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							resource: Reference,
							type: FHIRPrimitive<LinkageType>)
	{
		self.init(resource: resource, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resource
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.resource = try Reference(from: _container, forKey: .resource)
		self.type = try FHIRPrimitive<LinkageType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try resource.encode(on: &_container, forKey: .resource)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? LinkageItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return resource == _other.resource
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(resource)
		hasher.combine(type)
	}
}
