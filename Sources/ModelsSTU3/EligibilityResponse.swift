//
//  EligibilityResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/EligibilityResponse)
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
 EligibilityResponse resource.
 
 This resource provides eligibility and plan details from the processing of an Eligibility resource.
 */
public struct EligibilityResponse: DomainResource {
	
	public static let resourceType: ResourceType = .eligibilityResponse
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Processing errors
	public var error: [EligibilityResponseError]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Coverage inforce indicator
	public var inforce: FHIRPrimitive<FHIRBool>?
	
	/// Details by insurance coverage
	public var insurance: [EligibilityResponseInsurance]?
	
	/// Insurer issuing the coverage
	public var insurer: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// Eligibility reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case contained
		case created; case _created
		case disposition; case _disposition
		case error
		case `extension` = "extension"
		case form
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case inforce; case _inforce
		case insurance
		case insurer
		case language; case _language
		case meta
		case modifierExtension
		case outcome
		case request
		case requestOrganization
		case requestProvider
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [EligibilityResponseError](from: _container, forKeyIfPresent: .error)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.inforce = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inforce, auxiliaryKey: ._inforce)
		self.insurance = try [EligibilityResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try inforce?.encode(on: &_container, forKey: .inforce, auxiliaryKey: ._inforce)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Processing errors.
 
 Mutually exclusive with Services Provided (Item).
 */
public struct EligibilityResponseError: BackboneElement {
	
	/// Error code detailing processing issues
	public var code: CodeableConcept
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Details by insurance coverage.
 
 The insurer may provide both the details for the requested coverage as well as details for additional coverages known
 to the insurer.
 */
public struct EligibilityResponseInsurance: BackboneElement {
	
	/// Benefits by Category
	public var benefitBalance: [EligibilityResponseInsuranceBenefitBalance]?
	
	/// Contract details
	public var contract: Reference?
	
	/// Updated Coverage details
	public var coverage: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		benefitBalance: [EligibilityResponseInsuranceBenefitBalance]? = nil,
		contract: Reference? = nil,
		coverage: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.benefitBalance = try [EligibilityResponseInsuranceBenefitBalance](from: _container, forKeyIfPresent: .benefitBalance)
		self.contract = try Reference(from: _container, forKeyIfPresent: .contract)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try benefitBalance?.encode(on: &_container, forKey: .benefitBalance)
		try contract?.encode(on: &_container, forKey: .contract)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Benefits by Category.
 
 Benefits and optionally current balances by Category.
 */
public struct EligibilityResponseInsuranceBenefitBalance: BackboneElement {
	
	/// Type of services covered
	public var category: CodeableConcept
	
	/// Description of the benefit or services covered
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Excluded from the plan
	public var excluded: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Benefit Summary
	public var financial: [EligibilityResponseInsuranceBenefitBalanceFinancial]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Short name for the benefit
	public var name: FHIRPrimitive<FHIRString>?
	
	/// In or out of network
	public var network: CodeableConcept?
	
	/// Detailed services covered within the type
	public var subCategory: CodeableConcept?
	
	/// Annual or lifetime
	public var term: CodeableConcept?
	
	/// Individual or family
	public var unit: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		unit: CodeableConcept? = nil
	) {
		self.category = category
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
		case `extension` = "extension"
		case financial
		case id; case _id
		case modifierExtension
		case name; case _name
		case network
		case subCategory
		case term
		case unit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.excluded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excluded, auxiliaryKey: ._excluded)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.financial = try [EligibilityResponseInsuranceBenefitBalanceFinancial](from: _container, forKeyIfPresent: .financial)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
		self.subCategory = try CodeableConcept(from: _container, forKeyIfPresent: .subCategory)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category.encode(on: &_container, forKey: .category)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try excluded?.encode(on: &_container, forKey: .excluded, auxiliaryKey: ._excluded)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try financial?.encode(on: &_container, forKey: .financial)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try subCategory?.encode(on: &_container, forKey: .subCategory)
		try term?.encode(on: &_container, forKey: .term)
		try unit?.encode(on: &_container, forKey: .unit)
	}
}

/**
 Benefit Summary.
 
 Benefits Used to date.
 */
public struct EligibilityResponseInsuranceBenefitBalanceFinancial: BackboneElement {
	
	/// All possible types for "allowed[x]"
	public enum AllowedX: Equatable, Hashable, Sendable {
		indirect case money(Money)
		case string(FHIRPrimitive<FHIRString>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "used[x]"
	public enum UsedX: Equatable, Hashable, Sendable {
		indirect case money(Money)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// Benefits allowed
	/// One of `allowed[x]`
	public var allowed: AllowedX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Deductable, visits, benefit amount
	public var type: CodeableConcept
	
	/// Benefits used
	/// One of `used[x]`
	public var used: UsedX?
	
	/// Designated initializer
	public init(
		allowed: AllowedX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		used: UsedX? = nil
	) {
		self.allowed = allowed
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.used = used
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowedMoney
		case allowedString; case _allowedString
		case allowedUnsignedInt; case _allowedUnsignedInt
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case usedMoney
		case usedUnsignedInt; case _usedUnsignedInt
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allowed = try Self._decodeAllowed(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.used = try Self._decodeUsed(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = allowed {
		switch _enum {
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .allowedMoney)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .allowedString, auxiliaryKey: ._allowedString)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .allowedUnsignedInt, auxiliaryKey: ._allowedUnsignedInt)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		if let _enum = used {
		switch _enum {
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .usedMoney)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .usedUnsignedInt, auxiliaryKey: ._usedUnsignedInt)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAllowed(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AllowedX? {
		var _t_allowed: AllowedX? = nil
		if let allowedMoney = try Money(from: _container, forKeyIfPresent: .allowedMoney) {
			_t_allowed = .money(allowedMoney)
		}
		if let allowedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .allowedString, auxiliaryKey: ._allowedString) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedString, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .string(allowedString)
		}
		if let allowedUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .allowedUnsignedInt, auxiliaryKey: ._allowedUnsignedInt) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedUnsignedInt, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .unsignedInt(allowedUnsignedInt)
		}
		return _t_allowed
	}
	
	private static func _decodeUsed(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> UsedX? {
		var _t_used: UsedX? = nil
		if let usedMoney = try Money(from: _container, forKeyIfPresent: .usedMoney) {
			_t_used = .money(usedMoney)
		}
		if let usedUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .usedUnsignedInt, auxiliaryKey: ._usedUnsignedInt) {
			if _t_used != nil {
				throw DecodingError.dataCorruptedError(forKey: .usedUnsignedInt, in: _container, debugDescription: "More than one value provided for \"used\"")
			}
			_t_used = .unsignedInt(usedUnsignedInt)
		}
		return _t_used
	}
}
