//
//  PaymentReconciliation.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation)
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
 
 This resource provides payment details and claim references supporting a bulk payment.
 */
open class PaymentReconciliation: DomainResource {
	
	override open class var resourceType: ResourceType { return .paymentReconciliation }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Period covered
	public var period: Period?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer
	public var organization: Reference?
	
	/// Claim reference
	public var request: Reference?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// List of settlements
	public var detail: [PaymentReconciliationDetail]?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Total amount of Payment
	public var total: Money?
	
	/// Processing comments
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							detail: [PaymentReconciliationDetail]? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							form: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							outcome: CodeableConcept? = nil,
							period: Period? = nil,
							processNote: [PaymentReconciliationProcessNote]? = nil,
							request: Reference? = nil,
							requestOrganization: Reference? = nil,
							requestProvider: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil,
							total: Money? = nil)
	{
		self.init()
		self.contained = contained
		self.created = created
		self.detail = detail
		self.disposition = disposition
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.outcome = outcome
		self.period = period
		self.processNote = processNote
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.status = status
		self.text = text
		self.total = total
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case detail
		case disposition; case _disposition
		case form
		case identifier
		case organization
		case outcome
		case period
		case processNote
		case request
		case requestOrganization
		case requestProvider
		case status; case _status
		case total
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.detail = try [PaymentReconciliationDetail](from: _container, forKeyIfPresent: .detail)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.processNote = try [PaymentReconciliationProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.total = try Money(from: _container, forKeyIfPresent: .total)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try detail?.encode(on: &_container, forKey: .detail)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try period?.encode(on: &_container, forKey: .period)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try total?.encode(on: &_container, forKey: .total)
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
		    && form == _other.form
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && outcome == _other.outcome
		    && period == _other.period
		    && processNote == _other.processNote
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && status == _other.status
		    && total == _other.total
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(detail)
		hasher.combine(disposition)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(outcome)
		hasher.combine(period)
		hasher.combine(processNote)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(status)
		hasher.combine(total)
	}
}

/**
 List of settlements.
 
 List of individual settlement amounts and the corresponding transaction.
 */
open class PaymentReconciliationDetail: BackboneElement {
	
	/// Type code
	public var type: CodeableConcept
	
	/// Claim
	public var request: Reference?
	
	/// Claim Response
	public var response: Reference?
	
	/// Organization which submitted the claim
	public var submitter: Reference?
	
	/// Organization which is receiving the payment
	public var payee: Reference?
	
	/// Invoice date
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Amount being paid
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
							modifierExtension: [Extension]? = nil,
							payee: Reference? = nil,
							request: Reference? = nil,
							response: Reference? = nil,
							submitter: Reference? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.amount = amount
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.payee = payee
		self.request = request
		self.response = response
		self.submitter = submitter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case date; case _date
		case payee
		case request
		case response
		case submitter
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
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
		try payee?.encode(on: &_container, forKey: .payee)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
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
		    && payee == _other.payee
		    && request == _other.request
		    && response == _other.response
		    && submitter == _other.submitter
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(date)
		hasher.combine(payee)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(submitter)
		hasher.combine(type)
	}
}

/**
 Processing comments.
 
 Suite of notes.
 */
open class PaymentReconciliationProcessNote: BackboneElement {
	
	/// display | print | printoper
	public var type: CodeableConcept?
	
	/// Comment on the processing
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
							type: CodeableConcept? = nil)
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
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
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
