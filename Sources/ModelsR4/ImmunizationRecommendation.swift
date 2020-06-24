//
//  ImmunizationRecommendation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation)
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
 
 A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional
 supporting justification.
 */
open class ImmunizationRecommendation: DomainResource {
	
	override open class var resourceType: ResourceType { return .immunizationRecommendation }
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Who this profile is for
	public var patient: Reference
	
	/// Date recommendation(s) created
	public var date: FHIRPrimitive<DateTime>
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Vaccine administration recommendations
	public var recommendation: [ImmunizationRecommendationRecommendation]
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, patient: Reference, recommendation: [ImmunizationRecommendationRecommendation]) {
		self.date = date
		self.patient = patient
		self.recommendation = recommendation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>,
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
		self.init(date: date, patient: patient, recommendation: recommendation)
		self.authority = authority
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
		case authority
		case date; case _date
		case identifier
		case patient
		case recommendation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.recommendation = try [ImmunizationRecommendationRecommendation](from: _container, forKey: .recommendation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
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
		return authority == _other.authority
		    && date == _other.date
		    && identifier == _other.identifier
		    && patient == _other.patient
		    && recommendation == _other.recommendation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(patient)
		hasher.combine(recommendation)
	}
}

/**
 Vaccine administration recommendations.
 */
open class ImmunizationRecommendationRecommendation: BackboneElement {
	
	/// All possible types for "doseNumber[x]"
	public enum DoseNumberX: Hashable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "seriesDoses[x]"
	public enum SeriesDosesX: Hashable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Vaccine  or vaccine group recommendation applies to
	public var vaccineCode: [CodeableConcept]?
	
	/// Disease to be immunized against
	public var targetDisease: CodeableConcept?
	
	/// Vaccine which is contraindicated to fulfill the recommendation
	public var contraindicatedVaccineCode: [CodeableConcept]?
	
	/// Vaccine recommendation status
	public var forecastStatus: CodeableConcept
	
	/// Vaccine administration status reason
	public var forecastReason: [CodeableConcept]?
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Protocol details
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Name of vaccination series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Recommended dose number within series
	/// One of `doseNumber[x]`
	public var doseNumber: DoseNumberX?
	
