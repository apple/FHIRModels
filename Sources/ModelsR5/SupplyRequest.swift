//
//  SupplyRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SupplyRequest)
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
 Request for a medication, substance or device.
 
 A record of a request to deliver a medication, substance or device used in the healthcare setting to a particular
 destination for a particular person or organization.
 */
open class SupplyRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .supplyRequest }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Business Identifier for SupplyRequest
	public var identifier: [Identifier]?
	
	/// Status of the supply request.
	public var status: FHIRPrimitive<SupplyRequestStatus>?
	
	/// What other request is fulfilled by this supply request
	public var basedOn: [Reference]?
	
	/// The kind of supply (central, non-stock, etc.)
	public var category: CodeableConcept?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// The patient for who the supply request is for
	public var deliverFor: Reference?
	
	/// Medication, Substance, or Device requested to be supplied
	public var item: CodeableReference
	
	/// The requested amount of the item indicated
	public var quantity: Quantity
	
	/// Ordered item details
	public var parameter: [SupplyRequestParameter]?
	
	/// When the request should be fulfilled
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When the request was made
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Individual making the request
	public var requester: Reference?
	
	/// Who is intended to fulfill the request
	public var supplier: [Reference]?
	
	/// The reason why the supply item was requested
	public var reason: [CodeableReference]?
	
	/// The origin of the supply
	public var deliverFrom: Reference?
	
	/// The destination of the supply
	public var deliverTo: Reference?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference, quantity: Quantity) {
		self.item = item
		self.quantity = quantity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		category: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		deliverFor: Reference? = nil,
		deliverFrom: Reference? = nil,
		deliverTo: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		item: CodeableReference,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		occurrence: OccurrenceX? = nil,
		parameter: [SupplyRequestParameter]? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity,
		reason: [CodeableReference]? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<SupplyRequestStatus>? = nil,
		supplier: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.init(item: item, quantity: quantity)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.deliverFor = deliverFor
		self.deliverFrom = deliverFrom
		self.deliverTo = deliverTo
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.occurrence = occurrence
		self.parameter = parameter
		self.priority = priority
		self.reason = reason
		self.requester = requester
		self.status = status
		self.supplier = supplier
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case deliverFor
		case deliverFrom
		case deliverTo
		case identifier
		case item
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case parameter
		case priority; case _priority
		case quantity
		case reason
		case requester
		case status; case _status
		case supplier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.deliverFor = try Reference(from: _container, forKeyIfPresent: .deliverFor)
		self.deliverFrom = try Reference(from: _container, forKeyIfPresent: .deliverFrom)
		self.deliverTo = try Reference(from: _container, forKeyIfPresent: .deliverTo)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.item = try CodeableReference(from: _container, forKey: .item)
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
		self.parameter = try [SupplyRequestParameter](from: _container, forKeyIfPresent: .parameter)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<SupplyRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.supplier = try [Reference](from: _container, forKeyIfPresent: .supplier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try deliverFor?.encode(on: &_container, forKey: .deliverFor)
		try deliverFrom?.encode(on: &_container, forKey: .deliverFrom)
		try deliverTo?.encode(on: &_container, forKey: .deliverTo)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try item.encode(on: &_container, forKey: .item)
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
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try quantity.encode(on: &_container, forKey: .quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try requester?.encode(on: &_container, forKey: .requester)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && deliverFor == _other.deliverFor
		    && deliverFrom == _other.deliverFrom
		    && deliverTo == _other.deliverTo
		    && identifier == _other.identifier
		    && item == _other.item
		    && occurrence == _other.occurrence
		    && parameter == _other.parameter
		    && priority == _other.priority
		    && quantity == _other.quantity
		    && reason == _other.reason
		    && requester == _other.requester
		    && status == _other.status
		    && supplier == _other.supplier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(deliverFor)
		hasher.combine(deliverFrom)
		hasher.combine(deliverTo)
		hasher.combine(identifier)
		hasher.combine(item)
		hasher.combine(occurrence)
		hasher.combine(parameter)
		hasher.combine(priority)
		hasher.combine(quantity)
		hasher.combine(reason)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(supplier)
	}
}

/**
 Ordered item details.
 
 Specific parameters for the ordered item.  For example, the size of the indicated item.
 */
open class SupplyRequestParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Item detail
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
		guard let _other = _other as? SupplyRequestParameter else {
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
