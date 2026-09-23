//
//  Person.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Person)
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
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
	}
	
	/// This person's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// One or more addresses for the person
	public var address: [Address]?
	
	/// The date on which the person was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// A language which may be used to communicate with the person about his or her health
	public var communication: [PersonCommunication]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Indicates if the individual is deceased or not
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender.
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
	
	/// Marital (civil) status of a person
	public var maritalStatus: CodeableConcept?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		case resourceType
		case active; case _active
		case address
		case birthDate; case _birthDate
		case communication
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
		self.communication = try [PersonCommunication](from: _container, forKeyIfPresent: .communication)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.deceased = try Self._decodeDeceased(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.link = try [PersonLink](from: _container, forKeyIfPresent: .link)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.maritalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .maritalStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		try birthDate?.encode(on: &_container, forKey: .birthDate, auxiliaryKey: ._birthDate)
		try communication?.encode(on: &_container, forKey: .communication)
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
}

/**
 A language which may be used to communicate with the person about his or her health.
 */
public struct PersonCommunication: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The language which can be used to communicate with the person about his or her health
	public var language: CodeableConcept
	
	/// Extensions that cannot be ignored even if unrecognized
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
 Link to a resource that concerns the same actual person.
 */
public struct PersonLink: BackboneElement {
	
	/// Level of assurance that this link is associated with the target resource.
	public var assurance: FHIRPrimitive<IdentityAssuranceLevel>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
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
