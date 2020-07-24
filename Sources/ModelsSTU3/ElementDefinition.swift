//
//  ElementDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ElementDefinition)
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
 Definition of an element in a resource or extension.
 
 Captures constraints on each element within the resource, profile, or extension.
 */
open class ElementDefinition: Element {
	
	/// All possible types for "defaultValue[x]"
	public enum DefaultValueX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "fixed[x]"
	public enum FixedX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "maxValue[x]"
	public enum MaxValueX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case time(FHIRPrimitive<FHIRTime>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "minValue[x]"
	public enum MinValueX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case time(FHIRPrimitive<FHIRTime>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "pattern[x]"
	public enum PatternX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Path of the element in the hierarchy of elements
	public var path: FHIRPrimitive<FHIRString>
	
	/// Codes that define how this element is represented in instances, when the deviation varies from the normal case.
	public var representation: [FHIRPrimitive<PropertyRepresentation>]?
	
	/// Name for this particular element (in a set of slices)
	public var sliceName: FHIRPrimitive<FHIRString>?
	
	/// Name for element to display with or prompt for element
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Corresponding codes in terminologies
	public var code: [Coding]?
	
	/// This element is sliced - slices follow
	public var slicing: ElementDefinitionSlicing?
	
	/// Concise definition for space-constrained presentation
	public var short: FHIRPrimitive<FHIRString>?
	
	/// Full formal definition as narrative text
	public var definition: FHIRPrimitive<FHIRString>?
	
	/// Comments about the use of this element
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Why this resource has been created
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Other names
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Minimum Cardinality
	public var min: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Maximum Cardinality (a number or *)
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Base definition information for tools
	public var base: ElementDefinitionBase?
	
	/// Reference to definition of content for the element
	public var contentReference: FHIRPrimitive<FHIRURI>?
	
	/// Data type and Profile for this element
	public var type: [ElementDefinitionType]?
	
	/// Specified value if missing from instance
	/// One of `defaultValue[x]`
	public var defaultValue: DefaultValueX?
	
	/// Implicit meaning when this element is missing
	public var meaningWhenMissing: FHIRPrimitive<FHIRString>?
	
	/// What the order of the elements means
	public var orderMeaning: FHIRPrimitive<FHIRString>?
	
	/// Value must be exactly this
	/// One of `fixed[x]`
	public var fixed: FixedX?
	
	/// Value must have at least these property values
	/// One of `pattern[x]`
	public var pattern: PatternX?
	
	/// Example value (as defined for type)
	public var example: [ElementDefinitionExample]?
	
	/// Minimum Allowed Value (for some types)
	/// One of `minValue[x]`
	public var minValue: MinValueX?
	
	/// Maximum Allowed Value (for some types)
	/// One of `maxValue[x]`
	public var maxValue: MaxValueX?
	
	/// Max length for strings
	public var maxLength: FHIRPrimitive<FHIRInteger>?
	
	/// Reference to invariant about presence
	public var condition: [FHIRPrimitive<FHIRString>]?
	
	/// Condition that must evaluate to true
	public var constraint: [ElementDefinitionConstraint]?
	
	/// If the element must supported
	public var mustSupport: FHIRPrimitive<FHIRBool>?
	
	/// If this modifies the meaning of other elements
	public var isModifier: FHIRPrimitive<FHIRBool>?
	
	/// Include when _summary = true?
	public var isSummary: FHIRPrimitive<FHIRBool>?
	
	/// ValueSet details if this is coded
	public var binding: ElementDefinitionBinding?
	
	/// Map element to another set of definitions
	public var mapping: [ElementDefinitionMapping]?
	
	/// Designated initializer taking all required properties
	public init(path: FHIRPrimitive<FHIRString>) {
		self.path = path
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							alias: [FHIRPrimitive<FHIRString>]? = nil,
							base: ElementDefinitionBase? = nil,
							binding: ElementDefinitionBinding? = nil,
							code: [Coding]? = nil,
							comment: FHIRPrimitive<FHIRString>? = nil,
							condition: [FHIRPrimitive<FHIRString>]? = nil,
							constraint: [ElementDefinitionConstraint]? = nil,
							contentReference: FHIRPrimitive<FHIRURI>? = nil,
							defaultValue: DefaultValueX? = nil,
							definition: FHIRPrimitive<FHIRString>? = nil,
							example: [ElementDefinitionExample]? = nil,
							`extension`: [Extension]? = nil,
							fixed: FixedX? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isModifier: FHIRPrimitive<FHIRBool>? = nil,
							isSummary: FHIRPrimitive<FHIRBool>? = nil,
							label: FHIRPrimitive<FHIRString>? = nil,
							mapping: [ElementDefinitionMapping]? = nil,
							max: FHIRPrimitive<FHIRString>? = nil,
							maxLength: FHIRPrimitive<FHIRInteger>? = nil,
							maxValue: MaxValueX? = nil,
							meaningWhenMissing: FHIRPrimitive<FHIRString>? = nil,
							min: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							minValue: MinValueX? = nil,
							mustSupport: FHIRPrimitive<FHIRBool>? = nil,
							orderMeaning: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>,
							pattern: PatternX? = nil,
							representation: [FHIRPrimitive<PropertyRepresentation>]? = nil,
							requirements: FHIRPrimitive<FHIRString>? = nil,
							short: FHIRPrimitive<FHIRString>? = nil,
							sliceName: FHIRPrimitive<FHIRString>? = nil,
							slicing: ElementDefinitionSlicing? = nil,
							type: [ElementDefinitionType]? = nil)
	{
		self.init(path: path)
		self.alias = alias
		self.base = base
		self.binding = binding
		self.code = code
		self.comment = comment
		self.condition = condition
		self.constraint = constraint
		self.contentReference = contentReference
		self.defaultValue = defaultValue
		self.definition = definition
		self.example = example
		self.`extension` = `extension`
		self.fixed = fixed
		self.id = id
		self.isModifier = isModifier
		self.isSummary = isSummary
		self.label = label
		self.mapping = mapping
		self.max = max
		self.maxLength = maxLength
		self.maxValue = maxValue
		self.meaningWhenMissing = meaningWhenMissing
		self.min = min
		self.minValue = minValue
		self.mustSupport = mustSupport
		self.orderMeaning = orderMeaning
		self.pattern = pattern
		self.representation = representation
		self.requirements = requirements
		self.short = short
		self.sliceName = sliceName
		self.slicing = slicing
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alias; case _alias
		case base
		case binding
		case code
		case comment; case _comment
		case condition; case _condition
		case constraint
		case contentReference; case _contentReference
		case defaultValueAddress
		case defaultValueAge
		case defaultValueAnnotation
		case defaultValueAttachment
		case defaultValueBase64Binary; case _defaultValueBase64Binary
		case defaultValueBoolean; case _defaultValueBoolean
		case defaultValueCode; case _defaultValueCode
		case defaultValueCodeableConcept
		case defaultValueCoding
		case defaultValueContactPoint
		case defaultValueCount
		case defaultValueDate; case _defaultValueDate
		case defaultValueDateTime; case _defaultValueDateTime
		case defaultValueDecimal; case _defaultValueDecimal
		case defaultValueDistance
		case defaultValueDuration
		case defaultValueHumanName
		case defaultValueId; case _defaultValueId
		case defaultValueIdentifier
		case defaultValueInstant; case _defaultValueInstant
		case defaultValueInteger; case _defaultValueInteger
		case defaultValueMarkdown; case _defaultValueMarkdown
		case defaultValueMeta
		case defaultValueMoney
		case defaultValueOid; case _defaultValueOid
		case defaultValuePeriod
		case defaultValuePositiveInt; case _defaultValuePositiveInt
		case defaultValueQuantity
		case defaultValueRange
		case defaultValueRatio
		case defaultValueReference
		case defaultValueSampledData
		case defaultValueSignature
		case defaultValueString; case _defaultValueString
		case defaultValueTime; case _defaultValueTime
		case defaultValueTiming
		case defaultValueUnsignedInt; case _defaultValueUnsignedInt
		case defaultValueUri; case _defaultValueUri
		case definition; case _definition
		case example
		case fixedAddress
		case fixedAge
		case fixedAnnotation
		case fixedAttachment
		case fixedBase64Binary; case _fixedBase64Binary
		case fixedBoolean; case _fixedBoolean
		case fixedCode; case _fixedCode
		case fixedCodeableConcept
		case fixedCoding
		case fixedContactPoint
		case fixedCount
		case fixedDate; case _fixedDate
		case fixedDateTime; case _fixedDateTime
		case fixedDecimal; case _fixedDecimal
		case fixedDistance
		case fixedDuration
		case fixedHumanName
		case fixedId; case _fixedId
		case fixedIdentifier
		case fixedInstant; case _fixedInstant
		case fixedInteger; case _fixedInteger
		case fixedMarkdown; case _fixedMarkdown
		case fixedMeta
		case fixedMoney
		case fixedOid; case _fixedOid
		case fixedPeriod
		case fixedPositiveInt; case _fixedPositiveInt
		case fixedQuantity
		case fixedRange
		case fixedRatio
		case fixedReference
		case fixedSampledData
		case fixedSignature
		case fixedString; case _fixedString
		case fixedTime; case _fixedTime
		case fixedTiming
		case fixedUnsignedInt; case _fixedUnsignedInt
		case fixedUri; case _fixedUri
		case isModifier; case _isModifier
		case isSummary; case _isSummary
		case label; case _label
		case mapping
		case max; case _max
		case maxLength; case _maxLength
		case maxValueDate; case _maxValueDate
		case maxValueDateTime; case _maxValueDateTime
		case maxValueDecimal; case _maxValueDecimal
		case maxValueInstant; case _maxValueInstant
		case maxValueInteger; case _maxValueInteger
		case maxValuePositiveInt; case _maxValuePositiveInt
		case maxValueQuantity
		case maxValueTime; case _maxValueTime
		case maxValueUnsignedInt; case _maxValueUnsignedInt
		case meaningWhenMissing; case _meaningWhenMissing
		case min; case _min
		case minValueDate; case _minValueDate
		case minValueDateTime; case _minValueDateTime
		case minValueDecimal; case _minValueDecimal
		case minValueInstant; case _minValueInstant
		case minValueInteger; case _minValueInteger
		case minValuePositiveInt; case _minValuePositiveInt
		case minValueQuantity
		case minValueTime; case _minValueTime
		case minValueUnsignedInt; case _minValueUnsignedInt
		case mustSupport; case _mustSupport
		case orderMeaning; case _orderMeaning
		case path; case _path
		case patternAddress
		case patternAge
		case patternAnnotation
		case patternAttachment
		case patternBase64Binary; case _patternBase64Binary
		case patternBoolean; case _patternBoolean
		case patternCode; case _patternCode
		case patternCodeableConcept
		case patternCoding
		case patternContactPoint
		case patternCount
		case patternDate; case _patternDate
		case patternDateTime; case _patternDateTime
		case patternDecimal; case _patternDecimal
		case patternDistance
		case patternDuration
		case patternHumanName
		case patternId; case _patternId
		case patternIdentifier
		case patternInstant; case _patternInstant
		case patternInteger; case _patternInteger
		case patternMarkdown; case _patternMarkdown
		case patternMeta
		case patternMoney
		case patternOid; case _patternOid
		case patternPeriod
		case patternPositiveInt; case _patternPositiveInt
		case patternQuantity
		case patternRange
		case patternRatio
		case patternReference
		case patternSampledData
		case patternSignature
		case patternString; case _patternString
		case patternTime; case _patternTime
		case patternTiming
		case patternUnsignedInt; case _patternUnsignedInt
		case patternUri; case _patternUri
		case representation; case _representation
		case requirements; case _requirements
		case short; case _short
		case sliceName; case _sliceName
		case slicing
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.base = try ElementDefinitionBase(from: _container, forKeyIfPresent: .base)
		self.binding = try ElementDefinitionBinding(from: _container, forKeyIfPresent: .binding)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.condition = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.constraint = try [ElementDefinitionConstraint](from: _container, forKeyIfPresent: .constraint)
		self.contentReference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .contentReference, auxiliaryKey: ._contentReference)
		var _t_defaultValue: DefaultValueX? = nil
		if let defaultValueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueBase64Binary, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .base64Binary(defaultValueBase64Binary)
		}
		if let defaultValueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueBoolean, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .boolean(defaultValueBoolean)
		}
		if let defaultValueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueCode, auxiliaryKey: ._defaultValueCode) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCode, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .code(defaultValueCode)
		}
		if let defaultValueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .defaultValueDate, auxiliaryKey: ._defaultValueDate) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDate, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .date(defaultValueDate)
		}
		if let defaultValueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .defaultValueDateTime, auxiliaryKey: ._defaultValueDateTime) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDateTime, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .dateTime(defaultValueDateTime)
		}
		if let defaultValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDecimal, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .decimal(defaultValueDecimal)
		}
		if let defaultValueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueId, auxiliaryKey: ._defaultValueId) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueId, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .id(defaultValueId)
		}
		if let defaultValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueInstant, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .instant(defaultValueInstant)
		}
		if let defaultValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueInteger, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .integer(defaultValueInteger)
		}
		if let defaultValueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMarkdown, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .markdown(defaultValueMarkdown)
		}
		if let defaultValueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueOid, auxiliaryKey: ._defaultValueOid) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueOid, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .oid(defaultValueOid)
		}
		if let defaultValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .positiveInt(defaultValuePositiveInt)
		}
		if let defaultValueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueString, auxiliaryKey: ._defaultValueString) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueString, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .string(defaultValueString)
		}
		if let defaultValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .defaultValueTime, auxiliaryKey: ._defaultValueTime) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTime, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .time(defaultValueTime)
		}
		if let defaultValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .unsignedInt(defaultValueUnsignedInt)
		}
		if let defaultValueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueUri, auxiliaryKey: ._defaultValueUri) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUri, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .uri(defaultValueUri)
		}
		if let defaultValueAddress = try Address(from: _container, forKeyIfPresent: .defaultValueAddress) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAddress, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .address(defaultValueAddress)
		}
		if let defaultValueAge = try Age(from: _container, forKeyIfPresent: .defaultValueAge) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAge, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .age(defaultValueAge)
		}
		if let defaultValueAnnotation = try Annotation(from: _container, forKeyIfPresent: .defaultValueAnnotation) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAnnotation, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .annotation(defaultValueAnnotation)
		}
		if let defaultValueAttachment = try Attachment(from: _container, forKeyIfPresent: .defaultValueAttachment) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAttachment, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .attachment(defaultValueAttachment)
		}
		if let defaultValueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .defaultValueCodeableConcept) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .codeableConcept(defaultValueCodeableConcept)
		}
		if let defaultValueCoding = try Coding(from: _container, forKeyIfPresent: .defaultValueCoding) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCoding, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .coding(defaultValueCoding)
		}
		if let defaultValueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .defaultValueContactPoint) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueContactPoint, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .contactPoint(defaultValueContactPoint)
		}
		if let defaultValueCount = try Count(from: _container, forKeyIfPresent: .defaultValueCount) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCount, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .count(defaultValueCount)
		}
		if let defaultValueDistance = try Distance(from: _container, forKeyIfPresent: .defaultValueDistance) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDistance, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .distance(defaultValueDistance)
		}
		if let defaultValueDuration = try Duration(from: _container, forKeyIfPresent: .defaultValueDuration) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDuration, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .duration(defaultValueDuration)
		}
		if let defaultValueHumanName = try HumanName(from: _container, forKeyIfPresent: .defaultValueHumanName) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueHumanName, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .humanName(defaultValueHumanName)
		}
		if let defaultValueIdentifier = try Identifier(from: _container, forKeyIfPresent: .defaultValueIdentifier) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueIdentifier, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .identifier(defaultValueIdentifier)
		}
		if let defaultValueMoney = try Money(from: _container, forKeyIfPresent: .defaultValueMoney) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMoney, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .money(defaultValueMoney)
		}
		if let defaultValuePeriod = try Period(from: _container, forKeyIfPresent: .defaultValuePeriod) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePeriod, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .period(defaultValuePeriod)
		}
		if let defaultValueQuantity = try Quantity(from: _container, forKeyIfPresent: .defaultValueQuantity) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueQuantity, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .quantity(defaultValueQuantity)
		}
		if let defaultValueRange = try Range(from: _container, forKeyIfPresent: .defaultValueRange) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueRange, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .range(defaultValueRange)
		}
		if let defaultValueRatio = try Ratio(from: _container, forKeyIfPresent: .defaultValueRatio) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueRatio, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .ratio(defaultValueRatio)
		}
		if let defaultValueReference = try Reference(from: _container, forKeyIfPresent: .defaultValueReference) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueReference, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .reference(defaultValueReference)
		}
		if let defaultValueSampledData = try SampledData(from: _container, forKeyIfPresent: .defaultValueSampledData) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueSampledData, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .sampledData(defaultValueSampledData)
		}
		if let defaultValueSignature = try Signature(from: _container, forKeyIfPresent: .defaultValueSignature) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueSignature, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .signature(defaultValueSignature)
		}
		if let defaultValueTiming = try Timing(from: _container, forKeyIfPresent: .defaultValueTiming) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTiming, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .timing(defaultValueTiming)
		}
		if let defaultValueMeta = try Meta(from: _container, forKeyIfPresent: .defaultValueMeta) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMeta, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .meta(defaultValueMeta)
		}
		self.defaultValue = _t_defaultValue
		self.definition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.example = try [ElementDefinitionExample](from: _container, forKeyIfPresent: .example)
		var _t_fixed: FixedX? = nil
		if let fixedBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .fixedBase64Binary, auxiliaryKey: ._fixedBase64Binary) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedBase64Binary, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .base64Binary(fixedBase64Binary)
		}
		if let fixedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .fixedBoolean, auxiliaryKey: ._fixedBoolean) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedBoolean, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .boolean(fixedBoolean)
		}
		if let fixedCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedCode, auxiliaryKey: ._fixedCode) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedCode, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .code(fixedCode)
		}
		if let fixedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .fixedDate, auxiliaryKey: ._fixedDate) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedDate, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .date(fixedDate)
		}
		if let fixedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .fixedDateTime, auxiliaryKey: ._fixedDateTime) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedDateTime, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .dateTime(fixedDateTime)
		}
		if let fixedDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .fixedDecimal, auxiliaryKey: ._fixedDecimal) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedDecimal, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .decimal(fixedDecimal)
		}
		if let fixedId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedId, auxiliaryKey: ._fixedId) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedId, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .id(fixedId)
		}
		if let fixedInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .fixedInstant, auxiliaryKey: ._fixedInstant) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedInstant, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .instant(fixedInstant)
		}
		if let fixedInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .fixedInteger, auxiliaryKey: ._fixedInteger) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedInteger, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .integer(fixedInteger)
		}
		if let fixedMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedMarkdown, auxiliaryKey: ._fixedMarkdown) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedMarkdown, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .markdown(fixedMarkdown)
		}
		if let fixedOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .fixedOid, auxiliaryKey: ._fixedOid) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedOid, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .oid(fixedOid)
		}
		if let fixedPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .fixedPositiveInt, auxiliaryKey: ._fixedPositiveInt) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedPositiveInt, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .positiveInt(fixedPositiveInt)
		}
		if let fixedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedString, auxiliaryKey: ._fixedString) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedString, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .string(fixedString)
		}
		if let fixedTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .fixedTime, auxiliaryKey: ._fixedTime) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedTime, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .time(fixedTime)
		}
		if let fixedUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .fixedUnsignedInt, auxiliaryKey: ._fixedUnsignedInt) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedUnsignedInt, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .unsignedInt(fixedUnsignedInt)
		}
		if let fixedUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .fixedUri, auxiliaryKey: ._fixedUri) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedUri, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .uri(fixedUri)
		}
		if let fixedAddress = try Address(from: _container, forKeyIfPresent: .fixedAddress) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedAddress, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .address(fixedAddress)
		}
		if let fixedAge = try Age(from: _container, forKeyIfPresent: .fixedAge) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedAge, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .age(fixedAge)
		}
		if let fixedAnnotation = try Annotation(from: _container, forKeyIfPresent: .fixedAnnotation) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedAnnotation, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .annotation(fixedAnnotation)
		}
		if let fixedAttachment = try Attachment(from: _container, forKeyIfPresent: .fixedAttachment) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedAttachment, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .attachment(fixedAttachment)
		}
		if let fixedCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .fixedCodeableConcept) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedCodeableConcept, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .codeableConcept(fixedCodeableConcept)
		}
		if let fixedCoding = try Coding(from: _container, forKeyIfPresent: .fixedCoding) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedCoding, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .coding(fixedCoding)
		}
		if let fixedContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .fixedContactPoint) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedContactPoint, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .contactPoint(fixedContactPoint)
		}
		if let fixedCount = try Count(from: _container, forKeyIfPresent: .fixedCount) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedCount, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .count(fixedCount)
		}
		if let fixedDistance = try Distance(from: _container, forKeyIfPresent: .fixedDistance) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedDistance, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .distance(fixedDistance)
		}
		if let fixedDuration = try Duration(from: _container, forKeyIfPresent: .fixedDuration) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedDuration, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .duration(fixedDuration)
		}
		if let fixedHumanName = try HumanName(from: _container, forKeyIfPresent: .fixedHumanName) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedHumanName, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .humanName(fixedHumanName)
		}
		if let fixedIdentifier = try Identifier(from: _container, forKeyIfPresent: .fixedIdentifier) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedIdentifier, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .identifier(fixedIdentifier)
		}
		if let fixedMoney = try Money(from: _container, forKeyIfPresent: .fixedMoney) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedMoney, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .money(fixedMoney)
		}
		if let fixedPeriod = try Period(from: _container, forKeyIfPresent: .fixedPeriod) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedPeriod, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .period(fixedPeriod)
		}
		if let fixedQuantity = try Quantity(from: _container, forKeyIfPresent: .fixedQuantity) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedQuantity, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .quantity(fixedQuantity)
		}
		if let fixedRange = try Range(from: _container, forKeyIfPresent: .fixedRange) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedRange, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .range(fixedRange)
		}
		if let fixedRatio = try Ratio(from: _container, forKeyIfPresent: .fixedRatio) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedRatio, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .ratio(fixedRatio)
		}
		if let fixedReference = try Reference(from: _container, forKeyIfPresent: .fixedReference) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedReference, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .reference(fixedReference)
		}
		if let fixedSampledData = try SampledData(from: _container, forKeyIfPresent: .fixedSampledData) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedSampledData, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .sampledData(fixedSampledData)
		}
		if let fixedSignature = try Signature(from: _container, forKeyIfPresent: .fixedSignature) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedSignature, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .signature(fixedSignature)
		}
		if let fixedTiming = try Timing(from: _container, forKeyIfPresent: .fixedTiming) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedTiming, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .timing(fixedTiming)
		}
		if let fixedMeta = try Meta(from: _container, forKeyIfPresent: .fixedMeta) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedMeta, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .meta(fixedMeta)
		}
		self.fixed = _t_fixed
		self.isModifier = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isModifier, auxiliaryKey: ._isModifier)
		self.isSummary = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isSummary, auxiliaryKey: ._isSummary)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.mapping = try [ElementDefinitionMapping](from: _container, forKeyIfPresent: .mapping)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.maxLength = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .maxLength, auxiliaryKey: ._maxLength)
		var _t_maxValue: MaxValueX? = nil
		if let maxValueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .maxValueDate, auxiliaryKey: ._maxValueDate) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueDate, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .date(maxValueDate)
		}
		if let maxValueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .maxValueDateTime, auxiliaryKey: ._maxValueDateTime) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueDateTime, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .dateTime(maxValueDateTime)
		}
		if let maxValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .maxValueInstant, auxiliaryKey: ._maxValueInstant) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueInstant, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .instant(maxValueInstant)
		}
		if let maxValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .maxValueTime, auxiliaryKey: ._maxValueTime) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueTime, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .time(maxValueTime)
		}
		if let maxValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .maxValueDecimal, auxiliaryKey: ._maxValueDecimal) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueDecimal, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .decimal(maxValueDecimal)
		}
		if let maxValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .maxValueInteger, auxiliaryKey: ._maxValueInteger) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueInteger, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .integer(maxValueInteger)
		}
		if let maxValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxValuePositiveInt, auxiliaryKey: ._maxValuePositiveInt) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .positiveInt(maxValuePositiveInt)
		}
		if let maxValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .maxValueUnsignedInt, auxiliaryKey: ._maxValueUnsignedInt) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .unsignedInt(maxValueUnsignedInt)
		}
		if let maxValueQuantity = try Quantity(from: _container, forKeyIfPresent: .maxValueQuantity) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueQuantity, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .quantity(maxValueQuantity)
		}
		self.maxValue = _t_maxValue
		self.meaningWhenMissing = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .meaningWhenMissing, auxiliaryKey: ._meaningWhenMissing)
		self.min = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		var _t_minValue: MinValueX? = nil
		if let minValueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .minValueDate, auxiliaryKey: ._minValueDate) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueDate, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .date(minValueDate)
		}
		if let minValueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .minValueDateTime, auxiliaryKey: ._minValueDateTime) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueDateTime, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .dateTime(minValueDateTime)
		}
		if let minValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .minValueInstant, auxiliaryKey: ._minValueInstant) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueInstant, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .instant(minValueInstant)
		}
		if let minValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .minValueTime, auxiliaryKey: ._minValueTime) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueTime, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .time(minValueTime)
		}
		if let minValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .minValueDecimal, auxiliaryKey: ._minValueDecimal) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueDecimal, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .decimal(minValueDecimal)
		}
		if let minValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .minValueInteger, auxiliaryKey: ._minValueInteger) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueInteger, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .integer(minValueInteger)
		}
		if let minValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .minValuePositiveInt, auxiliaryKey: ._minValuePositiveInt) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .positiveInt(minValuePositiveInt)
		}
		if let minValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .minValueUnsignedInt, auxiliaryKey: ._minValueUnsignedInt) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .unsignedInt(minValueUnsignedInt)
		}
		if let minValueQuantity = try Quantity(from: _container, forKeyIfPresent: .minValueQuantity) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueQuantity, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .quantity(minValueQuantity)
		}
		self.minValue = _t_minValue
		self.mustSupport = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .mustSupport, auxiliaryKey: ._mustSupport)
		self.orderMeaning = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .orderMeaning, auxiliaryKey: ._orderMeaning)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		var _t_pattern: PatternX? = nil
		if let patternBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .patternBase64Binary, auxiliaryKey: ._patternBase64Binary) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternBase64Binary, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .base64Binary(patternBase64Binary)
		}
		if let patternBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .patternBoolean, auxiliaryKey: ._patternBoolean) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternBoolean, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .boolean(patternBoolean)
		}
		if let patternCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternCode, auxiliaryKey: ._patternCode) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternCode, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .code(patternCode)
		}
		if let patternDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .patternDate, auxiliaryKey: ._patternDate) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternDate, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .date(patternDate)
		}
		if let patternDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .patternDateTime, auxiliaryKey: ._patternDateTime) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternDateTime, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .dateTime(patternDateTime)
		}
		if let patternDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .patternDecimal, auxiliaryKey: ._patternDecimal) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternDecimal, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .decimal(patternDecimal)
		}
		if let patternId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternId, auxiliaryKey: ._patternId) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternId, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .id(patternId)
		}
		if let patternInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .patternInstant, auxiliaryKey: ._patternInstant) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternInstant, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .instant(patternInstant)
		}
		if let patternInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .patternInteger, auxiliaryKey: ._patternInteger) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternInteger, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .integer(patternInteger)
		}
		if let patternMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternMarkdown, auxiliaryKey: ._patternMarkdown) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternMarkdown, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .markdown(patternMarkdown)
		}
		if let patternOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .patternOid, auxiliaryKey: ._patternOid) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternOid, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .oid(patternOid)
		}
		if let patternPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .patternPositiveInt, auxiliaryKey: ._patternPositiveInt) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternPositiveInt, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .positiveInt(patternPositiveInt)
		}
		if let patternString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternString, auxiliaryKey: ._patternString) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternString, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .string(patternString)
		}
		if let patternTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .patternTime, auxiliaryKey: ._patternTime) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternTime, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .time(patternTime)
		}
		if let patternUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .patternUnsignedInt, auxiliaryKey: ._patternUnsignedInt) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternUnsignedInt, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .unsignedInt(patternUnsignedInt)
		}
		if let patternUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .patternUri, auxiliaryKey: ._patternUri) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternUri, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .uri(patternUri)
		}
		if let patternAddress = try Address(from: _container, forKeyIfPresent: .patternAddress) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternAddress, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .address(patternAddress)
		}
		if let patternAge = try Age(from: _container, forKeyIfPresent: .patternAge) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternAge, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .age(patternAge)
		}
		if let patternAnnotation = try Annotation(from: _container, forKeyIfPresent: .patternAnnotation) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternAnnotation, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .annotation(patternAnnotation)
		}
		if let patternAttachment = try Attachment(from: _container, forKeyIfPresent: .patternAttachment) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternAttachment, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .attachment(patternAttachment)
		}
		if let patternCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .patternCodeableConcept) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternCodeableConcept, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .codeableConcept(patternCodeableConcept)
		}
		if let patternCoding = try Coding(from: _container, forKeyIfPresent: .patternCoding) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternCoding, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .coding(patternCoding)
		}
		if let patternContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .patternContactPoint) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternContactPoint, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .contactPoint(patternContactPoint)
		}
		if let patternCount = try Count(from: _container, forKeyIfPresent: .patternCount) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternCount, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .count(patternCount)
		}
		if let patternDistance = try Distance(from: _container, forKeyIfPresent: .patternDistance) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternDistance, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .distance(patternDistance)
		}
		if let patternDuration = try Duration(from: _container, forKeyIfPresent: .patternDuration) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternDuration, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .duration(patternDuration)
		}
		if let patternHumanName = try HumanName(from: _container, forKeyIfPresent: .patternHumanName) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternHumanName, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .humanName(patternHumanName)
		}
		if let patternIdentifier = try Identifier(from: _container, forKeyIfPresent: .patternIdentifier) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternIdentifier, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .identifier(patternIdentifier)
		}
		if let patternMoney = try Money(from: _container, forKeyIfPresent: .patternMoney) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternMoney, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .money(patternMoney)
		}
		if let patternPeriod = try Period(from: _container, forKeyIfPresent: .patternPeriod) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternPeriod, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .period(patternPeriod)
		}
		if let patternQuantity = try Quantity(from: _container, forKeyIfPresent: .patternQuantity) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternQuantity, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .quantity(patternQuantity)
		}
		if let patternRange = try Range(from: _container, forKeyIfPresent: .patternRange) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternRange, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .range(patternRange)
		}
		if let patternRatio = try Ratio(from: _container, forKeyIfPresent: .patternRatio) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternRatio, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .ratio(patternRatio)
		}
		if let patternReference = try Reference(from: _container, forKeyIfPresent: .patternReference) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternReference, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .reference(patternReference)
		}
		if let patternSampledData = try SampledData(from: _container, forKeyIfPresent: .patternSampledData) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternSampledData, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .sampledData(patternSampledData)
		}
		if let patternSignature = try Signature(from: _container, forKeyIfPresent: .patternSignature) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternSignature, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .signature(patternSignature)
		}
		if let patternTiming = try Timing(from: _container, forKeyIfPresent: .patternTiming) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternTiming, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .timing(patternTiming)
		}
		if let patternMeta = try Meta(from: _container, forKeyIfPresent: .patternMeta) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternMeta, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .meta(patternMeta)
		}
		self.pattern = _t_pattern
		self.representation = try [FHIRPrimitive<PropertyRepresentation>](from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.short = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .short, auxiliaryKey: ._short)
		self.sliceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sliceName, auxiliaryKey: ._sliceName)
		self.slicing = try ElementDefinitionSlicing(from: _container, forKeyIfPresent: .slicing)
		self.type = try [ElementDefinitionType](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try base?.encode(on: &_container, forKey: .base)
		try binding?.encode(on: &_container, forKey: .binding)
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try constraint?.encode(on: &_container, forKey: .constraint)
		try contentReference?.encode(on: &_container, forKey: .contentReference, auxiliaryKey: ._contentReference)
		if let _enum = defaultValue {
			switch _enum {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCode, auxiliaryKey: ._defaultValueCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDate, auxiliaryKey: ._defaultValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDateTime, auxiliaryKey: ._defaultValueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueId, auxiliaryKey: ._defaultValueId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueOid, auxiliaryKey: ._defaultValueOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueString, auxiliaryKey: ._defaultValueString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueTime, auxiliaryKey: ._defaultValueTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueUri, auxiliaryKey: ._defaultValueUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .defaultValuePeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMeta)
			}
		}
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try example?.encode(on: &_container, forKey: .example)
		if let _enum = fixed {
			switch _enum {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .fixedBase64Binary, auxiliaryKey: ._fixedBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .fixedBoolean, auxiliaryKey: ._fixedBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .fixedCode, auxiliaryKey: ._fixedCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .fixedDate, auxiliaryKey: ._fixedDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .fixedDateTime, auxiliaryKey: ._fixedDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .fixedDecimal, auxiliaryKey: ._fixedDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .fixedId, auxiliaryKey: ._fixedId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .fixedInstant, auxiliaryKey: ._fixedInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .fixedInteger, auxiliaryKey: ._fixedInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .fixedMarkdown, auxiliaryKey: ._fixedMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .fixedOid, auxiliaryKey: ._fixedOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .fixedPositiveInt, auxiliaryKey: ._fixedPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .fixedString, auxiliaryKey: ._fixedString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .fixedTime, auxiliaryKey: ._fixedTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .fixedUnsignedInt, auxiliaryKey: ._fixedUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .fixedUri, auxiliaryKey: ._fixedUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .fixedAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .fixedAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .fixedAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .fixedAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .fixedCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .fixedCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .fixedContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .fixedCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .fixedDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .fixedDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .fixedHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .fixedIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .fixedMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .fixedPeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .fixedQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .fixedRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .fixedRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .fixedReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .fixedSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .fixedSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .fixedTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .fixedMeta)
			}
		}
		try isModifier?.encode(on: &_container, forKey: .isModifier, auxiliaryKey: ._isModifier)
		try isSummary?.encode(on: &_container, forKey: .isSummary, auxiliaryKey: ._isSummary)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try mapping?.encode(on: &_container, forKey: .mapping)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try maxLength?.encode(on: &_container, forKey: .maxLength, auxiliaryKey: ._maxLength)
		if let _enum = maxValue {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .maxValueDate, auxiliaryKey: ._maxValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .maxValueDateTime, auxiliaryKey: ._maxValueDateTime)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .maxValueInstant, auxiliaryKey: ._maxValueInstant)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .maxValueTime, auxiliaryKey: ._maxValueTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .maxValueDecimal, auxiliaryKey: ._maxValueDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .maxValueInteger, auxiliaryKey: ._maxValueInteger)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .maxValuePositiveInt, auxiliaryKey: ._maxValuePositiveInt)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .maxValueUnsignedInt, auxiliaryKey: ._maxValueUnsignedInt)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .maxValueQuantity)
			}
		}
		try meaningWhenMissing?.encode(on: &_container, forKey: .meaningWhenMissing, auxiliaryKey: ._meaningWhenMissing)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		if let _enum = minValue {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .minValueDate, auxiliaryKey: ._minValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .minValueDateTime, auxiliaryKey: ._minValueDateTime)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .minValueInstant, auxiliaryKey: ._minValueInstant)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .minValueTime, auxiliaryKey: ._minValueTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .minValueDecimal, auxiliaryKey: ._minValueDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .minValueInteger, auxiliaryKey: ._minValueInteger)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .minValuePositiveInt, auxiliaryKey: ._minValuePositiveInt)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .minValueUnsignedInt, auxiliaryKey: ._minValueUnsignedInt)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .minValueQuantity)
			}
		}
		try mustSupport?.encode(on: &_container, forKey: .mustSupport, auxiliaryKey: ._mustSupport)
		try orderMeaning?.encode(on: &_container, forKey: .orderMeaning, auxiliaryKey: ._orderMeaning)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		if let _enum = pattern {
			switch _enum {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .patternBase64Binary, auxiliaryKey: ._patternBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .patternBoolean, auxiliaryKey: ._patternBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .patternCode, auxiliaryKey: ._patternCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .patternDate, auxiliaryKey: ._patternDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .patternDateTime, auxiliaryKey: ._patternDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .patternDecimal, auxiliaryKey: ._patternDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .patternId, auxiliaryKey: ._patternId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .patternInstant, auxiliaryKey: ._patternInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .patternInteger, auxiliaryKey: ._patternInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .patternMarkdown, auxiliaryKey: ._patternMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .patternOid, auxiliaryKey: ._patternOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .patternPositiveInt, auxiliaryKey: ._patternPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .patternString, auxiliaryKey: ._patternString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .patternTime, auxiliaryKey: ._patternTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .patternUnsignedInt, auxiliaryKey: ._patternUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .patternUri, auxiliaryKey: ._patternUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .patternAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .patternAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .patternAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .patternAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .patternCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .patternCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .patternContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .patternCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .patternDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .patternDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .patternHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .patternIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .patternMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .patternPeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .patternQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .patternRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .patternRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .patternReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .patternSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .patternSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .patternTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .patternMeta)
			}
		}
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try short?.encode(on: &_container, forKey: .short, auxiliaryKey: ._short)
		try sliceName?.encode(on: &_container, forKey: .sliceName, auxiliaryKey: ._sliceName)
		try slicing?.encode(on: &_container, forKey: .slicing)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alias == _other.alias
		    && base == _other.base
		    && binding == _other.binding
		    && code == _other.code
		    && comment == _other.comment
		    && condition == _other.condition
		    && constraint == _other.constraint
		    && contentReference == _other.contentReference
		    && defaultValue == _other.defaultValue
		    && definition == _other.definition
		    && example == _other.example
		    && fixed == _other.fixed
		    && isModifier == _other.isModifier
		    && isSummary == _other.isSummary
		    && label == _other.label
		    && mapping == _other.mapping
		    && max == _other.max
		    && maxLength == _other.maxLength
		    && maxValue == _other.maxValue
		    && meaningWhenMissing == _other.meaningWhenMissing
		    && min == _other.min
		    && minValue == _other.minValue
		    && mustSupport == _other.mustSupport
		    && orderMeaning == _other.orderMeaning
		    && path == _other.path
		    && pattern == _other.pattern
		    && representation == _other.representation
		    && requirements == _other.requirements
		    && short == _other.short
		    && sliceName == _other.sliceName
		    && slicing == _other.slicing
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alias)
		hasher.combine(base)
		hasher.combine(binding)
		hasher.combine(code)
		hasher.combine(comment)
		hasher.combine(condition)
		hasher.combine(constraint)
		hasher.combine(contentReference)
		hasher.combine(defaultValue)
		hasher.combine(definition)
		hasher.combine(example)
		hasher.combine(fixed)
		hasher.combine(isModifier)
		hasher.combine(isSummary)
		hasher.combine(label)
		hasher.combine(mapping)
		hasher.combine(max)
		hasher.combine(maxLength)
		hasher.combine(maxValue)
		hasher.combine(meaningWhenMissing)
		hasher.combine(min)
		hasher.combine(minValue)
		hasher.combine(mustSupport)
		hasher.combine(orderMeaning)
		hasher.combine(path)
		hasher.combine(pattern)
		hasher.combine(representation)
		hasher.combine(requirements)
		hasher.combine(short)
		hasher.combine(sliceName)
		hasher.combine(slicing)
		hasher.combine(type)
	}
}

