//
//  Person.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/Person)
//  Copyright 2022 Apple Inc.
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
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
	}
	
	/// A human identifier for this person
	public var identifier: [Identifier]?
	
	/// This person's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Administrative Gender.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date on which the person was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Indicates if the individual is deceased or not
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// One or more addresses for the person
	public var address: [Address]?
	
	/// Marital (civil) status of a person
	public var maritalStatus: CodeableConcept?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// The organization that is the custodian of the person record
	public var managingOrganization: Reference?
	
	/// A language which may be used to communicate with the person about his or her health
	public var communication: [PersonCommunication]?
	
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
		communication: [PersonCommunication]? = nil,
		contained: [ResourceProxy]? = nil,
		deceased: DeceasedX? = nil,
		`extension`: [Extension]? = nil,
		gender: FHIRPrimitive<AdministrativeGender>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		link: [PersonLink]? = nil,
		managingOrganization: Reference? = nil,
		maritalStatus: CodeableConcept? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: [HumanName]? = nil,
		photo: [Attachment]? = nil,
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
		self.link = link
		self.managingOrganization = managingOrganization
		self.maritalStatus = maritalStatus
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
		case communication
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDateTime; case _deceasedDateTime
		case gender; case _gender
		case identifier
		case link
		case managingOrganization
		case maritalStatus
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
		self.communication = try [PersonCommunication](from: _container, forKeyIfPresent: .communication)
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
		self.link = try [PersonLink](from: _container, forKeyIfPresent: .link)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.maritalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .maritalStatus)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
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
		try link?.encode(on: &_container, forKey: .link)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try maritalStatus?.encode(on: &_container, forKey: .maritalStatus)
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
		    && communication == _other.communication
		    && deceased == _other.deceased
		    && gender == _other.gender
		    && identifier == _other.identifier
		    && link == _other.link
		    && managingOrganization == _other.managingOrganization
		    && maritalStatus == _other.maritalStatus
		    && name == _other.name
		    && photo == _other.photo
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
		hasher.combine(link)
		hasher.combine(managingOrganization)
		hasher.combine(maritalStatus)
		hasher.combine(name)
		hasher.combine(photo)
		hasher.combine(telecom)
	}
}

/**
 A language which may be used to communicate with the person about his or her health.
 */
open class PersonCommunication: BackboneElement {
	
	/// The language which can be used to communicate with the person about his or her health
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
		guard let _other = _other as? PersonCommunication else {
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
		target: Reference
	) {
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
