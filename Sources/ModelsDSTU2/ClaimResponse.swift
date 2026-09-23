//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimResponseCoverage]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Response  number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Processing notes
	public var note: [ClaimResponseNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Transaction status: error, complete.
	/// Restricted to: ['complete', 'error']
	public var outcome: FHIRPrimitive<RemittanceOutcome>?
	
	/// Party to be paid any benefits payable
	public var payeeType: Coding?
	
	/// Payment adjustment for non-Claim issues
	public var paymentAdjustment: Quantity?
	
	/// Reason for Payment adjustment
	public var paymentAdjustmentReason: Coding?
	
	/// Payment amount
	public var paymentAmount: Quantity?
	
	/// Expected data of Payment
	public var paymentDate: FHIRPrimitive<FHIRDate>?
	
	/// Payment identifier
	public var paymentRef: Identifier?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Quantity?
	
	/// Total Cost of service from the Claim
	public var totalCost: Quantity?
	
	/// Unallocated deductible
	public var unallocDeductable: Quantity?
	
	/// Designated initializer
	public init(
		addItem: [ClaimResponseAddItem]? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: [ClaimResponseCoverage]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		error: [ClaimResponseError]? = nil,
		`extension`: [Extension]? = nil,
		form: Coding? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		item: [ClaimResponseItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [ClaimResponseNote]? = nil,
		organization: Reference? = nil,
		originalRuleset: Coding? = nil,
		outcome: FHIRPrimitive<RemittanceOutcome>? = nil,
		payeeType: Coding? = nil,
		paymentAdjustment: Quantity? = nil,
		paymentAdjustmentReason: Coding? = nil,
		paymentAmount: Quantity? = nil,
		paymentDate: FHIRPrimitive<FHIRDate>? = nil,
		paymentRef: Identifier? = nil,
		request: Reference? = nil,
		requestOrganization: Reference? = nil,
		requestProvider: Reference? = nil,
		reserved: Coding? = nil,
		ruleset: Coding? = nil,
		text: Narrative? = nil,
		totalBenefit: Quantity? = nil,
		totalCost: Quantity? = nil,
		unallocDeductable: Quantity? = nil
	) {
		self.addItem = addItem
		self.contained = contained
		self.coverage = coverage
		self.created = created
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.organization = organization
		self.originalRuleset = originalRuleset
		self.outcome = outcome
		self.payeeType = payeeType
		self.paymentAdjustment = paymentAdjustment
		self.paymentAdjustmentReason = paymentAdjustmentReason
		self.paymentAmount = paymentAmount
		self.paymentDate = paymentDate
		self.paymentRef = paymentRef
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.reserved = reserved
		self.ruleset = ruleset
		self.text = text
		self.totalBenefit = totalBenefit
		self.totalCost = totalCost
		self.unallocDeductable = unallocDeductable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case addItem
		case contained
		case coverage
		case created; case _created
		case disposition; case _disposition
		case error
		case `extension` = "extension"
		case form
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case item
		case language; case _language
		case meta
		case modifierExtension
		case note
		case organization
		case originalRuleset
		case outcome; case _outcome
		case payeeType
		case paymentAdjustment
		case paymentAdjustmentReason
		case paymentAmount
		case paymentDate; case _paymentDate
		case paymentRef
		case request
		case requestOrganization
		case requestProvider
		case reserved
		case ruleset
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
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [ClaimResponseCoverage](from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try Coding(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [ClaimResponseNote](from: _container, forKeyIfPresent: .note)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.outcome = try FHIRPrimitive<RemittanceOutcome>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.payeeType = try Coding(from: _container, forKeyIfPresent: .payeeType)
		self.paymentAdjustment = try Quantity(from: _container, forKeyIfPresent: .paymentAdjustment)
		self.paymentAdjustmentReason = try Coding(from: _container, forKeyIfPresent: .paymentAdjustmentReason)
		self.paymentAmount = try Quantity(from: _container, forKeyIfPresent: .paymentAmount)
		self.paymentDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .paymentDate, auxiliaryKey: ._paymentDate)
		self.paymentRef = try Identifier(from: _container, forKeyIfPresent: .paymentRef)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.reserved = try Coding(from: _container, forKeyIfPresent: .reserved)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.totalBenefit = try Quantity(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Quantity(from: _container, forKeyIfPresent: .totalCost)
		self.unallocDeductable = try Quantity(from: _container, forKeyIfPresent: .unallocDeductable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try payeeType?.encode(on: &_container, forKey: .payeeType)
		try paymentAdjustment?.encode(on: &_container, forKey: .paymentAdjustment)
		try paymentAdjustmentReason?.encode(on: &_container, forKey: .paymentAdjustmentReason)
		try paymentAmount?.encode(on: &_container, forKey: .paymentAmount)
		try paymentDate?.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try paymentRef?.encode(on: &_container, forKey: .paymentRef)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try reserved?.encode(on: &_container, forKey: .reserved)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
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
	public var adjudication: [ClaimResponseAddItemAdjudication]?
	
	/// Added items details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Professional fee or Product charge
	public var fee: Quantity?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// List of note numbers which apply
	public var noteNumberLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Service instances
	public var sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Group, Service or Product
	public var service: Coding
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseAddItemAdjudication]? = nil,
		detail: [ClaimResponseAddItemDetail]? = nil,
		`extension`: [Extension]? = nil,
		fee: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noteNumberLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		service: Coding
	) {
		self.adjudication = adjudication
		self.detail = detail
		self.`extension` = `extension`
		self.fee = fee
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumberLinkId = noteNumberLinkId
		self.sequenceLinkId = sequenceLinkId
		self.service = service
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detail
		case `extension` = "extension"
		case fee
		case id; case _id
		case modifierExtension
		case noteNumberLinkId; case _noteNumberLinkId
		case sequenceLinkId; case _sequenceLinkId
		case service
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseAddItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fee = try Quantity(from: _container, forKeyIfPresent: .fee)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noteNumberLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumberLinkId, auxiliaryKey: ._noteNumberLinkId)
		self.sequenceLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.service = try Coding(from: _container, forKey: .service)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fee?.encode(on: &_container, forKey: .fee)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noteNumberLinkId?.encode(on: &_container, forKey: .noteNumberLinkId, auxiliaryKey: ._noteNumberLinkId)
		try sequenceLinkId?.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try service.encode(on: &_container, forKey: .service)
	}
}

/**
 Added items adjudication.
 
 The adjudications results.
 */
public struct ClaimResponseAddItemAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Added items details.
 
 The second tier service adjudications for payor added services.
 */
public struct ClaimResponseAddItemDetail: BackboneElement {
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseAddItemDetailAdjudication]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Professional fee or Product charge
	public var fee: Quantity?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Service or Product
	public var service: Coding
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseAddItemDetailAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		fee: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		service: Coding
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.fee = fee
		self.id = id
		self.modifierExtension = modifierExtension
		self.service = service
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case fee
		case id; case _id
		case modifierExtension
		case service
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseAddItemDetailAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fee = try Quantity(from: _container, forKeyIfPresent: .fee)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.service = try Coding(from: _container, forKey: .service)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fee?.encode(on: &_container, forKey: .fee)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try service.encode(on: &_container, forKey: .service)
	}
}