/**
 Base definition information for tools.
 
 Information about the base definition of the element, provided to make it unnecessary for tools to trace the deviation
 of the element through the derived and related profiles. This information is provided when the element definition is
 not the original definition of an element - i.g. either in a constraint on another type, or for elements from a super
 type in a snap shot.
 */
open class ElementDefinitionBase: Element {
	
	/// Path that identifies the base element
	public var path: FHIRPrimitive<FHIRString>
	
	/// Min cardinality of the base element
	public var min: FHIRPrimitive<FHIRUnsignedInteger>
	
	/// Max cardinality of the base element
	public var max: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(max: FHIRPrimitive<FHIRString>, min: FHIRPrimitive<FHIRUnsignedInteger>, path: FHIRPrimitive<FHIRString>) {
		self.max = max
		self.min = min
		self.path = path
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							max: FHIRPrimitive<FHIRString>,
							min: FHIRPrimitive<FHIRUnsignedInteger>,
							path: FHIRPrimitive<FHIRString>)
	{
		self.init(max: max, min: min, path: path)
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case max; case _max
		case min; case _min
		case path; case _path
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKey: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try max.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionBase else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return max == _other.max
		    && min == _other.min
		    && path == _other.path
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(path)
	}
}

/**
 ValueSet details if this is coded.
 
 Binds to a value set if this element is coded (code, Coding, CodeableConcept, Quantity), or the data types (string,
 uri).
 */
