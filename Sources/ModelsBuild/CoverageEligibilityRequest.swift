//
//  CoverageEligibilityRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest)
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
 CoverageEligibilityRequest resource.
 
 The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond,
 in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-
 force and optionally to provide the insurance details of the policy.
 */
open class CoverageEligibilityRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .coverageEligibilityRequest }
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// Business Identifier for coverage eligiblity request
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Desired processing priority
	public var priority: CodeableConcept?
	
	/// Code to specify whether requesting: prior authorization requirements for some service categories or billing
	/// codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or
	/// validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
	public var purpose: [FHIRPrimitive<EligibilityRequestPurpose>]
	
	/// Intended recipient of products and services
	public var patient: Reference
	
	/// Estimated date or dates of service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Author
	public var enterer: Reference?
	
	/// Party responsible for the request
	public var provider: Reference?
	
	/// Coverage issuer
	public var insurer: Reference
	
	/// Servicing facility
	public var facility: Reference?
	
	/// Supporting information
	public var supportingInfo: [CoverageEligibilityRequestSupportingInfo]?
	
	/// Patient insurance information
	public var insurance: [CoverageEligibilityRequestInsurance]?
	
	/// Item to be evaluated for eligibiity
	public var item: [CoverageEligibilityRequestItem]?
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, insurer: Reference, patient: Reference, purpose: [FHIRPrimitive<EligibilityRequestPurpose>], status: FHIRPrimitive<FinancialResourceStatusCodes>) {
		self.created = created
		self.insurer = insurer
		self.patient = patient
		self.purpose = purpose
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>,
							enterer: Reference? = nil,
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
							supportingInfo: [CoverageEligibilityRequestSupportingInfo]? = nil,
							text: Narrative? = nil)
	{
		self.init(created: created, insurer: insurer, patient: patient, purpose: purpose, status: status)
		self.contained = contained
		self.enterer = enterer
		self.`extension` = `extension`
		self.facility = facility
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.priority = priority
		self.provider = provider
		self.serviced = serviced
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case enterer
		case facility
		case identifier
		case insurance
		case insurer
		case item
		case patient
		case priority
		case provider
		case purpose; case _purpose
		case servicedDate; case _servicedDate
		case servicedPeriod
		case status; case _status
		case supportingInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [CoverageEligibilityRequestInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.item = try [CoverageEligibilityRequestItem](from: _container, forKeyIfPresent: .item)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.purpose = try [FHIRPrimitive<EligibilityRequestPurpose>](from: _container, forKey: .purpose, auxiliaryKey: ._purpose)
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
		self.supportingInfo = try [CoverageEligibilityRequestSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try facility?.encode(on: &_container, forKey: .facility)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
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
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return created == _other.created
		    && enterer == _other.enterer
		    && facility == _other.facility
		    && identifier == _other.identifier
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && patient == _other.patient
		    && priority == _other.priority
		    && provider == _other.provider
		    && purpose == _other.purpose
		    && serviced == _other.serviced
		    && status == _other.status
		    && supportingInfo == _other.supportingInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(enterer)
		hasher.combine(facility)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(patient)
		hasher.combine(priority)
		hasher.combine(provider)
		hasher.combine(purpose)
		hasher.combine(serviced)
		hasher.combine(status)
		hasher.combine(supportingInfo)
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services.
 */
open class CoverageEligibilityRequestInsurance: BackboneElement {
	
	/// Applicable coverage
	public var focal: FHIRPrimitive<FHIRBool>?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional provider contract number
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference) {
		self.coverage = coverage
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							businessArrangement: FHIRPrimitive<FHIRString>? = nil,
							coverage: Reference,
							`extension`: [Extension]? = nil,
							focal: FHIRPrimitive<FHIRBool>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(coverage: coverage)
		self.businessArrangement = businessArrangement
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case coverage
		case focal; case _focal
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .focal, auxiliaryKey: ._focal)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try coverage.encode(on: &_container, forKey: .coverage)
		try focal?.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityRequestInsurance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return businessArrangement == _other.businessArrangement
		    && coverage == _other.coverage
		    && focal == _other.focal
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(coverage)
		hasher.combine(focal)
	}
}

/**
 Item to be evaluated for eligibiity.
 
 Service categories or billable services for which benefit details and/or an authorization prior to service delivery may
 be required by the payor.
 */
open class CoverageEligibilityRequestItem: BackboneElement {
	
	/// Applicable exception or supporting information
	public var supportingInfoSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Perfoming practitioner
	public var provider: Reference?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Servicing facility
	public var facility: Reference?
	
	/// Applicable diagnosis
	public var diagnosis: [CoverageEligibilityRequestItemDiagnosis]?
	
	/// Product or service details
	public var detail: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							unitPrice: Money? = nil)
	{
		self.init()
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
		case facility
		case modifier
		case productOrService
		case provider
		case quantity
		case supportingInfoSequence; case _supportingInfoSequence
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [Reference](from: _container, forKeyIfPresent: .detail)
		self.diagnosis = try [CoverageEligibilityRequestItemDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.supportingInfoSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .supportingInfoSequence, auxiliaryKey: ._supportingInfoSequence)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try facility?.encode(on: &_container, forKey: .facility)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try provider?.encode(on: &_container, forKey: .provider)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try supportingInfoSequence?.encode(on: &_container, forKey: .supportingInfoSequence, auxiliaryKey: ._supportingInfoSequence)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityRequestItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && detail == _other.detail
		    && diagnosis == _other.diagnosis
		    && facility == _other.facility
		    && modifier == _other.modifier
		    && productOrService == _other.productOrService
		    && provider == _other.provider
		    && quantity == _other.quantity
		    && supportingInfoSequence == _other.supportingInfoSequence
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(diagnosis)
		hasher.combine(facility)
		hasher.combine(modifier)
		hasher.combine(productOrService)
		hasher.combine(provider)
		hasher.combine(quantity)
		hasher.combine(supportingInfoSequence)
		hasher.combine(unitPrice)
	}
}

