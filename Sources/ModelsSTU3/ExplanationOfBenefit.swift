//
//  ExplanationOfBenefit.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit)
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
 Explanation of Benefit resource.
 
 This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account
 balance information, for informing the subscriber of the benefits provided.
 */
open class ExplanationOfBenefit: DomainResource {
	
	override open class var resourceType: ResourceType { return .explanationOfBenefit }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ExplanationOfBenefitStatus>?
	
	/// Type or discipline
	public var type: CodeableConcept?
	
	/// Finer grained claim type information
	public var subType: [CodeableConcept]?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Period for charge submission
	public var billablePeriod: Period?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Author
	public var enterer: Reference?
	
	/// Insurer responsible for the EOB
	public var insurer: Reference?
	
	/// Responsible provider for the claim
	public var provider: Reference?
	
	/// Responsible organization for the claim
	public var organization: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Claim reference
	public var claim: Reference?
	
	/// Claim response reference
	public var claimResponse: Reference?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Related Claims which may be revelant to processing this claim
	public var related: [ExplanationOfBenefitRelated]?
	
	/// Prescription authorizing services or products
	public var prescription: Reference?
	
	/// Original prescription if superceded by fulfiller
	public var originalPrescription: Reference?
	
	/// Party to be paid any benefits payable
	public var payee: ExplanationOfBenefitPayee?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues
	public var information: [ExplanationOfBenefitInformation]?
	
	/// Care Team members
	public var careTeam: [ExplanationOfBenefitCareTeam]?
	
	/// List of Diagnosis
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Procedures performed
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Precedence (primary, secondary, etc.)
	public var precedence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Insurance or medical plan
	public var insurance: ExplanationOfBenefitInsurance?
	
	/// Details of an accident
	public var accident: ExplanationOfBenefitAccident?
	
	/// Period unable to work
	public var employmentImpacted: Period?
	
	/// Period in hospital
	public var hospitalization: Period?
	
	/// Goods and Services
	public var item: [ExplanationOfBenefitItem]?
	
	/// Insurer added line items
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Total Cost of service from the Claim
	public var totalCost: Money?
	
	/// Unallocated deductable
	public var unallocDeductable: Money?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Money?
	
	/// Payment (if paid)
	public var payment: ExplanationOfBenefitPayment?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Processing notes
	public var processNote: [ExplanationOfBenefitProcessNote]?
	
