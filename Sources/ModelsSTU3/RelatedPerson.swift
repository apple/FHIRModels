//
//  RelatedPerson.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/RelatedPerson)
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
 An person that is related to a patient, but who is not a direct target of care.
 
 Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has
 a formal responsibility in the care process.
 */
open class RelatedPerson: DomainResource {
	
	override open class var resourceType: ResourceType { return .relatedPerson }
	
	/// A human identifier for this person
	public var identifier: [Identifier]?
	
	/// Whether this related person's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// The patient this person is related to
	public var patient: Reference
	
	/// The nature of the relationship
	public var relationship: CodeableConcept?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// The date on which the related person was born
	public var birthDate: FHIRPrimitive<FHIRDate>?
	
	/// Address where the related person can be contacted or visited
	public var address: [Address]?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Period of time that this relationship is considered valid
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference) {
		self.patient = patient
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(patient: patient)
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
		self.period = period
		self.photo = photo
		self.relationship = relationship
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case address
		case birthDate; case _birthDate
		case gender; case _gender
		case identifier
		case name
		case patient
		case period
		case photo
		case relationship
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.address = try [Address](from: _container, forKeyIfPresent: .address)
		self.birthDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .birthDate, auxiliaryKey: ._birthDate)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.photo = try [Attachment](from: _container, forKeyIfPresent: .photo)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
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
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name)
		try patient.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try photo?.encode(on: &_container, forKey: .photo)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RelatedPerson else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && address == _other.address
		    && birthDate == _other.birthDate
		    && gender == _other.gender
		    && identifier == _other.identifier
		    && name == _other.name
		    && patient == _other.patient
		    && period == _other.period
		    && photo == _other.photo
		    && relationship == _other.relationship
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(address)
		hasher.combine(birthDate)
		hasher.combine(gender)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(patient)
		hasher.combine(period)
		hasher.combine(photo)
		hasher.combine(relationship)
		hasher.combine(telecom)
	}
}
