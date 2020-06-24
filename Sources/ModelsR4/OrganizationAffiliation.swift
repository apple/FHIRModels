//
//  OrganizationAffiliation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation)
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
 Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of
 relationship/sub-division relationship.
 */
open class OrganizationAffiliation: DomainResource {
	
	override open class var resourceType: ResourceType { return .organizationAffiliation }
	
	/// Business identifiers that are specific to this role
	public var identifier: [Identifier]?
	
	/// Whether this organization affiliation record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// The period during which the participatingOrganization is affiliated with the primary organization
	public var period: Period?
	
	/// Organization where the role is available
	public var organization: Reference?
	
	/// Organization that provides/performs the role (e.g. providing services or is a member of)
	public var participatingOrganization: Reference?
	
	/// Health insurance provider network in which the participatingOrganization provides the role's services (if
	/// defined) at the indicated locations (if defined)
	public var network: [Reference]?
	
	/// Definition of the role the participatingOrganization plays
	public var code: [CodeableConcept]?
	
	/// Specific specialty of the participatingOrganization in the context of the role
	public var specialty: [CodeableConcept]?
	
	/// The location(s) at which the role occurs
	public var location: [Reference]?
	
	/// Healthcare services provided through the role
	public var healthcareService: [Reference]?
	
	/// Contact details at the participatingOrganization relevant to this Affiliation
	public var telecom: [ContactPoint]?
	
	/// Technical endpoints providing access to services operated for this role
	public var endpoint: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							code: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							endpoint: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							healthcareService: [Reference]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: [Reference]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							network: [Reference]? = nil,
							organization: Reference? = nil,
							participatingOrganization: Reference? = nil,
							period: Period? = nil,
							specialty: [CodeableConcept]? = nil,
							telecom: [ContactPoint]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.active = active
		self.code = code
		self.contained = contained
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.healthcareService = healthcareService
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.network = network
		self.organization = organization
		self.participatingOrganization = participatingOrganization
		self.period = period
		self.specialty = specialty
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case code
		case endpoint
		case healthcareService
		case identifier
		case location
		case network
		case organization
		case participatingOrganization
		case period
		case specialty
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.healthcareService = try [Reference](from: _container, forKeyIfPresent: .healthcareService)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.participatingOrganization = try Reference(from: _container, forKeyIfPresent: .participatingOrganization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try code?.encode(on: &_container, forKey: .code)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try healthcareService?.encode(on: &_container, forKey: .healthcareService)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try network?.encode(on: &_container, forKey: .network)
		try organization?.encode(on: &_container, forKey: .organization)
		try participatingOrganization?.encode(on: &_container, forKey: .participatingOrganization)
		try period?.encode(on: &_container, forKey: .period)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OrganizationAffiliation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && code == _other.code
		    && endpoint == _other.endpoint
		    && healthcareService == _other.healthcareService
		    && identifier == _other.identifier
		    && location == _other.location
		    && network == _other.network
		    && organization == _other.organization
		    && participatingOrganization == _other.participatingOrganization
		    && period == _other.period
		    && specialty == _other.specialty
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(code)
		hasher.combine(endpoint)
		hasher.combine(healthcareService)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(network)
		hasher.combine(organization)
		hasher.combine(participatingOrganization)
		hasher.combine(period)
		hasher.combine(specialty)
		hasher.combine(telecom)
	}
}
