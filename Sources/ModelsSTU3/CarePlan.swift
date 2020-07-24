//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
 Healthcare plan for patient or group.
 
 Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
 community for a period of time, possibly limited to care for a specific condition or set of conditions.
 */
open class CarePlan: DomainResource {
	
	override open class var resourceType: ResourceType { return .carePlan }
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// Protocol or definition
	public var definition: [Reference]?
	
	/// Fulfills care plan
	public var basedOn: [Reference]?
	
	/// CarePlan replaced by this CarePlan
	public var replaces: [Reference]?
	
	/// Part of referenced CarePlan
	public var partOf: [Reference]?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	public var status: FHIRPrimitive<CarePlanStatus>
	
	/// Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into
	/// the workflow chain.
	public var intent: FHIRPrimitive<CarePlanIntent>
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Human-friendly name for the CarePlan
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Summary of nature of plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who care plan is for
	public var subject: Reference
	
	/// Created in context of
	public var context: Reference?
	
	/// Time period plan covers
	public var period: Period?
	
	/// Who is responsible for contents of the plan
	public var author: [Reference]?
	
	/// Who's involved in plan?
	public var careTeam: [Reference]?
	
	/// Health issues this plan addresses
	public var addresses: [Reference]?
	
	/// Information considered as part of plan
	public var supportingInfo: [Reference]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Comments about the plan
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<CarePlanIntent>, status: FHIRPrimitive<CarePlanStatus>, subject: Reference) {
		self.intent = intent
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(intent: intent, status: status, subject: subject)
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
		case author
		case basedOn
		case careTeam
		case category
		case context
		case definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case goal
		case identifier
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
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.intent = try FHIRPrimitive<CarePlanIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.status = try FHIRPrimitive<CarePlanStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		try author?.encode(on: &_container, forKey: .author)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try goal?.encode(on: &_container, forKey: .goal)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		    && author == _other.author
		    && basedOn == _other.basedOn
		    && careTeam == _other.careTeam
		    && category == _other.category
		    && context == _other.context
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && goal == _other.goal
		    && identifier == _other.identifier
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
		hasher.combine(author)
		hasher.combine(basedOn)
		hasher.combine(careTeam)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(goal)
		hasher.combine(identifier)
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
 Action to occur as part of plan.
 
 Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
 self-monitoring, education, etc.
 */
open class CarePlanActivity: BackboneElement {
	
	/// Results of the activity
	public var outcomeCodeableConcept: [CodeableConcept]?
	
	/// Appointment, Encounter, Procedure, etc.
	public var outcomeReference: [Reference]?
	
	/// Comments about the activity status/progress
	public var progress: [Annotation]?
	
	/// Activity details defined in specific resource
	public var reference: Reference?
	
	/// In-line definition of activity
	public var detail: CarePlanActivityDetail?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							detail: CarePlanActivityDetail? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							outcomeCodeableConcept: [CodeableConcept]? = nil,
							outcomeReference: [Reference]? = nil,
							progress: [Annotation]? = nil,
							reference: Reference? = nil)
	{
		self.init()
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
		case outcomeCodeableConcept
		case outcomeReference
		case progress
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.detail = try CarePlanActivityDetail(from: _container, forKeyIfPresent: .detail)
		self.outcomeCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .outcomeCodeableConcept)
		self.outcomeReference = try [Reference](from: _container, forKeyIfPresent: .outcomeReference)
		self.progress = try [Annotation](from: _container, forKeyIfPresent: .progress)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try detail?.encode(on: &_container, forKey: .detail)
		try outcomeCodeableConcept?.encode(on: &_container, forKey: .outcomeCodeableConcept)
		try outcomeReference?.encode(on: &_container, forKey: .outcomeReference)
		try progress?.encode(on: &_container, forKey: .progress)
		try reference?.encode(on: &_container, forKey: .reference)
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
		return detail == _other.detail
		    && outcomeCodeableConcept == _other.outcomeCodeableConcept
		    && outcomeReference == _other.outcomeReference
		    && progress == _other.progress
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(detail)
		hasher.combine(outcomeCodeableConcept)
		hasher.combine(outcomeReference)
		hasher.combine(progress)
		hasher.combine(reference)
	}
}

