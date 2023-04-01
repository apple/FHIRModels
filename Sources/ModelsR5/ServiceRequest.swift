//
//  ServiceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ServiceRequest)
//  Copyright 2023 Apple Inc.
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
	
	/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// proposal | plan | directive | order +
	public var intent: FHIRPrimitive<FHIRString>
	
	/// Classification of service
	public var category: [CodeableConcept]?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// True if service/procedure should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// What is being requested/ordered
	public var code: CodeableReference?
	
	/// Additional order information
	public var orderDetail: [ServiceRequestOrderDetail]?
	
	/// Service amount
	/// One of `quantity[x]`
	public var quantity: QuantityX?
	
	/// Individual or Entity the service is ordered for
	public var subject: Reference
	
	/// What the service request is about, when it is not about the subject of record
	public var focus: [Reference]?
	
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
	public var supportingInfo: [CodeableReference]?
	
	/// Procedure Samples
	public var specimen: [Reference]?
	
	/// Coded location on Body
	public var bodySite: [CodeableConcept]?
	
	/// BodyStructure-based location on the body
	public var bodyStructure: Reference?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Patient or consumer-oriented instructions
	public var patientInstruction: [ServiceRequestPatientInstruction]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<FHIRString>, subject: Reference) {
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
		bodyStructure: Reference? = nil,
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
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<FHIRString>,
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
		priority: FHIRPrimitive<FHIRString>? = nil,
		quantity: QuantityX? = nil,
		reason: [CodeableReference]? = nil,
		relevantHistory: [Reference]? = nil,
		replaces: [Reference]? = nil,
		requester: Reference? = nil,
		requisition: Identifier? = nil,
		specimen: [Reference]? = nil,
		status: FHIRPrimitive<FHIRString>,
		subject: Reference,
		supportingInfo: [CodeableReference]? = nil,
		text: Narrative? = nil
	) {
		self.init(intent: intent, status: status, subject: subject)
		self.asNeeded = asNeeded
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.bodySite = bodySite
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
		case bodyStructure
		case category
		case code
		case doNotPerform; case _doNotPerform
		case encounter
		case focus
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
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableReference(from: _container, forKeyIfPresent: .code)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
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
		self.orderDetail = try [ServiceRequestOrderDetail](from: _container, forKeyIfPresent: .orderDetail)
		self.patientInstruction = try [ServiceRequestPatientInstruction](from: _container, forKeyIfPresent: .patientInstruction)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
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
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [CodeableReference](from: _container, forKeyIfPresent: .supportingInfo)
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
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try focus?.encode(on: &_container, forKey: .focus)
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
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction)
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
		    && bodyStructure == _other.bodyStructure
		    && category == _other.category
		    && code == _other.code
		    && doNotPerform == _other.doNotPerform
		    && encounter == _other.encounter
		    && focus == _other.focus
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
		hasher.combine(bodyStructure)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(doNotPerform)
		hasher.combine(encounter)
		hasher.combine(focus)
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

/**
 Additional order information.
 
 Additional details and instructions about the how the services are to be delivered.   For example, and order for a
 urinary catheter may have an order detail for an external or indwelling catheter, or an order for a bandage may require
 additional instructions specifying how the bandage should be applied.
 */
open class ServiceRequestOrderDetail: BackboneElement {
	
	/// The context of the order details by reference
	public var parameterFocus: CodeableReference?
	
	/// The parameter details for the service being requested
	public var parameter: [ServiceRequestOrderDetailParameter]
	
	/// Designated initializer taking all required properties
	public init(parameter: [ServiceRequestOrderDetailParameter]) {
		self.parameter = parameter
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		parameter: [ServiceRequestOrderDetailParameter],
		parameterFocus: CodeableReference? = nil
	) {
		self.init(parameter: parameter)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameterFocus = parameterFocus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case parameter
		case parameterFocus
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.parameter = try [ServiceRequestOrderDetailParameter](from: _container, forKey: .parameter)
		self.parameterFocus = try CodeableReference(from: _container, forKeyIfPresent: .parameterFocus)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try parameter.encode(on: &_container, forKey: .parameter)
		try parameterFocus?.encode(on: &_container, forKey: .parameterFocus)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ServiceRequestOrderDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return parameter == _other.parameter
		    && parameterFocus == _other.parameterFocus
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(parameter)
		hasher.combine(parameterFocus)
	}
}

/**
 The parameter details for the service being requested.
 */
open class ServiceRequestOrderDetailParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The detail of the order being requested
	public var code: CodeableConcept
	
	/// The value for the order detail
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valuePeriod, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
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
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		
			switch value {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ServiceRequestOrderDetailParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Patient or consumer-oriented instructions.
 
 Instructions in terms that are understood by the patient or consumer.
 */
open class ServiceRequestPatientInstruction: BackboneElement {
	
	/// All possible types for "instruction[x]"
	public enum InstructionX: Hashable {
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// Patient or consumer-oriented instructions
	/// One of `instruction[x]`
	public var instruction: InstructionX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: InstructionX? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.instruction = instruction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case instructionMarkdown; case _instructionMarkdown
		case instructionReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_instruction: InstructionX? = nil
		if let instructionMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instructionMarkdown, auxiliaryKey: ._instructionMarkdown) {
			if _t_instruction != nil {
				throw DecodingError.dataCorruptedError(forKey: .instructionMarkdown, in: _container, debugDescription: "More than one value provided for \"instruction\"")
			}
			_t_instruction = .markdown(instructionMarkdown)
		}
		if let instructionReference = try Reference(from: _container, forKeyIfPresent: .instructionReference) {
			if _t_instruction != nil {
				throw DecodingError.dataCorruptedError(forKey: .instructionReference, in: _container, debugDescription: "More than one value provided for \"instruction\"")
			}
			_t_instruction = .reference(instructionReference)
		}
		self.instruction = _t_instruction
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = instruction {
			switch _enum {
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .instructionMarkdown, auxiliaryKey: ._instructionMarkdown)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .instructionReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ServiceRequestPatientInstruction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return instruction == _other.instruction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(instruction)
	}
}
