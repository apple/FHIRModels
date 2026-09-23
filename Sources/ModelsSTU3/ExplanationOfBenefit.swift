//
//  ExplanationOfBenefit.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit)
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
	
	/// Details of an accident
	public var accident: ExplanationOfBenefitAccident?
	
	/// Insurer added line items
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Balance by Benefit Category
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// Period for charge submission
	public var billablePeriod: Period?
	
	/// Care Team members
	public var careTeam: [ExplanationOfBenefitCareTeam]?
	
	/// Claim reference
	public var claim: Reference?
	
	/// Claim response reference
	public var claimResponse: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// List of Diagnosis
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Period unable to work
	public var employmentImpacted: Period?
	
	/// Author
	public var enterer: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Period in hospital
	public var hospitalization: Period?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues
	public var information: [ExplanationOfBenefitInformation]?
	
	/// Insurance or medical plan
	public var insurance: ExplanationOfBenefitInsurance?
	
	/// Insurer responsible for the EOB
	public var insurer: Reference?
	
	/// Goods and Services
	public var item: [ExplanationOfBenefitItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Responsible organization for the claim
	public var organization: Reference?
	
	/// Original prescription if superceded by fulfiller
	public var originalPrescription: Reference?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Party to be paid any benefits payable
	public var payee: ExplanationOfBenefitPayee?
	
	/// Payment (if paid)
	public var payment: ExplanationOfBenefitPayment?
	
	/// Precedence (primary, secondary, etc.)
	public var precedence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Prescription authorizing services or products
	public var prescription: Reference?
	
	/// Procedures performed
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Processing notes
	public var processNote: [ExplanationOfBenefitProcessNote]?
	
	/// Responsible provider for the claim
	public var provider: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Related Claims which may be revelant to processing this claim
	public var related: [ExplanationOfBenefitRelated]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ExplanationOfBenefitStatus>?
	
	/// Finer grained claim type information
	public var subType: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim
	public var totalCost: Money?
	
	/// Type or discipline
	public var type: CodeableConcept?
	
	/// Unallocated deductable
	public var unallocDeductable: Money?
	
	/// Designated initializer
	public init(
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
		unallocDeductable: Money? = nil
	) {
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
		case resourceType
		case accident
		case addItem
		case benefitBalance
		case billablePeriod
		case careTeam
		case claim
		case claimResponse
		case contained
		case created; case _created
		case diagnosis
		case disposition; case _disposition
		case employmentImpacted
		case enterer
		case `extension` = "extension"
		case facility
		case form
		case hospitalization
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case information
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
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
		case text
		case totalBenefit
		case totalCost
		case type
		case unallocDeductable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accident = try ExplanationOfBenefitAccident(from: _container, forKeyIfPresent: .accident)
		self.addItem = try [ExplanationOfBenefitAddItem](from: _container, forKeyIfPresent: .addItem)
		self.benefitBalance = try [ExplanationOfBenefitBenefitBalance](from: _container, forKeyIfPresent: .benefitBalance)
		self.billablePeriod = try Period(from: _container, forKeyIfPresent: .billablePeriod)
		self.careTeam = try [ExplanationOfBenefitCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ExplanationOfBenefitDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.employmentImpacted = try Period(from: _container, forKeyIfPresent: .employmentImpacted)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.hospitalization = try Period(from: _container, forKeyIfPresent: .hospitalization)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.information = try [ExplanationOfBenefitInformation](from: _container, forKeyIfPresent: .information)
		self.insurance = try ExplanationOfBenefitInsurance(from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ExplanationOfBenefitItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.totalBenefit = try Money(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Money(from: _container, forKeyIfPresent: .totalCost)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.unallocDeductable = try Money(from: _container, forKeyIfPresent: .unallocDeductable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accident?.encode(on: &_container, forKey: .accident)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try benefitBalance?.encode(on: &_container, forKey: .benefitBalance)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try claim?.encode(on: &_container, forKey: .claim)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try contained?.encode(on: &_container, forKey: .contained)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try employmentImpacted?.encode(on: &_container, forKey: .employmentImpacted)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try form?.encode(on: &_container, forKey: .form)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try information?.encode(on: &_container, forKey: .information)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try totalBenefit?.encode(on: &_container, forKey: .totalBenefit)
		try totalCost?.encode(on: &_container, forKey: .totalCost)
		try type?.encode(on: &_container, forKey: .type)
		try unallocDeductable?.encode(on: &_container, forKey: .unallocDeductable)
	}
}

/**
 Details of an accident.
 
 An accident which resulted in the need for healthcare services.
 */
public struct ExplanationOfBenefitAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case reference(Reference)
	}
	
	/// When the accident occurred
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Accident Place
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Extensions that cannot be ignored
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
 
 The first tier service adjudications for payor added services.
 */
public struct ExplanationOfBenefitAddItem: BackboneElement {
	
	/// Added items adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Added items details
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instances
	public var sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		service: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case fee
		case id; case _id
		case modifier
		case modifierExtension
		case noteNumber; case _noteNumber
		case revenue
		case sequenceLinkId; case _sequenceLinkId
		case service
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fee = try Money(from: _container, forKeyIfPresent: .fee)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequenceLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fee?.encode(on: &_container, forKey: .fee)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequenceLinkId?.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try service?.encode(on: &_container, forKey: .service)
	}
}

/**
 Added items details.
 
 The second tier service adjudications for payor added services.
 */
public struct ExplanationOfBenefitAddItemDetail: BackboneElement {
	
	/// Added items detail adjudication
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Designated initializer
	public init(
		adjudication: [ExplanationOfBenefitItemAdjudication]? = nil,
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		fee: Money? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		revenue: CodeableConcept? = nil,
		service: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case fee
		case id; case _id
		case modifier
		case modifierExtension
		case noteNumber; case _noteNumber
		case revenue
		case service
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fee = try Money(from: _container, forKeyIfPresent: .fee)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fee?.encode(on: &_container, forKey: .fee)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try service?.encode(on: &_container, forKey: .service)
	}
}

/**
 Balance by Benefit Category.
 */
public struct ExplanationOfBenefitBenefitBalance: BackboneElement {
	
	/// Type of services covered
	public var category: CodeableConcept
	
	/// Description of the benefit or services covered
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Excluded from the plan
	public var excluded: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Benefit Summary
	public var financial: [ExplanationOfBenefitBenefitBalanceFinancial]?
	
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
		financial: [ExplanationOfBenefitBenefitBalanceFinancial]? = nil,
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
		self.financial = try [ExplanationOfBenefitBenefitBalanceFinancial](from: _container, forKeyIfPresent: .financial)
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

/**
 Care Team members.
 
 The members of the team who provided the overall service as well as their role and whether responsible and
 qualifications.
 */
public struct ExplanationOfBenefitCareTeam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Member of the Care Team
	public var provider: Reference
	
	/// Type, classification or Specialization
	public var qualification: CodeableConcept?
	
	/// Billing practitioner
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Role on the team
	public var role: CodeableConcept?
	
	/// Number to covey order of careteam
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
 List of Diagnosis.
 
 Ordered list of patient diagnosis for which care is sought.
 */
public struct ExplanationOfBenefitDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Patient's diagnosis
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Package billing code
	public var packageCode: CodeableConcept?
	
	/// Number to covey order of diagnosis
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		diagnosis: DiagnosisX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		packageCode: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
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
 Exceptions, special considerations, the condition, situation, prior or concurrent issues.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues. Often there are mutiple jurisdiction specific valuesets which are required.
 */
public struct ExplanationOfBenefitInformation: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// General class of information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reason associated with the information
	public var reason: Coding?
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Additional Data or supporting information
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
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public struct ExplanationOfBenefitInsurance: BackboneElement {
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		coverage: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.coverage = coverage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case preAuthRef; case _preAuthRef
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
	}
}

/**
 Goods and Services.
 
 First tier of goods and services.
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
	
	/// Service Location
	public var bodySite: CodeableConcept?
	
	/// Applicable careteam members
	public var careTeamLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional items
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Applicable diagnoses
	public var diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Encounters related to this billed item
	public var encounter: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Applicable exception and supporting information
	public var informationLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Place of service
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable procedures
	public var procedureLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Date or dates of Service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Service Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
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
		unitPrice: Money? = nil
	) {
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
		self.sequence = sequence
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
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case informationLinkId; case _informationLinkId
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ExplanationOfBenefitItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.careTeamLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ExplanationOfBenefitItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.informationLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationLinkId, auxiliaryKey: ._informationLinkId)
		self.location = try Self._decodeLocation(from: _container)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.procedureLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureLinkId, auxiliaryKey: ._procedureLinkId)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
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
		try careTeamLinkId?.encode(on: &_container, forKey: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisLinkId?.encode(on: &_container, forKey: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try informationLinkId?.encode(on: &_container, forKey: .informationLinkId, auxiliaryKey: ._informationLinkId)
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
 
 The adjudications results.
 */
public struct ExplanationOfBenefitItemAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var category: CodeableConcept
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Explanation of Adjudication outcome
	public var reason: CodeableConcept?
	
	/// Non-monitory value
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
 
 Second tier of goods and services.
 */
public struct ExplanationOfBenefitItemDetail: BackboneElement {
	
	/// Detail level adjudication details
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total additional item cost
	public var net: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Additional items
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Group or type of product or service
	public var type: CodeableConcept
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point
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
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		service: CodeableConcept? = nil,
		subDetail: [ExplanationOfBenefitItemDetailSubDetail]? = nil,
		type: CodeableConcept,
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
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.service = service
		self.subDetail = subDetail
		self.type = type
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.subDetail = try [ExplanationOfBenefitItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try type.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Additional items.
 
 Third tier of goods and services.
 */
public struct ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	
	/// Language if different from the resource
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Net additional item cost
	public var net: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Type of product or service
	public var type: CodeableConcept
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point
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
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		service: CodeableConcept? = nil,
		type: CodeableConcept,
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
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.service = service
		self.type = type
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try type.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Party to be paid any benefits payable.
 
 The party to be reimbursed for the services.
 */
public struct ExplanationOfBenefitPayee: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Party to receive the payable
	public var party: Reference?
	
	/// organization | patient | practitioner | relatedperson
	public var resourceType: CodeableConcept?
	
	/// Type of party: Subscriber, Provider, other
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		resourceType: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.resourceType = resourceType
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case party
		case resourceType
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
		self.resourceType = try CodeableConcept(from: _container, forKeyIfPresent: .resourceType)
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
		try resourceType?.encode(on: &_container, forKey: .resourceType)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Payment (if paid).
 
 Payment details for the claim if the claim has been paid.
 */
public struct ExplanationOfBenefitPayment: BackboneElement {
	
	/// Payment adjustment for non-Claim issues
	public var adjustment: Money?
	
	/// Explanation for the non-claim adjustment
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment
	public var amount: Money?
	
	/// Expected date of Payment
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier of the payment instrument
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Partial or Complete
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
 Procedures performed.
 
 Ordered list of patient procedures performed to support the adjudication.
 */
public struct ExplanationOfBenefitProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient's list of procedures performed
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
	/// Procedure sequence for reference
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: ProcedureX,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.sequence = sequence
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
 Processing notes.
 
 Note text.
 */
public struct ExplanationOfBenefitProcessNote: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Language if different from the resource
	public var language: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Sequence number for this note
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Note explanitory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// display | print | printoper
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
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
		case type
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
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
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
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Related Claims which may be revelant to processing this claim.
 
 Other claims which are related to this claim such as prior claim versions or for related services.
 */
public struct ExplanationOfBenefitRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Related file or case reference
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
