//
//  SupplyDelivery.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery)
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
 Delivery of Supply.
 
 Record of delivery of what is supplied.
 */
open class SupplyDelivery: DomainResource {
	
	override open class var resourceType: ResourceType { return .supplyDelivery }
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A code specifying the state of the dispense event.
	/// Restricted to: ['in-progress', 'completed', 'abandoned']
	public var status: FHIRPrimitive<SupplyDeliveryStatus>?
	
	/// Patient for whom the item is supplied
	public var patient: Reference?
	
	/// Category of dispense event
	public var type: CodeableConcept?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Medication, Substance, or Device supplied
	public var suppliedItem: Reference?
	
	/// Dispenser
	public var supplier: Reference?
	
	/// Dispensing time
	public var whenPrepared: Period?
	
	/// Handover time
	public var time: FHIRPrimitive<DateTime>?
	
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
							contained: [ResourceProxy]? = nil,
							destination: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							patient: Reference? = nil,
							quantity: Quantity? = nil,
							receiver: [Reference]? = nil,
							status: FHIRPrimitive<SupplyDeliveryStatus>? = nil,
							suppliedItem: Reference? = nil,
							supplier: Reference? = nil,
							text: Narrative? = nil,
							time: FHIRPrimitive<DateTime>? = nil,
							type: CodeableConcept? = nil,
							whenPrepared: Period? = nil)
	{
		self.init()
		self.contained = contained
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.quantity = quantity
		self.receiver = receiver
		self.status = status
		self.suppliedItem = suppliedItem
		self.supplier = supplier
		self.text = text
		self.time = time
		self.type = type
		self.whenPrepared = whenPrepared
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case destination
		case identifier
		case patient
		case quantity
		case receiver
		case status; case _status
		case suppliedItem
		case supplier
		case time; case _time
		case type
		case whenPrepared
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<SupplyDeliveryStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.suppliedItem = try Reference(from: _container, forKeyIfPresent: .suppliedItem)
		self.supplier = try Reference(from: _container, forKeyIfPresent: .supplier)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.whenPrepared = try Period(from: _container, forKeyIfPresent: .whenPrepared)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try destination?.encode(on: &_container, forKey: .destination)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patient?.encode(on: &_container, forKey: .patient)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try suppliedItem?.encode(on: &_container, forKey: .suppliedItem)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type?.encode(on: &_container, forKey: .type)
		try whenPrepared?.encode(on: &_container, forKey: .whenPrepared)
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
		return destination == _other.destination
		    && identifier == _other.identifier
		    && patient == _other.patient
		    && quantity == _other.quantity
		    && receiver == _other.receiver
		    && status == _other.status
		    && suppliedItem == _other.suppliedItem
		    && supplier == _other.supplier
		    && time == _other.time
		    && type == _other.type
		    && whenPrepared == _other.whenPrepared
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(destination)
		hasher.combine(identifier)
		hasher.combine(patient)
		hasher.combine(quantity)
		hasher.combine(receiver)
		hasher.combine(status)
		hasher.combine(suppliedItem)
		hasher.combine(supplier)
		hasher.combine(time)
		hasher.combine(type)
		hasher.combine(whenPrepared)
	}
}