	/// Balance by Benefit Category
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							accident: ExplanationOfBenefitAccident? = nil,
							addItem: [ExplanationOfBenefitAddItem]? = nil,
							benefitBalance: [ExplanationOfBenefitBenefitBalance]? = nil,
							billablePeriod: Period? = nil,
							careTeam: [ExplanationOfBenefitCareTeam]? = nil,
							claim: Reference? = nil,
							claimResponse: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							diagnosis: [ExplanationOfBenefitDiagnosis]? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							employmentImpacted: Period? = nil,
							enterer: Reference? = nil,
							`extension`: [Extension]? = nil,
							facility: Reference? = nil,
							form: CodeableConcept? = nil,
							hospitalization: Period? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							information: [ExplanationOfBenefitInformation]? = nil,
							insurance: ExplanationOfBenefitInsurance? = nil,
							insurer: Reference? = nil,
							item: [ExplanationOfBenefitItem]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							originalPrescription: Reference? = nil,
							outcome: CodeableConcept? = nil,
							patient: Reference? = nil,
							payee: ExplanationOfBenefitPayee? = nil,
							payment: ExplanationOfBenefitPayment? = nil,
							precedence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							prescription: Reference? = nil,
							procedure: [ExplanationOfBenefitProcedure]? = nil,
							processNote: [ExplanationOfBenefitProcessNote]? = nil,
							provider: Reference? = nil,
							referral: Reference? = nil,
							related: [ExplanationOfBenefitRelated]? = nil,
							status: FHIRPrimitive<ExplanationOfBenefitStatus>? = nil,
							subType: [CodeableConcept]? = nil,
							text: Narrative? = nil,
							totalBenefit: Money? = nil,
							totalCost: Money? = nil,
							type: CodeableConcept? = nil,
							unallocDeductable: Money? = nil)
	{
		self.init()
		self.accident = accident
		self.addItem = addItem
		self.benefitBalance = benefitBalance
		self.billablePeriod = billablePeriod
		self.careTeam = careTeam
		self.claim = claim
		self.claimResponse = claimResponse
		self.contained = contained
		self.created = created
		self.diagnosis = diagnosis
		self.disposition = disposition
		self.employmentImpacted = employmentImpacted
		self.enterer = enterer
		self.`extension` = `extension`
		self.facility = facility
		self.form = form
		self.hospitalization = hospitalization
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.information = information
		self.insurance = insurance
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.originalPrescription = originalPrescription
		self.outcome = outcome
		self.patient = patient
		self.payee = payee
		self.payment = payment
		self.precedence = precedence
		self.prescription = prescription
		self.procedure = procedure
		self.processNote = processNote
		self.provider = provider
		self.referral = referral
		self.related = related
		self.status = status
		self.subType = subType
		self.text = text
		self.totalBenefit = totalBenefit
		self.totalCost = totalCost
		self.type = type
		self.unallocDeductable = unallocDeductable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accident
		case addItem
		case benefitBalance
		case billablePeriod
		case careTeam
		case claim
		case claimResponse
		case created; case _created
		case diagnosis
		case disposition; case _disposition
		case employmentImpacted
		case enterer
		case facility
		case form
		case hospitalization
		case identifier
		case information
		case insurance
		case insurer
		case item
		case organization
		case originalPrescription
		case outcome
		case patient
		case payee
		case payment
		case precedence; case _precedence
		case prescription
		case procedure
		case processNote
		case provider
		case referral
		case related
		case status; case _status
		case subType
		case totalBenefit
		case totalCost
		case type
		case unallocDeductable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accident = try ExplanationOfBenefitAccident(from: _container, forKeyIfPresent: .accident)
		self.addItem = try [ExplanationOfBenefitAddItem](from: _container, forKeyIfPresent: .addItem)
		self.benefitBalance = try [ExplanationOfBenefitBenefitBalance](from: _container, forKeyIfPresent: .benefitBalance)
		self.billablePeriod = try Period(from: _container, forKeyIfPresent: .billablePeriod)
		self.careTeam = try [ExplanationOfBenefitCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ExplanationOfBenefitDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.employmentImpacted = try Period(from: _container, forKeyIfPresent: .employmentImpacted)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.hospitalization = try Period(from: _container, forKeyIfPresent: .hospitalization)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.information = try [ExplanationOfBenefitInformation](from: _container, forKeyIfPresent: .information)
		self.insurance = try ExplanationOfBenefitInsurance(from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ExplanationOfBenefitItem](from: _container, forKeyIfPresent: .item)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.payee = try ExplanationOfBenefitPayee(from: _container, forKeyIfPresent: .payee)
		self.payment = try ExplanationOfBenefitPayment(from: _container, forKeyIfPresent: .payment)
		self.precedence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .precedence, auxiliaryKey: ._precedence)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.procedure = try [ExplanationOfBenefitProcedure](from: _container, forKeyIfPresent: .procedure)
		self.processNote = try [ExplanationOfBenefitProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.related = try [ExplanationOfBenefitRelated](from: _container, forKeyIfPresent: .related)
		self.status = try FHIRPrimitive<ExplanationOfBenefitStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subType = try [CodeableConcept](from: _container, forKeyIfPresent: .subType)
		self.totalBenefit = try Money(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Money(from: _container, forKeyIfPresent: .totalCost)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.unallocDeductable = try Money(from: _container, forKeyIfPresent: .unallocDeductable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accident?.encode(on: &_container, forKey: .accident)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try benefitBalance?.encode(on: &_container, forKey: .benefitBalance)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try claim?.encode(on: &_container, forKey: .claim)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try employmentImpacted?.encode(on: &_container, forKey: .employmentImpacted)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try facility?.encode(on: &_container, forKey: .facility)
		try form?.encode(on: &_container, forKey: .form)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try information?.encode(on: &_container, forKey: .information)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try patient?.encode(on: &_container, forKey: .patient)
		try payee?.encode(on: &_container, forKey: .payee)
		try payment?.encode(on: &_container, forKey: .payment)
		try precedence?.encode(on: &_container, forKey: .precedence, auxiliaryKey: ._precedence)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try provider?.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try related?.encode(on: &_container, forKey: .related)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try totalBenefit?.encode(on: &_container, forKey: .totalBenefit)
		try totalCost?.encode(on: &_container, forKey: .totalCost)
		try type?.encode(on: &_container, forKey: .type)
		try unallocDeductable?.encode(on: &_container, forKey: .unallocDeductable)
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
		    && benefitBalance == _other.benefitBalance
		    && billablePeriod == _other.billablePeriod
		    && careTeam == _other.careTeam
		    && claim == _other.claim
		    && claimResponse == _other.claimResponse
		    && created == _other.created
		    && diagnosis == _other.diagnosis
		    && disposition == _other.disposition
		    && employmentImpacted == _other.employmentImpacted
		    && enterer == _other.enterer
		    && facility == _other.facility
		    && form == _other.form
		    && hospitalization == _other.hospitalization
		    && identifier == _other.identifier
		    && information == _other.information
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && organization == _other.organization
		    && originalPrescription == _other.originalPrescription
		    && outcome == _other.outcome
		    && patient == _other.patient
		    && payee == _other.payee
		    && payment == _other.payment
		    && precedence == _other.precedence
		    && prescription == _other.prescription
		    && procedure == _other.procedure
		    && processNote == _other.processNote
		    && provider == _other.provider
		    && referral == _other.referral
		    && related == _other.related
		    && status == _other.status
		    && subType == _other.subType
		    && totalBenefit == _other.totalBenefit
		    && totalCost == _other.totalCost
		    && type == _other.type
		    && unallocDeductable == _other.unallocDeductable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accident)
		hasher.combine(addItem)
		hasher.combine(benefitBalance)
		hasher.combine(billablePeriod)
		hasher.combine(careTeam)
		hasher.combine(claim)
		hasher.combine(claimResponse)
		hasher.combine(created)
		hasher.combine(diagnosis)
		hasher.combine(disposition)
		hasher.combine(employmentImpacted)
		hasher.combine(enterer)
		hasher.combine(facility)
		hasher.combine(form)
		hasher.combine(hospitalization)
		hasher.combine(identifier)
		hasher.combine(information)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(organization)
		hasher.combine(originalPrescription)
		hasher.combine(outcome)
		hasher.combine(patient)
		hasher.combine(payee)
		hasher.combine(payment)
		hasher.combine(precedence)
		hasher.combine(prescription)
		hasher.combine(procedure)
		hasher.combine(processNote)
		hasher.combine(provider)
		hasher.combine(referral)
		hasher.combine(related)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(totalBenefit)
		hasher.combine(totalCost)
		hasher.combine(type)
		hasher.combine(unallocDeductable)
	}
}

/**
 Details of an accident.
 
 An accident which resulted in the need for healthcare services.
 */
open class ExplanationOfBenefitAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case reference(Reference)
	}
	
	/// When the accident occurred
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// The nature of the accident
	public var type: CodeableConcept?
	
	/// Accident Place
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
							type: CodeableConcept? = nil)
	{
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
 
 The first tier service adjudications for payor added services.
 */
open class ExplanationOfBenefitAddItem: BackboneElement {
	
	/// Service instances
	public var sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Added items details
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
							category: CodeableConcept? = nil,
							detail: [ExplanationOfBenefitAddItemDetail]? = nil,
							`extension`: [Extension]? = nil,
							fee: Money? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							revenue: CodeableConcept? = nil,
							sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							service: CodeableConcept? = nil)
	{
		self.init()
		self.adjudication = adjudication
		self.category = category
		self.detail = detail
		self.`extension` = `extension`
		self.fee = fee
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.revenue = revenue
		self.sequenceLinkId = sequenceLinkId
		self.service = service
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case category
		case detail
		case fee
		case modifier
		case noteNumber; case _noteNumber
		case revenue
		case sequenceLinkId; case _sequenceLinkId
		case service
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.fee = try Money(from: _container, forKeyIfPresent: .fee)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequenceLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try fee?.encode(on: &_container, forKey: .fee)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequenceLinkId?.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try service?.encode(on: &_container, forKey: .service)
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
		    && category == _other.category
		    && detail == _other.detail
		    && fee == _other.fee
		    && modifier == _other.modifier
		    && noteNumber == _other.noteNumber
		    && revenue == _other.revenue
		    && sequenceLinkId == _other.sequenceLinkId
		    && service == _other.service
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(fee)
		hasher.combine(modifier)
		hasher.combine(noteNumber)
		hasher.combine(revenue)
		hasher.combine(sequenceLinkId)
		hasher.combine(service)
	}
}

