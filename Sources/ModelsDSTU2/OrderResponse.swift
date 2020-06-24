//
//  OrderResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/OrderResponse)
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
 A response to an order.
 */
open class OrderResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .orderResponse }
	
	/// Identifiers assigned to this order by the orderer or by the receiver
	public var identifier: [Identifier]?
	
	/// The order that this is a response to
	public var request: Reference
	
	/// When the response was made
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who made the response
	public var who: Reference?
	
	/// What this response says about the status of the original order.
	/// Restricted to: ['pending', 'review', 'rejected', 'error', 'accepted', 'cancelled', 'aborted', 'completed']
	public var orderStatus: FHIRPrimitive<OrderStatus>
	
	/// Additional description of the response
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Details of the outcome of performing the order
	public var fulfillment: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(orderStatus: FHIRPrimitive<OrderStatus>, request: Reference) {
		self.orderStatus = orderStatus
		self.request = request
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							fulfillment: [Reference]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							orderStatus: FHIRPrimitive<OrderStatus>,
							request: Reference,
							text: Narrative? = nil,
							who: Reference? = nil)
	{
		self.init(orderStatus: orderStatus, request: request)
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.fulfillment = fulfillment
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case fulfillment
		case identifier
		case orderStatus; case _orderStatus
		case request
		case who
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.fulfillment = try [Reference](from: _container, forKeyIfPresent: .fulfillment)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.orderStatus = try FHIRPrimitive<OrderStatus>(from: _container, forKey: .orderStatus, auxiliaryKey: ._orderStatus)
		self.request = try Reference(from: _container, forKey: .request)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try fulfillment?.encode(on: &_container, forKey: .fulfillment)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try orderStatus.encode(on: &_container, forKey: .orderStatus, auxiliaryKey: ._orderStatus)
		try request.encode(on: &_container, forKey: .request)
		try who?.encode(on: &_container, forKey: .who)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OrderResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && description_fhir == _other.description_fhir
		    && fulfillment == _other.fulfillment
		    && identifier == _other.identifier
		    && orderStatus == _other.orderStatus
		    && request == _other.request
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(fulfillment)
		hasher.combine(identifier)
		hasher.combine(orderStatus)
		hasher.combine(request)
		hasher.combine(who)
	}
}
