//
//  Coverage.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Coverage)
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
 Insurance or medical plan or a payment agreement.
 
 Financial instrument which may be used to reimburse or pay for health care products and services. Includes both
 insurance and self-payment.
 */
public struct Coverage: DomainResource {
	
	public static let resourceType: ResourceType = .coverage
	
	/// Plan beneficiary
	public var beneficiary: Reference
	
	/// Additional coverage classifications
	public var `class`: [CoverageClass]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// Patient payments for services/products
	public var costToBeneficiary: [CoverageCostToBeneficiary]?
	
	/// Dependent number
	public var dependent: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier(s) for this coverage
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Insurance plan details
	public var insurancePlan: Reference?
	
	/// Issuer of the policy
	public var insurer: Reference?
	
	/// The nature of the coverage be it insurance, or cash payment such as self-pay.
	public var kind: FHIRPrimitive<Kind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Insurer network
	public var network: FHIRPrimitive<FHIRString>?
	
	/// Relative order of the coverage
	public var order: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Self-pay parties and responsibility
	public var paymentBy: [CoveragePaymentBy]?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// Owner of the policy
	public var policyHolder: Reference?
	
	/// Beneficiary relationship to the subscriber
	public var relationship: CodeableConcept?
	
	/// The status of the resource instance. The status element does not indicate whether the policy reflected in the
	/// instance is in-force at any particular point in time, that would be conveyed via the 'period' element.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Reason for status change
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Reimbursement to insurer
	public var subrogation: FHIRPrimitive<FHIRBool>?
	
	/// Subscriber to the policy
	public var subscriber: Reference?
	
	/// ID assigned to the subscriber
	public var subscriberId: [Identifier]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Coverage category such as medical or accident
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		beneficiary: Reference,
		`class`: [CoverageClass]? = nil,
		contained: [ResourceProxy]? = nil,
		contract: [Reference]? = nil,
		costToBeneficiary: [CoverageCostToBeneficiary]? = nil,
		dependent: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurancePlan: Reference? = nil,
		insurer: Reference? = nil,
		kind: FHIRPrimitive<Kind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		network: FHIRPrimitive<FHIRString>? = nil,
		order: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		paymentBy: [CoveragePaymentBy]? = nil,
		period: Period? = nil,
		policyHolder: Reference? = nil,
		relationship: CodeableConcept? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		statusReason: FHIRPrimitive<FHIRString>? = nil,
		subrogation: FHIRPrimitive<FHIRBool>? = nil,
		subscriber: Reference? = nil,
		subscriberId: [Identifier]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.beneficiary = beneficiary
		self.`class` = `class`
		self.contained = contained
		self.contract = contract
		self.costToBeneficiary = costToBeneficiary
		self.dependent = dependent
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurancePlan = insurancePlan
		self.insurer = insurer
		self.kind = kind
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.network = network
		self.order = order
		self.paymentBy = paymentBy
		self.period = period
		self.policyHolder = policyHolder
		self.relationship = relationship
		self.status = status
		self.statusReason = statusReason
		self.subrogation = subrogation
		self.subscriber = subscriber
		self.subscriberId = subscriberId
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case beneficiary
		case `class` = "class"
		case contained
		case contract
		case costToBeneficiary
		case dependent; case _dependent
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurancePlan
		case insurer
		case kind; case _kind
		case language; case _language
		case meta
		case modifierExtension
		case network; case _network
		case order; case _order
		case paymentBy
		case period
		case policyHolder
		case relationship
		case status; case _status
		case statusReason; case _statusReason
		case subrogation; case _subrogation
		case subscriber
		case subscriberId
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.beneficiary = try Reference(from: _container, forKey: .beneficiary)
		self.`class` = try [CoverageClass](from: _container, forKeyIfPresent: .`class`)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contract = try [Reference](from: _container, forKeyIfPresent: .contract)
		self.costToBeneficiary = try [CoverageCostToBeneficiary](from: _container, forKeyIfPresent: .costToBeneficiary)
		self.dependent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .dependent, auxiliaryKey: ._dependent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurancePlan = try Reference(from: _container, forKeyIfPresent: .insurancePlan)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.kind = try FHIRPrimitive<Kind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .network, auxiliaryKey: ._network)
		self.order = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .order, auxiliaryKey: ._order)
		self.paymentBy = try [CoveragePaymentBy](from: _container, forKeyIfPresent: .paymentBy)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policyHolder = try Reference(from: _container, forKeyIfPresent: .policyHolder)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.subrogation = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .subrogation, auxiliaryKey: ._subrogation)
		self.subscriber = try Reference(from: _container, forKeyIfPresent: .subscriber)
		self.subscriberId = try [Identifier](from: _container, forKeyIfPresent: .subscriberId)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try beneficiary.encode(on: &_container, forKey: .beneficiary)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try contained?.encode(on: &_container, forKey: .contained)
		try contract?.encode(on: &_container, forKey: .contract)
		try costToBeneficiary?.encode(on: &_container, forKey: .costToBeneficiary)
		try dependent?.encode(on: &_container, forKey: .dependent, auxiliaryKey: ._dependent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurancePlan?.encode(on: &_container, forKey: .insurancePlan)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network, auxiliaryKey: ._network)
		try order?.encode(on: &_container, forKey: .order, auxiliaryKey: ._order)
		try paymentBy?.encode(on: &_container, forKey: .paymentBy)
		try period?.encode(on: &_container, forKey: .period)
		try policyHolder?.encode(on: &_container, forKey: .policyHolder)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try subrogation?.encode(on: &_container, forKey: .subrogation, auxiliaryKey: ._subrogation)
		try subscriber?.encode(on: &_container, forKey: .subscriber)
		try subscriberId?.encode(on: &_container, forKey: .subscriberId)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Additional coverage classifications.
 
 A suite of underwriter specific classifiers.
 */
