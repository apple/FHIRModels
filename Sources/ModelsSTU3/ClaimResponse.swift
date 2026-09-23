//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
 Remittance resource.
 
 This resource provides the adjudication details from the processing of a Claim resource.
 */
public struct ClaimResponse: DomainResource {
	
	public static let resourceType: ResourceType = .claimResponse
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Request for additional information
	public var communicationRequest: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Response  number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Insurance or medical plan
	public var insurance: [ClaimResponseInsurance]?
	
	/// Insurance issuing organization
	public var insurer: Reference?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Party to be paid any benefits payable
	public var payeeType: CodeableConcept?
	
	/// Payment details, if paid
	public var payment: ClaimResponsePayment?
	
	/// Processing notes
	public var processNote: [ClaimResponseProcessNote]?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim
	public var totalCost: Money?
	
	/// Unallocated deductible
	public var unallocDeductable: Money?
	
	/// Designated initializer
	public init(
		addItem: [ClaimResponseAddItem]? = nil,
		communicationRequest: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		error: [ClaimResponseError]? = nil,
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [ClaimResponseInsurance]? = nil,
		insurer: Reference? = nil,
		item: [ClaimResponseItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: CodeableConcept? = nil,
		patient: Reference? = nil,
		payeeType: CodeableConcept? = nil,
		payment: ClaimResponsePayment? = nil,
		processNote: [ClaimResponseProcessNote]? = nil,
		request: Reference? = nil,
		requestOrganization: Reference? = nil,
		requestProvider: Reference? = nil,
		reserved: Coding? = nil,
		status: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		totalBenefit: Money? = nil,
		totalCost: Money? = nil,
		unallocDeductable: Money? = nil
	) {
		self.addItem = addItem
		self.communicationRequest = communicationRequest
		self.contained = contained
		self.created = created
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
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
		self.processNote = processNote
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.reserved = reserved
		self.status = status
		self.text = text
		self.totalBenefit = totalBenefit
		self.totalCost = totalCost
		self.unallocDeductable = unallocDeductable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case addItem
		case communicationRequest
		case contained
		case created; case _created
		case disposition; case _disposition
		case error
		case `extension` = "extension"
		case form
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
		case outcome
		case patient
		case payeeType
		case payment
		case processNote
		case request
		case requestOrganization
		case requestProvider
		case reserved
		case status; case _status
		case text
		case totalBenefit
		case totalCost
		case unallocDeductable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.addItem = try [ClaimResponseAddItem](from: _container, forKeyIfPresent: .addItem)
		self.communicationRequest = try [Reference](from: _container, forKeyIfPresent: .communicationRequest)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [ClaimResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.payeeType = try CodeableConcept(from: _container, forKeyIfPresent: .payeeType)
		self.payment = try ClaimResponsePayment(from: _container, forKeyIfPresent: .payment)
		self.processNote = try [ClaimResponseProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.reserved = try Coding(from: _container, forKeyIfPresent: .reserved)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.totalBenefit = try Money(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Money(from: _container, forKeyIfPresent: .totalCost)
		self.unallocDeductable = try Money(from: _container, forKeyIfPresent: .unallocDeductable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try communicationRequest?.encode(on: &_container, forKey: .communicationRequest)
		try contained?.encode(on: &_container, forKey: .contained)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try patient?.encode(on: &_container, forKey: .patient)
		try payeeType?.encode(on: &_container, forKey: .payeeType)
		try payment?.encode(on: &_container, forKey: .payment)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try reserved?.encode(on: &_container, forKey: .reserved)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try totalBenefit?.encode(on: &_container, forKey: .totalBenefit)
		try totalCost?.encode(on: &_container, forKey: .totalCost)
		try unallocDeductable?.encode(on: &_container, forKey: .unallocDeductable)
	}
}

/**
 Insurer added line items.
 
 The first tier service adjudications for payor added services.
 */
public struct ClaimResponseAddItem: BackboneElement {
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Added items details
	public var detail: [ClaimResponseAddItemDetail]?
	
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
	
	/// Group, Service or Product
	public var service: CodeableConcept?
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		category: CodeableConcept? = nil,
		detail: [ClaimResponseAddItemDetail]? = nil,
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
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
public struct ClaimResponseAddItemDetail: BackboneElement {
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
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
	
	/// Service or Product
	public var service: CodeableConcept?
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
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
 Processing errors.
 
 Mutually exclusive with Services Provided (Item).
 */
public struct ClaimResponseError: BackboneElement {
	
	/// Error code detailing processing issues
	public var code: CodeableConcept
	
	/// Detail sequence number
	public var detailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Item sequence number
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Subdetail sequence number
	public var subdetailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		detailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		subdetailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.code = code
		self.detailSequenceLinkId = detailSequenceLinkId
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequenceLinkId = sequenceLinkId
		self.subdetailSequenceLinkId = subdetailSequenceLinkId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detailSequenceLinkId; case _detailSequenceLinkId
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case sequenceLinkId; case _sequenceLinkId
		case subdetailSequenceLinkId; case _subdetailSequenceLinkId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.detailSequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .detailSequenceLinkId, auxiliaryKey: ._detailSequenceLinkId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.subdetailSequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .subdetailSequenceLinkId, auxiliaryKey: ._subdetailSequenceLinkId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try detailSequenceLinkId?.encode(on: &_container, forKey: .detailSequenceLinkId, auxiliaryKey: ._detailSequenceLinkId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sequenceLinkId?.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try subdetailSequenceLinkId?.encode(on: &_container, forKey: .subdetailSequenceLinkId, auxiliaryKey: ._subdetailSequenceLinkId)
	}
}

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public struct ClaimResponseInsurance: BackboneElement {
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Is the focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Service instance identifier
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
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
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
		case preAuthRef; case _preAuthRef
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
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
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
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Line items.
 
 The first tier service adjudications for submitted services.
 */
public struct ClaimResponseItem: BackboneElement {
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items
	public var detail: [ClaimResponseItemDetail]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		detail: [ClaimResponseItemDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.adjudication = adjudication
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.sequenceLinkId = sequenceLinkId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case noteNumber; case _noteNumber
		case sequenceLinkId; case _sequenceLinkId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.detail = try [ClaimResponseItemDetail](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
	}
}

/**
 Adjudication details.
 
 The adjudication results.
 */
public struct ClaimResponseItemAdjudication: BackboneElement {
	
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
 Detail line items.
 
 The second tier service adjudications for submitted services.
 */
public struct ClaimResponseItemDetail: BackboneElement {
	
	/// Detail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Subdetail line items
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>,
		subDetail: [ClaimResponseItemDetailSubDetail]? = nil
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.sequenceLinkId = sequenceLinkId
		self.subDetail = subDetail
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case noteNumber; case _noteNumber
		case sequenceLinkId; case _sequenceLinkId
		case subDetail
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
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.subDetail = try [ClaimResponseItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
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
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
	}
}

/**
 Subdetail line items.
 
 The third tier service adjudications for submitted services.
 */
public struct ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Subdetail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.sequenceLinkId = sequenceLinkId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case noteNumber; case _noteNumber
		case sequenceLinkId; case _sequenceLinkId
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
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
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
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
	}
}

/**
 Payment details, if paid.
 
 Payment details for the claim if the claim has been paid.
 */
public struct ClaimResponsePayment: BackboneElement {
	
	/// Payment adjustment for non-Claim issues
	public var adjustment: Money?
	
	/// Explanation for the non-claim adjustment
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment
	public var amount: Money?
	
	/// Expected data of Payment
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
 Processing notes.
 
 Note text.
 */
public struct ClaimResponseProcessNote: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Language if different from the resource
	public var language: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Sequence Number for this note
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Note explanatory text
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
