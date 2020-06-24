//
//  InsurancePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/InsurancePlan)
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
 Details of a Health Insurance product/plan provided by an organization.
 */
open class InsurancePlan: DomainResource {
	
	override open class var resourceType: ResourceType { return .insurancePlan }
	
	/// Business Identifier for Product
	public var identifier: [Identifier]?
	
	/// The current state of the health insurance product.
	public var status: FHIRPrimitive<PublicationStatus>?
	
	/// Kind of product
	public var type: [CodeableConcept]?
	
	/// Official name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Alternate names
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// When the product is available
	public var period: Period?
	
	/// Plan issuer
	public var ownedBy: Reference?
	
	/// Product administrator
	public var administeredBy: Reference?
	
	/// Where product applies
	public var coverageArea: [Reference]?
	
	/// Contact for the product
	public var contact: [InsurancePlanContact]?
	
	/// Technical endpoint
	public var endpoint: [Reference]?
	
	/// What networks are Included
	public var network: [Reference]?
	
	/// Coverage details
	public var coverage: [InsurancePlanCoverage]?
	
	/// Plan details
	public var plan: [InsurancePlanPlan]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							administeredBy: Reference? = nil,
							alias: [FHIRPrimitive<FHIRString>]? = nil,
							contact: [InsurancePlanContact]? = nil,
							contained: [ResourceProxy]? = nil,
							coverage: [InsurancePlanCoverage]? = nil,
							coverageArea: [Reference]? = nil,
							endpoint: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							network: [Reference]? = nil,
							ownedBy: Reference? = nil,
							period: Period? = nil,
							plan: [InsurancePlanPlan]? = nil,
							status: FHIRPrimitive<PublicationStatus>? = nil,
							text: Narrative? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init()
		self.administeredBy = administeredBy
		self.alias = alias
		self.contact = contact
		self.contained = contained
		self.coverage = coverage
		self.coverageArea = coverageArea
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.network = network
		self.ownedBy = ownedBy
		self.period = period
		self.plan = plan
		self.status = status
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administeredBy
		case alias; case _alias
		case contact
		case coverage
		case coverageArea
		case endpoint
		case identifier
		case name; case _name
		case network
		case ownedBy
		case period
		case plan
		case status; case _status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administeredBy = try Reference(from: _container, forKeyIfPresent: .administeredBy)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.contact = try [InsurancePlanContact](from: _container, forKeyIfPresent: .contact)
		self.coverage = try [InsurancePlanCoverage](from: _container, forKeyIfPresent: .coverage)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.ownedBy = try Reference(from: _container, forKeyIfPresent: .ownedBy)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.plan = try [InsurancePlanPlan](from: _container, forKeyIfPresent: .plan)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administeredBy?.encode(on: &_container, forKey: .administeredBy)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try contact?.encode(on: &_container, forKey: .contact)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try ownedBy?.encode(on: &_container, forKey: .ownedBy)
		try period?.encode(on: &_container, forKey: .period)
		try plan?.encode(on: &_container, forKey: .plan)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlan else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return administeredBy == _other.administeredBy
		    && alias == _other.alias
		    && contact == _other.contact
		    && coverage == _other.coverage
		    && coverageArea == _other.coverageArea
		    && endpoint == _other.endpoint
		    && identifier == _other.identifier
		    && name == _other.name
		    && network == _other.network
		    && ownedBy == _other.ownedBy
		    && period == _other.period
		    && plan == _other.plan
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administeredBy)
		hasher.combine(alias)
		hasher.combine(contact)
		hasher.combine(coverage)
		hasher.combine(coverageArea)
		hasher.combine(endpoint)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(network)
		hasher.combine(ownedBy)
		hasher.combine(period)
		hasher.combine(plan)
		hasher.combine(status)
		hasher.combine(type)
	}
}

/**
 Contact for the product.
 
 The contact for the health insurance product for a certain purpose.
 */
open class InsurancePlanContact: BackboneElement {
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// Contact details (telephone, email, etc.)  for a contact
	public var telecom: [ContactPoint]?
	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							address: Address? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: HumanName? = nil,
							purpose: CodeableConcept? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.address = address
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.purpose = purpose
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case name
		case purpose
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.purpose = try CodeableConcept(from: _container, forKeyIfPresent: .purpose)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try name?.encode(on: &_container, forKey: .name)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && name == _other.name
		    && purpose == _other.purpose
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(name)
		hasher.combine(purpose)
		hasher.combine(telecom)
	}
}