/**
 Added items details.
 
 The second tier service adjudications for payor added services.
 */
open class ExplanationOfBenefitAddItemDetail: BackboneElement {
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items detail adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
							category: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							fee: Money? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							revenue: CodeableConcept? = nil,
							service: CodeableConcept? = nil)
	{
		self.init()
		self.adjudication = adjudication
		self.category = category
		self.`extension` = `extension`
		self.fee = fee
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.revenue = revenue
		self.service = service
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case category
		case fee
		case modifier
		case noteNumber; case _noteNumber
		case revenue
		case service
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.fee = try Money(from: _container, forKeyIfPresent: .fee)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try fee?.encode(on: &_container, forKey: .fee)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try service?.encode(on: &_container, forKey: .service)
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
		    && category == _other.category
		    && fee == _other.fee
		    && modifier == _other.modifier
		    && noteNumber == _other.noteNumber
		    && revenue == _other.revenue
		    && service == _other.service
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(category)
		hasher.combine(fee)
		hasher.combine(modifier)
		hasher.combine(noteNumber)
		hasher.combine(revenue)
		hasher.combine(service)
	}
}

/**
 Balance by Benefit Category.
 */
open class ExplanationOfBenefitBenefitBalance: BackboneElement {
	
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
		self.financial = try [ExplanationOfBenefitBenefitBalanceFinancial](from: _container, forKeyIfPresent: .financial)
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
 
