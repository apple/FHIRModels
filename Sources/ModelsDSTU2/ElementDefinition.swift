//
//  ElementDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ElementDefinition)
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
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
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
	
	/// All possible types for "example[x]"
	public enum ExampleX: Hashable {
		case address(Address)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
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
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
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
		case address(Address)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
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
	
	/// All possible types for "minValue[x]"
	public enum MinValueX: Hashable {
		case address(Address)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
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
	
	/// All possible types for "pattern[x]"
	public enum PatternX: Hashable {
		case address(Address)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
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
	
	/// The path of the element (see the Detailed Descriptions)
	public var path: FHIRPrimitive<FHIRString>
	
	/// Codes that define how this element is represented in instances, when the deviation varies from the normal case.
	/// Restricted to: ['xmlAttr']
	public var representation: [FHIRPrimitive<PropertyRepresentation>]?
	
	/// Name for this particular element definition (reference target)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for element to display with or prompt for element
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Defining code
	public var code: [Coding]?
	
	/// This element is sliced - slices follow
	public var slicing: ElementDefinitionSlicing?
	
	/// Concise definition for xml presentation
	public var short: FHIRPrimitive<FHIRString>?
	
	/// Full formal definition as narrative text
	public var definition: FHIRPrimitive<FHIRString>?
	
	/// Comments about the use of this element
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Why is this needed?
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Other names
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Minimum Cardinality
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Maximum Cardinality (a number or *)
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Base definition information for tools
	public var base: ElementDefinitionBase?
	
	/// Data type and Profile for this element
	public var type: [ElementDefinitionType]?
	
	/// To another element constraint (by element.name)
	public var nameReference: FHIRPrimitive<FHIRString>?
	
	/// Specified value it missing from instance
	/// One of `defaultValue[x]`
	public var defaultValue: DefaultValueX?
	
	/// Implicit meaning when this element is missing
	public var meaningWhenMissing: FHIRPrimitive<FHIRString>?
	
	/// Value must be exactly this
	/// One of `fixed[x]`
	public var fixed: FixedX?
	
	/// Value must have at least these property values
	/// One of `pattern[x]`
	public var pattern: PatternX?
	
	/// Example value: [as defined for type]
	/// One of `example[x]`
	public var example: ExampleX?
	
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
							comments: FHIRPrimitive<FHIRString>? = nil,
							condition: [FHIRPrimitive<FHIRString>]? = nil,
							constraint: [ElementDefinitionConstraint]? = nil,
							defaultValue: DefaultValueX? = nil,
							definition: FHIRPrimitive<FHIRString>? = nil,
							example: ExampleX? = nil,
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
							min: FHIRPrimitive<FHIRInteger>? = nil,
							minValue: MinValueX? = nil,
							mustSupport: FHIRPrimitive<FHIRBool>? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							nameReference: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>,
							pattern: PatternX? = nil,
							representation: [FHIRPrimitive<PropertyRepresentation>]? = nil,
							requirements: FHIRPrimitive<FHIRString>? = nil,
							short: FHIRPrimitive<FHIRString>? = nil,
							slicing: ElementDefinitionSlicing? = nil,
							type: [ElementDefinitionType]? = nil)
	{
		self.init(path: path)
		self.alias = alias
		self.base = base
		self.binding = binding
		self.code = code
		self.comments = comments
		self.condition = condition
		self.constraint = constraint
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
		self.name = name
		self.nameReference = nameReference
		self.pattern = pattern
		self.representation = representation
		self.requirements = requirements
		self.short = short
		self.slicing = slicing
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alias; case _alias
		case base
		case binding
		case code
		case comments; case _comments
		case condition; case _condition
		case constraint
		case defaultValueAddress
		case defaultValueAnnotation
		case defaultValueAttachment
		case defaultValueBase64Binary; case _defaultValueBase64Binary
		case defaultValueBoolean; case _defaultValueBoolean
		case defaultValueCode; case _defaultValueCode
		case defaultValueCodeableConcept
		case defaultValueCoding
		case defaultValueContactPoint
		case defaultValueDate; case _defaultValueDate
		case defaultValueDateTime; case _defaultValueDateTime
		case defaultValueDecimal; case _defaultValueDecimal
		case defaultValueHumanName
		case defaultValueId; case _defaultValueId
		case defaultValueIdentifier
		case defaultValueInstant; case _defaultValueInstant
		case defaultValueInteger; case _defaultValueInteger
		case defaultValueMarkdown; case _defaultValueMarkdown
		case defaultValueMeta
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
		case exampleAddress
		case exampleAnnotation
		case exampleAttachment
		case exampleBase64Binary; case _exampleBase64Binary
		case exampleBoolean; case _exampleBoolean
		case exampleCode; case _exampleCode
		case exampleCodeableConcept
		case exampleCoding
		case exampleContactPoint
		case exampleDate; case _exampleDate
		case exampleDateTime; case _exampleDateTime
		case exampleDecimal; case _exampleDecimal
		case exampleHumanName
		case exampleId; case _exampleId
		case exampleIdentifier
		case exampleInstant; case _exampleInstant
		case exampleInteger; case _exampleInteger
		case exampleMarkdown; case _exampleMarkdown
		case exampleMeta
		case exampleOid; case _exampleOid
		case examplePeriod
		case examplePositiveInt; case _examplePositiveInt
		case exampleQuantity
		case exampleRange
		case exampleRatio
		case exampleReference
		case exampleSampledData
		case exampleSignature
		case exampleString; case _exampleString
		case exampleTime; case _exampleTime
		case exampleTiming
		case exampleUnsignedInt; case _exampleUnsignedInt
		case exampleUri; case _exampleUri
		case fixedAddress
		case fixedAnnotation
		case fixedAttachment
		case fixedBase64Binary; case _fixedBase64Binary
		case fixedBoolean; case _fixedBoolean
		case fixedCode; case _fixedCode
		case fixedCodeableConcept
		case fixedCoding
		case fixedContactPoint
		case fixedDate; case _fixedDate
		case fixedDateTime; case _fixedDateTime
		case fixedDecimal; case _fixedDecimal
		case fixedHumanName
		case fixedId; case _fixedId
		case fixedIdentifier
		case fixedInstant; case _fixedInstant
		case fixedInteger; case _fixedInteger
		case fixedMarkdown; case _fixedMarkdown
		case fixedMeta
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
		case maxValueAddress
		case maxValueAnnotation
		case maxValueAttachment
		case maxValueBase64Binary; case _maxValueBase64Binary
		case maxValueBoolean; case _maxValueBoolean
		case maxValueCode; case _maxValueCode
		case maxValueCodeableConcept
		case maxValueCoding
		case maxValueContactPoint
		case maxValueDate; case _maxValueDate
		case maxValueDateTime; case _maxValueDateTime
		case maxValueDecimal; case _maxValueDecimal
		case maxValueHumanName
		case maxValueId; case _maxValueId
		case maxValueIdentifier
		case maxValueInstant; case _maxValueInstant
		case maxValueInteger; case _maxValueInteger
		case maxValueMarkdown; case _maxValueMarkdown
		case maxValueMeta
		case maxValueOid; case _maxValueOid
		case maxValuePeriod
		case maxValuePositiveInt; case _maxValuePositiveInt
		case maxValueQuantity
		case maxValueRange
		case maxValueRatio
		case maxValueReference
		case maxValueSampledData
		case maxValueSignature
		case maxValueString; case _maxValueString
		case maxValueTime; case _maxValueTime
		case maxValueTiming
		case maxValueUnsignedInt; case _maxValueUnsignedInt
		case maxValueUri; case _maxValueUri
		case meaningWhenMissing; case _meaningWhenMissing
		case min; case _min
		case minValueAddress
		case minValueAnnotation
		case minValueAttachment
		case minValueBase64Binary; case _minValueBase64Binary
		case minValueBoolean; case _minValueBoolean
		case minValueCode; case _minValueCode
		case minValueCodeableConcept
		case minValueCoding
		case minValueContactPoint
		case minValueDate; case _minValueDate
		case minValueDateTime; case _minValueDateTime
		case minValueDecimal; case _minValueDecimal
		case minValueHumanName
		case minValueId; case _minValueId
		case minValueIdentifier
		case minValueInstant; case _minValueInstant
		case minValueInteger; case _minValueInteger
		case minValueMarkdown; case _minValueMarkdown
		case minValueMeta
		case minValueOid; case _minValueOid
		case minValuePeriod
		case minValuePositiveInt; case _minValuePositiveInt
		case minValueQuantity
		case minValueRange
		case minValueRatio
		case minValueReference
		case minValueSampledData
		case minValueSignature
		case minValueString; case _minValueString
		case minValueTime; case _minValueTime
		case minValueTiming
		case minValueUnsignedInt; case _minValueUnsignedInt
		case minValueUri; case _minValueUri
		case mustSupport; case _mustSupport
		case name; case _name
		case nameReference; case _nameReference
		case path; case _path
		case patternAddress
		case patternAnnotation
		case patternAttachment
		case patternBase64Binary; case _patternBase64Binary
		case patternBoolean; case _patternBoolean
		case patternCode; case _patternCode
		case patternCodeableConcept
		case patternCoding
		case patternContactPoint
		case patternDate; case _patternDate
		case patternDateTime; case _patternDateTime
		case patternDecimal; case _patternDecimal
		case patternHumanName
		case patternId; case _patternId
		case patternIdentifier
		case patternInstant; case _patternInstant
		case patternInteger; case _patternInteger
		case patternMarkdown; case _patternMarkdown
		case patternMeta
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
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.condition = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.constraint = try [ElementDefinitionConstraint](from: _container, forKeyIfPresent: .constraint)
		var _t_defaultValue: DefaultValueX? = nil
		if let defaultValueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueBoolean, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .boolean(defaultValueBoolean)
		}
		if let defaultValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueInteger, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .integer(defaultValueInteger)
		}
		if let defaultValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDecimal, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .decimal(defaultValueDecimal)
		}
		if let defaultValueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueBase64Binary, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .base64Binary(defaultValueBase64Binary)
		}
		if let defaultValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueInstant, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .instant(defaultValueInstant)
		}
		if let defaultValueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueString, auxiliaryKey: ._defaultValueString) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueString, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .string(defaultValueString)
		}
		if let defaultValueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueUri, auxiliaryKey: ._defaultValueUri) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUri, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .uri(defaultValueUri)
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
		if let defaultValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .defaultValueTime, auxiliaryKey: ._defaultValueTime) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTime, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .time(defaultValueTime)
		}
		if let defaultValueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueCode, auxiliaryKey: ._defaultValueCode) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCode, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .code(defaultValueCode)
		}
		if let defaultValueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueOid, auxiliaryKey: ._defaultValueOid) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueOid, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .oid(defaultValueOid)
		}
		if let defaultValueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueId, auxiliaryKey: ._defaultValueId) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueId, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .id(defaultValueId)
		}
		if let defaultValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .unsignedInt(defaultValueUnsignedInt)
		}
		if let defaultValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .positiveInt(defaultValuePositiveInt)
		}
		if let defaultValueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMarkdown, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .markdown(defaultValueMarkdown)
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
		if let defaultValueIdentifier = try Identifier(from: _container, forKeyIfPresent: .defaultValueIdentifier) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueIdentifier, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .identifier(defaultValueIdentifier)
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
		if let defaultValuePeriod = try Period(from: _container, forKeyIfPresent: .defaultValuePeriod) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePeriod, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .period(defaultValuePeriod)
		}
		if let defaultValueRatio = try Ratio(from: _container, forKeyIfPresent: .defaultValueRatio) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueRatio, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .ratio(defaultValueRatio)
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
		if let defaultValueHumanName = try HumanName(from: _container, forKeyIfPresent: .defaultValueHumanName) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueHumanName, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .humanName(defaultValueHumanName)
		}
		if let defaultValueAddress = try Address(from: _container, forKeyIfPresent: .defaultValueAddress) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAddress, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .address(defaultValueAddress)
		}
		if let defaultValueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .defaultValueContactPoint) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueContactPoint, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .contactPoint(defaultValueContactPoint)
		}
		if let defaultValueTiming = try Timing(from: _container, forKeyIfPresent: .defaultValueTiming) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTiming, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .timing(defaultValueTiming)
		}
		if let defaultValueReference = try Reference(from: _container, forKeyIfPresent: .defaultValueReference) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueReference, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .reference(defaultValueReference)
		}
		if let defaultValueMeta = try Meta(from: _container, forKeyIfPresent: .defaultValueMeta) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMeta, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .meta(defaultValueMeta)
		}
		self.defaultValue = _t_defaultValue
		self.definition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		var _t_example: ExampleX? = nil
		if let exampleBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exampleBoolean, auxiliaryKey: ._exampleBoolean) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleBoolean, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .boolean(exampleBoolean)
		}
		if let exampleInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .exampleInteger, auxiliaryKey: ._exampleInteger) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleInteger, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .integer(exampleInteger)
		}
		if let exampleDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .exampleDecimal, auxiliaryKey: ._exampleDecimal) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleDecimal, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .decimal(exampleDecimal)
		}
		if let exampleBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .exampleBase64Binary, auxiliaryKey: ._exampleBase64Binary) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleBase64Binary, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .base64Binary(exampleBase64Binary)
		}
		if let exampleInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .exampleInstant, auxiliaryKey: ._exampleInstant) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleInstant, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .instant(exampleInstant)
		}
		if let exampleString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exampleString, auxiliaryKey: ._exampleString) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleString, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .string(exampleString)
		}
		if let exampleUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .exampleUri, auxiliaryKey: ._exampleUri) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleUri, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .uri(exampleUri)
		}
		if let exampleDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .exampleDate, auxiliaryKey: ._exampleDate) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleDate, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .date(exampleDate)
		}
		if let exampleDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .exampleDateTime, auxiliaryKey: ._exampleDateTime) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleDateTime, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .dateTime(exampleDateTime)
		}
		if let exampleTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .exampleTime, auxiliaryKey: ._exampleTime) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleTime, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .time(exampleTime)
		}
		if let exampleCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exampleCode, auxiliaryKey: ._exampleCode) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleCode, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .code(exampleCode)
		}
		if let exampleOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .exampleOid, auxiliaryKey: ._exampleOid) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleOid, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .oid(exampleOid)
		}
		if let exampleId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exampleId, auxiliaryKey: ._exampleId) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleId, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .id(exampleId)
		}
		if let exampleUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .exampleUnsignedInt, auxiliaryKey: ._exampleUnsignedInt) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleUnsignedInt, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .unsignedInt(exampleUnsignedInt)
		}
		if let examplePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .examplePositiveInt, auxiliaryKey: ._examplePositiveInt) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .examplePositiveInt, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .positiveInt(examplePositiveInt)
		}
		if let exampleMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exampleMarkdown, auxiliaryKey: ._exampleMarkdown) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleMarkdown, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .markdown(exampleMarkdown)
		}
		if let exampleAnnotation = try Annotation(from: _container, forKeyIfPresent: .exampleAnnotation) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleAnnotation, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .annotation(exampleAnnotation)
		}
		if let exampleAttachment = try Attachment(from: _container, forKeyIfPresent: .exampleAttachment) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleAttachment, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .attachment(exampleAttachment)
		}
		if let exampleIdentifier = try Identifier(from: _container, forKeyIfPresent: .exampleIdentifier) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleIdentifier, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .identifier(exampleIdentifier)
		}
		if let exampleCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .exampleCodeableConcept) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleCodeableConcept, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .codeableConcept(exampleCodeableConcept)
		}
		if let exampleCoding = try Coding(from: _container, forKeyIfPresent: .exampleCoding) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleCoding, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .coding(exampleCoding)
		}
		if let exampleQuantity = try Quantity(from: _container, forKeyIfPresent: .exampleQuantity) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleQuantity, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .quantity(exampleQuantity)
		}
		if let exampleRange = try Range(from: _container, forKeyIfPresent: .exampleRange) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleRange, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .range(exampleRange)
		}
		if let examplePeriod = try Period(from: _container, forKeyIfPresent: .examplePeriod) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .examplePeriod, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .period(examplePeriod)
		}
		if let exampleRatio = try Ratio(from: _container, forKeyIfPresent: .exampleRatio) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleRatio, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .ratio(exampleRatio)
		}
		if let exampleSampledData = try SampledData(from: _container, forKeyIfPresent: .exampleSampledData) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleSampledData, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .sampledData(exampleSampledData)
		}
		if let exampleSignature = try Signature(from: _container, forKeyIfPresent: .exampleSignature) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleSignature, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .signature(exampleSignature)
		}
		if let exampleHumanName = try HumanName(from: _container, forKeyIfPresent: .exampleHumanName) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleHumanName, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .humanName(exampleHumanName)
		}
		if let exampleAddress = try Address(from: _container, forKeyIfPresent: .exampleAddress) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleAddress, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .address(exampleAddress)
		}
		if let exampleContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .exampleContactPoint) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleContactPoint, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .contactPoint(exampleContactPoint)
		}
		if let exampleTiming = try Timing(from: _container, forKeyIfPresent: .exampleTiming) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleTiming, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .timing(exampleTiming)
		}
		if let exampleReference = try Reference(from: _container, forKeyIfPresent: .exampleReference) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleReference, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .reference(exampleReference)
		}
		if let exampleMeta = try Meta(from: _container, forKeyIfPresent: .exampleMeta) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleMeta, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .meta(exampleMeta)
		}
		self.example = _t_example
		var _t_fixed: FixedX? = nil
		if let fixedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .fixedBoolean, auxiliaryKey: ._fixedBoolean) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedBoolean, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .boolean(fixedBoolean)
		}
		if let fixedInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .fixedInteger, auxiliaryKey: ._fixedInteger) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedInteger, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .integer(fixedInteger)
		}
		if let fixedDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .fixedDecimal, auxiliaryKey: ._fixedDecimal) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedDecimal, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .decimal(fixedDecimal)
		}
		if let fixedBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .fixedBase64Binary, auxiliaryKey: ._fixedBase64Binary) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedBase64Binary, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .base64Binary(fixedBase64Binary)
		}
		if let fixedInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .fixedInstant, auxiliaryKey: ._fixedInstant) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedInstant, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .instant(fixedInstant)
		}
		if let fixedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedString, auxiliaryKey: ._fixedString) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedString, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .string(fixedString)
		}
		if let fixedUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .fixedUri, auxiliaryKey: ._fixedUri) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedUri, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .uri(fixedUri)
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
		if let fixedTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .fixedTime, auxiliaryKey: ._fixedTime) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedTime, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .time(fixedTime)
		}
		if let fixedCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedCode, auxiliaryKey: ._fixedCode) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedCode, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .code(fixedCode)
		}
		if let fixedOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .fixedOid, auxiliaryKey: ._fixedOid) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedOid, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .oid(fixedOid)
		}
		if let fixedId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedId, auxiliaryKey: ._fixedId) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedId, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .id(fixedId)
		}
		if let fixedUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .fixedUnsignedInt, auxiliaryKey: ._fixedUnsignedInt) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedUnsignedInt, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .unsignedInt(fixedUnsignedInt)
		}
		if let fixedPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .fixedPositiveInt, auxiliaryKey: ._fixedPositiveInt) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedPositiveInt, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .positiveInt(fixedPositiveInt)
		}
		if let fixedMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fixedMarkdown, auxiliaryKey: ._fixedMarkdown) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedMarkdown, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .markdown(fixedMarkdown)
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
		if let fixedIdentifier = try Identifier(from: _container, forKeyIfPresent: .fixedIdentifier) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedIdentifier, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .identifier(fixedIdentifier)
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
		if let fixedPeriod = try Period(from: _container, forKeyIfPresent: .fixedPeriod) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedPeriod, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .period(fixedPeriod)
		}
		if let fixedRatio = try Ratio(from: _container, forKeyIfPresent: .fixedRatio) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedRatio, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .ratio(fixedRatio)
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
		if let fixedHumanName = try HumanName(from: _container, forKeyIfPresent: .fixedHumanName) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedHumanName, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .humanName(fixedHumanName)
		}
		if let fixedAddress = try Address(from: _container, forKeyIfPresent: .fixedAddress) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedAddress, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .address(fixedAddress)
		}
		if let fixedContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .fixedContactPoint) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedContactPoint, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .contactPoint(fixedContactPoint)
		}
		if let fixedTiming = try Timing(from: _container, forKeyIfPresent: .fixedTiming) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedTiming, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .timing(fixedTiming)
		}
		if let fixedReference = try Reference(from: _container, forKeyIfPresent: .fixedReference) {
			if _t_fixed != nil {
				throw DecodingError.dataCorruptedError(forKey: .fixedReference, in: _container, debugDescription: "More than one value provided for \"fixed\"")
			}
			_t_fixed = .reference(fixedReference)
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
		if let maxValueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .maxValueBoolean, auxiliaryKey: ._maxValueBoolean) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueBoolean, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .boolean(maxValueBoolean)
		}
		if let maxValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .maxValueInteger, auxiliaryKey: ._maxValueInteger) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueInteger, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .integer(maxValueInteger)
		}
		if let maxValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .maxValueDecimal, auxiliaryKey: ._maxValueDecimal) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueDecimal, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .decimal(maxValueDecimal)
		}
		if let maxValueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .maxValueBase64Binary, auxiliaryKey: ._maxValueBase64Binary) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueBase64Binary, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .base64Binary(maxValueBase64Binary)
		}
		if let maxValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .maxValueInstant, auxiliaryKey: ._maxValueInstant) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueInstant, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .instant(maxValueInstant)
		}
		if let maxValueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maxValueString, auxiliaryKey: ._maxValueString) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueString, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .string(maxValueString)
		}
		if let maxValueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .maxValueUri, auxiliaryKey: ._maxValueUri) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueUri, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .uri(maxValueUri)
		}
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
		if let maxValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .maxValueTime, auxiliaryKey: ._maxValueTime) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueTime, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .time(maxValueTime)
		}
		if let maxValueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maxValueCode, auxiliaryKey: ._maxValueCode) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueCode, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .code(maxValueCode)
		}
		if let maxValueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .maxValueOid, auxiliaryKey: ._maxValueOid) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueOid, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .oid(maxValueOid)
		}
		if let maxValueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maxValueId, auxiliaryKey: ._maxValueId) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueId, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .id(maxValueId)
		}
		if let maxValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .maxValueUnsignedInt, auxiliaryKey: ._maxValueUnsignedInt) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .unsignedInt(maxValueUnsignedInt)
		}
		if let maxValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxValuePositiveInt, auxiliaryKey: ._maxValuePositiveInt) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .positiveInt(maxValuePositiveInt)
		}
		if let maxValueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maxValueMarkdown, auxiliaryKey: ._maxValueMarkdown) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueMarkdown, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .markdown(maxValueMarkdown)
		}
		if let maxValueAnnotation = try Annotation(from: _container, forKeyIfPresent: .maxValueAnnotation) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueAnnotation, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .annotation(maxValueAnnotation)
		}
		if let maxValueAttachment = try Attachment(from: _container, forKeyIfPresent: .maxValueAttachment) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueAttachment, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .attachment(maxValueAttachment)
		}
		if let maxValueIdentifier = try Identifier(from: _container, forKeyIfPresent: .maxValueIdentifier) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueIdentifier, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .identifier(maxValueIdentifier)
		}
		if let maxValueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .maxValueCodeableConcept) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .codeableConcept(maxValueCodeableConcept)
		}
		if let maxValueCoding = try Coding(from: _container, forKeyIfPresent: .maxValueCoding) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueCoding, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .coding(maxValueCoding)
		}
		if let maxValueQuantity = try Quantity(from: _container, forKeyIfPresent: .maxValueQuantity) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueQuantity, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .quantity(maxValueQuantity)
		}
		if let maxValueRange = try Range(from: _container, forKeyIfPresent: .maxValueRange) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueRange, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .range(maxValueRange)
		}
		if let maxValuePeriod = try Period(from: _container, forKeyIfPresent: .maxValuePeriod) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValuePeriod, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .period(maxValuePeriod)
		}
		if let maxValueRatio = try Ratio(from: _container, forKeyIfPresent: .maxValueRatio) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueRatio, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .ratio(maxValueRatio)
		}
		if let maxValueSampledData = try SampledData(from: _container, forKeyIfPresent: .maxValueSampledData) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueSampledData, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .sampledData(maxValueSampledData)
		}
		if let maxValueSignature = try Signature(from: _container, forKeyIfPresent: .maxValueSignature) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueSignature, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .signature(maxValueSignature)
		}
		if let maxValueHumanName = try HumanName(from: _container, forKeyIfPresent: .maxValueHumanName) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueHumanName, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .humanName(maxValueHumanName)
		}
		if let maxValueAddress = try Address(from: _container, forKeyIfPresent: .maxValueAddress) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueAddress, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .address(maxValueAddress)
		}
		if let maxValueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .maxValueContactPoint) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueContactPoint, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .contactPoint(maxValueContactPoint)
		}
		if let maxValueTiming = try Timing(from: _container, forKeyIfPresent: .maxValueTiming) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueTiming, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .timing(maxValueTiming)
		}
		if let maxValueReference = try Reference(from: _container, forKeyIfPresent: .maxValueReference) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueReference, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .reference(maxValueReference)
		}
		if let maxValueMeta = try Meta(from: _container, forKeyIfPresent: .maxValueMeta) {
			if _t_maxValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .maxValueMeta, in: _container, debugDescription: "More than one value provided for \"maxValue\"")
			}
			_t_maxValue = .meta(maxValueMeta)
		}
		self.maxValue = _t_maxValue
		self.meaningWhenMissing = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .meaningWhenMissing, auxiliaryKey: ._meaningWhenMissing)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		var _t_minValue: MinValueX? = nil
		if let minValueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .minValueBoolean, auxiliaryKey: ._minValueBoolean) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueBoolean, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .boolean(minValueBoolean)
		}
		if let minValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .minValueInteger, auxiliaryKey: ._minValueInteger) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueInteger, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .integer(minValueInteger)
		}
		if let minValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .minValueDecimal, auxiliaryKey: ._minValueDecimal) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueDecimal, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .decimal(minValueDecimal)
		}
		if let minValueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .minValueBase64Binary, auxiliaryKey: ._minValueBase64Binary) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueBase64Binary, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .base64Binary(minValueBase64Binary)
		}
		if let minValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .minValueInstant, auxiliaryKey: ._minValueInstant) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueInstant, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .instant(minValueInstant)
		}
		if let minValueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minValueString, auxiliaryKey: ._minValueString) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueString, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .string(minValueString)
		}
		if let minValueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .minValueUri, auxiliaryKey: ._minValueUri) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueUri, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .uri(minValueUri)
		}
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
		if let minValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .minValueTime, auxiliaryKey: ._minValueTime) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueTime, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .time(minValueTime)
		}
		if let minValueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minValueCode, auxiliaryKey: ._minValueCode) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueCode, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .code(minValueCode)
		}
		if let minValueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .minValueOid, auxiliaryKey: ._minValueOid) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueOid, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .oid(minValueOid)
		}
		if let minValueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minValueId, auxiliaryKey: ._minValueId) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueId, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .id(minValueId)
		}
		if let minValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .minValueUnsignedInt, auxiliaryKey: ._minValueUnsignedInt) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .unsignedInt(minValueUnsignedInt)
		}
		if let minValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .minValuePositiveInt, auxiliaryKey: ._minValuePositiveInt) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .positiveInt(minValuePositiveInt)
		}
		if let minValueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minValueMarkdown, auxiliaryKey: ._minValueMarkdown) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueMarkdown, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .markdown(minValueMarkdown)
		}
		if let minValueAnnotation = try Annotation(from: _container, forKeyIfPresent: .minValueAnnotation) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueAnnotation, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .annotation(minValueAnnotation)
		}
		if let minValueAttachment = try Attachment(from: _container, forKeyIfPresent: .minValueAttachment) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueAttachment, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .attachment(minValueAttachment)
		}
		if let minValueIdentifier = try Identifier(from: _container, forKeyIfPresent: .minValueIdentifier) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueIdentifier, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .identifier(minValueIdentifier)
		}
		if let minValueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .minValueCodeableConcept) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .codeableConcept(minValueCodeableConcept)
		}
		if let minValueCoding = try Coding(from: _container, forKeyIfPresent: .minValueCoding) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueCoding, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .coding(minValueCoding)
		}
		if let minValueQuantity = try Quantity(from: _container, forKeyIfPresent: .minValueQuantity) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueQuantity, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .quantity(minValueQuantity)
		}
		if let minValueRange = try Range(from: _container, forKeyIfPresent: .minValueRange) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueRange, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .range(minValueRange)
		}
		if let minValuePeriod = try Period(from: _container, forKeyIfPresent: .minValuePeriod) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValuePeriod, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .period(minValuePeriod)
		}
		if let minValueRatio = try Ratio(from: _container, forKeyIfPresent: .minValueRatio) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueRatio, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .ratio(minValueRatio)
		}
		if let minValueSampledData = try SampledData(from: _container, forKeyIfPresent: .minValueSampledData) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueSampledData, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .sampledData(minValueSampledData)
		}
		if let minValueSignature = try Signature(from: _container, forKeyIfPresent: .minValueSignature) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueSignature, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .signature(minValueSignature)
		}
		if let minValueHumanName = try HumanName(from: _container, forKeyIfPresent: .minValueHumanName) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueHumanName, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .humanName(minValueHumanName)
		}
		if let minValueAddress = try Address(from: _container, forKeyIfPresent: .minValueAddress) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueAddress, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .address(minValueAddress)
		}
		if let minValueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .minValueContactPoint) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueContactPoint, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .contactPoint(minValueContactPoint)
		}
		if let minValueTiming = try Timing(from: _container, forKeyIfPresent: .minValueTiming) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueTiming, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .timing(minValueTiming)
		}
		if let minValueReference = try Reference(from: _container, forKeyIfPresent: .minValueReference) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueReference, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .reference(minValueReference)
		}
		if let minValueMeta = try Meta(from: _container, forKeyIfPresent: .minValueMeta) {
			if _t_minValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .minValueMeta, in: _container, debugDescription: "More than one value provided for \"minValue\"")
			}
			_t_minValue = .meta(minValueMeta)
		}
		self.minValue = _t_minValue
		self.mustSupport = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .mustSupport, auxiliaryKey: ._mustSupport)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.nameReference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .nameReference, auxiliaryKey: ._nameReference)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		var _t_pattern: PatternX? = nil
		if let patternBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .patternBoolean, auxiliaryKey: ._patternBoolean) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternBoolean, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .boolean(patternBoolean)
		}
		if let patternInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .patternInteger, auxiliaryKey: ._patternInteger) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternInteger, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .integer(patternInteger)
		}
		if let patternDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .patternDecimal, auxiliaryKey: ._patternDecimal) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternDecimal, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .decimal(patternDecimal)
		}
		if let patternBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .patternBase64Binary, auxiliaryKey: ._patternBase64Binary) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternBase64Binary, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .base64Binary(patternBase64Binary)
		}
		if let patternInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .patternInstant, auxiliaryKey: ._patternInstant) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternInstant, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .instant(patternInstant)
		}
		if let patternString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternString, auxiliaryKey: ._patternString) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternString, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .string(patternString)
		}
		if let patternUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .patternUri, auxiliaryKey: ._patternUri) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternUri, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .uri(patternUri)
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
		if let patternTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .patternTime, auxiliaryKey: ._patternTime) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternTime, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .time(patternTime)
		}
		if let patternCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternCode, auxiliaryKey: ._patternCode) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternCode, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .code(patternCode)
		}
		if let patternOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .patternOid, auxiliaryKey: ._patternOid) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternOid, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .oid(patternOid)
		}
		if let patternId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternId, auxiliaryKey: ._patternId) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternId, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .id(patternId)
		}
		if let patternUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .patternUnsignedInt, auxiliaryKey: ._patternUnsignedInt) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternUnsignedInt, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .unsignedInt(patternUnsignedInt)
		}
		if let patternPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .patternPositiveInt, auxiliaryKey: ._patternPositiveInt) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternPositiveInt, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .positiveInt(patternPositiveInt)
		}
		if let patternMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patternMarkdown, auxiliaryKey: ._patternMarkdown) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternMarkdown, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .markdown(patternMarkdown)
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
		if let patternIdentifier = try Identifier(from: _container, forKeyIfPresent: .patternIdentifier) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternIdentifier, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .identifier(patternIdentifier)
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
		if let patternPeriod = try Period(from: _container, forKeyIfPresent: .patternPeriod) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternPeriod, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .period(patternPeriod)
		}
		if let patternRatio = try Ratio(from: _container, forKeyIfPresent: .patternRatio) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternRatio, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .ratio(patternRatio)
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
		if let patternHumanName = try HumanName(from: _container, forKeyIfPresent: .patternHumanName) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternHumanName, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .humanName(patternHumanName)
		}
		if let patternAddress = try Address(from: _container, forKeyIfPresent: .patternAddress) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternAddress, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .address(patternAddress)
		}
		if let patternContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .patternContactPoint) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternContactPoint, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .contactPoint(patternContactPoint)
		}
		if let patternTiming = try Timing(from: _container, forKeyIfPresent: .patternTiming) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternTiming, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .timing(patternTiming)
		}
		if let patternReference = try Reference(from: _container, forKeyIfPresent: .patternReference) {
			if _t_pattern != nil {
				throw DecodingError.dataCorruptedError(forKey: .patternReference, in: _container, debugDescription: "More than one value provided for \"pattern\"")
			}
			_t_pattern = .reference(patternReference)
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
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try constraint?.encode(on: &_container, forKey: .constraint)
		if let _enum = defaultValue {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueString, auxiliaryKey: ._defaultValueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueUri, auxiliaryKey: ._defaultValueUri)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDate, auxiliaryKey: ._defaultValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDateTime, auxiliaryKey: ._defaultValueDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueTime, auxiliaryKey: ._defaultValueTime)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCode, auxiliaryKey: ._defaultValueCode)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueOid, auxiliaryKey: ._defaultValueOid)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueId, auxiliaryKey: ._defaultValueId)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueIdentifier)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .defaultValuePeriod)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueSignature)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueHumanName)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAddress)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueContactPoint)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueReference)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMeta)
			}
		}
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		if let _enum = example {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .exampleBoolean, auxiliaryKey: ._exampleBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .exampleInteger, auxiliaryKey: ._exampleInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .exampleDecimal, auxiliaryKey: ._exampleDecimal)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .exampleBase64Binary, auxiliaryKey: ._exampleBase64Binary)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .exampleInstant, auxiliaryKey: ._exampleInstant)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .exampleString, auxiliaryKey: ._exampleString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .exampleUri, auxiliaryKey: ._exampleUri)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .exampleDate, auxiliaryKey: ._exampleDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .exampleDateTime, auxiliaryKey: ._exampleDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .exampleTime, auxiliaryKey: ._exampleTime)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .exampleCode, auxiliaryKey: ._exampleCode)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .exampleOid, auxiliaryKey: ._exampleOid)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .exampleId, auxiliaryKey: ._exampleId)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .exampleUnsignedInt, auxiliaryKey: ._exampleUnsignedInt)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .examplePositiveInt, auxiliaryKey: ._examplePositiveInt)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .exampleMarkdown, auxiliaryKey: ._exampleMarkdown)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .exampleAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .exampleAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .exampleIdentifier)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .exampleCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .exampleCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .exampleQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .exampleRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .examplePeriod)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .exampleRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .exampleSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .exampleSignature)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .exampleHumanName)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .exampleAddress)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .exampleContactPoint)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .exampleTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .exampleReference)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .exampleMeta)
			}
		}
		if let _enum = fixed {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .fixedBoolean, auxiliaryKey: ._fixedBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .fixedInteger, auxiliaryKey: ._fixedInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .fixedDecimal, auxiliaryKey: ._fixedDecimal)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .fixedBase64Binary, auxiliaryKey: ._fixedBase64Binary)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .fixedInstant, auxiliaryKey: ._fixedInstant)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .fixedString, auxiliaryKey: ._fixedString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .fixedUri, auxiliaryKey: ._fixedUri)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .fixedDate, auxiliaryKey: ._fixedDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .fixedDateTime, auxiliaryKey: ._fixedDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .fixedTime, auxiliaryKey: ._fixedTime)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .fixedCode, auxiliaryKey: ._fixedCode)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .fixedOid, auxiliaryKey: ._fixedOid)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .fixedId, auxiliaryKey: ._fixedId)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .fixedUnsignedInt, auxiliaryKey: ._fixedUnsignedInt)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .fixedPositiveInt, auxiliaryKey: ._fixedPositiveInt)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .fixedMarkdown, auxiliaryKey: ._fixedMarkdown)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .fixedAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .fixedAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .fixedIdentifier)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .fixedCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .fixedCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .fixedQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .fixedRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .fixedPeriod)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .fixedRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .fixedSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .fixedSignature)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .fixedHumanName)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .fixedAddress)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .fixedContactPoint)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .fixedTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .fixedReference)
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
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .maxValueBoolean, auxiliaryKey: ._maxValueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .maxValueInteger, auxiliaryKey: ._maxValueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .maxValueDecimal, auxiliaryKey: ._maxValueDecimal)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .maxValueBase64Binary, auxiliaryKey: ._maxValueBase64Binary)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .maxValueInstant, auxiliaryKey: ._maxValueInstant)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .maxValueString, auxiliaryKey: ._maxValueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .maxValueUri, auxiliaryKey: ._maxValueUri)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .maxValueDate, auxiliaryKey: ._maxValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .maxValueDateTime, auxiliaryKey: ._maxValueDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .maxValueTime, auxiliaryKey: ._maxValueTime)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .maxValueCode, auxiliaryKey: ._maxValueCode)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .maxValueOid, auxiliaryKey: ._maxValueOid)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .maxValueId, auxiliaryKey: ._maxValueId)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .maxValueUnsignedInt, auxiliaryKey: ._maxValueUnsignedInt)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .maxValuePositiveInt, auxiliaryKey: ._maxValuePositiveInt)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .maxValueMarkdown, auxiliaryKey: ._maxValueMarkdown)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .maxValueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .maxValueAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .maxValueIdentifier)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .maxValueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .maxValueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .maxValueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .maxValueRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .maxValuePeriod)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .maxValueRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .maxValueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .maxValueSignature)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .maxValueHumanName)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .maxValueAddress)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .maxValueContactPoint)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .maxValueTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .maxValueReference)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .maxValueMeta)
			}
		}
		try meaningWhenMissing?.encode(on: &_container, forKey: .meaningWhenMissing, auxiliaryKey: ._meaningWhenMissing)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		if let _enum = minValue {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .minValueBoolean, auxiliaryKey: ._minValueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .minValueInteger, auxiliaryKey: ._minValueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .minValueDecimal, auxiliaryKey: ._minValueDecimal)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .minValueBase64Binary, auxiliaryKey: ._minValueBase64Binary)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .minValueInstant, auxiliaryKey: ._minValueInstant)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .minValueString, auxiliaryKey: ._minValueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .minValueUri, auxiliaryKey: ._minValueUri)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .minValueDate, auxiliaryKey: ._minValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .minValueDateTime, auxiliaryKey: ._minValueDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .minValueTime, auxiliaryKey: ._minValueTime)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .minValueCode, auxiliaryKey: ._minValueCode)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .minValueOid, auxiliaryKey: ._minValueOid)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .minValueId, auxiliaryKey: ._minValueId)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .minValueUnsignedInt, auxiliaryKey: ._minValueUnsignedInt)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .minValuePositiveInt, auxiliaryKey: ._minValuePositiveInt)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .minValueMarkdown, auxiliaryKey: ._minValueMarkdown)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .minValueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .minValueAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .minValueIdentifier)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .minValueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .minValueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .minValueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .minValueRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .minValuePeriod)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .minValueRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .minValueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .minValueSignature)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .minValueHumanName)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .minValueAddress)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .minValueContactPoint)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .minValueTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .minValueReference)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .minValueMeta)
			}
		}
		try mustSupport?.encode(on: &_container, forKey: .mustSupport, auxiliaryKey: ._mustSupport)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try nameReference?.encode(on: &_container, forKey: .nameReference, auxiliaryKey: ._nameReference)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		if let _enum = pattern {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .patternBoolean, auxiliaryKey: ._patternBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .patternInteger, auxiliaryKey: ._patternInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .patternDecimal, auxiliaryKey: ._patternDecimal)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .patternBase64Binary, auxiliaryKey: ._patternBase64Binary)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .patternInstant, auxiliaryKey: ._patternInstant)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .patternString, auxiliaryKey: ._patternString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .patternUri, auxiliaryKey: ._patternUri)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .patternDate, auxiliaryKey: ._patternDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .patternDateTime, auxiliaryKey: ._patternDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .patternTime, auxiliaryKey: ._patternTime)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .patternCode, auxiliaryKey: ._patternCode)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .patternOid, auxiliaryKey: ._patternOid)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .patternId, auxiliaryKey: ._patternId)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .patternUnsignedInt, auxiliaryKey: ._patternUnsignedInt)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .patternPositiveInt, auxiliaryKey: ._patternPositiveInt)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .patternMarkdown, auxiliaryKey: ._patternMarkdown)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .patternAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .patternAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .patternIdentifier)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .patternCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .patternCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .patternQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .patternRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .patternPeriod)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .patternRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .patternSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .patternSignature)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .patternHumanName)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .patternAddress)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .patternContactPoint)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .patternTiming)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .patternReference)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .patternMeta)
			}
		}
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try short?.encode(on: &_container, forKey: .short, auxiliaryKey: ._short)
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
		    && comments == _other.comments
		    && condition == _other.condition
		    && constraint == _other.constraint
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
		    && name == _other.name
		    && nameReference == _other.nameReference
		    && path == _other.path
		    && pattern == _other.pattern
		    && representation == _other.representation
		    && requirements == _other.requirements
		    && short == _other.short
		    && slicing == _other.slicing
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alias)
		hasher.combine(base)
		hasher.combine(binding)
		hasher.combine(code)
		hasher.combine(comments)
		hasher.combine(condition)
		hasher.combine(constraint)
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
		hasher.combine(name)
		hasher.combine(nameReference)
		hasher.combine(path)
		hasher.combine(pattern)
		hasher.combine(representation)
		hasher.combine(requirements)
		hasher.combine(short)
		hasher.combine(slicing)
		hasher.combine(type)
	}
}

