//
//  Practitioner.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Practitioner)
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
 
 A person who is directly or indirectly involved in the provisioning of healthcare or related services.
 */
public struct Practitioner: DomainResource {
	
	public static let resourceType: ResourceType = .practitioner
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
	}
	
	/// Whether this practitioner's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Address(es) of the practitioner that are not role specific (typically home address)
	public var address: [Address]?
	
	/// The date  on which the practitioner was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// A language which may be used to communicate with the practitioner
	public var communication: [PractitionerCommunication]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Indicates if the practitioner is deceased or not
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The name(s) associated with the practitioner
	public var name: [HumanName]?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care
	public var qualification: [PractitionerQualification]?
	
	/// A contact detail for the practitioner (that apply to all roles)
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		case meta
		case modifierExtension
		case name
		case photo
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
		self.communication = try [PractitionerCommunication](from: _container, forKeyIfPresent: .communication)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.deceased = try Self._decodeDeceased(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
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
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try photo?.encode(on: &_container, forKey: .photo)
		try qualification?.encode(on: &_container, forKey: .qualification)
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
 A language which may be used to communicate with the practitioner.
 
 A language which may be used to communicate with the practitioner, often for correspondence/administrative purposes.
 
 The `PractitionerRole.communication` property should be used for publishing the languages that a practitioner is able
 to communicate with patients (on a per Organization/Role basis).
 */
public struct PractitionerCommunication: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The language code used to communicate with the practitioner
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
 Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care.
 
 The official qualifications, certifications, accreditations, training, licenses (and other types of
 educations/skills/capabilities) that authorize or otherwise pertain to the provision of care by the practitioner.
 
 For example, a medical license issued by a medical board of licensure authorizing the practitioner to practice medicine
 within a certain locality.
 */
public struct PractitionerQualification: BackboneElement {
	
	/// Coded representation of the qualification
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for this qualification for the practitioner
	public var identifier: [Identifier]?
	
	/// Organization that regulates and issues the qualification
	public var issuer: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
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