 The members of the team who provided the overall service as well as their role and whether responsible and
 qualifications.
 */
open class ExplanationOfBenefitCareTeam: BackboneElement {
	
	/// Number to covey order of careteam
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Member of the Care Team
	public var provider: Reference
	
	/// Billing practitioner
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Role on the team
	public var role: CodeableConcept?
	
	/// Type, classification or Specialization
	public var qualification: CodeableConcept?
	
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
							qualification: CodeableConcept? = nil,
							responsible: FHIRPrimitive<FHIRBool>? = nil,
							role: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(provider: provider, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.qualification = qualification
		self.responsible = responsible
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case provider
		case qualification
		case responsible; case _responsible
		case role
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.provider = try Reference(from: _container, forKey: .provider)
		self.qualification = try CodeableConcept(from: _container, forKeyIfPresent: .qualification)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try provider.encode(on: &_container, forKey: .provider)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
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
		    && qualification == _other.qualification
		    && responsible == _other.responsible
		    && role == _other.role
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(provider)
		hasher.combine(qualification)
		hasher.combine(responsible)
		hasher.combine(role)
		hasher.combine(sequence)
	}
}

/**
 List of Diagnosis.
 
 Ordered list of patient diagnosis for which care is sought.
 */
open class ExplanationOfBenefitDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Number to covey order of diagnosis
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Patient's diagnosis
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Package billing code
	public var packageCode: CodeableConcept?
	
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
							packageCode: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							type: [CodeableConcept]? = nil)
	{
		self.init(diagnosis: diagnosis, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageCode = packageCode
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
		case packageCode
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
		self.packageCode = try CodeableConcept(from: _container, forKeyIfPresent: .packageCode)
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
		
		try packageCode?.encode(on: &_container, forKey: .packageCode)
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
		    && packageCode == _other.packageCode
		    && sequence == _other.sequence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(diagnosis)
		hasher.combine(packageCode)
		hasher.combine(sequence)
		hasher.combine(type)
	}
}

/**
 Exceptions, special considerations, the condition, situation, prior or concurrent issues.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues. Often there are mutiple jurisdiction specific valuesets which are required.
 */
