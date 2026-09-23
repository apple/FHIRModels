//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/MeasureReport)
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
 
 The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the
 resources involved in that calculation.
 */
public struct MeasureReport: DomainResource {
	
	public static let resourceType: ResourceType = .measureReport
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the report was generated
	public var date: FHIRPrimitive<DateTime>?
	
	/// What data was used to calculate the measure score
	public var evaluatedResource: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Measure results for each group
	public var group: [MeasureReportGroup]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the MeasureReport
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What measure was calculated
	public var measure: FHIRPrimitive<Canonical>
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What period the report covers
	public var period: Period
	
	/// Who is reporting the data
	public var reporter: Reference?
	
	/// The MeasureReport status. No data will be available until the MeasureReport status is complete.
	public var status: FHIRPrimitive<MeasureReportStatus>
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of measure report. This may be an individual report, which provides the score for the measure for an
	/// individual member of the population; a subject-listing, which returns the list of members that meet the various
	/// criteria in the measure; a summary report, which returns a population count for each of the criteria in the
	/// measure; or a data-collection, which enables the MeasureReport to be used to exchange the data-of-interest for a
	/// quality measure.
	public var type: FHIRPrimitive<MeasureReportType>
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		evaluatedResource: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		group: [MeasureReportGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		improvementNotation: CodeableConcept? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		measure: FHIRPrimitive<Canonical>,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		reporter: Reference? = nil,
		status: FHIRPrimitive<MeasureReportStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<MeasureReportType>
	) {
		self.contained = contained
		self.date = date
		self.evaluatedResource = evaluatedResource
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.improvementNotation = improvementNotation
		self.language = language
		self.measure = measure
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.reporter = reporter
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case date; case _date
		case evaluatedResource
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case improvementNotation
		case language; case _language
		case measure; case _measure
		case meta
		case modifierExtension
		case period
		case reporter
		case status; case _status
		case subject
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
		self.evaluatedResource = try [Reference](from: _container, forKeyIfPresent: .evaluatedResource)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.measure = try FHIRPrimitive<Canonical>(from: _container, forKey: .measure, auxiliaryKey: ._measure)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.status = try FHIRPrimitive<MeasureReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
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
		try evaluatedResource?.encode(on: &_container, forKey: .evaluatedResource)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try measure.encode(on: &_container, forKey: .measure, auxiliaryKey: ._measure)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure.
 */
public struct MeasureReportGroup: BackboneElement {
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What score this group achieved
	public var measureScore: Quantity?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measureScore: Quantity? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupPopulation]? = nil,
		stratifier: [MeasureReportGroupStratifier]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.stratifier = stratifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case measureScore
		case modifierExtension
		case population
		case stratifier
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measureScore = try Quantity(from: _container, forKeyIfPresent: .measureScore)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measureScore?.encode(on: &_container, forKey: .measureScore)
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
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subjectResults: Reference? = nil
	) {
		self.code = code
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subjectResults = subjectResults
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case subjectResults
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
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
	}
}

/**
 Stratification results.
 
 When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
 measure.
 */
public struct MeasureReportGroupStratifier: BackboneElement {
	
	/// What stratifier of the group
	public var code: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	/// Designated initializer
	public init(
		code: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		stratum: [MeasureReportGroupStratifierStratum]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.stratum = stratum
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case stratum
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.stratum = try [MeasureReportGroupStratifierStratum](from: _container, forKeyIfPresent: .stratum)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try stratum?.encode(on: &_container, forKey: .stratum)
	}
}

/**
 Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components.
 
 This element contains the results for a single stratum within the stratifier. For example, when stratifying on
 administrative gender, there will be four strata, one for each possible gender value.
 */
public struct MeasureReportGroupStratifierStratum: BackboneElement {
	
	/// Stratifier component values
	public var component: [MeasureReportGroupStratifierStratumComponent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What score this stratum achieved
	public var measureScore: Quantity?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Population results in this stratum
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// The stratum value, e.g. male
	public var value: CodeableConcept?
	
	/// Designated initializer
	public init(
		component: [MeasureReportGroupStratifierStratumComponent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measureScore: Quantity? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupStratifierStratumPopulation]? = nil,
		value: CodeableConcept? = nil
	) {
		self.component = component
		self.`extension` = `extension`
		self.id = id
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case `extension` = "extension"
		case id; case _id
		case measureScore
		case modifierExtension
		case population
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.component = try [MeasureReportGroupStratifierStratumComponent](from: _container, forKeyIfPresent: .component)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measureScore = try Quantity(from: _container, forKeyIfPresent: .measureScore)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupStratifierStratumPopulation](from: _container, forKeyIfPresent: .population)
		self.value = try CodeableConcept(from: _container, forKeyIfPresent: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try component?.encode(on: &_container, forKey: .component)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measureScore?.encode(on: &_container, forKey: .measureScore)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try value?.encode(on: &_container, forKey: .value)
	}
}

/**
 Stratifier component values.
 
 A stratifier component value.
 */
public struct MeasureReportGroupStratifierStratumComponent: BackboneElement {
	
	/// What stratifier component of the group
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The stratum component value, e.g. male
	public var value: CodeableConcept
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: CodeableConcept
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
		case value
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
		self.value = try CodeableConcept(from: _container, forKey: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value.encode(on: &_container, forKey: .value)
	}
}

/**
 Population results in this stratum.
 
 The populations that make up the stratum, one for each type of population appropriate to the measure.
 */
public struct MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subjectResults: Reference? = nil
	) {
		self.code = code
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subjectResults = subjectResults
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case subjectResults
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
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
	}
}
