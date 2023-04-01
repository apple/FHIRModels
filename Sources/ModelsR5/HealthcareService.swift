//
//  HealthcareService.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/HealthcareService)
//  Copyright 2023 Apple Inc.
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
	
	/// Whether this HealthcareService record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Organization that provides this service
	public var providedBy: Reference?
	
	/// The service within which this service is offered
	public var offeredIn: [Reference]?
	
	/// Broad category of service being performed or delivered
	public var category: [CodeableConcept]?
	
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
	
	/// Official contact details for the HealthcareService
	public var contact: [ExtendedContactDetail]?
	
	/// Location(s) service is intended for/available to
	public var coverageArea: [Reference]?
	
	/// Conditions under which service is available/offered
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Specific eligibility requirements required to use the service
	public var eligibility: [HealthcareServiceEligibility]?
	
	/// Programs that this service is applicable to
	public var program: [CodeableConcept]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// The language that this service is offered in
	public var communication: [CodeableConcept]?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// If an appointment is required for access to this service
	public var appointmentRequired: FHIRPrimitive<FHIRBool>?
	
	/// Times the healthcare service is available (including exceptions)
	public var availability: [Availability]?
	
	/// Technical endpoints providing access to electronic services operated for the healthcare service
	public var endpoint: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		appointmentRequired: FHIRPrimitive<FHIRBool>? = nil,
		availability: [Availability]? = nil,
		category: [CodeableConcept]? = nil,
		characteristic: [CodeableConcept]? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		communication: [CodeableConcept]? = nil,
		contact: [ExtendedContactDetail]? = nil,
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
		offeredIn: [Reference]? = nil,
		photo: Attachment? = nil,
		program: [CodeableConcept]? = nil,
		providedBy: Reference? = nil,
		referralMethod: [CodeableConcept]? = nil,
		serviceProvisionCode: [CodeableConcept]? = nil,
		specialty: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.active = active
		self.appointmentRequired = appointmentRequired
		self.availability = availability
		self.category = category
		self.characteristic = characteristic
		self.comment = comment
		self.communication = communication
		self.contact = contact
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
		self.offeredIn = offeredIn
		self.photo = photo
		self.program = program
		self.providedBy = providedBy
		self.referralMethod = referralMethod
		self.serviceProvisionCode = serviceProvisionCode
		self.specialty = specialty
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case appointmentRequired; case _appointmentRequired
		case availability
		case category
		case characteristic
		case comment; case _comment
		case communication
		case contact
		case coverageArea
		case eligibility
		case endpoint
		case extraDetails; case _extraDetails
		case identifier
		case location
		case name; case _name
		case offeredIn
		case photo
		case program
		case providedBy
		case referralMethod
		case serviceProvisionCode
		case specialty
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.appointmentRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		self.availability = try [Availability](from: _container, forKeyIfPresent: .availability)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.eligibility = try [HealthcareServiceEligibility](from: _container, forKeyIfPresent: .eligibility)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.extraDetails = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .extraDetails, auxiliaryKey: ._extraDetails)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try [Reference](from: _container, forKeyIfPresent: .location)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.offeredIn = try [Reference](from: _container, forKeyIfPresent: .offeredIn)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.program = try [CodeableConcept](from: _container, forKeyIfPresent: .program)
		self.providedBy = try Reference(from: _container, forKeyIfPresent: .providedBy)
		self.referralMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .referralMethod)
		self.serviceProvisionCode = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceProvisionCode)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try appointmentRequired?.encode(on: &_container, forKey: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		try availability?.encode(on: &_container, forKey: .availability)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try communication?.encode(on: &_container, forKey: .communication)
		try contact?.encode(on: &_container, forKey: .contact)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try extraDetails?.encode(on: &_container, forKey: .extraDetails, auxiliaryKey: ._extraDetails)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try offeredIn?.encode(on: &_container, forKey: .offeredIn)
		try photo?.encode(on: &_container, forKey: .photo)
		try program?.encode(on: &_container, forKey: .program)
		try providedBy?.encode(on: &_container, forKey: .providedBy)
		try referralMethod?.encode(on: &_container, forKey: .referralMethod)
		try serviceProvisionCode?.encode(on: &_container, forKey: .serviceProvisionCode)
		try specialty?.encode(on: &_container, forKey: .specialty)
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
		    && availability == _other.availability
		    && category == _other.category
		    && characteristic == _other.characteristic
		    && comment == _other.comment
		    && communication == _other.communication
		    && contact == _other.contact
		    && coverageArea == _other.coverageArea
		    && eligibility == _other.eligibility
		    && endpoint == _other.endpoint
		    && extraDetails == _other.extraDetails
		    && identifier == _other.identifier
		    && location == _other.location
		    && name == _other.name
		    && offeredIn == _other.offeredIn
		    && photo == _other.photo
		    && program == _other.program
		    && providedBy == _other.providedBy
		    && referralMethod == _other.referralMethod
		    && serviceProvisionCode == _other.serviceProvisionCode
		    && specialty == _other.specialty
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(appointmentRequired)
		hasher.combine(availability)
		hasher.combine(category)
		hasher.combine(characteristic)
		hasher.combine(comment)
		hasher.combine(communication)
		hasher.combine(contact)
		hasher.combine(coverageArea)
		hasher.combine(eligibility)
		hasher.combine(endpoint)
		hasher.combine(extraDetails)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(name)
		hasher.combine(offeredIn)
		hasher.combine(photo)
		hasher.combine(program)
		hasher.combine(providedBy)
		hasher.combine(referralMethod)
		hasher.combine(serviceProvisionCode)
		hasher.combine(specialty)
		hasher.combine(type)
	}
}

/**
 Specific eligibility requirements required to use the service.
 
 Does this service have specific eligibility requirements that need to be met in order to use the service?
 */
open class HealthcareServiceEligibility: BackboneElement {
	
	/// Coded value for the eligibility
	public var code: CodeableConcept?
	
	/// Describes the eligibility conditions for the service
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? HealthcareServiceEligibility else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && comment == _other.comment
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(comment)
	}
}
