//
//  PaymentReconciliation.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation)
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
	
	/// Claim reference
	public var request: Reference?
	
	/// Transaction status: error, complete.
	/// Restricted to: ['complete', 'error']
	public var outcome: FHIRPrimitive<RemittanceOutcome>?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Period covered
	public var period: Period?
	
	/// Insurer
	public var organization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Details
	public var detail: [PaymentReconciliationDetail]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Total amount of Payment
	public var total: Quantity
	
	/// Note text
	public var note: [PaymentReconciliationNote]?
	
	/// Designated initializer taking all required properties
	public init(total: Quantity) {
		self.total = total
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							detail: [PaymentReconciliationDetail]? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							form: Coding? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [PaymentReconciliationNote]? = nil,
							organization: Reference? = nil,
							originalRuleset: Coding? = nil,
							outcome: FHIRPrimitive<RemittanceOutcome>? = nil,
							period: Period? = nil,
							request: Reference? = nil,
							requestOrganization: Reference? = nil,
							requestProvider: Reference? = nil,
							ruleset: Coding? = nil,
							text: Narrative? = nil,
							total: Quantity)
	{
		self.init(total: total)
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
		self.note = note
		self.organization = organization
		self.originalRuleset = originalRuleset
		self.outcome = outcome
		self.period = period
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.ruleset = ruleset
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case detail
		case disposition; case _disposition
		case form
		case identifier
		case note
		case organization
		case originalRuleset
		case outcome; case _outcome
		case period
		case request
		case requestOrganization
		case requestProvider
		case ruleset
		case total
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.detail = try [PaymentReconciliationDetail](from: _container, forKeyIfPresent: .detail)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.form = try Coding(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [PaymentReconciliationNote](from: _container, forKeyIfPresent: .note)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.outcome = try FHIRPrimitive<RemittanceOutcome>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		self.total = try Quantity(from: _container, forKey: .total)
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
		try note?.encode(on: &_container, forKey: .note)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try period?.encode(on: &_container, forKey: .period)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try total.encode(on: &_container, forKey: .total)
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
		    && note == _other.note
		    && organization == _other.organization
		    && originalRuleset == _other.originalRuleset
		    && outcome == _other.outcome
		    && period == _other.period
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && ruleset == _other.ruleset
		    && total == _other.total
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(detail)
		hasher.combine(disposition)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(organization)
		hasher.combine(originalRuleset)
		hasher.combine(outcome)
		hasher.combine(period)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(ruleset)
		hasher.combine(total)
	}
}

/**
 Details.
 
 List of individual settlement amounts and the corresponding transaction.
 */
open class PaymentReconciliationDetail: BackboneElement {
	
	/// Type code
	public var type: Coding
	
	/// Claim
	public var request: Reference?
	
	/// Claim Response
	public var responce: Reference?
	
	/// Submitter
	public var submitter: Reference?
	
	/// Payee
	public var payee: Reference?
	
	/// Invoice date
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Detail amount
	public var amount: Quantity?
	
	/// Designated initializer taking all required properties
	public init(type: Coding) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							date: FHIRPrimitive<FHIRDate>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							payee: Reference? = nil,
							request: Reference? = nil,
							responce: Reference? = nil,
							submitter: Reference? = nil,
							type: Coding)
	{
		self.init(type: type)
		self.amount = amount
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.payee = payee
		self.request = request
		self.responce = responce
		self.submitter = submitter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case date; case _date
		case payee
		case request
		case responce
		case submitter
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.responce = try Reference(from: _container, forKeyIfPresent: .responce)
		self.submitter = try Reference(from: _container, forKeyIfPresent: .submitter)
		self.type = try Coding(from: _container, forKey: .type)
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
		try responce?.encode(on: &_container, forKey: .responce)
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
		    && responce == _other.responce
		    && submitter == _other.submitter
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(date)
		hasher.combine(payee)
		hasher.combine(request)
		hasher.combine(responce)
		hasher.combine(submitter)
		hasher.combine(type)
	}
}

/**
 Note text.
 
 Suite of notes.
 */
open class PaymentReconciliationNote: BackboneElement {
	
	/// display | print | printoper
	public var type: Coding?
	
	/// Notes text
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
							type: Coding? = nil)
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
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
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
		guard let _other = _other as? PaymentReconciliationNote else {
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
