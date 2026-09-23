//
//  PaymentReconciliation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation)
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
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Settlement particulars
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition message
	public var disposition: FHIRPrimitive<FHIRString>?
	
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
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// queued | complete | error | partial
	public var outcome: FHIRPrimitive<FHIRString>?
	
	/// Total amount of Payment
	public var paymentAmount: Money
	
	/// When payment issued
	public var paymentDate: FHIRPrimitive<FHIRDate>
	
	/// Business identifier for the payment
	public var paymentIdentifier: Identifier?
	
	/// Party generating payment
	public var paymentIssuer: Reference?
	
	/// Period covered
	public var period: Period?
	
	/// Note concerning processing
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Reference to requesting resource
	public var request: Reference?
	
	/// Responsible practitioner
	public var requestor: Reference?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		outcome: FHIRPrimitive<FHIRString>? = nil,
		paymentAmount: Money,
		paymentDate: FHIRPrimitive<FHIRDate>,
		paymentIdentifier: Identifier? = nil,
		paymentIssuer: Reference? = nil,
		period: Period? = nil,
		processNote: [PaymentReconciliationProcessNote]? = nil,
		request: Reference? = nil,
		requestor: Reference? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.created = created
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
		self.paymentAmount = paymentAmount
		self.paymentDate = paymentDate
		self.paymentIdentifier = paymentIdentifier
		self.paymentIssuer = paymentIssuer
		self.period = period
		self.processNote = processNote
		self.request = request
		self.requestor = requestor
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case created; case _created
		case detail
		case disposition; case _disposition
		case `extension` = "extension"
		case formCode
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.detail = try [PaymentReconciliationDetail](from: _container, forKeyIfPresent: .detail)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.paymentAmount = try Money(from: _container, forKey: .paymentAmount)
		self.paymentDate = try FHIRPrimitive<FHIRDate>(from: _container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		self.paymentIdentifier = try Identifier(from: _container, forKeyIfPresent: .paymentIdentifier)
		self.paymentIssuer = try Reference(from: _container, forKeyIfPresent: .paymentIssuer)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.processNote = try [PaymentReconciliationProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try detail?.encode(on: &_container, forKey: .detail)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Settlement particulars.
 
 Distribution of the payment amount for a previously acknowledged payable.
 */
public struct PaymentReconciliationDetail: BackboneElement {
	
	/// Amount allocated to this payable
	public var amount: Money?
	
	/// Date of commitment to pay
	public var date: FHIRPrimitive<FHIRDate>?
	
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
	
	/// Request giving rise to the payment
	public var request: Reference?
	
	/// Response committing to a payment
	public var response: Reference?
	
	/// Contact for the response
	public var responsible: Reference?
	
	/// Submitter of the request
	public var submitter: Reference?
	
	/// Category of payment
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept
	) {
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
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case payee
		case predecessor
		case request
		case response
		case responsible
		case submitter
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.predecessor = try Identifier(from: _container, forKeyIfPresent: .predecessor)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.submitter = try Reference(from: _container, forKeyIfPresent: .submitter)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try payee?.encode(on: &_container, forKey: .payee)
		try predecessor?.encode(on: &_container, forKey: .predecessor)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try submitter?.encode(on: &_container, forKey: .submitter)
		try type.encode(on: &_container, forKey: .type)
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
