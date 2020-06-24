//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
	
	/// Who care plan is for
	public var subject: Reference?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	/// Restricted to: ['proposed', 'draft', 'active', 'completed', 'cancelled']
	public var status: FHIRPrimitive<CarePlanStatus>
	
	/// Created in context of
	public var context: Reference?
	
	/// Time period plan covers
	public var period: Period?
	
	/// Who is responsible for contents of the plan
	public var author: [Reference]?
	
	/// When last updated
	public var modified: FHIRPrimitive<DateTime>?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Summary of nature of plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Health issues this plan addresses
	public var addresses: [Reference]?
	
	/// Information considered as part of plan
	public var support: [Reference]?
	
	/// Plans related to this one
	public var relatedPlan: [CarePlanRelatedPlan]?
	
	/// Who's involved in plan?
	public var participant: [CarePlanParticipant]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Comments about the plan
	public var note: Annotation?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<CarePlanStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(status: status)
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
		self.subject = subject
		self.support = support
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case addresses
		case author
		case category
		case context
		case description_fhir = "description"; case _description_fhir = "_description"
		case goal
		case identifier
		case modified; case _modified
		case note
		case participant
		case period
		case relatedPlan
		case status; case _status
		case subject
		case support
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try [CarePlanActivity](from: _container, forKeyIfPresent: .activity)
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modified = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .modified, auxiliaryKey: ._modified)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.participant = try [CarePlanParticipant](from: _container, forKeyIfPresent: .participant)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relatedPlan = try [CarePlanRelatedPlan](from: _container, forKeyIfPresent: .relatedPlan)
		self.status = try FHIRPrimitive<CarePlanStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.support = try [Reference](from: _container, forKeyIfPresent: .support)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity?.encode(on: &_container, forKey: .activity)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try goal?.encode(on: &_container, forKey: .goal)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modified?.encode(on: &_container, forKey: .modified, auxiliaryKey: ._modified)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try period?.encode(on: &_container, forKey: .period)
		try relatedPlan?.encode(on: &_container, forKey: .relatedPlan)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try support?.encode(on: &_container, forKey: .support)
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
		    && category == _other.category
		    && context == _other.context
		    && description_fhir == _other.description_fhir
		    && goal == _other.goal
		    && identifier == _other.identifier
		    && modified == _other.modified
		    && note == _other.note
		    && participant == _other.participant
		    && period == _other.period
		    && relatedPlan == _other.relatedPlan
		    && status == _other.status
		    && subject == _other.subject
		    && support == _other.support
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(addresses)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(description_fhir)
		hasher.combine(goal)
		hasher.combine(identifier)
		hasher.combine(modified)
		hasher.combine(note)
		hasher.combine(participant)
		hasher.combine(period)
		hasher.combine(relatedPlan)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(support)
	}
}

/**
 Action to occur as part of plan.
 
 Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
 self-monitoring, education, etc.
 */
open class CarePlanActivity: BackboneElement {
	
	/// Appointments, orders, etc.
	public var actionResulting: [Reference]?
	
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
							actionResulting: [Reference]? = nil,
							detail: CarePlanActivityDetail? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							progress: [Annotation]? = nil,
							reference: Reference? = nil)
	{
		self.init()
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
		case progress
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actionResulting = try [Reference](from: _container, forKeyIfPresent: .actionResulting)
		self.detail = try CarePlanActivityDetail(from: _container, forKeyIfPresent: .detail)
		self.progress = try [Annotation](from: _container, forKeyIfPresent: .progress)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actionResulting?.encode(on: &_container, forKey: .actionResulting)
		try detail?.encode(on: &_container, forKey: .detail)
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
		return actionResulting == _other.actionResulting
		    && detail == _other.detail
		    && progress == _other.progress
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actionResulting)
		hasher.combine(detail)
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
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// Why activity should be done
	public var reasonCode: [CodeableConcept]?
	
	/// Condition triggering need for activity
	public var reasonReference: [Reference]?
	
	/// Goals this activity relates to
	public var goal: [Reference]?
	
	/// Identifies what progress is being made for the specific activity.
	/// Restricted to: ['not-started', 'scheduled', 'in-progress', 'on-hold', 'completed', 'cancelled']
	public var status: FHIRPrimitive<CarePlanActivityStatus>?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Do NOT do
	public var prohibited: FHIRPrimitive<FHIRBool>
	
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
	public init(prohibited: FHIRPrimitive<FHIRBool>) {
		self.prohibited = prohibited
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							statusReason: CodeableConcept? = nil)
	{
		self.init(prohibited: prohibited)
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
		case statusReason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.dailyAmount = try Quantity(from: _container, forKeyIfPresent: .dailyAmount)
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
		self.prohibited = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .prohibited, auxiliaryKey: ._prohibited)
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
		self.status = try FHIRPrimitive<CarePlanActivityStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try dailyAmount?.encode(on: &_container, forKey: .dailyAmount)
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
		try prohibited.encode(on: &_container, forKey: .prohibited, auxiliaryKey: ._prohibited)
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
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
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

/**
 Who's involved in plan?.
 
 Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
open class CarePlanParticipant: BackboneElement {
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	/// Who is involved
	public var member: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							member: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.member = member
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case member
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.member = try Reference(from: _container, forKeyIfPresent: .member)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try member?.encode(on: &_container, forKey: .member)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CarePlanParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return member == _other.member
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(member)
		hasher.combine(role)
	}
}

/**
 Plans related to this one.
 
 Identifies CarePlans with some sort of formal relationship to the current plan.
 */
open class CarePlanRelatedPlan: BackboneElement {
	
	/// Identifies the type of relationship this plan has to the target plan.
	/// Restricted to: ['includes', 'replaces', 'fulfills']
	public var code: FHIRPrimitive<CarePlanRelationship>?
	
	/// Plan relationship exists with
	public var plan: Reference
	
	/// Designated initializer taking all required properties
	public init(plan: Reference) {
		self.plan = plan
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<CarePlanRelationship>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							plan: Reference)
	{
		self.init(plan: plan)
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case plan
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<CarePlanRelationship>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.plan = try Reference(from: _container, forKey: .plan)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try plan.encode(on: &_container, forKey: .plan)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CarePlanRelatedPlan else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && plan == _other.plan
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(plan)
	}
}
