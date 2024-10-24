//
//  PaymentReconciliation.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation)
//  Copyright 2024 Apple Inc.
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
	
	/// Category of payment
	public var type: CodeableConcept
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Workflow originating payment
	public var kind: CodeableConcept?
	
	/// Period covered
	public var period: Period?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Who entered the payment
	public var enterer: Reference?
	
	/// Nature of the source
	public var issuerType: CodeableConcept?
	
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
	public var date: FHIRPrimitive<FHIRDate>
	
	/// Where payment collected
	public var location: Reference?
	
	/// Payment instrument
	public var method: CodeableConcept?
	
	/// Type of card
	public var cardBrand: FHIRPrimitive<FHIRString>?
	
	/// Digits for verification
	public var accountNumber: FHIRPrimitive<FHIRString>?
	
	/// Expiration year-month
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Processor name
	public var processor: FHIRPrimitive<FHIRString>?
	
	/// Check number or payment reference
	public var referenceNumber: FHIRPrimitive<FHIRString>?
	
	/// Authorization number
	public var authorization: FHIRPrimitive<FHIRString>?
	
	/// Amount offered by the issuer
	public var tenderedAmount: Money?
	
	/// Amount returned by the receiver
	public var returnedAmount: Money?
	
	/// Total amount of Payment
	public var amount: Money
	
	/// Business identifier for the payment
	public var paymentIdentifier: Identifier?
	
	/// Settlement particulars
	public var allocation: [PaymentReconciliationAllocation]?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Note concerning processing
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Designated initializer taking all required properties
	public init(amount: Money, created: FHIRPrimitive<DateTime>, date: FHIRPrimitive<FHIRDate>, status: FHIRPrimitive<FinancialResourceStatusCodes>, type: CodeableConcept) {
		self.amount = amount
		self.created = created
		self.date = date
		self.status = status
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		accountNumber: FHIRPrimitive<FHIRString>? = nil,
		allocation: [PaymentReconciliationAllocation]? = nil,
		amount: Money,
		authorization: FHIRPrimitive<FHIRString>? = nil,
		cardBrand: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		date: FHIRPrimitive<FHIRDate>,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		enterer: Reference? = nil,
		expirationDate: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		formCode: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		issuerType: CodeableConcept? = nil,
		kind: CodeableConcept? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: FHIRPrimitive<ClaimProcessingCodes>? = nil,
		paymentIdentifier: Identifier? = nil,
		paymentIssuer: Reference? = nil,
		period: Period? = nil,
		processNote: [PaymentReconciliationProcessNote]? = nil,
		processor: FHIRPrimitive<FHIRString>? = nil,
		referenceNumber: FHIRPrimitive<FHIRString>? = nil,
		request: Reference? = nil,
		requestor: Reference? = nil,
		returnedAmount: Money? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		tenderedAmount: Money? = nil,
		text: Narrative? = nil,
		type: CodeableConcept
	) {
		self.init(amount: amount, created: created, date: date, status: status, type: type)
		self.accountNumber = accountNumber
		self.allocation = allocation
		self.authorization = authorization
		self.cardBrand = cardBrand
		self.contained = contained
		self.disposition = disposition
		self.enterer = enterer
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.formCode = formCode
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.issuerType = issuerType
		self.kind = kind
		self.language = language
		self.location = location
		self.meta = meta
		self.method = method
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.paymentIdentifier = paymentIdentifier
		self.paymentIssuer = paymentIssuer
		self.period = period
		self.processNote = processNote
		self.processor = processor
		self.referenceNumber = referenceNumber
		self.request = request
		self.requestor = requestor
		self.returnedAmount = returnedAmount
		self.tenderedAmount = tenderedAmount
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accountNumber; case _accountNumber
		case allocation
		case amount
		case authorization; case _authorization
		case cardBrand; case _cardBrand
		case created; case _created
		case date; case _date
		case disposition; case _disposition
		case enterer
		case expirationDate; case _expirationDate
		case formCode
		case identifier
		case issuerType
		case kind
		case location
		case method
		case outcome; case _outcome
		case paymentIdentifier
		case paymentIssuer
		case period
		case processNote
		case processor; case _processor
		case referenceNumber; case _referenceNumber
		case request
		case requestor
		case returnedAmount
		case status; case _status
		case tenderedAmount
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accountNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .accountNumber, auxiliaryKey: ._accountNumber)
		self.allocation = try [PaymentReconciliationAllocation](from: _container, forKeyIfPresent: .allocation)
		self.amount = try Money(from: _container, forKey: .amount)
		self.authorization = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .authorization, auxiliaryKey: ._authorization)
		self.cardBrand = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cardBrand, auxiliaryKey: ._cardBrand)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuerType = try CodeableConcept(from: _container, forKeyIfPresent: .issuerType)
		self.kind = try CodeableConcept(from: _container, forKeyIfPresent: .kind)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.outcome = try FHIRPrimitive<ClaimProcessingCodes>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.paymentIdentifier = try Identifier(from: _container, forKeyIfPresent: .paymentIdentifier)
		self.paymentIssuer = try Reference(from: _container, forKeyIfPresent: .paymentIssuer)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.processNote = try [PaymentReconciliationProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.processor = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .processor, auxiliaryKey: ._processor)
		self.referenceNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .referenceNumber, auxiliaryKey: ._referenceNumber)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		self.returnedAmount = try Money(from: _container, forKeyIfPresent: .returnedAmount)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.tenderedAmount = try Money(from: _container, forKeyIfPresent: .tenderedAmount)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accountNumber?.encode(on: &_container, forKey: .accountNumber, auxiliaryKey: ._accountNumber)
		try allocation?.encode(on: &_container, forKey: .allocation)
		try amount.encode(on: &_container, forKey: .amount)
		try authorization?.encode(on: &_container, forKey: .authorization, auxiliaryKey: ._authorization)
		try cardBrand?.encode(on: &_container, forKey: .cardBrand, auxiliaryKey: ._cardBrand)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuerType?.encode(on: &_container, forKey: .issuerType)
		try kind?.encode(on: &_container, forKey: .kind)
		try location?.encode(on: &_container, forKey: .location)
		try method?.encode(on: &_container, forKey: .method)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try paymentIdentifier?.encode(on: &_container, forKey: .paymentIdentifier)
		try paymentIssuer?.encode(on: &_container, forKey: .paymentIssuer)
		try period?.encode(on: &_container, forKey: .period)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try processor?.encode(on: &_container, forKey: .processor, auxiliaryKey: ._processor)
		try referenceNumber?.encode(on: &_container, forKey: .referenceNumber, auxiliaryKey: ._referenceNumber)
		try request?.encode(on: &_container, forKey: .request)
		try requestor?.encode(on: &_container, forKey: .requestor)
		try returnedAmount?.encode(on: &_container, forKey: .returnedAmount)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try tenderedAmount?.encode(on: &_container, forKey: .tenderedAmount)
		try type.encode(on: &_container, forKey: .type)
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
		return accountNumber == _other.accountNumber
		    && allocation == _other.allocation
		    && amount == _other.amount
		    && authorization == _other.authorization
		    && cardBrand == _other.cardBrand
		    && created == _other.created
		    && date == _other.date
		    && disposition == _other.disposition
		    && enterer == _other.enterer
		    && expirationDate == _other.expirationDate
		    && formCode == _other.formCode
		    && identifier == _other.identifier
		    && issuerType == _other.issuerType
		    && kind == _other.kind
		    && location == _other.location
		    && method == _other.method
		    && outcome == _other.outcome
		    && paymentIdentifier == _other.paymentIdentifier
		    && paymentIssuer == _other.paymentIssuer
		    && period == _other.period
		    && processNote == _other.processNote
		    && processor == _other.processor
		    && referenceNumber == _other.referenceNumber
		    && request == _other.request
		    && requestor == _other.requestor
		    && returnedAmount == _other.returnedAmount
		    && status == _other.status
		    && tenderedAmount == _other.tenderedAmount
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accountNumber)
		hasher.combine(allocation)
		hasher.combine(amount)
		hasher.combine(authorization)
		hasher.combine(cardBrand)
		hasher.combine(created)
		hasher.combine(date)
		hasher.combine(disposition)
		hasher.combine(enterer)
		hasher.combine(expirationDate)
		hasher.combine(formCode)
		hasher.combine(identifier)
		hasher.combine(issuerType)
		hasher.combine(kind)
		hasher.combine(location)
		hasher.combine(method)
		hasher.combine(outcome)
		hasher.combine(paymentIdentifier)
		hasher.combine(paymentIssuer)
		hasher.combine(period)
		hasher.combine(processNote)
		hasher.combine(processor)
		hasher.combine(referenceNumber)
		hasher.combine(request)
		hasher.combine(requestor)
		hasher.combine(returnedAmount)
		hasher.combine(status)
		hasher.combine(tenderedAmount)
		hasher.combine(type)
	}
}

