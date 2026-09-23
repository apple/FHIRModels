//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/MeasureReport)
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
	
	/// The category of measure report instance this is (example codes include deqm, ra, vbp)
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Indicates whether the data submitted in a data-exchange report represents a snapshot or incremental update. A
	/// snapshot update replaces all previously submitted data for the receiver, whereas an incremental update
	/// represents only updated and/or changed data and should be applied as a differential update to the existing
	/// submitted data for the receiver.
	public var dataUpdateType: FHIRPrimitive<SubmitDataUpdateType>?
	
	/// When the measure report was generated
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
	
	/// What parameters were provided to the report
	public var inputParameters: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the reported data is from
	public var location: [Reference]?
	
	/// What measure was calculated
	public var measure: FHIRPrimitive<Canonical>?
	
	/// Evaluation messages
	public var messages: Reference?
	
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
		category: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		dataUpdateType: FHIRPrimitive<SubmitDataUpdateType>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		evaluatedResource: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		group: [MeasureReportGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		inputParameters: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [Reference]? = nil,
		measure: FHIRPrimitive<Canonical>? = nil,
		messages: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		reporter: Reference? = nil,
		reportingVendor: Reference? = nil,
		status: FHIRPrimitive<MeasureReportStatus>,
		subject: Reference? = nil,
		supplementalData: [Reference]? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<MeasureReportType>
	) {
		self.category = category
		self.contained = contained
		self.dataUpdateType = dataUpdateType
		self.date = date
		self.evaluatedResource = evaluatedResource
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.inputParameters = inputParameters
		self.language = language
		self.location = location
		self.measure = measure
		self.messages = messages
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.reporter = reporter
		self.reportingVendor = reportingVendor
		self.status = status
		self.subject = subject
		self.supplementalData = supplementalData
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category
		case contained
		case dataUpdateType; case _dataUpdateType
		case date; case _date
		case evaluatedResource
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case inputParameters
		case language; case _language
		case location
		case measure; case _measure
		case messages
		case meta
		case modifierExtension
		case period
		case reporter
		case reportingVendor
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
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dataUpdateType = try FHIRPrimitive<SubmitDataUpdateType>(from: _container, forKeyIfPresent: .dataUpdateType, auxiliaryKey: ._dataUpdateType)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.evaluatedResource = try [Reference](from: _container, forKeyIfPresent: .evaluatedResource)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.inputParameters = try Reference(from: _container, forKeyIfPresent: .inputParameters)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.measure = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .measure, auxiliaryKey: ._measure)
		self.messages = try Reference(from: _container, forKeyIfPresent: .messages)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.reportingVendor = try Reference(from: _container, forKeyIfPresent: .reportingVendor)
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
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try dataUpdateType?.encode(on: &_container, forKey: .dataUpdateType, auxiliaryKey: ._dataUpdateType)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try evaluatedResource?.encode(on: &_container, forKey: .evaluatedResource)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try inputParameters?.encode(on: &_container, forKey: .inputParameters)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try measure?.encode(on: &_container, forKey: .measure, auxiliaryKey: ._measure)
		try messages?.encode(on: &_container, forKey: .messages)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try reportingVendor?.encode(on: &_container, forKey: .reportingVendor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try supplementalData?.encode(on: &_container, forKey: .supplementalData)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure. A MeasureReport SHALL have a group
 element corresponding to each group element defined in the Measure being reported.
 */
public struct MeasureReportGroup: BackboneElement {
	
	/// All possible types for "measureScore[x]"
	public enum MeasureScoreX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
	}
	
	/// The date the Measure Report was calculated
	public var calculatedDate: FHIRPrimitive<DateTime>?
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// Summary description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Explanation of improvement notation
	public var improvementNotationGuidance: FHIRPrimitive<FHIRString>?
	
	/// Pointer to specific group from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// What score this group achieved
	/// One of `measureScore[x]`
	public var measureScore: MeasureScoreX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// What scoring method (e.g. proportion, ratio, continuous-variable)
	public var scoring: CodeableConcept?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// Title of a group. Note- this value is copied from this element in Measure
	public var title: FHIRPrimitive<FHIRString>?
	
	/// process | outcome | structure | patient-reported-outcome
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		calculatedDate: FHIRPrimitive<DateTime>? = nil,
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		improvementNotation: CodeableConcept? = nil,
		improvementNotationGuidance: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		measureScore: MeasureScoreX? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupPopulation]? = nil,
		scoring: CodeableConcept? = nil,
		stratifier: [MeasureReportGroupStratifier]? = nil,
		subject: Reference? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.calculatedDate = calculatedDate
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.improvementNotation = improvementNotation
		self.improvementNotationGuidance = improvementNotationGuidance
		self.linkId = linkId
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.scoring = scoring
		self.stratifier = stratifier
		self.subject = subject
		self.title = title
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case calculatedDate; case _calculatedDate
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case improvementNotation
		case improvementNotationGuidance; case _improvementNotationGuidance
		case linkId; case _linkId
		case measureScoreBoolean; case _measureScoreBoolean
		case measureScoreCodeableConcept
		case measureScoreDateTime; case _measureScoreDateTime
		case measureScoreDuration
		case measureScorePeriod
		case measureScoreQuantity
		case measureScoreRange
		case measureScoreRatio
		case modifierExtension
		case population
		case scoring
		case stratifier
		case subject
		case title; case _title
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.calculatedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .calculatedDate, auxiliaryKey: ._calculatedDate)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.improvementNotationGuidance = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .improvementNotationGuidance, auxiliaryKey: ._improvementNotationGuidance)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.measureScore = try Self._decodeMeasureScore(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try calculatedDate?.encode(on: &_container, forKey: .calculatedDate, auxiliaryKey: ._calculatedDate)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try improvementNotationGuidance?.encode(on: &_container, forKey: .improvementNotationGuidance, auxiliaryKey: ._improvementNotationGuidance)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		if let _enum = measureScore {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean)
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
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreRatio)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
		try subject?.encode(on: &_container, forKey: .subject)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMeasureScore(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MeasureScoreX? {
		var _t_measureScore: MeasureScoreX? = nil
		if let measureScoreBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean) {
			_t_measureScore = .boolean(measureScoreBoolean)
		}
		if let measureScoreCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .measureScoreCodeableConcept) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreCodeableConcept, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
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
		if let measureScoreRatio = try Ratio(from: _container, forKeyIfPresent: .measureScoreRatio) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRatio, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .ratio(measureScoreRatio)
		}
		return _t_measureScore
	}
}