open class ElementDefinitionBinding: Element {
	
	/// All possible types for "valueSet[x]"
	public enum ValueSetX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: FHIRPrimitive<BindingStrength>
	
	/// Human explanation of the value set
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Source of value set
	/// One of `valueSet[x]`
	public var valueSet: ValueSetX?
	
	/// Designated initializer taking all required properties
	public init(strength: FHIRPrimitive<BindingStrength>) {
		self.strength = strength
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							strength: FHIRPrimitive<BindingStrength>,
							valueSet: ValueSetX? = nil)
	{
		self.init(strength: strength)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case strength; case _strength
		case valueSetReference
		case valueSetUri; case _valueSetUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.strength = try FHIRPrimitive<BindingStrength>(from: _container, forKey: .strength, auxiliaryKey: ._strength)
		var _t_valueSet: ValueSetX? = nil
		if let valueSetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueSetUri, auxiliaryKey: ._valueSetUri) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetUri, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .uri(valueSetUri)
		}
		if let valueSetReference = try Reference(from: _container, forKeyIfPresent: .valueSetReference) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetReference, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .reference(valueSetReference)
		}
		self.valueSet = _t_valueSet
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try strength.encode(on: &_container, forKey: .strength, auxiliaryKey: ._strength)
		if let _enum = valueSet {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueSetUri, auxiliaryKey: ._valueSetUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueSetReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionBinding else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && strength == _other.strength
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(strength)
		hasher.combine(valueSet)
	}
}

