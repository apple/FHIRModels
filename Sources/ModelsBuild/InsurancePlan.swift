//
//  InsurancePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/InsurancePlan)
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
 Plan details.
 
 InsurancePlan describes the costs to the subscriber or beneficiary associated with benefits, as well as additional
 information about the offering, such as who administers the plan, a coverage area, contact information, etc.  The
 specific benefits covered by the plan are described in the `InsuranceProduct` referenced in `InsurancePlan.product`.
 */
open class InsurancePlan: DomainResource {
	
	override open class var resourceType: ResourceType { return .insurancePlan }
	
	/// Business Identifier for Plan
	public var identifier: [Identifier]?
	
	/// Classification of Plan
	public var type: CodeableConcept?
	
	/// The product that this plan is available under
	public var product: Reference?
	
	/// Where product-plan applies
	public var coverageArea: [Reference]?
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// Overall costs
	public var generalCost: [InsurancePlanGeneralCost]?
	
	/// Individual cost elements
	public var specificCost: [InsurancePlanSpecificCost]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contained: [ResourceProxy]? = nil,
		coverageArea: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		generalCost: [InsurancePlanGeneralCost]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		network: [Reference]? = nil,
		product: Reference? = nil,
		specificCost: [InsurancePlanSpecificCost]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.contained = contained
		self.coverageArea = coverageArea
		self.`extension` = `extension`
		self.generalCost = generalCost
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.network = network
		self.product = product
		self.specificCost = specificCost
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverageArea
		case generalCost
		case identifier
		case network
		case product
		case specificCost
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.generalCost = try [InsurancePlanGeneralCost](from: _container, forKeyIfPresent: .generalCost)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.product = try Reference(from: _container, forKeyIfPresent: .product)
		self.specificCost = try [InsurancePlanSpecificCost](from: _container, forKeyIfPresent: .specificCost)
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
		try product?.encode(on: &_container, forKey: .product)
		try specificCost?.encode(on: &_container, forKey: .specificCost)
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
		return coverageArea == _other.coverageArea
		    && generalCost == _other.generalCost
		    && identifier == _other.identifier
		    && network == _other.network
		    && product == _other.product
		    && specificCost == _other.specificCost
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverageArea)
		hasher.combine(generalCost)
		hasher.combine(identifier)
		hasher.combine(network)
		hasher.combine(product)
		hasher.combine(specificCost)
		hasher.combine(type)
	}
}

/**
 Overall costs.
 
 Overall costs associated with the plan.
 */
open class InsurancePlanGeneralCost: BackboneElement {
	
	/// Classification of specific cost
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
		type: CodeableConcept? = nil
	) {
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
		guard let _other = _other as? InsurancePlanGeneralCost else {
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
 Individual cost elements.
 
 Costs associated with the coverage provided by the product-plan.
 */
open class InsurancePlanSpecificCost: BackboneElement {
	
	/// General category of benefit
	public var category: CodeableConcept
	
	/// Benefits list
	public var benefit: [InsurancePlanSpecificCostBenefit]?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept) {
		self.category = category
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		benefit: [InsurancePlanSpecificCostBenefit]? = nil,
		category: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		self.benefit = try [InsurancePlanSpecificCostBenefit](from: _container, forKeyIfPresent: .benefit)
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
		guard let _other = _other as? InsurancePlanSpecificCost else {
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
open class InsurancePlanSpecificCostBenefit: BackboneElement {
	
	/// Classification of benefit provided
	public var type: CodeableConcept
	
	/// List of the costs
	public var cost: [InsurancePlanSpecificCostBenefitCost]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		cost: [InsurancePlanSpecificCostBenefitCost]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
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
		self.cost = try [InsurancePlanSpecificCostBenefitCost](from: _container, forKeyIfPresent: .cost)
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
		guard let _other = _other as? InsurancePlanSpecificCostBenefit else {
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
open class InsurancePlanSpecificCostBenefitCost: BackboneElement {
	
	/// Classification of specific cost
	public var type: CodeableConcept
	
	/// in-network | out-of-network | other
	public var applicability: CodeableConcept?
	
	/// Additional information about the cost
	public var qualifier: [CodeableConcept]?
	
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
		qualifier: [CodeableConcept]? = nil,
		type: CodeableConcept,
		value: Quantity? = nil
	) {
		self.init(type: type)
		self.applicability = applicability
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.qualifier = qualifier
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case qualifier
		case type
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.applicability = try CodeableConcept(from: _container, forKeyIfPresent: .applicability)
		self.qualifier = try [CodeableConcept](from: _container, forKeyIfPresent: .qualifier)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try applicability?.encode(on: &_container, forKey: .applicability)
		try qualifier?.encode(on: &_container, forKey: .qualifier)
		try type.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsurancePlanSpecificCostBenefitCost else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return applicability == _other.applicability
		    && qualifier == _other.qualifier
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(applicability)
		hasher.combine(qualifier)
		hasher.combine(type)
		hasher.combine(value)
	}
}
