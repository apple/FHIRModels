//
//  PractitionerRole.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/PractitionerRole)
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
	
	/// Description of availability exceptions
	public var availabilityExceptions: FHIRPrimitive<FHIRString>?
	
	/// Times the Service Site is available
	public var availableTime: [PractitionerRoleAvailableTime]?
	
	/// Roles which this practitioner may perform
	public var code: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Technical endpoints providing access to services operated for the practitioner with this role
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifiers that are specific to a role/location
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The location(s) at which this practitioner provides care
	public var location: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Not available during this time due to provided reason
	public var notAvailable: [PractitionerRoleNotAvailable]?
	
	/// Organization where the roles are available
	public var organization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Practitioner that is able to provide the defined services for the organization
	public var practitioner: Reference?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// Contact details that are specific to the role/location/service
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		availabilityExceptions: FHIRPrimitive<FHIRString>? = nil,
		availableTime: [PractitionerRoleAvailableTime]? = nil,
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
		notAvailable: [PractitionerRoleNotAvailable]? = nil,
		organization: Reference? = nil,
		period: Period? = nil,
		practitioner: Reference? = nil,
		specialty: [CodeableConcept]? = nil,
		telecom: [ContactPoint]? = nil,
		text: Narrative? = nil
	) {
		self.active = active
		self.availabilityExceptions = availabilityExceptions
		self.availableTime = availableTime
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
		self.notAvailable = notAvailable
		self.organization = organization
		self.period = period
		self.practitioner = practitioner
		self.specialty = specialty
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case availabilityExceptions; case _availabilityExceptions
		case availableTime
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
		case notAvailable
		case organization
		case period
		case practitioner
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
		self.availabilityExceptions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		self.availableTime = try [PractitionerRoleAvailableTime](from: _container, forKeyIfPresent: .availableTime)
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
		self.notAvailable = try [PractitionerRoleNotAvailable](from: _container, forKeyIfPresent: .notAvailable)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practitioner = try Reference(from: _container, forKeyIfPresent: .practitioner)
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
		try availabilityExceptions?.encode(on: &_container, forKey: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		try availableTime?.encode(on: &_container, forKey: .availableTime)
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
		try notAvailable?.encode(on: &_container, forKey: .notAvailable)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try practitioner?.encode(on: &_container, forKey: .practitioner)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Times the Service Site is available.
 
 A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
 */
public struct PractitionerRoleAvailableTime: BackboneElement {
	
	/// Always available? e.g. 24 hour service
	public var allDay: FHIRPrimitive<FHIRBool>?
	
	/// Closing time of day (ignored if allDay = true)
	public var availableEndTime: FHIRPrimitive<FHIRTime>?
	
	/// Opening time of day (ignored if allDay = true)
	public var availableStartTime: FHIRPrimitive<FHIRTime>?
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [FHIRPrimitive<DaysOfWeek>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		allDay: FHIRPrimitive<FHIRBool>? = nil,
		availableEndTime: FHIRPrimitive<FHIRTime>? = nil,
		availableStartTime: FHIRPrimitive<FHIRTime>? = nil,
		daysOfWeek: [FHIRPrimitive<DaysOfWeek>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.allDay = allDay
		self.availableEndTime = availableEndTime
		self.availableStartTime = availableStartTime
		self.daysOfWeek = daysOfWeek
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allDay; case _allDay
		case availableEndTime; case _availableEndTime
		case availableStartTime; case _availableStartTime
		case daysOfWeek; case _daysOfWeek
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allDay = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allDay, auxiliaryKey: ._allDay)
		self.availableEndTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableEndTime, auxiliaryKey: ._availableEndTime)
		self.availableStartTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableStartTime, auxiliaryKey: ._availableStartTime)
		self.daysOfWeek = try [FHIRPrimitive<DaysOfWeek>](from: _container, forKeyIfPresent: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try allDay?.encode(on: &_container, forKey: .allDay, auxiliaryKey: ._allDay)
		try availableEndTime?.encode(on: &_container, forKey: .availableEndTime, auxiliaryKey: ._availableEndTime)
		try availableStartTime?.encode(on: &_container, forKey: .availableStartTime, auxiliaryKey: ._availableStartTime)
		try daysOfWeek?.encode(on: &_container, forKey: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Not available during this time due to provided reason.
 
 The practitioner is not available or performing this role during this period of time due to the provided reason.
 */
public struct PractitionerRoleNotAvailable: BackboneElement {
	
	/// Reason presented to the user explaining why time not available
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Service not available from this date
	public var during: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>,
		during: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.description_fhir = description_fhir
		self.during = during
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case during
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.during = try Period(from: _container, forKeyIfPresent: .during)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try during?.encode(on: &_container, forKey: .during)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