open class ExplanationOfBenefitInformation: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// General class of information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Additional Data or supporting information
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Reason associated with the information
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
							value: ValueX? = nil)
	{
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
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExplanationOfBenefitInformation else {
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
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
open class ExplanationOfBenefitInsurance: BackboneElement {
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							coverage: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							preAuthRef: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init()
		self.coverage = coverage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case preAuthRef; case _preAuthRef
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coverage?.encode(on: &_container, forKey: .coverage)
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
		    && preAuthRef == _other.preAuthRef
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverage)
		hasher.combine(preAuthRef)
	}
}

/**
 Goods and Services.
 
 First tier of goods and services.
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
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Applicable careteam members
	public var careTeamLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable diagnoses
	public var diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable procedures
	public var procedureLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable exception and supporting information
	public var informationLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Date or dates of Service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Place of service
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Service Location
	public var bodySite: CodeableConcept?
	
	/// Service Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Encounters related to this billed item
	public var encounter: [Reference]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
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
							bodySite: CodeableConcept? = nil,
							careTeamLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							category: CodeableConcept? = nil,
							detail: [ExplanationOfBenefitItemDetail]? = nil,
							diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							encounter: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							informationLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							location: LocationX? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							net: Money? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							procedureLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							programCode: [CodeableConcept]? = nil,
							quantity: Quantity? = nil,
							revenue: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: CodeableConcept? = nil,
							serviced: ServicedX? = nil,
							subSite: [CodeableConcept]? = nil,
							udi: [Reference]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(sequence: sequence)
		self.adjudication = adjudication
		self.bodySite = bodySite
		self.careTeamLinkId = careTeamLinkId
		self.category = category
		self.detail = detail
		self.diagnosisLinkId = diagnosisLinkId
		self.encounter = encounter
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.informationLinkId = informationLinkId
		self.location = location
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.procedureLinkId = procedureLinkId
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.service = service
		self.serviced = serviced
		self.subSite = subSite
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case bodySite
		case careTeamLinkId; case _careTeamLinkId
		case category
		case detail
		case diagnosisLinkId; case _diagnosisLinkId
		case encounter
		case factor; case _factor
		case informationLinkId; case _informationLinkId
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case net
		case noteNumber; case _noteNumber
		case procedureLinkId; case _procedureLinkId
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subSite
		case udi
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.careTeamLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.informationLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationLinkId, auxiliaryKey: ._informationLinkId)
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
		self.procedureLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureLinkId, auxiliaryKey: ._procedureLinkId)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
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
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
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
		try careTeamLinkId?.encode(on: &_container, forKey: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisLinkId?.encode(on: &_container, forKey: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try informationLinkId?.encode(on: &_container, forKey: .informationLinkId, auxiliaryKey: ._informationLinkId)
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
		try procedureLinkId?.encode(on: &_container, forKey: .procedureLinkId, auxiliaryKey: ._procedureLinkId)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
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
		    && careTeamLinkId == _other.careTeamLinkId
		    && category == _other.category
		    && detail == _other.detail
		    && diagnosisLinkId == _other.diagnosisLinkId
		    && encounter == _other.encounter
		    && factor == _other.factor
		    && informationLinkId == _other.informationLinkId
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && procedureLinkId == _other.procedureLinkId
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && service == _other.service
		    && serviced == _other.serviced
		    && subSite == _other.subSite
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(bodySite)
		hasher.combine(careTeamLinkId)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(diagnosisLinkId)
		hasher.combine(encounter)
		hasher.combine(factor)
		hasher.combine(informationLinkId)
		hasher.combine(location)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(procedureLinkId)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(serviced)
		hasher.combine(subSite)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Adjudication details.
 
 The adjudications results.
 */
open class ExplanationOfBenefitItemAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var category: CodeableConcept
	
	/// Explanation of Adjudication outcome
	public var reason: CodeableConcept?
	
	/// Monetary amount
	public var amount: Money?
	
	/// Non-monitory value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
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
							reason: CodeableConcept? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(category: category)
		self.amount = amount
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
		case reason
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try category.encode(on: &_container, forKey: .category)
		try reason?.encode(on: &_container, forKey: .reason)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
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
		    && reason == _other.reason
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(category)
		hasher.combine(reason)
		hasher.combine(value)
	}
}

