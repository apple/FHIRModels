//
//  Account.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Account)
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
 Tracks balance, charges, for patient or cost center.
 
 A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges
 for a patient, cost centers, etc.
 */
open class Account: DomainResource {
	
	override open class var resourceType: ResourceType { return .account }
	
	/// Account number
	public var identifier: [Identifier]?
	
	/// Indicates whether the account is presently used/usable or not.
	public var status: FHIRPrimitive<AccountStatus>
	
	/// Tracks the lifecycle of the account through the billing process
	public var billingStatus: CodeableConcept?
	
	/// E.g. patient, expense, depreciation
	public var type: CodeableConcept?
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The entity that caused the expenses
	public var subject: [Reference]?
	
	/// Transaction window
	public var servicePeriod: Period?
	
	/// Episodic account covering these encounters/episodes of care
	public var covers: [Reference]?
	
	/// The party(s) that are responsible for covering the payment of this account, and what order should they be
	/// applied to the account
	public var coverage: [AccountCoverage]?
	
	/// Entity managing the Account
	public var owner: Reference?
	
	/// Explanation of purpose/use
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The parties ultimately responsible for balancing the Account
	public var guarantor: [AccountGuarantor]?
	
	/// The list of diagnoses relevant to this account
	public var diagnosis: [AccountDiagnosis]?
	
	/// The list of procedures relevant to this account
	public var procedure: [AccountProcedure]?
	
	/// Other associated accounts related to this account
	public var relatedAccount: [AccountRelatedAccount]?
	
	/// The base or default currency
	public var currency: CodeableConcept?
	
	/// Calculated account balance(s)
	public var balance: [AccountBalance]?
	
