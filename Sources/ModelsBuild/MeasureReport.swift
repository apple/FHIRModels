//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/MeasureReport)
//  Copyright 2025 Apple Inc.
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
open class MeasureReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .measureReport }
	
	/// Additional identifier for the MeasureReport
	public var identifier: [Identifier]?
	
	/// The category of measure report instance this is (example codes include deqm, ra, vbp)
	public var category: CodeableConcept?
	
	/// Evaluation messages
	public var messages: Reference?
	
	/// The MeasureReport status. No data will be available until the MeasureReport status is complete.
	public var status: FHIRPrimitive<MeasureReportStatus>
	
	/// The type of measure report. This may be an individual report, which provides the score for the measure for an
	/// individual member of the population; a subject-listing, which returns the list of members that meet the various
	/// criteria in the measure; a summary report, which returns a population count for each of the criteria in the
	/// measure; or a data-collection, which enables the MeasureReport to be used to exchange the data-of-interest for a
	/// quality measure.
	public var type: FHIRPrimitive<MeasureReportType>
	
	/// Indicates whether the data submitted in a data-exchange report represents a snapshot or incremental update. A
	/// snapshot update replaces all previously submitted data for the receiver, whereas an incremental update
	/// represents only updated and/or changed data and should be applied as a differential update to the existing
	/// submitted data for the receiver.
	public var dataUpdateType: FHIRPrimitive<SubmitDataUpdateType>?
	
	/// What measure was calculated
	public var measure: FHIRPrimitive<Canonical>?
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// When the measure report was generated
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who is reporting the data
	public var reporter: Reference?
	
	/// What vendor prepared the data
	public var reportingVendor: Reference?
	
	/// Where the reported data is from
	public var location: [Reference]?
	
	/// What period the report covers
	public var period: Period
	
	/// What parameters were provided to the report
	public var inputParameters: Reference?
	
	/// Measure results for each group
	public var group: [MeasureReportGroup]?
	
	/// Additional information collected for the report
	public var supplementalData: [Reference]?
	
	/// What data was used to calculate the measure score
	public var evaluatedResource: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(period: Period, status: FHIRPrimitive<MeasureReportStatus>, type: FHIRPrimitive<MeasureReportType>) {
		self.period = period
		self.status = status
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(period: period, status: status, type: type)
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
		self.reporter = reporter
		self.reportingVendor = reportingVendor
		self.subject = subject
		self.supplementalData = supplementalData
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case dataUpdateType; case _dataUpdateType
		case date; case _date
		case evaluatedResource
		case group
		case identifier
		case inputParameters
		case location
		case measure; case _measure
		case messages
		case period
		case reporter
		case reportingVendor
		case status; case _status
		case subject
		case supplementalData
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.dataUpdateType = try FHIRPrimitive<SubmitDataUpdateType>(from: _container, forKeyIfPresent: .dataUpdateType, auxiliaryKey: ._dataUpdateType)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.evaluatedResource = try [Reference](from: _container, forKeyIfPresent: .evaluatedResource)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.inputParameters = try Reference(from: _container, forKeyIfPresent: .inputParameters)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.measure = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .measure, auxiliaryKey: ._measure)
		self.messages = try Reference(from: _container, forKeyIfPresent: .messages)
		self.period = try Period(from: _container, forKey: .period)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.reportingVendor = try Reference(from: _container, forKeyIfPresent: .reportingVendor)
		self.status = try FHIRPrimitive<MeasureReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.supplementalData = try [Reference](from: _container, forKeyIfPresent: .supplementalData)
		self.type = try FHIRPrimitive<MeasureReportType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try dataUpdateType?.encode(on: &_container, forKey: .dataUpdateType, auxiliaryKey: ._dataUpdateType)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try evaluatedResource?.encode(on: &_container, forKey: .evaluatedResource)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try inputParameters?.encode(on: &_container, forKey: .inputParameters)
		try location?.encode(on: &_container, forKey: .location)
		try measure?.encode(on: &_container, forKey: .measure, auxiliaryKey: ._measure)
		try messages?.encode(on: &_container, forKey: .messages)
		try period.encode(on: &_container, forKey: .period)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try reportingVendor?.encode(on: &_container, forKey: .reportingVendor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try supplementalData?.encode(on: &_container, forKey: .supplementalData)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReport else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && dataUpdateType == _other.dataUpdateType
		    && date == _other.date
		    && evaluatedResource == _other.evaluatedResource
		    && group == _other.group
		    && identifier == _other.identifier
		    && inputParameters == _other.inputParameters
		    && location == _other.location
		    && measure == _other.measure
		    && messages == _other.messages
		    && period == _other.period
		    && reporter == _other.reporter
		    && reportingVendor == _other.reportingVendor
		    && status == _other.status
		    && subject == _other.subject
		    && supplementalData == _other.supplementalData
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(dataUpdateType)
		hasher.combine(date)
		hasher.combine(evaluatedResource)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(inputParameters)
		hasher.combine(location)
		hasher.combine(measure)
		hasher.combine(messages)
		hasher.combine(period)
		hasher.combine(reporter)
		hasher.combine(reportingVendor)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supplementalData)
		hasher.combine(type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure. A MeasureReport SHALL have a group
 element corresponding to each group element defined in the Measure being reported.
 */
open class MeasureReportGroup: BackboneElement {
	
	/// All possible types for "measureScore[x]"
	public enum MeasureScoreX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case duration(Duration)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
	}
	
	/// Pointer to specific group from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Title of a group. Note- this value is copied from this element in Measure
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The date the Measure Report was calculated
	public var calculatedDate: FHIRPrimitive<DateTime>?
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// Summary description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// process | outcome | structure | patient-reported-outcome
	public var type: CodeableConcept?
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// What scoring method (e.g. proportion, ratio, continuous-variable)
	public var scoring: CodeableConcept?
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Explanation of improvement notation
	public var improvementNotationGuidance: FHIRPrimitive<FHIRString>?
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// What score this group achieved
	/// One of `measureScore[x]`
	public var measureScore: MeasureScoreX?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case population
		case scoring
		case stratifier
		case subject
		case title; case _title
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.calculatedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .calculatedDate, auxiliaryKey: ._calculatedDate)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.improvementNotationGuidance = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .improvementNotationGuidance, auxiliaryKey: ._improvementNotationGuidance)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		var _t_measureScore: MeasureScoreX? = nil
		if let measureScoreQuantity = try Quantity(from: _container, forKeyIfPresent: .measureScoreQuantity) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreQuantity, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .quantity(measureScoreQuantity)
		}
		if let measureScoreDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDateTime, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .dateTime(measureScoreDateTime)
		}
		if let measureScoreCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .measureScoreCodeableConcept) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreCodeableConcept, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .codeableConcept(measureScoreCodeableConcept)
		}
		if let measureScorePeriod = try Period(from: _container, forKeyIfPresent: .measureScorePeriod) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScorePeriod, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .period(measureScorePeriod)
		}
		if let measureScoreRange = try Range(from: _container, forKeyIfPresent: .measureScoreRange) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRange, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .range(measureScoreRange)
		}
		if let measureScoreDuration = try Duration(from: _container, forKeyIfPresent: .measureScoreDuration) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDuration, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .duration(measureScoreDuration)
		}
		if let measureScoreBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreBoolean, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .boolean(measureScoreBoolean)
		}
		if let measureScoreRatio = try Ratio(from: _container, forKeyIfPresent: .measureScoreRatio) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRatio, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .ratio(measureScoreRatio)
		}
		self.measureScore = _t_measureScore
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try calculatedDate?.encode(on: &_container, forKey: .calculatedDate, auxiliaryKey: ._calculatedDate)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try improvementNotationGuidance?.encode(on: &_container, forKey: .improvementNotationGuidance, auxiliaryKey: ._improvementNotationGuidance)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		if let _enum = measureScore {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreQuantity)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreCodeableConcept)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .measureScorePeriod)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreRange)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreDuration)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreRatio)
			}
		}
		try population?.encode(on: &_container, forKey: .population)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
		try subject?.encode(on: &_container, forKey: .subject)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReportGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return calculatedDate == _other.calculatedDate
		    && code == _other.code
		    && description_fhir == _other.description_fhir
		    && improvementNotation == _other.improvementNotation
		    && improvementNotationGuidance == _other.improvementNotationGuidance
		    && linkId == _other.linkId
		    && measureScore == _other.measureScore
		    && population == _other.population
		    && scoring == _other.scoring
		    && stratifier == _other.stratifier
		    && subject == _other.subject
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(calculatedDate)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(improvementNotation)
		hasher.combine(improvementNotationGuidance)
		hasher.combine(linkId)
		hasher.combine(measureScore)
		hasher.combine(population)
		hasher.combine(scoring)
		hasher.combine(stratifier)
		hasher.combine(subject)
		hasher.combine(title)
		hasher.combine(type)
	}
}

