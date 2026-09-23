//
//  RiskAssessment.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/RiskAssessment)
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
 Potential outcomes for a subject with likelihood.
 
 An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
 */
public struct RiskAssessment: DomainResource {
	
	public static let resourceType: ResourceType = .riskAssessment
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Request fulfilled by this assessment
	public var basedOn: Reference?
	
	/// Information used in assessment
	public var basis: [Reference]?
	
	/// Type of assessment
	public var code: CodeableConcept?
	
	/// Comments on the risk assessment
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Condition assessed
	public var condition: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Where was assessment performed?
	public var context: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for the assessment
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Evaluation mechanism
	public var method: CodeableConcept?
	
	/// How to reduce risk
	public var mitigation: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// When was assessment made?
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Part of this occurrence
	public var parent: Reference?
	
	/// Who did assessment?
	public var performer: Reference?
	
	/// Outcome predicted
	public var prediction: [RiskAssessmentPrediction]?
	
	/// Why the assessment was necessary?
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// The status of the RiskAssessment, using the same statuses as an Observation.
	public var status: FHIRPrimitive<ObservationStatus>
	
	/// Who/what does assessment apply to?
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		basedOn: Reference? = nil,
		basis: [Reference]? = nil,
		code: CodeableConcept? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		condition: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		mitigation: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		occurrence: OccurrenceX? = nil,
		parent: Reference? = nil,
		performer: Reference? = nil,
		prediction: [RiskAssessmentPrediction]? = nil,
		reason: ReasonX? = nil,
		status: FHIRPrimitive<ObservationStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.basedOn = basedOn
		self.basis = basis
		self.code = code
		self.comment = comment
		self.condition = condition
		self.contained = contained
		self.context = context
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.method = method
		self.mitigation = mitigation
		self.modifierExtension = modifierExtension
		self.occurrence = occurrence
		self.parent = parent
		self.performer = performer
		self.prediction = prediction
		self.reason = reason
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case basis
		case code
		case comment; case _comment
		case condition
		case contained
		case context
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case method
		case mitigation; case _mitigation
		case modifierExtension
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case parent
		case performer
		case prediction
		case reasonCodeableConcept
		case reasonReference
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try Reference(from: _container, forKeyIfPresent: .basedOn)
		self.basis = try [Reference](from: _container, forKeyIfPresent: .basis)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.condition = try Reference(from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.mitigation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .mitigation, auxiliaryKey: ._mitigation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.prediction = try [RiskAssessmentPrediction](from: _container, forKeyIfPresent: .prediction)
		self.reason = try Self._decodeReason(from: _container)
		self.status = try FHIRPrimitive<ObservationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try basis?.encode(on: &_container, forKey: .basis)
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try method?.encode(on: &_container, forKey: .method)
		try mitigation?.encode(on: &_container, forKey: .mitigation, auxiliaryKey: ._mitigation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = occurrence {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurrencePeriod)
		}
		}
		try parent?.encode(on: &_container, forKey: .parent)
		try performer?.encode(on: &_container, forKey: .performer)
		try prediction?.encode(on: &_container, forKey: .prediction)
		if let _enum = reason {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .reasonReference)
		}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		return _t_occurrence
	}
	
	private static func _decodeReason(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReasonX? {
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		return _t_reason
	}
}

/**
 Outcome predicted.
 
 Describes the expected outcome for the subject.
 */
public struct RiskAssessmentPrediction: BackboneElement {
	
	/// All possible types for "probability[x]"
	public enum ProbabilityX: Equatable, Hashable, Sendable {
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case range(Range)
	}
	
	/// All possible types for "when[x]"
	public enum WhenX: Equatable, Hashable, Sendable {
		indirect case period(Period)
		indirect case range(Range)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Possible outcome for the subject
	public var outcome: CodeableConcept
	
	/// Likelihood of specified outcome
	/// One of `probability[x]`
	public var probability: ProbabilityX?
	
	/// Likelihood of specified outcome as a qualitative value
	public var qualitativeRisk: CodeableConcept?
	
	/// Explanation of prediction
	public var rationale: FHIRPrimitive<FHIRString>?
	
	/// Relative likelihood
	public var relativeRisk: FHIRPrimitive<FHIRDecimal>?
	
	/// Timeframe or age range
	/// One of `when[x]`
	public var when: WhenX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: CodeableConcept,
		probability: ProbabilityX? = nil,
		qualitativeRisk: CodeableConcept? = nil,
		rationale: FHIRPrimitive<FHIRString>? = nil,
		relativeRisk: FHIRPrimitive<FHIRDecimal>? = nil,
		when: WhenX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.probability = probability
		self.qualitativeRisk = qualitativeRisk
		self.rationale = rationale
		self.relativeRisk = relativeRisk
		self.when = when
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case outcome
		case probabilityDecimal; case _probabilityDecimal
		case probabilityRange
		case qualitativeRisk
		case rationale; case _rationale
		case relativeRisk; case _relativeRisk
		case whenPeriod
		case whenRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try CodeableConcept(from: _container, forKey: .outcome)
		self.probability = try Self._decodeProbability(from: _container)
		self.qualitativeRisk = try CodeableConcept(from: _container, forKeyIfPresent: .qualitativeRisk)
		self.rationale = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rationale, auxiliaryKey: ._rationale)
		self.relativeRisk = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .relativeRisk, auxiliaryKey: ._relativeRisk)
		self.when = try Self._decodeWhen(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome.encode(on: &_container, forKey: .outcome)
		if let _enum = probability {
		switch _enum {
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .probabilityDecimal, auxiliaryKey: ._probabilityDecimal)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .probabilityRange)
		}
		}
		try qualitativeRisk?.encode(on: &_container, forKey: .qualitativeRisk)
		try rationale?.encode(on: &_container, forKey: .rationale, auxiliaryKey: ._rationale)
		try relativeRisk?.encode(on: &_container, forKey: .relativeRisk, auxiliaryKey: ._relativeRisk)
		if let _enum = when {
		switch _enum {
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .whenPeriod)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .whenRange)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeProbability(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ProbabilityX? {
		var _t_probability: ProbabilityX? = nil
		if let probabilityDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .probabilityDecimal, auxiliaryKey: ._probabilityDecimal) {
			_t_probability = .decimal(probabilityDecimal)
		}
		if let probabilityRange = try Range(from: _container, forKeyIfPresent: .probabilityRange) {
			if _t_probability != nil {
				throw DecodingError.dataCorruptedError(forKey: .probabilityRange, in: _container, debugDescription: "More than one value provided for \"probability\"")
			}
			_t_probability = .range(probabilityRange)
		}
		return _t_probability
	}
	
	private static func _decodeWhen(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> WhenX? {
		var _t_when: WhenX? = nil
		if let whenPeriod = try Period(from: _container, forKeyIfPresent: .whenPeriod) {
			_t_when = .period(whenPeriod)
		}
		if let whenRange = try Range(from: _container, forKeyIfPresent: .whenRange) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenRange, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .range(whenRange)
		}
		return _t_when
	}
}
