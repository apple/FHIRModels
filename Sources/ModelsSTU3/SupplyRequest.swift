//
//  SupplyRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/SupplyRequest)
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
 Request for a medication, substance or device.
 
 A record of a request for a medication, substance or device used in the healthcare setting.
 */
open class SupplyRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .supplyRequest }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Unique identifier
	public var identifier: Identifier?
	
	/// Status of the supply request.
	public var status: FHIRPrimitive<SupplyRequestStatus>?
	
	/// The kind of supply (central, non-stock, etc.)
	public var category: CodeableConcept?
	
	/// Indicates how quickly this SupplyRequest should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// The item being requested
	public var orderedItem: SupplyRequestOrderedItem?
	
	/// When the request should be fulfilled
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When the request was made
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/what is requesting service
	public var requester: SupplyRequestRequester?
	
	/// Who is intended to fulfill the request
	public var supplier: [Reference]?
	
	/// Why the supply item was requested
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// The origin of the supply
	public var deliverFrom: Reference?
	
	/// The destination of the supply
	public var deliverTo: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							category: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							deliverFrom: Reference? = nil,
							deliverTo: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							occurrence: OccurrenceX? = nil,
							orderedItem: SupplyRequestOrderedItem? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reason: ReasonX? = nil,
							requester: SupplyRequestRequester? = nil,
							status: FHIRPrimitive<SupplyRequestStatus>? = nil,
							supplier: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.authoredOn = authoredOn
		self.category = category
		self.contained = contained
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
		self.orderedItem = orderedItem
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
		case category
		case deliverFrom
		case deliverTo
		case identifier
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case orderedItem
		case priority; case _priority
		case reasonCodeableConcept
		case reasonReference
		case requester
		case status; case _status
		case supplier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.deliverFrom = try Reference(from: _container, forKeyIfPresent: .deliverFrom)
		self.deliverTo = try Reference(from: _container, forKeyIfPresent: .deliverTo)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
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
		self.orderedItem = try SupplyRequestOrderedItem(from: _container, forKeyIfPresent: .orderedItem)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		self.requester = try SupplyRequestRequester(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<SupplyRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.supplier = try [Reference](from: _container, forKeyIfPresent: .supplier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try category?.encode(on: &_container, forKey: .category)
		try deliverFrom?.encode(on: &_container, forKey: .deliverFrom)
		try deliverTo?.encode(on: &_container, forKey: .deliverTo)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		try orderedItem?.encode(on: &_container, forKey: .orderedItem)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		if let _enum = reason {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reasonReference)
			}
		}
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
		    && category == _other.category
		    && deliverFrom == _other.deliverFrom
		    && deliverTo == _other.deliverTo
		    && identifier == _other.identifier
		    && occurrence == _other.occurrence
		    && orderedItem == _other.orderedItem
		    && priority == _other.priority
		    && reason == _other.reason
		    && requester == _other.requester
		    && status == _other.status
		    && supplier == _other.supplier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(category)
		hasher.combine(deliverFrom)
		hasher.combine(deliverTo)
		hasher.combine(identifier)
		hasher.combine(occurrence)
		hasher.combine(orderedItem)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(supplier)
	}
}

/**
 The item being requested.
 */
open class SupplyRequestOrderedItem: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The requested amount of the item indicated
	public var quantity: Quantity
	
	/// Medication, Substance, or Device requested to be supplied
	/// One of `item[x]`
	public var item: ItemX?
	
	/// Designated initializer taking all required properties
	public init(quantity: Quantity) {
		self.quantity = quantity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity)
	{
		self.init(quantity: quantity)
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
		case quantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		self.item = _t_item
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = item {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			}
		}
		try quantity.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyRequestOrderedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
		    && quantity == _other.quantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
		hasher.combine(quantity)
	}
}

/**
 Who/what is requesting service.
 
 The individual who initiated the request and has responsibility for its activation.
 */
open class SupplyRequestRequester: BackboneElement {
	
	/// Individual making the request
	public var agent: Reference
	
	/// Organization agent is acting for
	public var onBehalfOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(agent: Reference) {
		self.agent = agent
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							agent: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							onBehalfOf: Reference? = nil)
	{
		self.init(agent: agent)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case onBehalfOf
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.agent = try Reference(from: _container, forKey: .agent)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent.encode(on: &_container, forKey: .agent)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyRequestRequester else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return agent == _other.agent
		    && onBehalfOf == _other.onBehalfOf
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(agent)
		hasher.combine(onBehalfOf)
	}
}