/**
 Base definition information for tools.
 
 Information about the base definition of the element, provided to make it unncessary for tools to trace the deviation
 of the element through the derived and related profiles. This information is only provided where the element definition
 represents a constraint on another element definition, and must be present if there is a base element definition.
 */
open class ElementDefinitionBase: Element {
	
	/// Path that identifies the base element
	public var path: FHIRPrimitive<FHIRString>
	
	/// Min cardinality of the base element
	public var min: FHIRPrimitive<FHIRInteger>
	
	/// Max cardinality of the base element
	public var max: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(max: FHIRPrimitive<FHIRString>, min: FHIRPrimitive<FHIRInteger>, path: FHIRPrimitive<FHIRString>) {
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
							min: FHIRPrimitive<FHIRInteger>,
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
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
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
 
 Binds to a value set if this element is coded (code, Coding, CodeableConcept).
 */
open class ElementDefinitionBinding: Element {
	
	/// All possible types for "valueSet[x]"
	public enum ValueSetX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	/// Restricted to: ['required', 'extensible', 'preferred', 'example']
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
	
	/// Why this constraint necessary or appropriate
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Identifies the impact constraint violation has on the conformance of the instance.
	/// Restricted to: ['error', 'warning']
	public var severity: FHIRPrimitive<ConstraintSeverity>
	
	/// Human description of constraint
	public var human: FHIRPrimitive<FHIRString>
	
	/// XPath expression of constraint
	public var xpath: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(human: FHIRPrimitive<FHIRString>, key: FHIRPrimitive<FHIRString>, severity: FHIRPrimitive<ConstraintSeverity>, xpath: FHIRPrimitive<FHIRString>) {
		self.human = human
		self.key = key
		self.severity = severity
		self.xpath = xpath
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							human: FHIRPrimitive<FHIRString>,
							id: FHIRPrimitive<FHIRString>? = nil,
							key: FHIRPrimitive<FHIRString>,
							requirements: FHIRPrimitive<FHIRString>? = nil,
							severity: FHIRPrimitive<ConstraintSeverity>,
							xpath: FHIRPrimitive<FHIRString>)
	{
		self.init(human: human, key: key, severity: severity, xpath: xpath)
		self.`extension` = `extension`
		self.id = id
		self.requirements = requirements
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case human; case _human
		case key; case _key
		case requirements; case _requirements
		case severity; case _severity
		case xpath; case _xpath
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.human = try FHIRPrimitive<FHIRString>(from: _container, forKey: .human, auxiliaryKey: ._human)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.severity = try FHIRPrimitive<ConstraintSeverity>(from: _container, forKey: .severity, auxiliaryKey: ._severity)
		self.xpath = try FHIRPrimitive<FHIRString>(from: _container, forKey: .xpath, auxiliaryKey: ._xpath)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try human.encode(on: &_container, forKey: .human, auxiliaryKey: ._human)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try severity.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try xpath.encode(on: &_container, forKey: .xpath, auxiliaryKey: ._xpath)
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
		return human == _other.human
		    && key == _other.key
		    && requirements == _other.requirements
		    && severity == _other.severity
		    && xpath == _other.xpath
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(human)
		hasher.combine(key)
		hasher.combine(requirements)
		hasher.combine(severity)
		hasher.combine(xpath)
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
	
	/// Designated initializer taking all required properties
	public init(identity: FHIRPrimitive<FHIRString>, map: FHIRPrimitive<FHIRString>) {
		self.identity = identity
		self.map = map
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identity: FHIRPrimitive<FHIRString>,
							language: FHIRPrimitive<FHIRString>? = nil,
							map: FHIRPrimitive<FHIRString>)
	{
		self.init(identity: identity, map: map)
		self.`extension` = `extension`
		self.id = id
		self.language = language
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identity; case _identity
		case language; case _language
		case map; case _map
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identity = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identity, auxiliaryKey: ._identity)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.map = try FHIRPrimitive<FHIRString>(from: _container, forKey: .map, auxiliaryKey: ._map)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		return identity == _other.identity
		    && language == _other.language
		    && map == _other.map
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
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
	
	/// Element values that used to distinguish the slices
	public var discriminator: [FHIRPrimitive<FHIRString>]?
	
	/// Text description of how slicing works (or not)
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If elements must be in same order as slices
	public var ordered: FHIRPrimitive<FHIRBool>?
	
	/// Whether additional slices are allowed or not. When the slices are ordered, profile authors can also say that
	/// additional slices are only allowed at the end.
	/// Restricted to: ['closed', 'open', 'openAtEnd']
	public var rules: FHIRPrimitive<SlicingRules>
	
	/// Designated initializer taking all required properties
	public init(rules: FHIRPrimitive<SlicingRules>) {
		self.rules = rules
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							discriminator: [FHIRPrimitive<FHIRString>]? = nil,
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
		case discriminator; case _discriminator
		case ordered; case _ordered
		case rules; case _rules
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.discriminator = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .discriminator, auxiliaryKey: ._discriminator)
		self.ordered = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .ordered, auxiliaryKey: ._ordered)
		self.rules = try FHIRPrimitive<SlicingRules>(from: _container, forKey: .rules, auxiliaryKey: ._rules)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try discriminator?.encode(on: &_container, forKey: .discriminator, auxiliaryKey: ._discriminator)
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
 Data type and Profile for this element.
 
 The data type or resource that the value of this element is permitted to be.
 */
open class ElementDefinitionType: Element {
	
	/// Name of Data type or Resource
	public var code: FHIRPrimitive<FHIRString>
	
	/// Profile (StructureDefinition) to apply (or IG)
	public var profile: [FHIRPrimitive<FHIRURI>]?
	
	/// If the type is a reference to another resource, how the resource is or can be aggregated - is it a contained
	/// resource, or a reference, and if the context is a bundle, is it included in the bundle.
	/// Restricted to: ['contained', 'referenced']
	public var aggregation: [FHIRPrimitive<AggregationMode>]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							aggregation: [FHIRPrimitive<AggregationMode>]? = nil,
							code: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							profile: [FHIRPrimitive<FHIRURI>]? = nil)
	{
		self.init(code: code)
		self.aggregation = aggregation
		self.`extension` = `extension`
		self.id = id
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case aggregation; case _aggregation
		case code; case _code
		case profile; case _profile
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.aggregation = try [FHIRPrimitive<AggregationMode>](from: _container, forKeyIfPresent: .aggregation, auxiliaryKey: ._aggregation)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.profile = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try aggregation?.encode(on: &_container, forKey: .aggregation, auxiliaryKey: ._aggregation)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
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
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(aggregation)
		hasher.combine(code)
		hasher.combine(profile)
	}
}
