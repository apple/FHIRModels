//
//  EligibilityResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/EligibilityResponse)
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
 EligibilityResponse resource.
 
 This resource provides eligibility and plan details from the processing of an Eligibility resource.
 */
open class EligibilityResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .eligibilityResponse }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Eligibility reference
	public var request: Reference?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Insurer issuing the coverage
	public var insurer: Reference?
	
	/// Coverage inforce indicator
	public var inforce: FHIRPrimitive<FHIRBool>?
	
	/// Details by insurance coverage
	public var insurance: [EligibilityResponseInsurance]?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Processing errors
	public var error: [EligibilityResponseError]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							error: [EligibilityResponseError]? = nil,
							`extension`: [Extension]? = nil,
							form: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							inforce: FHIRPrimitive<FHIRBool>? = nil,
							insurance: [EligibilityResponseInsurance]? = nil,
							insurer: Reference? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: CodeableConcept? = nil,
							request: Reference? = nil,
							requestOrganization: Reference? = nil,
							requestProvider: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.contained = contained
		self.created = created
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.inforce = inforce
		self.insurance = insurance
		self.insurer = insurer
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case identifier
		case inforce; case _inforce
		case insurance
		case insurer
		case outcome
		case request
		case requestOrganization
		case requestProvider
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [EligibilityResponseError](from: _container, forKeyIfPresent: .error)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.inforce = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inforce, auxiliaryKey: ._inforce)
		self.insurance = try [EligibilityResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try inforce?.encode(on: &_container, forKey: .inforce, auxiliaryKey: ._inforce)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EligibilityResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return created == _other.created
		    && disposition == _other.disposition
		    && error == _other.error
		    && form == _other.form
		    && identifier == _other.identifier
		    && inforce == _other.inforce
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && outcome == _other.outcome
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(inforce)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(outcome)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(status)
	}
}

/**
 Processing errors.
 
 Mutually exclusive with Services Provided (Item).
 */
open class EligibilityResponseError: BackboneElement {
	
	/// Error code detailing processing issues
	public var code: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EligibilityResponseError else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
	}
}

/**
 Details by insurance coverage.
 
 The insurer may provide both the details for the requested coverage as well as details for additional coverages known
 to the insurer.
 */
open class EligibilityResponseInsurance: BackboneElement {
	
	/// Updated Coverage details
	public var coverage: Reference?
	
	/// Contract details
	public var contract: Reference?
	
	/// Benefits by Category
	public var benefitBalance: [EligibilityResponseInsuranceBenefitBalance]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							benefitBalance: [EligibilityResponseInsuranceBenefitBalance]? = nil,
							contract: Reference? = nil,
							coverage: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.benefitBalance = benefitBalance
		self.contract = contract
		self.coverage = coverage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case benefitBalance
		case contract
		case coverage
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.benefitBalance = try [EligibilityResponseInsuranceBenefitBalance](from: _container, forKeyIfPresent: .benefitBalance)
		self.contract = try Reference(from: _container, forKeyIfPresent: .contract)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try benefitBalance?.encode(on: &_container, forKey: .benefitBalance)
		try contract?.encode(on: &_container, forKey: .contract)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EligibilityResponseInsurance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return benefitBalance == _other.benefitBalance
		    && contract == _other.contract
		    && coverage == _other.coverage
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(benefitBalance)
		hasher.combine(contract)
		hasher.combine(coverage)
	}
}

/**
 Benefits by Category.
 
 Benefits and optionally current balances by Category.
 */
open class EligibilityResponseInsuranceBenefitBalance: BackboneElement {
	
	/// Type of services covered
	public var category: CodeableConcept
	
	/// Detailed services covered within the type
	public var subCategory: CodeableConcept?
	
	/// Excluded from the plan
	public var excluded: FHIRPrimitive<FHIRBool>?
	
	/// Short name for the benefit
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Description of the benefit or services covered
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// In or out of network
	public var network: CodeableConcept?
	
	/// Individual or family
	public var unit: CodeableConcept?
	
	/// Annual or lifetime
	public var term: CodeableConcept?
	
