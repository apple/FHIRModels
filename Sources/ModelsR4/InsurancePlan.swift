//
//  InsurancePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/InsurancePlan)
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
 Details of a Health Insurance product/plan provided by an organization.
 */
public struct InsurancePlan: DomainResource {
	
	public static let resourceType: ResourceType = .insurancePlan
	
	/// Product administrator
	public var administeredBy: Reference?
	
	/// Alternate names
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Contact for the product
	public var contact: [InsurancePlanContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Coverage details
	public var coverage: [InsurancePlanCoverage]?
	
	/// Where product applies
	public var coverageArea: [Reference]?
	
	/// Technical endpoint
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for Product
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Official name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// What networks are Included
	public var network: [Reference]?
	
	/// Plan issuer
	public var ownedBy: Reference?
	
	/// When the product is available
	public var period: Period?
	
	/// Plan details
	public var plan: [InsurancePlanPlan]?
	
	/// The current state of the health insurance product.
	public var status: FHIRPrimitive<PublicationStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of product
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		type: [CodeableConcept]? = nil
	) {
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
		case resourceType
		case administeredBy
		case alias; case _alias
		case contact
		case contained
		case coverage
		case coverageArea
		case endpoint
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case network
		case ownedBy
		case period
		case plan
		case status; case _status
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.administeredBy = try Reference(from: _container, forKeyIfPresent: .administeredBy)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.contact = try [InsurancePlanContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [InsurancePlanCoverage](from: _container, forKeyIfPresent: .coverage)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.ownedBy = try Reference(from: _container, forKeyIfPresent: .ownedBy)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.plan = try [InsurancePlanPlan](from: _container, forKeyIfPresent: .plan)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try administeredBy?.encode(on: &_container, forKey: .administeredBy)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try ownedBy?.encode(on: &_container, forKey: .ownedBy)
		try period?.encode(on: &_container, forKey: .period)
		try plan?.encode(on: &_container, forKey: .plan)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Contact for the product.
 
 The contact for the health insurance product for a certain purpose.
 */
public struct InsurancePlanContact: BackboneElement {
	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc.)  for a contact
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		address: Address? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: HumanName? = nil,
		purpose: CodeableConcept? = nil,
		telecom: [ContactPoint]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name
		case purpose
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.purpose = try CodeableConcept(from: _container, forKeyIfPresent: .purpose)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try address?.encode(on: &_container, forKey: .address)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}

/**
 Coverage details.
 
 Details about the coverage offered by the insurance product.
 */
public struct InsurancePlanCoverage: BackboneElement {
	
	/// List of benefits
	public var benefit: [InsurancePlanCoverageBenefit]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// Type of coverage
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		benefit: [InsurancePlanCoverageBenefit],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		network: [Reference]? = nil,
		type: CodeableConcept
	) {
		self.benefit = benefit
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.network = network
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case benefit
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case network
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.benefit = try [InsurancePlanCoverageBenefit](from: _container, forKey: .benefit)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try benefit.encode(on: &_container, forKey: .benefit)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 List of benefits.
 
 Specific benefits under this type of coverage.
 */
public struct InsurancePlanCoverageBenefit: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Benefit limits
	public var limit: [InsurancePlanCoverageBenefitLimit]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Referral requirements
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// Type of benefit
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: [InsurancePlanCoverageBenefitLimit]? = nil,
		modifierExtension: [Extension]? = nil,
		requirement: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.limit = limit
		self.modifierExtension = modifierExtension
		self.requirement = requirement
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case limit
		case modifierExtension
		case requirement; case _requirement
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.limit = try [InsurancePlanCoverageBenefitLimit](from: _container, forKeyIfPresent: .limit)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirement, auxiliaryKey: ._requirement)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try limit?.encode(on: &_container, forKey: .limit)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try requirement?.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Benefit limits.
 
 The specific limits on the benefit.
 */
public struct InsurancePlanCoverageBenefitLimit: BackboneElement {
	
	/// Benefit limit details
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Maximum value allowed
	public var value: Quantity?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: Quantity? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Quantity(from: _container, forKeyIfPresent: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value)
	}
}

/**
 Plan details.
 
 Details about an insurance plan.
 */
public struct InsurancePlanPlan: BackboneElement {
	
	/// Where product applies
	public var coverageArea: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Overall costs
	public var generalCost: [InsurancePlanPlanGeneralCost]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for Product
	public var identifier: [Identifier]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// Specific costs
	public var specificCost: [InsurancePlanPlanSpecificCost]?
	
	/// Type of plan
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		coverageArea: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		generalCost: [InsurancePlanPlanGeneralCost]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		modifierExtension: [Extension]? = nil,
		network: [Reference]? = nil,
		specificCost: [InsurancePlanPlanSpecificCost]? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case generalCost
		case id; case _id
		case identifier
		case modifierExtension
		case network
		case specificCost
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.generalCost = try [InsurancePlanPlanGeneralCost](from: _container, forKeyIfPresent: .generalCost)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.specificCost = try [InsurancePlanPlanSpecificCost](from: _container, forKeyIfPresent: .specificCost)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try generalCost?.encode(on: &_container, forKey: .generalCost)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network)
		try specificCost?.encode(on: &_container, forKey: .specificCost)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Overall costs.
 
 Overall costs associated with the plan.
 */
public struct InsurancePlanPlanGeneralCost: BackboneElement {
	
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
	
	/// Type of cost
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
 Specific costs.
 
 Costs associated with the coverage provided by the product.
 */
public struct InsurancePlanPlanSpecificCost: BackboneElement {
	
	/// Benefits list
	public var benefit: [InsurancePlanPlanSpecificCostBenefit]?
	
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
		benefit: [InsurancePlanPlanSpecificCostBenefit]? = nil,
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
		self.benefit = try [InsurancePlanPlanSpecificCostBenefit](from: _container, forKeyIfPresent: .benefit)
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
public struct InsurancePlanPlanSpecificCostBenefit: BackboneElement {
	
	/// List of the costs
	public var cost: [InsurancePlanPlanSpecificCostBenefitCost]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of specific benefit
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		cost: [InsurancePlanPlanSpecificCostBenefitCost]? = nil,
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
		self.cost = try [InsurancePlanPlanSpecificCostBenefitCost](from: _container, forKeyIfPresent: .cost)
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
public struct InsurancePlanPlanSpecificCostBenefitCost: BackboneElement {
	
	/// in-network | out-of-network | other
	public var applicability: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Additional information about the cost
	public var qualifiers: [CodeableConcept]?
	
	/// Type of cost
	public var type: CodeableConcept
	
	/// The actual cost value
	public var value: Quantity?
	
	/// Designated initializer
	public init(
		applicability: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		qualifiers: [CodeableConcept]? = nil,
		type: CodeableConcept,
		value: Quantity? = nil
	) {
		self.applicability = applicability
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.qualifiers = qualifiers
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case qualifiers
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
		self.qualifiers = try [CodeableConcept](from: _container, forKeyIfPresent: .qualifiers)
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
		try qualifiers?.encode(on: &_container, forKey: .qualifiers)
		try type.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value)
	}
}
