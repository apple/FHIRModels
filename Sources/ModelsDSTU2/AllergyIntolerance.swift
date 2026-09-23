//
//  AllergyIntolerance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance)
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
 Allergy or Intolerance (generally: Risk Of Adverse reaction to a substance).
 
 Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to
 a substance.
 */
public struct AllergyIntolerance: DomainResource {
	
	public static let resourceType: ResourceType = .allergyIntolerance
	
	/// Category of the identified Substance.
	/// Restricted to: ['food', 'medication', 'environment', 'other']
	public var category: FHIRPrimitive<AllergyIntoleranceCategory>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified Substance.
	/// Restricted to: ['CRITL', 'CRITH', 'CRITU']
	public var criticality: FHIRPrimitive<AllergyIntoleranceCriticality>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External ids for this item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Date(/time) of last known occurrence of a reaction
	public var lastOccurence: FHIRPrimitive<DateTime>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional text not captured in other fields
	public var note: Annotation?
	
	/// Date(/time) when manifestations showed
	public var onset: FHIRPrimitive<DateTime>?
	
	/// Who the sensitivity is for
	public var patient: Reference
	
	/// Adverse Reaction Events linked to exposure to substance
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// When recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the sensitivity
	public var recorder: Reference?
	
	/// Source of the information about the allergy
	public var reporter: Reference?
	
	/// Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified
	/// Substance.
	/// Restricted to: ['active', 'inactive']
	public var status: FHIRPrimitive<AllergyIntoleranceStatus>?
	
	/// Substance, (or class) considered to be responsible for risk
	public var substance: CodeableConcept
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	/// Restricted to: ['allergy', 'intolerance']
	public var type: FHIRPrimitive<AllergyIntoleranceType>?
	
	/// Designated initializer
	public init(
		category: FHIRPrimitive<AllergyIntoleranceCategory>? = nil,
		contained: [ResourceProxy]? = nil,
		criticality: FHIRPrimitive<AllergyIntoleranceCriticality>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastOccurence: FHIRPrimitive<DateTime>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: Annotation? = nil,
		onset: FHIRPrimitive<DateTime>? = nil,
		patient: Reference,
		reaction: [AllergyIntoleranceReaction]? = nil,
		recordedDate: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		reporter: Reference? = nil,
		status: FHIRPrimitive<AllergyIntoleranceStatus>? = nil,
		substance: CodeableConcept,
		text: Narrative? = nil,
		type: FHIRPrimitive<AllergyIntoleranceType>? = nil
	) {
		self.category = category
		self.contained = contained
		self.criticality = criticality
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastOccurence = lastOccurence
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.onset = onset
		self.patient = patient
		self.reaction = reaction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.reporter = reporter
		self.status = status
		self.substance = substance
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category; case _category
		case contained
		case criticality; case _criticality
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lastOccurence; case _lastOccurence
		case meta
		case modifierExtension
		case note
		case onset; case _onset
		case patient
		case reaction
		case recordedDate; case _recordedDate
		case recorder
		case reporter
		case status; case _status
		case substance
		case text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try FHIRPrimitive<AllergyIntoleranceCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.criticality = try FHIRPrimitive<AllergyIntoleranceCriticality>(from: _container, forKeyIfPresent: .criticality, auxiliaryKey: ._criticality)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastOccurence = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastOccurence, auxiliaryKey: ._lastOccurence)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.onset = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onset, auxiliaryKey: ._onset)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reaction = try [AllergyIntoleranceReaction](from: _container, forKeyIfPresent: .reaction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.status = try FHIRPrimitive<AllergyIntoleranceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.substance = try CodeableConcept(from: _container, forKey: .substance)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<AllergyIntoleranceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try contained?.encode(on: &_container, forKey: .contained)
		try criticality?.encode(on: &_container, forKey: .criticality, auxiliaryKey: ._criticality)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastOccurence?.encode(on: &_container, forKey: .lastOccurence, auxiliaryKey: ._lastOccurence)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try onset?.encode(on: &_container, forKey: .onset, auxiliaryKey: ._onset)
		try patient.encode(on: &_container, forKey: .patient)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substance.encode(on: &_container, forKey: .substance)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Adverse Reaction Events linked to exposure to substance.
 
 Details about each adverse reaction event linked to exposure to the identified Substance.
 */
public struct AllergyIntoleranceReaction: BackboneElement {
	
	/// Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation
	/// in this reaction event.
	/// Restricted to: ['unlikely', 'likely', 'confirmed']
	public var certainty: FHIRPrimitive<AllergyIntoleranceCertainty>?
	
	/// Description of the event as a whole
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// How the subject was exposed to the substance
	public var exposureRoute: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Clinical symptoms/signs associated with the Event
	public var manifestation: [CodeableConcept]
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Text about event not captured in other fields
	public var note: Annotation?
	
	/// Date(/time) when manifestations showed
	public var onset: FHIRPrimitive<DateTime>?
	
	/// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different
	/// manifestations.
	/// Restricted to: ['mild', 'moderate', 'severe']
	public var severity: FHIRPrimitive<AllergyIntoleranceSeverity>?
	
	/// Specific substance considered to be responsible for event
	public var substance: CodeableConcept?
	
	/// Designated initializer
	public init(
		certainty: FHIRPrimitive<AllergyIntoleranceCertainty>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		exposureRoute: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manifestation: [CodeableConcept],
		modifierExtension: [Extension]? = nil,
		note: Annotation? = nil,
		onset: FHIRPrimitive<DateTime>? = nil,
		severity: FHIRPrimitive<AllergyIntoleranceSeverity>? = nil,
		substance: CodeableConcept? = nil
	) {
		self.certainty = certainty
		self.description_fhir = description_fhir
		self.exposureRoute = exposureRoute
		self.`extension` = `extension`
		self.id = id
		self.manifestation = manifestation
		self.modifierExtension = modifierExtension
		self.note = note
		self.onset = onset
		self.severity = severity
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case certainty; case _certainty
		case description_fhir = "description"; case _description_fhir = "_description"
		case exposureRoute
		case `extension` = "extension"
		case id; case _id
		case manifestation
		case modifierExtension
		case note
		case onset; case _onset
		case severity; case _severity
		case substance
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.certainty = try FHIRPrimitive<AllergyIntoleranceCertainty>(from: _container, forKeyIfPresent: .certainty, auxiliaryKey: ._certainty)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exposureRoute = try CodeableConcept(from: _container, forKeyIfPresent: .exposureRoute)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.manifestation = try [CodeableConcept](from: _container, forKey: .manifestation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.onset = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onset, auxiliaryKey: ._onset)
		self.severity = try FHIRPrimitive<AllergyIntoleranceSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.substance = try CodeableConcept(from: _container, forKeyIfPresent: .substance)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try certainty?.encode(on: &_container, forKey: .certainty, auxiliaryKey: ._certainty)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try exposureRoute?.encode(on: &_container, forKey: .exposureRoute)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try manifestation.encode(on: &_container, forKey: .manifestation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try onset?.encode(on: &_container, forKey: .onset, auxiliaryKey: ._onset)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try substance?.encode(on: &_container, forKey: .substance)
	}
}
