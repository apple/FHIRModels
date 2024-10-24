//
//  ExplanationOfBenefit.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit)
//  Copyright 2024 Apple Inc.
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
open class ExplanationOfBenefit: DomainResource {
	
	override open class var resourceType: ResourceType { return .explanationOfBenefit }
	
	/// Business Identifier for the resource
	public var identifier: [Identifier]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ExplanationOfBenefitStatus>
	
	/// Category or discipline
	public var type: CodeableConcept
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// A code to indicate whether the nature of the request is: Claim - A request to an Insurer to adjudicate the
	/// supplied charges for health care goods and services under the identified policy and to pay the determined
	/// Benefit amount, if any; Preauthorization - A request to an Insurer to adjudicate the supplied proposed future
	/// charges for health care goods and services under the identified policy and to approve the services and provide
	/// the expected benefit amounts and potentially to reserve funds to pay the benefits when Claims for the indicated
	/// services are later submitted; or, Pre-determination - A request to an Insurer to adjudicate the supplied 'what
	/// if' charges for health care goods and services under the identified policy and report back what the Benefit
	/// payable would be had the services actually been provided.
	public var use: FHIRPrimitive<Use>
	
	/// The recipient of the products and services
	public var patient: Reference
	
	/// Relevant time frame for the claim
	public var billablePeriod: Period?
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Author of the claim
	public var enterer: Reference?
	
	/// Party responsible for reimbursement
	public var insurer: Reference?
	
	/// Party responsible for the claim
	public var provider: Reference?
	
	/// Desired processing urgency
	public var priority: CodeableConcept?
	
	/// For whom to reserve funds
	public var fundsReserveRequested: CodeableConcept?
	
	/// Funds reserved status
	public var fundsReserve: CodeableConcept?
	
	/// Prior or corollary claims
	public var related: [ExplanationOfBenefitRelated]?
	
	/// Prescription authorizing services or products
	public var prescription: Reference?
	
	/// Original prescription if superceded by fulfiller
	public var originalPrescription: Reference?
	
	/// Event information
	public var event: [ExplanationOfBenefitEvent]?
	
	/// Recipient of benefits payable
	public var payee: ExplanationOfBenefitPayee?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Claim reference
	public var claim: Reference?
	
	/// Claim response reference
	public var claimResponse: Reference?
	
	/// The outcome of the claim, predetermination, or preauthorization processing.
	public var outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>
	
	/// Result of the adjudication
	public var decision: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Preauthorization reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Preauthorization in-effect period
	public var preAuthRefPeriod: [Period]?
	
	/// Package billing code
	public var diagnosisRelatedGroup: CodeableConcept?
	
	/// Care Team members
	public var careTeam: [ExplanationOfBenefitCareTeam]?
	
	/// Supporting information
	public var supportingInfo: [ExplanationOfBenefitSupportingInfo]?
	
	/// Pertinent diagnosis information
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Clinical procedures performed
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Precedence (primary, secondary, etc.)
	public var precedence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Patient insurance information
	public var insurance: [ExplanationOfBenefitInsurance]?
	
	/// Details of the event
	public var accident: ExplanationOfBenefitAccident?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Product or service provided
	public var item: [ExplanationOfBenefitItem]?
	
	/// Insurer added line items
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Header-level adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Adjudication totals
	public var total: [ExplanationOfBenefitTotal]?
	
	/// Payment Details
	public var payment: ExplanationOfBenefitPayment?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Printed reference or actual form
	public var form: Attachment?
	
	/// Note concerning adjudication
	public var processNote: [ExplanationOfBenefitProcessNote]?
	
	/// When the benefits are applicable
	public var benefitPeriod: Period?
	
