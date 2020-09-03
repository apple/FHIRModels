//
//  CoverageEligibilityResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse)
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
 CoverageEligibilityResponse resource.
 
 This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
 */
open class CoverageEligibilityResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .coverageEligibilityResponse }
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// Business Identifier for coverage eligiblity request
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Code to specify whether requesting: prior authorization requirements for some service categories or billing
	/// codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or
	/// validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
	public var purpose: [FHIRPrimitive<EligibilityResponsePurpose>]
	
	/// Intended recipient of products and services
	public var patient: Reference
	
	/// Estimated date or dates of service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Party responsible for the request
	public var requestor: Reference?
	
	/// Eligibility request reference
	public var request: Reference
	
	/// The outcome of the request processing.
	public var outcome: FHIRPrimitive<ClaimProcessingCodes>
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Coverage issuer
	public var insurer: Reference
	
	/// Patient insurance information
	public var insurance: [CoverageEligibilityResponseInsurance]?
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Printed form identifier
	public var form: CodeableConcept?
	
	/// Processing errors
	public var error: [CoverageEligibilityResponseError]?
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, insurer: Reference, outcome: FHIRPrimitive<ClaimProcessingCodes>, patient: Reference, purpose: [FHIRPrimitive<EligibilityResponsePurpose>], request: Reference, status: FHIRPrimitive<FinancialResourceStatusCodes>) {
		self.created = created
		self.insurer = insurer
		self.outcome = outcome
		self.patient = patient
		self.purpose = purpose
		self.request = request
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							error: [CoverageEligibilityResponseError]? = nil,
							`extension`: [Extension]? = nil,
							form: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							insurance: [CoverageEligibilityResponseInsurance]? = nil,
							insurer: Reference,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: FHIRPrimitive<ClaimProcessingCodes>,
							patient: Reference,
							preAuthRef: FHIRPrimitive<FHIRString>? = nil,
							purpose: [FHIRPrimitive<EligibilityResponsePurpose>],
							request: Reference,
							requestor: Reference? = nil,
							serviced: ServicedX? = nil,
							status: FHIRPrimitive<FinancialResourceStatusCodes>,
							text: Narrative? = nil)
	{
		self.init(created: created, insurer: insurer, outcome: outcome, patient: patient, purpose: purpose, request: request, status: status)
		self.contained = contained
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
		self.requestor = requestor
		self.serviced = serviced
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case identifier
		case insurance
		case insurer
		case outcome; case _outcome
		case patient
		case preAuthRef; case _preAuthRef
		case purpose; case _purpose
		case request
		case requestor
		case servicedDate; case _servicedDate
		case servicedPeriod
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [CoverageEligibilityResponseError](from: _container, forKeyIfPresent: .error)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [CoverageEligibilityResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.outcome = try FHIRPrimitive<ClaimProcessingCodes>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.preAuthRef = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.purpose = try [FHIRPrimitive<EligibilityResponsePurpose>](from: _container, forKey: .purpose, auxiliaryKey: ._purpose)
		self.request = try Reference(from: _container, forKey: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedDate, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		self.serviced = _t_serviced
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try patient.encode(on: &_container, forKey: .patient)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try purpose.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try request.encode(on: &_container, forKey: .request)
		try requestor?.encode(on: &_container, forKey: .requestor)
		if let _enum = serviced {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .servicedPeriod)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityResponse else {
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
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && outcome == _other.outcome
		    && patient == _other.patient
		    && preAuthRef == _other.preAuthRef
		    && purpose == _other.purpose
		    && request == _other.request
		    && requestor == _other.requestor
		    && serviced == _other.serviced
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(outcome)
		hasher.combine(patient)
		hasher.combine(preAuthRef)
		hasher.combine(purpose)
		hasher.combine(request)
		hasher.combine(requestor)
		hasher.combine(serviced)
		hasher.combine(status)
	}
}

/**
 Processing errors.
 
 Errors encountered during the processing of the request.
 */
open class CoverageEligibilityResponseError: BackboneElement {
	
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
		guard let _other = _other as? CoverageEligibilityResponseError else {
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
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services.
 */
open class CoverageEligibilityResponseInsurance: BackboneElement {
	
	/// Insurance information
	public var coverage: Reference
	
	/// Coverage inforce indicator
	public var inforce: FHIRPrimitive<FHIRBool>?
	
	/// When the benefits are applicable
	public var benefitPeriod: Period?
	
	/// Benefits and authorization details
	public var item: [CoverageEligibilityResponseInsuranceItem]?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference) {
		self.coverage = coverage
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							benefitPeriod: Period? = nil,
							coverage: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							inforce: FHIRPrimitive<FHIRBool>? = nil,
							item: [CoverageEligibilityResponseInsuranceItem]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(coverage: coverage)
		self.benefitPeriod = benefitPeriod
		self.`extension` = `extension`
		self.id = id
		self.inforce = inforce
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case benefitPeriod
		case coverage
		case inforce; case _inforce
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.benefitPeriod = try Period(from: _container, forKeyIfPresent: .benefitPeriod)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.inforce = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inforce, auxiliaryKey: ._inforce)
		self.item = try [CoverageEligibilityResponseInsuranceItem](from: _container, forKeyIfPresent: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try benefitPeriod?.encode(on: &_container, forKey: .benefitPeriod)
		try coverage.encode(on: &_container, forKey: .coverage)
		try inforce?.encode(on: &_container, forKey: .inforce, auxiliaryKey: ._inforce)
		try item?.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityResponseInsurance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return benefitPeriod == _other.benefitPeriod
		    && coverage == _other.coverage
		    && inforce == _other.inforce
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(benefitPeriod)
		hasher.combine(coverage)
		hasher.combine(inforce)
		hasher.combine(item)
	}
}

/**
 Benefits and authorization details.
 
 Benefits and optionally current balances, and authorization details by category or service.
 */
open class CoverageEligibilityResponseInsuranceItem: BackboneElement {
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Performing practitioner
	public var provider: Reference?
	
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
	public var benefit: [CoverageEligibilityResponseInsuranceItemBenefit]?
	
	/// Authorization required flag
	public var authorizationRequired: FHIRPrimitive<FHIRBool>?
	
	/// Type of required supporting materials
	public var authorizationSupporting: [CodeableConcept]?
	
	/// Preauthorization requirements endpoint
	public var authorizationUrl: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authorizationRequired: FHIRPrimitive<FHIRBool>? = nil,
							authorizationSupporting: [CodeableConcept]? = nil,
							authorizationUrl: FHIRPrimitive<FHIRURI>? = nil,
							benefit: [CoverageEligibilityResponseInsuranceItemBenefit]? = nil,
							category: CodeableConcept? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							excluded: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							network: CodeableConcept? = nil,
							productOrService: CodeableConcept? = nil,
							provider: Reference? = nil,
							term: CodeableConcept? = nil,
							unit: CodeableConcept? = nil)
	{
		self.init()
		self.authorizationRequired = authorizationRequired
		self.authorizationSupporting = authorizationSupporting
		self.authorizationUrl = authorizationUrl
		self.benefit = benefit
		self.category = category
		self.description_fhir = description_fhir
		self.excluded = excluded
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.network = network
		self.productOrService = productOrService
		self.provider = provider
		self.term = term
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorizationRequired; case _authorizationRequired
		case authorizationSupporting
		case authorizationUrl; case _authorizationUrl
		case benefit
		case category
		case description_fhir = "description"; case _description_fhir = "_description"
		case excluded; case _excluded
		case modifier
		case name; case _name
		case network
		case productOrService
		case provider
		case term
		case unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorizationRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .authorizationRequired, auxiliaryKey: ._authorizationRequired)
		self.authorizationSupporting = try [CodeableConcept](from: _container, forKeyIfPresent: .authorizationSupporting)
		self.authorizationUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .authorizationUrl, auxiliaryKey: ._authorizationUrl)
		self.benefit = try [CoverageEligibilityResponseInsuranceItemBenefit](from: _container, forKeyIfPresent: .benefit)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.excluded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excluded, auxiliaryKey: ._excluded)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorizationRequired?.encode(on: &_container, forKey: .authorizationRequired, auxiliaryKey: ._authorizationRequired)
		try authorizationSupporting?.encode(on: &_container, forKey: .authorizationSupporting)
		try authorizationUrl?.encode(on: &_container, forKey: .authorizationUrl, auxiliaryKey: ._authorizationUrl)
		try benefit?.encode(on: &_container, forKey: .benefit)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try excluded?.encode(on: &_container, forKey: .excluded, auxiliaryKey: ._excluded)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try provider?.encode(on: &_container, forKey: .provider)
		try term?.encode(on: &_container, forKey: .term)
		try unit?.encode(on: &_container, forKey: .unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityResponseInsuranceItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authorizationRequired == _other.authorizationRequired
		    && authorizationSupporting == _other.authorizationSupporting
		    && authorizationUrl == _other.authorizationUrl
		    && benefit == _other.benefit
		    && category == _other.category
		    && description_fhir == _other.description_fhir
		    && excluded == _other.excluded
		    && modifier == _other.modifier
		    && name == _other.name
		    && network == _other.network
		    && productOrService == _other.productOrService
		    && provider == _other.provider
		    && term == _other.term
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorizationRequired)
		hasher.combine(authorizationSupporting)
		hasher.combine(authorizationUrl)
		hasher.combine(benefit)
		hasher.combine(category)
		hasher.combine(description_fhir)
		hasher.combine(excluded)
		hasher.combine(modifier)
		hasher.combine(name)
		hasher.combine(network)
		hasher.combine(productOrService)
		hasher.combine(provider)
		hasher.combine(term)
		hasher.combine(unit)
	}
}

/**
 Benefit Summary.
 
 Benefits used to date.
 */
open class CoverageEligibilityResponseInsuranceItemBenefit: BackboneElement {
	
	/// All possible types for "allowed[x]"
	public enum AllowedX: Hashable {
		case money(Money)
		case string(FHIRPrimitive<FHIRString>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "used[x]"
	public enum UsedX: Hashable {
		case money(Money)
		case string(FHIRPrimitive<FHIRString>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// Benefit classification
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
		case usedString; case _usedString
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
		if let usedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usedString, auxiliaryKey: ._usedString) {
			if _t_used != nil {
				throw DecodingError.dataCorruptedError(forKey: .usedString, in: _container, debugDescription: "More than one value provided for \"used\"")
			}
			_t_used = .string(usedString)
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
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .usedString, auxiliaryKey: ._usedString)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .usedMoney)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityResponseInsuranceItemBenefit else {
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