/**
 The populations in the group.
 
 The populations that make up the population group, one for each type of population appropriate for the measure. Each
 group in the MeasureReport SHALL have populations as defined in the corresponding group of the Measure being reported.
 */
public struct MeasureReportGroupPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Size of the population as a quantity
	public var countQuantity: Quantity?
	
	/// The human readable description of this population criteria
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Pointer to specific population from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For subject-list reports, references to the individual reports for subjects in this population
	public var subjectReport: [Reference]?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// What individual(s) in the population
	public var subjects: Reference?
	
	/// Title of a group. Note- this value is copied from this element in Measure
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		count: FHIRPrimitive<FHIRInteger>? = nil,
		countQuantity: Quantity? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subjectReport: [Reference]? = nil,
		subjectResults: Reference? = nil,
		subjects: Reference? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.code = code
		self.count = count
		self.countQuantity = countQuantity
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.subjectReport = subjectReport
		self.subjectResults = subjectResults
		self.subjects = subjects
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case count; case _count
		case countQuantity
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case subjectReport
		case subjectResults
		case subjects
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.countQuantity = try Quantity(from: _container, forKeyIfPresent: .countQuantity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subjectReport = try [Reference](from: _container, forKeyIfPresent: .subjectReport)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		self.subjects = try Reference(from: _container, forKeyIfPresent: .subjects)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try countQuantity?.encode(on: &_container, forKey: .countQuantity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subjectReport?.encode(on: &_container, forKey: .subjectReport)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
		try subjects?.encode(on: &_container, forKey: .subjects)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Stratification results.
 
 The stratification results for this measure group, calculated as defined by the stratifier element of the measure being
 reported. Each group in the MeasureReport SHALL have stratifiers as defined in the corresponding group of the Measure
 being reported.
 */
public struct MeasureReportGroupStratifier: BackboneElement {
	
	/// What stratifier of the group
	public var code: CodeableConcept?
	
	/// The human readable description of this stratifier
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
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
	
	/// Title of a group's stratifier. Note- this value is copied from this element in Measure
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		stratum: [MeasureReportGroupStratifierStratum]? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.stratum = stratum
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case stratum
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.stratum = try [MeasureReportGroupStratifierStratum](from: _container, forKeyIfPresent: .stratum)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try stratum?.encode(on: &_container, forKey: .stratum)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
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
		case measureScoreBoolean; case _measureScoreBoolean
		case measureScoreCodeableConcept
		case measureScoreDateTime; case _measureScoreDateTime
		case measureScoreDuration
		case measureScorePeriod
		case measureScoreQuantity
		case measureScoreRange
		case measureScoreRatio
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
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean)
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
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .measureScoreRatio)
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
		if let measureScoreBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean) {
			_t_measureScore = .boolean(measureScoreBoolean)
		}
		if let measureScoreCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .measureScoreCodeableConcept) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreCodeableConcept, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
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
		if let measureScoreRatio = try Ratio(from: _container, forKeyIfPresent: .measureScoreRatio) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRatio, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .ratio(measureScoreRatio)
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
	
	/// The human readable description of this stratifier component
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
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
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
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
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
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
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
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
 
 The populations that make up the stratum, one for each type of population appropriate to the measure. For each
 stratifier, systems MAY provide population breakdowns in addition to the stratified scores.
 */
public struct MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Size of the population as a quantity
	public var countQuantity: Quantity?
	
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
		countQuantity: Quantity? = nil,
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
		self.countQuantity = countQuantity
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
		case countQuantity
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
		self.countQuantity = try Quantity(from: _container, forKeyIfPresent: .countQuantity)
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
		try countQuantity?.encode(on: &_container, forKey: .countQuantity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subjectReport?.encode(on: &_container, forKey: .subjectReport)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
		try subjects?.encode(on: &_container, forKey: .subjects)
	}
}