	/// Balance by Benefit Category
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>, patient: Reference, status: FHIRPrimitive<ExplanationOfBenefitStatus>, type: CodeableConcept, use: FHIRPrimitive<Use>) {
		self.created = created
		self.outcome = outcome
		self.patient = patient
		self.status = status
		self.type = type
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		patient: Reference,
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
		subType: CodeableConcept? = nil,
		supportingInfo: [ExplanationOfBenefitSupportingInfo]? = nil,
		text: Narrative? = nil,
		total: [ExplanationOfBenefitTotal]? = nil,
		traceNumber: [Identifier]? = nil,
		type: CodeableConcept,
		use: FHIRPrimitive<Use>
	) {
		self.init(created: created, outcome: outcome, patient: patient, status: status, type: type, use: use)
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
		self.subType = subType
		self.supportingInfo = supportingInfo
		self.text = text
		self.total = total
		self.traceNumber = traceNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accident
		case addItem
		case adjudication
		case benefitBalance
		case benefitPeriod
		case billablePeriod
		case careTeam
		case claim
		case claimResponse
		case created; case _created
		case decision
		case diagnosis
		case diagnosisRelatedGroup
		case disposition; case _disposition
		case encounter
		case enterer
		case event
		case facility
		case form
		case formCode
		case fundsReserve
		case fundsReserveRequested
		case identifier
		case insurance
		case insurer
		case item
		case originalPrescription
		case outcome; case _outcome
		case patient
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
		case subType
		case supportingInfo
		case total
		case traceNumber
		case type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accident = try ExplanationOfBenefitAccident(from: _container, forKeyIfPresent: .accident)
		self.addItem = try [ExplanationOfBenefitAddItem](from: _container, forKeyIfPresent: .addItem)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.benefitBalance = try [ExplanationOfBenefitBenefitBalance](from: _container, forKeyIfPresent: .benefitBalance)
		self.benefitPeriod = try Period(from: _container, forKeyIfPresent: .benefitPeriod)
		self.billablePeriod = try Period(from: _container, forKeyIfPresent: .billablePeriod)
		self.careTeam = try [ExplanationOfBenefitCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.diagnosis = try [ExplanationOfBenefitDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.diagnosisRelatedGroup = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisRelatedGroup)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.event = try [ExplanationOfBenefitEvent](from: _container, forKeyIfPresent: .event)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.form = try Attachment(from: _container, forKeyIfPresent: .form)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.fundsReserveRequested = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserveRequested)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [ExplanationOfBenefitInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ExplanationOfBenefitItem](from: _container, forKeyIfPresent: .item)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.outcome = try FHIRPrimitive<ClaimProcessingOutcomeCodes>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.patient = try Reference(from: _container, forKey: .patient)
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
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.supportingInfo = try [ExplanationOfBenefitSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		self.total = try [ExplanationOfBenefitTotal](from: _container, forKeyIfPresent: .total)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accident?.encode(on: &_container, forKey: .accident)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try benefitBalance?.encode(on: &_container, forKey: .benefitBalance)
		try benefitPeriod?.encode(on: &_container, forKey: .benefitPeriod)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try claim?.encode(on: &_container, forKey: .claim)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try decision?.encode(on: &_container, forKey: .decision)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try diagnosisRelatedGroup?.encode(on: &_container, forKey: .diagnosisRelatedGroup)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try event?.encode(on: &_container, forKey: .event)
		try facility?.encode(on: &_container, forKey: .facility)
		try form?.encode(on: &_container, forKey: .form)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try fundsReserveRequested?.encode(on: &_container, forKey: .fundsReserveRequested)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try patient.encode(on: &_container, forKey: .patient)
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
		try subType?.encode(on: &_container, forKey: .subType)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try total?.encode(on: &_container, forKey: .total)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try type.encode(on: &_container, forKey: .type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accident == _other.accident
		    && addItem == _other.addItem
		    && adjudication == _other.adjudication
		    && benefitBalance == _other.benefitBalance
		    && benefitPeriod == _other.benefitPeriod
		    && billablePeriod == _other.billablePeriod
		    && careTeam == _other.careTeam
		    && claim == _other.claim
		    && claimResponse == _other.claimResponse
		    && created == _other.created
		    && decision == _other.decision
		    && diagnosis == _other.diagnosis
		    && diagnosisRelatedGroup == _other.diagnosisRelatedGroup
		    && disposition == _other.disposition
		    && encounter == _other.encounter
		    && enterer == _other.enterer
		    && event == _other.event
		    && facility == _other.facility
		    && form == _other.form
		    && formCode == _other.formCode
		    && fundsReserve == _other.fundsReserve
		    && fundsReserveRequested == _other.fundsReserveRequested
		    && identifier == _other.identifier
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && originalPrescription == _other.originalPrescription
		    && outcome == _other.outcome
		    && patient == _other.patient
		    && patientPaid == _other.patientPaid
		    && payee == _other.payee
		    && payment == _other.payment
		    && preAuthRef == _other.preAuthRef
		    && preAuthRefPeriod == _other.preAuthRefPeriod
		    && precedence == _other.precedence
		    && prescription == _other.prescription
		    && priority == _other.priority
		    && procedure == _other.procedure
		    && processNote == _other.processNote
		    && provider == _other.provider
		    && referral == _other.referral
		    && related == _other.related
		    && status == _other.status
		    && subType == _other.subType
		    && supportingInfo == _other.supportingInfo
		    && total == _other.total
		    && traceNumber == _other.traceNumber
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accident)
		hasher.combine(addItem)
		hasher.combine(adjudication)
		hasher.combine(benefitBalance)
		hasher.combine(benefitPeriod)
		hasher.combine(billablePeriod)
		hasher.combine(careTeam)
		hasher.combine(claim)
		hasher.combine(claimResponse)
		hasher.combine(created)
		hasher.combine(decision)
		hasher.combine(diagnosis)
		hasher.combine(diagnosisRelatedGroup)
		hasher.combine(disposition)
		hasher.combine(encounter)
		hasher.combine(enterer)
		hasher.combine(event)
		hasher.combine(facility)
		hasher.combine(form)
		hasher.combine(formCode)
		hasher.combine(fundsReserve)
		hasher.combine(fundsReserveRequested)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(originalPrescription)
		hasher.combine(outcome)
		hasher.combine(patient)
		hasher.combine(patientPaid)
		hasher.combine(payee)
		hasher.combine(payment)
		hasher.combine(preAuthRef)
		hasher.combine(preAuthRefPeriod)
		hasher.combine(precedence)
		hasher.combine(prescription)
		hasher.combine(priority)
		hasher.combine(procedure)
		hasher.combine(processNote)
		hasher.combine(provider)
		hasher.combine(referral)
		hasher.combine(related)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(supportingInfo)
		hasher.combine(total)
		hasher.combine(traceNumber)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 Details of the event.
 
 Details of a accident which resulted in injuries which required the products and services listed in the claim.
 */
open class ExplanationOfBenefitAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case reference(Reference)
	}
	
	/// When the incident occurred
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// The nature of the accident
	public var type: CodeableConcept?
	
	/// Where the event occurred
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		date: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: LocationX? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
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
		case locationAddress
		case locationReference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationAddress, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		self.location = _t_location
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		if let _enum = location {
			switch _enum {
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .locationAddress)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .locationReference)
			}
		}
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitAccident else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && location == _other.location
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(location)
		hasher.combine(type)
	}
}