	/// Time the balance amount was calculated
	public var calculatedAt: FHIRPrimitive<Instant>?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<AccountStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		balance: [AccountBalance]? = nil,
		billingStatus: CodeableConcept? = nil,
		calculatedAt: FHIRPrimitive<Instant>? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: [AccountCoverage]? = nil,
		covers: [Reference]? = nil,
		currency: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		diagnosis: [AccountDiagnosis]? = nil,
		`extension`: [Extension]? = nil,
		guarantor: [AccountGuarantor]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		owner: Reference? = nil,
		procedure: [AccountProcedure]? = nil,
		relatedAccount: [AccountRelatedAccount]? = nil,
		servicePeriod: Period? = nil,
		status: FHIRPrimitive<AccountStatus>,
		subject: [Reference]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(status: status)
		self.balance = balance
		self.billingStatus = billingStatus
		self.calculatedAt = calculatedAt
		self.contained = contained
		self.coverage = coverage
		self.covers = covers
		self.currency = currency
		self.description_fhir = description_fhir
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.guarantor = guarantor
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.owner = owner
		self.procedure = procedure
		self.relatedAccount = relatedAccount
		self.servicePeriod = servicePeriod
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case balance
		case billingStatus
		case calculatedAt; case _calculatedAt
		case coverage
		case covers
		case currency
		case description_fhir = "description"; case _description_fhir = "_description"
		case diagnosis
		case guarantor
		case identifier
		case name; case _name
		case owner
		case procedure
		case relatedAccount
		case servicePeriod
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.balance = try [AccountBalance](from: _container, forKeyIfPresent: .balance)
		self.billingStatus = try CodeableConcept(from: _container, forKeyIfPresent: .billingStatus)
		self.calculatedAt = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .calculatedAt, auxiliaryKey: ._calculatedAt)
		self.coverage = try [AccountCoverage](from: _container, forKeyIfPresent: .coverage)
		self.covers = try [Reference](from: _container, forKeyIfPresent: .covers)
		self.currency = try CodeableConcept(from: _container, forKeyIfPresent: .currency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.diagnosis = try [AccountDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.guarantor = try [AccountGuarantor](from: _container, forKeyIfPresent: .guarantor)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.procedure = try [AccountProcedure](from: _container, forKeyIfPresent: .procedure)
		self.relatedAccount = try [AccountRelatedAccount](from: _container, forKeyIfPresent: .relatedAccount)
		self.servicePeriod = try Period(from: _container, forKeyIfPresent: .servicePeriod)
		self.status = try FHIRPrimitive<AccountStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try balance?.encode(on: &_container, forKey: .balance)
		try billingStatus?.encode(on: &_container, forKey: .billingStatus)
		try calculatedAt?.encode(on: &_container, forKey: .calculatedAt, auxiliaryKey: ._calculatedAt)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try covers?.encode(on: &_container, forKey: .covers)
		try currency?.encode(on: &_container, forKey: .currency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try guarantor?.encode(on: &_container, forKey: .guarantor)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try owner?.encode(on: &_container, forKey: .owner)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try relatedAccount?.encode(on: &_container, forKey: .relatedAccount)
		try servicePeriod?.encode(on: &_container, forKey: .servicePeriod)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Account else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return balance == _other.balance
		    && billingStatus == _other.billingStatus
		    && calculatedAt == _other.calculatedAt
		    && coverage == _other.coverage
		    && covers == _other.covers
		    && currency == _other.currency
		    && description_fhir == _other.description_fhir
		    && diagnosis == _other.diagnosis
		    && guarantor == _other.guarantor
		    && identifier == _other.identifier
		    && name == _other.name
		    && owner == _other.owner
		    && procedure == _other.procedure
		    && relatedAccount == _other.relatedAccount
		    && servicePeriod == _other.servicePeriod
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(balance)
		hasher.combine(billingStatus)
		hasher.combine(calculatedAt)
		hasher.combine(coverage)
		hasher.combine(covers)
		hasher.combine(currency)
		hasher.combine(description_fhir)
		hasher.combine(diagnosis)
		hasher.combine(guarantor)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(owner)
		hasher.combine(procedure)
		hasher.combine(relatedAccount)
		hasher.combine(servicePeriod)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Calculated account balance(s).
 
 The calculated account balances - these are calculated and processed by the finance system.
 
 The balances with a `term` that is not current are usually generated/updated by an invoicing or similar process.
 */
open class AccountBalance: BackboneElement {
	
	/// Who is expected to pay this part of the balance
	public var aggregate: CodeableConcept?
	
	/// current | 30 | 60 | 90 | 120
	public var term: CodeableConcept?
	
	/// Estimated balance
	public var estimate: FHIRPrimitive<FHIRBool>?
	
	/// Calculated amount
	public var amount: Money
	
	/// Designated initializer taking all required properties
	public init(amount: Money) {
		self.amount = amount
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		aggregate: CodeableConcept? = nil,
		amount: Money,
		estimate: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		term: CodeableConcept? = nil
	) {
		self.init(amount: amount)
		self.aggregate = aggregate
		self.estimate = estimate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.term = term
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case aggregate
		case amount
		case estimate; case _estimate
		case term
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.aggregate = try CodeableConcept(from: _container, forKeyIfPresent: .aggregate)
		self.amount = try Money(from: _container, forKey: .amount)
		self.estimate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .estimate, auxiliaryKey: ._estimate)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try aggregate?.encode(on: &_container, forKey: .aggregate)
		try amount.encode(on: &_container, forKey: .amount)
		try estimate?.encode(on: &_container, forKey: .estimate, auxiliaryKey: ._estimate)
		try term?.encode(on: &_container, forKey: .term)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AccountBalance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return aggregate == _other.aggregate
		    && amount == _other.amount
		    && estimate == _other.estimate
		    && term == _other.term
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(aggregate)
		hasher.combine(amount)
		hasher.combine(estimate)
		hasher.combine(term)
	}
}

/**
 The party(s) that are responsible for covering the payment of this account, and what order should they be applied to
 the account.
 */
open class AccountCoverage: BackboneElement {
	
	/// The party(s), such as insurances, that may contribute to the payment of this account
	public var coverage: Reference
	
	/// The priority of the coverage in the context of this account
	public var priority: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference) {
		self.coverage = coverage
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coverage: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		priority: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.init(coverage: coverage)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priority = priority
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case priority; case _priority
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.priority = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coverage.encode(on: &_container, forKey: .coverage)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AccountCoverage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coverage == _other.coverage
		    && priority == _other.priority
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverage)
		hasher.combine(priority)
	}
}

/**
 The list of diagnoses relevant to this account.
 
 When using an account for billing a specific Encounter the set of diagnoses that are relevant for billing are stored
 here on the account where they are able to be sequenced appropriately prior to processing to produce claim(s).
 */
open class AccountDiagnosis: BackboneElement {
	
	/// Ranking of the diagnosis (for each type)
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The diagnosis relevant to the account
	public var condition: CodeableReference
	
	/// Date of the diagnosis (when coded diagnosis)
	public var dateOfDiagnosis: FHIRPrimitive<DateTime>?
	
	/// Type that this diagnosis has relevant to the account (e.g. admission, billing, discharge …)
	public var type: [CodeableConcept]?
	
	/// Diagnosis present on Admission
	public var onAdmission: FHIRPrimitive<FHIRBool>?
	
