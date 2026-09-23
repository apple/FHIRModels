//
//  Parameters.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Parameters)
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
 Operation Request or Response.
 
 This resource is used to pass information into and back from an operation (whether invoked directly from REST or within
 a messaging environment).  It is not persisted or allowed to be referenced by other resources.
 */
public struct Parameters: Resource {
	
	public static let resourceType: ResourceType = .parameters
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Operation Parameter
	public var parameter: [ParametersParameter]?
	
	/// Designated initializer
	public init(
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		parameter: [ParametersParameter]? = nil
	) {
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.parameter = parameter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case parameter
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.parameter = try [ParametersParameter](from: _container, forKeyIfPresent: .parameter)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try parameter?.encode(on: &_container, forKey: .parameter)
	}
}

/**
 Operation Parameter.
 
 A parameter passed to or received from the operation.
 */
public struct ParametersParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case age(Age)
		indirect case annotation(Annotation)
		indirect case attachment(Attachment)
		indirect case availability(Availability)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case codeableConcept(CodeableConcept)
		indirect case codeableReference(CodeableReference)
		indirect case coding(Coding)
		indirect case contactDetail(ContactDetail)
		indirect case contactPoint(ContactPoint)
		indirect case count(Count)
		indirect case dataRequirement(DataRequirement)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case distance(Distance)
		indirect case dosage(Dosage)
		indirect case duration(Duration)
		indirect case expression(Expression)
		indirect case extendedContactDetail(ExtendedContactDetail)
		indirect case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		indirect case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case integer64(FHIRInteger64)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case meta(Meta)
		indirect case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		indirect case parameterDefinition(ParameterDefinition)
		indirect case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
		indirect case reference(Reference)
		indirect case relatedArtifact(RelatedArtifact)
		indirect case sampledData(SampledData)
		indirect case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		indirect case timing(Timing)
		indirect case triggerDefinition(TriggerDefinition)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
		case url(FHIRPrimitive<FHIRURI>)
		indirect case usageContext(UsageContext)
		case uuid(FHIRPrimitive<FHIRURI>)
		indirect case virtualServiceDetail(VirtualServiceDetail)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name from the definition
	public var name: FHIRPrimitive<FHIRString>
	
	/// Named part of a multi-part parameter
	public var part: [ParametersParameter]?
	
	/// If parameter is a whole resource
	public var resource: ResourceProxy?
	
	/// If parameter is a data type
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		part: [ParametersParameter]? = nil,
		resource: ResourceProxy? = nil,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.part = part
		self.resource = resource
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case part
		case resource
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueAvailability
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCanonical; case _valueCanonical
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCodeableReference
		case valueCoding
		case valueContactDetail
		case valueContactPoint
		case valueCount
		case valueDataRequirement
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDosage
		case valueDuration
		case valueExpression
		case valueExtendedContactDetail
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueInteger64
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valueParameterDefinition
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueRatioRange
		case valueReference
		case valueRelatedArtifact
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueTriggerDefinition
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
		case valueUrl; case _valueUrl
		case valueUsageContext
		case valueUuid; case _valueUuid
		case valueVirtualServiceDetail
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.part = try [ParametersParameter](from: _container, forKeyIfPresent: .part)
		self.resource = try ResourceProxy(from: _container, forKeyIfPresent: .resource)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try part?.encode(on: &_container, forKey: .part)
		try resource?.encode(on: &_container, forKey: .resource)
		if let _enum = value {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .valueAddress)
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .valueAge)
		case .annotation(let _value):
			try _value.encode(on: &_container, forKey: .valueAnnotation)
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .availability(let _value):
			try _value.encode(on: &_container, forKey: .valueAvailability)
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .codeableReference(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableReference)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .contactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueContactDetail)
		case .contactPoint(let _value):
			try _value.encode(on: &_container, forKey: .valueContactPoint)
		case .count(let _value):
			try _value.encode(on: &_container, forKey: .valueCount)
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .valueDataRequirement)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .distance(let _value):
			try _value.encode(on: &_container, forKey: .valueDistance)
		case .dosage(let _value):
			try _value.encode(on: &_container, forKey: .valueDosage)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .valueDuration)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .valueExpression)
		case .extendedContactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueExtendedContactDetail)
		case .humanName(let _value):
			try _value.encode(on: &_container, forKey: .valueHumanName)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .valueIdentifier)
		case .instant(let _value):
			try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .integer64(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger64)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .meta(let _value):
			try _value.encode(on: &_container, forKey: .valueMeta)
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .valueMoney)
		case .oid(let _value):
			try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
		case .parameterDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueParameterDefinition)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .valueRatioRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .relatedArtifact(let _value):
			try _value.encode(on: &_container, forKey: .valueRelatedArtifact)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .valueSampledData)
		case .signature(let _value):
			try _value.encode(on: &_container, forKey: .valueSignature)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .valueTiming)
		case .triggerDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueTriggerDefinition)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
		case .usageContext(let _value):
			try _value.encode(on: &_container, forKey: .valueUsageContext)
		case .uuid(let _value):
			try _value.encode(on: &_container, forKey: .valueUuid, auxiliaryKey: ._valueUuid)
		case .virtualServiceDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueVirtualServiceDetail)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
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
		if let valueAvailability = try Availability(from: _container, forKeyIfPresent: .valueAvailability) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAvailability, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .availability(valueAvailability)
		}
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
		if let valueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueCanonical, auxiliaryKey: ._valueCanonical) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCanonical, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .canonical(valueCanonical)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCodeableReference = try CodeableReference(from: _container, forKeyIfPresent: .valueCodeableReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableReference(valueCodeableReference)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueContactDetail = try ContactDetail(from: _container, forKeyIfPresent: .valueContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactDetail(valueContactDetail)
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
		if let valueDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .valueDataRequirement) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDataRequirement, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dataRequirement(valueDataRequirement)
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
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDosage = try Dosage(from: _container, forKeyIfPresent: .valueDosage) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDosage, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dosage(valueDosage)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valueExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .valueExtendedContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .extendedContactDetail(valueExtendedContactDetail)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
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
		if let valueInteger64 = try FHIRInteger64(from: _container, forKeyIfPresent: .valueInteger64) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger64, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer64(valueInteger64)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valueParameterDefinition = try ParameterDefinition(from: _container, forKeyIfPresent: .valueParameterDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueParameterDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .parameterDefinition(valueParameterDefinition)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
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
		if let valueRatioRange = try RatioRange(from: _container, forKeyIfPresent: .valueRatioRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatioRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratioRange(valueRatioRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueRelatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .valueRelatedArtifact) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelatedArtifact, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relatedArtifact(valueRelatedArtifact)
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
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .valueTriggerDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .triggerDefinition(valueTriggerDefinition)
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
		if let valueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUrl, auxiliaryKey: ._valueUrl) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUrl, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .url(valueUrl)
		}
		if let valueUsageContext = try UsageContext(from: _container, forKeyIfPresent: .valueUsageContext) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUsageContext, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .usageContext(valueUsageContext)
		}
		if let valueUuid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUuid, auxiliaryKey: ._valueUuid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUuid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uuid(valueUuid)
		}
		if let valueVirtualServiceDetail = try VirtualServiceDetail(from: _container, forKeyIfPresent: .valueVirtualServiceDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueVirtualServiceDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .virtualServiceDetail(valueVirtualServiceDetail)
		}
		return _t_value
	}
}
