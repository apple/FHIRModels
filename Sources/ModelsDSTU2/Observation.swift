//
//  Observation.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Observation)
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
 Measurements and simple assertions.
 
 Measurements and simple assertions made about a patient, device or other subject.
 */
public struct Observation: DomainResource {
	
	public static let resourceType: ResourceType = .observation
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case sampledData(SampledData)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Observed body part
	public var bodySite: CodeableConcept?
	
	/// Classification of  type of observation
	public var category: CodeableConcept?
	
	/// Type of observation (code / type)
	public var code: CodeableConcept
	
	/// Comments about result
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Component results
	public var component: [ObservationComponent]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Why the result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// (Measurement) Device
	public var device: Reference?
	
	/// Clinically relevant time/time-period for observation
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Healthcare event during which this observation is made
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique Id for this particular observation
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// High, low, normal, etc.
	public var interpretation: CodeableConcept?
	
	/// Date/Time this was made available
	public var issued: FHIRPrimitive<Instant>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// How it was done
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who is responsible for the observation
	public var performer: [Reference]?
	
	/// Provides guide for interpretation
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Resource related to this observation
	public var related: [ObservationRelated]?
	
	/// Specimen used for this observation
	public var specimen: Reference?
	
	/// The status of the result value.
	/// Restricted to: ['registered', 'preliminary', 'final', 'amended', 'cancelled', 'entered-in-error', 'unknown']
	public var status: FHIRPrimitive<ObservationStatus>
	
	/// Who and/or what this is about
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Actual result
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		bodySite: CodeableConcept? = nil,
		category: CodeableConcept? = nil,
		code: CodeableConcept,
		comments: FHIRPrimitive<FHIRString>? = nil,
		component: [ObservationComponent]? = nil,
		contained: [ResourceProxy]? = nil,
		dataAbsentReason: CodeableConcept? = nil,
		device: Reference? = nil,
		effective: EffectiveX? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		interpretation: CodeableConcept? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		performer: [Reference]? = nil,
		referenceRange: [ObservationReferenceRange]? = nil,
		related: [ObservationRelated]? = nil,
		specimen: Reference? = nil,
		status: FHIRPrimitive<ObservationStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		value: ValueX? = nil
	) {
		self.bodySite = bodySite
		self.category = category
		self.code = code
		self.comments = comments
		self.component = component
		self.contained = contained
		self.dataAbsentReason = dataAbsentReason
		self.device = device
		self.effective = effective
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.interpretation = interpretation
		self.issued = issued
		self.language = language
		self.meta = meta
		self.method = method
		self.modifierExtension = modifierExtension
		self.performer = performer
		self.referenceRange = referenceRange
		self.related = related
		self.specimen = specimen
		self.status = status
		self.subject = subject
		self.text = text
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case bodySite
		case category
		case code
		case comments; case _comments
		case component
		case contained
		case dataAbsentReason
		case device
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case interpretation
		case issued; case _issued
		case language; case _language
		case meta
		case method
		case modifierExtension
		case performer
		case referenceRange
		case related
		case specimen
		case status; case _status
		case subject
		case text
		case valueAttachment
		case valueCodeableConcept
		case valueDateTime; case _valueDateTime
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueSampledData
		case valueString; case _valueString
		case valueTime; case _valueTime
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.component = try [ObservationComponent](from: _container, forKeyIfPresent: .component)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dataAbsentReason = try CodeableConcept(from: _container, forKeyIfPresent: .dataAbsentReason)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.effective = try Self._decodeEffective(from: _container)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.interpretation = try CodeableConcept(from: _container, forKeyIfPresent: .interpretation)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.referenceRange = try [ObservationReferenceRange](from: _container, forKeyIfPresent: .referenceRange)
		self.related = try [ObservationRelated](from: _container, forKeyIfPresent: .related)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<ObservationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try component?.encode(on: &_container, forKey: .component)
		try contained?.encode(on: &_container, forKey: .contained)
		try dataAbsentReason?.encode(on: &_container, forKey: .dataAbsentReason)
		try device?.encode(on: &_container, forKey: .device)
		if let _enum = effective {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .effectivePeriod)
		}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try interpretation?.encode(on: &_container, forKey: .interpretation)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try performer?.encode(on: &_container, forKey: .performer)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		try related?.encode(on: &_container, forKey: .related)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .valueSampledData)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EffectiveX? {
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		return _t_effective
	}
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
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
		if let valueSampledData = try SampledData(from: _container, forKeyIfPresent: .valueSampledData) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSampledData, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .sampledData(valueSampledData)
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
		return _t_value
	}
}

