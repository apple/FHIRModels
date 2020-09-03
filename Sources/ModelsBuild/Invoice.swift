//
//  Invoice.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Invoice)
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
 Invoice containing ChargeItems from an Account.
 
 Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing
 purpose.
 */
open class Invoice: DomainResource {
	
	override open class var resourceType: ResourceType { return .invoice }
	
	/// Business Identifier for item
	public var identifier: [Identifier]?
	
	/// The current state of the Invoice.
	public var status: FHIRPrimitive<InvoiceStatus>
	
	/// Reason for cancellation of this Invoice
	public var cancelledReason: FHIRPrimitive<FHIRString>?
	
	/// Type of Invoice
	public var type: CodeableConcept?
	
	/// Recipient(s) of goods and services
	public var subject: Reference?
	
	/// Recipient of this invoice
	public var recipient: Reference?
	
	/// Invoice date / posting date
	public var date: FHIRPrimitive<DateTime>?
	
	/// Participant in creation of this Invoice
	public var participant: [InvoiceParticipant]?
	
	/// Issuing Organization of Invoice
	public var issuer: Reference?
	
	/// Account that is being balanced
	public var account: Reference?
	
	/// Line items of this Invoice
	public var lineItem: [InvoiceLineItem]?
	
	/// Components of Invoice total
	public var totalPriceComponent: [InvoiceLineItemPriceComponent]?
	
	/// Net total of this Invoice
	public var totalNet: Money?
	
	/// Gross total of this Invoice
	public var totalGross: Money?
	
	/// Payment details
	public var paymentTerms: FHIRPrimitive<FHIRString>?
	
	/// Comments made about the invoice
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<InvoiceStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							account: Reference? = nil,
							cancelledReason: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							issuer: Reference? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							lineItem: [InvoiceLineItem]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							participant: [InvoiceParticipant]? = nil,
							paymentTerms: FHIRPrimitive<FHIRString>? = nil,
							recipient: Reference? = nil,
							status: FHIRPrimitive<InvoiceStatus>,
							subject: Reference? = nil,
							text: Narrative? = nil,
							totalGross: Money? = nil,
							totalNet: Money? = nil,
							totalPriceComponent: [InvoiceLineItemPriceComponent]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(status: status)
		self.account = account
		self.cancelledReason = cancelledReason
		self.contained = contained
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.issuer = issuer
		self.language = language
		self.lineItem = lineItem
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.participant = participant
		self.paymentTerms = paymentTerms
		self.recipient = recipient
		self.subject = subject
		self.text = text
		self.totalGross = totalGross
		self.totalNet = totalNet
		self.totalPriceComponent = totalPriceComponent
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case cancelledReason; case _cancelledReason
		case date; case _date
		case identifier
		case issuer
		case lineItem
		case note
		case participant
		case paymentTerms; case _paymentTerms
		case recipient
		case status; case _status
		case subject
		case totalGross
		case totalNet
		case totalPriceComponent
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try Reference(from: _container, forKeyIfPresent: .account)
		self.cancelledReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cancelledReason, auxiliaryKey: ._cancelledReason)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.lineItem = try [InvoiceLineItem](from: _container, forKeyIfPresent: .lineItem)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.participant = try [InvoiceParticipant](from: _container, forKeyIfPresent: .participant)
		self.paymentTerms = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .paymentTerms, auxiliaryKey: ._paymentTerms)
		self.recipient = try Reference(from: _container, forKeyIfPresent: .recipient)
		self.status = try FHIRPrimitive<InvoiceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.totalGross = try Money(from: _container, forKeyIfPresent: .totalGross)
		self.totalNet = try Money(from: _container, forKeyIfPresent: .totalNet)
		self.totalPriceComponent = try [InvoiceLineItemPriceComponent](from: _container, forKeyIfPresent: .totalPriceComponent)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try cancelledReason?.encode(on: &_container, forKey: .cancelledReason, auxiliaryKey: ._cancelledReason)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try lineItem?.encode(on: &_container, forKey: .lineItem)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try paymentTerms?.encode(on: &_container, forKey: .paymentTerms, auxiliaryKey: ._paymentTerms)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try totalGross?.encode(on: &_container, forKey: .totalGross)
		try totalNet?.encode(on: &_container, forKey: .totalNet)
		try totalPriceComponent?.encode(on: &_container, forKey: .totalPriceComponent)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Invoice else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return account == _other.account
		    && cancelledReason == _other.cancelledReason
		    && date == _other.date
		    && identifier == _other.identifier
		    && issuer == _other.issuer
		    && lineItem == _other.lineItem
		    && note == _other.note
		    && participant == _other.participant
		    && paymentTerms == _other.paymentTerms
		    && recipient == _other.recipient
		    && status == _other.status
		    && subject == _other.subject
		    && totalGross == _other.totalGross
		    && totalNet == _other.totalNet
		    && totalPriceComponent == _other.totalPriceComponent
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(cancelledReason)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(issuer)
		hasher.combine(lineItem)
		hasher.combine(note)
		hasher.combine(participant)
		hasher.combine(paymentTerms)
		hasher.combine(recipient)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(totalGross)
		hasher.combine(totalNet)
		hasher.combine(totalPriceComponent)
		hasher.combine(type)
	}
}

