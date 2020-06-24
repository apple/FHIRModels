//
//  Patient.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Patient)
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
 Information about an individual or animal receiving health care services.
 
 Demographics and other administrative information about an individual or animal receiving care or other health-related
 services.
 */
open class Patient: DomainResource {
	
	override open class var resourceType: ResourceType { return .patient }
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
	}
	
	/// All possible types for "multipleBirth[x]"
	public enum MultipleBirthX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case integer(FHIRPrimitive<FHIRInteger>)
	}
	
	/// An identifier for this patient
	public var identifier: [Identifier]?
	
	/// Whether this patient's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// A name associated with the patient
	public var name: [HumanName]?
	
	/// A contact detail for the individual
	public var telecom: [ContactPoint]?
	
	/// Administrative Gender - the gender that the patient is considered to have for administration and record keeping
	/// purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date of birth for the individual
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Indicates if the individual is deceased or not
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Addresses for the individual
	public var address: [Address]?
	
	/// Marital (civil) status of a patient
	public var maritalStatus: CodeableConcept?
	
	/// Whether patient is part of a multiple birth
	/// One of `multipleBirth[x]`
	public var multipleBirth: MultipleBirthX?
	
	/// Image of the patient
	public var photo: [Attachment]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient
	public var contact: [PatientContact]?
	
	/// This patient is known to be an animal (non-human)
	public var animal: PatientAnimal?
	
	/// A list of Languages which may be used to communicate with the patient about his or her health
	public var communication: [PatientCommunication]?
	
	/// Patient's nominated primary care provider
	public var careProvider: [Reference]?
	
	/// Organization that is the custodian of the patient record
	public var managingOrganization: Reference?
	
	/// Link to another patient resource that concerns the same actual person
	public var link: [PatientLink]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							address: [Address]? = nil,
							animal: PatientAnimal? = nil,
							birthDate: FHIRPrimitive<FHIRDate>? = nil,
							careProvider: [Reference]? = nil,
							communication: [PatientCommunication]? = nil,
							contact: [PatientContact]? = nil,
							contained: [ResourceProxy]? = nil,
							deceased: DeceasedX? = nil,
							`extension`: [Extension]? = nil,
							gender: FHIRPrimitive<AdministrativeGender>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							link: [PatientLink]? = nil,
							managingOrganization: Reference? = nil,
							maritalStatus: CodeableConcept? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							multipleBirth: MultipleBirthX? = nil,
							name: [HumanName]? = nil,
							photo: [Attachment]? = nil,
							telecom: [ContactPoint]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.active = active
		self.address = address
		self.animal = animal
		self.birthDate = birthDate
		self.careProvider = careProvider
		self.communication = communication
		self.contact = contact
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
		self.multipleBirth = multipleBirth
		self.name = name
		self.photo = photo
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case address
		case animal
		case birthDate; case _birthDate
		case careProvider
		case communication
		case contact
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDateTime; case _deceasedDateTime
		case gender; case _gender
		case identifier
		case link
		case managingOrganization
		case maritalStatus
		case multipleBirthBoolean; case _multipleBirthBoolean
		case multipleBirthInteger; case _multipleBirthInteger
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
		self.animal = try PatientAnimal(from: _container, forKeyIfPresent: .animal)
		self.birthDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .birthDate, auxiliaryKey: ._birthDate)
		self.careProvider = try [Reference](from: _container, forKeyIfPresent: .careProvider)
		self.communication = try [PatientCommunication](from: _container, forKeyIfPresent: .communication)
		self.contact = try [PatientContact](from: _container, forKeyIfPresent: .contact)
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
		self.link = try [PatientLink](from: _container, forKeyIfPresent: .link)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.maritalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .maritalStatus)
		var _t_multipleBirth: MultipleBirthX? = nil
		if let multipleBirthBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleBirthBoolean, auxiliaryKey: ._multipleBirthBoolean) {
			if _t_multipleBirth != nil {
				throw DecodingError.dataCorruptedError(forKey: .multipleBirthBoolean, in: _container, debugDescription: "More than one value provided for \"multipleBirth\"")
			}
			_t_multipleBirth = .boolean(multipleBirthBoolean)
		}
		if let multipleBirthInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .multipleBirthInteger, auxiliaryKey: ._multipleBirthInteger) {
			if _t_multipleBirth != nil {
				throw DecodingError.dataCorruptedError(forKey: .multipleBirthInteger, in: _container, debugDescription: "More than one value provided for \"multipleBirth\"")
			}
			_t_multipleBirth = .integer(multipleBirthInteger)
		}
		self.multipleBirth = _t_multipleBirth
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
		try animal?.encode(on: &_container, forKey: .animal)
		try birthDate?.encode(on: &_container, forKey: .birthDate, auxiliaryKey: ._birthDate)
		try careProvider?.encode(on: &_container, forKey: .careProvider)
		try communication?.encode(on: &_container, forKey: .communication)
		try contact?.encode(on: &_container, forKey: .contact)
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
		if let _enum = multipleBirth {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .multipleBirthBoolean, auxiliaryKey: ._multipleBirthBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .multipleBirthInteger, auxiliaryKey: ._multipleBirthInteger)
			}
		}
		try name?.encode(on: &_container, forKey: .name)
		try photo?.encode(on: &_container, forKey: .photo)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Patient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && address == _other.address
		    && animal == _other.animal
		    && birthDate == _other.birthDate
		    && careProvider == _other.careProvider
		    && communication == _other.communication
		    && contact == _other.contact
		    && deceased == _other.deceased
		    && gender == _other.gender
		    && identifier == _other.identifier
		    && link == _other.link
		    && managingOrganization == _other.managingOrganization
		    && maritalStatus == _other.maritalStatus
		    && multipleBirth == _other.multipleBirth
		    && name == _other.name
		    && photo == _other.photo
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(address)
		hasher.combine(animal)
		hasher.combine(birthDate)
		hasher.combine(careProvider)
		hasher.combine(communication)
		hasher.combine(contact)
		hasher.combine(deceased)
		hasher.combine(gender)
		hasher.combine(identifier)
		hasher.combine(link)
		hasher.combine(managingOrganization)
		hasher.combine(maritalStatus)
		hasher.combine(multipleBirth)
		hasher.combine(name)
		hasher.combine(photo)
		hasher.combine(telecom)
	}
}

