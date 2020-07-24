//
//  HealthcareService.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/HealthcareService)
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
 The details of a healthcare service available at a location.
 */
open class HealthcareService: DomainResource {
	
	override open class var resourceType: ResourceType { return .healthcareService }
	
	/// External identifiers for this item
	public var identifier: [Identifier]?
	
	/// Whether this healthcareservice is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Organization that provides this service
	public var providedBy: Reference?
	
	/// Broad category of service being performed or delivered
	public var category: CodeableConcept?
	
	/// Type of service that may be delivered or performed
	public var type: [CodeableConcept]?
	
	/// Specialties handled by the HealthcareService
	public var specialty: [CodeableConcept]?
	
	/// Location(s) where service may be provided
	public var location: [Reference]?
	
	/// Description of service as presented to a consumer while searching
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Additional description and/or any specific issues not covered elsewhere
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Extra details about the service that can't be placed in the other fields
	public var extraDetails: FHIRPrimitive<FHIRString>?
	
	/// Facilitates quick identification of the service
	public var photo: Attachment?
	
	/// Contacts related to the healthcare service
	public var telecom: [ContactPoint]?
	
	/// Location(s) service is inteded for/available to
	public var coverageArea: [Reference]?
	
	/// Conditions under which service is available/offered
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Specific eligibility requirements required to use the service
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service
	public var eligibilityNote: FHIRPrimitive<FHIRString>?
	
	/// Program Names that categorize the service
	public var programName: [FHIRPrimitive<FHIRString>]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// If an appointment is required for access to this service
	public var appointmentRequired: FHIRPrimitive<FHIRBool>?
	
	/// Times the Service Site is available
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Not available during this time due to provided reason
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Description of availability exceptions
	public var availabilityExceptions: FHIRPrimitive<FHIRString>?
	
	/// Technical endpoints providing access to services operated for the location
	public var endpoint: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							appointmentRequired: FHIRPrimitive<FHIRBool>? = nil,
							availabilityExceptions: FHIRPrimitive<FHIRString>? = nil,
							availableTime: [HealthcareServiceAvailableTime]? = nil,
							category: CodeableConcept? = nil,
							characteristic: [CodeableConcept]? = nil,
							comment: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							coverageArea: [Reference]? = nil,
							eligibility: CodeableConcept? = nil,
							eligibilityNote: FHIRPrimitive<FHIRString>? = nil,
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
							programName: [FHIRPrimitive<FHIRString>]? = nil,
							providedBy: Reference? = nil,
							referralMethod: [CodeableConcept]? = nil,
							serviceProvisionCode: [CodeableConcept]? = nil,
							specialty: [CodeableConcept]? = nil,
							telecom: [ContactPoint]? = nil,
							text: Narrative? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init()
		self.active = active
		self.appointmentRequired = appointmentRequired
		self.availabilityExceptions = availabilityExceptions
		self.availableTime = availableTime
		self.category = category
		self.characteristic = characteristic
		self.comment = comment
		self.contained = contained
		self.coverageArea = coverageArea
		self.eligibility = eligibility
		self.eligibilityNote = eligibilityNote
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
		self.programName = programName
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
		case active; case _active
		case appointmentRequired; case _appointmentRequired
		case availabilityExceptions; case _availabilityExceptions
		case availableTime
		case category
		case characteristic
		case comment; case _comment
		case coverageArea
		case eligibility
		case eligibilityNote; case _eligibilityNote
		case endpoint
		case extraDetails; case _extraDetails
		case identifier
		case location
		case name; case _name
		case notAvailable
		case photo
		case programName; case _programName
		case providedBy
		case referralMethod
		case serviceProvisionCode
		case specialty
		case telecom
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.appointmentRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		self.availabilityExceptions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		self.availableTime = try [HealthcareServiceAvailableTime](from: _container, forKeyIfPresent: .availableTime)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.eligibility = try CodeableConcept(from: _container, forKeyIfPresent: .eligibility)
		self.eligibilityNote = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .eligibilityNote, auxiliaryKey: ._eligibilityNote)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.extraDetails = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .extraDetails, auxiliaryKey: ._extraDetails)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.notAvailable = try [HealthcareServiceNotAvailable](from: _container, forKeyIfPresent: .notAvailable)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.programName = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .programName, auxiliaryKey: ._programName)
		self.providedBy = try Reference(from: _container, forKeyIfPresent: .providedBy)
		self.referralMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .referralMethod)
		self.serviceProvisionCode = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceProvisionCode)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try appointmentRequired?.encode(on: &_container, forKey: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		try availabilityExceptions?.encode(on: &_container, forKey: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		try availableTime?.encode(on: &_container, forKey: .availableTime)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try eligibilityNote?.encode(on: &_container, forKey: .eligibilityNote, auxiliaryKey: ._eligibilityNote)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try extraDetails?.encode(on: &_container, forKey: .extraDetails, auxiliaryKey: ._extraDetails)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try notAvailable?.encode(on: &_container, forKey: .notAvailable)
		try photo?.encode(on: &_container, forKey: .photo)
		try programName?.encode(on: &_container, forKey: .programName, auxiliaryKey: ._programName)
		try providedBy?.encode(on: &_container, forKey: .providedBy)
		try referralMethod?.encode(on: &_container, forKey: .referralMethod)
		try serviceProvisionCode?.encode(on: &_container, forKey: .serviceProvisionCode)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? HealthcareService else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && appointmentRequired == _other.appointmentRequired
		    && availabilityExceptions == _other.availabilityExceptions
		    && availableTime == _other.availableTime
		    && category == _other.category
		    && characteristic == _other.characteristic
		    && comment == _other.comment
		    && coverageArea == _other.coverageArea
		    && eligibility == _other.eligibility
		    && eligibilityNote == _other.eligibilityNote
		    && endpoint == _other.endpoint
		    && extraDetails == _other.extraDetails
		    && identifier == _other.identifier
		    && location == _other.location
		    && name == _other.name
		    && notAvailable == _other.notAvailable
		    && photo == _other.photo
		    && programName == _other.programName
		    && providedBy == _other.providedBy
		    && referralMethod == _other.referralMethod
		    && serviceProvisionCode == _other.serviceProvisionCode
		    && specialty == _other.specialty
		    && telecom == _other.telecom
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(appointmentRequired)
		hasher.combine(availabilityExceptions)
		hasher.combine(availableTime)
		hasher.combine(category)
		hasher.combine(characteristic)
		hasher.combine(comment)
		hasher.combine(coverageArea)
		hasher.combine(eligibility)
		hasher.combine(eligibilityNote)
		hasher.combine(endpoint)
		hasher.combine(extraDetails)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(name)
		hasher.combine(notAvailable)
		hasher.combine(photo)
		hasher.combine(programName)
		hasher.combine(providedBy)
		hasher.combine(referralMethod)
		hasher.combine(serviceProvisionCode)
		hasher.combine(specialty)
		hasher.combine(telecom)
		hasher.combine(type)
	}
}

/**
 Times the Service Site is available.
 
 A collection of times that the Service Site is available.
 */
open class HealthcareServiceAvailableTime: BackboneElement {
	
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
		guard let _other = _other as? HealthcareServiceAvailableTime else {
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
open class HealthcareServiceNotAvailable: BackboneElement {
	
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
		guard let _other = _other as? HealthcareServiceNotAvailable else {
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
