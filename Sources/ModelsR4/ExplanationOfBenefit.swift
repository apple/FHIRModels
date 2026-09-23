//
//  ExplanationOfBenefit.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit)
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
 Explanation of Benefit resource.
 
 This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account
 balance information, for informing the subscriber of the benefits provided.
 */
public struct ExplanationOfBenefit: DomainResource {
	
	public static let resourceType: ResourceType = .explanationOfBenefit
	
	/// Details of the event
	public var accident: ExplanationOfBenefitAccident?
	
	/// Insurer added line items
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Header-level adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Balance by Benefit Category
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// When the benefits are applicable
	public var benefitPeriod: Period?
	
	/// Relevant time frame for the claim
	public var billablePeriod: Period?
	
	/// Care Team members
	public var careTeam: [ExplanationOfBenefitCareTeam]?
	
	/// Claim reference
	public var claim: Reference?
	
	/// Claim response reference
	public var claimResponse: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Pertinent diagnosis information
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Author of the claim
	public var enterer: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Printed reference or actual form
	public var form: Attachment?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Funds reserved status
	public var fundsReserve: CodeableConcept?
	
	/// For whom to reserve funds
	public var fundsReserveRequested: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for the resource
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Patient insurance information
	public var insurance: [ExplanationOfBenefitInsurance]
	
	/// Party responsible for reimbursement
	public var insurer: Reference
	