public struct CoverageClass: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Human readable description of the type and value
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Type of class such as 'group' or 'plan'
	public var type: CodeableConcept
	
	/// Value associated with the type
	public var value: Identifier
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept,
		value: Identifier
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case type
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Identifier(from: _container, forKey: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value)
	}
}

/**
 Patient payments for services/products.
 
 A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have
 been  included on the health card.
 */
public struct CoverageCostToBeneficiary: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case money(Money)
		indirect case quantity(Quantity)
	}
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Exceptions for patient payments
	public var exception: [CoverageCostToBeneficiaryException]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// In or out of network
	public var network: CodeableConcept?
	
	/// Annual or lifetime
	public var term: CodeableConcept?
	
	/// Cost category
	public var type: CodeableConcept?
	
	/// Individual or family
	public var unit: CodeableConcept?
	
	/// The amount or percentage due from the beneficiary
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		exception: [CoverageCostToBeneficiaryException]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		network: CodeableConcept? = nil,
		term: CodeableConcept? = nil,
		type: CodeableConcept? = nil,
		unit: CodeableConcept? = nil,
		value: ValueX? = nil
	) {
		self.category = category
		self.exception = exception
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.network = network
		self.term = term
		self.type = type
		self.unit = unit
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case exception
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case network
		case term
		case type
		case unit
		case valueMoney
		case valueQuantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.exception = try [CoverageCostToBeneficiaryException](from: _container, forKeyIfPresent: .exception)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try CodeableConcept(from: _container, forKeyIfPresent: .network)
		self.term = try CodeableConcept(from: _container, forKeyIfPresent: .term)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try exception?.encode(on: &_container, forKey: .exception)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network)
		try term?.encode(on: &_container, forKey: .term)
		try type?.encode(on: &_container, forKey: .type)
		try unit?.encode(on: &_container, forKey: .unit)
		if let _enum = value {
		switch _enum {
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .valueMoney)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			_t_value = .money(valueMoney)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		return _t_value
	}
}

/**
 Exceptions for patient payments.
 
 A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
 */
public struct CoverageCostToBeneficiaryException: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The effective period of the exception
	public var period: Period?
	
	/// Exception category
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Self-pay parties and responsibility.
 
 Link to the paying party and optionally what specifically they will be responsible to pay.
 */
public struct CoveragePaymentBy: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Parties performing self-payment
	public var party: Reference
	
	/// Party's responsibility
	public var responsibility: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference,
		responsibility: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.responsibility = responsibility
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case party
		case responsibility; case _responsibility
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.party = try Reference(from: _container, forKey: .party)
		self.responsibility = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responsibility, auxiliaryKey: ._responsibility)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try party.encode(on: &_container, forKey: .party)
		try responsibility?.encode(on: &_container, forKey: .responsibility, auxiliaryKey: ._responsibility)
	}
}
