//
//  Patient.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Patient)
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
 Information about an individual or animal receiving health care services.
 
 Demographics and other administrative information about an individual or animal receiving care or other health-related
 services.
 */
public struct Patient: DomainResource {
	
	public static let resourceType: ResourceType = .patient
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
	}
	
	/// All possible types for "multipleBirth[x]"
	public enum MultipleBirthX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case integer(FHIRPrimitive<FHIRInteger>)
	}
	
	/// Whether this patient's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Addresses for the individual
	public var address: [Address]?
	
	/// This patient is known to be an animal (non-human)
	public var animal: PatientAnimal?
	
	/// The date of birth for the individual
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Patient's nominated primary care provider
	public var careProvider: [Reference]?
	
	/// A list of Languages which may be used to communicate with the patient about his or her health
	public var communication: [PatientCommunication]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient
	public var contact: [PatientContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Indicates if the individual is deceased or not
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender - the gender that the patient is considered to have for administration and record keeping
	/// purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for this patient
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Link to another patient resource that concerns the same actual person
	public var link: [PatientLink]?
	
	/// Organization that is the custodian of the patient record
	public var managingOrganization: Reference?
	
	/// Marital (civil) status of a patient
	public var maritalStatus: CodeableConcept?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Whether patient is part of a multiple birth
	/// One of `multipleBirth[x]`
	public var multipleBirth: MultipleBirthX?
	
	/// A name associated with the patient
	public var name: [HumanName]?
	
	/// Image of the patient
	public var photo: [Attachment]?
	
	/// A contact detail for the individual
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case active; case _active
		case address
		case animal
		case birthDate; case _birthDate
		case careProvider
		case communication
		case contact
		case contained
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDateTime; case _deceasedDateTime
		case `extension` = "extension"
		case gender; case _gender
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case link
		case managingOrganization
		case maritalStatus
		case meta
		case modifierExtension
		case multipleBirthBoolean; case _multipleBirthBoolean
		case multipleBirthInteger; case _multipleBirthInteger
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
		self.animal = try PatientAnimal(from: _container, forKeyIfPresent: .animal)
		self.birthDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .birthDate, auxiliaryKey: ._birthDate)
		self.careProvider = try [Reference](from: _container, forKeyIfPresent: .careProvider)
		self.communication = try [PatientCommunication](from: _container, forKeyIfPresent: .communication)
		self.contact = try [PatientContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.deceased = try Self._decodeDeceased(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.link = try [PatientLink](from: _container, forKeyIfPresent: .link)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.maritalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .maritalStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multipleBirth = try Self._decodeMultipleBirth(from: _container)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
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
		try animal?.encode(on: &_container, forKey: .animal)
		try birthDate?.encode(on: &_container, forKey: .birthDate, auxiliaryKey: ._birthDate)
		try careProvider?.encode(on: &_container, forKey: .careProvider)
		try communication?.encode(on: &_container, forKey: .communication)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		if let _enum = deceased {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .deceasedDateTime, auxiliaryKey: ._deceasedDateTime)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try link?.encode(on: &_container, forKey: .link)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try maritalStatus?.encode(on: &_container, forKey: .maritalStatus)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDeceased(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeceasedX? {
		var _t_deceased: DeceasedX? = nil
		if let deceasedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean) {
			_t_deceased = .boolean(deceasedBoolean)
		}
		if let deceasedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .deceasedDateTime, auxiliaryKey: ._deceasedDateTime) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedDateTime, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .dateTime(deceasedDateTime)
		}
		return _t_deceased
	}
	
	private static func _decodeMultipleBirth(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MultipleBirthX? {
		var _t_multipleBirth: MultipleBirthX? = nil
		if let multipleBirthBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleBirthBoolean, auxiliaryKey: ._multipleBirthBoolean) {
			_t_multipleBirth = .boolean(multipleBirthBoolean)
		}
		if let multipleBirthInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .multipleBirthInteger, auxiliaryKey: ._multipleBirthInteger) {
			if _t_multipleBirth != nil {
				throw DecodingError.dataCorruptedError(forKey: .multipleBirthInteger, in: _container, debugDescription: "More than one value provided for \"multipleBirth\"")
			}
			_t_multipleBirth = .integer(multipleBirthInteger)
		}
		return _t_multipleBirth
	}
}