	/// Recommended number of doses for immunity
	/// One of `seriesDoses[x]`
	public var seriesDoses: SeriesDosesX?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(forecastStatus: CodeableConcept) {
		self.forecastStatus = forecastStatus
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contraindicatedVaccineCode: [CodeableConcept]? = nil,
							dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							doseNumber: DoseNumberX? = nil,
							`extension`: [Extension]? = nil,
							forecastReason: [CodeableConcept]? = nil,
							forecastStatus: CodeableConcept,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							series: FHIRPrimitive<FHIRString>? = nil,
							seriesDoses: SeriesDosesX? = nil,
							supportingImmunization: [Reference]? = nil,
							supportingPatientInformation: [Reference]? = nil,
							targetDisease: CodeableConcept? = nil,
							vaccineCode: [CodeableConcept]? = nil)
	{
		self.init(forecastStatus: forecastStatus)
		self.contraindicatedVaccineCode = contraindicatedVaccineCode
		self.dateCriterion = dateCriterion
		self.description_fhir = description_fhir
		self.doseNumber = doseNumber
		self.`extension` = `extension`
		self.forecastReason = forecastReason
		self.id = id
		self.modifierExtension = modifierExtension
		self.series = series
		self.seriesDoses = seriesDoses
		self.supportingImmunization = supportingImmunization
		self.supportingPatientInformation = supportingPatientInformation
		self.targetDisease = targetDisease
		self.vaccineCode = vaccineCode
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contraindicatedVaccineCode
		case dateCriterion
		case description_fhir = "description"; case _description_fhir = "_description"
		case doseNumberPositiveInt; case _doseNumberPositiveInt
		case doseNumberString; case _doseNumberString
		case forecastReason
		case forecastStatus
		case series; case _series
		case seriesDosesPositiveInt; case _seriesDosesPositiveInt
		case seriesDosesString; case _seriesDosesString
		case supportingImmunization
		case supportingPatientInformation
		case targetDisease
		case vaccineCode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contraindicatedVaccineCode = try [CodeableConcept](from: _container, forKeyIfPresent: .contraindicatedVaccineCode)
		self.dateCriterion = try [ImmunizationRecommendationRecommendationDateCriterion](from: _container, forKeyIfPresent: .dateCriterion)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_doseNumber: DoseNumberX? = nil
		if let doseNumberPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt) {
			if _t_doseNumber != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseNumberPositiveInt, in: _container, debugDescription: "More than one value provided for \"doseNumber\"")
			}
			_t_doseNumber = .positiveInt(doseNumberPositiveInt)
		}
		if let doseNumberString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .doseNumberString, auxiliaryKey: ._doseNumberString) {
			if _t_doseNumber != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseNumberString, in: _container, debugDescription: "More than one value provided for \"doseNumber\"")
			}
			_t_doseNumber = .string(doseNumberString)
		}
		self.doseNumber = _t_doseNumber
		self.forecastReason = try [CodeableConcept](from: _container, forKeyIfPresent: .forecastReason)
		self.forecastStatus = try CodeableConcept(from: _container, forKey: .forecastStatus)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		var _t_seriesDoses: SeriesDosesX? = nil
		if let seriesDosesPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt) {
			if _t_seriesDoses != nil {
				throw DecodingError.dataCorruptedError(forKey: .seriesDosesPositiveInt, in: _container, debugDescription: "More than one value provided for \"seriesDoses\"")
			}
			_t_seriesDoses = .positiveInt(seriesDosesPositiveInt)
		}
		if let seriesDosesString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesDosesString, auxiliaryKey: ._seriesDosesString) {
			if _t_seriesDoses != nil {
				throw DecodingError.dataCorruptedError(forKey: .seriesDosesString, in: _container, debugDescription: "More than one value provided for \"seriesDoses\"")
			}
			_t_seriesDoses = .string(seriesDosesString)
		}
		self.seriesDoses = _t_seriesDoses
		self.supportingImmunization = try [Reference](from: _container, forKeyIfPresent: .supportingImmunization)
		self.supportingPatientInformation = try [Reference](from: _container, forKeyIfPresent: .supportingPatientInformation)
		self.targetDisease = try CodeableConcept(from: _container, forKeyIfPresent: .targetDisease)
		self.vaccineCode = try [CodeableConcept](from: _container, forKeyIfPresent: .vaccineCode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contraindicatedVaccineCode?.encode(on: &_container, forKey: .contraindicatedVaccineCode)
		try dateCriterion?.encode(on: &_container, forKey: .dateCriterion)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = doseNumber {
			switch _enum {
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .doseNumberString, auxiliaryKey: ._doseNumberString)
			}
		}
		try forecastReason?.encode(on: &_container, forKey: .forecastReason)
		try forecastStatus.encode(on: &_container, forKey: .forecastStatus)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		if let _enum = seriesDoses {
			switch _enum {
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .seriesDosesString, auxiliaryKey: ._seriesDosesString)
			}
		}
		try supportingImmunization?.encode(on: &_container, forKey: .supportingImmunization)
		try supportingPatientInformation?.encode(on: &_container, forKey: .supportingPatientInformation)
		try targetDisease?.encode(on: &_container, forKey: .targetDisease)
		try vaccineCode?.encode(on: &_container, forKey: .vaccineCode)
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
		return contraindicatedVaccineCode == _other.contraindicatedVaccineCode
		    && dateCriterion == _other.dateCriterion
		    && description_fhir == _other.description_fhir
		    && doseNumber == _other.doseNumber
		    && forecastReason == _other.forecastReason
		    && forecastStatus == _other.forecastStatus
		    && series == _other.series
		    && seriesDoses == _other.seriesDoses
		    && supportingImmunization == _other.supportingImmunization
		    && supportingPatientInformation == _other.supportingPatientInformation
		    && targetDisease == _other.targetDisease
		    && vaccineCode == _other.vaccineCode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contraindicatedVaccineCode)
		hasher.combine(dateCriterion)
		hasher.combine(description_fhir)
		hasher.combine(doseNumber)
		hasher.combine(forecastReason)
		hasher.combine(forecastStatus)
		hasher.combine(series)
		hasher.combine(seriesDoses)
		hasher.combine(supportingImmunization)
		hasher.combine(supportingPatientInformation)
		hasher.combine(targetDisease)
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