/**
 Insurer added line items.
 
 The first-tier service adjudications for payor added product or service lines.
 */
open class ExplanationOfBenefitAddItem: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// Item sequence number
	public var itemSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Detail sequence number
	public var detailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Subdetail sequence number
	public var subDetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Authorized providers
	public var provider: [Reference]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Request or Referral for Service
	public var request: [Reference]?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Place of service or where product was supplied
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Anatomical location
	public var bodySite: [ExplanationOfBenefitAddItemBodySite]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Additem level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Insurer added line items
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		bodySite: [ExplanationOfBenefitAddItemBodySite]? = nil,
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
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		unitPrice: Money? = nil
	) {
		self.init()
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
		self.tax = tax
		self.traceNumber = traceNumber
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case bodySite
		case detail
		case detailSequence; case _detailSequence
		case factor; case _factor
		case itemSequence; case _itemSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
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
		case tax
		case traceNumber
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try [ExplanationOfBenefitAddItemBodySite](from: _container, forKeyIfPresent: .bodySite)
		self.detail = try [ExplanationOfBenefitAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.detailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.itemSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .itemSequence, auxiliaryKey: ._itemSequence)
		var _t_location: LocationX? = nil
		if let locationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .locationCodeableConcept) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .codeableConcept(locationCodeableConcept)
		}
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationAddress, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		self.location = _t_location
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		self.subDetailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try detail?.encode(on: &_container, forKey: .detail)
		try detailSequence?.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try itemSequence?.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		if let _enum = location {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .locationCodeableConcept)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .locationAddress)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .locationReference)
			}
		}
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitAddItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && bodySite == _other.bodySite
		    && detail == _other.detail
		    && detailSequence == _other.detailSequence
		    && factor == _other.factor
		    && itemSequence == _other.itemSequence
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && provider == _other.provider
		    && quantity == _other.quantity
		    && request == _other.request
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && serviced == _other.serviced
		    && subDetailSequence == _other.subDetailSequence
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(bodySite)
		hasher.combine(detail)
		hasher.combine(detailSequence)
		hasher.combine(factor)
		hasher.combine(itemSequence)
		hasher.combine(location)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(provider)
		hasher.combine(quantity)
		hasher.combine(request)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(serviced)
		hasher.combine(subDetailSequence)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(unitPrice)
	}
}