/**
 Condition that must evaluate to true.
 
 Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the context
 of the instance.
 */
open class ElementDefinitionConstraint: Element {
	
	/// Target of 'condition' reference above
	public var key: FHIRPrimitive<FHIRString>
	
	/// Why this constraint is necessary or appropriate
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Identifies the impact constraint violation has on the conformance of the instance.
	public var severity: FHIRPrimitive<ConstraintSeverity>
	
	/// Human description of constraint
	public var human: FHIRPrimitive<FHIRString>
	
	/// FHIRPath expression of constraint
	public var expression: FHIRPrimitive<FHIRString>
	
	/// XPath expression of constraint
	public var xpath: FHIRPrimitive<FHIRString>?
	
	/// Reference to original source of constraint
	public var source: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(expression: FHIRPrimitive<FHIRString>, human: FHIRPrimitive<FHIRString>, key: FHIRPrimitive<FHIRString>, severity: FHIRPrimitive<ConstraintSeverity>) {
		self.expression = expression
		self.human = human
		self.key = key
		self.severity = severity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							expression: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							human: FHIRPrimitive<FHIRString>,
							id: FHIRPrimitive<FHIRString>? = nil,
							key: FHIRPrimitive<FHIRString>,
							requirements: FHIRPrimitive<FHIRString>? = nil,
							severity: FHIRPrimitive<ConstraintSeverity>,
							source: FHIRPrimitive<FHIRURI>? = nil,
							xpath: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(expression: expression, human: human, key: key, severity: severity)
		self.`extension` = `extension`
		self.id = id
		self.requirements = requirements
		self.source = source
		self.xpath = xpath
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expression; case _expression
		case human; case _human
		case key; case _key
		case requirements; case _requirements
		case severity; case _severity
		case source; case _source
		case xpath; case _xpath
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKey: .expression, auxiliaryKey: ._expression)
		self.human = try FHIRPrimitive<FHIRString>(from: _container, forKey: .human, auxiliaryKey: ._human)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.severity = try FHIRPrimitive<ConstraintSeverity>(from: _container, forKey: .severity, auxiliaryKey: ._severity)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.xpath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .xpath, auxiliaryKey: ._xpath)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expression.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try human.encode(on: &_container, forKey: .human, auxiliaryKey: ._human)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try severity.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try xpath?.encode(on: &_container, forKey: .xpath, auxiliaryKey: ._xpath)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionConstraint else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expression == _other.expression
		    && human == _other.human
		    && key == _other.key
		    && requirements == _other.requirements
		    && severity == _other.severity
		    && source == _other.source
		    && xpath == _other.xpath
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expression)
		hasher.combine(human)
		hasher.combine(key)
		hasher.combine(requirements)
		hasher.combine(severity)
		hasher.combine(source)
		hasher.combine(xpath)
	}
}

