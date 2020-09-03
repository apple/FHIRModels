//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/MeasureReport)
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
 Results of a measure evaluation.
 
 The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the
 resources involved in that calculation.
 */
open class MeasureReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .measureReport }
	
	/// Additional identifier for the MeasureReport
	public var identifier: [Identifier]?
	
	/// The MeasureReport status. No data will be available until the MeasureReport status is complete.
	public var status: FHIRPrimitive<MeasureReportStatus>
	
	/// The type of measure report. This may be an individual report, which provides the score for the measure for an
	/// individual member of the population; a subject-listing, which returns the list of members that meet the various
	/// criteria in the measure; a summary report, which returns a population count for each of the criteria in the
	/// measure; or a data-collection, which enables the MeasureReport to be used to exchange the data-of-interest for a
	/// quality measure.
	public var type: FHIRPrimitive<MeasureReportType>
	
	/// What measure was calculated
	public var measure: FHIRPrimitive<Canonical>
	
	/// What individual(s) the report is for
	public var subject: Reference?
	
	/// When the report was generated
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who is reporting the data
	public var reporter: Reference?
	
	/// What period the report covers
	public var period: Period
	
	/// increase | decrease
	public var improvementNotation: CodeableConcept?
	
	/// Measure results for each group
	public var group: [MeasureReportGroup]?
	
	/// What data was used to calculate the measure score
	public var evaluatedResource: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(measure: FHIRPrimitive<Canonical>, period: Period, status: FHIRPrimitive<MeasureReportStatus>, type: FHIRPrimitive<MeasureReportType>) {
		self.measure = measure
		self.period = period
		self.status = status
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: FHIRPrimitive<MeasureReportType>)
	{
		self.init(measure: measure, period: period, status: status, type: type)
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
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.reporter = reporter
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case evaluatedResource
		case group
		case identifier
		case improvementNotation
		case measure; case _measure
		case period
		case reporter
		case status; case _status
		case subject
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.evaluatedResource = try [Reference](from: _container, forKeyIfPresent: .evaluatedResource)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.improvementNotation = try CodeableConcept(from: _container, forKeyIfPresent: .improvementNotation)
		self.measure = try FHIRPrimitive<Canonical>(from: _container, forKey: .measure, auxiliaryKey: ._measure)
		self.period = try Period(from: _container, forKey: .period)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.status = try FHIRPrimitive<MeasureReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try FHIRPrimitive<MeasureReportType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try evaluatedResource?.encode(on: &_container, forKey: .evaluatedResource)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try improvementNotation?.encode(on: &_container, forKey: .improvementNotation)
		try measure.encode(on: &_container, forKey: .measure, auxiliaryKey: ._measure)
		try period.encode(on: &_container, forKey: .period)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
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
		return date == _other.date
		    && evaluatedResource == _other.evaluatedResource
		    && group == _other.group
		    && identifier == _other.identifier
		    && improvementNotation == _other.improvementNotation
		    && measure == _other.measure
		    && period == _other.period
		    && reporter == _other.reporter
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(evaluatedResource)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(improvementNotation)
		hasher.combine(measure)
		hasher.combine(period)
		hasher.combine(reporter)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure.
 */
open class MeasureReportGroup: BackboneElement {
	
	/// Meaning of the group
	public var code: CodeableConcept?
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// What score this group achieved
	public var measureScore: Quantity?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measureScore: Quantity? = nil,
							modifierExtension: [Extension]? = nil,
							population: [MeasureReportGroupPopulation]? = nil,
							stratifier: [MeasureReportGroupStratifier]? = nil)
	{
		self.init()
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
		case measureScore
		case population
		case stratifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.measureScore = try Quantity(from: _container, forKeyIfPresent: .measureScore)
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try measureScore?.encode(on: &_container, forKey: .measureScore)
		try population?.encode(on: &_container, forKey: .population)
		try stratifier?.encode(on: &_container, forKey: .stratifier)
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
		return code == _other.code
		    && measureScore == _other.measureScore
		    && population == _other.population
		    && stratifier == _other.stratifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(measureScore)
		hasher.combine(population)
		hasher.combine(stratifier)
	}
}

/**
 The populations in the group.
 
 The populations that make up the population group, one for each type of population appropriate for the measure.
 */
open class MeasureReportGroupPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							count: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							subjectResults: Reference? = nil)
	{
		self.init()
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
		case subjectResults
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
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
		    && subjectResults == _other.subjectResults
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(count)
		hasher.combine(subjectResults)
	}
}

/**
 Stratification results.
 
 When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
 measure.
 */
open class MeasureReportGroupStratifier: BackboneElement {
	
	/// What stratifier of the group
	public var code: [CodeableConcept]?
	
	/// Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							stratum: [MeasureReportGroupStratifierStratum]? = nil)
	{
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.stratum = stratum
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case stratum
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.stratum = try [MeasureReportGroupStratifierStratum](from: _container, forKeyIfPresent: .stratum)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try stratum?.encode(on: &_container, forKey: .stratum)
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
		    && stratum == _other.stratum
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(stratum)
	}
}

/**
 Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components.
 
 This element contains the results for a single stratum within the stratifier. For example, when stratifying on
 administrative gender, there will be four strata, one for each possible gender value.
 */
open class MeasureReportGroupStratifierStratum: BackboneElement {
	
	/// The stratum value, e.g. male
	public var value: CodeableConcept?
	
	/// Stratifier component values
	public var component: [MeasureReportGroupStratifierStratumComponent]?
	
	/// Population results in this stratum
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// What score this stratum achieved
	public var measureScore: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							component: [MeasureReportGroupStratifierStratumComponent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measureScore: Quantity? = nil,
							modifierExtension: [Extension]? = nil,
							population: [MeasureReportGroupStratifierStratumPopulation]? = nil,
							value: CodeableConcept? = nil)
	{
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
		case measureScore
		case population
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try [MeasureReportGroupStratifierStratumComponent](from: _container, forKeyIfPresent: .component)
		self.measureScore = try Quantity(from: _container, forKeyIfPresent: .measureScore)
		self.population = try [MeasureReportGroupStratifierStratumPopulation](from: _container, forKeyIfPresent: .population)
		self.value = try CodeableConcept(from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component?.encode(on: &_container, forKey: .component)
		try measureScore?.encode(on: &_container, forKey: .measureScore)
		try population?.encode(on: &_container, forKey: .population)
		try value?.encode(on: &_container, forKey: .value)
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
	
	/// What stratifier component of the group
	public var code: CodeableConcept
	
	/// The stratum component value, e.g. male
	public var value: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, value: CodeableConcept) {
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
							value: CodeableConcept)
	{
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.value = try CodeableConcept(from: _container, forKey: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try value.encode(on: &_container, forKey: .value)
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
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Population results in this stratum.
 
 The populations that make up the stratum, one for each type of population appropriate to the measure.
 */
open class MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// For subject-list reports, the subject results in this population
	public var subjectResults: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							count: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							subjectResults: Reference? = nil)
	{
		self.init()
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
		case subjectResults
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.subjectResults = try Reference(from: _container, forKeyIfPresent: .subjectResults)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try subjectResults?.encode(on: &_container, forKey: .subjectResults)
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
		    && subjectResults == _other.subjectResults
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(count)
		hasher.combine(subjectResults)
	}
}