/**
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
open class ExplanationOfBenefitAddItemBodySite: BackboneElement {
	
	/// Location
	public var site: [CodeableReference]
	
	/// Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(site: [CodeableReference]) {
		self.site = site
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		site: [CodeableReference],
		subSite: [CodeableConcept]? = nil
	) {
		self.init(site: site)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subSite = subSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case site
		case subSite
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.site = try [CodeableReference](from: _container, forKey: .site)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try site.encode(on: &_container, forKey: .site)
		try subSite?.encode(on: &_container, forKey: .subSite)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitAddItemBodySite else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return site == _other.site
		    && subSite == _other.subSite
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(site)
		hasher.combine(subSite)
	}
}

/**
 Insurer added line items.
 
 The second-tier service adjudications for payor added services.
 */
open class ExplanationOfBenefitAddItemDetail: BackboneElement {
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Additem detail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Insurer added line items
	public var subDetail: [ExplanationOfBenefitAddItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case factor; case _factor
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitAddItemDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && subDetail == _other.subDetail
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(subDetail)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(unitPrice)
	}
}

/**
 Insurer added line items.
 
 The third-tier service adjudications for payor added services.
 */
open class ExplanationOfBenefitAddItemDetailSubDetail: BackboneElement {
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Additem subdetail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case factor; case _factor
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitAddItemDetailSubDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(unitPrice)
	}
}

/**
 Balance by Benefit Category.
 */
open class ExplanationOfBenefitBenefitBalance: BackboneElement {
	