/**
 Coverage details.
 
 Details about the coverage offered by the insurance product.
 */
open class InsurancePlanCoverage: BackboneElement {
	
	/// Type of coverage
	public var type: CodeableConcept
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// List of benefits
	public var benefit: [InsurancePlanCoverageBenefit]
	
	/// Designated initializer taking all required properties
	public init(benefit: [InsurancePlanCoverageBenefit], type: CodeableConcept) {
		self.benefit = benefit
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							benefit: [InsurancePlanCoverageBenefit],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							network: [Reference]? = nil,
							type: CodeableConcept)
	{
		self.init(benefit: benefit, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.network = network
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case benefit
		case network
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.benefit = try [InsurancePlanCoverageBenefit](from: _container, forKey: .benefit)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try benefit.encode(on: &_container, forKey: .benefit)
		try network?.encode(on: &_container, forKey: .network)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanCoverage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return benefit == _other.benefit
		    && network == _other.network
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(benefit)
		hasher.combine(network)
		hasher.combine(type)
	}
}

/**
 List of benefits.
 
 Specific benefits under this type of coverage.
 */
open class InsurancePlanCoverageBenefit: BackboneElement {
	
	/// Type of benefit
	public var type: CodeableConcept
	
	/// Referral requirements
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// Benefit limits
	public var limit: [InsurancePlanCoverageBenefitLimit]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							limit: [InsurancePlanCoverageBenefitLimit]? = nil,
							modifierExtension: [Extension]? = nil,
							requirement: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.limit = limit
		self.modifierExtension = modifierExtension
		self.requirement = requirement
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case limit
		case requirement; case _requirement
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.limit = try [InsurancePlanCoverageBenefitLimit](from: _container, forKeyIfPresent: .limit)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirement, auxiliaryKey: ._requirement)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try limit?.encode(on: &_container, forKey: .limit)
		try requirement?.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanCoverageBenefit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return limit == _other.limit
		    && requirement == _other.requirement
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(limit)
		hasher.combine(requirement)
		hasher.combine(type)
	}
}

/**
 Benefit limits.
 
 The specific limits on the benefit.
 */
open class InsurancePlanCoverageBenefitLimit: BackboneElement {
	
	/// Maximum value allowed
	public var value: Quantity?
	
	/// Benefit limit details
	public var code: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: Quantity? = nil)
	{
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanCoverageBenefitLimit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Plan details.
 
 Details about an insurance plan.
 */
open class InsurancePlanPlan: BackboneElement {
	
	/// Business Identifier for Product
	public var identifier: [Identifier]?
	
	/// Type of plan
	public var type: CodeableConcept?
	
	/// Where product applies
	public var coverageArea: [Reference]?
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// Overall costs
	public var generalCost: [InsurancePlanPlanGeneralCost]?
	
	/// Specific costs
	public var specificCost: [InsurancePlanPlanSpecificCost]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							coverageArea: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							generalCost: [InsurancePlanPlanGeneralCost]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							modifierExtension: [Extension]? = nil,
							network: [Reference]? = nil,
							specificCost: [InsurancePlanPlanSpecificCost]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.coverageArea = coverageArea
		self.`extension` = `extension`
		self.generalCost = generalCost
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.network = network
		self.specificCost = specificCost
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverageArea
		case generalCost
		case identifier
		case network
		case specificCost
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.generalCost = try [InsurancePlanPlanGeneralCost](from: _container, forKeyIfPresent: .generalCost)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.specificCost = try [InsurancePlanPlanSpecificCost](from: _container, forKeyIfPresent: .specificCost)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try generalCost?.encode(on: &_container, forKey: .generalCost)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try network?.encode(on: &_container, forKey: .network)
		try specificCost?.encode(on: &_container, forKey: .specificCost)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanPlan else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coverageArea == _other.coverageArea
		    && generalCost == _other.generalCost
		    && identifier == _other.identifier
		    && network == _other.network
		    && specificCost == _other.specificCost
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverageArea)
		hasher.combine(generalCost)
		hasher.combine(identifier)
		hasher.combine(network)
		hasher.combine(specificCost)
		hasher.combine(type)
	}
}

