//
//  HealthcareService.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/HealthcareService)
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
	
	/// An appointment is required for access to this service
	public var appointmentRequired: FHIRPrimitive<FHIRBool>?
	
	/// Times the healthcare service is available (including exceptions)
	public var availability: Availability?
	
	/// Broad category of service being performed or delivered
	public var category: [CodeableConcept]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Additional description and/or any specific issues not covered elsewhere
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// The language that this service is offered in
	public var communication: [CodeableConcept]?
	
	/// Official contact details for the HealthcareService
	public var contact: [ExtendedContactDetail]?
	
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
	
	/// The service within which this service is offered
	public var offeredIn: [Reference]?
	
	/// Facilitates quick identification of the service
	public var photo: Attachment?
	
	/// Programs that this service is applicable to
	public var program: [CodeableConcept]?
	
	/// Organization that provides this service
	public var providedBy: Reference?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// A referral is required for access to this service
	public var referralRequired: FHIRPrimitive<FHIRBool>?
	
	/// Conditions under which service is available/offered
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Specialties handled by the HealthcareService
	public var specialty: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type of service that may be delivered or performed
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		appointmentRequired: FHIRPrimitive<FHIRBool>? = nil,
		availability: Availability? = nil,
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
		referralRequired: FHIRPrimitive<FHIRBool>? = nil,
		serviceProvisionCode: [CodeableConcept]? = nil,
		specialty: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
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
		self.referralRequired = referralRequired
		self.serviceProvisionCode = serviceProvisionCode
		self.specialty = specialty
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case appointmentRequired; case _appointmentRequired
		case availability
		case category
		case characteristic
		case comment; case _comment
		case communication
		case contact
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
		case offeredIn
		case photo
		case program
		case providedBy
		case referralMethod
		case referralRequired; case _referralRequired
		case serviceProvisionCode
		case specialty
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
		self.availability = try Availability(from: _container, forKeyIfPresent: .availability)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.communication = try [CodeableConcept](from: _container, forKeyIfPresent: .communication)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
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
		self.offeredIn = try [Reference](from: _container, forKeyIfPresent: .offeredIn)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.program = try [CodeableConcept](from: _container, forKeyIfPresent: .program)
		self.providedBy = try Reference(from: _container, forKeyIfPresent: .providedBy)
		self.referralMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .referralMethod)
		self.referralRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .referralRequired, auxiliaryKey: ._referralRequired)
		self.serviceProvisionCode = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceProvisionCode)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
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
		try availability?.encode(on: &_container, forKey: .availability)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try communication?.encode(on: &_container, forKey: .communication)
		try contact?.encode(on: &_container, forKey: .contact)
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
		try offeredIn?.encode(on: &_container, forKey: .offeredIn)
		try photo?.encode(on: &_container, forKey: .photo)
		try program?.encode(on: &_container, forKey: .program)
		try providedBy?.encode(on: &_container, forKey: .providedBy)
		try referralMethod?.encode(on: &_container, forKey: .referralMethod)
		try referralRequired?.encode(on: &_container, forKey: .referralRequired, auxiliaryKey: ._referralRequired)
		try serviceProvisionCode?.encode(on: &_container, forKey: .serviceProvisionCode)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Specific eligibility requirements required to use the service.
 
 Does this service have specific eligibility requirements that need to be met in order to use the service?
 */
public struct HealthcareServiceEligibility: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
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
	
	/// The period this eligibility rule applies
	public var period: Period?
	
	/// Value associated with the eligibility code
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		value: ValueX? = nil
	) {
		self.code = code
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case comment; case _comment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.value = try Self._decodeValue(from: _container)
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
		try period?.encode(on: &_container, forKey: .period)
		if let _enum = value {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		return _t_value
	}
}
