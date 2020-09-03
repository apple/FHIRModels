//
//  RiskAssessment.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/RiskAssessment)
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
 Potential outcomes for a subject with likelihood.
 
 An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
 */
open class RiskAssessment: DomainResource {
	
	override open class var resourceType: ResourceType { return .riskAssessment }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Unique identifier for the assessment
	public var identifier: [Identifier]?
	
	/// Request fulfilled by this assessment
	public var basedOn: Reference?
	
	/// Part of this occurrence
	public var parent: Reference?
	
	/// The status of the RiskAssessment, using the same statuses as an Observation.
	public var status: FHIRPrimitive<ObservationStatus>
	
	/// Evaluation mechanism
	public var method: CodeableConcept?
	
	/// Type of assessment
	public var code: CodeableConcept?
	
	/// Who/what does assessment apply to?
	public var subject: Reference
	
	/// Where was assessment performed?
	public var encounter: Reference?
	
	/// When was assessment made?
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Condition assessed
	public var condition: Reference?
	
	/// Who did assessment?
	public var performer: Reference?
	
	/// Why the assessment was necessary?
	public var reason: [CodeableReference]?
	
	/// Information used in assessment
	public var basis: [Reference]?
	
	/// Outcome predicted
	public var prediction: [RiskAssessmentPrediction]?
	
	/// How to reduce risk
	public var mitigation: FHIRPrimitive<FHIRString>?
	
	/// Comments on the risk assessment
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ObservationStatus>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: Reference? = nil,
							basis: [Reference]? = nil,
							code: CodeableConcept? = nil,
							condition: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							method: CodeableConcept? = nil,
							mitigation: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							parent: Reference? = nil,
							performer: Reference? = nil,
							prediction: [RiskAssessmentPrediction]? = nil,
							reason: [CodeableReference]? = nil,
							status: FHIRPrimitive<ObservationStatus>,
							subject: Reference,
							text: Narrative? = nil)
	{
		self.init(status: status, subject: subject)
		self.basedOn = basedOn
		self.basis = basis
		self.code = code
		self.condition = condition
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.method = method
		self.mitigation = mitigation
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.parent = parent
		self.performer = performer
		self.prediction = prediction
		self.reason = reason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case basis
		case code
		case condition
		case encounter
		case identifier
		case method
		case mitigation; case _mitigation
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case parent
		case performer
		case prediction
		case reason
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try Reference(from: _container, forKeyIfPresent: .basedOn)
		self.basis = try [Reference](from: _container, forKeyIfPresent: .basis)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.condition = try Reference(from: _container, forKeyIfPresent: .condition)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.mitigation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .mitigation, auxiliaryKey: ._mitigation)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		self.occurrence = _t_occurrence
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.prediction = try [RiskAssessmentPrediction](from: _container, forKeyIfPresent: .prediction)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.status = try FHIRPrimitive<ObservationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try basis?.encode(on: &_container, forKey: .basis)
		try code?.encode(on: &_container, forKey: .code)
		try condition?.encode(on: &_container, forKey: .condition)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try method?.encode(on: &_container, forKey: .method)
		try mitigation?.encode(on: &_container, forKey: .mitigation, auxiliaryKey: ._mitigation)
		try note?.encode(on: &_container, forKey: .note)
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
		try reason?.encode(on: &_container, forKey: .reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RiskAssessment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && basis == _other.basis
		    && code == _other.code
		    && condition == _other.condition
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && method == _other.method
		    && mitigation == _other.mitigation
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && parent == _other.parent
		    && performer == _other.performer
		    && prediction == _other.prediction
		    && reason == _other.reason
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(basis)
		hasher.combine(code)
		hasher.combine(condition)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(method)
		hasher.combine(mitigation)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(parent)
		hasher.combine(performer)
		hasher.combine(prediction)
		hasher.combine(reason)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Outcome predicted.
 
 Describes the expected outcome for the subject.
 */
open class RiskAssessmentPrediction: BackboneElement {
	
	/// All possible types for "probability[x]"
	public enum ProbabilityX: Hashable {
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case range(Range)
	}
	
	/// All possible types for "when[x]"
	public enum WhenX: Hashable {
		case period(Period)
		case range(Range)
	}
	
	/// Possible outcome for the subject
	public var outcome: CodeableConcept?
	
	/// Likelihood of specified outcome
	/// One of `probability[x]`
	public var probability: ProbabilityX?
	
	/// Likelihood of specified outcome as a qualitative value
	public var qualitativeRisk: CodeableConcept?
	
	/// Relative likelihood
	public var relativeRisk: FHIRPrimitive<FHIRDecimal>?
	
	/// Timeframe or age range
	/// One of `when[x]`
	public var when: WhenX?
	
	/// Explanation of prediction
	public var rationale: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: CodeableConcept? = nil,
							probability: ProbabilityX? = nil,
							qualitativeRisk: CodeableConcept? = nil,
							rationale: FHIRPrimitive<FHIRString>? = nil,
							relativeRisk: FHIRPrimitive<FHIRDecimal>? = nil,
							when: WhenX? = nil)
	{
		self.init()
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		var _t_probability: ProbabilityX? = nil
		if let probabilityDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .probabilityDecimal, auxiliaryKey: ._probabilityDecimal) {
			if _t_probability != nil {
				throw DecodingError.dataCorruptedError(forKey: .probabilityDecimal, in: _container, debugDescription: "More than one value provided for \"probability\"")
			}
			_t_probability = .decimal(probabilityDecimal)
		}
		if let probabilityRange = try Range(from: _container, forKeyIfPresent: .probabilityRange) {
			if _t_probability != nil {
				throw DecodingError.dataCorruptedError(forKey: .probabilityRange, in: _container, debugDescription: "More than one value provided for \"probability\"")
			}
			_t_probability = .range(probabilityRange)
		}
		self.probability = _t_probability
		self.qualitativeRisk = try CodeableConcept(from: _container, forKeyIfPresent: .qualitativeRisk)
		self.rationale = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .rationale, auxiliaryKey: ._rationale)
		self.relativeRisk = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .relativeRisk, auxiliaryKey: ._relativeRisk)
		var _t_when: WhenX? = nil
		if let whenPeriod = try Period(from: _container, forKeyIfPresent: .whenPeriod) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenPeriod, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .period(whenPeriod)
		}
		if let whenRange = try Range(from: _container, forKeyIfPresent: .whenRange) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenRange, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .range(whenRange)
		}
		self.when = _t_when
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try outcome?.encode(on: &_container, forKey: .outcome)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RiskAssessmentPrediction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return outcome == _other.outcome
		    && probability == _other.probability
		    && qualitativeRisk == _other.qualitativeRisk
		    && rationale == _other.rationale
		    && relativeRisk == _other.relativeRisk
		    && when == _other.when
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(outcome)
		hasher.combine(probability)
		hasher.combine(qualitativeRisk)
		hasher.combine(rationale)
		hasher.combine(relativeRisk)
		hasher.combine(when)
	}
}
