//
//  InsuranceProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/InsuranceProduct)
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
 Details of a Health Insurance product provided by an organization.
 
 A product is a discrete package of health insurance coverage benefits that are offered under a particular network, by
 an organization (payer) and additional information about the offering, such as who it is owned and administered by, a
 coverage area, contact information, etc.
 */
public struct InsuranceProduct: DomainResource {
	
	public static let resourceType: ResourceType = .insuranceProduct
	
	/// Product administrator
	public var administeredBy: Reference?
	
	/// Alternate names
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Official contact details relevant to the health insurance product
	public var contact: [ExtendedContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Coverage details
	public var coverage: [InsuranceProductCoverage]?
	
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
	
	/// Product issuer
	public var ownedBy: Reference?
	
	/// When the product is available
	public var period: Period?
	
	/// Associated insurance product
	public var related: [InsuranceProductRelated]?
	
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
		contact: [ExtendedContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: [InsuranceProductCoverage]? = nil,
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
		related: [InsuranceProductRelated]? = nil,
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
		self.related = related
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
		case related
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
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [InsuranceProductCoverage](from: _container, forKeyIfPresent: .coverage)
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
		self.related = try [InsuranceProductRelated](from: _container, forKeyIfPresent: .related)
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
		try related?.encode(on: &_container, forKey: .related)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Coverage details.
 
 Details about the coverage offered by the insurance product.
 */
public struct InsuranceProductCoverage: BackboneElement {
	
	/// List of benefits
	public var benefit: [InsuranceProductCoverageBenefit]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// Classification of Coverage
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		benefit: [InsuranceProductCoverageBenefit],
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
		self.benefit = try [InsuranceProductCoverageBenefit](from: _container, forKey: .benefit)
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
public struct InsuranceProductCoverageBenefit: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Limits on the provided benefits
	public var limit: [InsuranceProductCoverageBenefitLimit]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Referral requirements
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// Classification of benefit provided
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: [InsuranceProductCoverageBenefitLimit]? = nil,
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
		self.limit = try [InsuranceProductCoverageBenefitLimit](from: _container, forKeyIfPresent: .limit)
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
 Limits on the provided benefits.
 
 The specific limits on the benefit.
 */
public struct InsuranceProductCoverageBenefitLimit: BackboneElement {
	
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
 Associated insurance product.
 
 Another product that is related to this product. Often used to create relationships to parents or families of products.
 */
public struct InsuranceProductRelated: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Period that this Relationship is valid
	public var period: Period?
	
	/// Related Product reference
	public var product: Reference?
	
	/// Relationship of this product to the related product
	public var relationship: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		product: Reference? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.product = product
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case product
		case relationship
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
		self.product = try Reference(from: _container, forKeyIfPresent: .product)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try product?.encode(on: &_container, forKey: .product)
		try relationship?.encode(on: &_container, forKey: .relationship)
	}
}
