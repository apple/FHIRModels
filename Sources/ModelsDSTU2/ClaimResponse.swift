//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
 Remittance resource.
 
 This resource provides the adjudication details from the processing of a Claim resource.
 */
open class ClaimResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .claimResponse }
	
	/// Response  number
	public var identifier: [Identifier]?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer
	public var organization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Transaction status: error, complete.
	/// Restricted to: ['complete', 'error']
	public var outcome: FHIRPrimitive<RemittanceOutcome>?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Party to be paid any benefits payable
	public var payeeType: Coding?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Total Cost of service from the Claim
	public var totalCost: Quantity?
	
	/// Unallocated deductible
	public var unallocDeductable: Quantity?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Quantity?
	
	/// Payment adjustment for non-Claim issues
	public var paymentAdjustment: Quantity?
	
	/// Reason for Payment adjustment
	public var paymentAdjustmentReason: Coding?
	
	/// Expected data of Payment
	public var paymentDate: FHIRPrimitive<FHIRDate>?
	
	/// Payment amount
	public var paymentAmount: Quantity?
	
	/// Payment identifier
	public var paymentRef: Identifier?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Processing notes
	public var note: [ClaimResponseNote]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimResponseCoverage]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							unallocDeductable: Quantity? = nil)
	{
		self.init()
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
		case addItem
		case coverage
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case identifier
		case item
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
		case totalBenefit
		case totalCost
		case unallocDeductable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.addItem = try [ClaimResponseAddItem](from: _container, forKeyIfPresent: .addItem)
		self.coverage = try [ClaimResponseCoverage](from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.form = try Coding(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
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
		self.totalBenefit = try Quantity(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Quantity(from: _container, forKeyIfPresent: .totalCost)
		self.unallocDeductable = try Quantity(from: _container, forKeyIfPresent: .unallocDeductable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try addItem?.encode(on: &_container, forKey: .addItem)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try item?.encode(on: &_container, forKey: .item)
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
		try totalBenefit?.encode(on: &_container, forKey: .totalBenefit)
		try totalCost?.encode(on: &_container, forKey: .totalCost)
		try unallocDeductable?.encode(on: &_container, forKey: .unallocDeductable)
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
		    && coverage == _other.coverage
		    && created == _other.created
		    && disposition == _other.disposition
		    && error == _other.error
		    && form == _other.form
		    && identifier == _other.identifier
		    && item == _other.item
		    && note == _other.note
		    && organization == _other.organization
		    && originalRuleset == _other.originalRuleset
		    && outcome == _other.outcome
		    && payeeType == _other.payeeType
		    && paymentAdjustment == _other.paymentAdjustment
		    && paymentAdjustmentReason == _other.paymentAdjustmentReason
		    && paymentAmount == _other.paymentAmount
		    && paymentDate == _other.paymentDate
		    && paymentRef == _other.paymentRef
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && reserved == _other.reserved
		    && ruleset == _other.ruleset
		    && totalBenefit == _other.totalBenefit
		    && totalCost == _other.totalCost
		    && unallocDeductable == _other.unallocDeductable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(addItem)
		hasher.combine(coverage)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(item)
		hasher.combine(note)
		hasher.combine(organization)
		hasher.combine(originalRuleset)
		hasher.combine(outcome)
		hasher.combine(payeeType)
		hasher.combine(paymentAdjustment)
		hasher.combine(paymentAdjustmentReason)
		hasher.combine(paymentAmount)
		hasher.combine(paymentDate)
		hasher.combine(paymentRef)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(reserved)
		hasher.combine(ruleset)
		hasher.combine(totalBenefit)
		hasher.combine(totalCost)
		hasher.combine(unallocDeductable)
	}
}

/**
 Insurer added line items.
 
 The first tier service adjudications for payor added services.
 */
open class ClaimResponseAddItem: BackboneElement {
	
	/// Service instances
	public var sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Group, Service or Product
	public var service: Coding
	
	/// Professional fee or Product charge
	public var fee: Quantity?
	
	/// List of note numbers which apply
	public var noteNumberLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseAddItemAdjudication]?
	
	/// Added items details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(service: Coding) {
		self.service = service
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseAddItemAdjudication]? = nil,
							detail: [ClaimResponseAddItemDetail]? = nil,
							`extension`: [Extension]? = nil,
							fee: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumberLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							sequenceLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							service: Coding)
	{
		self.init(service: service)
		self.adjudication = adjudication
		self.detail = detail
		self.`extension` = `extension`
		self.fee = fee
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumberLinkId = noteNumberLinkId
		self.sequenceLinkId = sequenceLinkId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case detail
		case fee
		case noteNumberLinkId; case _noteNumberLinkId
		case sequenceLinkId; case _sequenceLinkId
		case service
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseAddItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
		self.fee = try Quantity(from: _container, forKeyIfPresent: .fee)
		self.noteNumberLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumberLinkId, auxiliaryKey: ._noteNumberLinkId)
		self.sequenceLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.service = try Coding(from: _container, forKey: .service)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try fee?.encode(on: &_container, forKey: .fee)
		try noteNumberLinkId?.encode(on: &_container, forKey: .noteNumberLinkId, auxiliaryKey: ._noteNumberLinkId)
		try sequenceLinkId?.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try service.encode(on: &_container, forKey: .service)
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
		    && detail == _other.detail
		    && fee == _other.fee
		    && noteNumberLinkId == _other.noteNumberLinkId
		    && sequenceLinkId == _other.sequenceLinkId
		    && service == _other.service
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(detail)
		hasher.combine(fee)
		hasher.combine(noteNumberLinkId)
		hasher.combine(sequenceLinkId)
		hasher.combine(service)
	}
}

