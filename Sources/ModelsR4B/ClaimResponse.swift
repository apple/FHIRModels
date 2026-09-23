//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
 Response to a claim predetermination or preauthorization.
 
 This resource provides the adjudication details from the processing of a Claim resource.
 */
public struct ClaimResponse: DomainResource {
	
	public static let resourceType: ResourceType = .claimResponse
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Header-level adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Request for additional information
	public var communicationRequest: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed reference or actual form
	public var form: Attachment?
	
	/// Printed form identifier
	public var formCode: CodeableConcept?
	
	/// Funds reserved status
	public var fundsReserve: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for a claim response
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Patient insurance information
	public var insurance: [ClaimResponseInsurance]?
	
	/// Party responsible for reimbursement
	public var insurer: Reference
	
	/// Adjudication for claim line items
	public var item: [ClaimResponseItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// queued | complete | error | partial
	public var outcome: FHIRPrimitive<FHIRString>
	
	/// The recipient of the products and services
	public var patient: Reference
	
	/// Party to be paid any benefits payable
	public var payeeType: CodeableConcept?
	
	/// Payment Details
	public var payment: ClaimResponsePayment?
	
	/// Preauthorization reference effective period
	public var preAuthPeriod: Period?
	
	/// Preauthorization reference
	public var preAuthRef: FHIRPrimitive<FHIRString>?
	
	/// Note concerning adjudication
	public var processNote: [ClaimResponseProcessNote]?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Party responsible for the claim
	public var requestor: Reference?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Adjudication totals
	public var total: [ClaimResponseTotal]?
	
	/// More granular claim type
	public var type: CodeableConcept
	
	/// A code to indicate whether the nature of the request is: to request adjudication of products and services
	/// previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the
	/// non-binding adjudication of the listed products and services which could be provided in the future.
	public var use: FHIRPrimitive<Use>
	
	/// Designated initializer
	public init(
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
		outcome: FHIRPrimitive<FHIRString>,
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
		use: FHIRPrimitive<Use>
	) {
		self.addItem = addItem
		self.adjudication = adjudication
		self.communicationRequest = communicationRequest
		self.contained = contained
		self.created = created
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
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.patient = patient
		self.payeeType = payeeType
		self.payment = payment
		self.preAuthPeriod = preAuthPeriod
		self.preAuthRef = preAuthRef
		self.processNote = processNote
		self.request = request
		self.requestor = requestor
		self.status = status
		self.subType = subType
		self.text = text
		self.total = total
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case addItem
		case adjudication
		case communicationRequest
		case contained
		case created; case _created
		case disposition; case _disposition
		case error
		case `extension` = "extension"
		case form
		case formCode
		case fundsReserve
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
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
		self.addItem = try [ClaimResponseAddItem](from: _container, forKeyIfPresent: .addItem)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.communicationRequest = try [Reference](from: _container, forKeyIfPresent: .communicationRequest)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try Attachment(from: _container, forKeyIfPresent: .form)
		self.formCode = try CodeableConcept(from: _container, forKeyIfPresent: .formCode)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [ClaimResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKey: .insurer)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try FHIRPrimitive<FHIRString>(from: _container, forKey: .outcome, auxiliaryKey: ._outcome)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.total = try [ClaimResponseTotal](from: _container, forKeyIfPresent: .total)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKey: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try communicationRequest?.encode(on: &_container, forKey: .communicationRequest)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try formCode?.encode(on: &_container, forKey: .formCode)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try total?.encode(on: &_container, forKey: .total)
		try type.encode(on: &_container, forKey: .type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 Insurer added line items.
 
 The first-tier service adjudications for payor added product or service lines.
 */
public struct ClaimResponseAddItem: BackboneElement {
	
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
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Anatomical location
	public var bodySite: CodeableConcept?
	
	/// Insurer added line details
	public var detail: [ClaimResponseAddItemDetail]?
	
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
	
	/// Anatomical sub-location
	public var subSite: [CodeableConcept]?
	
	/// Subdetail sequence number
	public var subdetailSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
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
		case subSite
		case subdetailSequence; case _subdetailSequence
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
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
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		self.subdetailSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .subdetailSequence, auxiliaryKey: ._subdetailSequence)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication.encode(on: &_container, forKey: .adjudication)
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
		try subSite?.encode(on: &_container, forKey: .subSite)
		try subdetailSequence?.encode(on: &_container, forKey: .subdetailSequence, auxiliaryKey: ._subdetailSequence)
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
 Insurer added line details.
 
 The second-tier service adjudications for payor added services.
 */
public struct ClaimResponseAddItemDetail: BackboneElement {
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]
	
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
	public var subDetail: [ClaimResponseAddItemDetailSubDetail]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.productOrService = try CodeableConcept(from: _container, forKey: .productOrService)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.subDetail = try [ClaimResponseAddItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication.encode(on: &_container, forKey: .adjudication)
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
public struct ClaimResponseAddItemDetailSubDetail: BackboneElement {
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]
	
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
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
		try adjudication.encode(on: &_container, forKey: .adjudication)
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
 Processing errors.
 
 Errors encountered during the processing of the adjudication.
 */
public struct ClaimResponseError: BackboneElement {
	
	/// Error code detailing processing issues
	public var code: CodeableConcept
	
	/// Detail sequence number
	public var detailSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Item sequence number
	public var itemSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Subdetail sequence number
	public var subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		detailSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		itemSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.code = code
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
		case `extension` = "extension"
		case id; case _id
		case itemSequence; case _itemSequence
		case modifierExtension
		case subDetailSequence; case _subDetailSequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.detailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .detailSequence, auxiliaryKey: ._detailSequence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.itemSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .itemSequence, auxiliaryKey: ._itemSequence)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subDetailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try detailSequence?.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try itemSequence?.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subDetailSequence?.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services specified on the claim.
 */
public struct ClaimResponseInsurance: BackboneElement {
	
	/// Additional provider contract number
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
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
	
	/// Insurance instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		businessArrangement: FHIRPrimitive<FHIRString>? = nil,
		claimResponse: Reference? = nil,
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case `extension` = "extension"
		case focal; case _focal
		case id; case _id
		case modifierExtension
		case sequence; case _sequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .focal, auxiliaryKey: ._focal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try coverage.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focal.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Adjudication for claim line items.
 
 A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups
 of sub-details.
 */
public struct ClaimResponseItem: BackboneElement {
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Adjudication for claim details
	public var detail: [ClaimResponseItemDetail]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Claim item instance identifier
	public var itemSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication],
		detail: [ClaimResponseItemDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		itemSequence: FHIRPrimitive<FHIRPositiveInteger>,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil
	) {
		self.adjudication = adjudication
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.itemSequence = itemSequence
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detail
		case `extension` = "extension"
		case id; case _id
		case itemSequence; case _itemSequence
		case modifierExtension
		case noteNumber; case _noteNumber
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.detail = try [ClaimResponseItemDetail](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.itemSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try itemSequence.encode(on: &_container, forKey: .itemSequence, auxiliaryKey: ._itemSequence)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
	}
}

/**
 Adjudication details.
 
 If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a
 simple product or service then this is the result of the adjudication of this item.
 */
public struct ClaimResponseItemAdjudication: BackboneElement {
	
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
	
	/// Non-monetary value
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
 Adjudication for claim details.
 
 A claim detail. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
public struct ClaimResponseItemDetail: BackboneElement {
	
	/// Detail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]
	
	/// Claim detail instance identifier
	public var detailSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Adjudication for claim sub-details
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication],
		detailSequence: FHIRPrimitive<FHIRPositiveInteger>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		subDetail: [ClaimResponseItemDetailSubDetail]? = nil
	) {
		self.adjudication = adjudication
		self.detailSequence = detailSequence
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case noteNumber; case _noteNumber
		case subDetail
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKey: .adjudication)
		self.detailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.subDetail = try [ClaimResponseItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication.encode(on: &_container, forKey: .adjudication)
		try detailSequence.encode(on: &_container, forKey: .detailSequence, auxiliaryKey: ._detailSequence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
	}
}

/**
 Adjudication for claim sub-details.
 
 A sub-detail adjudication of a simple product or service.
 */
public struct ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Subdetail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Applicable note numbers
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Claim sub-detail instance identifier
	public var subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		subDetailSequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.subDetailSequence = subDetailSequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case noteNumber; case _noteNumber
		case subDetailSequence; case _subDetailSequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.subDetailSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try subDetailSequence.encode(on: &_container, forKey: .subDetailSequence, auxiliaryKey: ._subDetailSequence)
	}
}

/**
 Payment Details.
 
 Payment details for the adjudication of the claim.
 */
public struct ClaimResponsePayment: BackboneElement {
	
	/// Payment adjustment for non-claim issues
	public var adjustment: Money?
	
	/// Explanation for the adjustment
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment
	public var amount: Money
	
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
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
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
		self.amount = try Money(from: _container, forKey: .amount)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjustment?.encode(on: &_container, forKey: .adjustment)
		try adjustmentReason?.encode(on: &_container, forKey: .adjustmentReason)
		try amount.encode(on: &_container, forKey: .amount)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Note concerning adjudication.
 
 A note that describes or explains adjudication results in a human readable form.
 */
public struct ClaimResponseProcessNote: BackboneElement {
	
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
	public var text: FHIRPrimitive<FHIRString>
	
	/// The business purpose of the note text.
	public var type: FHIRPrimitive<NoteType>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>,
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
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
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
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Adjudication totals.
 
 Categorized monetary totals for the adjudication.
 */
public struct ClaimResponseTotal: BackboneElement {
	
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