	/// Product or service provided
	public var item: [ExplanationOfBenefitItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Original prescription if superceded by fulfiller
	public var originalPrescription: Reference?
	
	/// The outcome of the claim, predetermination, or preauthorization processing.
	public var outcome: FHIRPrimitive<ClaimProcessingCodes>
	
	/// The recipient of the products and services
	public var patient: Reference
	
	/// Recipient of benefits payable
	public var payee: ExplanationOfBenefitPayee?
	
	/// Payment Details
	public var payment: ExplanationOfBenefitPayment?
	
	/// Preauthorization reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Preauthorization in-effect period
	public var preAuthRefPeriod: [Period]?
	
	/// Precedence (primary, secondary, etc.)
	public var precedence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Prescription authorizing services or products
	public var prescription: Reference?
	
	/// Desired processing urgency
	public var priority: CodeableConcept?
	
	/// Clinical procedures performed
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Note concerning adjudication
	public var processNote: [ExplanationOfBenefitProcessNote]?
	
	/// Party responsible for the claim
	public var provider: Reference
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Prior or corollary claims
	public var related: [ExplanationOfBenefitRelated]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ExplanationOfBenefitStatus>
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// Supporting information
	public var supportingInfo: [ExplanationOfBenefitSupportingInfo]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Adjudication totals
	public var total: [ExplanationOfBenefitTotal]?
	
	/// Category or discipline
	public var type: CodeableConcept
	
	/// A code to indicate whether the nature of the request is: to request adjudication of products and services
	/// previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the
	/// non-binding adjudication of the listed products and services which could be provided in the future.
	public var use: FHIRPrimitive<Use>
	
	/// Designated initializer
	public init(
		accident: ExplanationOfBenefitAccident? = nil,
		addItem: [ExplanationOfBenefitAddItem]? = nil,
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		benefitBalance: [ExplanationOfBenefitBenefitBalance]? = nil,
		benefitPeriod: Period? = nil,
		billablePeriod: Period? = nil,
		careTeam: [ExplanationOfBenefitCareTeam]? = nil,
		claim: Reference? = nil,
		claimResponse: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		diagnosis: [ExplanationOfBenefitDiagnosis]? = nil,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		enterer: Reference? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		form: Attachment? = nil,
		formCode: CodeableConcept? = nil,
		fundsReserve: CodeableConcept? = nil,
		fundsReserveRequested: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [ExplanationOfBenefitInsurance],
		insurer: Reference,
		item: [ExplanationOfBenefitItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		originalPrescription: Reference? = nil,
		outcome: FHIRPrimitive<ClaimProcessingCodes>,
		patient: Reference,
		payee: ExplanationOfBenefitPayee? = nil,
		payment: ExplanationOfBenefitPayment? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
		preAuthRefPeriod: [Period]? = nil,
		precedence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		prescription: Reference? = nil,
		priority: CodeableConcept? = nil,
		procedure: [ExplanationOfBenefitProcedure]? = nil,
		processNote: [ExplanationOfBenefitProcessNote]? = nil,
		provider: Reference,
		referral: Reference? = nil,
		related: [ExplanationOfBenefitRelated]? = nil,
		status: FHIRPrimitive<ExplanationOfBenefitStatus>,
		subType: CodeableConcept? = nil,
		supportingInfo: [ExplanationOfBenefitSupportingInfo]? = nil,
		text: Narrative? = nil,
		total: [ExplanationOfBenefitTotal]? = nil,
		type: CodeableConcept,
		use: FHIRPrimitive<Use>
	) {
		self.accident = accident
		self.addItem = addItem
		self.adjudication = adjudication
		self.benefitBalance = benefitBalance
		self.benefitPeriod = benefitPeriod
		self.billablePeriod = billablePeriod
		self.careTeam = careTeam
		self.claim = claim
		self.claimResponse = claimResponse
		self.contained = contained
		self.created = created
		self.diagnosis = diagnosis
		self.disposition = disposition
		self.enterer = enterer
		self.`extension` = `extension`
		self.facility = facility
		self.form = form
		self.formCode = formCode
		self.fundsReserve = fundsReserve
		self.fundsReserveRequested = fundsReserveRequested
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.originalPrescription = originalPrescription
		self.outcome = outcome
		self.patient = patient
		self.payee = payee
		self.payment = payment
		self.preAuthRef = preAuthRef
		self.preAuthRefPeriod = preAuthRefPeriod
		self.precedence = precedence
		self.prescription = prescription
		self.priority = priority
		self.procedure = procedure
		self.processNote = processNote
		self.provider = provider
		self.referral = referral
		self.related = related
		self.status = status
		self.subType = subType
		self.supportingInfo = supportingInfo
		self.text = text
		self.total = total
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accident
		case addItem
		case adjudication
		case benefitBalance
		case benefitPeriod
		case billablePeriod
		case careTeam
		case claim
		case claimResponse
		case contained
		case created; case _created
		case diagnosis
		case disposition; case _disposition
		case enterer
		case `extension` = "extension"
		case facility
		case form
		case formCode
		case fundsReserve
		case fundsReserveRequested
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
		case originalPrescription
		case outcome; case _outcome
		case patient
		case payee
		case payment
		case preAuthRef; case _preAuthRef
		case preAuthRefPeriod
		case precedence; case _precedence
		case prescription
		case priority
		case procedure
		case processNote
		case provider
		case referral
		case related
		case status; case _status
		case subType
		case supportingInfo
		case text
		case total
		case type
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accident = try ExplanationOfBenefitAccident(from: _container, forKeyIfPresent: .accident)
		self.addItem = try [ExplanationOfBenefitAddItem](from: _container, forKeyIfPresent: .addItem)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.benefitBalance = try [ExplanationOfBenefitBenefitBalance](from: _container, forKeyIfPresent: .benefitBalance)
		self.benefitPeriod = try Period(from: _container, forKeyIfPresent: .benefitPeriod)
		self.billablePeriod = try Period(from: _container, forKeyIfPresent: .billablePeriod)
		self.careTeam = try [ExplanationOfBenefitCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ExplanationOfBenefitDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.form = try Attachment(from: _container, forKeyIfPresent: .form)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.fundsReserveRequested = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserveRequested)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [ExplanationOfBenefitInsurance](from: _container, forKey: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.item = try [ExplanationOfBenefitItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.outcome = try FHIRPrimitive<ClaimProcessingCodes>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.payee = try ExplanationOfBenefitPayee(from: _container, forKeyIfPresent: .payee)
		self.payment = try ExplanationOfBenefitPayment(from: _container, forKeyIfPresent: .payment)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.preAuthRefPeriod = try [Period](from: _container, forKeyIfPresent: .preAuthRefPeriod)
		self.precedence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .precedence, auxiliaryKey: ._precedence)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.procedure = try [ExplanationOfBenefitProcedure](from: _container, forKeyIfPresent: .procedure)
		self.processNote = try [ExplanationOfBenefitProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.provider = try Reference(from: _container, forKey: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.related = try [ExplanationOfBenefitRelated](from: _container, forKeyIfPresent: .related)
		self.status = try FHIRPrimitive<ExplanationOfBenefitStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.supportingInfo = try [ExplanationOfBenefitSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.total = try [ExplanationOfBenefitTotal](from: _container, forKeyIfPresent: .total)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKey: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accident?.encode(on: &_container, forKey: .accident)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try benefitBalance?.encode(on: &_container, forKey: .benefitBalance)
		try benefitPeriod?.encode(on: &_container, forKey: .benefitPeriod)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try claim?.encode(on: &_container, forKey: .claim)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try form?.encode(on: &_container, forKey: .form)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try fundsReserveRequested?.encode(on: &_container, forKey: .fundsReserveRequested)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try patient.encode(on: &_container, forKey: .patient)
		try payee?.encode(on: &_container, forKey: .payee)
		try payment?.encode(on: &_container, forKey: .payment)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try preAuthRefPeriod?.encode(on: &_container, forKey: .preAuthRefPeriod)
		try precedence?.encode(on: &_container, forKey: .precedence, auxiliaryKey: ._precedence)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try priority?.encode(on: &_container, forKey: .priority)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try provider.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try related?.encode(on: &_container, forKey: .related)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
		try total?.encode(on: &_container, forKey: .total)
		try type.encode(on: &_container, forKey: .type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 Details of the event.
 
 Details of a accident which resulted in injuries which required the products and services listed in the claim.
 */
public struct ExplanationOfBenefitAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case reference(Reference)
	}
	
	/// When the incident occurred
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Where the event occurred
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The nature of the accident
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: LocationX? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case locationAddress
		case locationReference
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Self._decodeLocation(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = location {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .locationAddress)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .locationReference)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeLocation(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> LocationX? {
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		return _t_location
	}
}

/**
 Insurer added line items.
 
 The first-tier service adjudications for payor added product or service lines.
 */
public struct ExplanationOfBenefitAddItem: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Anatomical location
	public var bodySite: CodeableConcept?
	
	/// Insurer added line items
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Detail sequence number
	public var detailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Item sequence number
	public var itemSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Place of service or where product was supplied
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Authorized providers
	public var provider: [Reference]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Subdetail sequence number
	public var subDetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Anatomical sub-location
	public var subSite: [CodeableConcept]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		bodySite: CodeableConcept? = nil,
		detail: [ExplanationOfBenefitAddItemDetail]? = nil,
		detailSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		itemSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		location: LocationX? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept,
		programCode: [CodeableConcept]? = nil,
		provider: [Reference]? = nil,
		quantity: Quantity? = nil,
		serviced: ServicedX? = nil,
		subDetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		subSite: [CodeableConcept]? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.bodySite = bodySite
		self.detail = detail
		self.detailSequence = detailSequence
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.itemSequence = itemSequence
		self.location = location
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.productOrService = productOrService
		self.programCode = programCode
		self.provider = provider
		self.quantity = quantity
		self.serviced = serviced
		self.subDetailSequence = subDetailSequence
		self.subSite = subSite
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case bodySite
		case detail
		case detailSequence; case _detailSequence
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case itemSequence; case _itemSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case productOrService
		case programCode
		case provider
		case quantity
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subDetailSequence; case _subDetailSequence
		case subSite
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.detail = try [ExplanationOfBenefitAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.detailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.itemSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .itemSequence, auxiliaryKey: ._itemSequence)
		self.location = try Self._decodeLocation(from: _container)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.provider = try [Reference](from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.serviced = try Self._decodeServiced(from: _container)
		self.subDetailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try detail?.encode(on: &_container, forKey: .detail)
		try detailSequence?.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try itemSequence?.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		if let _enum = location {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .locationAddress)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .locationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .locationReference)
		}
		}
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try provider?.encode(on: &_container, forKey: .provider)
		try quantity?.encode(on: &_container, forKey: .quantity)
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
		try subDetailSequence?.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		try subSite?.encode(on: &_container, forKey: .subSite)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeLocation(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> LocationX? {
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			_t_location = .address(locationAddress)
		}
		if let locationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .locationCodeableConcept) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .codeableConcept(locationCodeableConcept)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		return _t_location
	}
	
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
 Insurer added line items.
 
 The second-tier service adjudications for payor added services.
 */
public struct ExplanationOfBenefitAddItemDetail: BackboneElement {
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Insurer added line items
	public var subDetail: [ExplanationOfBenefitAddItemDetailSubDetail]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept,
		quantity: Quantity? = nil,
		subDetail: [ExplanationOfBenefitAddItemDetailSubDetail]? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.productOrService = productOrService
		self.quantity = quantity
		self.subDetail = subDetail
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case productOrService
		case quantity
		case subDetail
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.subDetail = try [ExplanationOfBenefitAddItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Insurer added line items.
 
 The third-tier service adjudications for payor added services.
 */
public struct ExplanationOfBenefitAddItemDetailSubDetail: BackboneElement {
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept,
		quantity: Quantity? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.productOrService = productOrService
		self.quantity = quantity
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case productOrService
		case quantity
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Balance by Benefit Category.
 */
public struct ExplanationOfBenefitBenefitBalance: BackboneElement {
	
	/// Benefit classification
	public var category: CodeableConcept
	
	/// Description of the benefit or services covered
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Excluded from the plan
	public var excluded: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Benefit Summary
	public var financial: [ExplanationOfBenefitBenefitBalanceFinancial]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Short name for the benefit
	public var name: FHIRPrimitive<FHIRString>?
	
	/// In or out of network
	public var network: CodeableConcept?
	
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
		financial: [ExplanationOfBenefitBenefitBalanceFinancial]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		network: CodeableConcept? = nil,
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
		self.financial = try [ExplanationOfBenefitBenefitBalanceFinancial](from: _container, forKeyIfPresent: .financial)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
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
		try term?.encode(on: &_container, forKey: .term)
		try unit?.encode(on: &_container, forKey: .unit)
	}
}

/**
 Benefit Summary.
 
 Benefits Used to date.
 */
public struct ExplanationOfBenefitBenefitBalanceFinancial: BackboneElement {
	
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

/**
 Care Team members.
 
 The members of the team who provided the products and services.
 */
public struct ExplanationOfBenefitCareTeam: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Practitioner or organization
	public var provider: Reference
	
	/// Practitioner credential or specialization
	public var qualification: CodeableConcept?
	
	/// Indicator of the lead practitioner
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Function within the team
	public var role: CodeableConcept?
	
	/// Order of care team
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference,
		qualification: CodeableConcept? = nil,
		responsible: FHIRPrimitive<FHIRBool>? = nil,
		role: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.provider = provider
		self.qualification = qualification
		self.responsible = responsible
		self.role = role
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case provider
		case qualification
		case responsible; case _responsible
		case role
		case sequence; case _sequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.provider = try Reference(from: _container, forKey: .provider)
		self.qualification = try CodeableConcept(from: _container, forKeyIfPresent: .qualification)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try provider.encode(on: &_container, forKey: .provider)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Pertinent diagnosis information.
 
 Information about diagnoses relevant to the claim items.
 */
public struct ExplanationOfBenefitDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Nature of illness or problem
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Present on admission
	public var onAdmission: CodeableConcept?
	
	/// Package billing code
	public var packageCode: CodeableConcept?
	
	/// Diagnosis instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		diagnosis: DiagnosisX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onAdmission: CodeableConcept? = nil,
		packageCode: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.diagnosis = diagnosis
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
		case diagnosisCodeableConcept
		case diagnosisReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onAdmission
		case packageCode
		case sequence; case _sequence
		case type
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
		self.onAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .onAdmission)
		self.packageCode = try CodeableConcept(from: _container, forKeyIfPresent: .packageCode)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch diagnosis {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .diagnosisCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .diagnosisReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onAdmission?.encode(on: &_container, forKey: .onAdmission)
		try packageCode?.encode(on: &_container, forKey: .packageCode)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDiagnosis(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DiagnosisX {
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
		guard let _t_diagnosis else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.diagnosisReference)
			throw DecodingError.valueNotFound(DiagnosisX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"diagnosis\" but have none"))
		}
		return _t_diagnosis
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services specified on the claim.
 */
public struct ExplanationOfBenefitInsurance: BackboneElement {
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Coverage to be used for adjudication
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Prior authorization reference number
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case `extension` = "extension"
		case focal; case _focal
		case id; case _id
		case modifierExtension
		case preAuthRef; case _preAuthRef
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .focal, auxiliaryKey: ._focal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coverage.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focal.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
	}
}

/**
 Product or service provided.
 
 A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups
 of sub-details.
 */
public struct ExplanationOfBenefitItem: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Anatomical location
	public var bodySite: CodeableConcept?
	
	/// Applicable care team members
	public var careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Additional items
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Applicable diagnoses
	public var diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Encounters related to this billed item
	public var encounter: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Place of service or where product was supplied
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable procedures
	public var procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Anatomical sub-location
	public var subSite: [CodeableConcept]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		bodySite: CodeableConcept? = nil,
		careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		category: CodeableConcept? = nil,
		detail: [ExplanationOfBenefitItemDetail]? = nil,
		diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		encounter: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		location: LocationX? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		serviced: ServicedX? = nil,
		subSite: [CodeableConcept]? = nil,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.bodySite = bodySite
		self.careTeamSequence = careTeamSequence
		self.category = category
		self.detail = detail
		self.diagnosisSequence = diagnosisSequence
		self.encounter = encounter
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.informationSequence = informationSequence
		self.location = location
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.procedureSequence = procedureSequence
		self.productOrService = productOrService
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.serviced = serviced
		self.subSite = subSite
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case bodySite
		case careTeamSequence; case _careTeamSequence
		case category
		case detail
		case diagnosisSequence; case _diagnosisSequence
		case encounter
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case informationSequence; case _informationSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case procedureSequence; case _procedureSequence
		case productOrService
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subSite
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.careTeamSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
		self.location = try Self._decodeLocation(from: _container)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.procedureSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureSequence, auxiliaryKey: ._procedureSequence)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.serviced = try Self._decodeServiced(from: _container)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try careTeamSequence?.encode(on: &_container, forKey: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisSequence?.encode(on: &_container, forKey: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
		if let _enum = location {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .locationAddress)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .locationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .locationReference)
		}
		}
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try procedureSequence?.encode(on: &_container, forKey: .procedureSequence, auxiliaryKey: ._procedureSequence)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
		try subSite?.encode(on: &_container, forKey: .subSite)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeLocation(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> LocationX? {
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			_t_location = .address(locationAddress)
		}
		if let locationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .locationCodeableConcept) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .codeableConcept(locationCodeableConcept)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		return _t_location
	}
	
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
 Adjudication details.
 
 If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a
 simple product or service then this is the result of the adjudication of this item.
 */
public struct ExplanationOfBenefitItemAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Money?
	
	/// Type of adjudication information
	public var category: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Explanation of adjudication outcome
	public var reason: CodeableConcept?
	
	/// Non-monitary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		amount: Money? = nil,
		category: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.amount = amount
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case category
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try category.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Additional items.
 
 Second-tier of goods and services.
 */
public struct ExplanationOfBenefitItemDetail: BackboneElement {
	
	/// Detail level adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Product or service provided
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Additional items
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		subDetail: [ExplanationOfBenefitItemDetailSubDetail]? = nil,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.productOrService = productOrService
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.subDetail = subDetail
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case category
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case productOrService
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case subDetail
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.subDetail = try [ExplanationOfBenefitItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Additional items.
 
 Third-tier of goods and services.
 */
public struct ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	
	/// Subdetail level adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Product or service provided
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.productOrService = productOrService
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case category
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case productOrService
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Recipient of benefits payable.
 
 The party to be reimbursed for cost of the products and services according to the terms of the policy.
 */
public struct ExplanationOfBenefitPayee: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Recipient reference
	public var party: Reference?
	
	/// Category of recipient
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case party
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try party?.encode(on: &_container, forKey: .party)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Payment Details.
 
 Payment details for the adjudication of the claim.
 */
public struct ExplanationOfBenefitPayment: BackboneElement {
	
	/// Payment adjustment for non-claim issues
	public var adjustment: Money?
	
	/// Explanation for the variance
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment
	public var amount: Money?
	
	/// Expected date of payment
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the payment
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Partial or complete payment
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		adjustment: Money? = nil,
		adjustmentReason: CodeableConcept? = nil,
		amount: Money? = nil,
		date: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.adjustment = adjustment
		self.adjustmentReason = adjustmentReason
		self.amount = amount
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjustment
		case adjustmentReason
		case amount
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjustment = try Money(from: _container, forKeyIfPresent: .adjustment)
		self.adjustmentReason = try CodeableConcept(from: _container, forKeyIfPresent: .adjustmentReason)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjustment?.encode(on: &_container, forKey: .adjustment)
		try adjustmentReason?.encode(on: &_container, forKey: .adjustmentReason)
		try amount?.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Clinical procedures performed.
 
 Procedures performed on the patient relevant to the billing items with the claim.
 */
public struct ExplanationOfBenefitProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specific clinical procedure
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
	/// Procedure instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Category of Procedure
	public var type: [CodeableConcept]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: ProcedureX,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil,
		udi: [Reference]? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.sequence = sequence
		self.type = type
		self.udi = udi
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case procedureCodeableConcept
		case procedureReference
		case sequence; case _sequence
		case type
		case udi
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.procedure = try Self._decodeProcedure(from: _container)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch procedure {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .procedureCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .procedureReference)
		}
		
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeProcedure(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ProcedureX {
		var _t_procedure: ProcedureX? = nil
		if let procedureCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .procedureCodeableConcept) {
			_t_procedure = .codeableConcept(procedureCodeableConcept)
		}
		if let procedureReference = try Reference(from: _container, forKeyIfPresent: .procedureReference) {
			if _t_procedure != nil {
				throw DecodingError.dataCorruptedError(forKey: .procedureReference, in: _container, debugDescription: "More than one value provided for \"procedure\"")
			}
			_t_procedure = .reference(procedureReference)
		}
		guard let _t_procedure else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.procedureReference)
			throw DecodingError.valueNotFound(ProcedureX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"procedure\" but have none"))
		}
		return _t_procedure
	}
}

/**
 Note concerning adjudication.
 
 A note that describes or explains adjudication results in a human readable form.
 */
public struct ExplanationOfBenefitProcessNote: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Language of the text
	public var language: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Note instance identifier
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The business purpose of the note text.
	public var type: FHIRPrimitive<NoteType>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<NoteType>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.number = number
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case language
		case modifierExtension
		case number; case _number
		case text; case _text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<NoteType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Prior or corollary claims.
 
