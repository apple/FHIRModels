//
//  ImmunizationRecommendation.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation)
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
 Guidance or advice relating to an immunization.
 
 A patient's point-in-time immunization and recommendation (i.e. forecasting a patient's immunization eligibility
 according to a published schedule) with optional supporting justification.
 */
public struct ImmunizationRecommendation: DomainResource {
	
	public static let resourceType: ResourceType = .immunizationRecommendation
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
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
	
	/// Who this profile is for
	public var patient: Reference
	
	/// Vaccine administration recommendations
	public var recommendation: [ImmunizationRecommendationRecommendation]
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.recommendation = recommendation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case recommendation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.recommendation = try [ImmunizationRecommendationRecommendation](from: _container, forKey: .recommendation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient.encode(on: &_container, forKey: .patient)
		try recommendation.encode(on: &_container, forKey: .recommendation)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Vaccine administration recommendations.
 */
public struct ImmunizationRecommendationRecommendation: BackboneElement {
	
	/// Date recommendation created
	public var date: FHIRPrimitive<DateTime>
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Recommended dose number
	public var doseNumber: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Vaccine administration status
	public var forecastStatus: CodeableConcept
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Protocol used by recommendation
	public var `protocol`: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [Reference]?
	
	/// Vaccine recommendation applies to
	public var vaccineCode: CodeableConcept
	
	/// Designated initializer
	public init(
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
		vaccineCode: CodeableConcept
	) {
		self.date = date
		self.dateCriterion = dateCriterion
		self.doseNumber = doseNumber
		self.`extension` = `extension`
		self.forecastStatus = forecastStatus
		self.id = id
		self.modifierExtension = modifierExtension
		self.`protocol` = `protocol`
		self.supportingImmunization = supportingImmunization
		self.supportingPatientInformation = supportingPatientInformation
		self.vaccineCode = vaccineCode
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case dateCriterion
		case doseNumber; case _doseNumber
		case `extension` = "extension"
		case forecastStatus
		case id; case _id
		case modifierExtension
		case `protocol` = "protocol"
		case supportingImmunization
		case supportingPatientInformation
		case vaccineCode
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.dateCriterion = try [ImmunizationRecommendationRecommendationDateCriterion](from: _container, forKeyIfPresent: .dateCriterion)
		self.doseNumber = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseNumber, auxiliaryKey: ._doseNumber)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.forecastStatus = try CodeableConcept(from: _container, forKey: .forecastStatus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.`protocol` = try ImmunizationRecommendationRecommendationProtocol(from: _container, forKeyIfPresent: .`protocol`)
		self.supportingImmunization = try [Reference](from: _container, forKeyIfPresent: .supportingImmunization)
		self.supportingPatientInformation = try [Reference](from: _container, forKeyIfPresent: .supportingPatientInformation)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dateCriterion?.encode(on: &_container, forKey: .dateCriterion)
		try doseNumber?.encode(on: &_container, forKey: .doseNumber, auxiliaryKey: ._doseNumber)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try forecastStatus.encode(on: &_container, forKey: .forecastStatus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`)
		try supportingImmunization?.encode(on: &_container, forKey: .supportingImmunization)
		try supportingPatientInformation?.encode(on: &_container, forKey: .supportingPatientInformation)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
	}
}

/**
 Dates governing proposed immunization.
 
 Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
 */
public struct ImmunizationRecommendationRecommendationDateCriterion: BackboneElement {
	
	/// Type of date
	public var code: CodeableConcept
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Recommended date
	public var value: FHIRPrimitive<DateTime>
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<DateTime>
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<DateTime>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Protocol used by recommendation.
 
 Contains information about the protocol under which the vaccine was administered.
 */
public struct ImmunizationRecommendationRecommendationProtocol: BackboneElement {
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Protocol details
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Dose number within sequence
	public var doseSequence: FHIRPrimitive<FHIRInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of vaccination series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		authority: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		doseSequence: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		series: FHIRPrimitive<FHIRString>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case series; case _series
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doseSequence = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .doseSequence, auxiliaryKey: ._doseSequence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try doseSequence?.encode(on: &_container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
	}
}
