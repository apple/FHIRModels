//
//  ClinicalImpression.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression)
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
 A clinical assessment performed when planning treatments and management strategies for a patient.
 
 A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the
 treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a
 clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called
 "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as
 Apgar score.
 */
public struct ClinicalImpression: DomainResource {
	
	public static let resourceType: ResourceType = .clinicalImpression
	
	/// All possible types for "trigger[x]"
	public enum TriggerX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Actions taken during assessment
	public var action: [Reference]?
	
	/// The clinician performing the assessment
	public var assessor: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the assessment occurred
	public var date: FHIRPrimitive<DateTime>?
	
	/// Why/how the assessment was performed
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Possible or likely findings and diagnoses
	public var finding: [ClinicalImpressionFinding]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// One or more sets of investigations (signs, symptions, etc.)
	public var investigations: [ClinicalImpressionInvestigations]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The patient being assessed
	public var patient: Reference
	
	/// Plan of action after assessment
	public var plan: [Reference]?
	
	/// Reference to last assessment
	public var previous: Reference?
	
	/// General assessment of patient state
	public var problem: [Reference]?
	
	/// Estimate of likely outcome
	public var prognosis: FHIRPrimitive<FHIRString>?
	
	/// Clinical Protocol followed
	public var `protocol`: FHIRPrimitive<FHIRURI>?
	
	/// Diagnoses/conditions resolved since previous assessment
	public var resolved: [CodeableConcept]?
	
	/// Diagnosis considered not possible
	public var ruledOut: [ClinicalImpressionRuledOut]?
	
	/// Identifies the workflow status of the assessment.
	/// Restricted to: ['in-progress', 'completed', 'entered-in-error']
	public var status: FHIRPrimitive<ClinicalImpressionStatus>
	
	/// Summary of the assessment
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Request or event that necessitated this assessment
	/// One of `trigger[x]`
	public var trigger: TriggerX?
	
	/// Designated initializer
	public init(
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
		trigger: TriggerX? = nil
	) {
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
		self.patient = patient
		self.plan = plan
		self.previous = previous
		self.problem = problem
		self.prognosis = prognosis
		self.`protocol` = `protocol`
		self.resolved = resolved
		self.ruledOut = ruledOut
		self.status = status
		self.summary = summary
		self.text = text
		self.trigger = trigger
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action
		case assessor
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case finding
		case id; case _id
		case implicitRules; case _implicitRules
		case investigations
		case language; case _language
		case meta
		case modifierExtension
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
		case text
		case triggerCodeableConcept
		case triggerReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [Reference](from: _container, forKeyIfPresent: .action)
		self.assessor = try Reference(from: _container, forKeyIfPresent: .assessor)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.finding = try [ClinicalImpressionFinding](from: _container, forKeyIfPresent: .finding)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.investigations = try [ClinicalImpressionInvestigations](from: _container, forKeyIfPresent: .investigations)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.trigger = try Self._decodeTrigger(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try assessor?.encode(on: &_container, forKey: .assessor)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try finding?.encode(on: &_container, forKey: .finding)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try investigations?.encode(on: &_container, forKey: .investigations)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		if let _enum = trigger {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .triggerCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .triggerReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTrigger(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TriggerX? {
		var _t_trigger: TriggerX? = nil
		if let triggerCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .triggerCodeableConcept) {
			_t_trigger = .codeableConcept(triggerCodeableConcept)
		}
		if let triggerReference = try Reference(from: _container, forKeyIfPresent: .triggerReference) {
			if _t_trigger != nil {
				throw DecodingError.dataCorruptedError(forKey: .triggerReference, in: _container, debugDescription: "More than one value provided for \"trigger\"")
			}
			_t_trigger = .reference(triggerReference)
		}
		return _t_trigger
	}
}

/**
 Possible or likely findings and diagnoses.
 
 Specific findings or diagnoses that was considered likely or relevant to ongoing treatment.
 */
public struct ClinicalImpressionFinding: BackboneElement {
	
	/// Which investigations support finding
	public var cause: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Specific text or code for finding
	public var item: CodeableConcept
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		cause: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableConcept,
		modifierExtension: [Extension]? = nil
	) {
		self.cause = cause
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cause; case _cause
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.cause = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cause, auxiliaryKey: ._cause)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try CodeableConcept(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try cause?.encode(on: &_container, forKey: .cause, auxiliaryKey: ._cause)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 One or more sets of investigations (signs, symptions, etc.).
 
 One or more sets of investigations (signs, symptions, etc.). The actual grouping of investigations vary greatly
 depending on the type and context of the assessment. These investigations may include data generated during the
 assessment process, or data previously generated and recorded that is pertinent to the outcomes.
 */
public struct ClinicalImpressionInvestigations: BackboneElement {
	
	/// A name/code for the set
	public var code: CodeableConcept
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Record of a specific investigation
	public var item: [Reference]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: [Reference]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try [Reference](from: _container, forKeyIfPresent: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item?.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Diagnosis considered not possible.
 */
public struct ClinicalImpressionRuledOut: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Specific text of code for diagnosis
	public var item: CodeableConcept
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Grounds for elimination
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableConcept,
		modifierExtension: [Extension]? = nil,
		reason: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
		case reason; case _reason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try CodeableConcept(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
	}
}
