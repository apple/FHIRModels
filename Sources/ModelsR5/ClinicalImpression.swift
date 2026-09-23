//
//  ClinicalImpression.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression)
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
	
	/// Change in the status/pattern of a subject's condition since previously assessed, such as worsening, improving,
	/// or no change
	public var changePattern: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the assessment was documented
	public var date: FHIRPrimitive<DateTime>?
	
	/// Why/how the assessment was performed
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Time of assessment
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// The Encounter during which this ClinicalImpression was created
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Possible or likely findings and diagnoses
	public var finding: [ClinicalImpressionFinding]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the ClinicalImpression
	public var note: [Annotation]?
	
	/// The clinician performing the assessment
	public var performer: Reference?
	
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
	
	/// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Patient or group assessed
	public var subject: Reference
	
	/// Summary of the assessment
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// Information supporting the clinical impression
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		changePattern: CodeableConcept? = nil,
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
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		performer: Reference? = nil,
		previous: Reference? = nil,
		problem: [Reference]? = nil,
		prognosisCodeableConcept: [CodeableConcept]? = nil,
		prognosisReference: [Reference]? = nil,
		`protocol`: [FHIRPrimitive<FHIRURI>]? = nil,
		status: FHIRPrimitive<FHIRString>,
		statusReason: CodeableConcept? = nil,
		subject: Reference,
		summary: FHIRPrimitive<FHIRString>? = nil,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.changePattern = changePattern
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
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.performer = performer
		self.previous = previous
		self.problem = problem
		self.prognosisCodeableConcept = prognosisCodeableConcept
		self.prognosisReference = prognosisReference
		self.`protocol` = `protocol`
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.summary = summary
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case changePattern
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case encounter
		case `extension` = "extension"
		case finding
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case performer
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.changePattern = try CodeableConcept(from: _container, forKeyIfPresent: .changePattern)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effective = try Self._decodeEffective(from: _container)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.finding = try [ClinicalImpressionFinding](from: _container, forKeyIfPresent: .finding)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.previous = try Reference(from: _container, forKeyIfPresent: .previous)
		self.problem = try [Reference](from: _container, forKeyIfPresent: .problem)
		self.prognosisCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .prognosisCodeableConcept)
		self.prognosisReference = try [Reference](from: _container, forKeyIfPresent: .prognosisReference)
		self.`protocol` = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .`protocol`, auxiliaryKey: ._protocol)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.summary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .summary, auxiliaryKey: ._summary)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try changePattern?.encode(on: &_container, forKey: .changePattern)
		try contained?.encode(on: &_container, forKey: .contained)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try finding?.encode(on: &_container, forKey: .finding)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try performer?.encode(on: &_container, forKey: .performer)
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
 
 Specific findings or diagnoses that were considered likely or relevant to ongoing treatment.
 */
public struct ClinicalImpressionFinding: BackboneElement {
	
	/// Which investigations support finding
	public var basis: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What was found
	public var item: CodeableReference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		basis: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference? = nil,
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
		case item
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
		self.item = try CodeableReference(from: _container, forKeyIfPresent: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try basis?.encode(on: &_container, forKey: .basis, auxiliaryKey: ._basis)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item?.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
