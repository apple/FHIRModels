//
//  DeviceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/DeviceRequest)
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
 Medical device request.
 
 Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
 assistive device, such as a walker.
 */
public struct DeviceRequest: DomainResource {
	
	public static let resourceType: ResourceType = .deviceRequest
	
	/// All possible types for "code[x]"
	public enum CodeX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// When recorded
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Device requested
	/// One of `code[x]`
	public var code: CodeX
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Identifier of composite request
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Request identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Notes or comments
	public var note: [Annotation]?
	
	/// Desired time or schedule for use
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Device details
	public var parameter: [DeviceRequestParameter]?
	
	/// Requested Filler
	public var performer: Reference?
	
	/// Filler role
	public var performerType: CodeableConcept?
	
	/// What request replaces
	public var priorRequest: [Reference]?
	
	/// Indicates how quickly the {{title}} should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Coded Reason for request
	public var reasonCode: [CodeableConcept]?
	
	/// Linked Reason for request
	public var reasonReference: [Reference]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// Who/what is requesting diagnostics
	public var requester: Reference?
	
	/// The status of the request.
	public var status: FHIRPrimitive<RequestStatus>?
	
	/// Focus of request
	public var subject: Reference
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		code: CodeX,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		parameter: [DeviceRequestParameter]? = nil,
		performer: Reference? = nil,
		performerType: CodeableConcept? = nil,
		priorRequest: [Reference]? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		relevantHistory: [Reference]? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<RequestStatus>? = nil,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.code = code
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.insurance = insurance
		self.intent = intent
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.parameter = parameter
		self.performer = performer
		self.performerType = performerType
		self.priorRequest = priorRequest
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.relevantHistory = relevantHistory
		self.requester = requester
		self.status = status
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authoredOn; case _authoredOn
		case basedOn
		case codeCodeableConcept
		case codeReference
		case contained
		case encounter
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case language; case _language
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case parameter
		case performer
		case performerType
		case priorRequest
		case priority; case _priority
		case reasonCode
		case reasonReference
		case relevantHistory
		case requester
		case status; case _status
		case subject
		case supportingInfo
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try Self._decodeCode(from: _container)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.parameter = try [DeviceRequestParameter](from: _container, forKeyIfPresent: .parameter)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priorRequest = try [Reference](from: _container, forKeyIfPresent: .priorRequest)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		
		switch code {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .codeCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .codeReference)
		}
		
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurrencePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceTiming)
		}
		}
		try parameter?.encode(on: &_container, forKey: .parameter)
		try performer?.encode(on: &_container, forKey: .performer)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priorRequest?.encode(on: &_container, forKey: .priorRequest)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try requester?.encode(on: &_container, forKey: .requester)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCode(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CodeX {
		var _t_code: CodeX? = nil
		if let codeCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .codeCodeableConcept) {
			_t_code = .codeableConcept(codeCodeableConcept)
		}
		if let codeReference = try Reference(from: _container, forKeyIfPresent: .codeReference) {
			if _t_code != nil {
				throw DecodingError.dataCorruptedError(forKey: .codeReference, in: _container, debugDescription: "More than one value provided for \"code\"")
			}
			_t_code = .reference(codeReference)
		}
		guard let _t_code else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.codeReference)
			throw DecodingError.valueNotFound(CodeX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"code\" but have none"))
		}
		return _t_code
	}
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		return _t_occurrence
	}
}

/**
 Device details.
 
 Specific parameters for the ordered item.  For example, the prism value for lenses.
 */
public struct DeviceRequestParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// Device detail
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value of detail
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = value {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
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
		return _t_value
	}
}
