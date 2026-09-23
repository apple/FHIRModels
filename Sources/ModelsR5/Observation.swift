//
//  Observation.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Observation)
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
		case instant(FHIRPrimitive<Instant>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// All possible types for "instantiates[x]"
	public enum InstantiatesX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case reference(Reference)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case reference(Reference)
		indirect case sampledData(SampledData)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Observed body part
	public var bodySite: CodeableConcept?
	
	/// Observed body structure
	public var bodyStructure: Reference?
	
	/// Classification of  type of observation
	public var category: [CodeableConcept]?
	
	/// Type of observation (code / type)
	public var code: CodeableConcept
	
	/// Component results
	public var component: [ObservationComponent]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Why the result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// Related resource from which the observation is made
	public var derivedFrom: [Reference]?
	
	/// A reference to the device that generates the measurements or the device settings for the device
	public var device: Reference?
	
	/// Clinically relevant time/time-period for observation
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Healthcare event during which this observation is made
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What the observation is about, when it is not about the subject of record
	public var focus: [Reference]?
	
	/// Related resource that belongs to the Observation group
	public var hasMember: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for observation
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Instantiates FHIR ObservationDefinition
	/// One of `instantiates[x]`
	public var instantiates: InstantiatesX?
	
	/// High, low, normal, etc
	public var interpretation: [CodeableConcept]?
	
	/// Date/Time this version was made available
	public var issued: FHIRPrimitive<Instant>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// How it was done
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the observation
	public var note: [Annotation]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Who is responsible for the observation
	public var performer: [Reference]?
	
	/// Provides guide for interpretation
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Specimen used for this observation
	public var specimen: Reference?
	
	/// The status of the result value.
	public var status: FHIRPrimitive<ObservationStatus>
	
	/// Who and/or what the observation is about
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Triggering observation(s)
	public var triggeredBy: [ObservationTriggeredBy]?
	
	/// Actual result
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		bodySite: CodeableConcept? = nil,
		bodyStructure: Reference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		component: [ObservationComponent]? = nil,
		contained: [ResourceProxy]? = nil,
		dataAbsentReason: CodeableConcept? = nil,
		derivedFrom: [Reference]? = nil,
		device: Reference? = nil,
		effective: EffectiveX? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		focus: [Reference]? = nil,
		hasMember: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiates: InstantiatesX? = nil,
		interpretation: [CodeableConcept]? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		performer: [Reference]? = nil,
		referenceRange: [ObservationReferenceRange]? = nil,
		specimen: Reference? = nil,
		status: FHIRPrimitive<ObservationStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		triggeredBy: [ObservationTriggeredBy]? = nil,
		value: ValueX? = nil
	) {
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.bodyStructure = bodyStructure
		self.category = category
		self.code = code
		self.component = component
		self.contained = contained
		self.dataAbsentReason = dataAbsentReason
		self.derivedFrom = derivedFrom
		self.device = device
		self.effective = effective
		self.encounter = encounter
		self.`extension` = `extension`
		self.focus = focus
		self.hasMember = hasMember
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiates = instantiates
		self.interpretation = interpretation
		self.issued = issued
		self.language = language
		self.meta = meta
		self.method = method
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.referenceRange = referenceRange
		self.specimen = specimen
		self.status = status
		self.subject = subject
		self.text = text
		self.triggeredBy = triggeredBy
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case bodySite
		case bodyStructure
		case category
		case code
		case component
		case contained
		case dataAbsentReason
		case derivedFrom
		case device
		case effectiveDateTime; case _effectiveDateTime
		case effectiveInstant; case _effectiveInstant
		case effectivePeriod
		case effectiveTiming
		case encounter
		case `extension` = "extension"
		case focus
		case hasMember
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesReference
		case interpretation
		case issued; case _issued
		case language; case _language
		case meta
		case method
		case modifierExtension
		case note
		case partOf
		case performer
		case referenceRange
		case specimen
		case status; case _status
		case subject
		case text
		case triggeredBy
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDateTime; case _valueDateTime
		case valueInteger; case _valueInteger
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueReference
		case valueSampledData
		case valueString; case _valueString
		case valueTime; case _valueTime
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.component = try [ObservationComponent](from: _container, forKeyIfPresent: .component)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dataAbsentReason = try CodeableConcept(from: _container, forKeyIfPresent: .dataAbsentReason)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.effective = try Self._decodeEffective(from: _container)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.hasMember = try [Reference](from: _container, forKeyIfPresent: .hasMember)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiates = try Self._decodeInstantiates(from: _container)
		self.interpretation = try [CodeableConcept](from: _container, forKeyIfPresent: .interpretation)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.referenceRange = try [ObservationReferenceRange](from: _container, forKeyIfPresent: .referenceRange)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<ObservationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.triggeredBy = try [ObservationTriggeredBy](from: _container, forKeyIfPresent: .triggeredBy)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try component?.encode(on: &_container, forKey: .component)
		try contained?.encode(on: &_container, forKey: .contained)
		try dataAbsentReason?.encode(on: &_container, forKey: .dataAbsentReason)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try device?.encode(on: &_container, forKey: .device)
		if let _enum = effective {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
		case .instant(let _value):
			try _value.encode(on: &_container, forKey: .effectiveInstant, auxiliaryKey: ._effectiveInstant)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .effectivePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .effectiveTiming)
		}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try hasMember?.encode(on: &_container, forKey: .hasMember)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		if let _enum = instantiates {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .instantiatesReference)
		}
		}
		try interpretation?.encode(on: &_container, forKey: .interpretation)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try triggeredBy?.encode(on: &_container, forKey: .triggeredBy)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
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
		if let effectiveInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .effectiveInstant, auxiliaryKey: ._effectiveInstant) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveInstant, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .instant(effectiveInstant)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		if let effectiveTiming = try Timing(from: _container, forKeyIfPresent: .effectiveTiming) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTiming, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .timing(effectiveTiming)
		}
		return _t_effective
	}
	
	private static func _decodeInstantiates(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> InstantiatesX? {
		var _t_instantiates: InstantiatesX? = nil
		if let instantiatesCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical) {
			_t_instantiates = .canonical(instantiatesCanonical)
		}
		if let instantiatesReference = try Reference(from: _container, forKeyIfPresent: .instantiatesReference) {
			if _t_instantiates != nil {
				throw DecodingError.dataCorruptedError(forKey: .instantiatesReference, in: _container, debugDescription: "More than one value provided for \"instantiates\"")
			}
			_t_instantiates = .reference(instantiatesReference)
		}
		return _t_instantiates
	}
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
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
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case reference(Reference)
		indirect case sampledData(SampledData)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Type of component observation (code / type)
	public var code: CodeableConcept
	
	/// Why the component result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// High, low, normal, etc
	public var interpretation: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
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
		interpretation: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		referenceRange: [ObservationReferenceRange]? = nil,
		value: ValueX? = nil
	) {
		self.code = code
		self.dataAbsentReason = dataAbsentReason
		self.`extension` = `extension`
		self.id = id
		self.interpretation = interpretation
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
		case interpretation
		case modifierExtension
		case referenceRange
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDateTime; case _valueDateTime
		case valueInteger; case _valueInteger
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueReference
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
		self.interpretation = try [CodeableConcept](from: _container, forKeyIfPresent: .interpretation)
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
		try interpretation?.encode(on: &_container, forKey: .interpretation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try referenceRange?.encode(on: &_container, forKey: .referenceRange)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
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
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
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
 
 Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are
 interpreted as an "OR".   In other words, to represent two distinct target populations, two `referenceRange` elements
 would be used.
 */
public struct ObservationReferenceRange: BackboneElement {
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// Reference range population
	public var appliesTo: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// High Range, if relevant
	public var high: Quantity?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Low Range, if relevant
	public var low: Quantity?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Normal value, if relevant
	public var normalValue: CodeableConcept?
	
	/// Text based reference range in an observation
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Reference range qualifier
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		age: Range? = nil,
		appliesTo: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		high: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		low: Quantity? = nil,
		modifierExtension: [Extension]? = nil,
		normalValue: CodeableConcept? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.age = age
		self.appliesTo = appliesTo
		self.`extension` = `extension`
		self.high = high
		self.id = id
		self.low = low
		self.modifierExtension = modifierExtension
		self.normalValue = normalValue
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case age
		case appliesTo
		case `extension` = "extension"
		case high
		case id; case _id
		case low
		case modifierExtension
		case normalValue
		case text; case _text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.appliesTo = try [CodeableConcept](from: _container, forKeyIfPresent: .appliesTo)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.high = try Quantity(from: _container, forKeyIfPresent: .high)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.low = try Quantity(from: _container, forKeyIfPresent: .low)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.normalValue = try CodeableConcept(from: _container, forKeyIfPresent: .normalValue)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try age?.encode(on: &_container, forKey: .age)
		try appliesTo?.encode(on: &_container, forKey: .appliesTo)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try high?.encode(on: &_container, forKey: .high)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try low?.encode(on: &_container, forKey: .low)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try normalValue?.encode(on: &_container, forKey: .normalValue)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Triggering observation(s).
 
 Identifies the observation(s) that triggered the performance of this observation.
 */
public struct ObservationTriggeredBy: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Triggering observation
	public var observation: Reference
	
	/// Reason that the observation was triggered
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// reflex | repeat | re-run
	public var type: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		observation: Reference,
		reason: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.observation = observation
		self.reason = reason
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case observation
		case reason; case _reason
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
		self.observation = try Reference(from: _container, forKey: .observation)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try observation.encode(on: &_container, forKey: .observation)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