/**
 The populations in the group.
 
 The populations that make up the population group, one for each type of population appropriate for the measure. Each
 group in the MeasureReport SHALL have populations as defined in the corresponding group of the Measure being reported.
 */
open class MeasureReportGroupPopulation: BackboneElement {
	
	/// Pointer to specific population from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Title of a group. Note- this value is copied from this element in Measure
	public var title: FHIRPrimitive<FHIRString>?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// The human readable description of this population criteria
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Size of the population as a quantity
	public var countQuantity: Quantity?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// For subject-list reports, references to the individual reports for subjects in this population
	public var subjectReport: [Reference]?
	
	/// What individual(s) in the population
	public var subjects: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case linkId; case _linkId
		case subjectReport
		case subjectResults
		case subjects
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.countQuantity = try Quantity(from: _container, forKeyIfPresent: .countQuantity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.subjectReport = try [Reference](from: _container, forKeyIfPresent: .subjectReport)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		self.subjects = try Reference(from: _container, forKeyIfPresent: .subjects)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try countQuantity?.encode(on: &_container, forKey: .countQuantity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try subjectReport?.encode(on: &_container, forKey: .subjectReport)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
		try subjects?.encode(on: &_container, forKey: .subjects)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReportGroupPopulation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && count == _other.count
		    && countQuantity == _other.countQuantity
		    && description_fhir == _other.description_fhir
		    && linkId == _other.linkId
		    && subjectReport == _other.subjectReport
		    && subjectResults == _other.subjectResults
		    && subjects == _other.subjects
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(count)
		hasher.combine(countQuantity)
		hasher.combine(description_fhir)
		hasher.combine(linkId)
		hasher.combine(subjectReport)
		hasher.combine(subjectResults)
		hasher.combine(subjects)
		hasher.combine(title)
	}
}

/**
 Stratification results.
 
 The stratification results for this measure group, calculated as defined by the stratifier element of the measure being
 reported. Each group in the MeasureReport SHALL have stratifiers as defined in the corresponding group of the Measure
 being reported.
 */
open class MeasureReportGroupStratifier: BackboneElement {
	
