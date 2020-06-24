//
//  Statistic.swift
//  HealthSoftware
//
//  Generated from FHIR 4.4.0-29ad3ab0 (http://hl7.org/fhir/StructureDefinition/Statistic)
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
 Single statistic.
 
 A fact or piece of data from a  study of a large quantity of numerical data.  A mathematical or quantified
 characteristic of a group of observations.
 */
open class Statistic: BackboneType {
	
	/// Description of content
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Type of statistic, eg relative risk
	public var statisticType: CodeableConcept?
	
	/// Statistic value
	public var quantity: Quantity?
	
	/// Number of samples in the statistic
	public var sampleSize: StatisticSampleSize?
	
	/// An estimate of the precision of the statistic
	public var attributeEstimate: [StatisticAttributeEstimate]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attributeEstimate: [StatisticAttributeEstimate]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							quantity: Quantity? = nil,
							sampleSize: StatisticSampleSize? = nil,
							statisticType: CodeableConcept? = nil)
	{
		self.init()
		self.attributeEstimate = attributeEstimate
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.quantity = quantity
		self.sampleSize = sampleSize
		self.statisticType = statisticType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attributeEstimate
		case description_fhir = "description"; case _description_fhir = "_description"
		case note
		case quantity
		case sampleSize
		case statisticType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attributeEstimate = try [StatisticAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sampleSize = try StatisticSampleSize(from: _container, forKeyIfPresent: .sampleSize)
		self.statisticType = try CodeableConcept(from: _container, forKeyIfPresent: .statisticType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sampleSize?.encode(on: &_container, forKey: .sampleSize)
		try statisticType?.encode(on: &_container, forKey: .statisticType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Statistic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attributeEstimate == _other.attributeEstimate
		    && description_fhir == _other.description_fhir
		    && note == _other.note
		    && quantity == _other.quantity
		    && sampleSize == _other.sampleSize
		    && statisticType == _other.statisticType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attributeEstimate)
		hasher.combine(description_fhir)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(sampleSize)
		hasher.combine(statisticType)
	}
}

/**
 An estimate of the precision of the statistic.
 */
open class StatisticAttributeEstimate: Element {
	
	/// Textual description of the precision estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the estimate
	public var note: [Annotation]?
	
	/// The estimateType of precision estimate, eg confidence interval or p value type
	public var type: CodeableConcept?
	
	/// The singular quantity of the precision estimate, for precision estimates represented as single values; also used
	/// to report unit of measure
	public var quantity: Quantity?
	
	/// Level of confidence interval, eg 0.95 for 95% confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower and upper bound values of the precision estimate
	public var range: Range?
	
	/// An estimate of the precision of the estimate
	public var estimateQualifier: [StatisticAttributeEstimateEstimateQualifier]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							estimateQualifier: [StatisticAttributeEstimateEstimateQualifier]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							level: FHIRPrimitive<FHIRDecimal>? = nil,
							note: [Annotation]? = nil,
							quantity: Quantity? = nil,
							range: Range? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.estimateQualifier = estimateQualifier
		self.`extension` = `extension`
		self.id = id
		self.level = level
		self.note = note
		self.quantity = quantity
		self.range = range
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case estimateQualifier
		case level; case _level
		case note
		case quantity
		case range
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.estimateQualifier = try [StatisticAttributeEstimateEstimateQualifier](from: _container, forKeyIfPresent: .estimateQualifier)
		self.level = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .level, auxiliaryKey: ._level)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try estimateQualifier?.encode(on: &_container, forKey: .estimateQualifier)
		try level?.encode(on: &_container, forKey: .level, auxiliaryKey: ._level)
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StatisticAttributeEstimate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && estimateQualifier == _other.estimateQualifier
		    && level == _other.level
		    && note == _other.note
		    && quantity == _other.quantity
		    && range == _other.range
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(estimateQualifier)
		hasher.combine(level)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(range)
		hasher.combine(type)
	}
}

