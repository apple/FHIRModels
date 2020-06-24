//
//  MedicinalProductIndication.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication)
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
 MedicinalProductIndication.
 
 Indication for the Medicinal Product.
 */
open class MedicinalProductIndication: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductIndication }
	
	/// The medication for which this is an indication
	public var subject: [Reference]?
	
	/// The disease, symptom or procedure that is the indication for treatment
	public var diseaseSymptomProcedure: CodeableConcept?
	
	/// The status of the disease or symptom for which the indication applies
	public var diseaseStatus: CodeableConcept?
	
	/// Comorbidity (concurrent condition) or co-infection as part of the indication
	public var comorbidity: [CodeableConcept]?
	
	/// The intended effect, aim or strategy to be achieved by the indication
	public var intendedEffect: CodeableConcept?
	
	/// Timing or duration information as part of the indication
	public var duration: Quantity?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// indication
	public var otherTherapy: [MedicinalProductIndicationOtherTherapy]?
	
	/// Describe the undesirable effects of the medicinal product
	public var undesirableEffect: [Reference]?
	
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
							diseaseStatus: CodeableConcept? = nil,
							diseaseSymptomProcedure: CodeableConcept? = nil,
							duration: Quantity? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							intendedEffect: CodeableConcept? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							otherTherapy: [MedicinalProductIndicationOtherTherapy]? = nil,
							population: [Population]? = nil,
							subject: [Reference]? = nil,
							text: Narrative? = nil,
							undesirableEffect: [Reference]? = nil)
	{
		self.init()
		self.comorbidity = comorbidity
		self.contained = contained
		self.diseaseStatus = diseaseStatus
		self.diseaseSymptomProcedure = diseaseSymptomProcedure
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.intendedEffect = intendedEffect
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.otherTherapy = otherTherapy
		self.population = population
		self.subject = subject
		self.text = text
		self.undesirableEffect = undesirableEffect
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comorbidity
		case diseaseStatus
		case diseaseSymptomProcedure
		case duration
		case intendedEffect
		case otherTherapy
		case population
		case subject
		case undesirableEffect
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comorbidity = try [CodeableConcept](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.intendedEffect = try CodeableConcept(from: _container, forKeyIfPresent: .intendedEffect)
		self.otherTherapy = try [MedicinalProductIndicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
		self.population = try [Population](from: _container, forKeyIfPresent: .population)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.undesirableEffect = try [Reference](from: _container, forKeyIfPresent: .undesirableEffect)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try diseaseSymptomProcedure?.encode(on: &_container, forKey: .diseaseSymptomProcedure)
		try duration?.encode(on: &_container, forKey: .duration)
		try intendedEffect?.encode(on: &_container, forKey: .intendedEffect)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try population?.encode(on: &_container, forKey: .population)
		try subject?.encode(on: &_container, forKey: .subject)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductIndication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comorbidity == _other.comorbidity
		    && diseaseStatus == _other.diseaseStatus
		    && diseaseSymptomProcedure == _other.diseaseSymptomProcedure
		    && duration == _other.duration
		    && intendedEffect == _other.intendedEffect
		    && otherTherapy == _other.otherTherapy
		    && population == _other.population
		    && subject == _other.subject
		    && undesirableEffect == _other.undesirableEffect
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comorbidity)
		hasher.combine(diseaseStatus)
		hasher.combine(diseaseSymptomProcedure)
		hasher.combine(duration)
		hasher.combine(intendedEffect)
		hasher.combine(otherTherapy)
		hasher.combine(population)
		hasher.combine(subject)
		hasher.combine(undesirableEffect)
	}
}

/**
 Information about the use of the medicinal product in relation to other therapies described as part of the indication.
 */
open class MedicinalProductIndicationOtherTherapy: BackboneElement {
	
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
		guard let _other = _other as? MedicinalProductIndicationOtherTherapy else {
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
