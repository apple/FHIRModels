//
//  ImmunizationEvaluation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation)
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
 Immunization evaluation information.
 
 Describes a comparison of an immunization event against published recommendations to determine if the administration is
 "valid" in relation to those  recommendations.
 */
public struct ImmunizationEvaluation: DomainResource {
	
	public static let resourceType: ResourceType = .immunizationEvaluation
	
	/// All possible types for "doseNumber[x]"
	public enum DoseNumberX: Equatable, Hashable, Sendable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "seriesDoses[x]"
	public enum SeriesDosesX: Equatable, Hashable, Sendable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Who is responsible for publishing the recommendations
	public var authority: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date evaluation was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Evaluation notes
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Dose number within series
	/// One of `doseNumber[x]`
	public var doseNumber: DoseNumberX?
	
	/// Status of the dose relative to published recommendations
	public var doseStatus: CodeableConcept
	
	/// Reason for the dose status
	public var doseStatusReason: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Immunization being evaluated
	public var immunizationEvent: Reference
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who this evaluation is for
	public var patient: Reference
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Recommended number of doses for immunity
	/// One of `seriesDoses[x]`
	public var seriesDoses: SeriesDosesX?
	
	/// Indicates the current status of the evaluation of the vaccination administration event.
	/// Restricted to: ['completed', 'entered-in-error']
	public var status: FHIRPrimitive<MedicationAdministrationStatusCodes>
	
	/// Evaluation target disease
	public var targetDisease: CodeableConcept
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
		self.authority = authority
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.doseNumber = doseNumber
		self.doseStatus = doseStatus
		self.doseStatusReason = doseStatusReason
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.immunizationEvent = immunizationEvent
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.series = series
		self.seriesDoses = seriesDoses
		self.status = status
		self.targetDisease = targetDisease
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authority
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case doseNumberPositiveInt; case _doseNumberPositiveInt
		case doseNumberString; case _doseNumberString
		case doseStatus
		case doseStatusReason
		case `extension` = "extension"
		case id; case _id
		case identifier
		case immunizationEvent
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case series; case _series
		case seriesDosesPositiveInt; case _seriesDosesPositiveInt
		case seriesDosesString; case _seriesDosesString
		case status; case _status
		case targetDisease
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doseNumber = try Self._decodeDoseNumber(from: _container)
		self.doseStatus = try CodeableConcept(from: _container, forKey: .doseStatus)
		self.doseStatusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .doseStatusReason)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.immunizationEvent = try Reference(from: _container, forKey: .immunizationEvent)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		self.seriesDoses = try Self._decodeSeriesDoses(from: _container)
		self.status = try FHIRPrimitive<MedicationAdministrationStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.targetDisease = try CodeableConcept(from: _container, forKey: .targetDisease)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority)
		try contained?.encode(on: &_container, forKey: .contained)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try immunizationEvent.encode(on: &_container, forKey: .immunizationEvent)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDoseNumber(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DoseNumberX? {
		var _t_doseNumber: DoseNumberX? = nil
		if let doseNumberPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt) {
			_t_doseNumber = .positiveInt(doseNumberPositiveInt)
		}
		if let doseNumberString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .doseNumberString, auxiliaryKey: ._doseNumberString) {
			if _t_doseNumber != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseNumberString, in: _container, debugDescription: "More than one value provided for \"doseNumber\"")
			}
			_t_doseNumber = .string(doseNumberString)
		}
		return _t_doseNumber
	}
	
	private static func _decodeSeriesDoses(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SeriesDosesX? {
		var _t_seriesDoses: SeriesDosesX? = nil
		if let seriesDosesPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt) {
			_t_seriesDoses = .positiveInt(seriesDosesPositiveInt)
		}
		if let seriesDosesString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesDosesString, auxiliaryKey: ._seriesDosesString) {
			if _t_seriesDoses != nil {
				throw DecodingError.dataCorruptedError(forKey: .seriesDosesString, in: _container, debugDescription: "More than one value provided for \"seriesDoses\"")
			}
			_t_seriesDoses = .string(seriesDosesString)
		}
		return _t_seriesDoses
	}
}
