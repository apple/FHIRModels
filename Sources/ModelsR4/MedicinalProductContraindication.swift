//
//  MedicinalProductContraindication.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication)
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
 MedicinalProductContraindication.
 
 The clinical particulars - indications, contraindications etc. of a medicinal product, including for regulatory
 purposes.
 */
open class MedicinalProductContraindication: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductContraindication }
	
	/// The medication for which this is an indication
	public var subject: [Reference]?
	
	/// The disease, symptom or procedure for the contraindication
	public var disease: CodeableConcept?
	
	/// The status of the disease or symptom for the contraindication
	public var diseaseStatus: CodeableConcept?
	
	/// A comorbidity (concurrent condition) or coinfection
	public var comorbidity: [CodeableConcept]?
	
	/// Information about the use of the medicinal product in relation to other therapies as part of the indication
	public var therapeuticIndication: [Reference]?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// indication
	public var otherTherapy: [MedicinalProductContraindicationOtherTherapy]?
	
	/// The population group to which this applies
	public var population: [Population]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comorbidity: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							disease: CodeableConcept? = nil,
							diseaseStatus: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							otherTherapy: [MedicinalProductContraindicationOtherTherapy]? = nil,
							population: [Population]? = nil,
							subject: [Reference]? = nil,
							text: Narrative? = nil,
							therapeuticIndication: [Reference]? = nil)
	{
		self.init()
		self.comorbidity = comorbidity
		self.contained = contained
		self.disease = disease
		self.diseaseStatus = diseaseStatus
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.otherTherapy = otherTherapy
		self.population = population
		self.subject = subject
		self.text = text
		self.therapeuticIndication = therapeuticIndication
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comorbidity
		case disease
		case diseaseStatus
		case otherTherapy
		case population
		case subject
		case therapeuticIndication
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comorbidity = try [CodeableConcept](from: _container, forKeyIfPresent: .comorbidity)
		self.disease = try CodeableConcept(from: _container, forKeyIfPresent: .disease)
		self.diseaseStatus = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseStatus)
		self.otherTherapy = try [MedicinalProductContraindicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
		self.population = try [Population](from: _container, forKeyIfPresent: .population)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.therapeuticIndication = try [Reference](from: _container, forKeyIfPresent: .therapeuticIndication)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try disease?.encode(on: &_container, forKey: .disease)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try population?.encode(on: &_container, forKey: .population)
		try subject?.encode(on: &_container, forKey: .subject)
		try therapeuticIndication?.encode(on: &_container, forKey: .therapeuticIndication)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductContraindication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comorbidity == _other.comorbidity
		    && disease == _other.disease
		    && diseaseStatus == _other.diseaseStatus
		    && otherTherapy == _other.otherTherapy
		    && population == _other.population
		    && subject == _other.subject
		    && therapeuticIndication == _other.therapeuticIndication
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comorbidity)
		hasher.combine(disease)
		hasher.combine(diseaseStatus)
		hasher.combine(otherTherapy)
		hasher.combine(population)
		hasher.combine(subject)
		hasher.combine(therapeuticIndication)
	}
}

/**
 Information about the use of the medicinal product in relation to other therapies described as part of the indication.
 */
open class MedicinalProductContraindicationOtherTherapy: BackboneElement {
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The type of relationship between the medicinal product indication or contraindication and another therapy
	public var therapyRelationshipType: CodeableConcept
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Designated initializer taking all required properties
	public init(medication: MedicationX, therapyRelationshipType: CodeableConcept) {
		self.medication = medication
		self.therapyRelationshipType = therapyRelationshipType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							modifierExtension: [Extension]? = nil,
							therapyRelationshipType: CodeableConcept)
	{
		self.init(medication: medication, therapyRelationshipType: therapyRelationshipType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case medicationCodeableConcept
		case medicationReference
		case therapyRelationshipType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		var _t_medication: MedicationX? = nil
		if let medicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .medicationCodeableConcept) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .codeableConcept(medicationCodeableConcept)
		}
		if let medicationReference = try Reference(from: _container, forKeyIfPresent: .medicationReference) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationReference, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .reference(medicationReference)
		}
		self.medication = _t_medication!
		self.therapyRelationshipType = try CodeableConcept(from: _container, forKey: .therapyRelationshipType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try therapyRelationshipType.encode(on: &_container, forKey: .therapyRelationshipType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductContraindicationOtherTherapy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return medication == _other.medication
		    && therapyRelationshipType == _other.therapyRelationshipType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(medication)
		hasher.combine(therapyRelationshipType)
	}
}
