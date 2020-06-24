//
//  ImmunizationRecommendation.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation)
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
 Guidance or advice relating to an immunization.
 
 A patient's point-in-time immunization and recommendation (i.e. forecasting a patient's immunization eligibility
 according to a published schedule) with optional supporting justification.
 */
open class ImmunizationRecommendation: DomainResource {
	
	override open class var resourceType: ResourceType { return .immunizationRecommendation }
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Who this profile is for
	public var patient: Reference
	
	/// Vaccine administration recommendations
	public var recommendation: [ImmunizationRecommendationRecommendation]
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, recommendation: [ImmunizationRecommendationRecommendation]) {
		self.patient = patient
		self.recommendation = recommendation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							patient: Reference,
							recommendation: [ImmunizationRecommendationRecommendation],
							text: Narrative? = nil)
	{
		self.init(patient: patient, recommendation: recommendation)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case patient
		case recommendation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.recommendation = try [ImmunizationRecommendationRecommendation](from: _container, forKey: .recommendation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patient.encode(on: &_container, forKey: .patient)
		try recommendation.encode(on: &_container, forKey: .recommendation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationRecommendation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && patient == _other.patient
		    && recommendation == _other.recommendation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(patient)
		hasher.combine(recommendation)
	}
}

/**
 Vaccine administration recommendations.
 */
open class ImmunizationRecommendationRecommendation: BackboneElement {
	
	/// Date recommendation created
	public var date: FHIRPrimitive<DateTime>
	
	/// Vaccine recommendation applies to
	public var vaccineCode: CodeableConcept
	
	/// Recommended dose number
	public var doseNumber: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Vaccine administration status
	public var forecastStatus: CodeableConcept
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Protocol used by recommendation
	public var `protocol`: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, forecastStatus: CodeableConcept, vaccineCode: CodeableConcept) {
		self.date = date
		self.forecastStatus = forecastStatus
		self.vaccineCode = vaccineCode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<DateTime>,
							dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]? = nil,
							doseNumber: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							`extension`: [Extension]? = nil,
							forecastStatus: CodeableConcept,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							`protocol`: ImmunizationRecommendationRecommendationProtocol? = nil,
							supportingImmunization: [Reference]? = nil,
							supportingPatientInformation: [Reference]? = nil,
							vaccineCode: CodeableConcept)
	{
		self.init(date: date, forecastStatus: forecastStatus, vaccineCode: vaccineCode)
		self.dateCriterion = dateCriterion
		self.doseNumber = doseNumber
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.`protocol` = `protocol`
		self.supportingImmunization = supportingImmunization
		self.supportingPatientInformation = supportingPatientInformation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case dateCriterion
		case doseNumber; case _doseNumber
		case forecastStatus
		case `protocol` = "protocol"
		case supportingImmunization
		case supportingPatientInformation
		case vaccineCode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.dateCriterion = try [ImmunizationRecommendationRecommendationDateCriterion](from: _container, forKeyIfPresent: .dateCriterion)
		self.doseNumber = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseNumber, auxiliaryKey: ._doseNumber)
		self.forecastStatus = try CodeableConcept(from: _container, forKey: .forecastStatus)
		self.`protocol` = try ImmunizationRecommendationRecommendationProtocol(from: _container, forKeyIfPresent: .`protocol`)
		self.supportingImmunization = try [Reference](from: _container, forKeyIfPresent: .supportingImmunization)
		self.supportingPatientInformation = try [Reference](from: _container, forKeyIfPresent: .supportingPatientInformation)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dateCriterion?.encode(on: &_container, forKey: .dateCriterion)
		try doseNumber?.encode(on: &_container, forKey: .doseNumber, auxiliaryKey: ._doseNumber)
		try forecastStatus.encode(on: &_container, forKey: .forecastStatus)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`)
		try supportingImmunization?.encode(on: &_container, forKey: .supportingImmunization)
		try supportingPatientInformation?.encode(on: &_container, forKey: .supportingPatientInformation)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationRecommendationRecommendation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && dateCriterion == _other.dateCriterion
		    && doseNumber == _other.doseNumber
		    && forecastStatus == _other.forecastStatus
		    && `protocol` == _other.`protocol`
		    && supportingImmunization == _other.supportingImmunization
		    && supportingPatientInformation == _other.supportingPatientInformation
		    && vaccineCode == _other.vaccineCode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(dateCriterion)
		hasher.combine(doseNumber)
		hasher.combine(forecastStatus)
		hasher.combine(`protocol`)
		hasher.combine(supportingImmunization)
		hasher.combine(supportingPatientInformation)
		hasher.combine(vaccineCode)
	}
}

/**
 Dates governing proposed immunization.
 
 Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
 */
open class ImmunizationRecommendationRecommendationDateCriterion: BackboneElement {
	
	/// Type of date
	public var code: CodeableConcept
	
	/// Recommended date
	public var value: FHIRPrimitive<DateTime>
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, value: FHIRPrimitive<DateTime>) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<DateTime>)
	{
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<DateTime>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationRecommendationRecommendationDateCriterion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Protocol used by recommendation.
 
 Contains information about the protocol under which the vaccine was administered.
 */
open class ImmunizationRecommendationRecommendationProtocol: BackboneElement {
	
	/// Dose number within sequence
	public var doseSequence: FHIRPrimitive<FHIRInteger>?
	
	/// Protocol details
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Name of vaccination series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: Reference? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							doseSequence: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							series: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.authority = authority
		self.description_fhir = description_fhir
		self.doseSequence = doseSequence
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.series = series
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case description_fhir = "description"; case _description_fhir = "_description"
		case doseSequence; case _doseSequence
		case series; case _series
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doseSequence = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .doseSequence, auxiliaryKey: ._doseSequence)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try doseSequence?.encode(on: &_container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationRecommendationRecommendationProtocol else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && description_fhir == _other.description_fhir
		    && doseSequence == _other.doseSequence
		    && series == _other.series
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(description_fhir)
		hasher.combine(doseSequence)
		hasher.combine(series)
	}
}
