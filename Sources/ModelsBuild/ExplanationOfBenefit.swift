//
//  ExplanationOfBenefit.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit)
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
	
	/// Result of the adjudication
	public var decision: CodeableConcept?
	
	/// Pertinent diagnosis information
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Package billing code
	public var diagnosisRelatedGroup: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Author of the claim
	public var enterer: Reference?
	
	/// Event information
	public var event: [ExplanationOfBenefitEvent]?
	
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
	public var insurance: [ExplanationOfBenefitInsurance]?
	
	/// Party responsible for reimbursement
	public var insurer: Reference?
	
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
	public var outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>
	
	/// Paid by the patient
	public var patientPaid: Money?
	
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
	public var provider: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Prior or corollary claims
	public var related: [ExplanationOfBenefitRelated]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ExplanationOfBenefitStatus>
	
	/// Reason for status change
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// The recipient(s) of the products and services
	public var subject: Reference
	
	/// Supporting information
	public var supportingInfo: [ExplanationOfBenefitSupportingInfo]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Adjudication totals
	public var total: [ExplanationOfBenefitTotal]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Category or discipline
	public var type: CodeableConcept
	
	/// A code to indicate whether the nature of the request is: Claim - A request to an Insurer to adjudicate the
	/// supplied charges for health care goods and services under the identified policy and to pay the determined
	/// Benefit amount, if any; Preauthorization - A request to an Insurer to adjudicate the supplied proposed future
	/// charges for health care goods and services under the identified policy and to approve the services and provide
	/// the expected benefit amounts and potentially to reserve funds to pay the benefits when Claims for the indicated
	/// services are later submitted; or, Pre-determination - A request to an Insurer to adjudicate the supplied 'what
	/// if' charges for health care goods and services under the identified policy and report back what the Benefit
	/// payable would be had the services actually been provided.
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
		decision: CodeableConcept? = nil,
		diagnosis: [ExplanationOfBenefitDiagnosis]? = nil,
		diagnosisRelatedGroup: CodeableConcept? = nil,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		encounter: [Reference]? = nil,
		enterer: Reference? = nil,
		event: [ExplanationOfBenefitEvent]? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		form: Attachment? = nil,
		formCode: CodeableConcept? = nil,
		fundsReserve: CodeableConcept? = nil,
		fundsReserveRequested: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [ExplanationOfBenefitInsurance]? = nil,
		insurer: Reference? = nil,
		item: [ExplanationOfBenefitItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		originalPrescription: Reference? = nil,
		outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>,
		patientPaid: Money? = nil,
		payee: ExplanationOfBenefitPayee? = nil,
		payment: ExplanationOfBenefitPayment? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
		preAuthRefPeriod: [Period]? = nil,
		precedence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		prescription: Reference? = nil,
		priority: CodeableConcept? = nil,
		procedure: [ExplanationOfBenefitProcedure]? = nil,
		processNote: [ExplanationOfBenefitProcessNote]? = nil,
		provider: Reference? = nil,
		referral: Reference? = nil,
		related: [ExplanationOfBenefitRelated]? = nil,
		status: FHIRPrimitive<ExplanationOfBenefitStatus>,
		statusReason: FHIRPrimitive<FHIRString>? = nil,
		subType: CodeableConcept? = nil,
		subject: Reference,
		supportingInfo: [ExplanationOfBenefitSupportingInfo]? = nil,
		text: Narrative? = nil,
		total: [ExplanationOfBenefitTotal]? = nil,
		traceNumber: [Identifier]? = nil,
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
		self.decision = decision
		self.diagnosis = diagnosis
		self.diagnosisRelatedGroup = diagnosisRelatedGroup
		self.disposition = disposition
		self.encounter = encounter
		self.enterer = enterer
		self.event = event
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
		self.patientPaid = patientPaid
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
		self.statusReason = statusReason
		self.subType = subType
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
		self.total = total
		self.traceNumber = traceNumber
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
		case decision
		case diagnosis
		case diagnosisRelatedGroup
		case disposition; case _disposition
		case encounter
		case enterer
		case event
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
		case patientPaid
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
		case statusReason; case _statusReason
		case subType
		case subject
		case supportingInfo
		case text
		case total
		case traceNumber
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
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.diagnosis = try [ExplanationOfBenefitDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.diagnosisRelatedGroup = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisRelatedGroup)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.event = try [ExplanationOfBenefitEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.form = try Attachment(from: _container, forKeyIfPresent: .form)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.fundsReserveRequested = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserveRequested)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [ExplanationOfBenefitInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ExplanationOfBenefitItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.outcome = try FHIRPrimitive<ClaimProcessingOutcomeCodes>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.payee = try ExplanationOfBenefitPayee(from: _container, forKeyIfPresent: .payee)
		self.payment = try ExplanationOfBenefitPayment(from: _container, forKeyIfPresent: .payment)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.preAuthRefPeriod = try [Period](from: _container, forKeyIfPresent: .preAuthRefPeriod)
		self.precedence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .precedence, auxiliaryKey: ._precedence)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.procedure = try [ExplanationOfBenefitProcedure](from: _container, forKeyIfPresent: .procedure)
		self.processNote = try [ExplanationOfBenefitProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.related = try [ExplanationOfBenefitRelated](from: _container, forKeyIfPresent: .related)
		self.status = try FHIRPrimitive<ExplanationOfBenefitStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [ExplanationOfBenefitSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.total = try [ExplanationOfBenefitTotal](from: _container, forKeyIfPresent: .total)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
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
		try decision?.encode(on: &_container, forKey: .decision)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try diagnosisRelatedGroup?.encode(on: &_container, forKey: .diagnosisRelatedGroup)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try form?.encode(on: &_container, forKey: .form)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try fundsReserveRequested?.encode(on: &_container, forKey: .fundsReserveRequested)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try payee?.encode(on: &_container, forKey: .payee)
		try payment?.encode(on: &_container, forKey: .payment)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try preAuthRefPeriod?.encode(on: &_container, forKey: .preAuthRefPeriod)
		try precedence?.encode(on: &_container, forKey: .precedence, auxiliaryKey: ._precedence)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try priority?.encode(on: &_container, forKey: .priority)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try provider?.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try related?.encode(on: &_container, forKey: .related)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try subType?.encode(on: &_container, forKey: .subType)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
		try total?.encode(on: &_container, forKey: .total)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
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
 
 The first-tier service adjudications for payer added product or service lines.
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
	public var bodySite: [ExplanationOfBenefitAddItemBodySite]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
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
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
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
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Authorized providers
	public var provider: [Reference]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Request or Referral for Service
	public var request: [Reference]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Additem level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Subdetail sequence number
	public var subDetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// The recipient of the products and services
	public var subject: Reference?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		bodySite: [ExplanationOfBenefitAddItemBodySite]? = nil,
		category: CodeableConcept? = nil,
		detail: [ExplanationOfBenefitAddItemDetail]? = nil,
		detailSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		itemSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		location: LocationX? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		provider: [Reference]? = nil,
		quantity: Quantity? = nil,
		request: [Reference]? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ExplanationOfBenefitItemReviewOutcome? = nil,
		serviced: ServicedX? = nil,
		subDetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		subject: Reference? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		unitPrice: Money? = nil
	) {
		self.adjudication = adjudication
		self.bodySite = bodySite
		self.category = category
		self.detail = detail
		self.detailSequence = detailSequence
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.informationSequence = informationSequence
		self.itemSequence = itemSequence
		self.location = location
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.provider = provider
		self.quantity = quantity
		self.request = request
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.serviced = serviced
		self.subDetailSequence = subDetailSequence
		self.subject = subject
		self.tax = tax
		self.traceNumber = traceNumber
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case bodySite
		case category
		case detail
		case detailSequence; case _detailSequence
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case informationSequence; case _informationSequence
		case itemSequence; case _itemSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case modifierExtension
		case net
		case noteNumber; case _noteNumber
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case programCode
		case provider
		case quantity
		case request
		case revenue
		case reviewOutcome
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subDetailSequence; case _subDetailSequence
		case subject
		case tax
		case traceNumber
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try [ExplanationOfBenefitAddItemBodySite](from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.detailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
		self.itemSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .itemSequence, auxiliaryKey: ._itemSequence)
		self.location = try Self._decodeLocation(from: _container)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.provider = try [Reference](from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ExplanationOfBenefitItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.serviced = try Self._decodeServiced(from: _container)
		self.subDetailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try detailSequence?.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
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
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try provider?.encode(on: &_container, forKey: .provider)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try request?.encode(on: &_container, forKey: .request)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
		try subDetailSequence?.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		try subject?.encode(on: &_container, forKey: .subject)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
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
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
public struct ExplanationOfBenefitAddItemBodySite: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Location
	public var site: [CodeableReference]
	
	/// Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		site: [CodeableReference],
		subSite: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.site = site
		self.subSite = subSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case site
		case subSite
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.site = try [CodeableReference](from: _container, forKey: .site)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try site.encode(on: &_container, forKey: .site)
		try subSite?.encode(on: &_container, forKey: .subSite)
	}
}

/**
 Insurer added line items.
 
 The second-tier service adjudications for payer added services.
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
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Additem detail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Insurer added line items
	public var subDetail: [ExplanationOfBenefitAddItemDetailSubDetail]?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
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
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ExplanationOfBenefitItemReviewOutcome? = nil,
		subDetail: [ExplanationOfBenefitAddItemDetailSubDetail]? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
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
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.quantity = quantity
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.subDetail = subDetail
		self.tax = tax
		self.traceNumber = traceNumber
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
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case quantity
		case revenue
		case reviewOutcome
		case subDetail
		case tax
		case traceNumber
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
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ExplanationOfBenefitItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.subDetail = try [ExplanationOfBenefitAddItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
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
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Insurer added line items.
 
 The third-tier service adjudications for payer added services.
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
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Additem subdetail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
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
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ExplanationOfBenefitItemReviewOutcome? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
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
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.quantity = quantity
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.tax = tax
		self.traceNumber = traceNumber
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
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case quantity
		case revenue
		case reviewOutcome
		case tax
		case traceNumber
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
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ExplanationOfBenefitItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
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
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
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
	
	/// Function within the team
	public var role: CodeableConcept?
	
	/// Order of care team
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Practitioner or provider specialization
	public var specialty: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference,
		role: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		specialty: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.provider = provider
		self.role = role
		self.sequence = sequence
		self.specialty = specialty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case provider
		case role
		case sequence; case _sequence
		case specialty
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
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try provider.encode(on: &_container, forKey: .provider)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try specialty?.encode(on: &_container, forKey: .specialty)
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
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onAdmission = onAdmission
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
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
public struct ExplanationOfBenefitEvent: BackboneElement {
	
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
	public var bodySite: [ExplanationOfBenefitItemBodySite]?
	
	/// Applicable care team members
	public var careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Additional items
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Applicable diagnoses
	public var diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Encounters associated with the listed treatments
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
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Applicable procedures
	public var procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Request or Referral for Service
	public var request: [Reference]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// The recipient of the products and services
	public var subject: Reference?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		bodySite: [ExplanationOfBenefitItemBodySite]? = nil,
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
		patientPaid: Money? = nil,
		procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		request: [Reference]? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ExplanationOfBenefitItemReviewOutcome? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		serviced: ServicedX? = nil,
		subject: Reference? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
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
		self.patientPaid = patientPaid
		self.procedureSequence = procedureSequence
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.quantity = quantity
		self.request = request
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.sequence = sequence
		self.serviced = serviced
		self.subject = subject
		self.tax = tax
		self.traceNumber = traceNumber
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
		case patientPaid
		case procedureSequence; case _procedureSequence
		case productOrService
		case productOrServiceEnd
		case programCode
		case quantity
		case request
		case revenue
		case reviewOutcome
		case sequence; case _sequence
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subject
		case tax
		case traceNumber
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try [ExplanationOfBenefitItemBodySite](from: _container, forKeyIfPresent: .bodySite)
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
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.procedureSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureSequence, auxiliaryKey: ._procedureSequence)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ExplanationOfBenefitItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.serviced = try Self._decodeServiced(from: _container)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
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
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try procedureSequence?.encode(on: &_container, forKey: .procedureSequence, auxiliaryKey: ._procedureSequence)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try request?.encode(on: &_container, forKey: .request)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
		try subject?.encode(on: &_container, forKey: .subject)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
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
	
	/// When was adjudication performed
	public var decisionDate: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Non-monitary value
	public var quantity: Quantity?
	
	/// Explanation of adjudication outcome
	public var reason: CodeableConcept?
	
	/// Designated initializer
	public init(
		amount: Money? = nil,
		category: CodeableConcept,
		decisionDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		reason: CodeableConcept? = nil
	) {
		self.amount = amount
		self.category = category
		self.decisionDate = decisionDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case category
		case decisionDate; case _decisionDate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case quantity
		case reason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.decisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .decisionDate, auxiliaryKey: ._decisionDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try category.encode(on: &_container, forKey: .category)
		try decisionDate?.encode(on: &_container, forKey: .decisionDate, auxiliaryKey: ._decisionDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try reason?.encode(on: &_container, forKey: .reason)
	}
}

/**
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
public struct ExplanationOfBenefitItemBodySite: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Location
	public var site: [CodeableReference]
	
	/// Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		site: [CodeableReference],
		subSite: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.site = site
		self.subSite = subSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case site
		case subSite
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.site = try [CodeableReference](from: _container, forKey: .site)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try site.encode(on: &_container, forKey: .site)
		try subSite?.encode(on: &_container, forKey: .subSite)
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
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Detail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Product or service provided
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Additional items
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
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
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ExplanationOfBenefitItemReviewOutcome? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		subDetail: [ExplanationOfBenefitItemDetailSubDetail]? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
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
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.sequence = sequence
		self.subDetail = subDetail
		self.tax = tax
		self.traceNumber = traceNumber
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
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case programCode
		case quantity
		case revenue
		case reviewOutcome
		case sequence; case _sequence
		case subDetail
		case tax
		case traceNumber
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
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ExplanationOfBenefitItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.subDetail = try [ExplanationOfBenefitItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
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
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
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
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Subdetail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Product or service provided
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
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
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ExplanationOfBenefitItemReviewOutcome? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
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
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.sequence = sequence
		self.tax = tax
		self.traceNumber = traceNumber
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
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case programCode
		case quantity
		case revenue
		case reviewOutcome
		case sequence; case _sequence
		case tax
		case traceNumber
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
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ExplanationOfBenefitItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
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
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Adjudication results.
 
 The high-level results of the adjudication if adjudication has been performed.
 */
public struct ExplanationOfBenefitItemReviewOutcome: BackboneElement {
	
	/// Result of the adjudication
	public var decision: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Preauthorization reference effective period
	public var preAuthPeriod: Period?
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Reason for result of the adjudication
	public var reason: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		decision: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		preAuthPeriod: Period? = nil,
		preAuthRef: FHIRPrimitive<FHIRString>? = nil,
		reason: [CodeableConcept]? = nil
	) {
		self.decision = decision
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthPeriod = preAuthPeriod
		self.preAuthRef = preAuthRef
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case decision
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case preAuthPeriod
		case preAuthRef; case _preAuthRef
		case reason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preAuthPeriod = try Period(from: _container, forKeyIfPresent: .preAuthPeriod)
		self.preAuthRef = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try decision?.encode(on: &_container, forKey: .decision)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preAuthPeriod?.encode(on: &_container, forKey: .preAuthPeriod)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try reason?.encode(on: &_container, forKey: .reason)
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
	
	/// Business kind of note
	public var `class`: CodeableConcept?
	
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
	
	/// Note purpose
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`class`: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.`class` = `class`
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
		case `class` = "class"
		case `extension` = "extension"
		case id; case _id
		case language
		case modifierExtension
		case number; case _number
		case text; case _text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`class` = try CodeableConcept(from: _container, forKeyIfPresent: .`class`)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
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
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case age(Age)
		indirect case annotation(Annotation)
		indirect case attachment(Attachment)
		indirect case availability(Availability)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case codeableConcept(CodeableConcept)
		indirect case codeableReference(CodeableReference)
		indirect case coding(Coding)
		indirect case contactDetail(ContactDetail)
		indirect case contactPoint(ContactPoint)
		indirect case count(Count)
		indirect case dataRequirement(DataRequirement)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case distance(Distance)
		indirect case dosage(Dosage)
		indirect case duration(Duration)
		indirect case expression(Expression)
		indirect case extendedContactDetail(ExtendedContactDetail)
		indirect case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		indirect case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case integer64(FHIRInteger64)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case meta(Meta)
		indirect case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		indirect case parameterDefinition(ParameterDefinition)
		indirect case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case ratioRange(RatioRange)
		indirect case reference(Reference)
		indirect case relatedArtifact(RelatedArtifact)
		indirect case sampledData(SampledData)
		indirect case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		indirect case timing(Timing)
		indirect case triggerDefinition(TriggerDefinition)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
		case url(FHIRPrimitive<FHIRURI>)
		indirect case usageContext(UsageContext)
		case uuid(FHIRPrimitive<FHIRURI>)
		indirect case virtualServiceDetail(VirtualServiceDetail)
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
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingTiming
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueAvailability
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCanonical; case _valueCanonical
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCodeableReference
		case valueCoding
		case valueContactDetail
		case valueContactPoint
		case valueCount
		case valueDataRequirement
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueDistance
		case valueDosage
		case valueDuration
		case valueExpression
		case valueExtendedContactDetail
		case valueHumanName
		case valueId; case _valueId
		case valueIdentifier
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueInteger64
		case valueMarkdown; case _valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid; case _valueOid
		case valueParameterDefinition
		case valuePeriod
		case valuePositiveInt; case _valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueRatioRange
		case valueReference
		case valueRelatedArtifact
		case valueSampledData
		case valueSignature
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueTiming
		case valueTriggerDefinition
		case valueUnsignedInt; case _valueUnsignedInt
		case valueUri; case _valueUri
		case valueUrl; case _valueUrl
		case valueUsageContext
		case valueUuid; case _valueUuid
		case valueVirtualServiceDetail
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
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timingPeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .timingTiming)
		}
		}
		if let _enum = value {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .valueAddress)
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .valueAge)
		case .annotation(let _value):
			try _value.encode(on: &_container, forKey: .valueAnnotation)
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .availability(let _value):
			try _value.encode(on: &_container, forKey: .valueAvailability)
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .codeableReference(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableReference)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .contactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueContactDetail)
		case .contactPoint(let _value):
			try _value.encode(on: &_container, forKey: .valueContactPoint)
		case .count(let _value):
			try _value.encode(on: &_container, forKey: .valueCount)
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .valueDataRequirement)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .distance(let _value):
			try _value.encode(on: &_container, forKey: .valueDistance)
		case .dosage(let _value):
			try _value.encode(on: &_container, forKey: .valueDosage)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .valueDuration)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .valueExpression)
		case .extendedContactDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueExtendedContactDetail)
		case .humanName(let _value):
			try _value.encode(on: &_container, forKey: .valueHumanName)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .valueIdentifier)
		case .instant(let _value):
			try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .integer64(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger64)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .meta(let _value):
			try _value.encode(on: &_container, forKey: .valueMeta)
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .valueMoney)
		case .oid(let _value):
			try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
		case .parameterDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueParameterDefinition)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .ratioRange(let _value):
			try _value.encode(on: &_container, forKey: .valueRatioRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .relatedArtifact(let _value):
			try _value.encode(on: &_container, forKey: .valueRelatedArtifact)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .valueSampledData)
		case .signature(let _value):
			try _value.encode(on: &_container, forKey: .valueSignature)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .valueTiming)
		case .triggerDefinition(let _value):
			try _value.encode(on: &_container, forKey: .valueTriggerDefinition)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
		case .usageContext(let _value):
			try _value.encode(on: &_container, forKey: .valueUsageContext)
		case .uuid(let _value):
			try _value.encode(on: &_container, forKey: .valueUuid, auxiliaryKey: ._valueUuid)
		case .virtualServiceDetail(let _value):
			try _value.encode(on: &_container, forKey: .valueVirtualServiceDetail)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimingX? {
		var _t_timing: TimingX? = nil
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			_t_timing = .dateTime(timingDateTime)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		return _t_timing
	}
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			_t_value = .address(valueAddress)
		}
		if let valueAge = try Age(from: _container, forKeyIfPresent: .valueAge) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAge, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .age(valueAge)
		}
		if let valueAnnotation = try Annotation(from: _container, forKeyIfPresent: .valueAnnotation) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAnnotation, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .annotation(valueAnnotation)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueAvailability = try Availability(from: _container, forKeyIfPresent: .valueAvailability) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAvailability, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .availability(valueAvailability)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueCanonical, auxiliaryKey: ._valueCanonical) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCanonical, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .canonical(valueCanonical)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueCodeableReference = try CodeableReference(from: _container, forKeyIfPresent: .valueCodeableReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableReference(valueCodeableReference)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueContactDetail = try ContactDetail(from: _container, forKeyIfPresent: .valueContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactDetail(valueContactDetail)
		}
		if let valueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .valueContactPoint) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactPoint, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactPoint(valueContactPoint)
		}
		if let valueCount = try Count(from: _container, forKeyIfPresent: .valueCount) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCount, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .count(valueCount)
		}
		if let valueDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .valueDataRequirement) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDataRequirement, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dataRequirement(valueDataRequirement)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDosage = try Dosage(from: _container, forKeyIfPresent: .valueDosage) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDosage, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dosage(valueDosage)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valueExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .valueExtendedContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .extendedContactDetail(valueExtendedContactDetail)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .valueInstant, auxiliaryKey: ._valueInstant) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInstant, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .instant(valueInstant)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueInteger64 = try FHIRInteger64(from: _container, forKeyIfPresent: .valueInteger64) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger64, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer64(valueInteger64)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valueParameterDefinition = try ParameterDefinition(from: _container, forKeyIfPresent: .valueParameterDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueParameterDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .parameterDefinition(valueParameterDefinition)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueRatioRange = try RatioRange(from: _container, forKeyIfPresent: .valueRatioRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatioRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratioRange(valueRatioRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueRelatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .valueRelatedArtifact) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelatedArtifact, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relatedArtifact(valueRelatedArtifact)
		}
		if let valueSampledData = try SampledData(from: _container, forKeyIfPresent: .valueSampledData) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSampledData, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .sampledData(valueSampledData)
		}
		if let valueSignature = try Signature(from: _container, forKeyIfPresent: .valueSignature) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSignature, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .signature(valueSignature)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .valueTriggerDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .triggerDefinition(valueTriggerDefinition)
		}
		if let valueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .unsignedInt(valueUnsignedInt)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUrl, auxiliaryKey: ._valueUrl) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUrl, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .url(valueUrl)
		}
		if let valueUsageContext = try UsageContext(from: _container, forKeyIfPresent: .valueUsageContext) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUsageContext, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .usageContext(valueUsageContext)
		}
		if let valueUuid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUuid, auxiliaryKey: ._valueUuid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUuid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uuid(valueUuid)
		}
		if let valueVirtualServiceDetail = try VirtualServiceDetail(from: _container, forKeyIfPresent: .valueVirtualServiceDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueVirtualServiceDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .virtualServiceDetail(valueVirtualServiceDetail)
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