/**
 Added items detail adjudication.
 
 The adjudications results.
 */
public struct ClaimResponseAddItemDetailAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public struct ClaimResponseCoverage: BackboneElement {
	
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
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Patient relationship to subscriber
	public var relationship: Coding
	
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
		originalRuleset: Coding? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
		relationship: Coding,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
		self.originalRuleset = originalRuleset
		self.preAuthRef = preAuthRef
		self.relationship = relationship
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
		case originalRuleset
		case preAuthRef; case _preAuthRef
		case relationship
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
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.relationship = try Coding(from: _container, forKey: .relationship)
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
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try relationship.encode(on: &_container, forKey: .relationship)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Processing errors.
 
 Mutually exclusive with Services Provided (Item).
 */
public struct ClaimResponseError: BackboneElement {
	
	/// Error code detailing processing issues
	public var code: Coding
	
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
		code: Coding,
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
		self.code = try Coding(from: _container, forKey: .code)
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
 
 The adjudications results.
 */
public struct ClaimResponseItemAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Detail line items.
 
 The second tier service adjudications for submitted services.
 */
public struct ClaimResponseItemDetail: BackboneElement {
	
	/// Detail adjudication
	public var adjudication: [ClaimResponseItemDetailAdjudication]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Subdetail line items
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemDetailAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>,
		subDetail: [ClaimResponseItemDetailSubDetail]? = nil
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequenceLinkId = sequenceLinkId
		self.subDetail = subDetail
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case sequenceLinkId; case _sequenceLinkId
		case subDetail
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemDetailAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
	}
}

/**
 Detail adjudication.
 
 The adjudications results.
 */
public struct ClaimResponseItemDetailAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Subdetail line items.
 
 The third tier service adjudications for submitted services.
 */
public struct ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Subdetail adjudication
	public var adjudication: [ClaimResponseItemDetailSubDetailAdjudication]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		adjudication: [ClaimResponseItemDetailSubDetailAdjudication]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequenceLinkId = sequenceLinkId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case sequenceLinkId; case _sequenceLinkId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adjudication = try [ClaimResponseItemDetailSubDetailAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
	}
}

/**
 Subdetail adjudication.
 
 The adjudications results.
 */
public struct ClaimResponseItemDetailSubDetailAdjudication: BackboneElement {
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Processing notes.
 
 Note text.
 */
public struct ClaimResponseNote: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Note Number for this note
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// display | print | printoper
	public var type: Coding?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: Coding? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
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
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
	}
}