/**
 Added items adjudication.
 
 The adjudications results.
 */
open class ClaimResponseAddItemAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							code: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(code: code)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseAddItemAdjudication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Added items details.
 
 The second tier service adjudications for payor added services.
 */
open class ClaimResponseAddItemDetail: BackboneElement {
	
	/// Service or Product
	public var service: Coding
	
	/// Professional fee or Product charge
	public var fee: Quantity?
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseAddItemDetailAdjudication]?
	
	/// Designated initializer taking all required properties
	public init(service: Coding) {
		self.service = service
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseAddItemDetailAdjudication]? = nil,
							`extension`: [Extension]? = nil,
							fee: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							service: Coding)
	{
		self.init(service: service)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.fee = fee
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case fee
		case service
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseAddItemDetailAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.fee = try Quantity(from: _container, forKeyIfPresent: .fee)
		self.service = try Coding(from: _container, forKey: .service)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try fee?.encode(on: &_container, forKey: .fee)
		try service.encode(on: &_container, forKey: .service)
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
		    && fee == _other.fee
		    && service == _other.service
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(fee)
		hasher.combine(service)
	}
}

/**
 Added items detail adjudication.
 
 The adjudications results.
 */
open class ClaimResponseAddItemDetailAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							code: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(code: code)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseAddItemDetailAdjudication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
open class ClaimResponseCoverage: BackboneElement {
	
	/// Service instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Is the focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Insurance information
	public var coverage: Reference
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Patient relationship to subscriber
	public var relationship: Coding
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference, focal: FHIRPrimitive<FHIRBool>, relationship: Coding, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.coverage = coverage
		self.focal = focal
		self.relationship = relationship
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
							originalRuleset: Coding? = nil,
							preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
							relationship: Coding,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(coverage: coverage, focal: focal, relationship: relationship, sequence: sequence)
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.originalRuleset = originalRuleset
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case focal; case _focal
		case originalRuleset
		case preAuthRef; case _preAuthRef
		case relationship
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
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.relationship = try Coding(from: _container, forKey: .relationship)
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
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try relationship.encode(on: &_container, forKey: .relationship)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseCoverage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return businessArrangement == _other.businessArrangement
		    && claimResponse == _other.claimResponse
		    && coverage == _other.coverage
		    && focal == _other.focal
		    && originalRuleset == _other.originalRuleset
		    && preAuthRef == _other.preAuthRef
		    && relationship == _other.relationship
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(claimResponse)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(originalRuleset)
		hasher.combine(preAuthRef)
		hasher.combine(relationship)
		hasher.combine(sequence)
	}
}

/**
 Processing errors.
 
 Mutually exclusive with Services Provided (Item).
 */
open class ClaimResponseError: BackboneElement {
	
