//
//  ServiceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ServiceRequest)
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
 A request for a service to be performed.
 
 A record of a request for service such as diagnostic investigations, treatments, or operations to be performed. When
 the ServiceRequest is active, it represents an authorization to perform the service.
 */
public struct ServiceRequest: DomainResource {
	
	public static let resourceType: ResourceType = .serviceRequest
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// All possible types for "quantity[x]"
	public enum QuantityX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
	}
	
	/// Perform the service "as needed"
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Specified criteria for the service
	public var asNeededFor: [CodeableConcept]?
	
	/// Date request signed
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// BodyStructure-based location on the body
	public var bodyStructure: CodeableReference?
	
	/// Classification of service
	public var category: [CodeableConcept]?
	
	/// What is being requested/ordered
	public var code: CodeableReference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// True if service/procedure should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Encounter in which the request was created
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What the service request is about, when it is not about the subject of record
	public var focus: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Requested location
	public var location: [CodeableReference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// When service should occur
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Additional information about the request
	public var orderDetail: [ServiceRequestOrderDetail]?
	
	/// Patient or consumer-oriented instructions
	public var patientInstruction: [ServiceRequestPatientInstruction]?
	
	/// Requested performer
	public var performer: [Reference]?
	
	/// Performer role
	public var performerType: CodeableConcept?
	
	/// Indicates how quickly the ServiceRequest should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Service amount
	/// One of `quantity[x]`
	public var quantity: QuantityX?
	
	/// Reason or indication for requesting the service
	public var reason: [CodeableReference]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// What request replaces
	public var replaces: [Reference]?
	
	/// Who/what is requesting service
	public var requester: Reference?
	
	/// Composite Request ID
	public var requisition: Identifier?
	
	/// The status of the order.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Reason for current status
	public var statusReason: [CodeableConcept]?
	
	/// Individual or Entity the service is ordered for
	public var subject: Reference
	
	/// Additional clinical information
	public var supportingInfo: [CodeableReference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: [CodeableConcept]? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		bodyStructure: CodeableReference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableReference? = nil,
		contained: [ResourceProxy]? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		focus: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [CodeableReference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		orderDetail: [ServiceRequestOrderDetail]? = nil,
		patientInstruction: [ServiceRequestPatientInstruction]? = nil,
		performer: [Reference]? = nil,
		performerType: CodeableConcept? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		quantity: QuantityX? = nil,
		reason: [CodeableReference]? = nil,
		relevantHistory: [Reference]? = nil,
		replaces: [Reference]? = nil,
		requester: Reference? = nil,
		requisition: Identifier? = nil,
		status: FHIRPrimitive<RequestStatus>,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference,
		supportingInfo: [CodeableReference]? = nil,
		text: Narrative? = nil
	) {
		self.asNeeded = asNeeded
		self.asNeededFor = asNeededFor
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.bodyStructure = bodyStructure
		self.category = category
		self.code = code
		self.contained = contained
		self.doNotPerform = doNotPerform
		self.encounter = encounter
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.intent = intent
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.orderDetail = orderDetail
		self.patientInstruction = patientInstruction
		self.performer = performer
		self.performerType = performerType
		self.priority = priority
		self.quantity = quantity
		self.reason = reason
		self.relevantHistory = relevantHistory
		self.replaces = replaces
		self.requester = requester
		self.requisition = requisition
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case asNeeded; case _asNeeded
		case asNeededFor
		case authoredOn; case _authoredOn
		case basedOn
		case bodyStructure
		case category
		case code
		case contained
		case doNotPerform; case _doNotPerform
		case encounter
		case `extension` = "extension"
		case focus
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case intent; case _intent
		case language; case _language
		case location
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case orderDetail
		case patientInstruction
		case performer
		case performerType
		case priority; case _priority
		case quantityQuantity
		case quantityRange
		case quantityRatio
		case reason
		case relevantHistory
		case replaces
		case requester
		case requisition
		case status; case _status
		case statusReason
		case subject
		case supportingInfo
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try [CodeableConcept](from: _container, forKeyIfPresent: .asNeededFor)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodyStructure = try CodeableReference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableReference(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try [CodeableReference](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.orderDetail = try [ServiceRequestOrderDetail](from: _container, forKeyIfPresent: .orderDetail)
		self.patientInstruction = try [ServiceRequestPatientInstruction](from: _container, forKeyIfPresent: .patientInstruction)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.quantity = try Self._decodeQuantity(from: _container)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.requisition = try Identifier(from: _container, forKeyIfPresent: .requisition)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [CodeableReference](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
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
		try orderDetail?.encode(on: &_container, forKey: .orderDetail)
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction)
		try performer?.encode(on: &_container, forKey: .performer)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		if let _enum = quantity {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .quantityQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .quantityRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .quantityRatio)
		}
		}
		try reason?.encode(on: &_container, forKey: .reason)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try requisition?.encode(on: &_container, forKey: .requisition)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
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
	
	private static func _decodeQuantity(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> QuantityX? {
		var _t_quantity: QuantityX? = nil
		if let quantityQuantity = try Quantity(from: _container, forKeyIfPresent: .quantityQuantity) {
			_t_quantity = .quantity(quantityQuantity)
		}
		if let quantityRange = try Range(from: _container, forKeyIfPresent: .quantityRange) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityRange, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .range(quantityRange)
		}
		if let quantityRatio = try Ratio(from: _container, forKeyIfPresent: .quantityRatio) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityRatio, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .ratio(quantityRatio)
		}
		return _t_quantity
	}
}

/**
 Additional information about the request.
 
 Additional details and instructions about how the services are to be delivered. For example, an order for a urinary
 catheter may have an order detail for an external or indwelling catheter, or an order for a bandage may require
 additional instructions specifying how the bandage should be applied. Questions or additional information to be
 gathered from a patient may be included here.
 */
public struct ServiceRequestOrderDetail: BackboneElement {
	
	/// All possible types for "parameterFocus[x]"
	public enum ParameterFocusX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The parameter details for the service being requested
	public var parameter: [ServiceRequestOrderDetailParameter]
	
	/// The context of the order details by reference
	/// One of `parameterFocus[x]`
	public var parameterFocus: ParameterFocusX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		parameter: [ServiceRequestOrderDetailParameter],
		parameterFocus: ParameterFocusX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameter = parameter
		self.parameterFocus = parameterFocus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case parameter
		case parameterFocusCanonical; case _parameterFocusCanonical
		case parameterFocusCodeableConcept
		case parameterFocusReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parameter = try [ServiceRequestOrderDetailParameter](from: _container, forKey: .parameter)
		self.parameterFocus = try Self._decodeParameterFocus(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parameter.encode(on: &_container, forKey: .parameter)
		if let _enum = parameterFocus {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .parameterFocusCanonical, auxiliaryKey: ._parameterFocusCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .parameterFocusCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .parameterFocusReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeParameterFocus(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ParameterFocusX? {
		var _t_parameterFocus: ParameterFocusX? = nil
		if let parameterFocusCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .parameterFocusCanonical, auxiliaryKey: ._parameterFocusCanonical) {
			_t_parameterFocus = .canonical(parameterFocusCanonical)
		}
		if let parameterFocusCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .parameterFocusCodeableConcept) {
			if _t_parameterFocus != nil {
				throw DecodingError.dataCorruptedError(forKey: .parameterFocusCodeableConcept, in: _container, debugDescription: "More than one value provided for \"parameterFocus\"")
			}
			_t_parameterFocus = .codeableConcept(parameterFocusCodeableConcept)
		}
		if let parameterFocusReference = try Reference(from: _container, forKeyIfPresent: .parameterFocusReference) {
			if _t_parameterFocus != nil {
				throw DecodingError.dataCorruptedError(forKey: .parameterFocusReference, in: _container, debugDescription: "More than one value provided for \"parameterFocus\"")
			}
			_t_parameterFocus = .reference(parameterFocusReference)
		}
		return _t_parameterFocus
	}
}

/**
 The parameter details for the service being requested.
 */
public struct ServiceRequestOrderDetailParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The detail of the order being requested
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The value for the order detail
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
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
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
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
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Patient or consumer-oriented instructions.
 
 Instructions in terms that are understood by the patient or consumer.
 */
public struct ServiceRequestPatientInstruction: BackboneElement {
	
	/// All possible types for "instruction[x]"
	public enum InstructionX: Equatable, Hashable, Sendable {
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Patient or consumer-oriented instructions
	/// One of `instruction[x]`
	public var instruction: InstructionX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: InstructionX? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.instruction = instruction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case instructionMarkdown; case _instructionMarkdown
		case instructionReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instruction = try Self._decodeInstruction(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = instruction {
		switch _enum {
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .instructionMarkdown, auxiliaryKey: ._instructionMarkdown)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .instructionReference)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeInstruction(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> InstructionX? {
		var _t_instruction: InstructionX? = nil
		if let instructionMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instructionMarkdown, auxiliaryKey: ._instructionMarkdown) {
			_t_instruction = .markdown(instructionMarkdown)
		}
		if let instructionReference = try Reference(from: _container, forKeyIfPresent: .instructionReference) {
			if _t_instruction != nil {
				throw DecodingError.dataCorruptedError(forKey: .instructionReference, in: _container, debugDescription: "More than one value provided for \"instruction\"")
			}
			_t_instruction = .reference(instructionReference)
		}
		return _t_instruction
	}
}
