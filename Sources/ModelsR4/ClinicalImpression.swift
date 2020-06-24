//
//  ClinicalImpression.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression)
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
 A clinical assessment performed when planning treatments and management strategies for a patient.
 
 A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the
 treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a
 clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called
 "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as
 Apgar score.
 */
open class ClinicalImpression: DomainResource {
	
	override open class var resourceType: ResourceType { return .clinicalImpression }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Identifies the workflow status of the assessment.
	/// Restricted to: ['in-progress', 'completed', 'entered-in-error']
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Kind of assessment performed
	public var code: CodeableConcept?
	
	/// Why/how the assessment was performed
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Patient or group assessed
	public var subject: Reference
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// Time of assessment
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// When the assessment was documented
	public var date: FHIRPrimitive<DateTime>?
	
	/// The clinician performing the assessment
	public var assessor: Reference?
	
	/// Reference to last assessment
	public var previous: Reference?
	
	/// Relevant impressions of patient state
	public var problem: [Reference]?
	
	/// One or more sets of investigations (signs, symptoms, etc.)
	public var investigation: [ClinicalImpressionInvestigation]?
	
	/// Clinical Protocol followed
	public var `protocol`: [FHIRPrimitive<FHIRURI>]?
	
	/// Summary of the assessment
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// Possible or likely findings and diagnoses
	public var finding: [ClinicalImpressionFinding]?
	
	/// Estimate of likely outcome
	public var prognosisCodeableConcept: [CodeableConcept]?
	
	/// RiskAssessment expressing likely outcome
	public var prognosisReference: [Reference]?
	
	/// Information supporting the clinical impression
	public var supportingInfo: [Reference]?
	
	/// Comments made about the ClinicalImpression
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EventStatus>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assessor: Reference? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							effective: EffectiveX? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							finding: [ClinicalImpressionFinding]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							investigation: [ClinicalImpressionInvestigation]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							previous: Reference? = nil,
							problem: [Reference]? = nil,
							prognosisCodeableConcept: [CodeableConcept]? = nil,
							prognosisReference: [Reference]? = nil,
							`protocol`: [FHIRPrimitive<FHIRURI>]? = nil,
							status: FHIRPrimitive<EventStatus>,
							statusReason: CodeableConcept? = nil,
							subject: Reference,
							summary: FHIRPrimitive<FHIRString>? = nil,
							supportingInfo: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(status: status, subject: subject)
		self.assessor = assessor
		self.code = code
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.effective = effective
		self.encounter = encounter
		self.`extension` = `extension`
		self.finding = finding
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.investigation = investigation
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.previous = previous
		self.problem = problem
		self.prognosisCodeableConcept = prognosisCodeableConcept
		self.prognosisReference = prognosisReference
		self.`protocol` = `protocol`
		self.statusReason = statusReason
		self.summary = summary
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assessor
		case code
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case encounter
		case finding
		case identifier
		case investigation
		case note
		case previous
		case problem
		case prognosisCodeableConcept
		case prognosisReference
		case `protocol` = "protocol"; case _protocol = "_protocol"
		case status; case _status
		case statusReason
		case subject
		case summary; case _summary
		case supportingInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assessor = try Reference(from: _container, forKeyIfPresent: .assessor)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveDateTime, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		self.effective = _t_effective
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.finding = try [ClinicalImpressionFinding](from: _container, forKeyIfPresent: .finding)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.investigation = try [ClinicalImpressionInvestigation](from: _container, forKeyIfPresent: .investigation)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.previous = try Reference(from: _container, forKeyIfPresent: .previous)
		self.problem = try [Reference](from: _container, forKeyIfPresent: .problem)
		self.prognosisCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .prognosisCodeableConcept)
		self.prognosisReference = try [Reference](from: _container, forKeyIfPresent: .prognosisReference)
		self.`protocol` = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .`protocol`, auxiliaryKey: ._protocol)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.summary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .summary, auxiliaryKey: ._summary)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assessor?.encode(on: &_container, forKey: .assessor)
		try code?.encode(on: &_container, forKey: .code)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = effective {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectivePeriod)
			}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try finding?.encode(on: &_container, forKey: .finding)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try investigation?.encode(on: &_container, forKey: .investigation)
		try note?.encode(on: &_container, forKey: .note)
		try previous?.encode(on: &_container, forKey: .previous)
		try problem?.encode(on: &_container, forKey: .problem)
		try prognosisCodeableConcept?.encode(on: &_container, forKey: .prognosisCodeableConcept)
		try prognosisReference?.encode(on: &_container, forKey: .prognosisReference)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`, auxiliaryKey: ._protocol)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try summary?.encode(on: &_container, forKey: .summary, auxiliaryKey: ._summary)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalImpression else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assessor == _other.assessor
		    && code == _other.code
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && effective == _other.effective
		    && encounter == _other.encounter
		    && finding == _other.finding
		    && identifier == _other.identifier
		    && investigation == _other.investigation
		    && note == _other.note
		    && previous == _other.previous
		    && problem == _other.problem
		    && prognosisCodeableConcept == _other.prognosisCodeableConcept
		    && prognosisReference == _other.prognosisReference
		    && `protocol` == _other.`protocol`
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && summary == _other.summary
		    && supportingInfo == _other.supportingInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assessor)
		hasher.combine(code)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(effective)
		hasher.combine(encounter)
		hasher.combine(finding)
		hasher.combine(identifier)
		hasher.combine(investigation)
		hasher.combine(note)
		hasher.combine(previous)
		hasher.combine(problem)
		hasher.combine(prognosisCodeableConcept)
		hasher.combine(prognosisReference)
		hasher.combine(`protocol`)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(summary)
		hasher.combine(supportingInfo)
	}
}

/**
 Possible or likely findings and diagnoses.
 
 Specific findings or diagnoses that were considered likely or relevant to ongoing treatment.
 */
open class ClinicalImpressionFinding: BackboneElement {
	
	/// What was found
	public var itemCodeableConcept: CodeableConcept?
	
	/// What was found
	public var itemReference: Reference?
	
	/// Which investigations support finding
	public var basis: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basis: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							itemCodeableConcept: CodeableConcept? = nil,
							itemReference: Reference? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.basis = basis
		self.`extension` = `extension`
		self.id = id
		self.itemCodeableConcept = itemCodeableConcept
		self.itemReference = itemReference
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basis; case _basis
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basis = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .basis, auxiliaryKey: ._basis)
		self.itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept)
		self.itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try itemCodeableConcept?.encode(on: &_container, forKey: .itemCodeableConcept)
		try itemReference?.encode(on: &_container, forKey: .itemReference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalImpressionFinding else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basis == _other.basis
		    && itemCodeableConcept == _other.itemCodeableConcept
		    && itemReference == _other.itemReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basis)
		hasher.combine(itemCodeableConcept)
		hasher.combine(itemReference)
	}
}

/**
 One or more sets of investigations (signs, symptoms, etc.).
 
 One or more sets of investigations (signs, symptoms, etc.). The actual grouping of investigations varies greatly
 depending on the type and context of the assessment. These investigations may include data generated during the
 assessment process, or data previously generated and recorded that is pertinent to the outcomes.
 */
open class ClinicalImpressionInvestigation: BackboneElement {
	
	/// A name/code for the set
	public var code: CodeableConcept
	
	/// Record of a specific investigation
	public var item: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: [Reference]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.item = try [Reference](from: _container, forKeyIfPresent: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try item?.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalImpressionInvestigation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(item)
	}
}
