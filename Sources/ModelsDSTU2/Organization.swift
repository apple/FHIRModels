//
//  Organization.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Organization)
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
 A grouping of people or organizations with a common purpose.
 
 A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form
 of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare
 practice groups, etc.
 */
open class Organization: DomainResource {
	
	override open class var resourceType: ResourceType { return .organization }
	
	/// Identifies this organization  across multiple systems
	public var identifier: [Identifier]?
	
	/// Whether the organization's record is still in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Kind of organization
	public var type: CodeableConcept?
	
	/// Name used for the organization
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A contact detail for the organization
	public var telecom: [ContactPoint]?
	
	/// An address for the organization
	public var address: [Address]?
	
	/// The organization of which this organization forms a part
	public var partOf: Reference?
	
	/// Contact for the organization for a certain purpose
	public var contact: [OrganizationContact]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							address: [Address]? = nil,
							contact: [OrganizationContact]? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							partOf: Reference? = nil,
							telecom: [ContactPoint]? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.active = active
		self.address = address
		self.contact = contact
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.partOf = partOf
		self.telecom = telecom
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case address
		case contact
		case identifier
		case name; case _name
		case partOf
		case telecom
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.contact = try [OrganizationContact](from: _container, forKeyIfPresent: .contact)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try address?.encode(on: &_container, forKey: .address)
		try contact?.encode(on: &_container, forKey: .contact)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Organization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && address == _other.address
		    && contact == _other.contact
		    && identifier == _other.identifier
		    && name == _other.name
		    && partOf == _other.partOf
		    && telecom == _other.telecom
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(address)
		hasher.combine(contact)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(partOf)
		hasher.combine(telecom)
		hasher.combine(type)
	}
}

/**
 Contact for the organization for a certain purpose.
 */
open class OrganizationContact: BackboneElement {
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// Contact details (telephone, email, etc.)  for a contact
	public var telecom: [ContactPoint]?
	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							address: Address? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: HumanName? = nil,
							purpose: CodeableConcept? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.address = address
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.purpose = purpose
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case name
		case purpose
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.purpose = try CodeableConcept(from: _container, forKeyIfPresent: .purpose)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try name?.encode(on: &_container, forKey: .name)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OrganizationContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && name == _other.name
		    && purpose == _other.purpose
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(name)
		hasher.combine(purpose)
		hasher.combine(telecom)
	}
}