/**
 Applicable diagnosis.
 
 Patient diagnosis for which care is sought.
 */
open class CoverageEligibilityRequestItemDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Nature of illness or problem
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							diagnosis: DiagnosisX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_diagnosis: DiagnosisX? = nil
		if let diagnosisCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisCodeableConcept) {
			if _t_diagnosis != nil {
				throw DecodingError.dataCorruptedError(forKey: .diagnosisCodeableConcept, in: _container, debugDescription: "More than one value provided for \"diagnosis\"")
			}
			_t_diagnosis = .codeableConcept(diagnosisCodeableConcept)
		}
		if let diagnosisReference = try Reference(from: _container, forKeyIfPresent: .diagnosisReference) {
			if _t_diagnosis != nil {
				throw DecodingError.dataCorruptedError(forKey: .diagnosisReference, in: _container, debugDescription: "More than one value provided for \"diagnosis\"")
			}
			_t_diagnosis = .reference(diagnosisReference)
		}
		self.diagnosis = _t_diagnosis
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = diagnosis {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .diagnosisCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .diagnosisReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityRequestItemDiagnosis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return diagnosis == _other.diagnosis
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(diagnosis)
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
open class CoverageEligibilityRequestSupportingInfo: BackboneElement {
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Data to be provided
	public var information: Reference
	
	/// Applies to all items
	public var appliesToAll: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(information: Reference, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.information = information
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							appliesToAll: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							information: Reference,
							modifierExtension: [Extension]? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(information: information, sequence: sequence)
		self.appliesToAll = appliesToAll
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case appliesToAll; case _appliesToAll
		case information
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.appliesToAll = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .appliesToAll, auxiliaryKey: ._appliesToAll)
		self.information = try Reference(from: _container, forKey: .information)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try appliesToAll?.encode(on: &_container, forKey: .appliesToAll, auxiliaryKey: ._appliesToAll)
		try information.encode(on: &_container, forKey: .information)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageEligibilityRequestSupportingInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return appliesToAll == _other.appliesToAll
		    && information == _other.information
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(appliesToAll)
		hasher.combine(information)
		hasher.combine(sequence)
	}
}
