//
//  Coverage.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Coverage)
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
 Insurance or medical plan or a payment agreement.
 
 Financial instrument which may be used to reimburse or pay for health care products and services. Includes both
 insurance and self-payment.
 */
open class Coverage: DomainResource {
	
	override open class var resourceType: ResourceType { return .coverage }
	
	/// Business Identifier for the coverage
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Coverage category such as medical or accident
	public var type: CodeableConcept?
	
	/// Owner of the policy
	public var policyHolder: Reference?
	
	/// Subscriber to the policy
	public var subscriber: Reference?
	
	/// ID assigned to the subscriber
	public var subscriberId: FHIRPrimitive<FHIRString>?
	
	/// Plan beneficiary
	public var beneficiary: Reference
	
	/// Dependent number
	public var dependent: FHIRPrimitive<FHIRString>?
	
	/// Beneficiary relationship to the subscriber
	public var relationship: CodeableConcept?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// Issuer of the policy
	public var payor: [Reference]
	
	/// Additional coverage classifications
	public var `class`: [CoverageClass]?
	
	/// Relative order of the coverage
	public var order: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Insurer network
	public var network: FHIRPrimitive<FHIRString>?
	
	/// Patient payments for services/products
	public var costToBeneficiary: [CoverageCostToBeneficiary]?
	
	/// Reimbursement to insurer
	public var subrogation: FHIRPrimitive<FHIRBool>?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(beneficiary: Reference, payor: [Reference], status: FHIRPrimitive<FinancialResourceStatusCodes>) {
		self.beneficiary = beneficiary
		self.payor = payor
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							network: FHIRPrimitive<FHIRString>? = nil,
							order: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							payor: [Reference],
							period: Period? = nil,
							policyHolder: Reference? = nil,
							relationship: CodeableConcept? = nil,
							status: FHIRPrimitive<FinancialResourceStatusCodes>,
							subrogation: FHIRPrimitive<FHIRBool>? = nil,
							subscriber: Reference? = nil,
							subscriberId: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(beneficiary: beneficiary, payor: payor, status: status)
		self.`class` = `class`
		self.contained = contained
		self.contract = contract
		self.costToBeneficiary = costToBeneficiary
		self.dependent = dependent
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.network = network
		self.order = order
		self.period = period
		self.policyHolder = policyHolder
		self.relationship = relationship
		self.subrogation = subrogation
		self.subscriber = subscriber
		self.subscriberId = subscriberId
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case beneficiary
		case `class` = "class"
		case contract
		case costToBeneficiary
		case dependent; case _dependent
		case identifier
		case network; case _network
		case order; case _order
		case payor
		case period
		case policyHolder
		case relationship
		case status; case _status
		case subrogation; case _subrogation
		case subscriber
		case subscriberId; case _subscriberId
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.beneficiary = try Reference(from: _container, forKey: .beneficiary)
		self.`class` = try [CoverageClass](from: _container, forKeyIfPresent: .`class`)
		self.contract = try [Reference](from: _container, forKeyIfPresent: .contract)
		self.costToBeneficiary = try [CoverageCostToBeneficiary](from: _container, forKeyIfPresent: .costToBeneficiary)
		self.dependent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .dependent, auxiliaryKey: ._dependent)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.network = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .network, auxiliaryKey: ._network)
		self.order = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .order, auxiliaryKey: ._order)
		self.payor = try [Reference](from: _container, forKey: .payor)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policyHolder = try Reference(from: _container, forKeyIfPresent: .policyHolder)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subrogation = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .subrogation, auxiliaryKey: ._subrogation)
		self.subscriber = try Reference(from: _container, forKeyIfPresent: .subscriber)
		self.subscriberId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subscriberId, auxiliaryKey: ._subscriberId)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try beneficiary.encode(on: &_container, forKey: .beneficiary)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try contract?.encode(on: &_container, forKey: .contract)
		try costToBeneficiary?.encode(on: &_container, forKey: .costToBeneficiary)
		try dependent?.encode(on: &_container, forKey: .dependent, auxiliaryKey: ._dependent)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try network?.encode(on: &_container, forKey: .network, auxiliaryKey: ._network)
		try order?.encode(on: &_container, forKey: .order, auxiliaryKey: ._order)
		try payor.encode(on: &_container, forKey: .payor)
		try period?.encode(on: &_container, forKey: .period)
		try policyHolder?.encode(on: &_container, forKey: .policyHolder)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subrogation?.encode(on: &_container, forKey: .subrogation, auxiliaryKey: ._subrogation)
		try subscriber?.encode(on: &_container, forKey: .subscriber)
		try subscriberId?.encode(on: &_container, forKey: .subscriberId, auxiliaryKey: ._subscriberId)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Coverage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return beneficiary == _other.beneficiary
		    && `class` == _other.`class`
		    && contract == _other.contract
		    && costToBeneficiary == _other.costToBeneficiary
		    && dependent == _other.dependent
		    && identifier == _other.identifier
		    && network == _other.network
		    && order == _other.order
		    && payor == _other.payor
		    && period == _other.period
		    && policyHolder == _other.policyHolder
		    && relationship == _other.relationship
		    && status == _other.status
		    && subrogation == _other.subrogation
		    && subscriber == _other.subscriber
		    && subscriberId == _other.subscriberId
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(beneficiary)
		hasher.combine(`class`)
		hasher.combine(contract)
		hasher.combine(costToBeneficiary)
		hasher.combine(dependent)
		hasher.combine(identifier)
		hasher.combine(network)
		hasher.combine(order)
		hasher.combine(payor)
		hasher.combine(period)
		hasher.combine(policyHolder)
		hasher.combine(relationship)
		hasher.combine(status)
		hasher.combine(subrogation)
		hasher.combine(subscriber)
		hasher.combine(subscriberId)
		hasher.combine(type)
	}
}

