//
//  ClinicalImpression.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression)
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
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Action taken as part of assessment procedure
	public var action: [Reference]?
	
	/// The clinician performing the assessment
	public var assessor: Reference?
	
	/// Kind of assessment performed
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter or Episode created from
	public var context: Reference?
	
	/// When the assessment was documented
	public var date: FHIRPrimitive<DateTime>?
	
	/// Why/how the assessment was performed
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Time of assessment
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Possible or likely findings and diagnoses
	public var finding: [ClinicalImpressionFinding]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// One or more sets of investigations (signs, symptions, etc.)
	public var investigation: [ClinicalImpressionInvestigation]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the ClinicalImpression
	public var note: [Annotation]?
	
	/// Reference to last assessment
	public var previous: Reference?
	
	/// Relevant impressions of patient state
	public var problem: [Reference]?
	
	/// Estimate of likely outcome
	public var prognosisCodeableConcept: [CodeableConcept]?
	
	/// RiskAssessment expressing likely outcome
	public var prognosisReference: [Reference]?
	
	/// Clinical Protocol followed
	public var `protocol`: [FHIRPrimitive<FHIRURI>]?
	
	/// Identifies the workflow status of the assessment.
	public var status: FHIRPrimitive<ClinicalImpressionStatus>
	
	/// Patient or group assessed
	public var subject: Reference
	
	/// Summary of the assessment
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		action: [Reference]? = nil,
		assessor: Reference? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		effective: EffectiveX? = nil,
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
		status: FHIRPrimitive<ClinicalImpressionStatus>,
		subject: Reference,
		summary: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil
	) {
		self.action = action
		self.assessor = assessor
		self.code = code
		self.contained = contained
		self.context = context
		self.date = date
		self.description_fhir = description_fhir
		self.effective = effective
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
		self.status = status
		self.subject = subject
		self.summary = summary
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action
		case assessor
		case code
		case contained
		case context
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case `extension` = "extension"
		case finding
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case investigation
		case language; case _language
		case meta
		case modifierExtension
		case note
		case previous
		case problem
		case prognosisCodeableConcept
		case prognosisReference
		case `protocol` = "protocol"; case _protocol = "_protocol"
		case status; case _status
		case subject
		case summary; case _summary
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [Reference](from: _container, forKeyIfPresent: .action)
		self.assessor = try Reference(from: _container, forKeyIfPresent: .assessor)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effective = try Self._decodeEffective(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.finding = try [ClinicalImpressionFinding](from: _container, forKeyIfPresent: .finding)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.investigation = try [ClinicalImpressionInvestigation](from: _container, forKeyIfPresent: .investigation)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.previous = try Reference(from: _container, forKeyIfPresent: .previous)
		self.problem = try [Reference](from: _container, forKeyIfPresent: .problem)
		self.prognosisCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .prognosisCodeableConcept)
		self.prognosisReference = try [Reference](from: _container, forKeyIfPresent: .prognosisReference)
		self.`protocol` = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .`protocol`, auxiliaryKey: ._protocol)
		self.status = try FHIRPrimitive<ClinicalImpressionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.summary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .summary, auxiliaryKey: ._summary)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try assessor?.encode(on: &_container, forKey: .assessor)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try finding?.encode(on: &_container, forKey: .finding)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try investigation?.encode(on: &_container, forKey: .investigation)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try previous?.encode(on: &_container, forKey: .previous)
		try problem?.encode(on: &_container, forKey: .problem)
		try prognosisCodeableConcept?.encode(on: &_container, forKey: .prognosisCodeableConcept)
		try prognosisReference?.encode(on: &_container, forKey: .prognosisReference)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`, auxiliaryKey: ._protocol)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try summary?.encode(on: &_container, forKey: .summary, auxiliaryKey: ._summary)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EffectiveX? {
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		return _t_effective
	}
}

/**
 Possible or likely findings and diagnoses.
 
 Specific findings or diagnoses that was considered likely or relevant to ongoing treatment.
 */
public struct ClinicalImpressionFinding: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Which investigations support finding
	public var basis: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What was found
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		basis: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.basis = basis
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basis; case _basis
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basis = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .basis, auxiliaryKey: ._basis)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 One or more sets of investigations (signs, symptions, etc.).
 
 One or more sets of investigations (signs, symptions, etc.). The actual grouping of investigations vary greatly
 depending on the type and context of the assessment. These investigations may include data generated during the
 assessment process, or data previously generated and recorded that is pertinent to the outcomes.
 */
public struct ClinicalImpressionInvestigation: BackboneElement {
	
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
