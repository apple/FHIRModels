//
//  Account.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Account)
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
 A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges
 for a patient, cost centres, etc.
 */
open class Account: DomainResource {
	
	override open class var resourceType: ResourceType { return .account }
	
	/// Account number
	public var identifier: [Identifier]?
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>?
	
	/// E.g. patient, expense, depreciation
	public var type: CodeableConcept?
	
	/// active | inactive
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Valid from..to
	public var activePeriod: Period?
	
	/// Base currency in which balance is tracked
	public var currency: Coding?
	
	/// How much is in account?
	public var balance: Quantity?
	
	/// Transaction window
	public var coveragePeriod: Period?
	
	/// What is account tied to?
	public var subject: Reference?
	
	/// Who is responsible?
	public var owner: Reference?
	
	/// Explanation of purpose/use
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							activePeriod: Period? = nil,
							balance: Quantity? = nil,
							contained: [ResourceProxy]? = nil,
							coveragePeriod: Period? = nil,
							currency: Coding? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							owner: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.activePeriod = activePeriod
		self.balance = balance
		self.contained = contained
		self.coveragePeriod = coveragePeriod
		self.currency = currency
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.owner = owner
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activePeriod
		case balance
		case coveragePeriod
		case currency
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case name; case _name
		case owner
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activePeriod = try Period(from: _container, forKeyIfPresent: .activePeriod)
		self.balance = try Quantity(from: _container, forKeyIfPresent: .balance)
		self.coveragePeriod = try Period(from: _container, forKeyIfPresent: .coveragePeriod)
		self.currency = try Coding(from: _container, forKeyIfPresent: .currency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.owner = try Reference(from: _container, forKeyIfPresent: .owner)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activePeriod?.encode(on: &_container, forKey: .activePeriod)
		try balance?.encode(on: &_container, forKey: .balance)
		try coveragePeriod?.encode(on: &_container, forKey: .coveragePeriod)
		try currency?.encode(on: &_container, forKey: .currency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try owner?.encode(on: &_container, forKey: .owner)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return activePeriod == _other.activePeriod
		    && balance == _other.balance
		    && coveragePeriod == _other.coveragePeriod
		    && currency == _other.currency
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && name == _other.name
		    && owner == _other.owner
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activePeriod)
		hasher.combine(balance)
		hasher.combine(coveragePeriod)
		hasher.combine(currency)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(owner)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}
