//
//  InsurancePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/InsurancePlan)
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
 Plan details.
 
 InsurancePlan describes the costs to the subscriber or beneficiary associated with benefits, as well as additional
 information about the offering, such as who administers the plan, a coverage area, contact information, etc.  The
 specific benefits covered by the plan are described in the `InsuranceProduct` referenced in `InsurancePlan.product`.
 */
public struct InsurancePlan: DomainResource {
	
	public static let resourceType: ResourceType = .insurancePlan
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Where product-plan applies
	public var coverageArea: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Overall costs
	public var generalCost: [InsurancePlanGeneralCost]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for Plan
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// The product that this plan is available under
	public var product: Reference?
	
	/// Individual cost elements
	public var specificCost: [InsurancePlanSpecificCost]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Classification of Plan
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		case resourceType
		case contained
		case coverageArea
		case `extension` = "extension"
		case generalCost
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case network
		case product
		case specificCost
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.generalCost = try [InsurancePlanGeneralCost](from: _container, forKeyIfPresent: .generalCost)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.product = try Reference(from: _container, forKeyIfPresent: .product)
		self.specificCost = try [InsurancePlanSpecificCost](from: _container, forKeyIfPresent: .specificCost)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try generalCost?.encode(on: &_container, forKey: .generalCost)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network)
		try product?.encode(on: &_container, forKey: .product)
		try specificCost?.encode(on: &_container, forKey: .specificCost)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Overall costs.
 
 Overall costs associated with the plan.
 */
public struct InsurancePlanGeneralCost: BackboneElement {
	
	/// Additional cost information
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Cost value
	public var cost: Money?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Number of enrollees
	public var groupSize: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Classification of specific cost
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		comment: FHIRPrimitive<FHIRString>? = nil,
		cost: Money? = nil,
		`extension`: [Extension]? = nil,
		groupSize: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case groupSize; case _groupSize
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.cost = try Money(from: _container, forKeyIfPresent: .cost)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupSize = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .groupSize, auxiliaryKey: ._groupSize)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try cost?.encode(on: &_container, forKey: .cost)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupSize?.encode(on: &_container, forKey: .groupSize, auxiliaryKey: ._groupSize)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Individual cost elements.
 
 Costs associated with the coverage provided by the product-plan.
 */
public struct InsurancePlanSpecificCost: BackboneElement {
	
	/// Benefits list
	public var benefit: [InsurancePlanSpecificCostBenefit]?
	
	/// General category of benefit
	public var category: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		benefit: [InsurancePlanSpecificCostBenefit]? = nil,
		category: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.benefit = benefit
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case benefit
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
		self.benefit = try [InsurancePlanSpecificCostBenefit](from: _container, forKeyIfPresent: .benefit)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try benefit?.encode(on: &_container, forKey: .benefit)
		try category.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Benefits list.
 
 List of the specific benefits under this category of benefit.
 */
public struct InsurancePlanSpecificCostBenefit: BackboneElement {
	
	/// List of the costs
	public var cost: [InsurancePlanSpecificCostBenefitCost]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Classification of benefit provided
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		cost: [InsurancePlanSpecificCostBenefitCost]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.cost = cost
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.cost = try [InsurancePlanSpecificCostBenefitCost](from: _container, forKeyIfPresent: .cost)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try cost?.encode(on: &_container, forKey: .cost)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 List of the costs.
 
 List of the costs associated with a specific benefit.
 */
public struct InsurancePlanSpecificCostBenefitCost: BackboneElement {
	
	/// in-network | out-of-network | other
	public var applicability: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Additional information about the cost
	public var qualifier: [CodeableConcept]?
	
	/// Classification of specific cost
	public var type: CodeableConcept
	
	/// The actual cost value
	public var value: Quantity?
	
	/// Designated initializer
	public init(
		applicability: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		qualifier: [CodeableConcept]? = nil,
		type: CodeableConcept,
		value: Quantity? = nil
	) {
		self.applicability = applicability
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.qualifier = qualifier
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case qualifier
		case type
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.applicability = try CodeableConcept(from: _container, forKeyIfPresent: .applicability)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.qualifier = try [CodeableConcept](from: _container, forKeyIfPresent: .qualifier)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try applicability?.encode(on: &_container, forKey: .applicability)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try qualifier?.encode(on: &_container, forKey: .qualifier)
		try type.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value)
	}
}
