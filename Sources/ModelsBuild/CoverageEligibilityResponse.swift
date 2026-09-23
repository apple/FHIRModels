//
//  CoverageEligibilityResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse)
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
 CoverageEligibilityResponse resource.
 
 This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
 */
public struct CoverageEligibilityResponse: DomainResource {
	
	public static let resourceType: ResourceType = .coverageEligibilityResponse
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Processing errors
	public var error: [CoverageEligibilityResponseError]?
	
	/// Event information
	public var event: [CoverageEligibilityResponseEvent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed form identifier
	public var form: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for coverage eligiblity request
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Patient insurance information
	public var insurance: [CoverageEligibilityResponseInsurance]?
	
	/// Coverage issuer
	public var insurer: Reference
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The outcome of the request processing.
	public var outcome: FHIRPrimitive<EligibilityOutcome>
	
	/// Intended recipient of products and services
	public var patient: Reference
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Code to specify whether requesting: prior authorization requirements for some service categories or billing
	/// codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or
	/// validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
	public var purpose: [FHIRPrimitive<EligibilityResponsePurpose>]
	
	/// Eligibility request reference
	public var request: Reference?
	
	/// Party responsible for the request
	public var requestor: Reference?
	
	/// Estimated date or dates of service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Reason for status change
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		error: [CoverageEligibilityResponseError]? = nil,
		event: [CoverageEligibilityResponseEvent]? = nil,
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
		outcome: FHIRPrimitive<EligibilityOutcome>,
		patient: Reference,
		preAuthRef: FHIRPrimitive<FHIRString>? = nil,
		purpose: [FHIRPrimitive<EligibilityResponsePurpose>],
		request: Reference? = nil,
		requestor: Reference? = nil,
		serviced: ServicedX? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		statusReason: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.created = created
		self.disposition = disposition
		self.error = error
		self.event = event
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.insurer = insurer
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.patient = patient
		self.preAuthRef = preAuthRef
		self.purpose = purpose
		self.request = request
		self.requestor = requestor
		self.serviced = serviced
		self.status = status
		self.statusReason = statusReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case created; case _created
		case disposition; case _disposition
		case error
		case event
		case `extension` = "extension"
		case form
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case insurer
		case language; case _language
		case meta
		case modifierExtension
		case outcome; case _outcome
		case patient
		case preAuthRef; case _preAuthRef
		case purpose; case _purpose
		case request
		case requestor
		case servicedDate; case _servicedDate
		case servicedPeriod
		case status; case _status
		case statusReason; case _statusReason
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [CoverageEligibilityResponseError](from: _container, forKeyIfPresent: .error)
		self.event = try [CoverageEligibilityResponseEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [CoverageEligibilityResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try FHIRPrimitive<EligibilityOutcome>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.preAuthRef = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.purpose = try [FHIRPrimitive<EligibilityResponsePurpose>](from: _container, forKey: .purpose, auxiliaryKey: ._purpose)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		self.serviced = try Self._decodeServiced(from: _container)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try patient.encode(on: &_container, forKey: .patient)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try purpose.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try request?.encode(on: &_container, forKey: .request)
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
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeServiced(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ServicedX? {
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		return _t_serviced
	}
}

/**
 Processing errors.
 
 Errors encountered during the processing of the request.
 */
public struct CoverageEligibilityResponseError: BackboneElement {
	
	/// Error code detailing processing issues
	public var code: CodeableConcept
	
	/// FHIRPath of element(s) related to issue
	public var expression: [FHIRPrimitive<FHIRString>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		expression: [FHIRPrimitive<FHIRString>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case expression; case _expression
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
		self.expression = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
public struct CoverageEligibilityResponseEvent: BackboneElement {
	
	/// All possible types for "when[x]"
	public enum WhenX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specific event
	public var type: CodeableConcept
	
	/// Occurance date or period
	/// One of `when[x]`
	public var when: WhenX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		when: WhenX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.when = when
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case whenDateTime; case _whenDateTime
		case whenPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.when = try Self._decodeWhen(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch when {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .whenDateTime, auxiliaryKey: ._whenDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .whenPeriod)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeWhen(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> WhenX {
		var _t_when: WhenX? = nil
		if let whenDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenDateTime, auxiliaryKey: ._whenDateTime) {
			_t_when = .dateTime(whenDateTime)
		}
		if let whenPeriod = try Period(from: _container, forKeyIfPresent: .whenPeriod) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenPeriod, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .period(whenPeriod)
		}
		guard let _t_when else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.whenPeriod)
			throw DecodingError.valueNotFound(WhenX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"when\" but have none"))
		}
		return _t_when
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services.
 */
public struct CoverageEligibilityResponseInsurance: BackboneElement {
	
	/// When the benefits are applicable
	public var benefitPeriod: Period?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Coverage inforce indicator
	public var inforce: FHIRPrimitive<FHIRBool>?
	
	/// Benefits and authorization details
	public var item: [CoverageEligibilityResponseInsuranceItem]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		benefitPeriod: Period? = nil,
		coverage: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inforce: FHIRPrimitive<FHIRBool>? = nil,
		item: [CoverageEligibilityResponseInsuranceItem]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.benefitPeriod = benefitPeriod
		self.coverage = coverage
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
		case `extension` = "extension"
		case id; case _id
		case inforce; case _inforce
		case item
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.benefitPeriod = try Period(from: _container, forKeyIfPresent: .benefitPeriod)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.inforce = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inforce, auxiliaryKey: ._inforce)
		self.item = try [CoverageEligibilityResponseInsuranceItem](from: _container, forKeyIfPresent: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try benefitPeriod?.encode(on: &_container, forKey: .benefitPeriod)
		try coverage.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try inforce?.encode(on: &_container, forKey: .inforce, auxiliaryKey: ._inforce)
		try item?.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Benefits and authorization details.
 
 Benefits and optionally current balances, and authorization details by category or service.
 */
public struct CoverageEligibilityResponseInsuranceItem: BackboneElement {
	
	/// Authorization required flag
	public var authorizationRequired: FHIRPrimitive<FHIRBool>?
	
	/// Type of required supporting materials
	public var authorizationSupporting: [CodeableConcept]?
	
	/// Preauthorization requirements endpoint
	public var authorizationUrl: FHIRPrimitive<FHIRURI>?
	
	/// Benefit Summary
	public var benefit: [CoverageEligibilityResponseInsuranceItemBenefit]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Description of the benefit or services covered
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Excluded from the plan
	public var excluded: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Short name for the benefit
	public var name: FHIRPrimitive<FHIRString>?
	
	/// In or out of network
	public var network: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// Performing practitioner
	public var provider: Reference?
	
	/// Annual or lifetime
	public var term: CodeableConcept?
	
	/// Individual or family
	public var unit: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		unit: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifier
		case modifierExtension
		case name; case _name
		case network
		case productOrService
		case provider
		case term
		case unit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authorizationRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .authorizationRequired, auxiliaryKey: ._authorizationRequired)
		self.authorizationSupporting = try [CodeableConcept](from: _container, forKeyIfPresent: .authorizationSupporting)
		self.authorizationUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .authorizationUrl, auxiliaryKey: ._authorizationUrl)
		self.benefit = try [CoverageEligibilityResponseInsuranceItemBenefit](from: _container, forKeyIfPresent: .benefit)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.excluded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excluded, auxiliaryKey: ._excluded)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authorizationRequired?.encode(on: &_container, forKey: .authorizationRequired, auxiliaryKey: ._authorizationRequired)
		try authorizationSupporting?.encode(on: &_container, forKey: .authorizationSupporting)
		try authorizationUrl?.encode(on: &_container, forKey: .authorizationUrl, auxiliaryKey: ._authorizationUrl)
		try benefit?.encode(on: &_container, forKey: .benefit)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try excluded?.encode(on: &_container, forKey: .excluded, auxiliaryKey: ._excluded)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try provider?.encode(on: &_container, forKey: .provider)
		try term?.encode(on: &_container, forKey: .term)
		try unit?.encode(on: &_container, forKey: .unit)
	}
}

/**
 Benefit Summary.
 
 Benefits used to date.
 */
public struct CoverageEligibilityResponseInsuranceItemBenefit: BackboneElement {
	
	/// All possible types for "allowed[x]"
	public enum AllowedX: Equatable, Hashable, Sendable {
		indirect case money(Money)
		case string(FHIRPrimitive<FHIRString>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "used[x]"
	public enum UsedX: Equatable, Hashable, Sendable {
		indirect case money(Money)
		case string(FHIRPrimitive<FHIRString>)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// Benefits allowed
	/// One of `allowed[x]`
	public var allowed: AllowedX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Benefit classification
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
		case usedString; case _usedString
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
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .usedString, auxiliaryKey: ._usedString)
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
		if let usedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usedString, auxiliaryKey: ._usedString) {
			if _t_used != nil {
				throw DecodingError.dataCorruptedError(forKey: .usedString, in: _container, debugDescription: "More than one value provided for \"used\"")
			}
			_t_used = .string(usedString)
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
