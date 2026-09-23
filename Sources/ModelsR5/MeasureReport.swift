//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MeasureReport)
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
	
	/// incremental | snapshot
	public var dataUpdateType: FHIRPrimitive<FHIRString>?
	
	/// When the measure was calculated
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
	
	/// What parameters were provided to the report
	public var inputParameters: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the reported data is from
	public var location: Reference?
	
	/// What measure was calculated
	public var measure: FHIRPrimitive<Canonical>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What period the report covers
	public var period: Period
	
	/// Who is reporting the data
	public var reporter: Reference?
	
	/// What vendor prepared the data
	public var reportingVendor: Reference?
	
	/// What scoring method (e.g. proportion, ratio, continuous-variable)
	public var scoring: CodeableConcept?
	
	/// The MeasureReport status. No data will be available until the MeasureReport status is complete.
	public var status: FHIRPrimitive<MeasureReportStatus>
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// Additional information collected for the report
	public var supplementalData: [Reference]?
	
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
		dataUpdateType: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		evaluatedResource: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		group: [MeasureReportGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		improvementNotation: CodeableConcept? = nil,
		inputParameters: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		measure: FHIRPrimitive<Canonical>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		reporter: Reference? = nil,
		reportingVendor: Reference? = nil,
		scoring: CodeableConcept? = nil,
		status: FHIRPrimitive<MeasureReportStatus>,
		subject: Reference? = nil,
		supplementalData: [Reference]? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<MeasureReportType>
	) {
		self.contained = contained
		self.dataUpdateType = dataUpdateType
		self.date = date
		self.evaluatedResource = evaluatedResource
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.improvementNotation = improvementNotation
		self.inputParameters = inputParameters
		self.language = language
		self.location = location
		self.measure = measure
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.reporter = reporter
		self.reportingVendor = reportingVendor
		self.scoring = scoring
		self.status = status
		self.subject = subject
		self.supplementalData = supplementalData
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case dataUpdateType; case _dataUpdateType
		case date; case _date
		case evaluatedResource
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case improvementNotation
		case inputParameters
		case language; case _language
		case location
		case measure; case _measure
		case meta
		case modifierExtension
		case period
		case reporter
		case reportingVendor
		case scoring
		case status; case _status
		case subject
		case supplementalData
		case text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dataUpdateType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .dataUpdateType, auxiliaryKey: ._dataUpdateType)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.evaluatedResource = try [Reference](from: _container, forKeyIfPresent: .evaluatedResource)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.inputParameters = try Reference(from: _container, forKeyIfPresent: .inputParameters)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.measure = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .measure, auxiliaryKey: ._measure)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.reportingVendor = try Reference(from: _container, forKeyIfPresent: .reportingVendor)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.status = try FHIRPrimitive<MeasureReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.supplementalData = try [Reference](from: _container, forKeyIfPresent: .supplementalData)
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
		try dataUpdateType?.encode(on: &_container, forKey: .dataUpdateType, auxiliaryKey: ._dataUpdateType)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try evaluatedResource?.encode(on: &_container, forKey: .evaluatedResource)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try inputParameters?.encode(on: &_container, forKey: .inputParameters)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try measure?.encode(on: &_container, forKey: .measure, auxiliaryKey: ._measure)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try reportingVendor?.encode(on: &_container, forKey: .reportingVendor)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try supplementalData?.encode(on: &_container, forKey: .supplementalData)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure.
 */
public struct MeasureReportGroup: BackboneElement {
	
	/// All possible types for "measureScore[x]"
	public enum MeasureScoreX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Pointer to specific group from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// What score this group achieved
	/// One of `measureScore[x]`
	public var measureScore: MeasureScoreX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		measureScore: MeasureScoreX? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupPopulation]? = nil,
		stratifier: [MeasureReportGroupStratifier]? = nil,
		subject: Reference? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.stratifier = stratifier
		self.subject = subject
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case measureScoreCodeableConcept
		case measureScoreDateTime; case _measureScoreDateTime
		case measureScoreDuration
		case measureScorePeriod
		case measureScoreQuantity
		case measureScoreRange
		case modifierExtension
		case population
		case stratifier
		case subject
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.measureScore = try Self._decodeMeasureScore(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		if let _enum = measureScore {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .measureScorePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreRange)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
		try subject?.encode(on: &_container, forKey: .subject)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMeasureScore(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MeasureScoreX? {
		var _t_measureScore: MeasureScoreX? = nil
		if let measureScoreCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .measureScoreCodeableConcept) {
			_t_measureScore = .codeableConcept(measureScoreCodeableConcept)
		}
		if let measureScoreDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDateTime, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .dateTime(measureScoreDateTime)
		}
		if let measureScoreDuration = try Duration(from: _container, forKeyIfPresent: .measureScoreDuration) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDuration, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .duration(measureScoreDuration)
		}
		if let measureScorePeriod = try Period(from: _container, forKeyIfPresent: .measureScorePeriod) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScorePeriod, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .period(measureScorePeriod)
		}
		if let measureScoreQuantity = try Quantity(from: _container, forKeyIfPresent: .measureScoreQuantity) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreQuantity, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .quantity(measureScoreQuantity)
		}
		if let measureScoreRange = try Range(from: _container, forKeyIfPresent: .measureScoreRange) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRange, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .range(measureScoreRange)
		}
		return _t_measureScore
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
	
	/// Pointer to specific population from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For subject-list reports, a subject result in this population
	public var subjectReport: [Reference]?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// What individual(s) in the population
	public var subjects: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subjectReport: [Reference]? = nil,
		subjectResults: Reference? = nil,
		subjects: Reference? = nil
	) {
		self.code = code
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.subjectReport = subjectReport
		self.subjectResults = subjectResults
		self.subjects = subjects
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case subjectReport
		case subjectResults
		case subjects
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
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subjectReport = try [Reference](from: _container, forKeyIfPresent: .subjectReport)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		self.subjects = try Reference(from: _container, forKeyIfPresent: .subjects)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subjectReport?.encode(on: &_container, forKey: .subjectReport)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
		try subjects?.encode(on: &_container, forKey: .subjects)
	}
}