/**
 An estimate of the precision of the estimate.
 */
open class StatisticAttributeEstimateEstimateQualifier: Element {
	
	/// Textual description of the precision estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the estimate
	public var note: [Annotation]?
	
	/// The estimateType of attribute estimate, eg confidence interval or p value type
	public var type: CodeableConcept?
	
	/// The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used
	/// to report unit of measure
	public var quantity: Quantity?
	
	/// Level of confidence interval, eg 0.95 for 95% confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower and upper bound values of the precision estimate
	public var range: Range?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							level: FHIRPrimitive<FHIRDecimal>? = nil,
							note: [Annotation]? = nil,
							quantity: Quantity? = nil,
							range: Range? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.level = level
		self.note = note
		self.quantity = quantity
		self.range = range
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case level; case _level
		case note
		case quantity
		case range
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.level = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .level, auxiliaryKey: ._level)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try level?.encode(on: &_container, forKey: .level, auxiliaryKey: ._level)
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StatisticAttributeEstimateEstimateQualifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && level == _other.level
		    && note == _other.note
		    && quantity == _other.quantity
		    && range == _other.range
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(level)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(range)
		hasher.combine(type)
	}
}

/**
 Number of samples in the statistic.
 */
open class StatisticSampleSize: Element {
	
	/// Textual description of sample size for statistic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the sample size
	public var note: [Annotation]?
	
	/// Number of contributing studies
	public var numberOfStudies: FHIRPrimitive<FHIRInteger>?
	
	/// Cumulative number of participants
	public var numberOfParticipants: FHIRPrimitive<FHIRInteger>?
	
	/// Number of participants with known results for measured variables
	public var knownDataCount: FHIRPrimitive<FHIRInteger>?
	
	/// Number of participants with “positive” results, only used to report actual numerator count for a proportion
	public var numeratorCount: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							knownDataCount: FHIRPrimitive<FHIRInteger>? = nil,
							note: [Annotation]? = nil,
							numberOfParticipants: FHIRPrimitive<FHIRInteger>? = nil,
							numberOfStudies: FHIRPrimitive<FHIRInteger>? = nil,
							numeratorCount: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.knownDataCount = knownDataCount
		self.note = note
		self.numberOfParticipants = numberOfParticipants
		self.numberOfStudies = numberOfStudies
		self.numeratorCount = numeratorCount
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case knownDataCount; case _knownDataCount
		case note
		case numberOfParticipants; case _numberOfParticipants
		case numberOfStudies; case _numberOfStudies
		case numeratorCount; case _numeratorCount
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.knownDataCount = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .knownDataCount, auxiliaryKey: ._knownDataCount)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberOfParticipants = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		self.numberOfStudies = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
		self.numeratorCount = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numeratorCount, auxiliaryKey: ._numeratorCount)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try knownDataCount?.encode(on: &_container, forKey: .knownDataCount, auxiliaryKey: ._knownDataCount)
		try note?.encode(on: &_container, forKey: .note)
		try numberOfParticipants?.encode(on: &_container, forKey: .numberOfParticipants, auxiliaryKey: ._numberOfParticipants)
		try numberOfStudies?.encode(on: &_container, forKey: .numberOfStudies, auxiliaryKey: ._numberOfStudies)
		try numeratorCount?.encode(on: &_container, forKey: .numeratorCount, auxiliaryKey: ._numeratorCount)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StatisticSampleSize else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && knownDataCount == _other.knownDataCount
		    && note == _other.note
		    && numberOfParticipants == _other.numberOfParticipants
		    && numberOfStudies == _other.numberOfStudies
		    && numeratorCount == _other.numeratorCount
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(knownDataCount)
		hasher.combine(note)
		hasher.combine(numberOfParticipants)
		hasher.combine(numberOfStudies)
		hasher.combine(numeratorCount)
	}
}