	/// Benefit classification
	public var category: CodeableConcept
	
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
	public var financial: [ExplanationOfBenefitBenefitBalanceFinancial]?
	
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
		financial: [ExplanationOfBenefitBenefitBalanceFinancial]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		network: CodeableConcept? = nil,
		term: CodeableConcept? = nil,
		unit: CodeableConcept? = nil
	) {
		self.init(category: category)
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
		case financial
		case name; case _name
		case network
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
		self.financial = try [ExplanationOfBenefitBenefitBalanceFinancial](from: _container, forKeyIfPresent: .financial)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
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
		try term?.encode(on: &_container, forKey: .term)
		try unit?.encode(on: &_container, forKey: .unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitBenefitBalance else {
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
		hasher.combine(term)
		hasher.combine(unit)
	}
}

/**
 Benefit Summary.
 
 Benefits Used to date.
 */
open class ExplanationOfBenefitBenefitBalanceFinancial: BackboneElement {
	
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
		used: UsedX? = nil
	) {
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
		guard let _other = _other as? ExplanationOfBenefitBenefitBalanceFinancial else {
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

/**
 Care Team members.
 
 The members of the team who provided the products and services.
 */
open class ExplanationOfBenefitCareTeam: BackboneElement {
	
	/// Order of care team
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Practitioner or organization
	public var provider: Reference
	
	/// Indicator of the lead practitioner
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Function within the team
	public var role: CodeableConcept?
	
	/// Practitioner or provider specialization
	public var specialty: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(provider: Reference, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.provider = provider
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference,
		responsible: FHIRPrimitive<FHIRBool>? = nil,
		role: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		specialty: CodeableConcept? = nil
	) {
		self.init(provider: provider, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.responsible = responsible
		self.role = role
		self.specialty = specialty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case provider
		case responsible; case _responsible
		case role
		case sequence; case _sequence
		case specialty
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.provider = try Reference(from: _container, forKey: .provider)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try provider.encode(on: &_container, forKey: .provider)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitCareTeam else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return provider == _other.provider
		    && responsible == _other.responsible
		    && role == _other.role
		    && sequence == _other.sequence
		    && specialty == _other.specialty
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(provider)
		hasher.combine(responsible)
		hasher.combine(role)
		hasher.combine(sequence)
		hasher.combine(specialty)
	}
}

/**
 Pertinent diagnosis information.
 
 Information about diagnoses relevant to the claim items.
 */
open class ExplanationOfBenefitDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Diagnosis instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Nature of illness or problem
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Present on admission
	public var onAdmission: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(diagnosis: DiagnosisX, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.diagnosis = diagnosis
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		diagnosis: DiagnosisX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onAdmission: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.init(diagnosis: diagnosis, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onAdmission = onAdmission
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
		case onAdmission
		case sequence; case _sequence
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.diagnosisCodeableConcept) || _container.contains(CodingKeys.diagnosisReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.diagnosisCodeableConcept, CodingKeys.diagnosisReference], debugDescription: "Must have at least one value for \"diagnosis\" but have none"))
		}
		
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
		self.diagnosis = _t_diagnosis!
		self.onAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .onAdmission)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch diagnosis {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .diagnosisCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .diagnosisReference)
			}
		
		try onAdmission?.encode(on: &_container, forKey: .onAdmission)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitDiagnosis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return diagnosis == _other.diagnosis
		    && onAdmission == _other.onAdmission
		    && sequence == _other.sequence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(diagnosis)
		hasher.combine(onAdmission)
		hasher.combine(sequence)
		hasher.combine(type)
	}
}

/**
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
open class ExplanationOfBenefitEvent: BackboneElement {
	
	/// All possible types for "when[x]"
	public enum WhenX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Specific event
	public var type: CodeableConcept
	
	/// Occurance date or period
	/// One of `when[x]`
	public var when: WhenX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, when: WhenX) {
		self.type = type
		self.when = when
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		when: WhenX
	) {
		self.init(type: type, when: when)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case whenDateTime; case _whenDateTime
		case whenPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.whenDateTime) || _container.contains(CodingKeys.whenPeriod) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.whenDateTime, CodingKeys.whenPeriod], debugDescription: "Must have at least one value for \"when\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_when: WhenX? = nil
		if let whenDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenDateTime, auxiliaryKey: ._whenDateTime) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenDateTime, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .dateTime(whenDateTime)
		}
		if let whenPeriod = try Period(from: _container, forKeyIfPresent: .whenPeriod) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenPeriod, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .period(whenPeriod)
		}
		self.when = _t_when!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch when {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .whenDateTime, auxiliaryKey: ._whenDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .whenPeriod)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && when == _other.when
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(when)
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services specified on the claim.
 */
open class ExplanationOfBenefitInsurance: BackboneElement {
	
	/// Coverage to be used for adjudication
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Insurance information
	public var coverage: Reference
	
	/// Prior authorization reference number
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference, focal: FHIRPrimitive<FHIRBool>) {
		self.coverage = coverage
		self.focal = focal
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.init(coverage: coverage, focal: focal)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case focal; case _focal
		case preAuthRef; case _preAuthRef
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .focal, auxiliaryKey: ._focal)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coverage.encode(on: &_container, forKey: .coverage)
		try focal.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitInsurance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coverage == _other.coverage
		    && focal == _other.focal
		    && preAuthRef == _other.preAuthRef
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(preAuthRef)
	}
}

