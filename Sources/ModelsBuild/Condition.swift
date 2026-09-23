//
//  Condition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Condition)
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
 Detailed information about conditions, problems or diagnoses.
 
 A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a
 level of concern.
 */
public struct Condition: DomainResource {
	
	public static let resourceType: ResourceType = .condition
	
	/// All possible types for "abatement[x]"
	public enum AbatementX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When in resolution/remission
	/// One of `abatement[x]`
	public var abatement: AbatementX?
	
	/// Person or device that asserts this condition
	public var asserter: Reference?
	
	/// Anatomical location, if relevant
	public var bodySite: [CodeableConcept]?
	
	/// Anatomical body structure
	public var bodyStructure: Reference?
	
	/// problem-list-item | encounter-diagnosis
	public var category: [CodeableConcept]?
	
	/// active | recurrence | relapse | inactive | remission | resolved | unknown
	public var clinicalStatus: CodeableConcept
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The Encounter during which this Condition was created
	public var encounter: Reference?
	
	/// Supporting evidence for the condition
	public var evidence: [CodeableReference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this condition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional information about the Condition
	public var note: [Annotation]?
	
	/// Estimated or actual date,  date-time, or age
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// Date condition was first recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the condition
	public var recorder: Reference?
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally
	public var stage: [ConditionStage]?
	
	/// Who has the condition?
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// unconfirmed | provisional | differential | confirmed | refuted | entered-in-error
	public var verificationStatus: CodeableConcept?
	
	/// Designated initializer
	public init(
		abatement: AbatementX? = nil,
		asserter: Reference? = nil,
		bodySite: [CodeableConcept]? = nil,
		bodyStructure: Reference? = nil,
		category: [CodeableConcept]? = nil,
		clinicalStatus: CodeableConcept,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		evidence: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		onset: OnsetX? = nil,
		recordedDate: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		severity: CodeableConcept? = nil,
		stage: [ConditionStage]? = nil,
		subject: Reference,
		text: Narrative? = nil,
		verificationStatus: CodeableConcept? = nil
	) {
		self.abatement = abatement
		self.asserter = asserter
		self.bodySite = bodySite
		self.bodyStructure = bodyStructure
		self.category = category
		self.clinicalStatus = clinicalStatus
		self.code = code
		self.contained = contained
		self.encounter = encounter
		self.evidence = evidence
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.onset = onset
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.severity = severity
		self.stage = stage
		self.subject = subject
		self.text = text
		self.verificationStatus = verificationStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case abatementAge
		case abatementDateTime; case _abatementDateTime
		case abatementPeriod
		case abatementRange
		case abatementString; case _abatementString
		case asserter
		case bodySite
		case bodyStructure
		case category
		case clinicalStatus
		case code
		case contained
		case encounter
		case evidence
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case onsetAge
		case onsetDateTime; case _onsetDateTime
		case onsetPeriod
		case onsetRange
		case onsetString; case _onsetString
		case recordedDate; case _recordedDate
		case recorder
		case severity
		case stage
		case subject
		case text
		case verificationStatus
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.abatement = try Self._decodeAbatement(from: _container)
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.clinicalStatus = try CodeableConcept(from: _container, forKey: .clinicalStatus)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evidence = try [CodeableReference](from: _container, forKeyIfPresent: .evidence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.onset = try Self._decodeOnset(from: _container)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.stage = try [ConditionStage](from: _container, forKeyIfPresent: .stage)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.verificationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .verificationStatus)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		if let _enum = abatement {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .abatementAge)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .abatementDateTime, auxiliaryKey: ._abatementDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .abatementPeriod)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .abatementRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .abatementString, auxiliaryKey: ._abatementString)
		}
		}
		try asserter?.encode(on: &_container, forKey: .asserter)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try clinicalStatus.encode(on: &_container, forKey: .clinicalStatus)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
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
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try severity?.encode(on: &_container, forKey: .severity)
		try stage?.encode(on: &_container, forKey: .stage)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try verificationStatus?.encode(on: &_container, forKey: .verificationStatus)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAbatement(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AbatementX? {
		var _t_abatement: AbatementX? = nil
		if let abatementAge = try Age(from: _container, forKeyIfPresent: .abatementAge) {
			_t_abatement = .age(abatementAge)
		}
		if let abatementDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .abatementDateTime, auxiliaryKey: ._abatementDateTime) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementDateTime, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .dateTime(abatementDateTime)
		}
		if let abatementPeriod = try Period(from: _container, forKeyIfPresent: .abatementPeriod) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementPeriod, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .period(abatementPeriod)
		}
		if let abatementRange = try Range(from: _container, forKeyIfPresent: .abatementRange) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementRange, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .range(abatementRange)
		}
		if let abatementString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .abatementString, auxiliaryKey: ._abatementString) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementString, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .string(abatementString)
		}
		return _t_abatement
	}
	
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
 Stage/grade, usually assessed formally.
 
 A simple summary of the stage such as "Stage 3" or "Early Onset". The determination of the stage is disease-specific,
 such as cancer, retinopathy of prematurity, kidney diseases, Alzheimer's, or Parkinson disease.
 */
public struct ConditionStage: BackboneElement {
	
	/// Formal record of assessment
	public var assessment: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Simple summary (disease specific)
	public var summary: CodeableConcept?
	
	/// Kind of staging
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		assessment: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		summary: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.assessment = assessment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.summary = summary
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assessment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case summary
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assessment = try [Reference](from: _container, forKeyIfPresent: .assessment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.summary = try CodeableConcept(from: _container, forKeyIfPresent: .summary)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assessment?.encode(on: &_container, forKey: .assessment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try summary?.encode(on: &_container, forKey: .summary)
		try type?.encode(on: &_container, forKey: .type)
	}
}