	/// Pointer to specific stratifier from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Title of a group's stratifier. Note- this value is copied from this element in Measure
	public var title: FHIRPrimitive<FHIRString>?
	
	/// What stratifier of the group
	public var code: CodeableConcept?
	
	/// The human readable description of this stratifier
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		stratum: [MeasureReportGroupStratifierStratum]? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
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
		case linkId; case _linkId
		case stratum
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.stratum = try [MeasureReportGroupStratifierStratum](from: _container, forKeyIfPresent: .stratum)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try stratum?.encode(on: &_container, forKey: .stratum)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReportGroupStratifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && linkId == _other.linkId
		    && stratum == _other.stratum
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(linkId)
		hasher.combine(stratum)
		hasher.combine(title)
	}
}

/**
 Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components.
 
 This element contains the results for a single stratum within the stratifier. For example, when stratifying on
 administrative gender, there will be four strata, one for each possible gender value.
 */
open class MeasureReportGroupStratifierStratum: BackboneElement {
	
	/// All possible types for "measureScore[x]"
	public enum MeasureScoreX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case duration(Duration)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
	}
	
	/// The stratum value, e.g. male
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Stratifier component values
	public var component: [MeasureReportGroupStratifierStratumComponent]?
	
	/// Population results in this stratum
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// What score this stratum achieved
	/// One of `measureScore[x]`
	public var measureScore: MeasureScoreX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		component: [MeasureReportGroupStratifierStratumComponent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measureScore: MeasureScoreX? = nil,
		modifierExtension: [Extension]? = nil,
		population: [MeasureReportGroupStratifierStratumPopulation]? = nil,
		value: ValueX? = nil
	) {
		self.init()
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
		case measureScoreBoolean; case _measureScoreBoolean
		case measureScoreCodeableConcept
		case measureScoreDateTime; case _measureScoreDateTime
		case measureScoreDuration
		case measureScorePeriod
		case measureScoreQuantity
		case measureScoreRange
		case measureScoreRatio
		case population
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try [MeasureReportGroupStratifierStratumComponent](from: _container, forKeyIfPresent: .component)
		var _t_measureScore: MeasureScoreX? = nil
		if let measureScoreQuantity = try Quantity(from: _container, forKeyIfPresent: .measureScoreQuantity) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreQuantity, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .quantity(measureScoreQuantity)
		}
		if let measureScoreDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDateTime, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .dateTime(measureScoreDateTime)
		}
		if let measureScoreCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .measureScoreCodeableConcept) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreCodeableConcept, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .codeableConcept(measureScoreCodeableConcept)
		}
		if let measureScorePeriod = try Period(from: _container, forKeyIfPresent: .measureScorePeriod) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScorePeriod, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .period(measureScorePeriod)
		}
		if let measureScoreRange = try Range(from: _container, forKeyIfPresent: .measureScoreRange) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRange, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .range(measureScoreRange)
		}
		if let measureScoreDuration = try Duration(from: _container, forKeyIfPresent: .measureScoreDuration) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreDuration, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .duration(measureScoreDuration)
		}
		if let measureScoreBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreBoolean, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .boolean(measureScoreBoolean)
		}
		if let measureScoreRatio = try Ratio(from: _container, forKeyIfPresent: .measureScoreRatio) {
			if _t_measureScore != nil {
				throw DecodingError.dataCorruptedError(forKey: .measureScoreRatio, in: _container, debugDescription: "More than one value provided for \"measureScore\"")
			}
			_t_measureScore = .ratio(measureScoreRatio)
		}
		self.measureScore = _t_measureScore
		self.population = try [MeasureReportGroupStratifierStratumPopulation](from: _container, forKeyIfPresent: .population)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component?.encode(on: &_container, forKey: .component)
		if let _enum = measureScore {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreQuantity)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreDateTime, auxiliaryKey: ._measureScoreDateTime)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreCodeableConcept)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .measureScorePeriod)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreRange)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreDuration)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreBoolean, auxiliaryKey: ._measureScoreBoolean)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .measureScoreRatio)
			}
		}
		try population?.encode(on: &_container, forKey: .population)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReportGroupStratifierStratum else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return component == _other.component
		    && measureScore == _other.measureScore
		    && population == _other.population
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(component)
		hasher.combine(measureScore)
		hasher.combine(population)
		hasher.combine(value)
	}
}

