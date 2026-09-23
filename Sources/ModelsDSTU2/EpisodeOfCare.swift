//
//  EpisodeOfCare.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare)
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
 An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization
 assumes some level of responsibility.
 
 An association between a patient and an organization / healthcare provider(s) during which time encounters may occur.
 The managing organization assumes a level of responsibility for the patient during this time.
 */
public struct EpisodeOfCare: DomainResource {
	
	public static let resourceType: ResourceType = .episodeOfCare
	
	/// Care manager/care co-ordinator for the patient
	public var careManager: Reference?
	
	/// Other practitioners facilitating this episode of care
	public var careTeam: [EpisodeOfCareCareTeam]?
	
	/// Conditions/problems/diagnoses this episode of care is for
	public var condition: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) for the EpisodeOfCare
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Organization that assumes care
	public var managingOrganization: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient for this episode of care
	public var patient: Reference
	
	/// Interval during responsibility is assumed
	public var period: Period?
	
	/// Originating Referral Request(s)
	public var referralRequest: [Reference]?
	
	/// 
	/// Restricted to: ['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled']
	public var status: FHIRPrimitive<EpisodeOfCareStatus>
	
	/// Past list of status codes
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type/class  - e.g. specialist referral, disease management
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		careManager: Reference? = nil,
		careTeam: [EpisodeOfCareCareTeam]? = nil,
		condition: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managingOrganization: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference,
		period: Period? = nil,
		referralRequest: [Reference]? = nil,
		status: FHIRPrimitive<EpisodeOfCareStatus>,
		statusHistory: [EpisodeOfCareStatusHistory]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.careManager = careManager
		self.careTeam = careTeam
		self.condition = condition
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingOrganization = managingOrganization
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.period = period
		self.referralRequest = referralRequest
		self.status = status
		self.statusHistory = statusHistory
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case careManager
		case careTeam
		case condition
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case managingOrganization
		case meta
		case modifierExtension
		case patient
		case period
		case referralRequest
		case status; case _status
		case statusHistory
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.careManager = try Reference(from: _container, forKeyIfPresent: .careManager)
		self.careTeam = try [EpisodeOfCareCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.condition = try [Reference](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.referralRequest = try [Reference](from: _container, forKeyIfPresent: .referralRequest)
		self.status = try FHIRPrimitive<EpisodeOfCareStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EpisodeOfCareStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try careManager?.encode(on: &_container, forKey: .careManager)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try referralRequest?.encode(on: &_container, forKey: .referralRequest)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Other practitioners facilitating this episode of care.
 
 The list of practitioners that may be facilitating this episode of care for specific purposes.
 */
public struct EpisodeOfCareCareTeam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The practitioner (or Organization) within the team
	public var member: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Period of time for this role
	public var period: Period?
	
	/// Role taken by this team member
	public var role: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		member: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		role: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.member = member
		self.modifierExtension = modifierExtension
		self.period = period
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case member
		case modifierExtension
		case period
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.member = try Reference(from: _container, forKeyIfPresent: .member)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try member?.encode(on: &_container, forKey: .member)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try role?.encode(on: &_container, forKey: .role)
	}
}

/**
 Past list of status codes.
 
 The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the
 resource).
 */
public struct EpisodeOfCareStatusHistory: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Period for the status
	public var period: Period
	
	/// 
	/// Restricted to: ['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled']
	public var status: FHIRPrimitive<EpisodeOfCareStatus>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		status: FHIRPrimitive<EpisodeOfCareStatus>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case status; case _status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
		self.status = try FHIRPrimitive<EpisodeOfCareStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}
