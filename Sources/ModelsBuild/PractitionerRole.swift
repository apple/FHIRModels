//
//  PractitionerRole.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/PractitionerRole)
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
 Roles/organizations the practitioner is associated with.
 
 A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period
 of time.
 */
public struct PractitionerRole: DomainResource {
	
	public static let resourceType: ResourceType = .practitionerRole
	
	/// Whether this practitioner role record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Times the Practitioner is available at this location and/or healthcare service (including exceptions)
	public var availability: Availability?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Roles which this practitioner may perform
	public var code: [CodeableConcept]?
	
	/// A language the practitioner (in this role) can use in patient communication
	public var communication: [CodeableConcept]?
	
	/// Official contact details relating to this PractitionerRole
	public var contact: [ExtendedContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Denormalized practitioner name, role, organization and location
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Endpoints for interacting with the practitioner in this role
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Healthcare services provided for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers for a role/location
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Location(s) where the practitioner provides care
	public var location: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The network in which the PractitionerRole provides the role's services (if defined) at the indicated locations
	/// (if defined)
	public var network: [Reference]?
	
	/// Organization where the role is available
	public var organization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Practitioner that provides services for the organization
	public var practitioner: Reference?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		availability: Availability? = nil,
		characteristic: [CodeableConcept]? = nil,
		code: [CodeableConcept]? = nil,
		communication: [CodeableConcept]? = nil,
		contact: [ExtendedContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
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
		period: Period? = nil,
		practitioner: Reference? = nil,
		specialty: [CodeableConcept]? = nil,
		text: Narrative? = nil
	) {
		self.active = active
		self.availability = availability
		self.characteristic = characteristic
		self.code = code
		self.communication = communication
		self.contact = contact
		self.contained = contained
		self.display = display
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
		self.period = period
		self.practitioner = practitioner
		self.specialty = specialty
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case availability
		case characteristic
		case code
		case communication
		case contact
		case contained
		case display; case _display
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
		case period
		case practitioner
		case specialty
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.availability = try Availability(from: _container, forKeyIfPresent: .availability)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practitioner = try Reference(from: _container, forKeyIfPresent: .practitioner)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try availability?.encode(on: &_container, forKey: .availability)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try communication?.encode(on: &_container, forKey: .communication)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
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
		try period?.encode(on: &_container, forKey: .period)
		try practitioner?.encode(on: &_container, forKey: .practitioner)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try text?.encode(on: &_container, forKey: .text)
	}
}
