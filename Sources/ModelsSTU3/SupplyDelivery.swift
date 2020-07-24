//
//  SupplyDelivery.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery)
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
 Delivery of bulk Supplies.
 
 Record of delivery of what is supplied.
 */
open class SupplyDelivery: DomainResource {
	
	override open class var resourceType: ResourceType { return .supplyDelivery }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External identifier
	public var identifier: Identifier?
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// A code specifying the state of the dispense event.
	public var status: FHIRPrimitive<SupplyDeliveryStatus>?
	
	/// Patient for whom the item is supplied
	public var patient: Reference?
	
	/// Category of dispense event
	public var type: CodeableConcept?
	
	/// The item that is delivered or supplied
	public var suppliedItem: SupplyDeliverySuppliedItem?
	
	/// When event occurred
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Dispenser
	public var supplier: Reference?
	
	/// Where the Supply was sent
	public var destination: Reference?
	
	/// Who collected the Supply
	public var receiver: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							destination: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							occurrence: OccurrenceX? = nil,
							partOf: [Reference]? = nil,
							patient: Reference? = nil,
							receiver: [Reference]? = nil,
							status: FHIRPrimitive<SupplyDeliveryStatus>? = nil,
							suppliedItem: SupplyDeliverySuppliedItem? = nil,
							supplier: Reference? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.basedOn = basedOn
		self.contained = contained
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.occurrence = occurrence
		self.partOf = partOf
		self.patient = patient
		self.receiver = receiver
		self.status = status
		self.suppliedItem = suppliedItem
		self.supplier = supplier
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case destination
		case identifier
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case partOf
		case patient
		case receiver
		case status; case _status
		case suppliedItem
		case supplier
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
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
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<SupplyDeliveryStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.suppliedItem = try SupplyDeliverySuppliedItem(from: _container, forKeyIfPresent: .suppliedItem)
		self.supplier = try Reference(from: _container, forKeyIfPresent: .supplier)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try destination?.encode(on: &_container, forKey: .destination)
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
		try partOf?.encode(on: &_container, forKey: .partOf)
		try patient?.encode(on: &_container, forKey: .patient)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try suppliedItem?.encode(on: &_container, forKey: .suppliedItem)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyDelivery else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && destination == _other.destination
		    && identifier == _other.identifier
		    && occurrence == _other.occurrence
		    && partOf == _other.partOf
		    && patient == _other.patient
		    && receiver == _other.receiver
		    && status == _other.status
		    && suppliedItem == _other.suppliedItem
		    && supplier == _other.supplier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(destination)
		hasher.combine(identifier)
		hasher.combine(occurrence)
		hasher.combine(partOf)
		hasher.combine(patient)
		hasher.combine(receiver)
		hasher.combine(status)
		hasher.combine(suppliedItem)
		hasher.combine(supplier)
		hasher.combine(type)
	}
}

/**
 The item that is delivered or supplied.
 
 The item that is being delivered or has been supplied.
 */
open class SupplyDeliverySuppliedItem: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Medication, Substance, or Device supplied
	/// One of `item[x]`
	public var item: ItemX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
		self.quantity = quantity
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
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
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
		try quantity?.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyDeliverySuppliedItem else {
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
