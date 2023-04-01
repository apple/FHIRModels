//
//  Practitioner.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Practitioner)
//  Copyright 2023 Apple Inc.
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
 
 A person who is directly or indirectly involved in the provisioning of healthcare or related services.
 */
open class Practitioner: DomainResource {
	
	override open class var resourceType: ResourceType { return .practitioner }
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
	}
	
	/// An identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// Whether this practitioner's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// The name(s) associated with the practitioner
	public var name: [HumanName]?
	
	/// A contact detail for the practitioner (that apply to all roles)
	public var telecom: [ContactPoint]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date  on which the practitioner was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Indicates if the practitioner is deceased or not
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Address(es) of the practitioner that are not role specific (typically home address)
	public var address: [Address]?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care
	public var qualification: [PractitionerQualification]?
	
	/// A language which may be used to communicate with the practitioner
	public var communication: [PractitionerCommunication]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		address: [Address]? = nil,
		birthDate: FHIRPrimitive<FHIRDate>? = nil,
		communication: [PractitionerCommunication]? = nil,
		contained: [ResourceProxy]? = nil,
		deceased: DeceasedX? = nil,
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
		text: Narrative? = nil
	) {
		self.init()
		self.active = active
		self.address = address
		self.birthDate = birthDate
		self.communication = communication
		self.contained = contained
		self.deceased = deceased
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
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDateTime; case _deceasedDateTime
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
		self.communication = try [PractitionerCommunication](from: _container, forKeyIfPresent: .communication)
		var _t_deceased: DeceasedX? = nil
		if let deceasedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedBoolean, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .boolean(deceasedBoolean)
		}
		if let deceasedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .deceasedDateTime, auxiliaryKey: ._deceasedDateTime) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedDateTime, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .dateTime(deceasedDateTime)
		}
		self.deceased = _t_deceased
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
		if let _enum = deceased {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .deceasedDateTime, auxiliaryKey: ._deceasedDateTime)
			}
		}
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
		    && deceased == _other.deceased
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
		hasher.combine(deceased)
		hasher.combine(gender)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(photo)
		hasher.combine(qualification)
		hasher.combine(telecom)
	}
}

/**
 A language which may be used to communicate with the practitioner.
 
 A language which may be used to communicate with the practitioner, often for correspondence/administrative purposes.
 
 The `PractitionerRole.communication` property should be used for publishing the languages that a practitioner is able
 to communicate with patients (on a per Organization/Role basis).
 */
open class PractitionerCommunication: BackboneElement {
	
	/// The language code used to communicate with the practitioner
	public var language: CodeableConcept
	
	/// Language preference indicator
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(language: CodeableConcept) {
		self.language = language
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept,
		modifierExtension: [Extension]? = nil,
		preferred: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.init(language: language)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preferred = preferred
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language
		case preferred; case _preferred
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try CodeableConcept(from: _container, forKey: .language)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language.encode(on: &_container, forKey: .language)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PractitionerCommunication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && preferred == _other.preferred
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(preferred)
	}
}

/**
 Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care.
 
 The official qualifications, certifications, accreditations, training, licenses (and other types of
 educations/skills/capabilities) that authorize or otherwise pertain to the provision of care by the practitioner.
 
 For example, a medical license issued by a medical board of licensure authorizing the practitioner to practice medicine
 within a certain locality.
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
		period: Period? = nil
	) {
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
