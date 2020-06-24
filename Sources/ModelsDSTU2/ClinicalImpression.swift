//
//  ClinicalImpression.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression)
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
	
	/// All possible types for "trigger[x]"
	public enum TriggerX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The patient being assessed
	public var patient: Reference
	
	/// The clinician performing the assessment
	public var assessor: Reference?
	
	/// Identifies the workflow status of the assessment.
	/// Restricted to: ['in-progress', 'completed', 'entered-in-error']
	public var status: FHIRPrimitive<ClinicalImpressionStatus>
	
	/// When the assessment occurred
	public var date: FHIRPrimitive<DateTime>?
	
	/// Why/how the assessment was performed
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Reference to last assessment
	public var previous: Reference?
	
	/// General assessment of patient state
	public var problem: [Reference]?
	
	/// Request or event that necessitated this assessment
	/// One of `trigger[x]`
	public var trigger: TriggerX?
	
	/// One or more sets of investigations (signs, symptions, etc.)
	public var investigations: [ClinicalImpressionInvestigations]?
	
	/// Clinical Protocol followed
	public var `protocol`: FHIRPrimitive<FHIRURI>?
	
	/// Summary of the assessment
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// Possible or likely findings and diagnoses
	public var finding: [ClinicalImpressionFinding]?
	
	/// Diagnoses/conditions resolved since previous assessment
	public var resolved: [CodeableConcept]?
	
	/// Diagnosis considered not possible
	public var ruledOut: [ClinicalImpressionRuledOut]?
	
	/// Estimate of likely outcome
	public var prognosis: FHIRPrimitive<FHIRString>?
	
	/// Plan of action after assessment
	public var plan: [Reference]?
	
	/// Actions taken during assessment
	public var action: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, status: FHIRPrimitive<ClinicalImpressionStatus>) {
		self.patient = patient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [Reference]? = nil,
							assessor: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							finding: [ClinicalImpressionFinding]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							investigations: [ClinicalImpressionInvestigations]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							patient: Reference,
							plan: [Reference]? = nil,
							previous: Reference? = nil,
							problem: [Reference]? = nil,
							prognosis: FHIRPrimitive<FHIRString>? = nil,
							`protocol`: FHIRPrimitive<FHIRURI>? = nil,
							resolved: [CodeableConcept]? = nil,
							ruledOut: [ClinicalImpressionRuledOut]? = nil,
							status: FHIRPrimitive<ClinicalImpressionStatus>,
							summary: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil,
							trigger: TriggerX? = nil)
	{
		self.init(patient: patient, status: status)
		self.action = action
		self.assessor = assessor
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.finding = finding
		self.id = id
		self.implicitRules = implicitRules
		self.investigations = investigations
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.plan = plan
		self.previous = previous
		self.problem = problem
		self.prognosis = prognosis
		self.`protocol` = `protocol`
		self.resolved = resolved
		self.ruledOut = ruledOut
		self.summary = summary
		self.text = text
		self.trigger = trigger
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case assessor
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case finding
		case investigations
		case patient
		case plan
		case previous
		case problem
		case prognosis; case _prognosis
		case `protocol` = "protocol"; case _protocol = "_protocol"
		case resolved
		case ruledOut
		case status; case _status
		case summary; case _summary
		case triggerCodeableConcept
		case triggerReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [Reference](from: _container, forKeyIfPresent: .action)
		self.assessor = try Reference(from: _container, forKeyIfPresent: .assessor)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.finding = try [ClinicalImpressionFinding](from: _container, forKeyIfPresent: .finding)
		self.investigations = try [ClinicalImpressionInvestigations](from: _container, forKeyIfPresent: .investigations)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.plan = try [Reference](from: _container, forKeyIfPresent: .plan)
		self.previous = try Reference(from: _container, forKeyIfPresent: .previous)
		self.problem = try [Reference](from: _container, forKeyIfPresent: .problem)
		self.prognosis = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prognosis, auxiliaryKey: ._prognosis)
		self.`protocol` = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .`protocol`, auxiliaryKey: ._protocol)
		self.resolved = try [CodeableConcept](from: _container, forKeyIfPresent: .resolved)
		self.ruledOut = try [ClinicalImpressionRuledOut](from: _container, forKeyIfPresent: .ruledOut)
		self.status = try FHIRPrimitive<ClinicalImpressionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.summary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .summary, auxiliaryKey: ._summary)
		var _t_trigger: TriggerX? = nil
		if let triggerCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .triggerCodeableConcept) {
			if _t_trigger != nil {
				throw DecodingError.dataCorruptedError(forKey: .triggerCodeableConcept, in: _container, debugDescription: "More than one value provided for \"trigger\"")
			}
			_t_trigger = .codeableConcept(triggerCodeableConcept)
		}
		if let triggerReference = try Reference(from: _container, forKeyIfPresent: .triggerReference) {
			if _t_trigger != nil {
				throw DecodingError.dataCorruptedError(forKey: .triggerReference, in: _container, debugDescription: "More than one value provided for \"trigger\"")
			}
			_t_trigger = .reference(triggerReference)
		}
		self.trigger = _t_trigger
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try assessor?.encode(on: &_container, forKey: .assessor)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try finding?.encode(on: &_container, forKey: .finding)
		try investigations?.encode(on: &_container, forKey: .investigations)
		try patient.encode(on: &_container, forKey: .patient)
		try plan?.encode(on: &_container, forKey: .plan)
		try previous?.encode(on: &_container, forKey: .previous)
		try problem?.encode(on: &_container, forKey: .problem)
		try prognosis?.encode(on: &_container, forKey: .prognosis, auxiliaryKey: ._prognosis)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`, auxiliaryKey: ._protocol)
		try resolved?.encode(on: &_container, forKey: .resolved)
		try ruledOut?.encode(on: &_container, forKey: .ruledOut)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try summary?.encode(on: &_container, forKey: .summary, auxiliaryKey: ._summary)
		if let _enum = trigger {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .triggerCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .triggerReference)
			}
		}
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
		return action == _other.action
		    && assessor == _other.assessor
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && finding == _other.finding
		    && investigations == _other.investigations
		    && patient == _other.patient
		    && plan == _other.plan
		    && previous == _other.previous
		    && problem == _other.problem
		    && prognosis == _other.prognosis
		    && `protocol` == _other.`protocol`
		    && resolved == _other.resolved
		    && ruledOut == _other.ruledOut
		    && status == _other.status
		    && summary == _other.summary
		    && trigger == _other.trigger
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(assessor)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(finding)
		hasher.combine(investigations)
		hasher.combine(patient)
		hasher.combine(plan)
		hasher.combine(previous)
		hasher.combine(problem)
		hasher.combine(prognosis)
		hasher.combine(`protocol`)
		hasher.combine(resolved)
		hasher.combine(ruledOut)
		hasher.combine(status)
		hasher.combine(summary)
		hasher.combine(trigger)
	}
}

/**
 Possible or likely findings and diagnoses.
 
 Specific findings or diagnoses that was considered likely or relevant to ongoing treatment.
 */
open class ClinicalImpressionFinding: BackboneElement {
	
	/// Specific text or code for finding
	public var item: CodeableConcept
	
	/// Which investigations support finding
	public var cause: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableConcept) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							cause: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: CodeableConcept,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.cause = cause
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cause; case _cause
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cause = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cause, auxiliaryKey: ._cause)
		self.item = try CodeableConcept(from: _container, forKey: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cause?.encode(on: &_container, forKey: .cause, auxiliaryKey: ._cause)
		try item.encode(on: &_container, forKey: .item)
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
		return cause == _other.cause
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cause)
		hasher.combine(item)
	}
}

/**
 One or more sets of investigations (signs, symptions, etc.).
 
 One or more sets of investigations (signs, symptions, etc.). The actual grouping of investigations vary greatly
 depending on the type and context of the assessment. These investigations may include data generated during the
 assessment process, or data previously generated and recorded that is pertinent to the outcomes.
 */
open class ClinicalImpressionInvestigations: BackboneElement {
	
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
		guard let _other = _other as? ClinicalImpressionInvestigations else {
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

/**
 Diagnosis considered not possible.
 */
open class ClinicalImpressionRuledOut: BackboneElement {
	
	/// Specific text of code for diagnosis
	public var item: CodeableConcept
	
	/// Grounds for elimination
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableConcept) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: CodeableConcept,
							modifierExtension: [Extension]? = nil,
							reason: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case item
		case reason; case _reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.item = try CodeableConcept(from: _container, forKey: .item)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try item.encode(on: &_container, forKey: .item)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalImpressionRuledOut else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
		hasher.combine(reason)
	}
}
