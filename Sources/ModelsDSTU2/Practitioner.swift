//
//  Practitioner.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Practitioner)
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
 A person with a  formal responsibility in the provisioning of healthcare or related services.
 
 A person who is directly or indirectly involved in the provisioning of healthcare.
 */
public struct Practitioner: DomainResource {
	
	public static let resourceType: ResourceType = .practitioner
	
	/// Whether this practitioner's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Where practitioner can be found/visited
	public var address: [Address]?
	
	/// The date  on which the practitioner was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// A language the practitioner is able to use in patient communication
	public var communication: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Roles/organizations the practitioner is associated with
	public var practitionerRole: [PractitionerPractitionerRole]?
	
	/// Qualifications obtained by training and certification
	public var qualification: [PractitionerQualification]?
	
	/// A contact detail for the practitioner
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		address: [Address]? = nil,
		birthDate: FHIRPrimitive<FHIRDate>? = nil,
		communication: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		gender: FHIRPrimitive<AdministrativeGender>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: HumanName? = nil,
		photo: [Attachment]? = nil,
		practitionerRole: [PractitionerPractitionerRole]? = nil,
		qualification: [PractitionerQualification]? = nil,
		telecom: [ContactPoint]? = nil,
		text: Narrative? = nil
	) {
		self.active = active
		self.address = address
		self.birthDate = birthDate
		self.communication = communication
		self.contained = contained
		self.`extension` = `extension`
		self.gender = gender
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.photo = photo
		self.practitionerRole = practitionerRole
		self.qualification = qualification
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case address
		case birthDate; case _birthDate
		case communication
		case contained
		case `extension` = "extension"
		case gender; case _gender
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name
		case photo
		case practitionerRole
		case qualification
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
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
		self.practitionerRole = try [PractitionerPractitionerRole](from: _container, forKeyIfPresent: .practitionerRole)
		self.qualification = try [PractitionerQualification](from: _container, forKeyIfPresent: .qualification)
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
		try communication?.encode(on: &_container, forKey: .communication)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try photo?.encode(on: &_container, forKey: .photo)
		try practitionerRole?.encode(on: &_container, forKey: .practitionerRole)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Roles/organizations the practitioner is associated with.
 
 The list of roles/organizations that the practitioner is associated with.
 */
public struct PractitionerPractitionerRole: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The location(s) at which this practitioner provides care
	public var location: [Reference]?
	
	/// Organization where the roles are performed
	public var managingOrganization: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Roles which this practitioner may perform
	public var role: CodeableConcept?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		healthcareService: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: [Reference]? = nil,
		managingOrganization: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		role: CodeableConcept? = nil,
		specialty: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.healthcareService = healthcareService
		self.id = id
		self.location = location
		self.managingOrganization = managingOrganization
		self.modifierExtension = modifierExtension
		self.period = period
		self.role = role
		self.specialty = specialty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case healthcareService
		case id; case _id
		case location
		case managingOrganization
		case modifierExtension
		case period
		case role
		case specialty
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.healthcareService = try [Reference](from: _container, forKeyIfPresent: .healthcareService)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try healthcareService?.encode(on: &_container, forKey: .healthcareService)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location?.encode(on: &_container, forKey: .location)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try role?.encode(on: &_container, forKey: .role)
		try specialty?.encode(on: &_container, forKey: .specialty)
	}
}

/**
 Qualifications obtained by training and certification.
 */
public struct PractitionerQualification: BackboneElement {
	
	/// Coded representation of the qualification
	public var code: CodeableConcept
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for this qualification for the practitioner
	public var identifier: [Identifier]?
	
	/// Organization that regulates and issues the qualification
	public var issuer: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Period during which the qualification is valid
	public var period: Period?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		issuer: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.issuer = issuer
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case identifier
		case issuer
		case modifierExtension
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
	}
}
