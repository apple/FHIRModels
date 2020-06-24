//
//  Condition.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Condition)
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
 
 Use to record detailed information about conditions, problems or diagnoses recognized by a clinician. There are many
 uses including: recording a diagnosis during an encounter; populating a problem list or a summary statement, such as a
 discharge summary.
 */
open class Condition: DomainResource {
	
	override open class var resourceType: ResourceType { return .condition }
	
	/// All possible types for "abatement[x]"
	public enum AbatementX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// External Ids for this condition
	public var identifier: [Identifier]?
	
	/// Who has the condition?
	public var patient: Reference
	
	/// Encounter when condition first asserted
	public var encounter: Reference?
	
	/// Person who asserts this condition
	public var asserter: Reference?
	
	/// When first entered
	public var dateRecorded: FHIRPrimitive<FHIRDate>?
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept
	
	/// complaint | symptom | finding | diagnosis
	public var category: CodeableConcept?
	
	/// active | relapse | remission | resolved
	public var clinicalStatus: FHIRPrimitive<FHIRString>?
	
	/// The verification status to support the clinical status of the condition.
	/// Restricted to: ['provisional', 'differential', 'confirmed', 'refuted', 'entered-in-error', 'unknown']
	public var verificationStatus: FHIRPrimitive<ConditionVerificationStatus>
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Estimated or actual date,  date-time, or age
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// If/when in resolution/remission
	/// One of `abatement[x]`
	public var abatement: AbatementX?
	
	/// Stage/grade, usually assessed formally
	public var stage: ConditionStage?
	
	/// Supporting evidence
	public var evidence: [ConditionEvidence]?
	
	/// Anatomical location, if relevant
	public var bodySite: [CodeableConcept]?
	
	/// Additional information about the Condition
	public var notes: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, patient: Reference, verificationStatus: FHIRPrimitive<ConditionVerificationStatus>) {
		self.code = code
		self.patient = patient
		self.verificationStatus = verificationStatus
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abatement: AbatementX? = nil,
							asserter: Reference? = nil,
							bodySite: [CodeableConcept]? = nil,
							category: CodeableConcept? = nil,
							clinicalStatus: FHIRPrimitive<FHIRString>? = nil,
							code: CodeableConcept,
							contained: [ResourceProxy]? = nil,
							dateRecorded: FHIRPrimitive<FHIRDate>? = nil,
							encounter: Reference? = nil,
							evidence: [ConditionEvidence]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							notes: FHIRPrimitive<FHIRString>? = nil,
							onset: OnsetX? = nil,
							patient: Reference,
							severity: CodeableConcept? = nil,
							stage: ConditionStage? = nil,
							text: Narrative? = nil,
							verificationStatus: FHIRPrimitive<ConditionVerificationStatus>)
	{
		self.init(code: code, patient: patient, verificationStatus: verificationStatus)
		self.abatement = abatement
		self.asserter = asserter
		self.bodySite = bodySite
		self.category = category
		self.clinicalStatus = clinicalStatus
		self.contained = contained
		self.dateRecorded = dateRecorded
		self.encounter = encounter
		self.evidence = evidence
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notes = notes
		self.onset = onset
		self.severity = severity
		self.stage = stage
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abatementBoolean; case _abatementBoolean
		case abatementDateTime; case _abatementDateTime
		case abatementPeriod
		case abatementQuantity
		case abatementRange
		case abatementString; case _abatementString
		case asserter
		case bodySite
		case category
		case clinicalStatus; case _clinicalStatus
		case code
		case dateRecorded; case _dateRecorded
		case encounter
		case evidence
		case identifier
		case notes; case _notes
		case onsetDateTime; case _onsetDateTime
		case onsetPeriod
		case onsetQuantity
		case onsetRange
		case onsetString; case _onsetString
		case patient
		case severity
		case stage
		case verificationStatus; case _verificationStatus
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
		if let abatementQuantity = try Quantity(from: _container, forKeyIfPresent: .abatementQuantity) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementQuantity, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .quantity(abatementQuantity)
		}
		if let abatementBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .abatementBoolean, auxiliaryKey: ._abatementBoolean) {
			if _t_abatement != nil {
				throw DecodingError.dataCorruptedError(forKey: .abatementBoolean, in: _container, debugDescription: "More than one value provided for \"abatement\"")
			}
			_t_abatement = .boolean(abatementBoolean)
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
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.clinicalStatus = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .clinicalStatus, auxiliaryKey: ._clinicalStatus)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.dateRecorded = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .dateRecorded, auxiliaryKey: ._dateRecorded)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evidence = try [ConditionEvidence](from: _container, forKeyIfPresent: .evidence)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.notes = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		var _t_onset: OnsetX? = nil
		if let onsetDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .onsetDateTime, auxiliaryKey: ._onsetDateTime) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetDateTime, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .dateTime(onsetDateTime)
		}
		if let onsetQuantity = try Quantity(from: _container, forKeyIfPresent: .onsetQuantity) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetQuantity, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .quantity(onsetQuantity)
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
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.stage = try ConditionStage(from: _container, forKeyIfPresent: .stage)
		self.verificationStatus = try FHIRPrimitive<ConditionVerificationStatus>(from: _container, forKey: .verificationStatus, auxiliaryKey: ._verificationStatus)
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
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .abatementQuantity)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .abatementBoolean, auxiliaryKey: ._abatementBoolean)
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
		try clinicalStatus?.encode(on: &_container, forKey: .clinicalStatus, auxiliaryKey: ._clinicalStatus)
		try code.encode(on: &_container, forKey: .code)
		try dateRecorded?.encode(on: &_container, forKey: .dateRecorded, auxiliaryKey: ._dateRecorded)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		if let _enum = onset {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .onsetDateTime, auxiliaryKey: ._onsetDateTime)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .onsetQuantity)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .onsetPeriod)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .onsetRange)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .onsetString, auxiliaryKey: ._onsetString)
			}
		}
		try patient.encode(on: &_container, forKey: .patient)
		try severity?.encode(on: &_container, forKey: .severity)
		try stage?.encode(on: &_container, forKey: .stage)
		try verificationStatus.encode(on: &_container, forKey: .verificationStatus, auxiliaryKey: ._verificationStatus)
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
		    && dateRecorded == _other.dateRecorded
		    && encounter == _other.encounter
		    && evidence == _other.evidence
		    && identifier == _other.identifier
		    && notes == _other.notes
		    && onset == _other.onset
		    && patient == _other.patient
		    && severity == _other.severity
		    && stage == _other.stage
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
		hasher.combine(dateRecorded)
		hasher.combine(encounter)
		hasher.combine(evidence)
		hasher.combine(identifier)
		hasher.combine(notes)
		hasher.combine(onset)
		hasher.combine(patient)
		hasher.combine(severity)
		hasher.combine(stage)
		hasher.combine(verificationStatus)
	}
}

/**
 Supporting evidence.
 
 Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
 */
open class ConditionEvidence: BackboneElement {
	
	/// Manifestation/symptom
	public var code: CodeableConcept?
	
	/// Supporting information found elsewhere
	public var detail: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
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
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
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
							summary: CodeableConcept? = nil)
	{
		self.init()
		self.assessment = assessment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.summary = summary
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assessment
		case summary
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assessment = try [Reference](from: _container, forKeyIfPresent: .assessment)
		self.summary = try CodeableConcept(from: _container, forKeyIfPresent: .summary)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assessment?.encode(on: &_container, forKey: .assessment)
		try summary?.encode(on: &_container, forKey: .summary)
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
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assessment)
		hasher.combine(summary)
	}
}
