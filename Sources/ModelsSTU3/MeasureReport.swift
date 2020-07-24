//
//  MeasureReport.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/MeasureReport)
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
 
 The MeasureReport resource contains the results of evaluating a measure.
 */
open class MeasureReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .measureReport }
	
	/// Additional identifier for the Report
	public var identifier: Identifier?
	
	/// The report status. No data will be available until the report status is complete.
	public var status: FHIRPrimitive<MeasureReportStatus>
	
	/// The type of measure report. This may be an individual report, which provides a single patient's score for the
	/// measure; a patient listing, which returns the list of patients that meet the various criteria in the measure; or
	/// a summary report, which returns a population count for each of the criteria in the measure.
	public var type: FHIRPrimitive<MeasureReportType>
	
	/// What measure was evaluated
	public var measure: Reference
	
	/// What patient the report is for
	public var patient: Reference?
	
	/// When the report was generated
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who is reporting the data
	public var reportingOrganization: Reference?
	
	/// What period the report covers
	public var period: Period
	
	/// Measure results for each group
	public var group: [MeasureReportGroup]?
	
	/// What data was evaluated to produce the measure score
	public var evaluatedResources: Reference?
	
	/// Designated initializer taking all required properties
	public init(measure: Reference, period: Period, status: FHIRPrimitive<MeasureReportStatus>, type: FHIRPrimitive<MeasureReportType>) {
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
							type: FHIRPrimitive<MeasureReportType>)
	{
		self.init(measure: measure, period: period, status: status, type: type)
		self.contained = contained
		self.date = date
		self.evaluatedResources = evaluatedResources
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.reportingOrganization = reportingOrganization
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case evaluatedResources
		case group
		case identifier
		case measure
		case patient
		case period
		case reportingOrganization
		case status; case _status
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.evaluatedResources = try Reference(from: _container, forKeyIfPresent: .evaluatedResources)
		self.group = try [MeasureReportGroup](from: _container, forKeyIfPresent: .group)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.measure = try Reference(from: _container, forKey: .measure)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.period = try Period(from: _container, forKey: .period)
		self.reportingOrganization = try Reference(from: _container, forKeyIfPresent: .reportingOrganization)
		self.status = try FHIRPrimitive<MeasureReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try FHIRPrimitive<MeasureReportType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try evaluatedResources?.encode(on: &_container, forKey: .evaluatedResources)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try measure.encode(on: &_container, forKey: .measure)
		try patient?.encode(on: &_container, forKey: .patient)
		try period.encode(on: &_container, forKey: .period)
		try reportingOrganization?.encode(on: &_container, forKey: .reportingOrganization)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		    && evaluatedResources == _other.evaluatedResources
		    && group == _other.group
		    && identifier == _other.identifier
		    && measure == _other.measure
		    && patient == _other.patient
		    && period == _other.period
		    && reportingOrganization == _other.reportingOrganization
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(evaluatedResources)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(measure)
		hasher.combine(patient)
		hasher.combine(period)
		hasher.combine(reportingOrganization)
		hasher.combine(status)
		hasher.combine(type)
	}
}

/**
 Measure results for each group.
 
 The results of the calculation, one for each population group in the measure.
 */
open class MeasureReportGroup: BackboneElement {
	
	/// What group of the measure
	public var identifier: Identifier
	
	/// The populations in the group
	public var population: [MeasureReportGroupPopulation]?
	
	/// What score this group achieved
	public var measureScore: FHIRPrimitive<FHIRDecimal>?
	
