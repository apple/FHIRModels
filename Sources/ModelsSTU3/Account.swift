//
//  Account.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Account)
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
	
	/// Time window that transactions may be posted to this account
	public var active: Period?
	
	/// How much is in account?
	public var balance: Money?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The party(s) that are responsible for covering the payment of this account, and what order should they be
	/// applied to the account
	public var coverage: [AccountCoverage]?
	
	/// Explanation of purpose/use
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Responsible for the account
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
	
	/// Who is responsible?
	public var owner: Reference?
	
	/// Transaction window
	public var period: Period?
	
	/// Indicates whether the account is presently used/usable or not.
	public var status: FHIRPrimitive<AccountStatus>?
	
	/// What is account tied to?
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// E.g. patient, expense, depreciation
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		active: Period? = nil,
		balance: Money? = nil,
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
		period: Period? = nil,
		status: FHIRPrimitive<AccountStatus>? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.active = active
		self.balance = balance
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
		self.period = period
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active
		case balance
		case contained
		case coverage
		case description_fhir = "description"; case _description_fhir = "_description"
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
		case period
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
		self.active = try Period(from: _container, forKeyIfPresent: .active)
		self.balance = try Money(from: _container, forKeyIfPresent: .balance)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [AccountCoverage](from: _container, forKeyIfPresent: .coverage)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<AccountStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active)
		try balance?.encode(on: &_container, forKey: .balance)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
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
		try period?.encode(on: &_container, forKey: .period)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The party(s) that are responsible for covering the payment of this account, and what order should they be applied to
 the account.
 */
public struct AccountCoverage: BackboneElement {
	
	/// The party(s) that are responsible for covering the payment of this account
	public var coverage: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
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
 Responsible for the account.
 
 Parties financially responsible for the account.
 */
public struct AccountGuarantor: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Credit or other hold applied
	public var onHold: FHIRPrimitive<FHIRBool>?
	
	/// Responsible entity
	public var party: Reference
	
	/// Guarrantee account during
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
