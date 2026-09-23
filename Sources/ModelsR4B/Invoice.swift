//
//  Invoice.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Invoice)
//  Copyright 2026 Apple Inc.
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
public struct Invoice: DomainResource {
	
	public static let resourceType: ResourceType = .invoice
	
	/// Account that is being balanced
	public var account: Reference?
	
	/// Reason for cancellation of this Invoice
	public var cancelledReason: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Invoice date / posting date
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Issuing Organization of Invoice
	public var issuer: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Line items of this Invoice
	public var lineItem: [InvoiceLineItem]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the invoice
	public var note: [Annotation]?
	
	/// Participant in creation of this Invoice
	public var participant: [InvoiceParticipant]?
	
	/// Payment details
	public var paymentTerms: FHIRPrimitive<FHIRString>?
	
	/// Recipient of this invoice
	public var recipient: Reference?
	
	/// The current state of the Invoice.
	public var status: FHIRPrimitive<InvoiceStatus>
	
	/// Recipient(s) of goods and services
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Gross total of this Invoice
	public var totalGross: Money?
	
	/// Net total of this Invoice
	public var totalNet: Money?
	
	/// Components of Invoice total
	public var totalPriceComponent: [InvoiceLineItemPriceComponent]?
	
	/// Type of Invoice
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept? = nil
	) {
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
		self.status = status
		self.subject = subject
		self.text = text
		self.totalGross = totalGross
		self.totalNet = totalNet
		self.totalPriceComponent = totalPriceComponent
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case account
		case cancelledReason; case _cancelledReason
		case contained
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case issuer
		case language; case _language
		case lineItem
		case meta
		case modifierExtension
		case note
		case participant
		case paymentTerms; case _paymentTerms
		case recipient
		case status; case _status
		case subject
		case text
		case totalGross
		case totalNet
		case totalPriceComponent
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try Reference(from: _container, forKeyIfPresent: .account)
		self.cancelledReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cancelledReason, auxiliaryKey: ._cancelledReason)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lineItem = try [InvoiceLineItem](from: _container, forKeyIfPresent: .lineItem)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.participant = try [InvoiceParticipant](from: _container, forKeyIfPresent: .participant)
		self.paymentTerms = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .paymentTerms, auxiliaryKey: ._paymentTerms)
		self.recipient = try Reference(from: _container, forKeyIfPresent: .recipient)
		self.status = try FHIRPrimitive<InvoiceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.totalGross = try Money(from: _container, forKeyIfPresent: .totalGross)
		self.totalNet = try Money(from: _container, forKeyIfPresent: .totalNet)
		self.totalPriceComponent = try [InvoiceLineItemPriceComponent](from: _container, forKeyIfPresent: .totalPriceComponent)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try cancelledReason?.encode(on: &_container, forKey: .cancelledReason, auxiliaryKey: ._cancelledReason)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lineItem?.encode(on: &_container, forKey: .lineItem)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try paymentTerms?.encode(on: &_container, forKey: .paymentTerms, auxiliaryKey: ._paymentTerms)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try totalGross?.encode(on: &_container, forKey: .totalGross)
		try totalNet?.encode(on: &_container, forKey: .totalNet)
		try totalPriceComponent?.encode(on: &_container, forKey: .totalPriceComponent)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Line items of this Invoice.
 
 Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found
 in the referenced ChargeItem resource.
 */
public struct InvoiceLineItem: BackboneElement {
	
	/// All possible types for "chargeItem[x]"
	public enum ChargeItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Reference to ChargeItem containing details of this line item or an inline billing code
	/// One of `chargeItem[x]`
	public var chargeItem: ChargeItemX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Components of total line item price
	public var priceComponent: [InvoiceLineItemPriceComponent]?
	
	/// Sequence number of line item
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		chargeItem: ChargeItemX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		priceComponent: [InvoiceLineItemPriceComponent]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.chargeItem = chargeItem
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case priceComponent
		case sequence; case _sequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.chargeItem = try Self._decodeChargeItem(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.priceComponent = try [InvoiceLineItemPriceComponent](from: _container, forKeyIfPresent: .priceComponent)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch chargeItem {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .chargeItemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .chargeItemReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try priceComponent?.encode(on: &_container, forKey: .priceComponent)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeChargeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ChargeItemX {
		var _t_chargeItem: ChargeItemX? = nil
		if let chargeItemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .chargeItemCodeableConcept) {
			_t_chargeItem = .codeableConcept(chargeItemCodeableConcept)
		}
		if let chargeItemReference = try Reference(from: _container, forKeyIfPresent: .chargeItemReference) {
			if _t_chargeItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .chargeItemReference, in: _container, debugDescription: "More than one value provided for \"chargeItem\"")
			}
			_t_chargeItem = .reference(chargeItemReference)
		}
		guard let _t_chargeItem else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.chargeItemReference)
			throw DecodingError.valueNotFound(ChargeItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"chargeItem\" but have none"))
		}
		return _t_chargeItem
	}
}

/**
 Components of total line item price.
 
 The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain
 conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing
 code is currently under development. The priceComponent element can be used to offer transparency to the recipient of
 the Invoice as to how the prices have been calculated.
 */
public struct InvoiceLineItemPriceComponent: BackboneElement {
	
	/// Monetary amount associated with this component
	public var amount: Money?
	
	/// Code identifying the specific component
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Factor used for calculating this component
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// This code identifies the type of the component.
	public var type: FHIRPrimitive<InvoicePriceComponentType>
	
	/// Designated initializer
	public init(
		amount: Money? = nil,
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<InvoicePriceComponentType>
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifierExtension
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<InvoicePriceComponentType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Participant in creation of this Invoice.
 
 Indicates who or what performed or participated in the charged service.
 */
public struct InvoiceParticipant: BackboneElement {
	
	/// Individual who was involved
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of involvement in creation of this Invoice
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
	}
}