/**
 Additional coverage classifications.
 
 A suite of underwriter specific classifiers.
 */
open class CoverageClass: BackboneElement {
	
	/// Type of class such as 'group' or 'plan'
	public var type: CodeableConcept
	
	/// Value associated with the type
	public var value: FHIRPrimitive<FHIRString>
	
	/// Human readable description of the type and value
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: FHIRPrimitive<FHIRString>) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageClass else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Patient payments for services/products.
 
 A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have
 been  included on the health card.
 */
open class CoverageCostToBeneficiary: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case money(Money)
		case quantity(Quantity)
	}
	
	/// Cost category
	public var type: CodeableConcept?
	
	/// The amount or percentage due from the beneficiary
	/// One of `value[x]`
	public var value: ValueX
	
	/// Exceptions for patient payments
	public var exception: [CoverageCostToBeneficiaryException]?
	
	/// Designated initializer taking all required properties
	public init(value: ValueX) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							exception: [CoverageCostToBeneficiaryException]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil,
							value: ValueX)
	{
		self.init(value: value)
		self.exception = exception
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exception
		case type
		case valueMoney
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueMoney) || _container.contains(CodingKeys.valueQuantity) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueMoney, CodingKeys.valueQuantity], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.exception = try [CoverageCostToBeneficiaryException](from: _container, forKeyIfPresent: .exception)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueMoney = try Money(from: _container, forKeyIfPresent: .valueMoney) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMoney, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .money(valueMoney)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try exception?.encode(on: &_container, forKey: .exception)
		try type?.encode(on: &_container, forKey: .type)
		
			switch value {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .valueMoney)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageCostToBeneficiary else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return exception == _other.exception
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(exception)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Exceptions for patient payments.
 
 A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
 */
open class CoverageCostToBeneficiaryException: BackboneElement {
	
	/// Exception category
	public var type: CodeableConcept
	
	/// The effective period of the exception
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period?.encode(on: &_container, forKey: .period)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageCostToBeneficiaryException else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(type)
	}
}
