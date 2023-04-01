//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
 Healthcare plan for patient or group.
 
 Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
 community for a period of time, possibly limited to care for a specific condition or set of conditions.
 */
open class CarePlan: DomainResource {
	
	override open class var resourceType: ResourceType { return .carePlan }
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// CarePlan replaced by this CarePlan
	public var replaces: [Reference]?
	
	/// Part of referenced CarePlan
	public var partOf: [Reference]?
	
	/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// proposal | plan | order | option | directive
	public var intent: FHIRPrimitive<FHIRString>
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Human-friendly name for the care plan
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Summary of nature of plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who the care plan is for
	public var subject: Reference
	
	/// The Encounter during which this CarePlan was created
	public var encounter: Reference?
	
	/// Time period plan covers
	public var period: Period?
	
	/// Date record was first recorded
	public var created: FHIRPrimitive<DateTime>?
	
	/// Who is the designated responsible party
	public var custodian: Reference?
	
	/// Who provided the content of the care plan
	public var contributor: [Reference]?
	
	/// Who's involved in plan?
	public var careTeam: [Reference]?
	
	/// Health issues this plan addresses
	public var addresses: [CodeableReference]?
	
	/// Information considered as part of plan
	public var supportingInfo: [Reference]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// Action to occur or has occurred as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Comments about the plan
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<FHIRString>, subject: Reference) {
		self.intent = intent
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activity: [CarePlanActivity]? = nil,
		addresses: [CodeableReference]? = nil,
		basedOn: [Reference]? = nil,
		careTeam: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		contributor: [Reference]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		custodian: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		intent: FHIRPrimitive<FHIRString>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
		replaces: [Reference]? = nil,
		status: FHIRPrimitive<FHIRString>,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(intent: intent, status: status, subject: subject)
		self.activity = activity
		self.addresses = addresses
		self.basedOn = basedOn
		self.careTeam = careTeam
		self.category = category
		self.contained = contained
		self.contributor = contributor
		self.created = created
		self.custodian = custodian
		self.description_fhir = description_fhir
		self.encounter = encounter
		self.`extension` = `extension`
		self.goal = goal
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.period = period
		self.replaces = replaces
		self.supportingInfo = supportingInfo
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case addresses
		case basedOn
		case careTeam
		case category
		case contributor
		case created; case _created
		case custodian
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case goal
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case intent; case _intent
		case note
		case partOf
		case period
		case replaces
		case status; case _status
		case subject
		case supportingInfo
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try [CarePlanActivity](from: _container, forKeyIfPresent: .activity)
		self.addresses = try [CodeableReference](from: _container, forKeyIfPresent: .addresses)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contributor = try [Reference](from: _container, forKeyIfPresent: .contributor)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity?.encode(on: &_container, forKey: .activity)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try category?.encode(on: &_container, forKey: .category)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try goal?.encode(on: &_container, forKey: .goal)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CarePlan else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activity == _other.activity
		    && addresses == _other.addresses
		    && basedOn == _other.basedOn
		    && careTeam == _other.careTeam
		    && category == _other.category
		    && contributor == _other.contributor
		    && created == _other.created
		    && custodian == _other.custodian
		    && description_fhir == _other.description_fhir
		    && encounter == _other.encounter
		    && goal == _other.goal
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && intent == _other.intent
		    && note == _other.note
		    && partOf == _other.partOf
		    && period == _other.period
		    && replaces == _other.replaces
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(addresses)
		hasher.combine(basedOn)
		hasher.combine(careTeam)
		hasher.combine(category)
		hasher.combine(contributor)
		hasher.combine(created)
		hasher.combine(custodian)
		hasher.combine(description_fhir)
		hasher.combine(encounter)
		hasher.combine(goal)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(period)
		hasher.combine(replaces)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
		hasher.combine(title)
	}
}

/**
 Action to occur or has occurred as part of plan.
 
 Identifies an action that has occurred or is a planned action to occur as part of the plan. For example, a medication
 to be used, lab tests to perform, self-monitoring that has occurred, education etc.
 */
open class CarePlanActivity: BackboneElement {
	
	/// Results of the activity (concept, or Appointment, Encounter, Procedure, etc.)
	public var performedActivity: [CodeableReference]?
	
	/// Comments about the activity status/progress
	public var progress: [Annotation]?
	
	/// Activity that is intended to be part of the care plan
	public var plannedActivityReference: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		performedActivity: [CodeableReference]? = nil,
		plannedActivityReference: Reference? = nil,
		progress: [Annotation]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.performedActivity = performedActivity
		self.plannedActivityReference = plannedActivityReference
		self.progress = progress
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case performedActivity
		case plannedActivityReference
		case progress
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.performedActivity = try [CodeableReference](from: _container, forKeyIfPresent: .performedActivity)
		self.plannedActivityReference = try Reference(from: _container, forKeyIfPresent: .plannedActivityReference)
		self.progress = try [Annotation](from: _container, forKeyIfPresent: .progress)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try performedActivity?.encode(on: &_container, forKey: .performedActivity)
		try plannedActivityReference?.encode(on: &_container, forKey: .plannedActivityReference)
		try progress?.encode(on: &_container, forKey: .progress)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CarePlanActivity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return performedActivity == _other.performedActivity
		    && plannedActivityReference == _other.plannedActivityReference
		    && progress == _other.progress
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(performedActivity)
		hasher.combine(plannedActivityReference)
		hasher.combine(progress)
	}
}
