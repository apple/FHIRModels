//
//  OrganizationAffiliation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation)
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
 Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of
 relationship/sub-division relationship.
 */
public struct OrganizationAffiliation: DomainResource {
	
	public static let resourceType: ResourceType = .organizationAffiliation
	
	/// Whether this organization affiliation record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Definition of the role the participatingOrganization plays
	public var code: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Technical endpoints providing access to services operated for this role
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Healthcare services provided through the role
	public var healthcareService: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifiers that are specific to this role
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The location(s) at which the role occurs
	public var location: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Health insurance provider network in which the participatingOrganization provides the role's services (if
	/// defined) at the indicated locations (if defined)
	public var network: [Reference]?
	
	/// Organization where the role is available
	public var organization: Reference?
	
	/// Organization that provides/performs the role (e.g. providing services or is a member of)
	public var participatingOrganization: Reference?
	
	/// The period during which the participatingOrganization is affiliated with the primary organization
	public var period: Period?
	
	/// Specific specialty of the participatingOrganization in the context of the role
	public var specialty: [CodeableConcept]?
	
	/// Contact details at the participatingOrganization relevant to this Affiliation
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case active; case _active
		case code
		case contained
		case endpoint
		case `extension` = "extension"
		case healthcareService
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case network
		case organization
		case participatingOrganization
		case period
		case specialty
		case telecom
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.healthcareService = try [Reference](from: _container, forKeyIfPresent: .healthcareService)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try [Reference](from: _container, forKeyIfPresent: .network)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.participatingOrganization = try Reference(from: _container, forKeyIfPresent: .participatingOrganization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try healthcareService?.encode(on: &_container, forKey: .healthcareService)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network)
		try organization?.encode(on: &_container, forKey: .organization)
		try participatingOrganization?.encode(on: &_container, forKey: .participatingOrganization)
		try period?.encode(on: &_container, forKey: .period)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}
