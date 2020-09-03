//
//  Statistic.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Statistic)
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
	
	/// The number of events associated with the statistic
	public var numberOfEvents: FHIRPrimitive<FHIRInteger>?
	
	/// Number of samples in the statistic
	public var sampleSize: StatisticSampleSize?
	
	/// An attribute of the Statistic
	public var attributeEstimate: [StatisticAttributeEstimate]?
	
	/// Model characteristic
	public var modelCharacteristic: [StatisticModelCharacteristic]?
	
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
							modelCharacteristic: [StatisticModelCharacteristic]? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							numberOfEvents: FHIRPrimitive<FHIRInteger>? = nil,
							quantity: Quantity? = nil,
							sampleSize: StatisticSampleSize? = nil,
							statisticType: CodeableConcept? = nil)
	{
		self.init()
		self.attributeEstimate = attributeEstimate
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modelCharacteristic = modelCharacteristic
		self.modifierExtension = modifierExtension
		self.note = note
		self.numberOfEvents = numberOfEvents
		self.quantity = quantity
		self.sampleSize = sampleSize
		self.statisticType = statisticType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attributeEstimate
		case description_fhir = "description"; case _description_fhir = "_description"
		case modelCharacteristic
		case note
		case numberOfEvents; case _numberOfEvents
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
		self.modelCharacteristic = try [StatisticModelCharacteristic](from: _container, forKeyIfPresent: .modelCharacteristic)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberOfEvents = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfEvents, auxiliaryKey: ._numberOfEvents)
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
		try modelCharacteristic?.encode(on: &_container, forKey: .modelCharacteristic)
		try note?.encode(on: &_container, forKey: .note)
		try numberOfEvents?.encode(on: &_container, forKey: .numberOfEvents, auxiliaryKey: ._numberOfEvents)
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
		    && modelCharacteristic == _other.modelCharacteristic
		    && note == _other.note
		    && numberOfEvents == _other.numberOfEvents
		    && quantity == _other.quantity
		    && sampleSize == _other.sampleSize
		    && statisticType == _other.statisticType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attributeEstimate)
		hasher.combine(description_fhir)
		hasher.combine(modelCharacteristic)
		hasher.combine(note)
		hasher.combine(numberOfEvents)
		hasher.combine(quantity)
		hasher.combine(sampleSize)
		hasher.combine(statisticType)
	}
}

/**
 An attribute of the Statistic.
 
 A statistical attribute of the statistic such as a measure of heterogeneity.
 */
open class StatisticAttributeEstimate: Element {
	
	/// Textual description of the attribute estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the estimate
	public var note: [Annotation]?
	
	/// The type of attribute estimate, eg confidence interval or p value
	public var type: CodeableConcept?
	
	/// The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used
	/// to report unit of measure
	public var quantity: Quantity?
	
	/// Level of confidence interval, eg 0.95 for 95% confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower and upper bound values of the attribute estimate
	public var range: Range?
	
	/// A nested attribute estimate; which is the attribute estimate of an attribute estimate
	public var attributeEstimate: [StatisticAttributeEstimateAttributeEstimate]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attributeEstimate: [StatisticAttributeEstimateAttributeEstimate]? = nil,
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
		self.attributeEstimate = attributeEstimate
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
		case attributeEstimate
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
		self.attributeEstimate = try [StatisticAttributeEstimateAttributeEstimate](from: _container, forKeyIfPresent: .attributeEstimate)
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
		try attributeEstimate?.encode(on: &_container, forKey: .attributeEstimate)
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
		guard let _other = _other as? StatisticAttributeEstimate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attributeEstimate == _other.attributeEstimate
		    && description_fhir == _other.description_fhir
		    && level == _other.level
		    && note == _other.note
		    && quantity == _other.quantity
		    && range == _other.range
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attributeEstimate)
		hasher.combine(description_fhir)
		hasher.combine(level)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(range)
		hasher.combine(type)
	}
}

/**
 A nested attribute estimate; which is the attribute estimate of an attribute estimate.
 */
open class StatisticAttributeEstimateAttributeEstimate: Element {
	
	/// Textual description of the attribute estimate
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnote or explanatory note about the estimate
	public var note: [Annotation]?
	
	/// The type of attribute estimate, eg confidence interval or p value
	public var type: CodeableConcept?
	
