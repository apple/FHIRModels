//
//  ImmunizationEvaluation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation)
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
 Immunization evaluation information.
 
 Describes a comparison of an immunization event against published recommendations to determine if the administration is
 "valid" in relation to those  recommendations.
 */
open class ImmunizationEvaluation: DomainResource {
	
	override open class var resourceType: ResourceType { return .immunizationEvaluation }
	
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
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Indicates the current status of the evaluation of the vaccination administration event.
	/// Restricted to: ['completed', 'entered-in-error']
	public var status: FHIRPrimitive<MedicationAdministrationStatusCodes>
	
	/// Who this evaluation is for
	public var patient: Reference
	
	/// Date evaluation was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who is responsible for publishing the recommendations
	public var authority: Reference?
	
	/// Evaluation target disease
	public var targetDisease: CodeableConcept
	
	/// Immunization being evaluated
	public var immunizationEvent: Reference
	
	/// Status of the dose relative to published recommendations
	public var doseStatus: CodeableConcept
	
	/// Reason for the dose status
	public var doseStatusReason: [CodeableConcept]?
	
	/// Evaluation notes
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Dose number within series
	/// One of `doseNumber[x]`
	public var doseNumber: DoseNumberX?
	
	/// Recommended number of doses for immunity
	/// One of `seriesDoses[x]`
	public var seriesDoses: SeriesDosesX?
	
	/// Designated initializer taking all required properties
	public init(doseStatus: CodeableConcept, immunizationEvent: Reference, patient: Reference, status: FHIRPrimitive<MedicationAdministrationStatusCodes>, targetDisease: CodeableConcept) {
		self.doseStatus = doseStatus
		self.immunizationEvent = immunizationEvent
		self.patient = patient
		self.status = status
		self.targetDisease = targetDisease
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							doseNumber: DoseNumberX? = nil,
							doseStatus: CodeableConcept,
							doseStatusReason: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							immunizationEvent: Reference,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							patient: Reference,
							series: FHIRPrimitive<FHIRString>? = nil,
							seriesDoses: SeriesDosesX? = nil,
							status: FHIRPrimitive<MedicationAdministrationStatusCodes>,
							targetDisease: CodeableConcept,
							text: Narrative? = nil)
	{
		self.init(doseStatus: doseStatus, immunizationEvent: immunizationEvent, patient: patient, status: status, targetDisease: targetDisease)
		self.authority = authority
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.doseNumber = doseNumber
		self.doseStatusReason = doseStatusReason
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.series = series
		self.seriesDoses = seriesDoses
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case doseNumberPositiveInt; case _doseNumberPositiveInt
		case doseNumberString; case _doseNumberString
		case doseStatus
		case doseStatusReason
		case identifier
		case immunizationEvent
		case patient
		case series; case _series
		case seriesDosesPositiveInt; case _seriesDosesPositiveInt
		case seriesDosesString; case _seriesDosesString
		case status; case _status
		case targetDisease
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
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
		self.doseStatus = try CodeableConcept(from: _container, forKey: .doseStatus)
		self.doseStatusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .doseStatusReason)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.immunizationEvent = try Reference(from: _container, forKey: .immunizationEvent)
		self.patient = try Reference(from: _container, forKey: .patient)
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
		self.status = try FHIRPrimitive<MedicationAdministrationStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.targetDisease = try CodeableConcept(from: _container, forKey: .targetDisease)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = doseNumber {
			switch _enum {
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .doseNumberString, auxiliaryKey: ._doseNumberString)
			}
		}
		try doseStatus.encode(on: &_container, forKey: .doseStatus)
		try doseStatusReason?.encode(on: &_container, forKey: .doseStatusReason)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try immunizationEvent.encode(on: &_container, forKey: .immunizationEvent)
		try patient.encode(on: &_container, forKey: .patient)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		if let _enum = seriesDoses {
			switch _enum {
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .seriesDosesString, auxiliaryKey: ._seriesDosesString)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try targetDisease.encode(on: &_container, forKey: .targetDisease)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationEvaluation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && doseNumber == _other.doseNumber
		    && doseStatus == _other.doseStatus
		    && doseStatusReason == _other.doseStatusReason
		    && identifier == _other.identifier
		    && immunizationEvent == _other.immunizationEvent
		    && patient == _other.patient
		    && series == _other.series
		    && seriesDoses == _other.seriesDoses
		    && status == _other.status
		    && targetDisease == _other.targetDisease
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(doseNumber)
		hasher.combine(doseStatus)
		hasher.combine(doseStatusReason)
		hasher.combine(identifier)
		hasher.combine(immunizationEvent)
		hasher.combine(patient)
		hasher.combine(series)
		hasher.combine(seriesDoses)
		hasher.combine(status)
		hasher.combine(targetDisease)
	}
}