	/// Stratification results
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Designated initializer taking all required properties
	public init(identifier: Identifier) {
		self.identifier = identifier
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier,
							measureScore: FHIRPrimitive<FHIRDecimal>? = nil,
							modifierExtension: [Extension]? = nil,
							population: [MeasureReportGroupPopulation]? = nil,
							stratifier: [MeasureReportGroupStratifier]? = nil)
	{
		self.init(identifier: identifier)
		self.`extension` = `extension`
		self.id = id
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
		self.stratifier = stratifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case measureScore; case _measureScore
		case population
		case stratifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.measureScore = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .measureScore, auxiliaryKey: ._measureScore)
		self.population = try [MeasureReportGroupPopulation](from: _container, forKeyIfPresent: .population)
		self.stratifier = try [MeasureReportGroupStratifier](from: _container, forKeyIfPresent: .stratifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier.encode(on: &_container, forKey: .identifier)
		try measureScore?.encode(on: &_container, forKey: .measureScore, auxiliaryKey: ._measureScore)
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
		return identifier == _other.identifier
		    && measureScore == _other.measureScore
		    && population == _other.population
		    && stratifier == _other.stratifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
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
	
	/// Population identifier as defined in the measure
	public var identifier: Identifier?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-score
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// For patient-list reports, the patients in this population
	public var patients: Reference?
	
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
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							patients: Reference? = nil)
	{
		self.init()
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
		case identifier
		case patients
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.patients = try Reference(from: _container, forKeyIfPresent: .patients)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patients?.encode(on: &_container, forKey: .patients)
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
		    && identifier == _other.identifier
		    && patients == _other.patients
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(count)
		hasher.combine(identifier)
		hasher.combine(patients)
	}
}

/**
 Stratification results.
 
 When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
 measure.
 */
open class MeasureReportGroupStratifier: BackboneElement {
	
	/// What stratifier of the group
	public var identifier: Identifier?
	
	/// Stratum results, one for each unique value in the stratifier
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							stratum: [MeasureReportGroupStratifierStratum]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.stratum = stratum
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case stratum
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.stratum = try [MeasureReportGroupStratifierStratum](from: _container, forKeyIfPresent: .stratum)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		return identifier == _other.identifier
		    && stratum == _other.stratum
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(stratum)
	}
}

/**
 Stratum results, one for each unique value in the stratifier.
 
 This element contains the results for a single stratum within the stratifier. For example, when stratifying on
 administrative gender, there will be four strata, one for each possible gender value.
 */
open class MeasureReportGroupStratifierStratum: BackboneElement {
	
	/// The stratum value, e.g. male
	public var value: FHIRPrimitive<FHIRString>
	
	/// Population results in this stratum
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// What score this stratum achieved
	public var measureScore: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measureScore: FHIRPrimitive<FHIRDecimal>? = nil,
							modifierExtension: [Extension]? = nil,
							population: [MeasureReportGroupStratifierStratumPopulation]? = nil,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.measureScore = measureScore
		self.modifierExtension = modifierExtension
		self.population = population
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case measureScore; case _measureScore
		case population
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.measureScore = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .measureScore, auxiliaryKey: ._measureScore)
		self.population = try [MeasureReportGroupStratifierStratumPopulation](from: _container, forKeyIfPresent: .population)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try measureScore?.encode(on: &_container, forKey: .measureScore, auxiliaryKey: ._measureScore)
		try population?.encode(on: &_container, forKey: .population)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
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
		return measureScore == _other.measureScore
		    && population == _other.population
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(measureScore)
		hasher.combine(population)
		hasher.combine(value)
	}
}

/**
 Population results in this stratum.
 
 The populations that make up the stratum, one for each type of population appropriate to the measure.
 */
open class MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	
	/// Population identifier as defined in the measure
	public var identifier: Identifier?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-score
	public var code: CodeableConcept?
	
	/// Size of the population
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// For patient-list reports, the patients in this population
	public var patients: Reference?
	
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
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							patients: Reference? = nil)
	{
		self.init()
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
		case identifier
		case patients
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.patients = try Reference(from: _container, forKeyIfPresent: .patients)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patients?.encode(on: &_container, forKey: .patients)
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
		    && identifier == _other.identifier
		    && patients == _other.patients
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(count)
		hasher.combine(identifier)
		hasher.combine(patients)
	}
}
