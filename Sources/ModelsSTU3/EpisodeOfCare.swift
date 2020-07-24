//
//  EpisodeOfCare.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare)
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
 An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization
 assumes some level of responsibility.
 
 An association between a patient and an organization / healthcare provider(s) during which time encounters may occur.
 The managing organization assumes a level of responsibility for the patient during this time.
 */
open class EpisodeOfCare: DomainResource {
	
	override open class var resourceType: ResourceType { return .episodeOfCare }
	
	/// Business Identifier(s) relevant for this EpisodeOfCare
	public var identifier: [Identifier]?
	
	/// planned | waitlist | active | onhold | finished | cancelled.
	public var status: FHIRPrimitive<EpisodeOfCareStatus>
	
	/// Past list of status codes (the current status may be included to cover the start date of the status)
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Type/class  - e.g. specialist referral, disease management
	public var type: [CodeableConcept]?
	
	/// The list of diagnosis relevant to this episode of care
	public var diagnosis: [EpisodeOfCareDiagnosis]?
	
	/// The patient who is the focus of this episode of care
	public var patient: Reference
	
	/// Organization that assumes care
	public var managingOrganization: Reference?
	
	/// Interval during responsibility is assumed
	public var period: Period?
	
	/// Originating Referral Request(s)
	public var referralRequest: [Reference]?
	
	/// Care manager/care co-ordinator for the patient
	public var careManager: Reference?
	
	/// Other practitioners facilitating this episode of care
	public var team: [Reference]?
	
	/// The set of accounts that may be used for billing for this EpisodeOfCare
	public var account: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, status: FHIRPrimitive<EpisodeOfCareStatus>) {
		self.patient = patient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: [CodeableConcept]? = nil)
	{
		self.init(patient: patient, status: status)
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
		self.period = period
		self.referralRequest = referralRequest
		self.statusHistory = statusHistory
		self.team = team
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case careManager
		case diagnosis
		case identifier
		case managingOrganization
		case patient
		case period
		case referralRequest
		case status; case _status
		case statusHistory
		case team
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.careManager = try Reference(from: _container, forKeyIfPresent: .careManager)
		self.diagnosis = try [EpisodeOfCareDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.referralRequest = try [Reference](from: _container, forKeyIfPresent: .referralRequest)
		self.status = try FHIRPrimitive<EpisodeOfCareStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EpisodeOfCareStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.team = try [Reference](from: _container, forKeyIfPresent: .team)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try careManager?.encode(on: &_container, forKey: .careManager)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try patient.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try referralRequest?.encode(on: &_container, forKey: .referralRequest)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try team?.encode(on: &_container, forKey: .team)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EpisodeOfCare else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return account == _other.account
		    && careManager == _other.careManager
		    && diagnosis == _other.diagnosis
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && patient == _other.patient
		    && period == _other.period
		    && referralRequest == _other.referralRequest
		    && status == _other.status
		    && statusHistory == _other.statusHistory
		    && team == _other.team
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(careManager)
		hasher.combine(diagnosis)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(patient)
		hasher.combine(period)
		hasher.combine(referralRequest)
		hasher.combine(status)
		hasher.combine(statusHistory)
		hasher.combine(team)
		hasher.combine(type)
	}
}

/**
 The list of diagnosis relevant to this episode of care.
 */
open class EpisodeOfCareDiagnosis: BackboneElement {
	
	/// Conditions/problems/diagnoses this episode of care is for
	public var condition: Reference
	
	/// Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)
	public var role: CodeableConcept?
	
	/// Ranking of the diagnosis (for each role type)
	public var rank: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	public init(condition: Reference) {
		self.condition = condition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							condition: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							rank: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							role: CodeableConcept? = nil)
	{
		self.init(condition: condition)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rank = rank
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case rank; case _rank
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try Reference(from: _container, forKey: .condition)
		self.rank = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rank, auxiliaryKey: ._rank)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition.encode(on: &_container, forKey: .condition)
		try rank?.encode(on: &_container, forKey: .rank, auxiliaryKey: ._rank)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EpisodeOfCareDiagnosis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return condition == _other.condition
		    && rank == _other.rank
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(rank)
		hasher.combine(role)
	}
}

/**
 Past list of status codes (the current status may be included to cover the start date of the status).
 
 The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the
 resource).
 */
open class EpisodeOfCareStatusHistory: BackboneElement {
	
	/// planned | waitlist | active | onhold | finished | cancelled.
	public var status: FHIRPrimitive<EpisodeOfCareStatus>
	
	/// Duration the EpisodeOfCare was in the specified status
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(period: Period, status: FHIRPrimitive<EpisodeOfCareStatus>) {
		self.period = period
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period,
							status: FHIRPrimitive<EpisodeOfCareStatus>)
	{
		self.init(period: period, status: status)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Period(from: _container, forKey: .period)
		self.status = try FHIRPrimitive<EpisodeOfCareStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EpisodeOfCareStatusHistory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(status)
	}
}
