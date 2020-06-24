//
//  AllergyIntolerance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance)
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
 Allergy or Intolerance (generally: Risk Of Adverse reaction to a substance).
 
 Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to
 a substance.
 */
open class AllergyIntolerance: DomainResource {
	
	override open class var resourceType: ResourceType { return .allergyIntolerance }
	
	/// External ids for this item
	public var identifier: [Identifier]?
	
	/// Date(/time) when manifestations showed
	public var onset: FHIRPrimitive<DateTime>?
	
	/// When recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the sensitivity
	public var recorder: Reference?
	
	/// Who the sensitivity is for
	public var patient: Reference
	
	/// Source of the information about the allergy
	public var reporter: Reference?
	
	/// Substance, (or class) considered to be responsible for risk
	public var substance: CodeableConcept
	
	/// Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified
	/// Substance.
	/// Restricted to: ['active', 'inactive']
	public var status: FHIRPrimitive<AllergyIntoleranceStatus>?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified Substance.
	/// Restricted to: ['CRITL', 'CRITH', 'CRITU']
	public var criticality: FHIRPrimitive<AllergyIntoleranceCriticality>?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	/// Restricted to: ['allergy', 'intolerance']
	public var type: FHIRPrimitive<AllergyIntoleranceType>?
	
	/// Category of the identified Substance.
	/// Restricted to: ['food', 'medication', 'environment', 'other']
	public var category: FHIRPrimitive<AllergyIntoleranceCategory>?
	
	/// Date(/time) of last known occurrence of a reaction
	public var lastOccurence: FHIRPrimitive<DateTime>?
	
	/// Additional text not captured in other fields
	public var note: Annotation?
	
	/// Adverse Reaction Events linked to exposure to substance
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, substance: CodeableConcept) {
		self.patient = patient
		self.substance = substance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: FHIRPrimitive<AllergyIntoleranceType>? = nil)
	{
		self.init(patient: patient, substance: substance)
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
		self.reaction = reaction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.reporter = reporter
		self.status = status
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category; case _category
		case criticality; case _criticality
		case identifier
		case lastOccurence; case _lastOccurence
		case note
		case onset; case _onset
		case patient
		case reaction
		case recordedDate; case _recordedDate
		case recorder
		case reporter
		case status; case _status
		case substance
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try FHIRPrimitive<AllergyIntoleranceCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.criticality = try FHIRPrimitive<AllergyIntoleranceCriticality>(from: _container, forKeyIfPresent: .criticality, auxiliaryKey: ._criticality)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastOccurence = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastOccurence, auxiliaryKey: ._lastOccurence)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.onset = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onset, auxiliaryKey: ._onset)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reaction = try [AllergyIntoleranceReaction](from: _container, forKeyIfPresent: .reaction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.status = try FHIRPrimitive<AllergyIntoleranceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.substance = try CodeableConcept(from: _container, forKey: .substance)
		self.type = try FHIRPrimitive<AllergyIntoleranceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try criticality?.encode(on: &_container, forKey: .criticality, auxiliaryKey: ._criticality)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastOccurence?.encode(on: &_container, forKey: .lastOccurence, auxiliaryKey: ._lastOccurence)
		try note?.encode(on: &_container, forKey: .note)
		try onset?.encode(on: &_container, forKey: .onset, auxiliaryKey: ._onset)
		try patient.encode(on: &_container, forKey: .patient)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substance.encode(on: &_container, forKey: .substance)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		return category == _other.category
		    && criticality == _other.criticality
		    && identifier == _other.identifier
		    && lastOccurence == _other.lastOccurence
		    && note == _other.note
		    && onset == _other.onset
		    && patient == _other.patient
		    && reaction == _other.reaction
		    && recordedDate == _other.recordedDate
		    && recorder == _other.recorder
		    && reporter == _other.reporter
		    && status == _other.status
		    && substance == _other.substance
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(criticality)
		hasher.combine(identifier)
		hasher.combine(lastOccurence)
		hasher.combine(note)
		hasher.combine(onset)
		hasher.combine(patient)
		hasher.combine(reaction)
		hasher.combine(recordedDate)
		hasher.combine(recorder)
		hasher.combine(reporter)
		hasher.combine(status)
		hasher.combine(substance)
		hasher.combine(type)
	}
}

/**
 Adverse Reaction Events linked to exposure to substance.
 
 Details about each adverse reaction event linked to exposure to the identified Substance.
 */
open class AllergyIntoleranceReaction: BackboneElement {
	
	/// Specific substance considered to be responsible for event
	public var substance: CodeableConcept?
	
	/// Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation
	/// in this reaction event.
	/// Restricted to: ['unlikely', 'likely', 'confirmed']
	public var certainty: FHIRPrimitive<AllergyIntoleranceCertainty>?
	
	/// Clinical symptoms/signs associated with the Event
	public var manifestation: [CodeableConcept]
	
	/// Description of the event as a whole
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Date(/time) when manifestations showed
	public var onset: FHIRPrimitive<DateTime>?
	
	/// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different
	/// manifestations.
	/// Restricted to: ['mild', 'moderate', 'severe']
	public var severity: FHIRPrimitive<AllergyIntoleranceSeverity>?
	
	/// How the subject was exposed to the substance
	public var exposureRoute: CodeableConcept?
	
	/// Text about event not captured in other fields
	public var note: Annotation?
	
	/// Designated initializer taking all required properties
	public init(manifestation: [CodeableConcept]) {
		self.manifestation = manifestation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							substance: CodeableConcept? = nil)
	{
		self.init(manifestation: manifestation)
		self.certainty = certainty
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
		case certainty; case _certainty
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
		self.certainty = try FHIRPrimitive<AllergyIntoleranceCertainty>(from: _container, forKeyIfPresent: .certainty, auxiliaryKey: ._certainty)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exposureRoute = try CodeableConcept(from: _container, forKeyIfPresent: .exposureRoute)
		self.manifestation = try [CodeableConcept](from: _container, forKey: .manifestation)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.onset = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onset, auxiliaryKey: ._onset)
		self.severity = try FHIRPrimitive<AllergyIntoleranceSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.substance = try CodeableConcept(from: _container, forKeyIfPresent: .substance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try certainty?.encode(on: &_container, forKey: .certainty, auxiliaryKey: ._certainty)
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
		return certainty == _other.certainty
		    && description_fhir == _other.description_fhir
		    && exposureRoute == _other.exposureRoute
		    && manifestation == _other.manifestation
		    && note == _other.note
		    && onset == _other.onset
		    && severity == _other.severity
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(certainty)
		hasher.combine(description_fhir)
		hasher.combine(exposureRoute)
		hasher.combine(manifestation)
		hasher.combine(note)
		hasher.combine(onset)
		hasher.combine(severity)
		hasher.combine(substance)
	}
}
