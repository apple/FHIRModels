//
//  EpisodeOfCare.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare)
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
	
	/// The set of accounts that may be used for billing for this EpisodeOfCare
	public var account: [Reference]?
	
	/// Care manager/care coordinator for the patient
	public var careManager: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The list of diagnosis relevant to this episode of care
	public var diagnosis: [EpisodeOfCareDiagnosis]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier(s) relevant for this EpisodeOfCare
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
	
	/// The patient who is the focus of this episode of care
	public var patient: Reference
	
	/// Interval during responsibility is assumed
	public var period: Period?
	
	/// Originating Referral Request(s)
	public var referralRequest: [Reference]?
	
	/// planned | waitlist | active | onhold | finished | cancelled.
	public var status: FHIRPrimitive<EpisodeOfCareStatus>
	
	/// Past list of status codes (the current status may be included to cover the start date of the status)
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Other practitioners facilitating this episode of care
	public var team: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type/class  - e.g. specialist referral, disease management
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		account: [Reference]? = nil,
		careManager: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		diagnosis: [EpisodeOfCareDiagnosis]? = nil,
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
		team: [Reference]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.account = account
		self.careManager = careManager
		self.contained = contained
		self.diagnosis = diagnosis
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
		self.team = team
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case account
		case careManager
		case contained
		case diagnosis
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
		case team
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.careManager = try Reference(from: _container, forKeyIfPresent: .careManager)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.diagnosis = try [EpisodeOfCareDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
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
		self.team = try [Reference](from: _container, forKeyIfPresent: .team)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try careManager?.encode(on: &_container, forKey: .careManager)
		try contained?.encode(on: &_container, forKey: .contained)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
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
		try team?.encode(on: &_container, forKey: .team)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The list of diagnosis relevant to this episode of care.
 */
public struct EpisodeOfCareDiagnosis: BackboneElement {
	
	/// Conditions/problems/diagnoses this episode of care is for
	public var condition: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Ranking of the diagnosis (for each role type)
	public var rank: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		condition: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rank: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		role: CodeableConcept? = nil
	) {
		self.condition = condition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rank = rank
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case rank; case _rank
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.condition = try Reference(from: _container, forKey: .condition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rank = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rank, auxiliaryKey: ._rank)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try condition.encode(on: &_container, forKey: .condition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rank?.encode(on: &_container, forKey: .rank, auxiliaryKey: ._rank)
		try role?.encode(on: &_container, forKey: .role)
	}
}

/**
 Past list of status codes (the current status may be included to cover the start date of the status).
 
 The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the
 resource).
 */
public struct EpisodeOfCareStatusHistory: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Duration the EpisodeOfCare was in the specified status
	public var period: Period
	
	/// planned | waitlist | active | onhold | finished | cancelled.
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
