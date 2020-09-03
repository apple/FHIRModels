//
//  ServiceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ServiceRequest)
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
 A request for a service to be performed.
 
 A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
 */
open class ServiceRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .serviceRequest }
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// All possible types for "quantity[x]"
	public enum QuantityX: Hashable {
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
	}
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// What request replaces
	public var replaces: [Reference]?
	
	/// Composite Request ID
	public var requisition: Identifier?
	
	/// The status of the order.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Classification of service
	public var category: [CodeableConcept]?
	
	/// Indicates how quickly the ServiceRequest should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// True if service/procedure should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// What is being requested/ordered
	public var code: CodeableConcept?
	
	/// Additional order information
	public var orderDetail: [CodeableConcept]?
	
	/// Service amount
	/// One of `quantity[x]`
	public var quantity: QuantityX?
	
	/// Individual or Entity the service is ordered for
	public var subject: Reference
	
	/// Encounter in which the request was created
	public var encounter: Reference?
	
	/// When service should occur
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Preconditions for service
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Date request signed
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/what is requesting service
	public var requester: Reference?
	
	/// Performer role
	public var performerType: CodeableConcept?
	
	/// Requested performer
	public var performer: [Reference]?
	
	/// Requested location
	public var location: [CodeableReference]?
	
	/// Explanation/Justification for procedure or service
	public var reason: [CodeableReference]?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Procedure Samples
	public var specimen: [Reference]?
	
	/// Location on Body
	public var bodySite: [CodeableConcept]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Patient or consumer-oriented instructions
	public var patientInstruction: FHIRPrimitive<FHIRString>?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<RequestIntent>, status: FHIRPrimitive<RequestStatus>, subject: Reference) {
		self.intent = intent
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							location: [CodeableReference]? = nil,
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
							reason: [CodeableReference]? = nil,
							relevantHistory: [Reference]? = nil,
							replaces: [Reference]? = nil,
							requester: Reference? = nil,
							requisition: Identifier? = nil,
							specimen: [Reference]? = nil,
							status: FHIRPrimitive<RequestStatus>,
							subject: Reference,
							supportingInfo: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(intent: intent, status: status, subject: subject)
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
		self.specimen = specimen
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case authoredOn; case _authoredOn
		case basedOn
		case bodySite
		case category
		case code
		case doNotPerform; case _doNotPerform
		case encounter
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case location
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
		case reason
		case relevantHistory
		case replaces
		case requester
		case requisition
		case specimen
		case status; case _status
		case subject
		case supportingInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededBoolean, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		self.asNeeded = _t_asNeeded
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.location = try [CodeableReference](from: _container, forKeyIfPresent: .location)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
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
		self.occurrence = _t_occurrence
		self.orderDetail = try [CodeableConcept](from: _container, forKeyIfPresent: .orderDetail)
		self.patientInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patientInstruction, auxiliaryKey: ._patientInstruction)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		var _t_quantity: QuantityX? = nil
		if let quantityQuantity = try Quantity(from: _container, forKeyIfPresent: .quantityQuantity) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityQuantity, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .quantity(quantityQuantity)
		}
		if let quantityRatio = try Ratio(from: _container, forKeyIfPresent: .quantityRatio) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityRatio, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .ratio(quantityRatio)
		}
		if let quantityRange = try Range(from: _container, forKeyIfPresent: .quantityRange) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityRange, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .range(quantityRange)
		}
		self.quantity = _t_quantity
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.requisition = try Identifier(from: _container, forKeyIfPresent: .requisition)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try location?.encode(on: &_container, forKey: .location)
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
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .quantityRatio)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .quantityRange)
			}
		}
		try reason?.encode(on: &_container, forKey: .reason)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try requisition?.encode(on: &_container, forKey: .requisition)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ServiceRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && doNotPerform == _other.doNotPerform
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && insurance == _other.insurance
		    && intent == _other.intent
		    && location == _other.location
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && orderDetail == _other.orderDetail
		    && patientInstruction == _other.patientInstruction
		    && performer == _other.performer
		    && performerType == _other.performerType
		    && priority == _other.priority
		    && quantity == _other.quantity
		    && reason == _other.reason
		    && relevantHistory == _other.relevantHistory
		    && replaces == _other.replaces
		    && requester == _other.requester
		    && requisition == _other.requisition
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(doNotPerform)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(insurance)
		hasher.combine(intent)
		hasher.combine(location)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(orderDetail)
		hasher.combine(patientInstruction)
		hasher.combine(performer)
		hasher.combine(performerType)
		hasher.combine(priority)
		hasher.combine(quantity)
		hasher.combine(reason)
		hasher.combine(relevantHistory)
		hasher.combine(replaces)
		hasher.combine(requester)
		hasher.combine(requisition)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
	}
}