/**
 Overall costs.
 
 Overall costs associated with the plan.
 */
open class InsurancePlanPlanGeneralCost: BackboneElement {
	
	/// Type of cost
	public var type: CodeableConcept?
	
	/// Number of enrollees
	public var groupSize: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Cost value
	public var cost: Money?
	
	/// Additional cost information
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comment: FHIRPrimitive<FHIRString>? = nil,
							cost: Money? = nil,
							`extension`: [Extension]? = nil,
							groupSize: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.comment = comment
		self.cost = cost
		self.`extension` = `extension`
		self.groupSize = groupSize
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case cost
		case groupSize; case _groupSize
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.cost = try Money(from: _container, forKeyIfPresent: .cost)
		self.groupSize = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .groupSize, auxiliaryKey: ._groupSize)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try cost?.encode(on: &_container, forKey: .cost)
		try groupSize?.encode(on: &_container, forKey: .groupSize, auxiliaryKey: ._groupSize)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanPlanGeneralCost else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comment == _other.comment
		    && cost == _other.cost
		    && groupSize == _other.groupSize
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(cost)
		hasher.combine(groupSize)
		hasher.combine(type)
	}
}

/**
 Specific costs.
 
 Costs associated with the coverage provided by the product.
 */
open class InsurancePlanPlanSpecificCost: BackboneElement {
	
	/// General category of benefit
	public var category: CodeableConcept
	
	/// Benefits list
	public var benefit: [InsurancePlanPlanSpecificCostBenefit]?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept) {
		self.category = category
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							benefit: [InsurancePlanPlanSpecificCostBenefit]? = nil,
							category: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(category: category)
		self.benefit = benefit
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case benefit
		case category
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.benefit = try [InsurancePlanPlanSpecificCostBenefit](from: _container, forKeyIfPresent: .benefit)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try benefit?.encode(on: &_container, forKey: .benefit)
		try category.encode(on: &_container, forKey: .category)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanPlanSpecificCost else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return benefit == _other.benefit
		    && category == _other.category
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(benefit)
		hasher.combine(category)
	}
}

/**
 Benefits list.
 
 List of the specific benefits under this category of benefit.
 */
open class InsurancePlanPlanSpecificCostBenefit: BackboneElement {
	
	/// Type of specific benefit
	public var type: CodeableConcept
	
	/// List of the costs
	public var cost: [InsurancePlanPlanSpecificCostBenefitCost]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							cost: [InsurancePlanPlanSpecificCostBenefitCost]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.cost = cost
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cost = try [InsurancePlanPlanSpecificCostBenefitCost](from: _container, forKeyIfPresent: .cost)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cost?.encode(on: &_container, forKey: .cost)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanPlanSpecificCostBenefit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cost == _other.cost
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cost)
		hasher.combine(type)
	}
}

/**
 List of the costs.
 
 List of the costs associated with a specific benefit.
 */
open class InsurancePlanPlanSpecificCostBenefitCost: BackboneElement {
	
	/// Type of cost
	public var type: CodeableConcept
	
	/// in-network | out-of-network | other
	public var applicability: CodeableConcept?
	
	/// Additional information about the cost
	public var qualifiers: [CodeableConcept]?
	
	/// The actual cost value
	public var value: Quantity?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							applicability: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							qualifiers: [CodeableConcept]? = nil,
							type: CodeableConcept,
							value: Quantity? = nil)
	{
		self.init(type: type)
		self.applicability = applicability
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.qualifiers = qualifiers
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case qualifiers
		case type
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.applicability = try CodeableConcept(from: _container, forKeyIfPresent: .applicability)
		self.qualifiers = try [CodeableConcept](from: _container, forKeyIfPresent: .qualifiers)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try applicability?.encode(on: &_container, forKey: .applicability)
		try qualifiers?.encode(on: &_container, forKey: .qualifiers)
		try type.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanPlanSpecificCostBenefitCost else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return applicability == _other.applicability
		    && qualifiers == _other.qualifiers
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(applicability)
		hasher.combine(qualifiers)
		hasher.combine(type)
		hasher.combine(value)
	}
}
