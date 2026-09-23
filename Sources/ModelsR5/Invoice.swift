//
//  Invoice.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Invoice)
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
	
	/// All possible types for "period[x]"
	public enum PeriodX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Account that is being balanced
	public var account: Reference?
	
	/// Reason for cancellation of this Invoice
	public var cancelledReason: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When posted
	public var creation: FHIRPrimitive<DateTime>?
	
	/// DEPRICATED
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
	
	/// Billing date or period
	/// One of `period[x]`
	public var period: PeriodX?
	
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
	public var totalPriceComponent: [MonetaryComponent]?
	
	/// Type of Invoice
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		account: Reference? = nil,
		cancelledReason: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		creation: FHIRPrimitive<DateTime>? = nil,
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
		period: PeriodX? = nil,
		recipient: Reference? = nil,
		status: FHIRPrimitive<InvoiceStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		totalGross: Money? = nil,
		totalNet: Money? = nil,
		totalPriceComponent: [MonetaryComponent]? = nil,
		type: CodeableConcept? = nil
	) {
		self.account = account
		self.cancelledReason = cancelledReason
		self.contained = contained
		self.creation = creation
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
		self.period = period
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
		case creation; case _creation
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
		case periodDate; case _periodDate
		case periodPeriod
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
		self.creation = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .creation, auxiliaryKey: ._creation)
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
		self.period = try Self._decodePeriod(from: _container)
		self.recipient = try Reference(from: _container, forKeyIfPresent: .recipient)
		self.status = try FHIRPrimitive<InvoiceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.totalGross = try Money(from: _container, forKeyIfPresent: .totalGross)
		self.totalNet = try Money(from: _container, forKeyIfPresent: .totalNet)
		self.totalPriceComponent = try [MonetaryComponent](from: _container, forKeyIfPresent: .totalPriceComponent)
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
		try creation?.encode(on: &_container, forKey: .creation, auxiliaryKey: ._creation)
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
		if let _enum = period {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .periodDate, auxiliaryKey: ._periodDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .periodPeriod)
		}
		}
		try recipient?.encode(on: &_container, forKey: .recipient)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try totalGross?.encode(on: &_container, forKey: .totalGross)
		try totalNet?.encode(on: &_container, forKey: .totalNet)
		try totalPriceComponent?.encode(on: &_container, forKey: .totalPriceComponent)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodePeriod(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PeriodX? {
		var _t_period: PeriodX? = nil
		if let periodDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .periodDate, auxiliaryKey: ._periodDate) {
			_t_period = .date(periodDate)
		}
		if let periodPeriod = try Period(from: _container, forKeyIfPresent: .periodPeriod) {
			if _t_period != nil {
				throw DecodingError.dataCorruptedError(forKey: .periodPeriod, in: _container, debugDescription: "More than one value provided for \"period\"")
			}
			_t_period = .period(periodPeriod)
		}
		return _t_period
	}
}

/**
 Line items of this Invoice.
 
 Each line item represents one charge for goods and services rendered. Details such.ofType(date), code and amount are
 found in the referenced ChargeItem resource.
 */
public struct InvoiceLineItem: BackboneElement {
	
	/// All possible types for "chargeItem[x]"
	public enum ChargeItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
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
	public var priceComponent: [MonetaryComponent]?
	
	/// Sequence number of line item
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Service data or period
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Designated initializer
	public init(
		chargeItem: ChargeItemX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		priceComponent: [MonetaryComponent]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		serviced: ServicedX? = nil
	) {
		self.chargeItem = chargeItem
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priceComponent = priceComponent
		self.sequence = sequence
		self.serviced = serviced
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
		case servicedDate; case _servicedDate
		case servicedPeriod
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
		self.priceComponent = try [MonetaryComponent](from: _container, forKeyIfPresent: .priceComponent)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.serviced = try Self._decodeServiced(from: _container)
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
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
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
	
	private static func _decodeServiced(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ServicedX? {
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		return _t_serviced
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
