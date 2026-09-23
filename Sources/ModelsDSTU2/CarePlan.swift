//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Health issues this plan addresses
	public var addresses: [Reference]?
	
	/// Who is responsible for contents of the plan
	public var author: [Reference]?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Created in context of
	public var context: Reference?
	
	/// Summary of nature of plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// When last updated
	public var modified: FHIRPrimitive<DateTime>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the plan
	public var note: Annotation?
	
	/// Who's involved in plan?
	public var participant: [CarePlanParticipant]?
	
	/// Time period plan covers
	public var period: Period?
	
	/// Plans related to this one
	public var relatedPlan: [CarePlanRelatedPlan]?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	/// Restricted to: ['proposed', 'draft', 'active', 'completed', 'cancelled']
	public var status: FHIRPrimitive<CarePlanStatus>
	
	/// Who care plan is for
	public var subject: Reference?
	
	/// Information considered as part of plan
	public var support: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		activity: [CarePlanActivity]? = nil,
		addresses: [Reference]? = nil,
		author: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modified: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		note: Annotation? = nil,
		participant: [CarePlanParticipant]? = nil,
		period: Period? = nil,
		relatedPlan: [CarePlanRelatedPlan]? = nil,
		status: FHIRPrimitive<CarePlanStatus>,
		subject: Reference? = nil,
		support: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.activity = activity
		self.addresses = addresses
		self.author = author
		self.category = category
		self.contained = contained
		self.context = context
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.goal = goal
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modified = modified
		self.modifierExtension = modifierExtension
		self.note = note
		self.participant = participant
		self.period = period
		self.relatedPlan = relatedPlan
		self.status = status
		self.subject = subject
		self.support = support
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case activity
		case addresses
		case author
		case category
		case contained
		case context
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case goal
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modified; case _modified
		case modifierExtension
		case note
		case participant
		case period
		case relatedPlan
		case status; case _status
		case subject
		case support
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try [CarePlanActivity](from: _container, forKeyIfPresent: .activity)
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modified = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .modified, auxiliaryKey: ._modified)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.participant = try [CarePlanParticipant](from: _container, forKeyIfPresent: .participant)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relatedPlan = try [CarePlanRelatedPlan](from: _container, forKeyIfPresent: .relatedPlan)
		self.status = try FHIRPrimitive<CarePlanStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.support = try [Reference](from: _container, forKeyIfPresent: .support)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try activity?.encode(on: &_container, forKey: .activity)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try goal?.encode(on: &_container, forKey: .goal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modified?.encode(on: &_container, forKey: .modified, auxiliaryKey: ._modified)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try period?.encode(on: &_container, forKey: .period)
		try relatedPlan?.encode(on: &_container, forKey: .relatedPlan)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try support?.encode(on: &_container, forKey: .support)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Action to occur as part of plan.
 
 Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
 self-monitoring, education, etc.
 */
public struct CarePlanActivity: BackboneElement {
	
	/// Appointments, orders, etc.
	public var actionResulting: [Reference]?
	
	/// In-line definition of activity
	public var detail: CarePlanActivityDetail?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the activity status/progress
	public var progress: [Annotation]?
	
	/// Activity details defined in specific resource
	public var reference: Reference?
	
	/// Designated initializer
	public init(
		actionResulting: [Reference]? = nil,
		detail: CarePlanActivityDetail? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		progress: [Annotation]? = nil,
		reference: Reference? = nil
	) {
		self.actionResulting = actionResulting
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.progress = progress
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actionResulting
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case progress
		case reference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actionResulting = try [Reference](from: _container, forKeyIfPresent: .actionResulting)
		self.detail = try CarePlanActivityDetail(from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.progress = try [Annotation](from: _container, forKeyIfPresent: .progress)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actionResulting?.encode(on: &_container, forKey: .actionResulting)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try progress?.encode(on: &_container, forKey: .progress)
		try reference?.encode(on: &_container, forKey: .reference)
	}
}

/**
 In-line definition of activity.
 
 A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
 about specific resources such as procedure etc.
 */
public struct CarePlanActivityDetail: BackboneElement {
	
	/// All possible types for "product[x]"
	public enum ProductX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "scheduled[x]"
	public enum ScheduledX: Equatable, Hashable, Sendable {
		indirect case period(Period)
		case string(FHIRPrimitive<FHIRString>)
		indirect case timing(Timing)
	}
	
	/// diet | drug | encounter | observation | procedure | supply | other
	public var category: CodeableConcept?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// How to consume/day?
	public var dailyAmount: Quantity?
	
	/// Extra info describing activity to perform
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Goals this activity relates to
	public var goal: [Reference]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Where it should happen
	public var location: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who will be responsible?
	public var performer: [Reference]?
	
	/// What is to be administered/supplied
	/// One of `product[x]`
	public var product: ProductX?
	
	/// Do NOT do
	public var prohibited: FHIRPrimitive<FHIRBool>
	
	/// How much to administer/supply/consume
	public var quantity: Quantity?
	
	/// Why activity should be done
	public var reasonCode: [CodeableConcept]?
	
	/// Condition triggering need for activity
	public var reasonReference: [Reference]?
	
	/// When activity is to occur
	/// One of `scheduled[x]`
	public var scheduled: ScheduledX?
	
	/// Identifies what progress is being made for the specific activity.
	/// Restricted to: ['not-started', 'scheduled', 'in-progress', 'on-hold', 'completed', 'cancelled']
	public var status: FHIRPrimitive<CarePlanActivityStatus>?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		dailyAmount: Quantity? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		performer: [Reference]? = nil,
		product: ProductX? = nil,
		prohibited: FHIRPrimitive<FHIRBool>,
		quantity: Quantity? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		scheduled: ScheduledX? = nil,
		status: FHIRPrimitive<CarePlanActivityStatus>? = nil,
		statusReason: CodeableConcept? = nil
	) {
		self.category = category
		self.code = code
		self.dailyAmount = dailyAmount
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.goal = goal
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.performer = performer
		self.product = product
		self.prohibited = prohibited
		self.quantity = quantity
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.scheduled = scheduled
		self.status = status
		self.statusReason = statusReason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case dailyAmount
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case goal
		case id; case _id
		case location
		case modifierExtension
		case performer
		case productCodeableConcept
		case productReference
		case prohibited; case _prohibited
		case quantity
		case reasonCode
		case reasonReference
		case scheduledPeriod
		case scheduledString; case _scheduledString
		case scheduledTiming
		case status; case _status
		case statusReason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.dailyAmount = try Quantity(from: _container, forKeyIfPresent: .dailyAmount)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.product = try Self._decodeProduct(from: _container)
		self.prohibited = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .prohibited, auxiliaryKey: ._prohibited)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.scheduled = try Self._decodeScheduled(from: _container)
		self.status = try FHIRPrimitive<CarePlanActivityStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try dailyAmount?.encode(on: &_container, forKey: .dailyAmount)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try goal?.encode(on: &_container, forKey: .goal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location?.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try performer?.encode(on: &_container, forKey: .performer)
		if let _enum = product {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .productCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .productReference)
		}
		}
		try prohibited.encode(on: &_container, forKey: .prohibited, auxiliaryKey: ._prohibited)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		if let _enum = scheduled {
		switch _enum {
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .scheduledPeriod)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .scheduledString, auxiliaryKey: ._scheduledString)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .scheduledTiming)
		}
		}
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeProduct(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ProductX? {
		var _t_product: ProductX? = nil
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			_t_product = .codeableConcept(productCodeableConcept)
		}
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		return _t_product
	}
	
	private static func _decodeScheduled(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ScheduledX? {
		var _t_scheduled: ScheduledX? = nil
		if let scheduledPeriod = try Period(from: _container, forKeyIfPresent: .scheduledPeriod) {
			_t_scheduled = .period(scheduledPeriod)
		}
		if let scheduledString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .scheduledString, auxiliaryKey: ._scheduledString) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledString, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .string(scheduledString)
		}
		if let scheduledTiming = try Timing(from: _container, forKeyIfPresent: .scheduledTiming) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledTiming, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .timing(scheduledTiming)
		}
		return _t_scheduled
	}
}

/**
 Who's involved in plan?.
 
 Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
public struct CarePlanParticipant: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Who is involved
	public var member: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		member: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.member = member
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case member
		case modifierExtension
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
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try member?.encode(on: &_container, forKey: .member)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
	}
}

/**
 Plans related to this one.
 
 Identifies CarePlans with some sort of formal relationship to the current plan.
 */
public struct CarePlanRelatedPlan: BackboneElement {
	
	/// Identifies the type of relationship this plan has to the target plan.
	/// Restricted to: ['includes', 'replaces', 'fulfills']
	public var code: FHIRPrimitive<CarePlanRelationship>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Plan relationship exists with
	public var plan: Reference
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<CarePlanRelationship>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		plan: Reference
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.plan = plan
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case plan
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<CarePlanRelationship>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.plan = try Reference(from: _container, forKey: .plan)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try plan.encode(on: &_container, forKey: .plan)
	}
}
