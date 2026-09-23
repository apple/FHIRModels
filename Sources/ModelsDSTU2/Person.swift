//
//  Person.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Person)
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
 A generic person record.
 
 Demographics and administrative information about a person independent of a specific health-related context.
 */
public struct Person: DomainResource {
	
	public static let resourceType: ResourceType = .person
	
	/// This person's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// One or more addresses for the person
	public var address: [Address]?
	
	/// The date on which the person was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A human identifier for this person
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Link to a resource that concerns the same actual person
	public var link: [PersonLink]?
	
	/// The organization that is the custodian of the person record
	public var managingOrganization: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// Image of the person
	public var photo: Attachment?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case active; case _active
		case address
		case birthDate; case _birthDate
		case contained
		case `extension` = "extension"
		case gender; case _gender
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case link
		case managingOrganization
		case meta
		case modifierExtension
		case name
		case photo
		case telecom
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.birthDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .birthDate, auxiliaryKey: ._birthDate)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.link = try [PersonLink](from: _container, forKeyIfPresent: .link)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try address?.encode(on: &_container, forKey: .address)
		try birthDate?.encode(on: &_container, forKey: .birthDate, auxiliaryKey: ._birthDate)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try link?.encode(on: &_container, forKey: .link)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try photo?.encode(on: &_container, forKey: .photo)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Link to a resource that concerns the same actual person.
 */
public struct PersonLink: BackboneElement {
	
	/// Level of assurance that this link is actually associated with the target resource.
	/// Restricted to: ['level1', 'level2', 'level3', 'level4']
	public var assurance: FHIRPrimitive<IdentityAssuranceLevel>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The resource to which this actual person is associated
	public var target: Reference
	
	/// Designated initializer
	public init(
		assurance: FHIRPrimitive<IdentityAssuranceLevel>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: Reference
	) {
		self.assurance = assurance
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assurance; case _assurance
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assurance = try FHIRPrimitive<IdentityAssuranceLevel>(from: _container, forKeyIfPresent: .assurance, auxiliaryKey: ._assurance)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try Reference(from: _container, forKey: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assurance?.encode(on: &_container, forKey: .assurance, auxiliaryKey: ._assurance)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target.encode(on: &_container, forKey: .target)
	}
}
