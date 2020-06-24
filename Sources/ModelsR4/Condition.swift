//
//  Condition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Condition)
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
 Detailed information about conditions, problems or diagnoses.
 
 A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a
 level of concern.
 */
open class Condition: DomainResource {
	
	override open class var resourceType: ResourceType { return .condition }
	
	/// All possible types for "abatement[x]"
	public enum AbatementX: Hashable {
		case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Hashable {
		case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// External Ids for this condition
	public var identifier: [Identifier]?
	
	/// active | recurrence | relapse | inactive | remission | resolved
	public var clinicalStatus: CodeableConcept?
	
	/// unconfirmed | provisional | differential | confirmed | refuted | entered-in-error
	public var verificationStatus: CodeableConcept?
	
	/// problem-list-item | encounter-diagnosis
	public var category: [CodeableConcept]?
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept?
	
	/// Anatomical location, if relevant
	public var bodySite: [CodeableConcept]?
	
	/// Who has the condition?
	public var subject: Reference
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// Estimated or actual date,  date-time, or age
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// When in resolution/remission
	/// One of `abatement[x]`
	public var abatement: AbatementX?
	
	/// Date record was first recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the condition
	public var recorder: Reference?
	
	/// Person who asserts this condition
	public var asserter: Reference?
	
	/// Stage/grade, usually assessed formally
	public var stage: [ConditionStage]?
	
	/// Supporting evidence
	public var evidence: [ConditionEvidence]?
	
	/// Additional information about the Condition
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(subject: Reference) {
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abatement: AbatementX? = nil,
							asserter: Reference? = nil,
							bodySite: [CodeableConcept]? = nil,
							category: [CodeableConcept]? = nil,
							clinicalStatus: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							evidence: [ConditionEvidence]? = nil,
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
							verificationStatus: CodeableConcept? = nil)
	{
		self.init(subject: subject)
		self.abatement = abatement
		self.asserter = asserter
		self.bodySite = bodySite
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
		self.text = text
		self.verificationStatus = verificationStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abatementAge
		case abatementDateTime; case _abatementDateTime
		case abatementPeriod
		case abatementRange
		case abatementString; case _abatementString
		case asserter
		case bodySite
		case category
		case clinicalStatus
		case code
		case encounter
		case evidence
		case identifier
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
		case verificationStatus
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_abatement: AbatementX? = nil
		if let abatementDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .abatementDateTime, auxiliaryKey: ._abatementDateTime) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementDateTime, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .dateTime(abatementDateTime)
		}
		if let abatementAge = try Age(from: _container, forKeyIfPresent: .abatementAge) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementAge, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .age(abatementAge)
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
		self.abatement = _t_abatement
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.clinicalStatus = try CodeableConcept(from: _container, forKeyIfPresent: .clinicalStatus)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evidence = try [ConditionEvidence](from: _container, forKeyIfPresent: .evidence)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
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
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.stage = try [ConditionStage](from: _container, forKeyIfPresent: .stage)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.verificationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .verificationStatus)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = abatement {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .abatementDateTime, auxiliaryKey: ._abatementDateTime)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .abatementAge)
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
		try category?.encode(on: &_container, forKey: .category)
		try clinicalStatus?.encode(on: &_container, forKey: .clinicalStatus)
		try code?.encode(on: &_container, forKey: .code)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try severity?.encode(on: &_container, forKey: .severity)
		try stage?.encode(on: &_container, forKey: .stage)
		try subject.encode(on: &_container, forKey: .subject)
		try verificationStatus?.encode(on: &_container, forKey: .verificationStatus)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Condition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abatement == _other.abatement
		    && asserter == _other.asserter
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && clinicalStatus == _other.clinicalStatus
		    && code == _other.code
		    && encounter == _other.encounter
		    && evidence == _other.evidence
		    && identifier == _other.identifier
		    && note == _other.note
		    && onset == _other.onset
		    && recordedDate == _other.recordedDate
		    && recorder == _other.recorder
		    && severity == _other.severity
		    && stage == _other.stage
		    && subject == _other.subject
		    && verificationStatus == _other.verificationStatus
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abatement)
		hasher.combine(asserter)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(clinicalStatus)
		hasher.combine(code)
		hasher.combine(encounter)
		hasher.combine(evidence)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(onset)
		hasher.combine(recordedDate)
		hasher.combine(recorder)
		hasher.combine(severity)
		hasher.combine(stage)
		hasher.combine(subject)
		hasher.combine(verificationStatus)
	}
}

/**
 Supporting evidence.
 
 Supporting evidence / manifestations that are the basis of the Condition's verification status, such as evidence that
 confirmed or refuted the condition.
 */
open class ConditionEvidence: BackboneElement {
	
	/// Manifestation/symptom
	public var code: [CodeableConcept]?
	
	/// Supporting information found elsewhere
	public var detail: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: [CodeableConcept]? = nil,
							detail: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.code = code
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detail
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.detail = try [Reference](from: _container, forKeyIfPresent: .detail)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionEvidence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && detail == _other.detail
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detail)
	}
}

/**
 Stage/grade, usually assessed formally.
 
 Clinical stage or grade of a condition. May include formal severity assessments.
 */
open class ConditionStage: BackboneElement {
	
	/// Simple summary (disease specific)
	public var summary: CodeableConcept?
	
	/// Formal record of assessment
	public var assessment: [Reference]?
	
	/// Kind of staging
	public var type: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assessment: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							summary: CodeableConcept? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case summary
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assessment = try [Reference](from: _container, forKeyIfPresent: .assessment)
		self.summary = try CodeableConcept(from: _container, forKeyIfPresent: .summary)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assessment?.encode(on: &_container, forKey: .assessment)
		try summary?.encode(on: &_container, forKey: .summary)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionStage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assessment == _other.assessment
		    && summary == _other.summary
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assessment)
		hasher.combine(summary)
		hasher.combine(type)
	}
}
