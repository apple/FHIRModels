//
//  Account.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Account)
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
 Tracks balance, charges, for patient or cost center.
 
 A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges
 for a patient, cost centers, etc.
 */
public struct Account: DomainResource {
	
	public static let resourceType: ResourceType = .account
	
	/// Calculated account balance(s)
	public var balance: [AccountBalance]?
	
	/// Tracks the lifecycle of the account through the billing process
	public var billingStatus: CodeableConcept?
	
	/// Time the balance amount was calculated
	public var calculatedAt: FHIRPrimitive<Instant>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The party(s) that are responsible for covering the payment of this account, and what order should they be
	/// applied to the account
	public var coverage: [AccountCoverage]?
	
	/// The base or default currency
	public var currency: CodeableConcept?
	
	/// Explanation of purpose/use
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The list of diagnoses relevant to this account
	public var diagnosis: [AccountDiagnosis]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The parties ultimately responsible for balancing the Account
	public var guarantor: [AccountGuarantor]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Account number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Entity managing the Account
	public var owner: Reference?
	
	/// The list of procedures relevant to this account
	public var procedure: [AccountProcedure]?
	
	/// Other associated accounts related to this account
	public var relatedAccount: [AccountRelatedAccount]?
	
	/// Transaction window
	public var servicePeriod: Period?
	
	/// Indicates whether the account is presently used/usable or not.
	public var status: FHIRPrimitive<AccountStatus>
	
	/// The entity that caused the expenses
	public var subject: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// E.g. patient, expense, depreciation
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		balance: [AccountBalance]? = nil,
		billingStatus: CodeableConcept? = nil,
		calculatedAt: FHIRPrimitive<Instant>? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: [AccountCoverage]? = nil,
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
		self.balance = balance
		self.billingStatus = billingStatus
		self.calculatedAt = calculatedAt
		self.contained = contained
		self.coverage = coverage
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
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case balance
		case billingStatus
		case calculatedAt; case _calculatedAt
		case contained
		case coverage
		case currency
		case description_fhir = "description"; case _description_fhir = "_description"
		case diagnosis
		case `extension` = "extension"
		case guarantor
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case owner
		case procedure
		case relatedAccount
		case servicePeriod
		case status; case _status
		case subject
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.balance = try [AccountBalance](from: _container, forKeyIfPresent: .balance)
		self.billingStatus = try CodeableConcept(from: _container, forKeyIfPresent: .billingStatus)
		self.calculatedAt = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .calculatedAt, auxiliaryKey: ._calculatedAt)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [AccountCoverage](from: _container, forKeyIfPresent: .coverage)
		self.currency = try CodeableConcept(from: _container, forKeyIfPresent: .currency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.diagnosis = try [AccountDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.guarantor = try [AccountGuarantor](from: _container, forKeyIfPresent: .guarantor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.procedure = try [AccountProcedure](from: _container, forKeyIfPresent: .procedure)
		self.relatedAccount = try [AccountRelatedAccount](from: _container, forKeyIfPresent: .relatedAccount)
		self.servicePeriod = try Period(from: _container, forKeyIfPresent: .servicePeriod)
		self.status = try FHIRPrimitive<AccountStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try balance?.encode(on: &_container, forKey: .balance)
		try billingStatus?.encode(on: &_container, forKey: .billingStatus)
		try calculatedAt?.encode(on: &_container, forKey: .calculatedAt, auxiliaryKey: ._calculatedAt)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try currency?.encode(on: &_container, forKey: .currency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try guarantor?.encode(on: &_container, forKey: .guarantor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try owner?.encode(on: &_container, forKey: .owner)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try relatedAccount?.encode(on: &_container, forKey: .relatedAccount)
		try servicePeriod?.encode(on: &_container, forKey: .servicePeriod)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Calculated account balance(s).
 
 The calculated account balances - these are calculated and processed by the finance system.
 
 The balances with a `term` that is not current are usually generated/updated by an invoicing or similar process.
 */
public struct AccountBalance: BackboneElement {
	
	/// Who is expected to pay this part of the balance
	public var aggregate: CodeableConcept?
	
	/// Calculated amount
	public var amount: Money
	
	/// Estimated balance
	public var estimate: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// current | 30 | 60 | 90 | 120
	public var term: CodeableConcept?
	
	/// Designated initializer
	public init(
		aggregate: CodeableConcept? = nil,
		amount: Money,
		estimate: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		term: CodeableConcept? = nil
	) {
		self.aggregate = aggregate
		self.amount = amount
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case term
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.aggregate = try CodeableConcept(from: _container, forKeyIfPresent: .aggregate)
		self.amount = try Money(from: _container, forKey: .amount)
		self.estimate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .estimate, auxiliaryKey: ._estimate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try aggregate?.encode(on: &_container, forKey: .aggregate)
		try amount.encode(on: &_container, forKey: .amount)
		try estimate?.encode(on: &_container, forKey: .estimate, auxiliaryKey: ._estimate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try term?.encode(on: &_container, forKey: .term)
	}
}

/**
 The party(s) that are responsible for covering the payment of this account, and what order should they be applied to
 the account.
 */
public struct AccountCoverage: BackboneElement {
	
	/// The party(s), such as insurances, that may contribute to the payment of this account
	public var coverage: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The priority of the coverage in the context of this account
	public var priority: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		coverage: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		priority: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.coverage = coverage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priority = priority
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case priority; case _priority
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.priority = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coverage.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
	}
}

/**
 The list of diagnoses relevant to this account.
 
 When using an account for billing a specific Encounter the set of diagnoses that are relevant for billing are stored
 here on the account where they are able to be sequenced appropriately prior to processing to produce claim(s).
 */
public struct AccountDiagnosis: BackboneElement {
	
	/// The diagnosis relevant to the account
	public var condition: CodeableReference
	
	/// Date of the diagnosis (when coded diagnosis)
	public var dateOfDiagnosis: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Diagnosis present on Admission
	public var onAdmission: FHIRPrimitive<FHIRBool>?
	
	/// Package Code specific for billing
	public var packageCode: [CodeableConcept]?
	
	/// Ranking of the diagnosis (for each type)
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Type that this diagnosis has relevant to the account (e.g. admission, billing, discharge …)
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		self.condition = condition
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onAdmission; case _onAdmission
		case packageCode
		case sequence; case _sequence
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.condition = try CodeableReference(from: _container, forKey: .condition)
		self.dateOfDiagnosis = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateOfDiagnosis, auxiliaryKey: ._dateOfDiagnosis)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onAdmission = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .onAdmission, auxiliaryKey: ._onAdmission)
		self.packageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .packageCode)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try condition.encode(on: &_container, forKey: .condition)
		try dateOfDiagnosis?.encode(on: &_container, forKey: .dateOfDiagnosis, auxiliaryKey: ._dateOfDiagnosis)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onAdmission?.encode(on: &_container, forKey: .onAdmission, auxiliaryKey: ._onAdmission)
		try packageCode?.encode(on: &_container, forKey: .packageCode)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The parties ultimately responsible for balancing the Account.
 
 The parties responsible for balancing the account if other payment options fall short.
 */
public struct AccountGuarantor: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Credit or other hold applied
	public var onHold: FHIRPrimitive<FHIRBool>?
	
	/// Responsible entity
	public var party: Reference
	
	/// Guarantee account during
	public var period: Period?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onHold: FHIRPrimitive<FHIRBool>? = nil,
		party: Reference,
		period: Period? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onHold = onHold
		self.party = party
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onHold; case _onHold
		case party
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onHold = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .onHold, auxiliaryKey: ._onHold)
		self.party = try Reference(from: _container, forKey: .party)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onHold?.encode(on: &_container, forKey: .onHold, auxiliaryKey: ._onHold)
		try party.encode(on: &_container, forKey: .party)
		try period?.encode(on: &_container, forKey: .period)
	}
}