/**
 Product or service provided.
 
 A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups
 of sub-details.
 */
open class ExplanationOfBenefitItem: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Applicable care team members
	public var careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable diagnoses
	public var diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable procedures
	public var procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Request or Referral for Service
	public var request: [Reference]?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Place of service or where product was supplied
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Anatomical location
	public var bodySite: [ExplanationOfBenefitItemBodySite]?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Additional items
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.init(sequence: sequence)
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
		self.serviced = serviced
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
		case factor; case _factor
		case informationSequence; case _informationSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
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
		case tax
		case traceNumber
		case udi
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try [ExplanationOfBenefitItemBodySite](from: _container, forKeyIfPresent: .bodySite)
		self.careTeamSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
		var _t_location: LocationX? = nil
		if let locationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .locationCodeableConcept) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .codeableConcept(locationCodeableConcept)
		}
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationAddress, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		self.location = _t_location
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try careTeamSequence?.encode(on: &_container, forKey: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisSequence?.encode(on: &_container, forKey: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
		if let _enum = location {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .locationCodeableConcept)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .locationAddress)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .locationReference)
			}
		}
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && bodySite == _other.bodySite
		    && careTeamSequence == _other.careTeamSequence
		    && category == _other.category
		    && detail == _other.detail
		    && diagnosisSequence == _other.diagnosisSequence
		    && encounter == _other.encounter
		    && factor == _other.factor
		    && informationSequence == _other.informationSequence
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && patientPaid == _other.patientPaid
		    && procedureSequence == _other.procedureSequence
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && request == _other.request
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && sequence == _other.sequence
		    && serviced == _other.serviced
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(bodySite)
		hasher.combine(careTeamSequence)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(diagnosisSequence)
		hasher.combine(encounter)
		hasher.combine(factor)
		hasher.combine(informationSequence)
		hasher.combine(location)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(patientPaid)
		hasher.combine(procedureSequence)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(request)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(sequence)
		hasher.combine(serviced)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Adjudication details.
 
 If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a
 simple product or service then this is the result of the adjudication of this item.
 */
open class ExplanationOfBenefitItemAdjudication: BackboneElement {
	
	/// Type of adjudication information
	public var category: CodeableConcept
	
	/// Explanation of adjudication outcome
	public var reason: CodeableConcept?
	
	/// Monetary amount
	public var amount: Money?
	
	/// Non-monitary value
	public var quantity: Quantity?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept) {
		self.category = category
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Money? = nil,
		category: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		reason: CodeableConcept? = nil
	) {
		self.init(category: category)
		self.amount = amount
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
		case quantity
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try category.encode(on: &_container, forKey: .category)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitItemAdjudication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && category == _other.category
		    && quantity == _other.quantity
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(category)
		hasher.combine(quantity)
		hasher.combine(reason)
	}
}

/**
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
open class ExplanationOfBenefitItemBodySite: BackboneElement {
	
	/// Location
	public var site: [CodeableReference]
	
	/// Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(site: [CodeableReference]) {
		self.site = site
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		site: [CodeableReference],
		subSite: [CodeableConcept]? = nil
	) {
		self.init(site: site)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subSite = subSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case site
		case subSite
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.site = try [CodeableReference](from: _container, forKey: .site)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try site.encode(on: &_container, forKey: .site)
		try subSite?.encode(on: &_container, forKey: .subSite)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitItemBodySite else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return site == _other.site
		    && subSite == _other.subSite
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(site)
		hasher.combine(subSite)
	}
}

/**
 Additional items.
 
 Second-tier of goods and services.
 */
open class ExplanationOfBenefitItemDetail: BackboneElement {
	
	/// Product or service provided
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Detail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Detail level adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Additional items
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(sequence: sequence)
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
		case factor; case _factor
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitItemDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && category == _other.category
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && sequence == _other.sequence
		    && subDetail == _other.subDetail
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(category)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(sequence)
		hasher.combine(subDetail)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Additional items.
 
