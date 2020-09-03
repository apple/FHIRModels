//
//  Account.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Account)
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
	
	/// E.g. patient, expense, depreciation
	public var type: CodeableConcept?
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The entity that caused the expenses
	public var subject: [Reference]?
	
	/// Transaction window
	public var servicePeriod: Period?
	
	/// The party(s) that are responsible for covering the payment of this account, and what order should they be
	/// applied to the account
	public var coverage: [AccountCoverage]?
	
	/// Entity managing the Account
	public var owner: Reference?
	
	/// Explanation of purpose/use
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The parties ultimately responsible for balancing the Account
	public var guarantor: [AccountGuarantor]?
	
	/// Reference to a parent Account
	public var partOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<AccountStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							coverage: [AccountCoverage]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
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
							partOf: Reference? = nil,
							servicePeriod: Period? = nil,
							status: FHIRPrimitive<AccountStatus>,
							subject: [Reference]? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(status: status)
		self.contained = contained
		self.coverage = coverage
		self.description_fhir = description_fhir
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
		self.partOf = partOf
		self.servicePeriod = servicePeriod
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case description_fhir = "description"; case _description_fhir = "_description"
		case guarantor
		case identifier
		case name; case _name
		case owner
		case partOf
		case servicePeriod
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverage = try [AccountCoverage](from: _container, forKeyIfPresent: .coverage)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.guarantor = try [AccountGuarantor](from: _container, forKeyIfPresent: .guarantor)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
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
		try coverage?.encode(on: &_container, forKey: .coverage)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try guarantor?.encode(on: &_container, forKey: .guarantor)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try owner?.encode(on: &_container, forKey: .owner)
		try partOf?.encode(on: &_container, forKey: .partOf)
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
		return coverage == _other.coverage
		    && description_fhir == _other.description_fhir
		    && guarantor == _other.guarantor
		    && identifier == _other.identifier
		    && name == _other.name
		    && owner == _other.owner
		    && partOf == _other.partOf
		    && servicePeriod == _other.servicePeriod
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverage)
		hasher.combine(description_fhir)
		hasher.combine(guarantor)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(owner)
		hasher.combine(partOf)
		hasher.combine(servicePeriod)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
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
							priority: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
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
							period: Period? = nil)
	{
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
