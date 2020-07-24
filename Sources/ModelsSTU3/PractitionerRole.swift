//
//  PractitionerRole.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/PractitionerRole)
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
 Roles/organizations the practitioner is associated with.
 
 A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period
 of time.
 */
open class PractitionerRole: DomainResource {
	
	override open class var resourceType: ResourceType { return .practitionerRole }
	
	/// Business Identifiers that are specific to a role/location
	public var identifier: [Identifier]?
	
	/// Whether this practitioner's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Practitioner that is able to provide the defined services for the organation
	public var practitioner: Reference?
	
	/// Organization where the roles are available
	public var organization: Reference?
	
	/// Roles which this practitioner may perform
	public var code: [CodeableConcept]?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// The location(s) at which this practitioner provides care
	public var location: [Reference]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// Contact details that are specific to the role/location/service
	public var telecom: [ContactPoint]?
	
	/// Times the Service Site is available
	public var availableTime: [PractitionerRoleAvailableTime]?
	
	/// Not available during this time due to provided reason
	public var notAvailable: [PractitionerRoleNotAvailable]?
	
	/// Description of availability exceptions
	public var availabilityExceptions: FHIRPrimitive<FHIRString>?
	
	/// Technical endpoints providing access to services operated for the practitioner with this role
	public var endpoint: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case active; case _active
		case availabilityExceptions; case _availabilityExceptions
		case availableTime
		case code
		case endpoint
		case healthcareService
		case identifier
		case location
		case notAvailable
		case organization
		case period
		case practitioner
		case specialty
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.availabilityExceptions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		self.availableTime = try [PractitionerRoleAvailableTime](from: _container, forKeyIfPresent: .availableTime)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.healthcareService = try [Reference](from: _container, forKeyIfPresent: .healthcareService)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.notAvailable = try [PractitionerRoleNotAvailable](from: _container, forKeyIfPresent: .notAvailable)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practitioner = try Reference(from: _container, forKeyIfPresent: .practitioner)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try availabilityExceptions?.encode(on: &_container, forKey: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		try availableTime?.encode(on: &_container, forKey: .availableTime)
		try code?.encode(on: &_container, forKey: .code)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try healthcareService?.encode(on: &_container, forKey: .healthcareService)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try notAvailable?.encode(on: &_container, forKey: .notAvailable)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try practitioner?.encode(on: &_container, forKey: .practitioner)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try telecom?.encode(on: &_container, forKey: .telecom)
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
		    && availabilityExceptions == _other.availabilityExceptions
		    && availableTime == _other.availableTime
		    && code == _other.code
		    && endpoint == _other.endpoint
		    && healthcareService == _other.healthcareService
		    && identifier == _other.identifier
		    && location == _other.location
		    && notAvailable == _other.notAvailable
		    && organization == _other.organization
		    && period == _other.period
		    && practitioner == _other.practitioner
		    && specialty == _other.specialty
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(availabilityExceptions)
		hasher.combine(availableTime)
		hasher.combine(code)
		hasher.combine(endpoint)
		hasher.combine(healthcareService)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(notAvailable)
		hasher.combine(organization)
		hasher.combine(period)
		hasher.combine(practitioner)
		hasher.combine(specialty)
		hasher.combine(telecom)
	}
}

/**
 Times the Service Site is available.
 
 A collection of times that the Service Site is available.
 */
open class PractitionerRoleAvailableTime: BackboneElement {
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [FHIRPrimitive<DaysOfWeek>]?
	
	/// Always available? e.g. 24 hour service
	public var allDay: FHIRPrimitive<FHIRBool>?
	
	/// Opening time of day (ignored if allDay = true)
	public var availableStartTime: FHIRPrimitive<FHIRTime>?
	
	/// Closing time of day (ignored if allDay = true)
	public var availableEndTime: FHIRPrimitive<FHIRTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allDay: FHIRPrimitive<FHIRBool>? = nil,
							availableEndTime: FHIRPrimitive<FHIRTime>? = nil,
							availableStartTime: FHIRPrimitive<FHIRTime>? = nil,
							daysOfWeek: [FHIRPrimitive<DaysOfWeek>]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allDay = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allDay, auxiliaryKey: ._allDay)
		self.availableEndTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableEndTime, auxiliaryKey: ._availableEndTime)
		self.availableStartTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .availableStartTime, auxiliaryKey: ._availableStartTime)
		self.daysOfWeek = try [FHIRPrimitive<DaysOfWeek>](from: _container, forKeyIfPresent: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allDay?.encode(on: &_container, forKey: .allDay, auxiliaryKey: ._allDay)
		try availableEndTime?.encode(on: &_container, forKey: .availableEndTime, auxiliaryKey: ._availableEndTime)
		try availableStartTime?.encode(on: &_container, forKey: .availableStartTime, auxiliaryKey: ._availableStartTime)
		try daysOfWeek?.encode(on: &_container, forKey: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PractitionerRoleAvailableTime else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allDay == _other.allDay
		    && availableEndTime == _other.availableEndTime
		    && availableStartTime == _other.availableStartTime
		    && daysOfWeek == _other.daysOfWeek
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allDay)
		hasher.combine(availableEndTime)
		hasher.combine(availableStartTime)
		hasher.combine(daysOfWeek)
	}
}

/**
 Not available during this time due to provided reason.
 
 The HealthcareService is not available during this period of time due to the provided reason.
 */
open class PractitionerRoleNotAvailable: BackboneElement {
	
	/// Reason presented to the user explaining why time not available
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Service not availablefrom this date
	public var during: Period?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: FHIRPrimitive<FHIRString>) {
		self.description_fhir = description_fhir
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>,
							during: Period? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(description_fhir: description_fhir)
		self.during = during
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case during
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.during = try Period(from: _container, forKeyIfPresent: .during)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try during?.encode(on: &_container, forKey: .during)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PractitionerRoleNotAvailable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && during == _other.during
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(during)
	}
}