	/// Package Code specific for billing
	public var packageCode: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(condition: CodeableReference) {
		self.condition = condition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		condition: CodeableReference,
		dateOfDiagnosis: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onAdmission: FHIRPrimitive<FHIRBool>? = nil,
		packageCode: [CodeableConcept]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(condition: condition)
		self.dateOfDiagnosis = dateOfDiagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onAdmission = onAdmission
		self.packageCode = packageCode
		self.sequence = sequence
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case dateOfDiagnosis; case _dateOfDiagnosis
		case onAdmission; case _onAdmission
		case packageCode
		case sequence; case _sequence
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try CodeableReference(from: _container, forKey: .condition)
		self.dateOfDiagnosis = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateOfDiagnosis, auxiliaryKey: ._dateOfDiagnosis)
		self.onAdmission = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .onAdmission, auxiliaryKey: ._onAdmission)
		self.packageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .packageCode)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition.encode(on: &_container, forKey: .condition)
		try dateOfDiagnosis?.encode(on: &_container, forKey: .dateOfDiagnosis, auxiliaryKey: ._dateOfDiagnosis)
		try onAdmission?.encode(on: &_container, forKey: .onAdmission, auxiliaryKey: ._onAdmission)
		try packageCode?.encode(on: &_container, forKey: .packageCode)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AccountDiagnosis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return condition == _other.condition
		    && dateOfDiagnosis == _other.dateOfDiagnosis
		    && onAdmission == _other.onAdmission
		    && packageCode == _other.packageCode
		    && sequence == _other.sequence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(dateOfDiagnosis)
		hasher.combine(onAdmission)
		hasher.combine(packageCode)
		hasher.combine(sequence)
		hasher.combine(type)
	}
}

/**
 The parties ultimately responsible for balancing the Account.
 
 The parties responsible for balancing the account if other payment options fall short.
 */
open class AccountGuarantor: BackboneElement {
	
	/// Responsible entity
	public var party: Reference
	
	/// Credit or other hold applied
	public var onHold: FHIRPrimitive<FHIRBool>?
	
	/// Guarantee account during
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(party: Reference) {
		self.party = party
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onHold: FHIRPrimitive<FHIRBool>? = nil,
		party: Reference,
		period: Period? = nil
	) {
		self.init(party: party)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onHold = onHold
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case onHold; case _onHold
		case party
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.onHold = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .onHold, auxiliaryKey: ._onHold)
		self.party = try Reference(from: _container, forKey: .party)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try onHold?.encode(on: &_container, forKey: .onHold, auxiliaryKey: ._onHold)
		try party.encode(on: &_container, forKey: .party)
		try period?.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AccountGuarantor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return onHold == _other.onHold
		    && party == _other.party
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(onHold)
		hasher.combine(party)
		hasher.combine(period)
	}
}

/**
 The list of procedures relevant to this account.
 
 When using an account for billing a specific Encounter the set of procedures that are relevant for billing are stored
 here on the account where they are able to be sequenced appropriately prior to processing to produce claim(s).
 */
open class AccountProcedure: BackboneElement {
	
	/// Ranking of the procedure (for each type)
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The procedure relevant to the account
	public var code: CodeableReference
	
	/// Date of the procedure (when coded procedure)
	public var dateOfService: FHIRPrimitive<DateTime>?
	
	/// How this procedure value should be used in charging the account
	public var type: [CodeableConcept]?
	
	/// Package Code specific for billing
	public var packageCode: [CodeableConcept]?
	
	/// Any devices that were associated with the procedure
	public var device: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableReference) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableReference,
		dateOfService: FHIRPrimitive<DateTime>? = nil,
		device: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		packageCode: [CodeableConcept]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(code: code)
		self.dateOfService = dateOfService
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageCode = packageCode
		self.sequence = sequence
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case dateOfService; case _dateOfService
		case device
		case packageCode
		case sequence; case _sequence
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableReference(from: _container, forKey: .code)
		self.dateOfService = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateOfService, auxiliaryKey: ._dateOfService)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.packageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .packageCode)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try dateOfService?.encode(on: &_container, forKey: .dateOfService, auxiliaryKey: ._dateOfService)
		try device?.encode(on: &_container, forKey: .device)
		try packageCode?.encode(on: &_container, forKey: .packageCode)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AccountProcedure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && dateOfService == _other.dateOfService
		    && device == _other.device
		    && packageCode == _other.packageCode
		    && sequence == _other.sequence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(dateOfService)
		hasher.combine(device)
		hasher.combine(packageCode)
		hasher.combine(sequence)
		hasher.combine(type)
	}
}

/**
 Other associated accounts related to this account.
 */
open class AccountRelatedAccount: BackboneElement {
	
	/// Relationship of the associated Account
	public var relationship: CodeableConcept?
	
	/// Reference to an associated Account
	public var account: Reference
	
	/// Designated initializer taking all required properties
	public init(account: Reference) {
		self.account = account
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		account: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.init(account: account)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case relationship
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try Reference(from: _container, forKey: .account)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account.encode(on: &_container, forKey: .account)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AccountRelatedAccount else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return account == _other.account
		    && relationship == _other.relationship
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(relationship)
	}
}