/**
 Component results.
 
 Some observations have multiple component observations.  These component observations are expressed as separate code
 value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood
 pressure measurement and multiple component observations for genetics observations.
 */
public struct ObservationComponent: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case sampledData(SampledData)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Type of component observation (code / type)
	public var code: CodeableConcept
	
	/// Why the component result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Provides guide for interpretation of component result
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Actual component result
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		dataAbsentReason: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		referenceRange: [ObservationReferenceRange]? = nil,
		value: ValueX? = nil
	) {
		self.code = code
		self.dataAbsentReason = dataAbsentReason
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.referenceRange = referenceRange
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case dataAbsentReason
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case referenceRange
		case valueAttachment
		case valueCodeableConcept
		case valueDateTime; case _valueDateTime
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueSampledData
		case valueString; case _valueString
		case valueTime; case _valueTime
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.dataAbsentReason = try CodeableConcept(from: _container, forKeyIfPresent: .dataAbsentReason)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.referenceRange = try [ObservationReferenceRange](from: _container, forKeyIfPresent: .referenceRange)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try dataAbsentReason?.encode(on: &_container, forKey: .dataAbsentReason)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .valueSampledData)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
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
		if let valueSampledData = try SampledData(from: _container, forKeyIfPresent: .valueSampledData) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSampledData, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .sampledData(valueSampledData)
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
		return _t_value
	}
}

/**
 Provides guide for interpretation.
 
 Guidance on how to interpret the value by comparison to a normal or recommended range.
 */
public struct ObservationReferenceRange: BackboneElement {
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// High Range, if relevant
	public var high: Quantity?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Low Range, if relevant
	public var low: Quantity?
	
	/// Indicates the meaning/use of this range of this range
	public var meaning: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Text based reference range in an observation
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		age: Range? = nil,
		`extension`: [Extension]? = nil,
		high: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		low: Quantity? = nil,
		meaning: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		text: FHIRPrimitive<FHIRString>? = nil
	) {
		self.age = age
		self.`extension` = `extension`
		self.high = high
		self.id = id
		self.low = low
		self.meaning = meaning
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case age
		case `extension` = "extension"
		case high
		case id; case _id
		case low
		case meaning
		case modifierExtension
		case text; case _text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.high = try Quantity(from: _container, forKeyIfPresent: .high)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.low = try Quantity(from: _container, forKeyIfPresent: .low)
		self.meaning = try CodeableConcept(from: _container, forKeyIfPresent: .meaning)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try age?.encode(on: &_container, forKey: .age)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try high?.encode(on: &_container, forKey: .high)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try low?.encode(on: &_container, forKey: .low)
		try meaning?.encode(on: &_container, forKey: .meaning)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
	}
}

/**
 Resource related to this observation.
 
 A  reference to another resource (usually another Observation but could  also be a QuestionnaireAnswer) whose
 relationship is defined by the relationship type code.
 */
public struct ObservationRelated: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Resource that is related to this one
	public var target: Reference
	
	/// A code specifying the kind of relationship that exists with the target resource.
	/// Restricted to: ['has-member', 'derived-from', 'sequel-to', 'replaces', 'qualified-by', 'interfered-by']
	public var type: FHIRPrimitive<ObservationRelationshipType>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: Reference,
		type: FHIRPrimitive<ObservationRelationshipType>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case target
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try Reference(from: _container, forKey: .target)
		self.type = try FHIRPrimitive<ObservationRelationshipType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target.encode(on: &_container, forKey: .target)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
