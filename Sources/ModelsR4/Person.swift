//
//  Person.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Person)
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
 A generic person record.
 
 Demographics and administrative information about a person independent of a specific health-related context.
 */
open class Person: DomainResource {
	
	override open class var resourceType: ResourceType { return .person }
	
	/// A human identifier for this person
	public var identifier: [Identifier]?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Administrative Gender.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date on which the person was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// One or more addresses for the person
	public var address: [Address]?
	
	/// Image of the person
	public var photo: Attachment?
	
	/// The organization that is the custodian of the person record
	public var managingOrganization: Reference?
	
	/// This person's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Link to a resource that concerns the same actual person
	public var link: [PersonLink]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							address: [Address]? = nil,
							birthDate: FHIRPrimitive<FHIRDate>? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							gender: FHIRPrimitive<AdministrativeGender>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							link: [PersonLink]? = nil,
							managingOrganization: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: [HumanName]? = nil,
							photo: Attachment? = nil,
							telecom: [ContactPoint]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.active = active
		self.address = address
		self.birthDate = birthDate
		self.contained = contained
		self.`extension` = `extension`
		self.gender = gender
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.link = link
		self.managingOrganization = managingOrganization
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.photo = photo
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case address
		case birthDate; case _birthDate
		case gender; case _gender
		case identifier
		case link
		case managingOrganization
		case name
		case photo
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.birthDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .birthDate, auxiliaryKey: ._birthDate)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.link = try [PersonLink](from: _container, forKeyIfPresent: .link)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try address?.encode(on: &_container, forKey: .address)
		try birthDate?.encode(on: &_container, forKey: .birthDate, auxiliaryKey: ._birthDate)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try link?.encode(on: &_container, forKey: .link)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try name?.encode(on: &_container, forKey: .name)
		try photo?.encode(on: &_container, forKey: .photo)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Person else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && address == _other.address
		    && birthDate == _other.birthDate
		    && gender == _other.gender
		    && identifier == _other.identifier
		    && link == _other.link
		    && managingOrganization == _other.managingOrganization
		    && name == _other.name
		    && photo == _other.photo
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(address)
		hasher.combine(birthDate)
		hasher.combine(gender)
		hasher.combine(identifier)
		hasher.combine(link)
		hasher.combine(managingOrganization)
		hasher.combine(name)
		hasher.combine(photo)
		hasher.combine(telecom)
	}
}

/**
 Link to a resource that concerns the same actual person.
 */
open class PersonLink: BackboneElement {
	
	/// The resource to which this actual person is associated
	public var target: Reference
	
	/// Level of assurance that this link is associated with the target resource.
	public var assurance: FHIRPrimitive<IdentityAssuranceLevel>?
	
	/// Designated initializer taking all required properties
	public init(target: Reference) {
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assurance: FHIRPrimitive<IdentityAssuranceLevel>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							target: Reference)
	{
		self.init(target: target)
		self.assurance = assurance
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assurance; case _assurance
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assurance = try FHIRPrimitive<IdentityAssuranceLevel>(from: _container, forKeyIfPresent: .assurance, auxiliaryKey: ._assurance)
		self.target = try Reference(from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assurance?.encode(on: &_container, forKey: .assurance, auxiliaryKey: ._assurance)
		try target.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PersonLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assurance == _other.assurance
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assurance)
		hasher.combine(target)
	}
}
