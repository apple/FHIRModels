//
//  MedicinalProductUndesirableEffect.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect)
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
 MedicinalProductUndesirableEffect.
 
 Describe the undesirable effects of the medicinal product.
 */
public struct MedicinalProductUndesirableEffect: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductUndesirableEffect
	
	/// Classification of the effect
	public var classification: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The frequency of occurrence of the effect
	public var frequencyOfOccurrence: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The population group to which this applies
	public var population: [Population]?
	
	/// The medication for which this is an indication
	public var subject: [Reference]?
	
	/// The symptom, condition or undesirable effect
	public var symptomConditionEffect: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case classification
		case contained
		case `extension` = "extension"
		case frequencyOfOccurrence
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case population
		case subject
		case symptomConditionEffect
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classification = try CodeableConcept(from: _container, forKeyIfPresent: .classification)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frequencyOfOccurrence = try CodeableConcept(from: _container, forKeyIfPresent: .frequencyOfOccurrence)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [Population](from: _container, forKeyIfPresent: .population)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.symptomConditionEffect = try CodeableConcept(from: _container, forKeyIfPresent: .symptomConditionEffect)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try classification?.encode(on: &_container, forKey: .classification)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frequencyOfOccurrence?.encode(on: &_container, forKey: .frequencyOfOccurrence)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try subject?.encode(on: &_container, forKey: .subject)
		try symptomConditionEffect?.encode(on: &_container, forKey: .symptomConditionEffect)
		try text?.encode(on: &_container, forKey: .text)
	}
}