/**
 The list of procedures relevant to this account.
 
 When using an account for billing a specific Encounter the set of procedures that are relevant for billing are stored
 here on the account where they are able to be sequenced appropriately prior to processing to produce claim(s).
 */
public struct AccountProcedure: BackboneElement {
	
	/// The procedure relevant to the account
	public var code: CodeableReference
	
	/// Date of the procedure (when coded procedure)
	public var dateOfService: FHIRPrimitive<DateTime>?
	
	/// Any devices that were associated with the procedure
	public var device: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Package Code specific for billing
	public var packageCode: [CodeableConcept]?
	
	/// Ranking of the procedure (for each type)
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// How this procedure value should be used in charging the account
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		self.code = code
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case packageCode
		case sequence; case _sequence
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableReference(from: _container, forKey: .code)
		self.dateOfService = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateOfService, auxiliaryKey: ._dateOfService)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.packageCode = try [CodeableConcept](from: _container, forKeyIfPresent: .packageCode)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try dateOfService?.encode(on: &_container, forKey: .dateOfService, auxiliaryKey: ._dateOfService)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try packageCode?.encode(on: &_container, forKey: .packageCode)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Other associated accounts related to this account.
 */
public struct AccountRelatedAccount: BackboneElement {
	
	/// Reference to an associated Account
	public var account: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Relationship of the associated Account
	public var relationship: CodeableConcept?
	
	/// Designated initializer
	public init(
		account: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.account = account
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relationship
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try Reference(from: _container, forKey: .account)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try account.encode(on: &_container, forKey: .account)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relationship?.encode(on: &_container, forKey: .relationship)
	}
}
