//
//  AllergyIntolerance.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance)
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
 Allergy or Intolerance (generally: Risk of adverse reaction to a substance).
 
 Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to
 a substance.
 */
open class AllergyIntolerance: DomainResource {
	
	override open class var resourceType: ResourceType { return .allergyIntolerance }
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Hashable {
		case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// External ids for this item
	public var identifier: [Identifier]?
	
	/// active | inactive | resolved
	public var clinicalStatus: CodeableConcept?
	
	/// unconfirmed | presumed | confirmed | refuted | entered-in-error
	public var verificationStatus: CodeableConcept?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	public var type: FHIRPrimitive<AllergyIntoleranceType>?
	
	/// Category of the identified substance.
	public var category: [FHIRPrimitive<AllergyIntoleranceCategory>]?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
	public var criticality: FHIRPrimitive<AllergyIntoleranceCriticality>?
	
	/// Code that identifies the allergy or intolerance
	public var code: CodeableConcept?
	
	/// Who the sensitivity is for
	public var patient: Reference
	
	/// Encounter when the allergy or intolerance was asserted
	public var encounter: Reference?
	
	/// When allergy or intolerance was identified
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// Date first version of the resource instance was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the sensitivity
	public var recorder: Reference?
	
	/// Source of the information about the allergy
	public var asserter: Reference?
	
	/// Date(/time) of last known occurrence of a reaction
	public var lastOccurrence: FHIRPrimitive<DateTime>?
	
	/// Additional text not captured in other fields
	public var note: [Annotation]?
	
	/// Adverse Reaction Events linked to exposure to substance
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference) {
		self.patient = patient
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							verificationStatus: CodeableConcept? = nil)
	{
		self.init(patient: patient)
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
		self.reaction = reaction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.text = text
		self.type = type
		self.verificationStatus = verificationStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asserter
		case category; case _category
		case clinicalStatus
		case code
		case criticality; case _criticality
		case encounter
		case identifier
		case lastOccurrence; case _lastOccurrence
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
		case type; case _type
		case verificationStatus
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.category = try [FHIRPrimitive<AllergyIntoleranceCategory>](from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.clinicalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .clinicalStatus)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.criticality = try FHIRPrimitive<AllergyIntoleranceCriticality>(from: _container, forKeyIfPresent: .criticality, auxiliaryKey: ._criticality)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastOccurrence = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastOccurrence, auxiliaryKey: ._lastOccurrence)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_onset: OnsetX? = nil
		if let onsetDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onsetDateTime, auxiliaryKey: ._onsetDateTime) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetDateTime, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .dateTime(onsetDateTime)
		}
		if let onsetAge = try Age(from: _container, forKeyIfPresent: .onsetAge) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetAge, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .age(onsetAge)
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
		self.onset = _t_onset
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reaction = try [AllergyIntoleranceReaction](from: _container, forKeyIfPresent: .reaction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.type = try FHIRPrimitive<AllergyIntoleranceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.verificationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .verificationStatus)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asserter?.encode(on: &_container, forKey: .asserter)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try clinicalStatus?.encode(on: &_container, forKey: .clinicalStatus)
		try code?.encode(on: &_container, forKey: .code)
		try criticality?.encode(on: &_container, forKey: .criticality, auxiliaryKey: ._criticality)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastOccurrence?.encode(on: &_container, forKey: .lastOccurrence, auxiliaryKey: ._lastOccurrence)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = onset {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .onsetDateTime, auxiliaryKey: ._onsetDateTime)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .onsetAge)
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
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try verificationStatus?.encode(on: &_container, forKey: .verificationStatus)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AllergyIntolerance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asserter == _other.asserter
		    && category == _other.category
		    && clinicalStatus == _other.clinicalStatus
		    && code == _other.code
		    && criticality == _other.criticality
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && lastOccurrence == _other.lastOccurrence
		    && note == _other.note
		    && onset == _other.onset
		    && patient == _other.patient
		    && reaction == _other.reaction
		    && recordedDate == _other.recordedDate
		    && recorder == _other.recorder
		    && type == _other.type
		    && verificationStatus == _other.verificationStatus
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asserter)
		hasher.combine(category)
		hasher.combine(clinicalStatus)
		hasher.combine(code)
		hasher.combine(criticality)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(lastOccurrence)
		hasher.combine(note)
		hasher.combine(onset)
		hasher.combine(patient)
		hasher.combine(reaction)
		hasher.combine(recordedDate)
		hasher.combine(recorder)
		hasher.combine(type)
		hasher.combine(verificationStatus)
	}
}

/**
 Adverse Reaction Events linked to exposure to substance.
 
 Details about each adverse reaction event linked to exposure to the identified substance.
 */
open class AllergyIntoleranceReaction: BackboneElement {
	
	/// Specific substance or pharmaceutical product considered to be responsible for event
	public var substance: CodeableConcept?
	
	/// Clinical symptoms/signs associated with the Event
	public var manifestation: [CodeableConcept]
	
	/// Description of the event as a whole
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Date(/time) when manifestations showed
	public var onset: FHIRPrimitive<DateTime>?
	
	/// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different
	/// manifestations.
	public var severity: FHIRPrimitive<AllergyIntoleranceSeverity>?
	
	/// How the subject was exposed to the substance
	public var exposureRoute: CodeableConcept?
	
	/// Text about event not captured in other fields
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(manifestation: [CodeableConcept]) {
		self.manifestation = manifestation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							exposureRoute: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							manifestation: [CodeableConcept],
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							onset: FHIRPrimitive<DateTime>? = nil,
							severity: FHIRPrimitive<AllergyIntoleranceSeverity>? = nil,
							substance: CodeableConcept? = nil)
	{
		self.init(manifestation: manifestation)
		self.description_fhir = description_fhir
		self.exposureRoute = exposureRoute
		self.`extension` = `extension`
		self.id = id
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
		case manifestation
		case note
		case onset; case _onset
		case severity; case _severity
		case substance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exposureRoute = try CodeableConcept(from: _container, forKeyIfPresent: .exposureRoute)
		self.manifestation = try [CodeableConcept](from: _container, forKey: .manifestation)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.onset = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onset, auxiliaryKey: ._onset)
		self.severity = try FHIRPrimitive<AllergyIntoleranceSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.substance = try CodeableConcept(from: _container, forKeyIfPresent: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try exposureRoute?.encode(on: &_container, forKey: .exposureRoute)
		try manifestation.encode(on: &_container, forKey: .manifestation)
		try note?.encode(on: &_container, forKey: .note)
		try onset?.encode(on: &_container, forKey: .onset, auxiliaryKey: ._onset)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try substance?.encode(on: &_container, forKey: .substance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AllergyIntoleranceReaction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && exposureRoute == _other.exposureRoute
		    && manifestation == _other.manifestation
		    && note == _other.note
		    && onset == _other.onset
		    && severity == _other.severity
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(exposureRoute)
		hasher.combine(manifestation)
		hasher.combine(note)
		hasher.combine(onset)
		hasher.combine(severity)
		hasher.combine(substance)
	}
}