/**
 Example value (as defined for type).
 
 A sample value for this element demonstrating the type of information that would typically be found in the element.
 */
open class ElementDefinitionExample: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Describes the purpose of this example
	public var label: FHIRPrimitive<FHIRString>
	
	/// Value of Example (one of allowed types)
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(label: FHIRPrimitive<FHIRString>, value: ValueX) {
		self.label = label
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							label: FHIRPrimitive<FHIRString>,
							value: ValueX)
	{
		self.init(label: label, value: value)
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case label; case _label
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCoding
		case valueContactPoint
		case valueCount
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDuration
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueReference
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAddress) || _container.contains(CodingKeys.valueAge) || _container.contains(CodingKeys.valueAnnotation) || _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBase64Binary) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueContactPoint) || _container.contains(CodingKeys.valueCount) || _container.contains(CodingKeys.valueDate) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueDistance) || _container.contains(CodingKeys.valueDuration) || _container.contains(CodingKeys.valueHumanName) || _container.contains(CodingKeys.valueId) || _container.contains(CodingKeys.valueIdentifier) || _container.contains(CodingKeys.valueInstant) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueMarkdown) || _container.contains(CodingKeys.valueMeta) || _container.contains(CodingKeys.valueMoney) || _container.contains(CodingKeys.valueOid) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valuePositiveInt) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueSampledData) || _container.contains(CodingKeys.valueSignature) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) || _container.contains(CodingKeys.valueTiming) || _container.contains(CodingKeys.valueUnsignedInt) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAddress, CodingKeys.valueAge, CodingKeys.valueAnnotation, CodingKeys.valueAttachment, CodingKeys.valueBase64Binary, CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCodeableConcept, CodingKeys.valueCoding, CodingKeys.valueContactPoint, CodingKeys.valueCount, CodingKeys.valueDate, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueDistance, CodingKeys.valueDuration, CodingKeys.valueHumanName, CodingKeys.valueId, CodingKeys.valueIdentifier, CodingKeys.valueInstant, CodingKeys.valueInteger, CodingKeys.valueMarkdown, CodingKeys.valueMeta, CodingKeys.valueMoney, CodingKeys.valueOid, CodingKeys.valuePeriod, CodingKeys.valuePositiveInt, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueReference, CodingKeys.valueSampledData, CodingKeys.valueSignature, CodingKeys.valueString, CodingKeys.valueTime, CodingKeys.valueTiming, CodingKeys.valueUnsignedInt, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKey: .label, auxiliaryKey: ._label)
		var _t_value: ValueX? = nil
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .valueInstant, auxiliaryKey: ._valueInstant) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInstant, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .instant(valueInstant)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .unsignedInt(valueUnsignedInt)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAddress, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .address(valueAddress)
		}
		if let valueAge = try Age(from: _container, forKeyIfPresent: .valueAge) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAge, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .age(valueAge)
		}
		if let valueAnnotation = try Annotation(from: _container, forKeyIfPresent: .valueAnnotation) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAnnotation, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .annotation(valueAnnotation)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .valueContactPoint) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactPoint, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactPoint(valueContactPoint)
		}
		if let valueCount = try Count(from: _container, forKeyIfPresent: .valueCount) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCount, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .count(valueCount)
		}
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
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
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueSampledData = try SampledData(from: _container, forKeyIfPresent: .valueSampledData) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSampledData, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .sampledData(valueSampledData)
		}
		if let valueSignature = try Signature(from: _container, forKeyIfPresent: .valueSignature) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSignature, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .signature(valueSignature)
		}
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try label.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		
			switch value {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .valueAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .valueAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .valueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .valueContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .valueCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .valueDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .valueHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .valueIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .valueMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .valueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .valueSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .valueTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .valueMeta)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionExample else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return label == _other.label
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(label)
		hasher.combine(value)
	}
}