/**
 Line items of this Invoice.
 
 Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found
 in the referenced ChargeItem resource.
 */
open class InvoiceLineItem: BackboneElement {
	
	/// All possible types for "chargeItem[x]"
	public enum ChargeItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Sequence number of line item
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Reference to ChargeItem containing details of this line item or an inline billing code
	/// One of `chargeItem[x]`
	public var chargeItem: ChargeItemX
	
	/// Components of total line item price
	public var priceComponent: [InvoiceLineItemPriceComponent]?
	
	/// Designated initializer taking all required properties
	public init(chargeItem: ChargeItemX) {
		self.chargeItem = chargeItem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							chargeItem: ChargeItemX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							priceComponent: [InvoiceLineItemPriceComponent]? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init(chargeItem: chargeItem)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priceComponent = priceComponent
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chargeItemCodeableConcept
		case chargeItemReference
		case priceComponent
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.chargeItemCodeableConcept) || _container.contains(CodingKeys.chargeItemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.chargeItemCodeableConcept, CodingKeys.chargeItemReference], debugDescription: "Must have at least one value for \"chargeItem\" but have none"))
		}
		
		// Decode all our properties
		var _t_chargeItem: ChargeItemX? = nil
		if let chargeItemReference = try Reference(from: _container, forKeyIfPresent: .chargeItemReference) {
			if _t_chargeItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .chargeItemReference, in: _container, debugDescription: "More than one value provided for \"chargeItem\"")
			}
			_t_chargeItem = .reference(chargeItemReference)
		}
		if let chargeItemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .chargeItemCodeableConcept) {
			if _t_chargeItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .chargeItemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"chargeItem\"")
			}
			_t_chargeItem = .codeableConcept(chargeItemCodeableConcept)
		}
		self.chargeItem = _t_chargeItem!
		self.priceComponent = try [InvoiceLineItemPriceComponent](from: _container, forKeyIfPresent: .priceComponent)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch chargeItem {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .chargeItemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .chargeItemCodeableConcept)
			}
		
		try priceComponent?.encode(on: &_container, forKey: .priceComponent)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InvoiceLineItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return chargeItem == _other.chargeItem
		    && priceComponent == _other.priceComponent
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chargeItem)
		hasher.combine(priceComponent)
		hasher.combine(sequence)
	}
}

/**
 Components of total line item price.
 
 The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain
 conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing
 code is currently under development. The priceComponent element can be used to offer transparency to the recipient of
 the Invoice as to how the prices have been calculated.
 */
open class InvoiceLineItemPriceComponent: BackboneElement {
	
	/// This code identifies the type of the component.
	public var type: FHIRPrimitive<InvoicePriceComponentType>
	
	/// Code identifying the specific component
	public var code: CodeableConcept?
	
	/// Factor used for calculating this component
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Monetary amount associated with this component
	public var amount: Money?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<InvoicePriceComponentType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Money? = nil,
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<InvoicePriceComponentType>)
	{
		self.init(type: type)
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case factor; case _factor
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.type = try FHIRPrimitive<InvoicePriceComponentType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code?.encode(on: &_container, forKey: .code)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InvoiceLineItemPriceComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && factor == _other.factor
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(factor)
		hasher.combine(type)
	}
}

/**
 Participant in creation of this Invoice.
 
 Indicates who or what performed or participated in the charged service.
 */
open class InvoiceParticipant: BackboneElement {
	
	/// Type of involvement in creation of this Invoice
	public var role: CodeableConcept?
	
	/// Individual who was involved
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InvoiceParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(role)
	}
}
