//
//  DeviceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DeviceRequest)
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
 Medical device request.
 
 Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
 assistive device, such as a walker.
 */
open class DeviceRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceRequest }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External Request identifier
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// What request replaces
	public var replaces: [Reference]?
	
	/// Identifier of composite request
	public var groupIdentifier: Identifier?
	
	/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>?
	
	/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
	public var intent: FHIRPrimitive<FHIRString>
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// True if the request is to stop or not to start using the device
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Device requested
	public var code: CodeableReference
	
	/// Quantity of devices to supply
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// Device details
	public var parameter: [DeviceRequestParameter]?
	
	/// Focus of request
	public var subject: Reference
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Desired time or schedule for use
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When recorded
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/what submitted the device request
	public var requester: Reference?
	
	/// Requested Filler
	public var performer: CodeableReference?
	
	/// Coded/Linked Reason for request
	public var reason: [CodeableReference]?
	
	/// PRN status of request
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Device usage reason
	public var asNeededFor: CodeableConcept?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Notes or comments
	public var note: [Annotation]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableReference, intent: FHIRPrimitive<FHIRString>, subject: Reference) {
		self.code = code
		self.intent = intent
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		code: CodeableReference,
		contained: [ResourceProxy]? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<FHIRString>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		parameter: [DeviceRequestParameter]? = nil,
		performer: CodeableReference? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		quantity: FHIRPrimitive<FHIRInteger>? = nil,
		reason: [CodeableReference]? = nil,
		relevantHistory: [Reference]? = nil,
		replaces: [Reference]? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<FHIRString>? = nil,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.init(code: code, intent: intent, subject: subject)
		self.asNeeded = asNeeded
		self.asNeededFor = asNeededFor
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.contained = contained
		self.doNotPerform = doNotPerform
		self.encounter = encounter
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.insurance = insurance
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.parameter = parameter
		self.performer = performer
		self.priority = priority
		self.quantity = quantity
		self.reason = reason
		self.relevantHistory = relevantHistory
		self.replaces = replaces
		self.requester = requester
		self.status = status
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeeded; case _asNeeded
		case asNeededFor
		case authoredOn; case _authoredOn
		case basedOn
		case code
		case doNotPerform; case _doNotPerform
		case encounter
		case groupIdentifier
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case parameter
		case performer
		case priority; case _priority
		case quantity; case _quantity
		case reason
		case relevantHistory
		case replaces
		case requester
		case status; case _status
		case subject
		case supportingInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try CodeableReference(from: _container, forKey: .code)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
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
		self.parameter = try [DeviceRequestParameter](from: _container, forKeyIfPresent: .parameter)
		self.performer = try CodeableReference(from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.quantity = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try code.encode(on: &_container, forKey: .code)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
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
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && asNeededFor == _other.asNeededFor
		    && authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && code == _other.code
		    && doNotPerform == _other.doNotPerform
		    && encounter == _other.encounter
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && insurance == _other.insurance
		    && intent == _other.intent
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && parameter == _other.parameter
		    && performer == _other.performer
		    && priority == _other.priority
		    && quantity == _other.quantity
		    && reason == _other.reason
		    && relevantHistory == _other.relevantHistory
		    && replaces == _other.replaces
		    && requester == _other.requester
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(asNeededFor)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(code)
		hasher.combine(doNotPerform)
		hasher.combine(encounter)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(insurance)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(parameter)
		hasher.combine(performer)
		hasher.combine(priority)
		hasher.combine(quantity)
		hasher.combine(reason)
		hasher.combine(relevantHistory)
		hasher.combine(replaces)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
	}
}

/**
 Device details.
 
 Specific parameters for the ordered item.  For example, the prism value for lenses.
 */
open class DeviceRequestParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Device detail
	public var code: CodeableConcept?
	
	/// Value of detail
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX? = nil
	) {
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		var _t_value: ValueX? = nil
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
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceRequestParameter else {
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
