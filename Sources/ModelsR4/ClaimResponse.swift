//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
 Response to a claim predetermination or preauthorization.
 
 This resource provides the adjudication details from the processing of a Claim resource.
 */
open class ClaimResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .claimResponse }
	
	/// Business Identifier for a claim response
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// More granular claim type
	public var type: CodeableConcept
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// A code to indicate whether the nature of the request is: to request adjudication of products and services
	/// previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the
	/// non-binding adjudication of the listed products and services which could be provided in the future.
	public var use: FHIRPrimitive<Use>
	
	/// The recipient of the products and services
	public var patient: Reference
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Party responsible for reimbursement
	public var insurer: Reference
	
	/// Party responsible for the claim
	public var requestor: Reference?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// The outcome of the claim, predetermination, or preauthorization processing.
	public var outcome: FHIRPrimitive<ClaimProcessingCodes>
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Preauthorization reference effective period
	public var preAuthPeriod: Period?
	
	/// Party to be paid any benefits payable
	public var payeeType: CodeableConcept?
	
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
	public init(created: FHIRPrimitive<DateTime>, insurer: Reference, outcome: FHIRPrimitive<ClaimProcessingCodes>, patient: Reference, status: FHIRPrimitive<FinancialResourceStatusCodes>, type: CodeableConcept, use: FHIRPrimitive<Use>) {
		self.created = created
		self.insurer = insurer
		self.outcome = outcome
		self.patient = patient
		self.status = status
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
							disposition: FHIRPrimitive<FHIRString>? = nil,
							error: [ClaimResponseError]? = nil,
							`extension`: [Extension]? = nil,
							form: Attachment? = nil,
							formCode: CodeableConcept? = nil,
							fundsReserve: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							insurance: [ClaimResponseInsurance]? = nil,
							insurer: Reference,
							item: [ClaimResponseItem]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: FHIRPrimitive<ClaimProcessingCodes>,
							patient: Reference,
							payeeType: CodeableConcept? = nil,
							payment: ClaimResponsePayment? = nil,
							preAuthPeriod: Period? = nil,
							preAuthRef: FHIRPrimitive<FHIRString>? = nil,
							processNote: [ClaimResponseProcessNote]? = nil,
							request: Reference? = nil,
							requestor: Reference? = nil,
							status: FHIRPrimitive<FinancialResourceStatusCodes>,
							subType: CodeableConcept? = nil,
							text: Narrative? = nil,
							total: [ClaimResponseTotal]? = nil,
							type: CodeableConcept,
							use: FHIRPrimitive<Use>)
	{
		self.init(created: created, insurer: insurer, outcome: outcome, patient: patient, status: status, type: type, use: use)
		self.addItem = addItem
		self.adjudication = adjudication
		self.communicationRequest = communicationRequest
		self.contained = contained
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
		self.formCode = formCode
		self.fundsReserve = fundsReserve
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
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
		self.subType = subType
		self.text = text
		self.total = total
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case addItem
		case adjudication
		case communicationRequest
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case formCode
		case fundsReserve
		case identifier
		case insurance
		case insurer
		case item
		case outcome; case _outcome
		case patient
		case payeeType
		case payment
		case preAuthPeriod
		case preAuthRef; case _preAuthRef
		case processNote
		case request
		case requestor
		case status; case _status
		case subType
		case total
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
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.form = try Attachment(from: _container, forKeyIfPresent: .form)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [ClaimResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
		self.outcome = try FHIRPrimitive<ClaimProcessingCodes>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.payeeType = try CodeableConcept(from: _container, forKeyIfPresent: .payeeType)
		self.payment = try ClaimResponsePayment(from: _container, forKeyIfPresent: .payment)
		self.preAuthPeriod = try Period(from: _container, forKeyIfPresent: .preAuthPeriod)
		self.preAuthRef = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.processNote = try [ClaimResponseProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestor = try Reference(from: _container, forKeyIfPresent: .requestor)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.total = try [ClaimResponseTotal](from: _container, forKeyIfPresent: .total)
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
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try outcome.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try patient.encode(on: &_container, forKey: .patient)
		try payeeType?.encode(on: &_container, forKey: .payeeType)
		try payment?.encode(on: &_container, forKey: .payment)
		try preAuthPeriod?.encode(on: &_container, forKey: .preAuthPeriod)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try request?.encode(on: &_container, forKey: .request)
		try requestor?.encode(on: &_container, forKey: .requestor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try total?.encode(on: &_container, forKey: .total)
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
		    && disposition == _other.disposition
		    && error == _other.error
		    && form == _other.form
		    && formCode == _other.formCode
		    && fundsReserve == _other.fundsReserve
		    && identifier == _other.identifier
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && outcome == _other.outcome
		    && patient == _other.patient
		    && payeeType == _other.payeeType
		    && payment == _other.payment
		    && preAuthPeriod == _other.preAuthPeriod
		    && preAuthRef == _other.preAuthRef
		    && processNote == _other.processNote
		    && request == _other.request
		    && requestor == _other.requestor
		    && status == _other.status
		    && subType == _other.subType
		    && total == _other.total
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(addItem)
		hasher.combine(adjudication)
		hasher.combine(communicationRequest)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(formCode)
		hasher.combine(fundsReserve)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(outcome)
		hasher.combine(patient)
		hasher.combine(payeeType)
		hasher.combine(payment)
		hasher.combine(preAuthPeriod)
		hasher.combine(preAuthRef)
		hasher.combine(processNote)
		hasher.combine(request)
		hasher.combine(requestor)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(total)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 Insurer added line items.
 
 The first-tier service adjudications for payor added product or service lines.
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
	
	/// Authorized providers
	public var provider: [Reference]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
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
	
	/// Total item cost
	public var net: Money?
	
	/// Anatomical location
	public var bodySite: CodeableConcept?
	
	/// Anatomical sub-location
	public var subSite: [CodeableConcept]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Insurer added line details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(adjudication: [ClaimResponseItemAdjudication], productOrService: CodeableConcept) {
		self.adjudication = adjudication
		self.productOrService = productOrService
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication],
							bodySite: CodeableConcept? = nil,
							detail: [ClaimResponseAddItemDetail]? = nil,
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
							subSite: [CodeableConcept]? = nil,
							subdetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(adjudication: adjudication, productOrService: productOrService)
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
		self.programCode = programCode
		self.provider = provider
		self.quantity = quantity
		self.serviced = serviced
		self.subSite = subSite
		self.subdetailSequence = subdetailSequence
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
		case productOrService
		case programCode
		case provider
		case quantity
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subSite
		case subdetailSequence; case _subdetailSequence
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
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
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.provider = try [Reference](from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
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
		self.subdetailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .subdetailSequence, auxiliaryKey: ._subdetailSequence)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication.encode(on: &_container, forKey: .adjudication)
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
		try subSite?.encode(on: &_container, forKey: .subSite)
		try subdetailSequence?.encode(on: &_container, forKey: .subdetailSequence, auxiliaryKey: ._subdetailSequence)
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
		    && detail == _other.detail
		    && detailSequence == _other.detailSequence
		    && factor == _other.factor
		    && itemSequence == _other.itemSequence
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && noteNumber == _other.noteNumber
		    && productOrService == _other.productOrService
		    && programCode == _other.programCode
		    && provider == _other.provider
		    && quantity == _other.quantity
		    && serviced == _other.serviced
		    && subSite == _other.subSite
		    && subdetailSequence == _other.subdetailSequence
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
		hasher.combine(productOrService)
		hasher.combine(programCode)
		hasher.combine(provider)
		hasher.combine(quantity)
		hasher.combine(serviced)
		hasher.combine(subSite)
		hasher.combine(subdetailSequence)
		hasher.combine(unitPrice)
	}
}

/**
 Insurer added line details.
 
 The second-tier service adjudications for payor added services.
 */
open class ClaimResponseAddItemDetail: BackboneElement {
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Insurer added line items
	public var subDetail: [ClaimResponseAddItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(adjudication: [ClaimResponseItemAdjudication], productOrService: CodeableConcept) {
		self.adjudication = adjudication
		self.productOrService = productOrService
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication],
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							net: Money? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							productOrService: CodeableConcept,
							quantity: Quantity? = nil,
							subDetail: [ClaimResponseAddItemDetailSubDetail]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(adjudication: adjudication, productOrService: productOrService)
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.quantity = quantity
		self.subDetail = subDetail
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
		case quantity
		case subDetail
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.subDetail = try [ClaimResponseAddItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication.encode(on: &_container, forKey: .adjudication)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
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
		    && quantity == _other.quantity
		    && subDetail == _other.subDetail
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
		hasher.combine(quantity)
		hasher.combine(subDetail)
		hasher.combine(unitPrice)
	}
}

/**
 Insurer added line items.
 
 The third-tier service adjudications for payor added services.
 */
open class ClaimResponseAddItemDetailSubDetail: BackboneElement {
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Designated initializer taking all required properties
	public init(adjudication: [ClaimResponseItemAdjudication], productOrService: CodeableConcept) {
		self.adjudication = adjudication
		self.productOrService = productOrService
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication],
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							net: Money? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							productOrService: CodeableConcept,
							quantity: Quantity? = nil,
							unitPrice: Money? = nil)
	{
		self.init(adjudication: adjudication, productOrService: productOrService)
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.noteNumber = noteNumber
		self.quantity = quantity
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
		case quantity
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication.encode(on: &_container, forKey: .adjudication)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try net?.encode(on: &_container, forKey: .net)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try productOrService.encode(on: &_container, forKey: .productOrService)
		try quantity?.encode(on: &_container, forKey: .quantity)
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
		    && quantity == _other.quantity
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
		hasher.combine(quantity)
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
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							detailSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							itemSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init(code: code)
		self.detailSequence = detailSequence
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
		case itemSequence; case _itemSequence
		case subDetailSequence; case _subDetailSequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.detailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
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
		    && itemSequence == _other.itemSequence
		    && subDetailSequence == _other.subDetailSequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detailSequence)
		hasher.combine(itemSequence)
		hasher.combine(subDetailSequence)
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
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
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
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Adjudication for claim details
	public var detail: [ClaimResponseItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(adjudication: [ClaimResponseItemAdjudication], itemSequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.adjudication = adjudication
		self.itemSequence = itemSequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication],
							detail: [ClaimResponseItemDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							itemSequence: FHIRPrimitive<FHIRPositiveInteger>,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil)
	{
		self.init(adjudication: adjudication, itemSequence: itemSequence)
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detail
		case itemSequence; case _itemSequence
		case noteNumber; case _noteNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.detail = try [ClaimResponseItemDetail](from: _container, forKeyIfPresent: .detail)
		self.itemSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try itemSequence.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
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
		    && itemSequence == _other.itemSequence
		    && noteNumber == _other.noteNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(detail)
		hasher.combine(itemSequence)
		hasher.combine(noteNumber)
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
		guard let _other = _other as? ClaimResponseItemAdjudication else {
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
 Adjudication for claim details.
 
 A claim detail. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
open class ClaimResponseItemDetail: BackboneElement {
	
	/// Claim detail instance identifier
	public var detailSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Detail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Adjudication for claim sub-details
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(adjudication: [ClaimResponseItemAdjudication], detailSequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.adjudication = adjudication
		self.detailSequence = detailSequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication],
							detailSequence: FHIRPrimitive<FHIRPositiveInteger>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							subDetail: [ClaimResponseItemDetailSubDetail]? = nil)
	{
		self.init(adjudication: adjudication, detailSequence: detailSequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.subDetail = subDetail
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detailSequence; case _detailSequence
		case noteNumber; case _noteNumber
		case subDetail
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.detailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.subDetail = try [ClaimResponseItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication.encode(on: &_container, forKey: .adjudication)
		try detailSequence.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
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
		    && subDetail == _other.subDetail
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(detailSequence)
		hasher.combine(noteNumber)
		hasher.combine(subDetail)
	}
}

/**
 Adjudication for claim sub-details.
 
 A sub-detail adjudication of a simple product or service.
 */
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Claim sub-detail instance identifier
	public var subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
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
							subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(subDetailSequence: subDetailSequence)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case noteNumber; case _noteNumber
		case subDetailSequence; case _subDetailSequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.subDetailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try subDetailSequence.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
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
		    && subDetailSequence == _other.subDetailSequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(noteNumber)
		hasher.combine(subDetailSequence)
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
							type: CodeableConcept)
	{
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
	
	/// Note instance identifier
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The business purpose of the note text.
	public var type: FHIRPrimitive<NoteType>?
	
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
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							text: FHIRPrimitive<FHIRString>,
							type: FHIRPrimitive<NoteType>? = nil)
	{
		self.init(text: text)
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.number = number
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language
		case number; case _number
		case text; case _text
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<NoteType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
							modifierExtension: [Extension]? = nil)
	{
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
