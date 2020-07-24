//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurance issuing organization
	public var insurer: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Party to be paid any benefits payable
	public var payeeType: CodeableConcept?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Total Cost of service from the Claim
	public var totalCost: Money?
	
	/// Unallocated deductible
	public var unallocDeductable: Money?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Money?
	
	/// Payment details, if paid
	public var payment: ClaimResponsePayment?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Processing notes
	public var processNote: [ClaimResponseProcessNote]?
	
	/// Request for additional information
	public var communicationRequest: [Reference]?
	
	/// Insurance or medical plan
	public var insurance: [ClaimResponseInsurance]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							unallocDeductable: Money? = nil)
	{
		self.init()
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
		case addItem
		case communicationRequest
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case identifier
		case insurance
		case insurer
		case item
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
		case totalBenefit
		case totalCost
		case unallocDeductable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.addItem = try [ClaimResponseAddItem](from: _container, forKeyIfPresent: .addItem)
		self.communicationRequest = try [Reference](from: _container, forKeyIfPresent: .communicationRequest)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [ClaimResponseInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
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
		self.totalBenefit = try Money(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Money(from: _container, forKeyIfPresent: .totalCost)
		self.unallocDeductable = try Money(from: _container, forKeyIfPresent: .unallocDeductable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try addItem?.encode(on: &_container, forKey: .addItem)
		try communicationRequest?.encode(on: &_container, forKey: .communicationRequest)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
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
		    && communicationRequest == _other.communicationRequest
		    && created == _other.created
		    && disposition == _other.disposition
		    && error == _other.error
		    && form == _other.form
		    && identifier == _other.identifier
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && outcome == _other.outcome
		    && patient == _other.patient
		    && payeeType == _other.payeeType
		    && payment == _other.payment
		    && processNote == _other.processNote
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && reserved == _other.reserved
		    && status == _other.status
		    && totalBenefit == _other.totalBenefit
		    && totalCost == _other.totalCost
		    && unallocDeductable == _other.unallocDeductable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(addItem)
		hasher.combine(communicationRequest)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(outcome)
		hasher.combine(patient)
		hasher.combine(payeeType)
		hasher.combine(payment)
		hasher.combine(processNote)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(reserved)
		hasher.combine(status)
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
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Group, Service or Product
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Added items details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimResponseAddItemDetail](from: _container, forKeyIfPresent: .detail)
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
		guard let _other = _other as? ClaimResponseAddItem else {
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
open class ClaimResponseAddItemDetail: BackboneElement {
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Service or Product
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication]? = nil,
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
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
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
		guard let _other = _other as? ClaimResponseAddItemDetail else {
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
	public var code: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
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
		self.code = try CodeableConcept(from: _container, forKey: .code)
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
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
open class ClaimResponseInsurance: BackboneElement {
	
	/// Service instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Is the focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Insurance information
	public var coverage: Reference
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
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
							preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(coverage: coverage, focal: focal, sequence: sequence)
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case focal; case _focal
		case preAuthRef; case _preAuthRef
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
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
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
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
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
		    && preAuthRef == _other.preAuthRef
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(claimResponse)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(preAuthRef)
		hasher.combine(sequence)
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
 
 The adjudication results.
 */
open class ClaimResponseItemAdjudication: BackboneElement {
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var category: CodeableConcept
	
	/// Explanation of Adjudication outcome
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
 Detail line items.
 
 The second tier service adjudications for submitted services.
 */
open class ClaimResponseItemDetail: BackboneElement {
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Detail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Subdetail line items
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequenceLinkId = sequenceLinkId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>,
							subDetail: [ClaimResponseItemDetailSubDetail]? = nil)
	{
		self.init(sequenceLinkId: sequenceLinkId)
		self.adjudication = adjudication
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noteNumber = noteNumber
		self.subDetail = subDetail
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adjudication
		case noteNumber; case _noteNumber
		case sequenceLinkId; case _sequenceLinkId
		case subDetail
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		self.subDetail = try [ClaimResponseItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
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
		    && noteNumber == _other.noteNumber
		    && sequenceLinkId == _other.sequenceLinkId
		    && subDetail == _other.subDetail
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(noteNumber)
		hasher.combine(sequenceLinkId)
		hasher.combine(subDetail)
	}
}

/**
 Subdetail line items.
 
 The third tier service adjudications for submitted services.
 */
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>
	
	/// List of note numbers which apply
	public var noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Subdetail level adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Designated initializer taking all required properties
	public init(sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequenceLinkId = sequenceLinkId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							adjudication: [ClaimResponseItemAdjudication]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							noteNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(sequenceLinkId: sequenceLinkId)
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
		case sequenceLinkId; case _sequenceLinkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adjudication = try [ClaimResponseItemAdjudication](from: _container, forKeyIfPresent: .adjudication)
		self.noteNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .noteNumber, auxiliaryKey: ._noteNumber)
		self.sequenceLinkId = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adjudication?.encode(on: &_container, forKey: .adjudication)
		try noteNumber?.encode(on: &_container, forKey: .noteNumber, auxiliaryKey: ._noteNumber)
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
		    && noteNumber == _other.noteNumber
		    && sequenceLinkId == _other.sequenceLinkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adjudication)
		hasher.combine(noteNumber)
		hasher.combine(sequenceLinkId)
	}
}

/**
 Payment details, if paid.
 
 Payment details for the claim if the claim has been paid.
 */
open class ClaimResponsePayment: BackboneElement {
	
	/// Partial or Complete
	public var type: CodeableConcept?
	
	/// Payment adjustment for non-Claim issues
	public var adjustment: Money?
	
	/// Explanation for the non-claim adjustment
	public var adjustmentReason: CodeableConcept?
	
	/// Expected data of Payment
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
 Processing notes.
 
 Note text.
 */
open class ClaimResponseProcessNote: BackboneElement {
	
	/// Sequence Number for this note
	public var number: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// display | print | printoper
	public var type: CodeableConcept?
	
	/// Note explanatory text
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
