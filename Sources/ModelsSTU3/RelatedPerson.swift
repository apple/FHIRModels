//
//  RelatedPerson.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/RelatedPerson)
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
 An person that is related to a patient, but who is not a direct target of care.
 
 Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has
 a formal responsibility in the care process.
 */
public struct RelatedPerson: DomainResource {
	
	public static let resourceType: ResourceType = .relatedPerson
	
	/// Whether this related person's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Address where the related person can be contacted or visited
	public var address: [Address]?
	
	/// The date on which the related person was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A human identifier for this person
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
	public var name: [HumanName]?
	
	/// The patient this person is related to
	public var patient: Reference
	
	/// Period of time that this relationship is considered valid
	public var period: Period?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// The nature of the relationship
	public var relationship: CodeableConcept?
	
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
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: [HumanName]? = nil,
		patient: Reference,
		period: Period? = nil,
		photo: [Attachment]? = nil,
		relationship: CodeableConcept? = nil,
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
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.patient = patient
		self.period = period
		self.photo = photo
		self.relationship = relationship
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
		case meta
		case modifierExtension
		case name
		case patient
		case period
		case photo
		case relationship
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
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
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
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try patient.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try photo?.encode(on: &_container, forKey: .photo)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}
