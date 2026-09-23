//
//  MedicinalProductIndication.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication)
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
 MedicinalProductIndication.
 
 Indication for the Medicinal Product.
 */
public struct MedicinalProductIndication: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductIndication
	
	/// Comorbidity (concurrent condition) or co-infection as part of the indication
	public var comorbidity: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The status of the disease or symptom for which the indication applies
	public var diseaseStatus: CodeableConcept?
	
	/// The disease, symptom or procedure that is the indication for treatment
	public var diseaseSymptomProcedure: CodeableConcept?
	
	/// Timing or duration information as part of the indication
	public var duration: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The intended effect, aim or strategy to be achieved by the indication
	public var intendedEffect: CodeableConcept?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// indication
	public var otherTherapy: [MedicinalProductIndicationOtherTherapy]?
	
	/// The population group to which this applies
	public var population: [Population]?
	
	/// The medication for which this is an indication
	public var subject: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Describe the undesirable effects of the medicinal product
	public var undesirableEffect: [Reference]?
	
	/// Designated initializer
	public init(
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
		undesirableEffect: [Reference]? = nil
	) {
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
		case resourceType
		case comorbidity
		case contained
		case diseaseStatus
		case diseaseSymptomProcedure
		case duration
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case intendedEffect
		case language; case _language
		case meta
		case modifierExtension
		case otherTherapy
		case population
		case subject
		case text
		case undesirableEffect
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comorbidity = try [CodeableConcept](from: _container, forKeyIfPresent: .comorbidity)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.diseaseStatus = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.intendedEffect = try CodeableConcept(from: _container, forKeyIfPresent: .intendedEffect)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.otherTherapy = try [MedicinalProductIndicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
		self.population = try [Population](from: _container, forKeyIfPresent: .population)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.undesirableEffect = try [Reference](from: _container, forKeyIfPresent: .undesirableEffect)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try contained?.encode(on: &_container, forKey: .contained)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try diseaseSymptomProcedure?.encode(on: &_container, forKey: .diseaseSymptomProcedure)
		try duration?.encode(on: &_container, forKey: .duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try intendedEffect?.encode(on: &_container, forKey: .intendedEffect)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try population?.encode(on: &_container, forKey: .population)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
	}
}

/**
 Information about the use of the medicinal product in relation to other therapies described as part of the indication.
 */
public struct MedicinalProductIndicationOtherTherapy: BackboneElement {
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of relationship between the medicinal product indication or contraindication and another therapy
	public var therapyRelationshipType: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		medication: MedicationX,
		modifierExtension: [Extension]? = nil,
		therapyRelationshipType: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.medication = medication
		self.modifierExtension = modifierExtension
		self.therapyRelationshipType = therapyRelationshipType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case medicationCodeableConcept
		case medicationReference
		case modifierExtension
		case therapyRelationshipType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.medication = try Self._decodeMedication(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.therapyRelationshipType = try CodeableConcept(from: _container, forKey: .therapyRelationshipType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch medication {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .medicationReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try therapyRelationshipType.encode(on: &_container, forKey: .therapyRelationshipType)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMedication(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MedicationX {
		var _t_medication: MedicationX? = nil
		if let medicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .medicationCodeableConcept) {
			_t_medication = .codeableConcept(medicationCodeableConcept)
		}
		if let medicationReference = try Reference(from: _container, forKeyIfPresent: .medicationReference) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationReference, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .reference(medicationReference)
		}
		guard let _t_medication else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.medicationReference)
			throw DecodingError.valueNotFound(MedicationX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		return _t_medication
	}
}
