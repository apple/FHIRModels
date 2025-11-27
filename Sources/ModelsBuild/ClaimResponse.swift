//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
//  Copyright 2025 Apple Inc.
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
 Response to a claim predetermination or preauthorization.
 
 This resource provides the adjudication details from the processing of a Claim resource.
 */
open class ClaimResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .claimResponse }
	
	/// Business Identifier for a claim response
	public var identifier: [Identifier]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Reason for status change
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// More granular claim type
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
	
	/// The recipient(s) of the products and services
	public var subject: Reference
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Party responsible for reimbursement
	public var insurer: Reference?
	
	/// Party responsible for the claim
	public var requestor: Reference?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// The outcome of the claim, predetermination, or preauthorization processing.
	public var outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>
	
	/// Result of the adjudication
	public var decision: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Preauthorization reference effective period
	public var preAuthPeriod: Period?
	
	/// Event information
	public var event: [ClaimResponseEvent]?
	
	/// Party to be paid any benefits payable
	public var payeeType: CodeableConcept?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Package billing code
	public var diagnosisRelatedGroup: CodeableConcept?
	
	/// Supporting information
	public var supportingInfo: [ClaimResponseSupportingInfo]?
	
	/// Adjudication for claim line items
	public var item: [ClaimResponseItem]?
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Header-level adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Adjudication totals
	public var total: [ClaimResponseTotal]?
	
	/// Payment Details
	public var payment: ClaimResponsePayment?
	
	/// Funds reserved status
	public var fundsReserve: CodeableConcept?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Printed reference or actual form
	public var form: Attachment?
	
	/// Note concerning adjudication
	public var processNote: [ClaimResponseProcessNote]?
	
	/// Request for additional information
	public var communicationRequest: [Reference]?
	
	/// Patient insurance information
	public var insurance: [ClaimResponseInsurance]?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>, status: FHIRPrimitive<FinancialResourceStatusCodes>, subject: Reference, type: CodeableConcept, use: FHIRPrimitive<Use>) {
		self.created = created
		self.outcome = outcome
		self.status = status
		self.subject = subject
		self.type = type
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		addItem: [ClaimResponseAddItem]? = nil,
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		communicationRequest: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		decision: CodeableConcept? = nil,
		diagnosisRelatedGroup: CodeableConcept? = nil,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		encounter: [Reference]? = nil,
		error: [ClaimResponseError]? = nil,
		event: [ClaimResponseEvent]? = nil,
		`extension`: [Extension]? = nil,
		form: Attachment? = nil,
		formCode: CodeableConcept? = nil,
		fundsReserve: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [ClaimResponseInsurance]? = nil,
		insurer: Reference? = nil,
		item: [ClaimResponseItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: FHIRPrimitive<ClaimProcessingOutcomeCodes>,
		payeeType: CodeableConcept? = nil,
		payment: ClaimResponsePayment? = nil,
		preAuthPeriod: Period? = nil,
		preAuthRef: FHIRPrimitive<FHIRString>? = nil,
		processNote: [ClaimResponseProcessNote]? = nil,
		request: Reference? = nil,
		requestor: Reference? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		statusReason: FHIRPrimitive<FHIRString>? = nil,
		subType: CodeableConcept? = nil,
		subject: Reference,
		supportingInfo: [ClaimResponseSupportingInfo]? = nil,
		text: Narrative? = nil,
		total: [ClaimResponseTotal]? = nil,
		traceNumber: [Identifier]? = nil,
		type: CodeableConcept,
		use: FHIRPrimitive<Use>
	) {
		self.init(created: created, outcome: outcome, status: status, subject: subject, type: type, use: use)
		self.addItem = addItem
		self.adjudication = adjudication
		self.communicationRequest = communicationRequest
		self.contained = contained
		self.decision = decision
		self.diagnosisRelatedGroup = diagnosisRelatedGroup
		self.disposition = disposition
		self.encounter = encounter
		self.error = error
		self.event = event
		self.`extension` = `extension`
		self.form = form
		self.formCode = formCode
		self.fundsReserve = fundsReserve
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.payeeType = payeeType
		self.payment = payment
		self.preAuthPeriod = preAuthPeriod
		self.preAuthRef = preAuthRef
		self.processNote = processNote
		self.request = request
		self.requestor = requestor
		self.statusReason = statusReason
		self.subType = subType
		self.supportingInfo = supportingInfo
		self.text = text
		self.total = total
		self.traceNumber = traceNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case addItem
		case adjudication
		case communicationRequest
		case created; case _created
		case decision
		case diagnosisRelatedGroup
		case disposition; case _disposition
		case encounter
		case error
		case event
		case form
		case formCode
		case fundsReserve
		case identifier
		case insurance
		case insurer
		case item
		case outcome; case _outcome
		case payeeType
		case payment
		case preAuthPeriod
		case preAuthRef; case _preAuthRef
		case processNote
		case request
		case requestor
		case status; case _status
		case statusReason; case _statusReason
		case subType
		case subject
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
		self.addItem = try [ClaimResponseAddItem](from: _container, forKeyIfPresent: .addItem)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.communicationRequest = try [Reference](from: _container, forKeyIfPresent: .communicationRequest)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.diagnosisRelatedGroup = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisRelatedGroup)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.event = try [ClaimResponseEvent](from: _container, forKeyIfPresent: .event)
		self.form = try Attachment(from: _container, forKeyIfPresent: .form)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [ClaimResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
		self.outcome = try FHIRPrimitive<ClaimProcessingOutcomeCodes>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.payeeType = try CodeableConcept(from: _container, forKeyIfPresent: .payeeType)
		self.payment = try ClaimResponsePayment(from: _container, forKeyIfPresent: .payment)
		self.preAuthPeriod = try Period(from: _container, forKeyIfPresent: .preAuthPeriod)
		self.preAuthRef = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.processNote = try [ClaimResponseProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [ClaimResponseSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		self.total = try [ClaimResponseTotal](from: _container, forKeyIfPresent: .total)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try addItem?.encode(on: &_container, forKey: .addItem)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try communicationRequest?.encode(on: &_container, forKey: .communicationRequest)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try decision?.encode(on: &_container, forKey: .decision)
		try diagnosisRelatedGroup?.encode(on: &_container, forKey: .diagnosisRelatedGroup)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try error?.encode(on: &_container, forKey: .error)
		try event?.encode(on: &_container, forKey: .event)
		try form?.encode(on: &_container, forKey: .form)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try payeeType?.encode(on: &_container, forKey: .payeeType)
		try payment?.encode(on: &_container, forKey: .payment)
		try preAuthPeriod?.encode(on: &_container, forKey: .preAuthPeriod)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try request?.encode(on: &_container, forKey: .request)
		try requestor?.encode(on: &_container, forKey: .requestor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try subType?.encode(on: &_container, forKey: .subType)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try total?.encode(on: &_container, forKey: .total)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try type.encode(on: &_container, forKey: .type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return addItem == _other.addItem
		    && adjudication == _other.adjudication
		    && communicationRequest == _other.communicationRequest
		    && created == _other.created
		    && decision == _other.decision
		    && diagnosisRelatedGroup == _other.diagnosisRelatedGroup
		    && disposition == _other.disposition
		    && encounter == _other.encounter
		    && error == _other.error
		    && event == _other.event
		    && form == _other.form
		    && formCode == _other.formCode
		    && fundsReserve == _other.fundsReserve
		    && identifier == _other.identifier
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && outcome == _other.outcome
		    && payeeType == _other.payeeType
		    && payment == _other.payment
		    && preAuthPeriod == _other.preAuthPeriod
		    && preAuthRef == _other.preAuthRef
		    && processNote == _other.processNote
		    && request == _other.request
		    && requestor == _other.requestor
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subType == _other.subType
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
		    && total == _other.total
		    && traceNumber == _other.traceNumber
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(addItem)
		hasher.combine(adjudication)
		hasher.combine(communicationRequest)
		hasher.combine(created)
		hasher.combine(decision)
		hasher.combine(diagnosisRelatedGroup)
		hasher.combine(disposition)
		hasher.combine(encounter)
		hasher.combine(error)
		hasher.combine(event)
		hasher.combine(form)
		hasher.combine(formCode)
		hasher.combine(fundsReserve)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(outcome)
		hasher.combine(payeeType)
		hasher.combine(payment)
		hasher.combine(preAuthPeriod)
		hasher.combine(preAuthRef)
		hasher.combine(processNote)
		hasher.combine(request)
		hasher.combine(requestor)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subType)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
		hasher.combine(total)
		hasher.combine(traceNumber)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 Insurer added line items.
 
 The first-tier service adjudications for payer added product or service lines.
 */
open class ClaimResponseAddItem: BackboneElement {
	
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
	public var subdetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// The recipient of the products and services
	public var subject: Reference?
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Authorized providers
	public var provider: [Reference]?
	
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
	public var bodySite: [ClaimResponseAddItemBodySite]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items adjudication results
	public var reviewOutcome: ClaimResponseItemReviewOutcome?
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Insurer added line details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		bodySite: [ClaimResponseAddItemBodySite]? = nil,
		category: CodeableConcept? = nil,
		detail: [ClaimResponseAddItemDetail]? = nil,
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
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		provider: [Reference]? = nil,
		quantity: Quantity? = nil,
		request: [Reference]? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ClaimResponseItemReviewOutcome? = nil,
		serviced: ServicedX? = nil,
		subdetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		subject: Reference? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		unitPrice: Money? = nil
	) {
		self.init()
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
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.provider = provider
		self.quantity = quantity
		self.request = request
		self.revenue = revenue
		self.reviewOutcome = reviewOutcome
		self.serviced = serviced
		self.subdetailSequence = subdetailSequence
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
		case factor; case _factor
		case informationSequence; case _informationSequence
		case itemSequence; case _itemSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case net
		case noteNumber; case _noteNumber
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
		case subdetailSequence; case _subdetailSequence
		case subject
		case tax
		case traceNumber
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.bodySite = try [ClaimResponseAddItemBodySite](from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.detailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
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
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.provider = try [Reference](from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ClaimResponseItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
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
		self.subdetailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .subdetailSequence, auxiliaryKey: ._subdetailSequence)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
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
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try detailSequence?.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
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
		try subdetailSequence?.encode(on: &_container, forKey: .subdetailSequence, auxiliaryKey: ._subdetailSequence)
		try subject?.encode(on: &_container, forKey: .subject)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseAddItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && detail == _other.detail
		    && detailSequence == _other.detailSequence
		    && factor == _other.factor
		    && informationSequence == _other.informationSequence
		    && itemSequence == _other.itemSequence
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && provider == _other.provider
		    && quantity == _other.quantity
		    && request == _other.request
		    && revenue == _other.revenue
		    && reviewOutcome == _other.reviewOutcome
		    && serviced == _other.serviced
		    && subdetailSequence == _other.subdetailSequence
		    && subject == _other.subject
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(detailSequence)
		hasher.combine(factor)
		hasher.combine(informationSequence)
		hasher.combine(itemSequence)
		hasher.combine(location)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(noteNumber)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(provider)
		hasher.combine(quantity)
		hasher.combine(request)
		hasher.combine(revenue)
		hasher.combine(reviewOutcome)
		hasher.combine(serviced)
		hasher.combine(subdetailSequence)
		hasher.combine(subject)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(unitPrice)
	}
}

/**
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
open class ClaimResponseAddItemBodySite: BackboneElement {
	
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
		guard let _other = _other as? ClaimResponseAddItemBodySite else {
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
 Insurer added line details.
 
 The second-tier service adjudications for payer added services.
 */
open class ClaimResponseAddItemDetail: BackboneElement {
	
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
	
	/// Added items detail level adjudication results
	public var reviewOutcome: ClaimResponseItemReviewOutcome?
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Insurer added line items
	public var subDetail: [ClaimResponseAddItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ClaimResponseItemReviewOutcome? = nil,
		subDetail: [ClaimResponseAddItemDetailSubDetail]? = nil,
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ClaimResponseItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.subDetail = try [ClaimResponseAddItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
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
		guard let _other = _other as? ClaimResponseAddItemDetail else {
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
 
 The third-tier service adjudications for payer added services.
 */
open class ClaimResponseAddItemDetailSubDetail: BackboneElement {
	
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
	
	/// Added items subdetail level adjudication results
	public var reviewOutcome: ClaimResponseItemReviewOutcome?
	
	/// Added items subdetail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		reviewOutcome: ClaimResponseItemReviewOutcome? = nil,
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.reviewOutcome = try ClaimResponseItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
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
		guard let _other = _other as? ClaimResponseAddItemDetailSubDetail else {
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
 Processing errors.
 
 Errors encountered during the processing of the adjudication.
 */
open class ClaimResponseError: BackboneElement {
	
	/// Item sequence number
	public var itemSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Detail sequence number
	public var detailSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Subdetail sequence number
	public var subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Error code detailing processing issues
	public var code: CodeableConcept
	
	/// FHIRPath of element(s) related to issue
	public var expression: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		detailSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		expression: [FHIRPrimitive<FHIRString>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		itemSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.init(code: code)
		self.detailSequence = detailSequence
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.itemSequence = itemSequence
		self.modifierExtension = modifierExtension
		self.subDetailSequence = subDetailSequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detailSequence; case _detailSequence
		case expression; case _expression
		case itemSequence; case _itemSequence
		case subDetailSequence; case _subDetailSequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.detailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
		self.expression = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.itemSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .itemSequence, auxiliaryKey: ._itemSequence)
		self.subDetailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try detailSequence?.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try itemSequence?.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		try subDetailSequence?.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseError else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && detailSequence == _other.detailSequence
		    && expression == _other.expression
		    && itemSequence == _other.itemSequence
		    && subDetailSequence == _other.subDetailSequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detailSequence)
		hasher.combine(expression)
		hasher.combine(itemSequence)
		hasher.combine(subDetailSequence)
	}
}

/**
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
open class ClaimResponseEvent: BackboneElement {
	
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
		guard let _other = _other as? ClaimResponseEvent else {
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
open class ClaimResponseInsurance: BackboneElement {
	
	/// Insurance instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Coverage to be used for adjudication
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional provider contract number
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference, focal: FHIRPrimitive<FHIRBool>, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.coverage = coverage
		self.focal = focal
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		businessArrangement: FHIRPrimitive<FHIRString>? = nil,
		claimResponse: Reference? = nil,
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.init(coverage: coverage, focal: focal, sequence: sequence)
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case focal; case _focal
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .focal, auxiliaryKey: ._focal)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try coverage.encode(on: &_container, forKey: .coverage)
		try focal.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseInsurance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return businessArrangement == _other.businessArrangement
		    && claimResponse == _other.claimResponse
		    && coverage == _other.coverage
		    && focal == _other.focal
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(claimResponse)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(sequence)
	}
}

/**
 Adjudication for claim line items.
 
 A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups
 of sub-details.
 */
open class ClaimResponseItem: BackboneElement {
	
	/// Claim item instance identifier
	public var itemSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Adjudication results
	public var reviewOutcome: ClaimResponseItemReviewOutcome?
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Adjudication for claim details
	public var detail: [ClaimResponseItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(itemSequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.itemSequence = itemSequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		detail: [ClaimResponseItemDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		itemSequence: FHIRPrimitive<FHIRPositiveInteger>,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		reviewOutcome: ClaimResponseItemReviewOutcome? = nil,
		traceNumber: [Identifier]? = nil
	) {
		self.init(itemSequence: itemSequence)
		self.adjudication = adjudication
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.informationSequence = informationSequence
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.reviewOutcome = reviewOutcome
		self.traceNumber = traceNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detail
		case informationSequence; case _informationSequence
		case itemSequence; case _itemSequence
		case noteNumber; case _noteNumber
		case reviewOutcome
		case traceNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.detail = try [ClaimResponseItemDetail](from: _container, forKeyIfPresent: .detail)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
		self.itemSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.reviewOutcome = try ClaimResponseItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
		try itemSequence.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && detail == _other.detail
		    && informationSequence == _other.informationSequence
		    && itemSequence == _other.itemSequence
		    && noteNumber == _other.noteNumber
		    && reviewOutcome == _other.reviewOutcome
		    && traceNumber == _other.traceNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(detail)
		hasher.combine(informationSequence)
		hasher.combine(itemSequence)
		hasher.combine(noteNumber)
		hasher.combine(reviewOutcome)
		hasher.combine(traceNumber)
	}
}

/**
 Adjudication details.
 
 If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a
 simple product or service then this is the result of the adjudication of this item.
 */
open class ClaimResponseItemAdjudication: BackboneElement {
	
	/// Type of adjudication information
	public var category: CodeableConcept
	
	/// Explanation of adjudication outcome
	public var reason: CodeableConcept?
	
	/// Monetary amount
	public var amount: Money?
	
	/// Non-monetary value
	public var quantity: Quantity?
	
	/// When was adjudication performed
	public var decisionDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept) {
		self.category = category
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Money? = nil,
		category: CodeableConcept,
		decisionDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		reason: CodeableConcept? = nil
	) {
		self.init(category: category)
		self.amount = amount
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
		case quantity
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.decisionDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .decisionDate, auxiliaryKey: ._decisionDate)
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
		try decisionDate?.encode(on: &_container, forKey: .decisionDate, auxiliaryKey: ._decisionDate)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseItemAdjudication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && category == _other.category
		    && decisionDate == _other.decisionDate
		    && quantity == _other.quantity
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(category)
		hasher.combine(decisionDate)
		hasher.combine(quantity)
		hasher.combine(reason)
	}
}

/**
 Adjudication for claim details.
 
 A claim detail. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
open class ClaimResponseItemDetail: BackboneElement {
	
	/// Claim detail instance identifier
	public var detailSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Detail level adjudication results
	public var reviewOutcome: ClaimResponseItemReviewOutcome?
	
	/// Detail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Adjudication for claim sub-details
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(detailSequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.detailSequence = detailSequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		detailSequence: FHIRPrimitive<FHIRPositiveInteger>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		reviewOutcome: ClaimResponseItemReviewOutcome? = nil,
		subDetail: [ClaimResponseItemDetailSubDetail]? = nil,
		traceNumber: [Identifier]? = nil
	) {
		self.init(detailSequence: detailSequence)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.reviewOutcome = reviewOutcome
		self.subDetail = subDetail
		self.traceNumber = traceNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detailSequence; case _detailSequence
		case noteNumber; case _noteNumber
		case reviewOutcome
		case subDetail
		case traceNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.detailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.reviewOutcome = try ClaimResponseItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.subDetail = try [ClaimResponseItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try detailSequence.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseItemDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && detailSequence == _other.detailSequence
		    && noteNumber == _other.noteNumber
		    && reviewOutcome == _other.reviewOutcome
		    && subDetail == _other.subDetail
		    && traceNumber == _other.traceNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(detailSequence)
		hasher.combine(noteNumber)
		hasher.combine(reviewOutcome)
		hasher.combine(subDetail)
		hasher.combine(traceNumber)
	}
}

/**
 Adjudication for claim sub-details.
 
 A sub-detail adjudication of a simple product or service.
 */
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Claim sub-detail instance identifier
	public var subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Subdetail level adjudication results
	public var reviewOutcome: ClaimResponseItemReviewOutcome?
	
	/// Subdetail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Designated initializer taking all required properties
	public init(subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.subDetailSequence = subDetailSequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		reviewOutcome: ClaimResponseItemReviewOutcome? = nil,
		subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>,
		traceNumber: [Identifier]? = nil
	) {
		self.init(subDetailSequence: subDetailSequence)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.reviewOutcome = reviewOutcome
		self.traceNumber = traceNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case noteNumber; case _noteNumber
		case reviewOutcome
		case subDetailSequence; case _subDetailSequence
		case traceNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.reviewOutcome = try ClaimResponseItemReviewOutcome(from: _container, forKeyIfPresent: .reviewOutcome)
		self.subDetailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try reviewOutcome?.encode(on: &_container, forKey: .reviewOutcome)
		try subDetailSequence.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseItemDetailSubDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adjudication == _other.adjudication
		    && noteNumber == _other.noteNumber
		    && reviewOutcome == _other.reviewOutcome
		    && subDetailSequence == _other.subDetailSequence
		    && traceNumber == _other.traceNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(noteNumber)
		hasher.combine(reviewOutcome)
		hasher.combine(subDetailSequence)
		hasher.combine(traceNumber)
	}
}

/**
 Adjudication results.
 
 The high-level results of the adjudication if adjudication has been performed.
 */
open class ClaimResponseItemReviewOutcome: BackboneElement {
	
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
		guard let _other = _other as? ClaimResponseItemReviewOutcome else {
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
 Payment Details.
 
 Payment details for the adjudication of the claim.
 */
open class ClaimResponsePayment: BackboneElement {
	
	/// Partial or complete payment
	public var type: CodeableConcept
	
	/// Payment adjustment for non-claim issues
	public var adjustment: Money?
	
	/// Explanation for the adjustment
	public var adjustmentReason: CodeableConcept?
	
	/// Expected date of payment
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Payable amount after adjustment
	public var amount: Money
	
	/// Business identifier for the payment
	public var identifier: Identifier?
	
	/// Designated initializer taking all required properties
	public init(amount: Money, type: CodeableConcept) {
		self.amount = amount
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adjustment: Money? = nil,
		adjustmentReason: CodeableConcept? = nil,
		amount: Money,
		date: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.init(amount: amount, type: type)
		self.adjustment = adjustment
		self.adjustmentReason = adjustmentReason
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
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
		self.amount = try Money(from: _container, forKey: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjustment?.encode(on: &_container, forKey: .adjustment)
		try adjustmentReason?.encode(on: &_container, forKey: .adjustmentReason)
		try amount.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponsePayment else {
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
 Note concerning adjudication.
 
 A note that describes or explains adjudication results in a human readable form.
 */
open class ClaimResponseProcessNote: BackboneElement {
	
	/// Business kind of note
	public var `class`: CodeableConcept?
	
	/// Note instance identifier
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Note purpose
	public var type: CodeableConcept?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>
	
	/// Language of the text
	public var language: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(text: FHIRPrimitive<FHIRString>) {
		self.text = text
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`class`: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>,
		type: CodeableConcept? = nil
	) {
		self.init(text: text)
		self.`class` = `class`
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.number = number
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `class` = "class"
		case language
		case number; case _number
		case text; case _text
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.`class` = try CodeableConcept(from: _container, forKeyIfPresent: .`class`)
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try `class`?.encode(on: &_container, forKey: .`class`)
		try language?.encode(on: &_container, forKey: .language)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseProcessNote else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return `class` == _other.`class`
		    && language == _other.language
		    && number == _other.number
		    && text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`class`)
		hasher.combine(language)
		hasher.combine(number)
		hasher.combine(text)
		hasher.combine(type)
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
open class ClaimResponseSupportingInfo: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case availability(Availability)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case codeableReference(CodeableReference)
		case coding(Coding)
		case contactDetail(ContactDetail)
		case contactPoint(ContactPoint)
		case count(Count)
		case dataRequirement(DataRequirement)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case dosage(Dosage)
		case duration(Duration)
		case expression(Expression)
		case extendedContactDetail(ExtendedContactDetail)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case integer64(FHIRInteger64)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case parameterDefinition(ParameterDefinition)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case ratioRange(RatioRange)
		case reference(Reference)
		case relatedArtifact(RelatedArtifact)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case triggerDefinition(TriggerDefinition)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
		case url(FHIRPrimitive<FHIRURI>)
		case usageContext(UsageContext)
		case uuid(FHIRPrimitive<FHIRURI>)
		case virtualServiceDetail(VirtualServiceDetail)
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
	public var reason: CodeableConcept?
	
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
		reason: CodeableConcept? = nil,
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		var _t_timing: TimingX? = nil
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
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
		self.timing = _t_timing
		var _t_value: ValueX? = nil
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
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
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
		if let valueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueOid, auxiliaryKey: ._valueOid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueOid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .oid(valueOid)
		}
		if let valuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePositiveInt, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .positiveInt(valuePositiveInt)
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
		if let valueUuid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUuid, auxiliaryKey: ._valueUuid) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUuid, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uuid(valueUuid)
		}
		if let valueAddress = try Address(from: _container, forKeyIfPresent: .valueAddress) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAddress, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
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
		if let valueDistance = try Distance(from: _container, forKeyIfPresent: .valueDistance) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDistance, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .distance(valueDistance)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valueHumanName = try HumanName(from: _container, forKeyIfPresent: .valueHumanName) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueHumanName, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .humanName(valueHumanName)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
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
		if let valueTiming = try Timing(from: _container, forKeyIfPresent: .valueTiming) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTiming, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .timing(valueTiming)
		}
		if let valueContactDetail = try ContactDetail(from: _container, forKeyIfPresent: .valueContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .contactDetail(valueContactDetail)
		}
		if let valueDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .valueDataRequirement) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDataRequirement, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dataRequirement(valueDataRequirement)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		if let valueParameterDefinition = try ParameterDefinition(from: _container, forKeyIfPresent: .valueParameterDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueParameterDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .parameterDefinition(valueParameterDefinition)
		}
		if let valueRelatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .valueRelatedArtifact) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRelatedArtifact, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .relatedArtifact(valueRelatedArtifact)
		}
		if let valueTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .valueTriggerDefinition) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .triggerDefinition(valueTriggerDefinition)
		}
		if let valueUsageContext = try UsageContext(from: _container, forKeyIfPresent: .valueUsageContext) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUsageContext, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .usageContext(valueUsageContext)
		}
		if let valueAvailability = try Availability(from: _container, forKeyIfPresent: .valueAvailability) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAvailability, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .availability(valueAvailability)
		}
		if let valueExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .valueExtendedContactDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .extendedContactDetail(valueExtendedContactDetail)
		}
		if let valueVirtualServiceDetail = try VirtualServiceDetail(from: _container, forKeyIfPresent: .valueVirtualServiceDetail) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueVirtualServiceDetail, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .virtualServiceDetail(valueVirtualServiceDetail)
		}
		if let valueDosage = try Dosage(from: _container, forKeyIfPresent: .valueDosage) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDosage, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dosage(valueDosage)
		}
		if let valueMeta = try Meta(from: _container, forKeyIfPresent: .valueMeta) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMeta, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .meta(valueMeta)
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
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .integer64(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger64)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .valueOid, auxiliaryKey: ._valueOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .valuePositiveInt, auxiliaryKey: ._valuePositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .valueUnsignedInt, auxiliaryKey: ._valueUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .url(let _value):
				try _value.encode(on: &_container, forKey: .valueUrl, auxiliaryKey: ._valueUrl)
			case .uuid(let _value):
				try _value.encode(on: &_container, forKey: .valueUuid, auxiliaryKey: ._valueUuid)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .valueAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .valueAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .valueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .codeableReference(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableReference)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .valueContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .valueCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .valueDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .valueHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .valueIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .valueMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
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
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .valueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .valueSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .valueTiming)
			case .contactDetail(let _value):
				try _value.encode(on: &_container, forKey: .valueContactDetail)
			case .dataRequirement(let _value):
				try _value.encode(on: &_container, forKey: .valueDataRequirement)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .valueExpression)
			case .parameterDefinition(let _value):
				try _value.encode(on: &_container, forKey: .valueParameterDefinition)
			case .relatedArtifact(let _value):
				try _value.encode(on: &_container, forKey: .valueRelatedArtifact)
			case .triggerDefinition(let _value):
				try _value.encode(on: &_container, forKey: .valueTriggerDefinition)
			case .usageContext(let _value):
				try _value.encode(on: &_container, forKey: .valueUsageContext)
			case .availability(let _value):
				try _value.encode(on: &_container, forKey: .valueAvailability)
			case .extendedContactDetail(let _value):
				try _value.encode(on: &_container, forKey: .valueExtendedContactDetail)
			case .virtualServiceDetail(let _value):
				try _value.encode(on: &_container, forKey: .valueVirtualServiceDetail)
			case .dosage(let _value):
				try _value.encode(on: &_container, forKey: .valueDosage)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .valueMeta)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseSupportingInfo else {
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
open class ClaimResponseTotal: BackboneElement {
	
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
		guard let _other = _other as? ClaimResponseTotal else {
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
