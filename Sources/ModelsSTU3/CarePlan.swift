//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
	
	/// Fulfills care plan
	public var basedOn: [Reference]?
	
	/// Who's involved in plan?
	public var careTeam: [Reference]?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Created in context of
	public var context: Reference?
	
	/// Protocol or definition
	public var definition: [Reference]?
	
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
	
	/// Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into
	/// the workflow chain.
	public var intent: FHIRPrimitive<CarePlanIntent>
	
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
	public var status: FHIRPrimitive<CarePlanStatus>
	
	/// Who care plan is for
	public var subject: Reference
	
	/// Information considered as part of plan
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Human-friendly name for the CarePlan
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		activity: [CarePlanActivity]? = nil,
		addresses: [Reference]? = nil,
		author: [Reference]? = nil,
		basedOn: [Reference]? = nil,
		careTeam: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		definition: [Reference]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		intent: FHIRPrimitive<CarePlanIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
		replaces: [Reference]? = nil,
		status: FHIRPrimitive<CarePlanStatus>,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.activity = activity
		self.addresses = addresses
		self.author = author
		self.basedOn = basedOn
		self.careTeam = careTeam
		self.category = category
		self.contained = contained
		self.context = context
		self.definition = definition
		self.description_fhir = description_fhir
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
		case author
		case basedOn
		case careTeam
		case category
		case contained
		case context
		case definition
		case description_fhir = "description"; case _description_fhir = "_description"
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
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.intent = try FHIRPrimitive<CarePlanIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.status = try FHIRPrimitive<CarePlanStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		try author?.encode(on: &_container, forKey: .author)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
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
 Action to occur as part of plan.
 
 Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
 self-monitoring, education, etc.
 */
public struct CarePlanActivity: BackboneElement {
	
	/// In-line definition of activity
	public var detail: CarePlanActivityDetail?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Results of the activity
	public var outcomeCodeableConcept: [CodeableConcept]?
	
	/// Appointment, Encounter, Procedure, etc.
	public var outcomeReference: [Reference]?
	
	/// Comments about the activity status/progress
	public var progress: [Annotation]?
	
	/// Activity details defined in specific resource
	public var reference: Reference?
	
	/// Designated initializer
	public init(
		detail: CarePlanActivityDetail? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		outcomeCodeableConcept: [CodeableConcept]? = nil,
		outcomeReference: [Reference]? = nil,
		progress: [Annotation]? = nil,
		reference: Reference? = nil
	) {
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.outcomeCodeableConcept = outcomeCodeableConcept
		self.outcomeReference = outcomeReference
		self.progress = progress
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case outcomeCodeableConcept
		case outcomeReference
		case progress
		case reference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.detail = try CarePlanActivityDetail(from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcomeCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .outcomeCodeableConcept)
		self.outcomeReference = try [Reference](from: _container, forKeyIfPresent: .outcomeReference)
		self.progress = try [Annotation](from: _container, forKeyIfPresent: .progress)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcomeCodeableConcept?.encode(on: &_container, forKey: .outcomeCodeableConcept)
		try outcomeReference?.encode(on: &_container, forKey: .outcomeReference)
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
	
	/// Protocol or definition
	public var definition: Reference?
	
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
	public var prohibited: FHIRPrimitive<FHIRBool>?
	
	/// How much to administer/supply/consume
	public var quantity: Quantity?
	
	/// Why activity should be done or why activity was prohibited
	public var reasonCode: [CodeableConcept]?
	
	/// Condition triggering need for activity
	public var reasonReference: [Reference]?
	
	/// When activity is to occur
	/// One of `scheduled[x]`
	public var scheduled: ScheduledX?
	
	/// Identifies what progress is being made for the specific activity.
	public var status: FHIRPrimitive<CarePlanActivityStatus>
	
	/// Reason for current status
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		dailyAmount: Quantity? = nil,
		definition: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		performer: [Reference]? = nil,
		product: ProductX? = nil,
		prohibited: FHIRPrimitive<FHIRBool>? = nil,
		quantity: Quantity? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		scheduled: ScheduledX? = nil,
		status: FHIRPrimitive<CarePlanActivityStatus>,
		statusReason: FHIRPrimitive<FHIRString>? = nil
	) {
		self.category = category
		self.code = code
		self.dailyAmount = dailyAmount
		self.definition = definition
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
		case definition
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
		case statusReason; case _statusReason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.dailyAmount = try Quantity(from: _container, forKeyIfPresent: .dailyAmount)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.product = try Self._decodeProduct(from: _container)
		self.prohibited = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .prohibited, auxiliaryKey: ._prohibited)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.scheduled = try Self._decodeScheduled(from: _container)
		self.status = try FHIRPrimitive<CarePlanActivityStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try dailyAmount?.encode(on: &_container, forKey: .dailyAmount)
		try definition?.encode(on: &_container, forKey: .definition)
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
		try prohibited?.encode(on: &_container, forKey: .prohibited, auxiliaryKey: ._prohibited)
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
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
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
