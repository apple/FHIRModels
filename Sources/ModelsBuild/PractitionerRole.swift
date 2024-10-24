//
//  PractitionerRole.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/PractitionerRole)
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
 Roles/organizations the practitioner is associated with.
 
 A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period
 of time.
 */
open class PractitionerRole: DomainResource {
	
	override open class var resourceType: ResourceType { return .practitionerRole }
	
	/// Identifiers for a role/location
	public var identifier: [Identifier]?
	
	/// Whether this practitioner role record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Practitioner that provides services for the organization
	public var practitioner: Reference?
	
	/// Organization where the role is available
	public var organization: Reference?
	
	/// Roles which this practitioner may perform
	public var code: [CodeableConcept]?
	
	/// Denormalized practitioner name, role, organization and location
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// Location(s) where the practitioner provides care
	public var location: [Reference]?
	
	/// Healthcare services provided for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// Official contact details relating to this PractitionerRole
	public var contact: [ExtendedContactDetail]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// A language the practitioner (in this role) can use in patient communication
	public var communication: [CodeableConcept]?
	
	/// Times the Practitioner is available at this location and/or healthcare service (including exceptions)
	public var availability: Availability?
	
	/// Endpoints for interacting with the practitioner in this role
	public var endpoint: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		organization: Reference? = nil,
		period: Period? = nil,
		practitioner: Reference? = nil,
		specialty: [CodeableConcept]? = nil,
		text: Narrative? = nil
	) {
		self.init()
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
		self.organization = organization
		self.period = period
		self.practitioner = practitioner
		self.specialty = specialty
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case availability
		case characteristic
		case code
		case communication
		case contact
		case display; case _display
		case endpoint
		case healthcareService
		case identifier
		case location
		case organization
		case period
		case practitioner
		case specialty
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.availability = try Availability(from: _container, forKeyIfPresent: .availability)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.healthcareService = try [Reference](from: _container, forKeyIfPresent: .healthcareService)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practitioner = try Reference(from: _container, forKeyIfPresent: .practitioner)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try availability?.encode(on: &_container, forKey: .availability)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try communication?.encode(on: &_container, forKey: .communication)
		try contact?.encode(on: &_container, forKey: .contact)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try healthcareService?.encode(on: &_container, forKey: .healthcareService)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try practitioner?.encode(on: &_container, forKey: .practitioner)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PractitionerRole else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && availability == _other.availability
		    && characteristic == _other.characteristic
		    && code == _other.code
		    && communication == _other.communication
		    && contact == _other.contact
		    && display == _other.display
		    && endpoint == _other.endpoint
		    && healthcareService == _other.healthcareService
		    && identifier == _other.identifier
		    && location == _other.location
		    && organization == _other.organization
		    && period == _other.period
		    && practitioner == _other.practitioner
		    && specialty == _other.specialty
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(availability)
		hasher.combine(characteristic)
		hasher.combine(code)
		hasher.combine(communication)
		hasher.combine(contact)
		hasher.combine(display)
		hasher.combine(endpoint)
		hasher.combine(healthcareService)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(organization)
		hasher.combine(period)
		hasher.combine(practitioner)
		hasher.combine(specialty)
	}
}
