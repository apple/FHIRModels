//
//  PaymentNotice.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/PaymentNotice)
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
 PaymentNotice request.
 
 This resource provides the status of the payment for goods and services rendered, and the request and response resource
 references.
 */
open class PaymentNotice: DomainResource {
	
	override open class var resourceType: ResourceType { return .paymentNotice }
	
	/// Business Identifier for the payment noctice
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Payment reference
	public var payment: Reference
	
	/// Payment or clearing date
	public var paymentDate: FHIRPrimitive<FHIRDate>?
	
	/// Party being paid
	public var payee: Reference?
	
	/// Party being notified
	public var recipient: Reference
	
	/// Monetary amount of the payment
	public var amount: Money
	
	/// Issued or cleared Status of the payment
	public var paymentStatus: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(amount: Money, created: FHIRPrimitive<DateTime>, payment: Reference, recipient: Reference, status: FHIRPrimitive<FinancialResourceStatusCodes>) {
		self.amount = amount
		self.created = created
		self.payment = payment
		self.recipient = recipient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Money,
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							payee: Reference? = nil,
							payment: Reference,
							paymentDate: FHIRPrimitive<FHIRDate>? = nil,
							paymentStatus: CodeableConcept? = nil,
							provider: Reference? = nil,
							recipient: Reference,
							request: Reference? = nil,
							response: Reference? = nil,
							status: FHIRPrimitive<FinancialResourceStatusCodes>,
							text: Narrative? = nil)
	{
		self.init(amount: amount, created: created, payment: payment, recipient: recipient, status: status)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.payee = payee
		self.paymentDate = paymentDate
		self.paymentStatus = paymentStatus
		self.provider = provider
		self.request = request
		self.response = response
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case created; case _created
		case identifier
		case payee
		case payment
		case paymentDate; case _paymentDate
		case paymentStatus
		case provider
		case recipient
		case request
		case response
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKey: .amount)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.payment = try Reference(from: _container, forKey: .payment)
		self.paymentDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .paymentDate, auxiliaryKey: ._paymentDate)
		self.paymentStatus = try CodeableConcept(from: _container, forKeyIfPresent: .paymentStatus)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.recipient = try Reference(from: _container, forKey: .recipient)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount.encode(on: &_container, forKey: .amount)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try payee?.encode(on: &_container, forKey: .payee)
		try payment.encode(on: &_container, forKey: .payment)
		try paymentDate?.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try paymentStatus?.encode(on: &_container, forKey: .paymentStatus)
		try provider?.encode(on: &_container, forKey: .provider)
		try recipient.encode(on: &_container, forKey: .recipient)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PaymentNotice else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && created == _other.created
		    && identifier == _other.identifier
		    && payee == _other.payee
		    && payment == _other.payment
		    && paymentDate == _other.paymentDate
		    && paymentStatus == _other.paymentStatus
		    && provider == _other.provider
		    && recipient == _other.recipient
		    && request == _other.request
		    && response == _other.response
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(created)
		hasher.combine(identifier)
		hasher.combine(payee)
		hasher.combine(payment)
		hasher.combine(paymentDate)
		hasher.combine(paymentStatus)
		hasher.combine(provider)
		hasher.combine(recipient)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(status)
	}
}