/**
 In-line definition of activity.
 
 A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
 about specific resources such as procedure etc.
 */
open class CarePlanActivityDetail: BackboneElement {
	
	/// All possible types for "product[x]"
	public enum ProductX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "scheduled[x]"
	public enum ScheduledX: Hashable {
		case period(Period)
		case string(FHIRPrimitive<FHIRString>)
		case timing(Timing)
	}
	
	/// diet | drug | encounter | observation | procedure | supply | other
	public var category: CodeableConcept?
	
	/// Protocol or definition
	public var definition: Reference?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// Why activity should be done or why activity was prohibited
	public var reasonCode: [CodeableConcept]?
	
	/// Condition triggering need for activity
	public var reasonReference: [Reference]?
	
	/// Goals this activity relates to
	public var goal: [Reference]?
	
	/// Identifies what progress is being made for the specific activity.
	public var status: FHIRPrimitive<CarePlanActivityStatus>
	
	/// Reason for current status
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Do NOT do
	public var prohibited: FHIRPrimitive<FHIRBool>?
	
	/// When activity is to occur
	/// One of `scheduled[x]`
	public var scheduled: ScheduledX?
	
	/// Where it should happen
	public var location: Reference?
	
	/// Who will be responsible?
	public var performer: [Reference]?
	
	/// What is to be administered/supplied
	/// One of `product[x]`
	public var product: ProductX?
	
	/// How to consume/day?
	public var dailyAmount: Quantity?
	
	/// How much to administer/supply/consume
	public var quantity: Quantity?
	
	/// Extra info describing activity to perform
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<CarePlanActivityStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							statusReason: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
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
		self.statusReason = statusReason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case dailyAmount
		case definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case goal
		case location
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.dailyAmount = try Quantity(from: _container, forKeyIfPresent: .dailyAmount)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		var _t_product: ProductX? = nil
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productCodeableConcept, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .codeableConcept(productCodeableConcept)
		}
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		self.product = _t_product
		self.prohibited = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .prohibited, auxiliaryKey: ._prohibited)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		var _t_scheduled: ScheduledX? = nil
		if let scheduledTiming = try Timing(from: _container, forKeyIfPresent: .scheduledTiming) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledTiming, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .timing(scheduledTiming)
		}
		if let scheduledPeriod = try Period(from: _container, forKeyIfPresent: .scheduledPeriod) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledPeriod, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .period(scheduledPeriod)
		}
		if let scheduledString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .scheduledString, auxiliaryKey: ._scheduledString) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledString, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .string(scheduledString)
		}
		self.scheduled = _t_scheduled
		self.status = try FHIRPrimitive<CarePlanActivityStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try dailyAmount?.encode(on: &_container, forKey: .dailyAmount)
		try definition?.encode(on: &_container, forKey: .definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try goal?.encode(on: &_container, forKey: .goal)
		try location?.encode(on: &_container, forKey: .location)
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
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .scheduledTiming)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .scheduledPeriod)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .scheduledString, auxiliaryKey: ._scheduledString)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CarePlanActivityDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
		    && dailyAmount == _other.dailyAmount
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && goal == _other.goal
		    && location == _other.location
		    && performer == _other.performer
		    && product == _other.product
		    && prohibited == _other.prohibited
		    && quantity == _other.quantity
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && scheduled == _other.scheduled
		    && status == _other.status
		    && statusReason == _other.statusReason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(dailyAmount)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(goal)
		hasher.combine(location)
		hasher.combine(performer)
		hasher.combine(product)
		hasher.combine(prohibited)
		hasher.combine(quantity)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(scheduled)
		hasher.combine(status)
		hasher.combine(statusReason)
	}
}