/**
 Settlement particulars.
 
 Distribution of the payment amount for a previously acknowledged payable.
 */
open class PaymentReconciliationAllocation: BackboneElement {
	
	/// All possible types for "targetItem[x]"
	public enum TargetItemX: Hashable {
		case identifier(Identifier)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Business identifier of the payment detail
	public var identifier: Identifier?
	
	/// Business identifier of the prior payment detail
	public var predecessor: Identifier?
	
	/// Subject of the payment
	public var target: Reference?
	
	/// Sub-element of the subject
	/// One of `targetItem[x]`
	public var targetItem: TargetItemX?
	
	/// Applied-to encounter
	public var encounter: Reference?
	
	/// Applied-to account
	public var account: Reference?
	
	/// Category of payment
	public var type: CodeableConcept?
	
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
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		account: Reference? = nil,
		amount: Money? = nil,
		date: FHIRPrimitive<FHIRDate>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		payee: Reference? = nil,
		predecessor: Identifier? = nil,
		response: Reference? = nil,
		responsible: Reference? = nil,
		submitter: Reference? = nil,
		target: Reference? = nil,
		targetItem: TargetItemX? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.account = account
		self.amount = amount
		self.date = date
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.payee = payee
		self.predecessor = predecessor
		self.response = response
		self.responsible = responsible
		self.submitter = submitter
		self.target = target
		self.targetItem = targetItem
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case amount
		case date; case _date
		case encounter
		case identifier
		case payee
		case predecessor
		case response
		case responsible
		case submitter
		case target
		case targetItemIdentifier
		case targetItemPositiveInt; case _targetItemPositiveInt
		case targetItemString; case _targetItemString
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try Reference(from: _container, forKeyIfPresent: .account)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.predecessor = try Identifier(from: _container, forKeyIfPresent: .predecessor)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.submitter = try Reference(from: _container, forKeyIfPresent: .submitter)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		var _t_targetItem: TargetItemX? = nil
		if let targetItemString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetItemString, auxiliaryKey: ._targetItemString) {
			if _t_targetItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetItemString, in: _container, debugDescription: "More than one value provided for \"targetItem\"")
			}
			_t_targetItem = .string(targetItemString)
		}
		if let targetItemIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetItemIdentifier) {
			if _t_targetItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetItemIdentifier, in: _container, debugDescription: "More than one value provided for \"targetItem\"")
			}
			_t_targetItem = .identifier(targetItemIdentifier)
		}
		if let targetItemPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .targetItemPositiveInt, auxiliaryKey: ._targetItemPositiveInt) {
			if _t_targetItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetItemPositiveInt, in: _container, debugDescription: "More than one value provided for \"targetItem\"")
			}
			_t_targetItem = .positiveInt(targetItemPositiveInt)
		}
		self.targetItem = _t_targetItem
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try amount?.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try payee?.encode(on: &_container, forKey: .payee)
		try predecessor?.encode(on: &_container, forKey: .predecessor)
		try response?.encode(on: &_container, forKey: .response)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try submitter?.encode(on: &_container, forKey: .submitter)
		try target?.encode(on: &_container, forKey: .target)
		if let _enum = targetItem {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .targetItemString, auxiliaryKey: ._targetItemString)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .targetItemIdentifier)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .targetItemPositiveInt, auxiliaryKey: ._targetItemPositiveInt)
			}
		}
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PaymentReconciliationAllocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return account == _other.account
		    && amount == _other.amount
		    && date == _other.date
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && payee == _other.payee
		    && predecessor == _other.predecessor
		    && response == _other.response
		    && responsible == _other.responsible
		    && submitter == _other.submitter
		    && target == _other.target
		    && targetItem == _other.targetItem
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(amount)
		hasher.combine(date)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(payee)
		hasher.combine(predecessor)
		hasher.combine(response)
		hasher.combine(responsible)
		hasher.combine(submitter)
		hasher.combine(target)
		hasher.combine(targetItem)
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
		type: FHIRPrimitive<NoteType>? = nil
	) {
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