/**
 This patient is known to be an animal (non-human).
 
 This patient is known to be an animal.
 */
open class PatientAnimal: BackboneElement {
	
	/// E.g. Dog, Cow
	public var species: CodeableConcept
	
	/// E.g. Poodle, Angus
	public var breed: CodeableConcept?
	
	/// E.g. Neutered, Intact
	public var genderStatus: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(species: CodeableConcept) {
		self.species = species
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							breed: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							genderStatus: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							species: CodeableConcept)
	{
		self.init(species: species)
		self.breed = breed
		self.`extension` = `extension`
		self.genderStatus = genderStatus
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case breed
		case genderStatus
		case species
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.breed = try CodeableConcept(from: _container, forKeyIfPresent: .breed)
		self.genderStatus = try CodeableConcept(from: _container, forKeyIfPresent: .genderStatus)
		self.species = try CodeableConcept(from: _container, forKey: .species)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try breed?.encode(on: &_container, forKey: .breed)
		try genderStatus?.encode(on: &_container, forKey: .genderStatus)
		try species.encode(on: &_container, forKey: .species)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PatientAnimal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return breed == _other.breed
		    && genderStatus == _other.genderStatus
		    && species == _other.species
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(breed)
		hasher.combine(genderStatus)
		hasher.combine(species)
	}
}

/**
 A list of Languages which may be used to communicate with the patient about his or her health.
 
 Languages which may be used to communicate with the patient about his or her health.
 */
open class PatientCommunication: BackboneElement {
	
	/// The language which can be used to communicate with the patient about his or her health
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
							preferred: FHIRPrimitive<FHIRBool>? = nil)
	{
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
		guard let _other = _other as? PatientCommunication else {
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
 A contact party (e.g. guardian, partner, friend) for the patient.
 */
open class PatientContact: BackboneElement {
	
	/// The kind of relationship
	public var relationship: [CodeableConcept]?
	
	/// A name associated with the contact person
	public var name: HumanName?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Address for the contact person
	public var address: Address?
	
	/// Administrative Gender - the gender that the contact person is considered to have for administration and record
	/// keeping purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Organization that is associated with the contact
	public var organization: Reference?
	
	/// The period during which this contact person or organization is valid to be contacted relating to this patient
	public var period: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							address: Address? = nil,
							`extension`: [Extension]? = nil,
							gender: FHIRPrimitive<AdministrativeGender>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: HumanName? = nil,
							organization: Reference? = nil,
							period: Period? = nil,
							relationship: [CodeableConcept]? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.address = address
		self.`extension` = `extension`
		self.gender = gender
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.organization = organization
		self.period = period
		self.relationship = relationship
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case gender; case _gender
		case name
		case organization
		case period
		case relationship
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relationship = try [CodeableConcept](from: _container, forKeyIfPresent: .relationship)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try name?.encode(on: &_container, forKey: .name)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PatientContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && gender == _other.gender
		    && name == _other.name
		    && organization == _other.organization
		    && period == _other.period
		    && relationship == _other.relationship
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(gender)
		hasher.combine(name)
		hasher.combine(organization)
		hasher.combine(period)
		hasher.combine(relationship)
		hasher.combine(telecom)
	}
}

/**
 Link to another patient resource that concerns the same actual person.
 
 Link to another patient resource that concerns the same actual patient.
 */
open class PatientLink: BackboneElement {
	
	/// The other patient resource that the link refers to
	public var other: Reference
	
	/// The type of link between this patient resource and another patient resource.
	/// Restricted to: ['replace', 'refer', 'seealso']
	public var type: FHIRPrimitive<LinkType>
	
	/// Designated initializer taking all required properties
	public init(other: Reference, type: FHIRPrimitive<LinkType>) {
		self.other = other
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							other: Reference,
							type: FHIRPrimitive<LinkType>)
	{
		self.init(other: other, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case other
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.other = try Reference(from: _container, forKey: .other)
		self.type = try FHIRPrimitive<LinkType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try other.encode(on: &_container, forKey: .other)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PatientLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return other == _other.other
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(other)
		hasher.combine(type)
	}
}
