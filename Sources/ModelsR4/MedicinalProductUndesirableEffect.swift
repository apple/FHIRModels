//
//  MedicinalProductUndesirableEffect.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect)
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
 MedicinalProductUndesirableEffect.
 
 Describe the undesirable effects of the medicinal product.
 */
open class MedicinalProductUndesirableEffect: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductUndesirableEffect }
	
	/// The medication for which this is an indication
	public var subject: [Reference]?
	
	/// The symptom, condition or undesirable effect
	public var symptomConditionEffect: CodeableConcept?
	
	/// Classification of the effect
	public var classification: CodeableConcept?
	
	/// The frequency of occurrence of the effect
	public var frequencyOfOccurrence: CodeableConcept?
	
	/// The population group to which this applies
	public var population: [Population]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							classification: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							frequencyOfOccurrence: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							population: [Population]? = nil,
							subject: [Reference]? = nil,
							symptomConditionEffect: CodeableConcept? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.classification = classification
		self.contained = contained
		self.`extension` = `extension`
		self.frequencyOfOccurrence = frequencyOfOccurrence
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.population = population
		self.subject = subject
		self.symptomConditionEffect = symptomConditionEffect
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case frequencyOfOccurrence
		case population
		case subject
		case symptomConditionEffect
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classification = try CodeableConcept(from: _container, forKeyIfPresent: .classification)
		self.frequencyOfOccurrence = try CodeableConcept(from: _container, forKeyIfPresent: .frequencyOfOccurrence)
		self.population = try [Population](from: _container, forKeyIfPresent: .population)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.symptomConditionEffect = try CodeableConcept(from: _container, forKeyIfPresent: .symptomConditionEffect)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classification?.encode(on: &_container, forKey: .classification)
		try frequencyOfOccurrence?.encode(on: &_container, forKey: .frequencyOfOccurrence)
		try population?.encode(on: &_container, forKey: .population)
		try subject?.encode(on: &_container, forKey: .subject)
		try symptomConditionEffect?.encode(on: &_container, forKey: .symptomConditionEffect)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductUndesirableEffect else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classification == _other.classification
		    && frequencyOfOccurrence == _other.frequencyOfOccurrence
		    && population == _other.population
		    && subject == _other.subject
		    && symptomConditionEffect == _other.symptomConditionEffect
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classification)
		hasher.combine(frequencyOfOccurrence)
		hasher.combine(population)
		hasher.combine(subject)
		hasher.combine(symptomConditionEffect)
	}
}