 Other claims which are related to this claim such as prior submissions or claims for related services or for the same
 event.
 */
public struct ExplanationOfBenefitRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// File or case reference
	public var reference: Identifier?
	
	/// How the reference claim is related
	public var relationship: CodeableConcept?
	
	/// Designated initializer
	public init(
		claim: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Identifier? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.claim = claim
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case claim
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference
		case relationship
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try Identifier(from: _container, forKeyIfPresent: .reference)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try claim?.encode(on: &_container, forKey: .claim)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference?.encode(on: &_container, forKey: .reference)
		try relationship?.encode(on: &_container, forKey: .relationship)
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
public struct ExplanationOfBenefitSupportingInfo: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Classification of the supplied information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Explanation for the information
	public var reason: Coding?
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Data to be provided
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		category: CodeableConcept,
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: Coding? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		timing: TimingX? = nil,
		value: ValueX? = nil
	) {
		self.category = category
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.sequence = sequence
		self.timing = timing
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case sequence; case _sequence
		case timingDate; case _timingDate
		case timingPeriod
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueQuantity
		case valueReference
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try Coding(from: _container, forKeyIfPresent: .reason)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.timing = try Self._decodeTiming(from: _container)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		if let _enum = timing {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .timingDate, auxiliaryKey: ._timingDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timingPeriod)
		}
		}
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimingX? {
		var _t_timing: TimingX? = nil
		if let timingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .timingDate, auxiliaryKey: ._timingDate) {
			_t_timing = .date(timingDate)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		return _t_timing
	}
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		return _t_value
	}
}

/**
 Adjudication totals.
 
 Categorized monetary totals for the adjudication.
 */
public struct ExplanationOfBenefitTotal: BackboneElement {
	
	/// Financial total for the category
	public var amount: Money
	
	/// Type of adjudication information
	public var category: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: Money,
		category: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case category
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKey: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount.encode(on: &_container, forKey: .amount)
		try category.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