/**
 This patient is known to be an animal (non-human).
 
 This patient is known to be an animal.
 */
public struct PatientAnimal: BackboneElement {
	
	/// E.g. Poodle, Angus
	public var breed: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// E.g. Neutered, Intact
	public var genderStatus: CodeableConcept?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// E.g. Dog, Cow
	public var species: CodeableConcept
	
	/// Designated initializer
	public init(
		breed: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		genderStatus: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		species: CodeableConcept
	) {
		self.breed = breed
		self.`extension` = `extension`
		self.genderStatus = genderStatus
		self.id = id
		self.modifierExtension = modifierExtension
		self.species = species
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case breed
		case `extension` = "extension"
		case genderStatus
		case id; case _id
		case modifierExtension
		case species
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.breed = try CodeableConcept(from: _container, forKeyIfPresent: .breed)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.genderStatus = try CodeableConcept(from: _container, forKeyIfPresent: .genderStatus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.species = try CodeableConcept(from: _container, forKey: .species)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try breed?.encode(on: &_container, forKey: .breed)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try genderStatus?.encode(on: &_container, forKey: .genderStatus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try species.encode(on: &_container, forKey: .species)
	}
}

/**
 A list of Languages which may be used to communicate with the patient about his or her health.
 
 Languages which may be used to communicate with the patient about his or her health.
 */
public struct PatientCommunication: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The language which can be used to communicate with the patient about his or her health
	public var language: CodeableConcept
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Language preference indicator
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept,
		modifierExtension: [Extension]? = nil,
		preferred: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.preferred = preferred
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case language
		case modifierExtension
		case preferred; case _preferred
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try CodeableConcept(from: _container, forKey: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
	}
}

/**
 A contact party (e.g. guardian, partner, friend) for the patient.
 */
public struct PatientContact: BackboneElement {
	
	/// Address for the contact person
	public var address: Address?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender - the gender that the contact person is considered to have for administration and record
	/// keeping purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name associated with the contact person
	public var name: HumanName?
	
	/// Organization that is associated with the contact
	public var organization: Reference?
	
	/// The period during which this contact person or organization is valid to be contacted relating to this patient
	public var period: Period?
	
	/// The kind of relationship
	public var relationship: [CodeableConcept]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		address: Address? = nil,
		`extension`: [Extension]? = nil,
		gender: FHIRPrimitive<AdministrativeGender>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: HumanName? = nil,
		organization: Reference? = nil,
		period: Period? = nil,
		relationship: [CodeableConcept]? = nil,
		telecom: [ContactPoint]? = nil
	) {
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
		case `extension` = "extension"
		case gender; case _gender
		case id; case _id
		case modifierExtension
		case name
		case organization
		case period
		case relationship
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relationship = try [CodeableConcept](from: _container, forKeyIfPresent: .relationship)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try address?.encode(on: &_container, forKey: .address)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}

/**
 Link to another patient resource that concerns the same actual person.
 
 Link to another patient resource that concerns the same actual patient.
 */
public struct PatientLink: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The other patient resource that the link refers to
	public var other: Reference
	
	/// The type of link between this patient resource and another patient resource.
	/// Restricted to: ['replace', 'refer', 'seealso']
	public var type: FHIRPrimitive<LinkType>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		other: Reference,
		type: FHIRPrimitive<LinkType>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.other = other
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case other
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.other = try Reference(from: _container, forKey: .other)
		self.type = try FHIRPrimitive<LinkType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try other.encode(on: &_container, forKey: .other)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