/**
 Map element to another set of definitions.
 
 Identifies a concept from an external specification that roughly corresponds to this element.
 */
open class ElementDefinitionMapping: Element {
	
	/// Reference to mapping declaration
	public var identity: FHIRPrimitive<FHIRString>
	
	/// Computable language of mapping
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Details of the mapping
	public var map: FHIRPrimitive<FHIRString>
	
	/// Comments about the mapping or its use
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(identity: FHIRPrimitive<FHIRString>, map: FHIRPrimitive<FHIRString>) {
		self.identity = identity
		self.map = map
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comment: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identity: FHIRPrimitive<FHIRString>,
							language: FHIRPrimitive<FHIRString>? = nil,
							map: FHIRPrimitive<FHIRString>)
	{
		self.init(identity: identity, map: map)
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.language = language
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case identity; case _identity
		case language; case _language
		case map; case _map
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.identity = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identity, auxiliaryKey: ._identity)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.map = try FHIRPrimitive<FHIRString>(from: _container, forKey: .map, auxiliaryKey: ._map)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try identity.encode(on: &_container, forKey: .identity, auxiliaryKey: ._identity)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try map.encode(on: &_container, forKey: .map, auxiliaryKey: ._map)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionMapping else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comment == _other.comment
		    && identity == _other.identity
		    && language == _other.language
		    && map == _other.map
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(identity)
		hasher.combine(language)
		hasher.combine(map)
	}
}

