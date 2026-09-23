//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
 Healthcare plan for patient or group.
 
 Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
 community for a period of time, possibly limited to care for a specific condition or set of conditions.
 */
public struct CarePlan: DomainResource {
	
	public static let resourceType: ResourceType = .carePlan
	
	/// Action to occur or has occurred as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Health issues this plan addresses
	public var addresses: [CodeableReference]?
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Who's involved in plan?
	public var careTeam: [Reference]?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Who provided the content of the care plan
	public var contributor: [Reference]?
	
	/// Date record was first recorded
	public var created: FHIRPrimitive<DateTime>?
	
	/// Who is the designated responsible party
	public var custodian: Reference?
	
	/// Summary of nature of plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The Encounter during which this CarePlan was created
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into
	/// the workflow chain.
	/// Restricted to: ['proposal', 'plan', 'order', 'option', 'directive']
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the plan
	public var note: [Annotation]?
	
	/// Part of referenced CarePlan
	public var partOf: [Reference]?
	
	/// Time period plan covers
	public var period: Period?
	
	/// CarePlan replaced by this CarePlan
	public var replaces: [Reference]?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Who the care plan is for
	public var subject: Reference
	
	/// Information considered as part of plan
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Human-friendly name for the care plan
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
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
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
		replaces: [Reference]? = nil,
		status: FHIRPrimitive<RequestStatus>,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
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
		self.intent = intent
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.period = period
		self.replaces = replaces
		self.status = status
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case activity
		case addresses
		case basedOn
		case careTeam
		case category
		case contained
		case contributor
		case created; case _created
		case custodian
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case `extension` = "extension"
		case goal
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case intent; case _intent
		case language; case _language
		case meta
		case modifierExtension
		case note
		case partOf
		case period
		case replaces
		case status; case _status
		case subject
		case supportingInfo
		case text
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try [CarePlanActivity](from: _container, forKeyIfPresent: .activity)
		self.addresses = try [CodeableReference](from: _container, forKeyIfPresent: .addresses)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contributor = try [Reference](from: _container, forKeyIfPresent: .contributor)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try activity?.encode(on: &_container, forKey: .activity)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try goal?.encode(on: &_container, forKey: .goal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Action to occur or has occurred as part of plan.
 
 Identifies an action that has occurred or is a planned action to occur as part of the plan. For example, a medication
 to be used, lab tests to perform, self-monitoring that has occurred, education etc.
 */
public struct CarePlanActivity: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Activities that are completed or in progress (concept, or Appointment, Encounter, Procedure, etc.)
	public var performedActivity: [CodeableReference]?
	
	/// Activity that is intended to be part of the care plan
	public var plannedActivityReference: Reference?
	
	/// Comments about the activity status/progress
	public var progress: [Annotation]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		performedActivity: [CodeableReference]? = nil,
		plannedActivityReference: Reference? = nil,
		progress: [Annotation]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.performedActivity = performedActivity
		self.plannedActivityReference = plannedActivityReference
		self.progress = progress
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case performedActivity
		case plannedActivityReference
		case progress
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performedActivity = try [CodeableReference](from: _container, forKeyIfPresent: .performedActivity)
		self.plannedActivityReference = try Reference(from: _container, forKeyIfPresent: .plannedActivityReference)
		self.progress = try [Annotation](from: _container, forKeyIfPresent: .progress)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try performedActivity?.encode(on: &_container, forKey: .performedActivity)
		try plannedActivityReference?.encode(on: &_container, forKey: .plannedActivityReference)
		try progress?.encode(on: &_container, forKey: .progress)
	}
}