 Third-tier of goods and services.
 */
open class ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	
	/// Product or service provided
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Subdetail level adjudication results
	public var reviewOutcome: ExplanationOfBenefitItemReviewOutcome?
	
	/// Subdetail level adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(sequence: sequence)
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
		self.tax = tax
		self.traceNumber = traceNumber
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case category
		case factor; case _factor
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitItemDetailSubDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && category == _other.category
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && sequence == _other.sequence
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(category)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(sequence)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Adjudication results.
 
 The high-level results of the adjudication if adjudication has been performed.
 */
open class ExplanationOfBenefitItemReviewOutcome: BackboneElement {
	
	/// Result of the adjudication
	public var decision: CodeableConcept?
	
	/// Reason for result of the adjudication
	public var reason: [CodeableConcept]?
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Preauthorization reference effective period
	public var preAuthPeriod: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		decision: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		preAuthPeriod: Period? = nil,
		preAuthRef: FHIRPrimitive<FHIRString>? = nil,
		reason: [CodeableConcept]? = nil
	) {
		self.init()
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
		case preAuthPeriod
		case preAuthRef; case _preAuthRef
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.preAuthPeriod = try Period(from: _container, forKeyIfPresent: .preAuthPeriod)
		self.preAuthRef = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try decision?.encode(on: &_container, forKey: .decision)
		try preAuthPeriod?.encode(on: &_container, forKey: .preAuthPeriod)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try reason?.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitItemReviewOutcome else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return decision == _other.decision
		    && preAuthPeriod == _other.preAuthPeriod
		    && preAuthRef == _other.preAuthRef
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(decision)
		hasher.combine(preAuthPeriod)
		hasher.combine(preAuthRef)
		hasher.combine(reason)
	}
}

/**
 Recipient of benefits payable.
 
 The party to be reimbursed for cost of the products and services according to the terms of the policy.
 */
open class ExplanationOfBenefitPayee: BackboneElement {
	
	/// Category of recipient
	public var type: CodeableConcept?
	
	/// Recipient reference
	public var party: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case party
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try party?.encode(on: &_container, forKey: .party)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitPayee else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return party == _other.party
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(party)
		hasher.combine(type)
	}
}

/**
 Payment Details.
 
 Payment details for the adjudication of the claim.
 */
open class ExplanationOfBenefitPayment: BackboneElement {
	
	/// Partial or complete payment
	public var type: CodeableConcept?
	
	/// Payment adjustment for non-claim issues
	public var adjustment: Money?
	
	/// Explanation for the variance
	public var adjustmentReason: CodeableConcept?
	
	/// Expected date of payment
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Payable amount after adjustment
	public var amount: Money?
	
	/// Business identifier for the payment
	public var identifier: Identifier?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case identifier
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjustment = try Money(from: _container, forKeyIfPresent: .adjustment)
		self.adjustmentReason = try CodeableConcept(from: _container, forKeyIfPresent: .adjustmentReason)
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjustment?.encode(on: &_container, forKey: .adjustment)
		try adjustmentReason?.encode(on: &_container, forKey: .adjustmentReason)
		try amount?.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitPayment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjustment == _other.adjustment
		    && adjustmentReason == _other.adjustmentReason
		    && amount == _other.amount
		    && date == _other.date
		    && identifier == _other.identifier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjustment)
		hasher.combine(adjustmentReason)
		hasher.combine(amount)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(type)
	}
}

/**
 Clinical procedures performed.
 
 Procedures performed on the patient relevant to the billing items with the claim.
 */
