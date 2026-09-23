//
//  ServiceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ServiceRequest)
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
 
 A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
 */
public struct ServiceRequest: DomainResource {
	
	public static let resourceType: ResourceType = .serviceRequest
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
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
	
	/// Preconditions for service
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Date request signed
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Location on Body
	public var bodySite: [CodeableConcept]?
	
	/// Classification of service
	public var category: [CodeableConcept]?
	
	/// What is being requested/ordered
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// True if service/procedure should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Encounter in which the request was created
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers assigned to this order
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
	
	/// Requested location
	public var locationCode: [CodeableConcept]?
	
	/// Requested location
	public var locationReference: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// When service should occur
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Additional order information
	public var orderDetail: [CodeableConcept]?
	
	/// Patient or consumer-oriented instructions
	public var patientInstruction: FHIRPrimitive<FHIRString>?
	
	/// Requested performer
	public var performer: [Reference]?
	
	/// Performer role
	public var performerType: CodeableConcept?
	
	/// Indicates how quickly the ServiceRequest should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Service amount
	/// One of `quantity[x]`
	public var quantity: QuantityX?
	
	/// Explanation/Justification for procedure or service
	public var reasonCode: [CodeableConcept]?
	
	/// Explanation/Justification for service or service
	public var reasonReference: [Reference]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// What request replaces
	public var replaces: [Reference]?
	
	/// Who/what is requesting service
	public var requester: Reference?
	
	/// Composite Request ID
	public var requisition: Identifier?
	
	/// Procedure Samples
	public var specimen: [Reference]?
	
	/// The status of the order.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Individual or Entity the service is ordered for
	public var subject: Reference
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		asNeeded: AsNeededX? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		bodySite: [CodeableConcept]? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		locationCode: [CodeableConcept]? = nil,
		locationReference: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		orderDetail: [CodeableConcept]? = nil,
		patientInstruction: FHIRPrimitive<FHIRString>? = nil,
		performer: [Reference]? = nil,
		performerType: CodeableConcept? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		quantity: QuantityX? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		relevantHistory: [Reference]? = nil,
		replaces: [Reference]? = nil,
		requester: Reference? = nil,
		requisition: Identifier? = nil,
		specimen: [Reference]? = nil,
		status: FHIRPrimitive<RequestStatus>,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.asNeeded = asNeeded
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.code = code
		self.contained = contained
		self.doNotPerform = doNotPerform
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.insurance = insurance
		self.intent = intent
		self.language = language
		self.locationCode = locationCode
		self.locationReference = locationReference
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
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.relevantHistory = relevantHistory
		self.replaces = replaces
		self.requester = requester
		self.requisition = requisition
		self.specimen = specimen
		self.status = status
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case authoredOn; case _authoredOn
		case basedOn
		case bodySite
		case category
		case code
		case contained
		case doNotPerform; case _doNotPerform
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case language; case _language
		case locationCode
		case locationReference
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case orderDetail
		case patientInstruction; case _patientInstruction
		case performer
		case performerType
		case priority; case _priority
		case quantityQuantity
		case quantityRange
		case quantityRatio
		case reasonCode
		case reasonReference
		case relevantHistory
		case replaces
		case requester
		case requisition
		case specimen
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
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.locationCode = try [CodeableConcept](from: _container, forKeyIfPresent: .locationCode)
		self.locationReference = try [Reference](from: _container, forKeyIfPresent: .locationReference)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.orderDetail = try [CodeableConcept](from: _container, forKeyIfPresent: .orderDetail)
		self.patientInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patientInstruction, auxiliaryKey: ._patientInstruction)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.quantity = try Self._decodeQuantity(from: _container)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.requisition = try Identifier(from: _container, forKeyIfPresent: .requisition)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		if let _enum = asNeeded {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
		}
		}
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try locationCode?.encode(on: &_container, forKey: .locationCode)
		try locationReference?.encode(on: &_container, forKey: .locationReference)
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
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction, auxiliaryKey: ._patientInstruction)
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
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try requisition?.encode(on: &_container, forKey: .requisition)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAsNeeded(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AsNeededX? {
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		return _t_asNeeded
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
