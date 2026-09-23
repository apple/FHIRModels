//
//  HealthcareService.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/HealthcareService)
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
 The details of a healthcare service available at a location.
 */
public struct HealthcareService: DomainResource {
	
	public static let resourceType: ResourceType = .healthcareService
	
	/// Whether this HealthcareService record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// If an appointment is required for access to this service
	public var appointmentRequired: FHIRPrimitive<FHIRBool>?
	
	/// Description of availability exceptions
	public var availabilityExceptions: FHIRPrimitive<FHIRString>?
	
	/// Times the Service Site is available
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Broad category of service being performed or delivered
	public var category: [CodeableConcept]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Additional description and/or any specific issues not covered elsewhere
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// The language that this service is offered in
	public var communication: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Location(s) service is intended for/available to
	public var coverageArea: [Reference]?
	
	/// Specific eligibility requirements required to use the service
	public var eligibility: [HealthcareServiceEligibility]?
	
	/// Technical endpoints providing access to electronic services operated for the healthcare service
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Extra details about the service that can't be placed in the other fields
	public var extraDetails: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifiers for this item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Location(s) where service may be provided
	public var location: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Description of service as presented to a consumer while searching
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Not available during this time due to provided reason
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Facilitates quick identification of the service
	public var photo: Attachment?
	
	/// Programs that this service is applicable to
	public var program: [CodeableConcept]?
	
	/// Organization that provides this service
	public var providedBy: Reference?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// Conditions under which service is available/offered
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Specialties handled by the HealthcareService
	public var specialty: [CodeableConcept]?
	
	/// Contacts related to the healthcare service
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type of service that may be delivered or performed
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		appointmentRequired: FHIRPrimitive<FHIRBool>? = nil,
		availabilityExceptions: FHIRPrimitive<FHIRString>? = nil,
		availableTime: [HealthcareServiceAvailableTime]? = nil,
		category: [CodeableConcept]? = nil,
		characteristic: [CodeableConcept]? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		communication: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		coverageArea: [Reference]? = nil,
		eligibility: [HealthcareServiceEligibility]? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		extraDetails: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		notAvailable: [HealthcareServiceNotAvailable]? = nil,
		photo: Attachment? = nil,
		program: [CodeableConcept]? = nil,
		providedBy: Reference? = nil,
		referralMethod: [CodeableConcept]? = nil,
		serviceProvisionCode: [CodeableConcept]? = nil,
		specialty: [CodeableConcept]? = nil,
		telecom: [ContactPoint]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.active = active
		self.appointmentRequired = appointmentRequired
		self.availabilityExceptions = availabilityExceptions
		self.availableTime = availableTime
		self.category = category
		self.characteristic = characteristic
		self.comment = comment
		self.communication = communication
		self.contained = contained
		self.coverageArea = coverageArea
		self.eligibility = eligibility
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.extraDetails = extraDetails
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.notAvailable = notAvailable
		self.photo = photo
		self.program = program
		self.providedBy = providedBy
		self.referralMethod = referralMethod
		self.serviceProvisionCode = serviceProvisionCode
		self.specialty = specialty
		self.telecom = telecom
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case appointmentRequired; case _appointmentRequired
		case availabilityExceptions; case _availabilityExceptions
		case availableTime
		case category
		case characteristic
		case comment; case _comment
		case communication
		case contained
		case coverageArea
		case eligibility
		case endpoint
		case `extension` = "extension"
		case extraDetails; case _extraDetails
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case name; case _name
		case notAvailable
		case photo
		case program
		case providedBy
		case referralMethod
		case serviceProvisionCode
		case specialty
		case telecom
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.appointmentRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		self.availabilityExceptions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		self.availableTime = try [HealthcareServiceAvailableTime](from: _container, forKeyIfPresent: .availableTime)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.eligibility = try [HealthcareServiceEligibility](from: _container, forKeyIfPresent: .eligibility)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.extraDetails = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .extraDetails, auxiliaryKey: ._extraDetails)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.notAvailable = try [HealthcareServiceNotAvailable](from: _container, forKeyIfPresent: .notAvailable)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.program = try [CodeableConcept](from: _container, forKeyIfPresent: .program)
		self.providedBy = try Reference(from: _container, forKeyIfPresent: .providedBy)
		self.referralMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .referralMethod)
		self.serviceProvisionCode = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceProvisionCode)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try appointmentRequired?.encode(on: &_container, forKey: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		try availabilityExceptions?.encode(on: &_container, forKey: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		try availableTime?.encode(on: &_container, forKey: .availableTime)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try communication?.encode(on: &_container, forKey: .communication)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try extraDetails?.encode(on: &_container, forKey: .extraDetails, auxiliaryKey: ._extraDetails)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try notAvailable?.encode(on: &_container, forKey: .notAvailable)
		try photo?.encode(on: &_container, forKey: .photo)
		try program?.encode(on: &_container, forKey: .program)
		try providedBy?.encode(on: &_container, forKey: .providedBy)
		try referralMethod?.encode(on: &_container, forKey: .referralMethod)
		try serviceProvisionCode?.encode(on: &_container, forKey: .serviceProvisionCode)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Times the Service Site is available.
 
 A collection of times that the Service Site is available.
 */
public struct HealthcareServiceAvailableTime: BackboneElement {
	
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
 Specific eligibility requirements required to use the service.
 
 Does this service have specific eligibility requirements that need to be met in order to use the service?
 */
public struct HealthcareServiceEligibility: BackboneElement {
	
	/// Coded value for the eligibility
	public var code: CodeableConcept?
	
	/// Describes the eligibility conditions for the service
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case comment; case _comment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Not available during this time due to provided reason.
 
 The HealthcareService is not available during this period of time due to the provided reason.
 */
public struct HealthcareServiceNotAvailable: BackboneElement {
	
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
