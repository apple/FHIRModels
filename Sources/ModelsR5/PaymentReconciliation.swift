//
//  PaymentReconciliation.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation)
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
 PaymentReconciliation resource.
 
 This resource provides the details including amount of a payment and allocates the payment items being paid.
 */
public struct PaymentReconciliation: DomainResource {
	
	public static let resourceType: ResourceType = .paymentReconciliation
	
	/// Digits for verification
	public var accountNumber: FHIRPrimitive<FHIRString>?
	
	/// Settlement particulars
	public var allocation: [PaymentReconciliationAllocation]?
	
	/// Total amount of Payment
	public var amount: Money
	
	/// Authorization number
	public var authorization: FHIRPrimitive<FHIRString>?
	
	/// Type of card
	public var cardBrand: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// When payment issued
	public var date: FHIRPrimitive<FHIRDate>
	
	/// Disposition message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Who entered the payment
	public var enterer: Reference?
	
	/// Expiration year-month
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for a payment reconciliation
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Nature of the source
	public var issuerType: CodeableConcept?
	
	/// Workflow originating payment
	public var kind: CodeableConcept?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where payment collected
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Payment instrument
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The outcome of a request for a reconciliation.
	public var outcome: FHIRPrimitive<ClaimProcessingCodes>?
	
	/// Business identifier for the payment
	public var paymentIdentifier: Identifier?
	
	/// Party generating payment
	public var paymentIssuer: Reference?
	
	/// Period covered
	public var period: Period?
	
	/// Note concerning processing
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Processor name
	public var processor: FHIRPrimitive<FHIRString>?
	
	/// Check number or payment reference
	public var referenceNumber: FHIRPrimitive<FHIRString>?
	
	/// Reference to requesting resource
	public var request: Reference?
	
	/// Responsible practitioner
	public var requestor: Reference?
	
	/// Amount returned by the receiver
	public var returnedAmount: Money?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Amount offered by the issuer
	public var tenderedAmount: Money?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Category of payment
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
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
		self.accountNumber = accountNumber
		self.allocation = allocation
		self.amount = amount
		self.authorization = authorization
		self.cardBrand = cardBrand
		self.contained = contained
		self.created = created
		self.date = date
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
		self.status = status
		self.tenderedAmount = tenderedAmount
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accountNumber; case _accountNumber
		case allocation
		case amount
		case authorization; case _authorization
		case cardBrand; case _cardBrand
		case contained
		case created; case _created
		case date; case _date
		case disposition; case _disposition
		case enterer
		case expirationDate; case _expirationDate
		case `extension` = "extension"
		case formCode
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case issuerType
		case kind
		case language; case _language
		case location
		case meta
		case method
		case modifierExtension
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
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accountNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .accountNumber, auxiliaryKey: ._accountNumber)
		self.allocation = try [PaymentReconciliationAllocation](from: _container, forKeyIfPresent: .allocation)
		self.amount = try Money(from: _container, forKey: .amount)
		self.authorization = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .authorization, auxiliaryKey: ._authorization)
		self.cardBrand = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cardBrand, auxiliaryKey: ._cardBrand)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issuerType = try CodeableConcept(from: _container, forKeyIfPresent: .issuerType)
		self.kind = try CodeableConcept(from: _container, forKeyIfPresent: .kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accountNumber?.encode(on: &_container, forKey: .accountNumber, auxiliaryKey: ._accountNumber)
		try allocation?.encode(on: &_container, forKey: .allocation)
		try amount.encode(on: &_container, forKey: .amount)
		try authorization?.encode(on: &_container, forKey: .authorization, auxiliaryKey: ._authorization)
		try cardBrand?.encode(on: &_container, forKey: .cardBrand, auxiliaryKey: ._cardBrand)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issuerType?.encode(on: &_container, forKey: .issuerType)
		try kind?.encode(on: &_container, forKey: .kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Settlement particulars.
 
 Distribution of the payment amount for a previously acknowledged payable.
 */
public struct PaymentReconciliationAllocation: BackboneElement {
	
	/// All possible types for "targetItem[x]"
	public enum TargetItemX: Equatable, Hashable, Sendable {
		indirect case identifier(Identifier)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Applied-to account
	public var account: Reference?
	
	/// Amount allocated to this payable
	public var amount: Money?
	
	/// Date of commitment to pay
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Applied-to encounter
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier of the payment detail
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Recipient of the payment
	public var payee: Reference?
	
	/// Business identifier of the prior payment detail
	public var predecessor: Identifier?
	
	/// Response committing to a payment
	public var response: Reference?
	
	/// Contact for the response
	public var responsible: Reference?
	
	/// Submitter of the request
	public var submitter: Reference?
	
	/// Subject of the payment
	public var target: Reference?
	
	/// Sub-element of the subject
	/// One of `targetItem[x]`
	public var targetItem: TargetItemX?
	
	/// Category of payment
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try Reference(from: _container, forKeyIfPresent: .account)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.predecessor = try Identifier(from: _container, forKeyIfPresent: .predecessor)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.submitter = try Reference(from: _container, forKeyIfPresent: .submitter)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		self.targetItem = try Self._decodeTargetItem(from: _container)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try amount?.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try payee?.encode(on: &_container, forKey: .payee)
		try predecessor?.encode(on: &_container, forKey: .predecessor)
		try response?.encode(on: &_container, forKey: .response)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try submitter?.encode(on: &_container, forKey: .submitter)
		try target?.encode(on: &_container, forKey: .target)
		if let _enum = targetItem {
		switch _enum {
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .targetItemIdentifier)
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .targetItemPositiveInt, auxiliaryKey: ._targetItemPositiveInt)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .targetItemString, auxiliaryKey: ._targetItemString)
		}
		}
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTargetItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetItemX? {
		var _t_targetItem: TargetItemX? = nil
		if let targetItemIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetItemIdentifier) {
			_t_targetItem = .identifier(targetItemIdentifier)
		}
		if let targetItemPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .targetItemPositiveInt, auxiliaryKey: ._targetItemPositiveInt) {
			if _t_targetItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetItemPositiveInt, in: _container, debugDescription: "More than one value provided for \"targetItem\"")
			}
			_t_targetItem = .positiveInt(targetItemPositiveInt)
		}
		if let targetItemString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetItemString, auxiliaryKey: ._targetItemString) {
			if _t_targetItem != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetItemString, in: _container, debugDescription: "More than one value provided for \"targetItem\"")
			}
			_t_targetItem = .string(targetItemString)
		}
		return _t_targetItem
	}
}

/**
 Note concerning processing.
 
 A note that describes or explains the processing in a human readable form.
 */
public struct PaymentReconciliationProcessNote: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The business purpose of the note text.
	public var type: FHIRPrimitive<NoteType>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<NoteType>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case text; case _text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<NoteType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
