//
//  Practitioner.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Practitioner)
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
 A person with a  formal responsibility in the provisioning of healthcare or related services.
 
 A person who is directly or indirectly involved in the provisioning of healthcare.
 */
open class Practitioner: DomainResource {
	
	override open class var resourceType: ResourceType { return .practitioner }
	
	/// A identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// Whether this practitioner's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// A contact detail for the practitioner
	public var telecom: [ContactPoint]?
	
	/// Where practitioner can be found/visited
	public var address: [Address]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date  on which the practitioner was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Roles/organizations the practitioner is associated with
	public var practitionerRole: [PractitionerPractitionerRole]?
	
	/// Qualifications obtained by training and certification
	public var qualification: [PractitionerQualification]?
	
	/// A language the practitioner is able to use in patient communication
	public var communication: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case active; case _active
		case address
		case birthDate; case _birthDate
		case communication
		case gender; case _gender
		case identifier
		case name
		case photo
		case practitionerRole
		case qualification
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.birthDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .birthDate, auxiliaryKey: ._birthDate)
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
		self.practitionerRole = try [PractitionerPractitionerRole](from: _container, forKeyIfPresent: .practitionerRole)
		self.qualification = try [PractitionerQualification](from: _container, forKeyIfPresent: .qualification)
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
		try communication?.encode(on: &_container, forKey: .communication)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name)
		try photo?.encode(on: &_container, forKey: .photo)
		try practitionerRole?.encode(on: &_container, forKey: .practitionerRole)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Practitioner else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && address == _other.address
		    && birthDate == _other.birthDate
		    && communication == _other.communication
		    && gender == _other.gender
		    && identifier == _other.identifier
		    && name == _other.name
		    && photo == _other.photo
		    && practitionerRole == _other.practitionerRole
		    && qualification == _other.qualification
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(address)
		hasher.combine(birthDate)
		hasher.combine(communication)
		hasher.combine(gender)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(photo)
		hasher.combine(practitionerRole)
		hasher.combine(qualification)
		hasher.combine(telecom)
	}
}

/**
 Roles/organizations the practitioner is associated with.
 
 The list of roles/organizations that the practitioner is associated with.
 */
open class PractitionerPractitionerRole: BackboneElement {
	
	/// Organization where the roles are performed
	public var managingOrganization: Reference?
	
	/// Roles which this practitioner may perform
	public var role: CodeableConcept?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// The location(s) at which this practitioner provides care
	public var location: [Reference]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							healthcareService: [Reference]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							location: [Reference]? = nil,
							managingOrganization: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							role: CodeableConcept? = nil,
							specialty: [CodeableConcept]? = nil)
	{
		self.init()
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
		case healthcareService
		case location
		case managingOrganization
		case period
		case role
		case specialty
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.healthcareService = try [Reference](from: _container, forKeyIfPresent: .healthcareService)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try healthcareService?.encode(on: &_container, forKey: .healthcareService)
		try location?.encode(on: &_container, forKey: .location)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try period?.encode(on: &_container, forKey: .period)
		try role?.encode(on: &_container, forKey: .role)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PractitionerPractitionerRole else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return healthcareService == _other.healthcareService
		    && location == _other.location
		    && managingOrganization == _other.managingOrganization
		    && period == _other.period
		    && role == _other.role
		    && specialty == _other.specialty
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(healthcareService)
		hasher.combine(location)
		hasher.combine(managingOrganization)
		hasher.combine(period)
		hasher.combine(role)
		hasher.combine(specialty)
	}
}

/**
 Qualifications obtained by training and certification.
 */
open class PractitionerQualification: BackboneElement {
	
	/// An identifier for this qualification for the practitioner
	public var identifier: [Identifier]?
	
	/// Coded representation of the qualification
	public var code: CodeableConcept
	
	/// Period during which the qualification is valid
	public var period: Period?
	
	/// Organization that regulates and issues the qualification
	public var issuer: Reference?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							issuer: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil)
	{
		self.init(code: code)
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
		case identifier
		case issuer
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try period?.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PractitionerQualification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && identifier == _other.identifier
		    && issuer == _other.issuer
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(identifier)
		hasher.combine(issuer)
		hasher.combine(period)
	}
}