/**
 Stratification results.
 
 When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
 measure.
 */
public struct MeasureReportGroupStratifier: BackboneElement {
	
	/// What stratifier of the group
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Pointer to specific stratifier from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		stratum: [MeasureReportGroupStratifierStratum]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.stratum = stratum
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case stratum
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
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
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
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
	
	/// All possible types for "measureScore[x]"
	public enum MeasureScoreX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
	/// Stratifier component values
	public var component: [MeasureReportGroupStratifierStratumComponent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What score this stratum achieved
	/// One of `measureScore[x]`
	public var measureScore: MeasureScoreX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Population results in this stratum
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// The stratum value, e.g. male
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		component: [MeasureReportGroupStratifierStratumComponent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measureScore: MeasureScoreX? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupStratifierStratumPopulation]? = nil,
		value: ValueX? = nil
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
		case measureScoreCodeableConcept
		case measureScoreDateTime; case _measureScoreDateTime
		case measureScoreDuration
		case measureScorePeriod
		case measureScoreQuantity
		case measureScoreRange
		case modifierExtension
		case population
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.component = try [MeasureReportGroupStratifierStratumComponent](from: _container, forKeyIfPresent: .component)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measureScore = try Self._decodeMeasureScore(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupStratifierStratumPopulation](from: _container, forKeyIfPresent: .population)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try component?.encode(on: &_container, forKey: .component)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = measureScore {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .measureScorePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreRange)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		if let _enum = value {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMeasureScore(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MeasureScoreX? {
		var _t_measureScore: MeasureScoreX? = nil
		if let measureScoreCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .measureScoreCodeableConcept) {
			_t_measureScore = .codeableConcept(measureScoreCodeableConcept)
		}
		if let measureScoreDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDateTime, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .dateTime(measureScoreDateTime)
		}
		if let measureScoreDuration = try Duration(from: _container, forKeyIfPresent: .measureScoreDuration) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDuration, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .duration(measureScoreDuration)
		}
		if let measureScorePeriod = try Period(from: _container, forKeyIfPresent: .measureScorePeriod) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScorePeriod, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .period(measureScorePeriod)
		}
		if let measureScoreQuantity = try Quantity(from: _container, forKeyIfPresent: .measureScoreQuantity) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreQuantity, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .quantity(measureScoreQuantity)
		}
		if let measureScoreRange = try Range(from: _container, forKeyIfPresent: .measureScoreRange) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRange, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .range(measureScoreRange)
		}
		return _t_measureScore
	}
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		return _t_value
	}
}

/**
 Stratifier component values.
 
 A stratifier component value.
 */
public struct MeasureReportGroupStratifierStratumComponent: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
	/// What stratifier component of the group
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Pointer to specific stratifier component from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The stratum component value, e.g. male
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueReference)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
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
	
	/// Pointer to specific population from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For subject-list reports, a subject result in this population
	public var subjectReport: [Reference]?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// What individual(s) in the population
	public var subjects: Reference?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subjectReport: [Reference]? = nil,
		subjectResults: Reference? = nil,
		subjects: Reference? = nil
	) {
		self.code = code
		self.count = count
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.subjectReport = subjectReport
		self.subjectResults = subjectResults
		self.subjects = subjects
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case subjectReport
		case subjectResults
		case subjects
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
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subjectReport = try [Reference](from: _container, forKeyIfPresent: .subjectReport)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		self.subjects = try Reference(from: _container, forKeyIfPresent: .subjects)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subjectReport?.encode(on: &_container, forKey: .subjectReport)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
		try subjects?.encode(on: &_container, forKey: .subjects)
	}
}