/**
 Additional items.
 
 Second tier of goods and services.
 */
open class ExplanationOfBenefitItemDetail: BackboneElement {
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Group or type of product or service
	public var type: CodeableConcept
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total additional item cost
	public var net: Money?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Detail level adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Additional items
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>, type: CodeableConcept) {
		self.sequence = sequence
		self.type = type
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
							programCode: [CodeableConcept]? = nil,
							quantity: Quantity? = nil,
							revenue: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: CodeableConcept? = nil,
							subDetail: [ExplanationOfBenefitItemDetailSubDetail]? = nil,
							type: CodeableConcept,
							udi: [Reference]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(sequence: sequence, type: type)
		self.adjudication = adjudication
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.service = service
		self.subDetail = subDetail
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
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
		case subDetail
		case type
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.subDetail = try [ExplanationOfBenefitItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try type.encode(on: &_container, forKey: .type)
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
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && service == _other.service
		    && subDetail == _other.subDetail
		    && type == _other.type
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
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(subDetail)
		hasher.combine(type)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Additional items.
 
 Third tier of goods and services.
 */
open class ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Type of product or service
	public var type: CodeableConcept
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Net additional item cost
	public var net: Money?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Language if different from the resource
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>, type: CodeableConcept) {
		self.sequence = sequence
		self.type = type
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
							programCode: [CodeableConcept]? = nil,
							quantity: Quantity? = nil,
							revenue: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: CodeableConcept? = nil,
							type: CodeableConcept,
							udi: [Reference]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(sequence: sequence, type: type)
		self.adjudication = adjudication
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.service = service
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
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
		case type
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try type.encode(on: &_container, forKey: .type)
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
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && service == _other.service
		    && type == _other.type
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
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(type)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Party to be paid any benefits payable.
 
 The party to be reimbursed for the services.
 */
open class ExplanationOfBenefitPayee: BackboneElement {
	
	/// Type of party: Subscriber, Provider, other
	public var type: CodeableConcept?
	
	/// organization | patient | practitioner | relatedperson
	public var resourceType: CodeableConcept?
	
	/// Party to receive the payable
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
							resourceType: CodeableConcept? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.resourceType = resourceType
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case party
		case resourceType
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.resourceType = try CodeableConcept(from: _container, forKeyIfPresent: .resourceType)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try party?.encode(on: &_container, forKey: .party)
		try resourceType?.encode(on: &_container, forKey: .resourceType)
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
		    && resourceType == _other.resourceType
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(party)
		hasher.combine(resourceType)
		hasher.combine(type)
	}
}

/**
 Payment (if paid).
 
 Payment details for the claim if the claim has been paid.
 */
open class ExplanationOfBenefitPayment: BackboneElement {
	
	/// Partial or Complete
	public var type: CodeableConcept?
	
	/// Payment adjustment for non-Claim issues
	public var adjustment: Money?
	
	/// Explanation for the non-claim adjustment
	public var adjustmentReason: CodeableConcept?
	
	/// Expected date of Payment
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Payable amount after adjustment
	public var amount: Money?
	
	/// Identifier of the payment instrument
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
							type: CodeableConcept? = nil)
	{
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
 Procedures performed.
 
 Ordered list of patient procedures performed to support the adjudication.
 */
open class ExplanationOfBenefitProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Procedure sequence for reference
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Patient's list of procedures performed
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
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
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(procedure: procedure, sequence: sequence)
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case procedureCodeableConcept
		case procedureReference
		case sequence; case _sequence
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
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(procedure)
		hasher.combine(sequence)
	}
}

/**
 Processing notes.
 
 Note text.
 */
open class ExplanationOfBenefitProcessNote: BackboneElement {
	
	/// Sequence number for this note
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// display | print | printoper
	public var type: CodeableConcept?
	
	/// Note explanitory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Language if different from the resource
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
							type: CodeableConcept? = nil)
	{
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
 Related Claims which may be revelant to processing this claim.
 
 Other claims which are related to this claim such as prior claim versions or for related services.
 */
open class ExplanationOfBenefitRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// How the reference claim is related
	public var relationship: CodeableConcept?
	
	/// Related file or case reference
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
							relationship: CodeableConcept? = nil)
	{
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
