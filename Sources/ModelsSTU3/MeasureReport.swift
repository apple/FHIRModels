//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/MeasureReport)
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
 Results of a measure evaluation.
 
 The MeasureReport resource contains the results of evaluating a measure.
 */
public struct MeasureReport: DomainResource {
	
	public static let resourceType: ResourceType = .measureReport
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the report was generated
	public var date: FHIRPrimitive<DateTime>?
	
	/// What data was evaluated to produce the measure score
	public var evaluatedResources: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Measure results for each group
	public var group: [MeasureReportGroup]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the Report
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What measure was evaluated
	public var measure: Reference
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What patient the report is for
	public var patient: Reference?
	
	/// What period the report covers
	public var period: Period
	
	/// Who is reporting the data
	public var reportingOrganization: Reference?
	
	/// The report status. No data will be available until the report status is complete.
	public var status: FHIRPrimitive<MeasureReportStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of measure report. This may be an individual report, which provides a single patient's score for the
	/// measure; a patient listing, which returns the list of patients that meet the various criteria in the measure; or
	/// a summary report, which returns a population count for each of the criteria in the measure.
	public var type: FHIRPrimitive<MeasureReportType>
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		evaluatedResources: Reference? = nil,
		`extension`: [Extension]? = nil,
		group: [MeasureReportGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		measure: Reference,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference? = nil,
		period: Period,
		reportingOrganization: Reference? = nil,
		status: FHIRPrimitive<MeasureReportStatus>,
		text: Narrative? = nil,
		type: FHIRPrimitive<MeasureReportType>
	) {
		self.contained = contained
		self.date = date
		self.evaluatedResources = evaluatedResources
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.measure = measure
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.period = period
		self.reportingOrganization = reportingOrganization
		self.status = status
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case date; case _date
		case evaluatedResources
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case measure
		case meta
		case modifierExtension
		case patient
		case period
		case reportingOrganization
		case status; case _status
		case text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.evaluatedResources = try Reference(from: _container, forKeyIfPresent: .evaluatedResources)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.measure = try Reference(from: _container, forKey: .measure)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.period = try Period(from: _container, forKey: .period)
		self.reportingOrganization = try Reference(from: _container, forKeyIfPresent: .reportingOrganization)
		self.status = try FHIRPrimitive<MeasureReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<MeasureReportType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try evaluatedResources?.encode(on: &_container, forKey: .evaluatedResources)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try measure.encode(on: &_container, forKey: .measure)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient?.encode(on: &_container, forKey: .patient)
		try period.encode(on: &_container, forKey: .period)
		try reportingOrganization?.encode(on: &_container, forKey: .reportingOrganization)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure.
 */
public struct MeasureReportGroup: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What group of the measure
	public var identifier: Identifier
	
	/// What score this group achieved
	public var measureScore: FHIRPrimitive<FHIRDecimal>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier,
		measureScore: FHIRPrimitive<FHIRDecimal>? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupPopulation]? = nil,
		stratifier: [MeasureReportGroupStratifier]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.stratifier = stratifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case measureScore; case _measureScore
		case modifierExtension
		case population
		case stratifier
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.measureScore = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .measureScore, auxiliaryKey: ._measureScore)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier)
		try measureScore?.encode(on: &_container, forKey: .measureScore, auxiliaryKey: ._measureScore)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
	}
}

/**
 The populations in the group.
 
 The populations that make up the population group, one for each type of population appropriate for the measure.
 */
public struct MeasureReportGroupPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-score
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Population identifier as defined in the measure
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// For patient-list reports, the patients in this population
	public var patients: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		patients: Reference? = nil
	) {
		self.code = code
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.patients = patients
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case patients
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patients = try Reference(from: _container, forKeyIfPresent: .patients)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patients?.encode(on: &_container, forKey: .patients)
	}
}

/**
 Stratification results.
 
 When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
 measure.
 */
public struct MeasureReportGroupStratifier: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What stratifier of the group
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Stratum results, one for each unique value in the stratifier
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		stratum: [MeasureReportGroupStratifierStratum]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.stratum = stratum
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case stratum
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.stratum = try [MeasureReportGroupStratifierStratum](from: _container, forKeyIfPresent: .stratum)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try stratum?.encode(on: &_container, forKey: .stratum)
	}
}

/**
 Stratum results, one for each unique value in the stratifier.
 
 This element contains the results for a single stratum within the stratifier. For example, when stratifying on
 administrative gender, there will be four strata, one for each possible gender value.
 */
public struct MeasureReportGroupStratifierStratum: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What score this stratum achieved
	public var measureScore: FHIRPrimitive<FHIRDecimal>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Population results in this stratum
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// The stratum value, e.g. male
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measureScore: FHIRPrimitive<FHIRDecimal>? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupStratifierStratumPopulation]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case measureScore; case _measureScore
		case modifierExtension
		case population
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measureScore = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .measureScore, auxiliaryKey: ._measureScore)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupStratifierStratumPopulation](from: _container, forKeyIfPresent: .population)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measureScore?.encode(on: &_container, forKey: .measureScore, auxiliaryKey: ._measureScore)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Population results in this stratum.
 
 The populations that make up the stratum, one for each type of population appropriate to the measure.
 */
public struct MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-score
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Population identifier as defined in the measure
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// For patient-list reports, the patients in this population
	public var patients: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		patients: Reference? = nil
	) {
		self.code = code
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.patients = patients
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case patients
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patients = try Reference(from: _container, forKeyIfPresent: .patients)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patients?.encode(on: &_container, forKey: .patients)
	}
}