	/// The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used
	/// to report unit of measure
	public var quantity: Quantity?
	
	/// Level of confidence interval, eg 0.95 for 95% confidence interval
	public var level: FHIRPrimitive<FHIRDecimal>?
	
	/// Lower and upper bound values of the attribute estimate
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
		guard let _other = _other as? StatisticAttributeEstimateAttributeEstimate else {
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
 Model characteristic.
 
 A component of the method to generate the statistic.
 */
open class StatisticModelCharacteristic: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Model specification
	public var code: CodeableConcept?
	
	/// Model specification details
	/// One of `value[x]`
	public var value: ValueX?
	
	/// A variable adjusted for in the adjusted analysis
	public var variable: [StatisticModelCharacteristicVariable]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							value: ValueX? = nil,
							variable: [StatisticModelCharacteristicVariable]? = nil)
	{
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.value = value
		self.variable = variable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case variable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
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
		self.value = _t_value
		self.variable = try [StatisticModelCharacteristicVariable](from: _container, forKeyIfPresent: .variable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
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
			}
		}
		try variable?.encode(on: &_container, forKey: .variable)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StatisticModelCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
		    && variable == _other.variable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
		hasher.combine(variable)
	}
}

/**
 A variable adjusted for in the adjusted analysis.
 */
open class StatisticModelCharacteristicVariable: Element {
	
	/// Description of the variable
	public var variableDefinition: Reference
	
	/// How the variable is classified for use in adjusted analysis.
	public var handling: FHIRPrimitive<EvidenceVariableHandling>?
	
	/// Description for grouping of ordinal or polychotomous variables
	public var valueCategory: [CodeableConcept]?
	
	/// Discrete value for grouping of ordinal or polychotomous variables
	public var valueQuantity: [Quantity]?
	
	/// Range of values for grouping of ordinal or polychotomous variables
	public var valueRange: [Range]?
	
	/// Designated initializer taking all required properties
	public init(variableDefinition: Reference) {
		self.variableDefinition = variableDefinition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							handling: FHIRPrimitive<EvidenceVariableHandling>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							valueCategory: [CodeableConcept]? = nil,
							valueQuantity: [Quantity]? = nil,
							valueRange: [Range]? = nil,
							variableDefinition: Reference)
	{
		self.init(variableDefinition: variableDefinition)
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.valueCategory = valueCategory
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case handling; case _handling
		case valueCategory
		case valueQuantity
		case valueRange
		case variableDefinition
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.handling = try FHIRPrimitive<EvidenceVariableHandling>(from: _container, forKeyIfPresent: .handling, auxiliaryKey: ._handling)
		self.valueCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCategory)
		self.valueQuantity = try [Quantity](from: _container, forKeyIfPresent: .valueQuantity)
		self.valueRange = try [Range](from: _container, forKeyIfPresent: .valueRange)
		self.variableDefinition = try Reference(from: _container, forKey: .variableDefinition)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try handling?.encode(on: &_container, forKey: .handling, auxiliaryKey: ._handling)
		try valueCategory?.encode(on: &_container, forKey: .valueCategory)
		try valueQuantity?.encode(on: &_container, forKey: .valueQuantity)
		try valueRange?.encode(on: &_container, forKey: .valueRange)
		try variableDefinition.encode(on: &_container, forKey: .variableDefinition)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StatisticModelCharacteristicVariable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return handling == _other.handling
		    && valueCategory == _other.valueCategory
		    && valueQuantity == _other.valueQuantity
		    && valueRange == _other.valueRange
		    && variableDefinition == _other.variableDefinition
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(handling)
		hasher.combine(valueCategory)
		hasher.combine(valueQuantity)
		hasher.combine(valueRange)
		hasher.combine(variableDefinition)
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
							numberOfStudies: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.knownDataCount = knownDataCount
		self.note = note
		self.numberOfParticipants = numberOfParticipants
		self.numberOfStudies = numberOfStudies
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case knownDataCount; case _knownDataCount
		case note
		case numberOfParticipants; case _numberOfParticipants
		case numberOfStudies; case _numberOfStudies
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
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(knownDataCount)
		hasher.combine(note)
		hasher.combine(numberOfParticipants)
		hasher.combine(numberOfStudies)
	}
}