/**
 Stratifier component values.
 
 A stratifier component value.
 */
open class MeasureReportGroupStratifierStratumComponent: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
	}
	
	/// Pointer to specific stratifier component from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// What stratifier component of the group
	public var code: CodeableConcept
	
	/// The human readable description of this stratifier component
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The stratum component value, e.g. male
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(code: code, value: value)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case linkId; case _linkId
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueReference], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		
			switch value {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReportGroupStratifierStratumComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && linkId == _other.linkId
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(linkId)
		hasher.combine(value)
	}
}

/**
 Population results in this stratum.
 
 The populations that make up the stratum, one for each type of population appropriate to the measure. For each
 stratifier, systems MAY provide population breakdowns in addition to the stratified scores.
 */
open class MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	
	/// Pointer to specific population from Measure
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// Size of the population as a quantity
	public var countQuantity: Quantity?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// For subject-list reports, a subject result in this population
	public var subjectReport: [Reference]?
	
	/// What individual(s) in the population
	public var subjects: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case linkId; case _linkId
		case subjectReport
		case subjectResults
		case subjects
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.countQuantity = try Quantity(from: _container, forKeyIfPresent: .countQuantity)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.subjectReport = try [Reference](from: _container, forKeyIfPresent: .subjectReport)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		self.subjects = try Reference(from: _container, forKeyIfPresent: .subjects)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try countQuantity?.encode(on: &_container, forKey: .countQuantity)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try subjectReport?.encode(on: &_container, forKey: .subjectReport)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
		try subjects?.encode(on: &_container, forKey: .subjects)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MeasureReportGroupStratifierStratumPopulation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && count == _other.count
		    && countQuantity == _other.countQuantity
		    && linkId == _other.linkId
		    && subjectReport == _other.subjectReport
		    && subjectResults == _other.subjectResults
		    && subjects == _other.subjects
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(count)
		hasher.combine(countQuantity)
		hasher.combine(linkId)
		hasher.combine(subjectReport)
		hasher.combine(subjectResults)
		hasher.combine(subjects)
	}
}
