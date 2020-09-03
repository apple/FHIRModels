//
//  PaymentReconciliation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation)
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
 PaymentReconciliation resource.
 
 This resource provides the details including amount of a payment and allocates the payment items being paid.
 */
open class PaymentReconciliation: DomainResource {
	
	override open class var resourceType: ResourceType { return .paymentReconciliation }
	
	/// Business Identifier for a payment reconciliation
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Period covered
	public var period: Period?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Party generating payment
	public var paymentIssuer: Reference?
	
	/// Reference to requesting resource
	public var request: Reference?
	
	/// Responsible practitioner
	public var requestor: Reference?
	
	/// The outcome of a request for a reconciliation.
	public var outcome: FHIRPrimitive<ClaimProcessingCodes>?
	
	/// Disposition message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// When payment issued
	public var paymentDate: FHIRPrimitive<FHIRDate>
	
	/// Total amount of Payment
	public var paymentAmount: Money
	
	/// Business identifier for the payment
	public var paymentIdentifier: Identifier?
	
	/// Settlement particulars
	public var detail: [PaymentReconciliationDetail]?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Note concerning processing
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, paymentAmount: Money, paymentDate: FHIRPrimitive<FHIRDate>, status: FHIRPrimitive<FinancialResourceStatusCodes>) {
		self.created = created
		self.paymentAmount = paymentAmount
		self.paymentDate = paymentDate
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>,
							detail: [PaymentReconciliationDetail]? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							formCode: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: FHIRPrimitive<ClaimProcessingCodes>? = nil,
							paymentAmount: Money,
							paymentDate: FHIRPrimitive<FHIRDate>,
							paymentIdentifier: Identifier? = nil,
							paymentIssuer: Reference? = nil,
							period: Period? = nil,
							processNote: [PaymentReconciliationProcessNote]? = nil,
							request: Reference? = nil,
							requestor: Reference? = nil,
							status: FHIRPrimitive<FinancialResourceStatusCodes>,
							text: Narrative? = nil)
	{
		self.init(created: created, paymentAmount: paymentAmount, paymentDate: paymentDate, status: status)
		self.contained = contained
		self.detail = detail
		self.disposition = disposition
		self.`extension` = `extension`
		self.formCode = formCode
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.paymentIdentifier = paymentIdentifier
		self.paymentIssuer = paymentIssuer
		self.period = period
		self.processNote = processNote
		self.request = request
		self.requestor = requestor
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case detail
		case disposition; case _disposition
		case formCode
		case identifier
		case outcome; case _outcome
		case paymentAmount
		case paymentDate; case _paymentDate
		case paymentIdentifier
		case paymentIssuer
		case period
		case processNote
		case request
		case requestor
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.detail = try [PaymentReconciliationDetail](from: _container, forKeyIfPresent: .detail)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.outcome = try FHIRPrimitive<ClaimProcessingCodes>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.paymentAmount = try Money(from: _container, forKey: .paymentAmount)
		self.paymentDate = try FHIRPrimitive<FHIRDate>(from: _container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		self.paymentIdentifier = try Identifier(from: _container, forKeyIfPresent: .paymentIdentifier)
		self.paymentIssuer = try Reference(from: _container, forKeyIfPresent: .paymentIssuer)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.processNote = try [PaymentReconciliationProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try detail?.encode(on: &_container, forKey: .detail)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try paymentAmount.encode(on: &_container, forKey: .paymentAmount)
		try paymentDate.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try paymentIdentifier?.encode(on: &_container, forKey: .paymentIdentifier)
		try paymentIssuer?.encode(on: &_container, forKey: .paymentIssuer)
		try period?.encode(on: &_container, forKey: .period)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try request?.encode(on: &_container, forKey: .request)
		try requestor?.encode(on: &_container, forKey: .requestor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PaymentReconciliation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return created == _other.created
		    && detail == _other.detail
		    && disposition == _other.disposition
		    && formCode == _other.formCode
		    && identifier == _other.identifier
		    && outcome == _other.outcome
		    && paymentAmount == _other.paymentAmount
		    && paymentDate == _other.paymentDate
		    && paymentIdentifier == _other.paymentIdentifier
		    && paymentIssuer == _other.paymentIssuer
		    && period == _other.period
		    && processNote == _other.processNote
		    && request == _other.request
		    && requestor == _other.requestor
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(detail)
		hasher.combine(disposition)
		hasher.combine(formCode)
		hasher.combine(identifier)
		hasher.combine(outcome)
		hasher.combine(paymentAmount)
		hasher.combine(paymentDate)
		hasher.combine(paymentIdentifier)
		hasher.combine(paymentIssuer)
		hasher.combine(period)
		hasher.combine(processNote)
		hasher.combine(request)
		hasher.combine(requestor)
		hasher.combine(status)
	}
}

/**
 Settlement particulars.
 
 Distribution of the payment amount for a previously acknowledged payable.
 */
open class PaymentReconciliationDetail: BackboneElement {
	
	/// Business identifier of the payment detail
	public var identifier: Identifier?
	
	/// Business identifier of the prior payment detail
	public var predecessor: Identifier?
	
	/// Category of payment
	public var type: CodeableConcept
	
	/// Request giving rise to the payment
	public var request: Reference?
	
	/// Submitter of the request
	public var submitter: Reference?
	
	/// Response committing to a payment
	public var response: Reference?
	
	/// Date of commitment to pay
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Contact for the response
	public var responsible: Reference?
	
	/// Recipient of the payment
	public var payee: Reference?
	
	/// Amount allocated to this payable
	public var amount: Money?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Money? = nil,
							date: FHIRPrimitive<FHIRDate>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							payee: Reference? = nil,
							predecessor: Identifier? = nil,
							request: Reference? = nil,
							response: Reference? = nil,
							responsible: Reference? = nil,
							submitter: Reference? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.amount = amount
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.payee = payee
		self.predecessor = predecessor
		self.request = request
		self.response = response
		self.responsible = responsible
		self.submitter = submitter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case date; case _date
		case identifier
		case payee
		case predecessor
		case request
		case response
		case responsible
		case submitter
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.predecessor = try Identifier(from: _container, forKeyIfPresent: .predecessor)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.submitter = try Reference(from: _container, forKeyIfPresent: .submitter)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try payee?.encode(on: &_container, forKey: .payee)
		try predecessor?.encode(on: &_container, forKey: .predecessor)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try submitter?.encode(on: &_container, forKey: .submitter)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PaymentReconciliationDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && date == _other.date
		    && identifier == _other.identifier
		    && payee == _other.payee
		    && predecessor == _other.predecessor
		    && request == _other.request
		    && response == _other.response
		    && responsible == _other.responsible
		    && submitter == _other.submitter
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(payee)
		hasher.combine(predecessor)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(responsible)
		hasher.combine(submitter)
		hasher.combine(type)
	}
}

/**
 Note concerning processing.
 
 A note that describes or explains the processing in a human readable form.
 */
open class PaymentReconciliationProcessNote: BackboneElement {
	
	/// The business purpose of the note text.
	public var type: FHIRPrimitive<NoteType>?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<NoteType>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case text; case _text
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<NoteType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PaymentReconciliationProcessNote else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(text)
		hasher.combine(type)
	}
}
