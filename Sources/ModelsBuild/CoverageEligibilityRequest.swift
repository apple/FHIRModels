//
//  CoverageEligibilityRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest)
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
 CoverageEligibilityRequest resource.
 
 The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond,
 in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-
 force and optionally to provide the insurance details of the policy.
 */
public struct CoverageEligibilityRequest: DomainResource {
	
	public static let resourceType: ResourceType = .coverageEligibilityRequest
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Author
	public var enterer: Reference?
	
	/// Event information
	public var event: [CoverageEligibilityRequestEvent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing facility
	public var facility: Reference?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for coverage eligiblity request
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Patient insurance information
	public var insurance: [CoverageEligibilityRequestInsurance]?
	
	/// Coverage issuer
	public var insurer: Reference
	
	/// Item to be evaluated for eligibiity
	public var item: [CoverageEligibilityRequestItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Intended recipient of products and services
	public var patient: Reference
	
	/// Desired processing priority
	public var priority: CodeableConcept?
	
	/// Party responsible for the request
	public var provider: Reference?
	
	/// Code to specify whether requesting: prior authorization requirements for some service categories or billing
	/// codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or
	/// validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
	public var purpose: [FHIRPrimitive<EligibilityRequestPurpose>]
	
	/// Estimated date or dates of service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Reason for status change
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Supporting information
	public var supportingInfo: [CoverageEligibilityRequestSupportingInfo]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		enterer: Reference? = nil,
		event: [CoverageEligibilityRequestEvent]? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [CoverageEligibilityRequestInsurance]? = nil,
		insurer: Reference,
		item: [CoverageEligibilityRequestItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference,
		priority: CodeableConcept? = nil,
		provider: Reference? = nil,
		purpose: [FHIRPrimitive<EligibilityRequestPurpose>],
		serviced: ServicedX? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		statusReason: FHIRPrimitive<FHIRString>? = nil,
		supportingInfo: [CoverageEligibilityRequestSupportingInfo]? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.created = created
		self.enterer = enterer
		self.event = event
		self.`extension` = `extension`
		self.facility = facility
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.priority = priority
		self.provider = provider
		self.purpose = purpose
		self.serviced = serviced
		self.status = status
		self.statusReason = statusReason
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case created; case _created
		case enterer
		case event
		case `extension` = "extension"
		case facility
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case priority
		case provider
		case purpose; case _purpose
		case servicedDate; case _servicedDate
		case servicedPeriod
		case status; case _status
		case statusReason; case _statusReason
		case supportingInfo
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.event = try [CoverageEligibilityRequestEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [CoverageEligibilityRequestInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.item = try [CoverageEligibilityRequestItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.purpose = try [FHIRPrimitive<EligibilityRequestPurpose>](from: _container, forKey: .purpose, auxiliaryKey: ._purpose)
		self.serviced = try Self._decodeServiced(from: _container)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.supportingInfo = try [CoverageEligibilityRequestSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
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
		try enterer?.encode(on: &_container, forKey: .enterer)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient.encode(on: &_container, forKey: .patient)
		try priority?.encode(on: &_container, forKey: .priority)
		try provider?.encode(on: &_container, forKey: .provider)
		try purpose.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
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
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
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
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
public struct CoverageEligibilityRequestEvent: BackboneElement {
	
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
public struct CoverageEligibilityRequestInsurance: BackboneElement {
	
	/// Additional provider contract number
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Applicable coverage
	public var focal: FHIRPrimitive<FHIRBool>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		businessArrangement: FHIRPrimitive<FHIRString>? = nil,
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.businessArrangement = businessArrangement
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case coverage
		case `extension` = "extension"
		case focal; case _focal
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .focal, auxiliaryKey: ._focal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try coverage.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focal?.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Item to be evaluated for eligibiity.
 
 Service categories or billable services for which benefit details and/or an authorization prior to service delivery may
 be required by the payor.
 */
public struct CoverageEligibilityRequestItem: BackboneElement {
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Product or service details
	public var detail: [Reference]?
	
	/// Applicable diagnosis
	public var diagnosis: [CoverageEligibilityRequestItemDiagnosis]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing facility
	public var facility: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// Perfoming practitioner
	public var provider: Reference?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Applicable exception or supporting information
	public var supportingInfoSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		detail: [Reference]? = nil,
		diagnosis: [CoverageEligibilityRequestItemDiagnosis]? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		productOrService: CodeableConcept? = nil,
		provider: Reference? = nil,
		quantity: Quantity? = nil,
		supportingInfoSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		unitPrice: Money? = nil
	) {
		self.category = category
		self.detail = detail
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.facility = facility
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.productOrService = productOrService
		self.provider = provider
		self.quantity = quantity
		self.supportingInfoSequence = supportingInfoSequence
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case detail
		case diagnosis
		case `extension` = "extension"
		case facility
		case id; case _id
		case modifier
		case modifierExtension
		case productOrService
		case provider
		case quantity
		case supportingInfoSequence; case _supportingInfoSequence
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [Reference](from: _container, forKeyIfPresent: .detail)
		self.diagnosis = try [CoverageEligibilityRequestItemDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.supportingInfoSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .supportingInfoSequence, auxiliaryKey: ._supportingInfoSequence)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try provider?.encode(on: &_container, forKey: .provider)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try supportingInfoSequence?.encode(on: &_container, forKey: .supportingInfoSequence, auxiliaryKey: ._supportingInfoSequence)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Applicable diagnosis.
 
 Patient diagnosis for which care is sought.
 */
public struct CoverageEligibilityRequestItemDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Nature of illness or problem
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		diagnosis: DiagnosisX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.diagnosis = try Self._decodeDiagnosis(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = diagnosis {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .diagnosisCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .diagnosisReference)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDiagnosis(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DiagnosisX? {
		var _t_diagnosis: DiagnosisX? = nil
		if let diagnosisCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisCodeableConcept) {
			_t_diagnosis = .codeableConcept(diagnosisCodeableConcept)
		}
		if let diagnosisReference = try Reference(from: _container, forKeyIfPresent: .diagnosisReference) {
			if _t_diagnosis != nil {
				throw DecodingError.dataCorruptedError(forKey: .diagnosisReference, in: _container, debugDescription: "More than one value provided for \"diagnosis\"")
			}
			_t_diagnosis = .reference(diagnosisReference)
		}
		return _t_diagnosis
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
public struct CoverageEligibilityRequestSupportingInfo: BackboneElement {
	
	/// Applies to all items
	public var appliesToAll: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Data to be provided
	public var information: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		appliesToAll: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		information: Reference,
		modifierExtension: [Extension]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.appliesToAll = appliesToAll
		self.`extension` = `extension`
		self.id = id
		self.information = information
		self.modifierExtension = modifierExtension
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case appliesToAll; case _appliesToAll
		case `extension` = "extension"
		case id; case _id
		case information
		case modifierExtension
		case sequence; case _sequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.appliesToAll = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .appliesToAll, auxiliaryKey: ._appliesToAll)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.information = try Reference(from: _container, forKey: .information)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try appliesToAll?.encode(on: &_container, forKey: .appliesToAll, auxiliaryKey: ._appliesToAll)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try information.encode(on: &_container, forKey: .information)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}