	/// Item sequence number
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Detail sequence number
	public var detailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Subdetail sequence number
	public var subdetailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Error code detailing processing issues
	public var code: Coding
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: Coding,
							detailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							subdetailSequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init(code: code)
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
		case sequenceLinkId; case _sequenceLinkId
		case subdetailSequenceLinkId; case _subdetailSequenceLinkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try Coding(from: _container, forKey: .code)
		self.detailSequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .detailSequenceLinkId, auxiliaryKey: ._detailSequenceLinkId)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.subdetailSequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .subdetailSequenceLinkId, auxiliaryKey: ._subdetailSequenceLinkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try detailSequenceLinkId?.encode(on: &_container, forKey: .detailSequenceLinkId, auxiliaryKey: ._detailSequenceLinkId)
		try sequenceLinkId?.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try subdetailSequenceLinkId?.encode(on: &_container, forKey: .subdetailSequenceLinkId, auxiliaryKey: ._subdetailSequenceLinkId)
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
		    && detailSequenceLinkId == _other.detailSequenceLinkId
		    && sequenceLinkId == _other.sequenceLinkId
		    && subdetailSequenceLinkId == _other.subdetailSequenceLinkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detailSequenceLinkId)
		hasher.combine(sequenceLinkId)
		hasher.combine(subdetailSequenceLinkId)
	}
}

/**
 Line items.
 
 The first tier service adjudications for submitted services.
 */
open class ClaimResponseItem: BackboneElement {
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items
	public var detail: [ClaimResponseItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequenceLinkId = sequenceLinkId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication]? = nil,
							detail: [ClaimResponseItemDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(sequenceLinkId: sequenceLinkId)
		self.adjudication = adjudication
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
		case noteNumber; case _noteNumber
		case sequenceLinkId; case _sequenceLinkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.detail = try [ClaimResponseItemDetail](from: _container, forKeyIfPresent: .detail)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try detail?.encode(on: &_container, forKey: .detail)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
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
		    && noteNumber == _other.noteNumber
		    && sequenceLinkId == _other.sequenceLinkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(detail)
		hasher.combine(noteNumber)
		hasher.combine(sequenceLinkId)
	}
}

/**
 Adjudication details.
 
 The adjudications results.
 */
open class ClaimResponseItemAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							code: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(code: code)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
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
		    && code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Detail line items.
 
 The second tier service adjudications for submitted services.
 */
open class ClaimResponseItemDetail: BackboneElement {
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Detail adjudication
	public var adjudication: [ClaimResponseItemDetailAdjudication]?
	
	/// Subdetail line items
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequenceLinkId = sequenceLinkId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemDetailAdjudication]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>,
							subDetail: [ClaimResponseItemDetailSubDetail]? = nil)
	{
		self.init(sequenceLinkId: sequenceLinkId)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subDetail = subDetail
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case sequenceLinkId; case _sequenceLinkId
		case subDetail
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemDetailAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.subDetail = try [ClaimResponseItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
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
		    && sequenceLinkId == _other.sequenceLinkId
		    && subDetail == _other.subDetail
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(sequenceLinkId)
		hasher.combine(subDetail)
	}
}

/**
 Detail adjudication.
 
 The adjudications results.
 */
open class ClaimResponseItemDetailAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							code: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(code: code)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseItemDetailAdjudication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Subdetail line items.
 
 The third tier service adjudications for submitted services.
 */
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Subdetail adjudication
	public var adjudication: [ClaimResponseItemDetailSubDetailAdjudication]?
	
	/// Designated initializer taking all required properties
	public init(sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequenceLinkId = sequenceLinkId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemDetailSubDetailAdjudication]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(sequenceLinkId: sequenceLinkId)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case sequenceLinkId; case _sequenceLinkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemDetailSubDetailAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
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
		    && sequenceLinkId == _other.sequenceLinkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(sequenceLinkId)
	}
}

/**
 Subdetail adjudication.
 
 The adjudications results.
 */
open class ClaimResponseItemDetailSubDetailAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding
	
	/// Monetary amount
	public var amount: Quantity?
	
	/// Non-monetary value
	public var value: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							code: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(code: code)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.code = try Coding(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code.encode(on: &_container, forKey: .code)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseItemDetailSubDetailAdjudication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Processing notes.
 
 Note text.
 */
open class ClaimResponseNote: BackboneElement {
	
	/// Note Number for this note
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// display | print | printoper
	public var type: Coding?
	
	/// Note explanatory text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							number: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							type: Coding? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case number; case _number
		case text; case _text
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.number = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimResponseNote else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return number == _other.number
		    && text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(number)
		hasher.combine(text)
		hasher.combine(type)
	}
}