open class ExplanationOfBenefitProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Procedure instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Category of Procedure
	public var type: [CodeableConcept]?
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Specific clinical procedure
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(procedure: ProcedureX, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.procedure = procedure
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: ProcedureX,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil,
		udi: [Reference]? = nil
	) {
		self.init(procedure: procedure, sequence: sequence)
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.udi = udi
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case procedureCodeableConcept
		case procedureReference
		case sequence; case _sequence
		case type
		case udi
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.procedureCodeableConcept) || _container.contains(CodingKeys.procedureReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.procedureCodeableConcept, CodingKeys.procedureReference], debugDescription: "Must have at least one value for \"procedure\" but have none"))
		}
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		var _t_procedure: ProcedureX? = nil
		if let procedureCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .procedureCodeableConcept) {
			if _t_procedure != nil {
				throw DecodingError.dataCorruptedError(forKey: .procedureCodeableConcept, in: _container, debugDescription: "More than one value provided for \"procedure\"")
			}
			_t_procedure = .codeableConcept(procedureCodeableConcept)
		}
		if let procedureReference = try Reference(from: _container, forKeyIfPresent: .procedureReference) {
			if _t_procedure != nil {
				throw DecodingError.dataCorruptedError(forKey: .procedureReference, in: _container, debugDescription: "More than one value provided for \"procedure\"")
			}
			_t_procedure = .reference(procedureReference)
		}
		self.procedure = _t_procedure!
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		
			switch procedure {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .procedureCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .procedureReference)
			}
		
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitProcedure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && procedure == _other.procedure
		    && sequence == _other.sequence
		    && type == _other.type
		    && udi == _other.udi
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(procedure)
		hasher.combine(sequence)
		hasher.combine(type)
		hasher.combine(udi)
	}
}

/**
 Note concerning adjudication.
 
 A note that describes or explains adjudication results in a human readable form.
 */
open class ExplanationOfBenefitProcessNote: BackboneElement {
	
	/// Note instance identifier
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Note purpose
	public var type: CodeableConcept?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Language of the text
	public var language: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
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
		case language
		case number; case _number
		case text; case _text
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitProcessNote else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && number == _other.number
		    && text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(number)
		hasher.combine(text)
		hasher.combine(type)
	}
}

/**
 Prior or corollary claims.
 
 Other claims which are related to this claim such as prior submissions or claims for related services or for the same
 event.
 */
open class ExplanationOfBenefitRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// How the reference claim is related
	public var relationship: CodeableConcept?
	
	/// File or case reference
	public var reference: Identifier?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		claim: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Identifier? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.init()
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
		case reference
		case relationship
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.reference = try Identifier(from: _container, forKeyIfPresent: .reference)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try claim?.encode(on: &_container, forKey: .claim)
		try reference?.encode(on: &_container, forKey: .reference)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitRelated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return claim == _other.claim
		    && reference == _other.reference
		    && relationship == _other.relationship
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(claim)
		hasher.combine(reference)
		hasher.combine(relationship)
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
open class ExplanationOfBenefitSupportingInfo: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case identifier(Identifier)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Classification of the supplied information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Data to be provided
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Explanation for the information
	public var reason: Coding?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.category = category
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(category: category, sequence: sequence)
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.timing = timing
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case reason
		case sequence; case _sequence
		case timingDate; case _timingDate
		case timingPeriod
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueIdentifier
		case valueQuantity
		case valueReference
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.reason = try Coding(from: _container, forKeyIfPresent: .reason)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		var _t_timing: TimingX? = nil
		if let timingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .timingDate, auxiliaryKey: ._timingDate) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDate, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .date(timingDate)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		self.timing = _t_timing
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
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
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .valueIdentifier)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitSupportingInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
		    && reason == _other.reason
		    && sequence == _other.sequence
		    && timing == _other.timing
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(reason)
		hasher.combine(sequence)
		hasher.combine(timing)
		hasher.combine(value)
	}
}

/**
 Adjudication totals.
 
 Categorized monetary totals for the adjudication.
 */
open class ExplanationOfBenefitTotal: BackboneElement {
	
	/// Type of adjudication information
	public var category: CodeableConcept
	
	/// Financial total for the category
	public var amount: Money
	
	/// Designated initializer taking all required properties
	public init(amount: Money, category: CodeableConcept) {
		self.amount = amount
		self.category = category
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Money,
		category: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(amount: amount, category: category)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case category
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKey: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount.encode(on: &_container, forKey: .amount)
		try category.encode(on: &_container, forKey: .category)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitTotal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && category == _other.category
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(category)
	}
}
