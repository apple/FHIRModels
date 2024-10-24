//
//  EpisodeOfCare.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare)
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
	
	/// The list of medical reasons that are expected to be addressed during the episode of care
	public var reason: [EpisodeOfCareReason]?
	
	/// The list of medical conditions that were addressed during the episode of care
	public var diagnosis: [EpisodeOfCareDiagnosis]?
	
	/// The patient/group who is the focus of this episode of care
	public var subject: Reference
	
	/// Organization that assumes responsibility for care coordination
	public var managingOrganization: Reference?
	
	/// Interval during responsibility is assumed
	public var period: Period?
	
	/// Originating Referral Request(s)
	public var referralRequest: [Reference]?
	
	/// Care manager/care coordinator for the patient
	public var careManager: Reference?
	
	/// Other practitioners facilitating this episode of care
	public var careTeam: [Reference]?
	
	/// The set of accounts that may be used for billing for this EpisodeOfCare
	public var account: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EpisodeOfCareStatus>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		account: [Reference]? = nil,
		careManager: Reference? = nil,
		careTeam: [Reference]? = nil,
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
		period: Period? = nil,
		reason: [EpisodeOfCareReason]? = nil,
		referralRequest: [Reference]? = nil,
		status: FHIRPrimitive<EpisodeOfCareStatus>,
		statusHistory: [EpisodeOfCareStatusHistory]? = nil,
		subject: Reference,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(status: status, subject: subject)
		self.account = account
		self.careManager = careManager
		self.careTeam = careTeam
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
		self.reason = reason
		self.referralRequest = referralRequest
		self.statusHistory = statusHistory
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case careManager
		case careTeam
		case diagnosis
		case identifier
		case managingOrganization
		case period
		case reason
		case referralRequest
		case status; case _status
		case statusHistory
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.careManager = try Reference(from: _container, forKeyIfPresent: .careManager)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.diagnosis = try [EpisodeOfCareDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.reason = try [EpisodeOfCareReason](from: _container, forKeyIfPresent: .reason)
		self.referralRequest = try [Reference](from: _container, forKeyIfPresent: .referralRequest)
		self.status = try FHIRPrimitive<EpisodeOfCareStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EpisodeOfCareStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try careManager?.encode(on: &_container, forKey: .careManager)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try period?.encode(on: &_container, forKey: .period)
		try reason?.encode(on: &_container, forKey: .reason)
		try referralRequest?.encode(on: &_container, forKey: .referralRequest)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try subject.encode(on: &_container, forKey: .subject)
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
		    && careTeam == _other.careTeam
		    && diagnosis == _other.diagnosis
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && period == _other.period
		    && reason == _other.reason
		    && referralRequest == _other.referralRequest
		    && status == _other.status
		    && statusHistory == _other.statusHistory
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(careManager)
		hasher.combine(careTeam)
		hasher.combine(diagnosis)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(period)
		hasher.combine(reason)
		hasher.combine(referralRequest)
		hasher.combine(status)
		hasher.combine(statusHistory)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 The list of medical conditions that were addressed during the episode of care.
 */
open class EpisodeOfCareDiagnosis: BackboneElement {
	
	/// The medical condition that was addressed during the episode of care
	public var condition: [CodeableReference]?
	
	/// Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)
	public var use: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		condition: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: CodeableConcept? = nil
	) {
		self.init()
		self.condition = condition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try [CodeableReference](from: _container, forKeyIfPresent: .condition)
		self.use = try CodeableConcept(from: _container, forKeyIfPresent: .use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition?.encode(on: &_container, forKey: .condition)
		try use?.encode(on: &_container, forKey: .use)
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
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(use)
	}
}

/**
 The list of medical reasons that are expected to be addressed during the episode of care.
 */
open class EpisodeOfCareReason: BackboneElement {
	
	/// What the reason value should be used for/as
	public var use: CodeableConcept?
	
	/// Medical reason to be addressed
	public var value: [CodeableReference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: CodeableConcept? = nil,
		value: [CodeableReference]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.use = use
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case use
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.use = try CodeableConcept(from: _container, forKeyIfPresent: .use)
		self.value = try [CodeableReference](from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try use?.encode(on: &_container, forKey: .use)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EpisodeOfCareReason else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return use == _other.use
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(use)
		hasher.combine(value)
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
		status: FHIRPrimitive<EpisodeOfCareStatus>
	) {
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
