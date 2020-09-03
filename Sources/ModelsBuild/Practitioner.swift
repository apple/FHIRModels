//
//  Practitioner.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Practitioner)
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
	
	/// An identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// Whether this practitioner's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// The name(s) associated with the practitioner
	public var name: [HumanName]?
	
	/// A contact detail for the practitioner (that apply to all roles)
	public var telecom: [ContactPoint]?
	
	/// Address(es) of the practitioner that are not role specific (typically home address)
	public var address: [Address]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date  on which the practitioner was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Certification, licenses, or training pertaining to the provision of care
	public var qualification: [PractitionerQualification]?
	
	/// A language the practitioner can use in patient communication
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
							name: [HumanName]? = nil,
							photo: [Attachment]? = nil,
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
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
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
		hasher.combine(qualification)
		hasher.combine(telecom)
	}
}

/**
 Certification, licenses, or training pertaining to the provision of care.
 
 The official certifications, training, and licenses that authorize or otherwise pertain to the provision of care by the
 practitioner.  For example, a medical license issued by a medical board authorizing the practitioner to practice
 medicine within a certian locality.
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
