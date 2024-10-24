//
//  InsuranceProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/InsuranceProduct)
//  Copyright 2024 Apple Inc.
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
 */
open class InsuranceProduct: DomainResource {
	
	override open class var resourceType: ResourceType { return .insuranceProduct }
	
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
	
	/// Product issuer
	public var ownedBy: Reference?
	
	/// Product administrator
	public var administeredBy: Reference?
	
	/// Where product applies
	public var coverageArea: [Reference]?
	
	/// Official contact details relevant to the health insurance product
	public var contact: [ExtendedContactDetail]?
	
	/// Technical endpoint
	public var endpoint: [Reference]?
	
	/// What networks are Included
	public var network: [Reference]?
	
	/// Coverage details
	public var coverage: [InsuranceProductCoverage]?
	
	/// Associated insurance product
	public var related: [InsuranceProductRelated]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.related = related
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
		case related
		case status; case _status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administeredBy = try Reference(from: _container, forKeyIfPresent: .administeredBy)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.coverage = try [InsuranceProductCoverage](from: _container, forKeyIfPresent: .coverage)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.ownedBy = try Reference(from: _container, forKeyIfPresent: .ownedBy)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.related = try [InsuranceProductRelated](from: _container, forKeyIfPresent: .related)
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
		try related?.encode(on: &_container, forKey: .related)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsuranceProduct else {
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
		    && related == _other.related
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
		hasher.combine(related)
		hasher.combine(status)
		hasher.combine(type)
	}
}

/**
 Coverage details.
 
 Details about the coverage offered by the insurance product.
 */
open class InsuranceProductCoverage: BackboneElement {
	
	/// Classification of Coverage
	public var type: CodeableConcept
	
	/// What networks provide coverage
	public var network: [Reference]?
	
	/// List of benefits
	public var benefit: [InsuranceProductCoverageBenefit]
	
	/// Designated initializer taking all required properties
	public init(benefit: [InsuranceProductCoverageBenefit], type: CodeableConcept) {
		self.benefit = benefit
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		benefit: [InsuranceProductCoverageBenefit],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		network: [Reference]? = nil,
		type: CodeableConcept
	) {
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
		self.benefit = try [InsuranceProductCoverageBenefit](from: _container, forKey: .benefit)
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
		guard let _other = _other as? InsuranceProductCoverage else {
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
open class InsuranceProductCoverageBenefit: BackboneElement {
	
	/// Classification of benefit provided
	public var type: CodeableConcept
	
	/// Referral requirements
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// Limits on the provided benefits
	public var limit: [InsuranceProductCoverageBenefitLimit]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: [InsuranceProductCoverageBenefitLimit]? = nil,
		modifierExtension: [Extension]? = nil,
		requirement: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept
	) {
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
		self.limit = try [InsuranceProductCoverageBenefitLimit](from: _container, forKeyIfPresent: .limit)
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
		guard let _other = _other as? InsuranceProductCoverageBenefit else {
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
 Limits on the provided benefits.
 
 The specific limits on the benefit.
 */
open class InsuranceProductCoverageBenefitLimit: BackboneElement {
	
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
		value: Quantity? = nil
	) {
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
		guard let _other = _other as? InsuranceProductCoverageBenefitLimit else {
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
 Associated insurance product.
 
 Another product that is related to this product. Often used to create relationships to parents or families of products.
 */
open class InsuranceProductRelated: BackboneElement {
	
	/// Related Product reference
	public var product: Reference?
	
	/// Relationship of this product to the related product
	public var relationship: CodeableConcept?
	
	/// Period that this Relationship is valid
	public var period: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		product: Reference? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.product = product
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case product
		case relationship
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.product = try Reference(from: _container, forKeyIfPresent: .product)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period?.encode(on: &_container, forKey: .period)
		try product?.encode(on: &_container, forKey: .product)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InsuranceProductRelated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && product == _other.product
		    && relationship == _other.relationship
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(product)
		hasher.combine(relationship)
	}
}
