//
//  Observation.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Observation)
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
 Measurements and simple assertions.
 
 Measurements and simple assertions made about a patient, device or other subject.
 */
open class Observation: DomainResource {
	
	override open class var resourceType: ResourceType { return .observation }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case sampledData(SampledData)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Unique Id for this particular observation
	public var identifier: [Identifier]?
	
	/// The status of the result value.
	/// Restricted to: ['registered', 'preliminary', 'final', 'amended', 'cancelled', 'entered-in-error', 'unknown']
	public var status: FHIRPrimitive<ObservationStatus>
	
	/// Classification of  type of observation
	public var category: CodeableConcept?
	
	/// Type of observation (code / type)
	public var code: CodeableConcept
	
	/// Who and/or what this is about
	public var subject: Reference?
	
	/// Healthcare event during which this observation is made
	public var encounter: Reference?
	
	/// Clinically relevant time/time-period for observation
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Date/Time this was made available
	public var issued: FHIRPrimitive<Instant>?
	
	/// Who is responsible for the observation
	public var performer: [Reference]?
	
	/// Actual result
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Why the result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// High, low, normal, etc.
	public var interpretation: CodeableConcept?
	
	/// Comments about result
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Observed body part
	public var bodySite: CodeableConcept?
	
	/// How it was done
	public var method: CodeableConcept?
	
	/// Specimen used for this observation
	public var specimen: Reference?
	
	/// (Measurement) Device
	public var device: Reference?
	
	/// Provides guide for interpretation
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Resource related to this observation
	public var related: [ObservationRelated]?
	
	/// Component results
	public var component: [ObservationComponent]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<ObservationStatus>) {
		self.code = code
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							value: ValueX? = nil)
	{
		self.init(code: code, status: status)
		self.bodySite = bodySite
		self.category = category
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
		self.subject = subject
		self.text = text
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case category
		case code
		case comments; case _comments
		case component
		case dataAbsentReason
		case device
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case encounter
		case identifier
		case interpretation
		case issued; case _issued
		case method
		case performer
		case referenceRange
		case related
		case specimen
		case status; case _status
		case subject
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.component = try [ObservationComponent](from: _container, forKeyIfPresent: .component)
		self.dataAbsentReason = try CodeableConcept(from: _container, forKeyIfPresent: .dataAbsentReason)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveDateTime, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		self.effective = _t_effective
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.interpretation = try CodeableConcept(from: _container, forKeyIfPresent: .interpretation)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.referenceRange = try [ObservationReferenceRange](from: _container, forKeyIfPresent: .referenceRange)
		self.related = try [ObservationRelated](from: _container, forKeyIfPresent: .related)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<ObservationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
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
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
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
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try component?.encode(on: &_container, forKey: .component)
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
		try identifier?.encode(on: &_container, forKey: .identifier)
		try interpretation?.encode(on: &_container, forKey: .interpretation)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try method?.encode(on: &_container, forKey: .method)
		try performer?.encode(on: &_container, forKey: .performer)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		try related?.encode(on: &_container, forKey: .related)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		if let _enum = value {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .valueSampledData)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Observation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && comments == _other.comments
		    && component == _other.component
		    && dataAbsentReason == _other.dataAbsentReason
		    && device == _other.device
		    && effective == _other.effective
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && interpretation == _other.interpretation
		    && issued == _other.issued
		    && method == _other.method
		    && performer == _other.performer
		    && referenceRange == _other.referenceRange
		    && related == _other.related
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(comments)
		hasher.combine(component)
		hasher.combine(dataAbsentReason)
		hasher.combine(device)
		hasher.combine(effective)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(interpretation)
		hasher.combine(issued)
		hasher.combine(method)
		hasher.combine(performer)
		hasher.combine(referenceRange)
		hasher.combine(related)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(value)
	}
}

/**
 Component results.
 
 Some observations have multiple component observations.  These component observations are expressed as separate code
 value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood
 pressure measurement and multiple component observations for genetics observations.
 */
open class ObservationComponent: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case sampledData(SampledData)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Type of component observation (code / type)
	public var code: CodeableConcept
	
	/// Actual component result
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Why the component result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// Provides guide for interpretation of component result
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							dataAbsentReason: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							referenceRange: [ObservationReferenceRange]? = nil,
							value: ValueX? = nil)
	{
		self.init(code: code)
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.dataAbsentReason = try CodeableConcept(from: _container, forKeyIfPresent: .dataAbsentReason)
		self.referenceRange = try [ObservationReferenceRange](from: _container, forKeyIfPresent: .referenceRange)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
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
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
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
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try dataAbsentReason?.encode(on: &_container, forKey: .dataAbsentReason)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		if let _enum = value {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .valueSampledData)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && dataAbsentReason == _other.dataAbsentReason
		    && referenceRange == _other.referenceRange
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(dataAbsentReason)
		hasher.combine(referenceRange)
		hasher.combine(value)
	}
}

/**
 Provides guide for interpretation.
 
 Guidance on how to interpret the value by comparison to a normal or recommended range.
 */
open class ObservationReferenceRange: BackboneElement {
	
	/// Low Range, if relevant
	public var low: Quantity?
	
	/// High Range, if relevant
	public var high: Quantity?
	
	/// Indicates the meaning/use of this range of this range
	public var meaning: CodeableConcept?
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// Text based reference range in an observation
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							age: Range? = nil,
							`extension`: [Extension]? = nil,
							high: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							low: Quantity? = nil,
							meaning: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							text: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case high
		case low
		case meaning
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.high = try Quantity(from: _container, forKeyIfPresent: .high)
		self.low = try Quantity(from: _container, forKeyIfPresent: .low)
		self.meaning = try CodeableConcept(from: _container, forKeyIfPresent: .meaning)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try age?.encode(on: &_container, forKey: .age)
		try high?.encode(on: &_container, forKey: .high)
		try low?.encode(on: &_container, forKey: .low)
		try meaning?.encode(on: &_container, forKey: .meaning)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationReferenceRange else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return age == _other.age
		    && high == _other.high
		    && low == _other.low
		    && meaning == _other.meaning
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(age)
		hasher.combine(high)
		hasher.combine(low)
		hasher.combine(meaning)
		hasher.combine(text)
	}
}

/**
 Resource related to this observation.
 
 A  reference to another resource (usually another Observation but could  also be a QuestionnaireAnswer) whose
 relationship is defined by the relationship type code.
 */
open class ObservationRelated: BackboneElement {
	
	/// A code specifying the kind of relationship that exists with the target resource.
	/// Restricted to: ['has-member', 'derived-from', 'sequel-to', 'replaces', 'qualified-by', 'interfered-by']
	public var type: FHIRPrimitive<ObservationRelationshipType>?
	
	/// Resource that is related to this one
	public var target: Reference
	
	/// Designated initializer taking all required properties
	public init(target: Reference) {
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							target: Reference,
							type: FHIRPrimitive<ObservationRelationshipType>? = nil)
	{
		self.init(target: target)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case target
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.target = try Reference(from: _container, forKey: .target)
		self.type = try FHIRPrimitive<ObservationRelationshipType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try target.encode(on: &_container, forKey: .target)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationRelated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(target)
		hasher.combine(type)
	}
}