/**
 This element is sliced - slices follow.
 
 Indicates that the element is sliced into a set of alternative definitions (i.e. in a structure definition, there are
 multiple different constraints on a single element in the base resource). Slicing can be used in any resource that has
 cardinality ..* on the base resource, or any resource with a choice of types. The set of slices is any elements that
 come after this in the element sequence that have the same path, until a shorter path occurs (the shorter path
 terminates the set).
 */
open class ElementDefinitionSlicing: Element {
	
	/// Element values that are used to distinguish the slices
	public var discriminator: [ElementDefinitionSlicingDiscriminator]?
	
	/// Text description of how slicing works (or not)
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If elements must be in same order as slices
	public var ordered: FHIRPrimitive<FHIRBool>?
	
	/// Whether additional slices are allowed or not. When the slices are ordered, profile authors can also say that
	/// additional slices are only allowed at the end.
	public var rules: FHIRPrimitive<SlicingRules>
	
	/// Designated initializer taking all required properties
	public init(rules: FHIRPrimitive<SlicingRules>) {
		self.rules = rules
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							discriminator: [ElementDefinitionSlicingDiscriminator]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							ordered: FHIRPrimitive<FHIRBool>? = nil,
							rules: FHIRPrimitive<SlicingRules>)
	{
		self.init(rules: rules)
		self.description_fhir = description_fhir
		self.discriminator = discriminator
		self.`extension` = `extension`
		self.id = id
		self.ordered = ordered
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case discriminator
		case ordered; case _ordered
		case rules; case _rules
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.discriminator = try [ElementDefinitionSlicingDiscriminator](from: _container, forKeyIfPresent: .discriminator)
		self.ordered = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .ordered, auxiliaryKey: ._ordered)
		self.rules = try FHIRPrimitive<SlicingRules>(from: _container, forKey: .rules, auxiliaryKey: ._rules)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try discriminator?.encode(on: &_container, forKey: .discriminator)
		try ordered?.encode(on: &_container, forKey: .ordered, auxiliaryKey: ._ordered)
		try rules.encode(on: &_container, forKey: .rules, auxiliaryKey: ._rules)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionSlicing else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && discriminator == _other.discriminator
		    && ordered == _other.ordered
		    && rules == _other.rules
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(discriminator)
		hasher.combine(ordered)
		hasher.combine(rules)
	}
}

