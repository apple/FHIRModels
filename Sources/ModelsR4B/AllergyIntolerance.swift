//
//  AllergyIntolerance.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance)
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
 Allergy or Intolerance (generally: Risk of adverse reaction to a substance).
 
 Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to
 a substance.
 */
public struct AllergyIntolerance: DomainResource {
	
	public static let resourceType: ResourceType = .allergyIntolerance
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Source of the information about the allergy
	public var asserter: Reference?
	
	/// Category of the identified substance.
	public var category: [FHIRPrimitive<AllergyIntoleranceCategory>]?
	
	/// active | inactive | resolved
	public var clinicalStatus: CodeableConcept?
	
	/// Code that identifies the allergy or intolerance
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
	public var criticality: FHIRPrimitive<AllergyIntoleranceCriticality>?
	
	/// Encounter when the allergy or intolerance was asserted
	public var encounter: Reference?
	
	/// Additional content defined by implementations
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
	public var lastOccurrence: FHIRPrimitive<DateTime>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional text not captured in other fields
	public var note: [Annotation]?
	
	/// When allergy or intolerance was identified
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// Who the sensitivity is for
	public var patient: Reference
	
	/// Adverse Reaction Events linked to exposure to substance
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// Date first version of the resource instance was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the sensitivity
	public var recorder: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	public var type: FHIRPrimitive<AllergyIntoleranceType>?
	
	/// unconfirmed | confirmed | refuted | entered-in-error
	public var verificationStatus: CodeableConcept?
	
	/// Designated initializer
	public init(
		asserter: Reference? = nil,
		category: [FHIRPrimitive<AllergyIntoleranceCategory>]? = nil,
		clinicalStatus: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		criticality: FHIRPrimitive<AllergyIntoleranceCriticality>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastOccurrence: FHIRPrimitive<DateTime>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		onset: OnsetX? = nil,
		patient: Reference,
		reaction: [AllergyIntoleranceReaction]? = nil,
		recordedDate: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<AllergyIntoleranceType>? = nil,
		verificationStatus: CodeableConcept? = nil
	) {
		self.asserter = asserter
		self.category = category
		self.clinicalStatus = clinicalStatus
		self.code = code
		self.contained = contained
		self.criticality = criticality
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastOccurrence = lastOccurrence
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.onset = onset
		self.patient = patient
		self.reaction = reaction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.text = text
		self.type = type
		self.verificationStatus = verificationStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case asserter
		case category; case _category
		case clinicalStatus
		case code
		case contained
		case criticality; case _criticality
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lastOccurrence; case _lastOccurrence
		case meta
		case modifierExtension
		case note
		case onsetAge
		case onsetDateTime; case _onsetDateTime
		case onsetPeriod
		case onsetRange
		case onsetString; case _onsetString
		case patient
		case reaction
		case recordedDate; case _recordedDate
		case recorder
		case text
		case type; case _type
		case verificationStatus
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.category = try [FHIRPrimitive<AllergyIntoleranceCategory>](from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.clinicalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .clinicalStatus)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.criticality = try FHIRPrimitive<AllergyIntoleranceCriticality>(from: _container, forKeyIfPresent: .criticality, auxiliaryKey: ._criticality)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastOccurrence = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastOccurrence, auxiliaryKey: ._lastOccurrence)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.onset = try Self._decodeOnset(from: _container)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reaction = try [AllergyIntoleranceReaction](from: _container, forKeyIfPresent: .reaction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<AllergyIntoleranceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.verificationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .verificationStatus)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try asserter?.encode(on: &_container, forKey: .asserter)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try clinicalStatus?.encode(on: &_container, forKey: .clinicalStatus)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try criticality?.encode(on: &_container, forKey: .criticality, auxiliaryKey: ._criticality)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastOccurrence?.encode(on: &_container, forKey: .lastOccurrence, auxiliaryKey: ._lastOccurrence)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = onset {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .onsetAge)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .onsetDateTime, auxiliaryKey: ._onsetDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .onsetPeriod)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .onsetRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .onsetString, auxiliaryKey: ._onsetString)
		}
		}
		try patient.encode(on: &_container, forKey: .patient)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try verificationStatus?.encode(on: &_container, forKey: .verificationStatus)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOnset(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OnsetX? {
		var _t_onset: OnsetX? = nil
		if let onsetAge = try Age(from: _container, forKeyIfPresent: .onsetAge) {
			_t_onset = .age(onsetAge)
		}
		if let onsetDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onsetDateTime, auxiliaryKey: ._onsetDateTime) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetDateTime, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .dateTime(onsetDateTime)
		}
		if let onsetPeriod = try Period(from: _container, forKeyIfPresent: .onsetPeriod) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetPeriod, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .period(onsetPeriod)
		}
		if let onsetRange = try Range(from: _container, forKeyIfPresent: .onsetRange) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetRange, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .range(onsetRange)
		}
		if let onsetString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .onsetString, auxiliaryKey: ._onsetString) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetString, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .string(onsetString)
		}
		return _t_onset
	}
}

/**
 Adverse Reaction Events linked to exposure to substance.
 
 Details about each adverse reaction event linked to exposure to the identified substance.
 */
public struct AllergyIntoleranceReaction: BackboneElement {
	
	/// Description of the event as a whole
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// How the subject was exposed to the substance
	public var exposureRoute: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Clinical symptoms/signs associated with the Event
	public var manifestation: [CodeableConcept]
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Text about event not captured in other fields
	public var note: [Annotation]?
	
	/// Date(/time) when manifestations showed
	public var onset: FHIRPrimitive<DateTime>?
	
	/// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different
	/// manifestations.
	public var severity: FHIRPrimitive<AllergyIntoleranceSeverity>?
	
	/// Specific substance or pharmaceutical product considered to be responsible for event
	public var substance: CodeableConcept?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		exposureRoute: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manifestation: [CodeableConcept],
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		onset: FHIRPrimitive<DateTime>? = nil,
		severity: FHIRPrimitive<AllergyIntoleranceSeverity>? = nil,
		substance: CodeableConcept? = nil
	) {
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
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exposureRoute = try CodeableConcept(from: _container, forKeyIfPresent: .exposureRoute)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.manifestation = try [CodeableConcept](from: _container, forKey: .manifestation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.onset = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onset, auxiliaryKey: ._onset)
		self.severity = try FHIRPrimitive<AllergyIntoleranceSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.substance = try CodeableConcept(from: _container, forKeyIfPresent: .substance)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
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