	/// Benefit Summary
	public var financial: [EligibilityResponseInsuranceBenefitBalanceFinancial]?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept) {
		self.category = category
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: CodeableConcept,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							excluded: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							financial: [EligibilityResponseInsuranceBenefitBalanceFinancial]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							network: CodeableConcept? = nil,
							subCategory: CodeableConcept? = nil,
							term: CodeableConcept? = nil,
							unit: CodeableConcept? = nil)
	{
		self.init(category: category)
		self.description_fhir = description_fhir
		self.excluded = excluded
		self.`extension` = `extension`
		self.financial = financial
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.network = network
		self.subCategory = subCategory
		self.term = term
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case description_fhir = "description"; case _description_fhir = "_description"
		case excluded; case _excluded
		case financial
		case name; case _name
		case network
		case subCategory
		case term
		case unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.excluded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excluded, auxiliaryKey: ._excluded)
		self.financial = try [EligibilityResponseInsuranceBenefitBalanceFinancial](from: _container, forKeyIfPresent: .financial)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
		self.subCategory = try CodeableConcept(from: _container, forKeyIfPresent: .subCategory)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category.encode(on: &_container, forKey: .category)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try excluded?.encode(on: &_container, forKey: .excluded, auxiliaryKey: ._excluded)
		try financial?.encode(on: &_container, forKey: .financial)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try subCategory?.encode(on: &_container, forKey: .subCategory)
		try term?.encode(on: &_container, forKey: .term)
		try unit?.encode(on: &_container, forKey: .unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EligibilityResponseInsuranceBenefitBalance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && description_fhir == _other.description_fhir
		    && excluded == _other.excluded
		    && financial == _other.financial
		    && name == _other.name
		    && network == _other.network
		    && subCategory == _other.subCategory
		    && term == _other.term
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(description_fhir)
		hasher.combine(excluded)
		hasher.combine(financial)
		hasher.combine(name)
		hasher.combine(network)
		hasher.combine(subCategory)
		hasher.combine(term)
		hasher.combine(unit)
	}
}

/**
 Benefit Summary.
 
 Benefits Used to date.
 */
open class EligibilityResponseInsuranceBenefitBalanceFinancial: BackboneElement {
	
	/// All possible types for "allowed[x]"
	public enum AllowedX: Hashable {
		case money(Money)
		case string(FHIRPrimitive<FHIRString>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "used[x]"
	public enum UsedX: Hashable {
		case money(Money)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// Deductable, visits, benefit amount
	public var type: CodeableConcept
	
	/// Benefits allowed
	/// One of `allowed[x]`
	public var allowed: AllowedX?
	
	/// Benefits used
	/// One of `used[x]`
	public var used: UsedX?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allowed: AllowedX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept,
							used: UsedX? = nil)
	{
		self.init(type: type)
		self.allowed = allowed
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.used = used
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowedMoney
		case allowedString; case _allowedString
		case allowedUnsignedInt; case _allowedUnsignedInt
		case type
		case usedMoney
		case usedUnsignedInt; case _usedUnsignedInt
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_allowed: AllowedX? = nil
		if let allowedUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .allowedUnsignedInt, auxiliaryKey: ._allowedUnsignedInt) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedUnsignedInt, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .unsignedInt(allowedUnsignedInt)
		}
		if let allowedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .allowedString, auxiliaryKey: ._allowedString) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedString, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .string(allowedString)
		}
		if let allowedMoney = try Money(from: _container, forKeyIfPresent: .allowedMoney) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedMoney, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .money(allowedMoney)
		}
		self.allowed = _t_allowed
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_used: UsedX? = nil
		if let usedUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .usedUnsignedInt, auxiliaryKey: ._usedUnsignedInt) {
			if _t_used != nil {
				throw DecodingError.dataCorruptedError(forKey: .usedUnsignedInt, in: _container, debugDescription: "More than one value provided for \"used\"")
			}
			_t_used = .unsignedInt(usedUnsignedInt)
		}
		if let usedMoney = try Money(from: _container, forKeyIfPresent: .usedMoney) {
			if _t_used != nil {
				throw DecodingError.dataCorruptedError(forKey: .usedMoney, in: _container, debugDescription: "More than one value provided for \"used\"")
			}
			_t_used = .money(usedMoney)
		}
		self.used = _t_used
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = allowed {
			switch _enum {
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .allowedUnsignedInt, auxiliaryKey: ._allowedUnsignedInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .allowedString, auxiliaryKey: ._allowedString)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .allowedMoney)
			}
		}
		try type.encode(on: &_container, forKey: .type)
		if let _enum = used {
			switch _enum {
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .usedUnsignedInt, auxiliaryKey: ._usedUnsignedInt)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .usedMoney)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EligibilityResponseInsuranceBenefitBalanceFinancial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allowed == _other.allowed
		    && type == _other.type
		    && used == _other.used
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allowed)
		hasher.combine(type)
		hasher.combine(used)
	}
}