/**
 Element values that are used to distinguish the slices.
 
 Designates which child elements are used to discriminate between the slices when processing an instance. If one or more
 discriminators are provided, the value of the child elements in the instance data SHALL completely distinguish which
 slice the element in the resource matches based on the allowed values for those elements in each of the slices.
 */
open class ElementDefinitionSlicingDiscriminator: Element {
	
	/// How the element value is interpreted when discrimination is evaluated.
	public var type: FHIRPrimitive<DiscriminatorType>
	
	/// Path to element value
	public var path: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(path: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<DiscriminatorType>) {
		self.path = path
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>,
							type: FHIRPrimitive<DiscriminatorType>)
	{
		self.init(path: path, type: type)
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case path; case _path
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		self.type = try FHIRPrimitive<DiscriminatorType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionSlicingDiscriminator else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return path == _other.path
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(path)
		hasher.combine(type)
	}
}

/**
 Data type and Profile for this element.
 
 The data type or resource that the value of this element is permitted to be.
 */
open class ElementDefinitionType: Element {
	
	/// Data type or Resource (reference to definition)
	public var code: FHIRPrimitive<FHIRURI>
	
	/// Profile (StructureDefinition) to apply (or IG)
	public var profile: FHIRPrimitive<FHIRURI>?
	
	/// Profile (StructureDefinition) to apply to reference target (or IG)
	public var targetProfile: FHIRPrimitive<FHIRURI>?
	
	/// If the type is a reference to another resource, how the resource is or can be aggregated - is it a contained
	/// resource, or a reference, and if the context is a bundle, is it included in the bundle.
	public var aggregation: [FHIRPrimitive<AggregationMode>]?
	
	/// Whether this reference needs to be version specific or version independent, or whether either can be used.
	public var versioning: FHIRPrimitive<ReferenceVersionRules>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRURI>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							aggregation: [FHIRPrimitive<AggregationMode>]? = nil,
							code: FHIRPrimitive<FHIRURI>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							profile: FHIRPrimitive<FHIRURI>? = nil,
							targetProfile: FHIRPrimitive<FHIRURI>? = nil,
							versioning: FHIRPrimitive<ReferenceVersionRules>? = nil)
	{
		self.init(code: code)
		self.aggregation = aggregation
		self.`extension` = `extension`
		self.id = id
		self.profile = profile
		self.targetProfile = targetProfile
		self.versioning = versioning
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case aggregation; case _aggregation
		case code; case _code
		case profile; case _profile
		case targetProfile; case _targetProfile
		case versioning; case _versioning
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.aggregation = try [FHIRPrimitive<AggregationMode>](from: _container, forKeyIfPresent: .aggregation, auxiliaryKey: ._aggregation)
		self.code = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.profile = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.targetProfile = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetProfile, auxiliaryKey: ._targetProfile)
		self.versioning = try FHIRPrimitive<ReferenceVersionRules>(from: _container, forKeyIfPresent: .versioning, auxiliaryKey: ._versioning)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try aggregation?.encode(on: &_container, forKey: .aggregation, auxiliaryKey: ._aggregation)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try targetProfile?.encode(on: &_container, forKey: .targetProfile, auxiliaryKey: ._targetProfile)
		try versioning?.encode(on: &_container, forKey: .versioning, auxiliaryKey: ._versioning)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ElementDefinitionType else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return aggregation == _other.aggregation
		    && code == _other.code
		    && profile == _other.profile
		    && targetProfile == _other.targetProfile
		    && versioning == _other.versioning
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(aggregation)
		hasher.combine(code)
		hasher.combine(profile)
		hasher.combine(targetProfile)
		hasher.combine(versioning)
	}
}
