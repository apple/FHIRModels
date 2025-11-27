//
//  Goal.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/Goal)
//  Copyright 2025 Apple Inc.
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
 Describes the intended objective(s) for a patient, group, or organizational care.
 
 Describes the intended objective(s) for a patient, group, or organizational care. Examples include a patient's weight
 loss, restoration of an activity of daily living for a patient, obtaining herd immunity via immunization for a group,
 meeting a process improvement objective for an organization, etc.
 */
open class Goal: DomainResource {
	
	override open class var resourceType: ResourceType { return .goal }
	
	/// All possible types for "start[x]"
	public enum StartX: Hashable {
		case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
	}
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// The state of the goal throughout its lifecycle.
	public var lifecycleStatus: FHIRPrimitive<GoalLifecycleStatus>
	
	/// in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-
	/// attainable
	public var achievementStatus: CodeableConcept?
	
	/// E.g. Treatment, dietary, behavioral, etc
	public var category: [CodeableConcept]?
	
	/// After meeting the goal, ongoing activity is needed to sustain the goal objective
	public var continuous: FHIRPrimitive<FHIRBool>?
	
	/// high-priority | medium-priority | low-priority
	public var priority: CodeableConcept?
	
	/// Code or text describing goal
	public var description_fhir: CodeableConcept
	
	/// Who this goal is intended for
	public var subject: Reference
	
	/// When goal pursuit begins
	/// One of `start[x]`
	public var start: StartX?
	
	/// Individual acceptance of goal
	public var acceptance: [GoalAcceptance]?
	
	/// Target outcome for the goal
	public var target: [GoalTarget]?
	
	/// When goal achievment status took effect
	public var statusDate: FHIRPrimitive<FHIRDate>?
	
	/// Reason for current lifecycle status
	public var statusReason: [CodeableConcept]?
	
	/// Who recorded the goal
	public var recorder: Reference?
	
	/// Who's responsible for creating Goal?
	public var source: Reference?
	
	/// Issues addressed by this goal
	public var addresses: [Reference]?
	
	/// Comments about the goal
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: CodeableConcept, lifecycleStatus: FHIRPrimitive<GoalLifecycleStatus>, subject: Reference) {
		self.description_fhir = description_fhir
		self.lifecycleStatus = lifecycleStatus
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		acceptance: [GoalAcceptance]? = nil,
		achievementStatus: CodeableConcept? = nil,
		addresses: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		continuous: FHIRPrimitive<FHIRBool>? = nil,
		description_fhir: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lifecycleStatus: FHIRPrimitive<GoalLifecycleStatus>,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		priority: CodeableConcept? = nil,
		recorder: Reference? = nil,
		source: Reference? = nil,
		start: StartX? = nil,
		statusDate: FHIRPrimitive<FHIRDate>? = nil,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference,
		target: [GoalTarget]? = nil,
		text: Narrative? = nil
	) {
		self.init(description_fhir: description_fhir, lifecycleStatus: lifecycleStatus, subject: subject)
		self.acceptance = acceptance
		self.achievementStatus = achievementStatus
		self.addresses = addresses
		self.category = category
		self.contained = contained
		self.continuous = continuous
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.priority = priority
		self.recorder = recorder
		self.source = source
		self.start = start
		self.statusDate = statusDate
		self.statusReason = statusReason
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case acceptance
		case achievementStatus
		case addresses
		case category
		case continuous; case _continuous
		case description_fhir = "description"
		case identifier
		case lifecycleStatus; case _lifecycleStatus
		case note
		case priority
		case recorder
		case source
		case startCodeableConcept
		case startDate; case _startDate
		case statusDate; case _statusDate
		case statusReason
		case subject
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.acceptance = try [GoalAcceptance](from: _container, forKeyIfPresent: .acceptance)
		self.achievementStatus = try CodeableConcept(from: _container, forKeyIfPresent: .achievementStatus)
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.continuous = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .continuous, auxiliaryKey: ._continuous)
		self.description_fhir = try CodeableConcept(from: _container, forKey: .description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lifecycleStatus = try FHIRPrimitive<GoalLifecycleStatus>(from: _container, forKey: .lifecycleStatus, auxiliaryKey: ._lifecycleStatus)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		var _t_start: StartX? = nil
		if let startDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate) {
			if _t_start != nil {
				throw DecodingError.dataCorruptedError(forKey: .startDate, in: _container, debugDescription: "More than one value provided for \"start\"")
			}
			_t_start = .date(startDate)
		}
		if let startCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .startCodeableConcept) {
			if _t_start != nil {
				throw DecodingError.dataCorruptedError(forKey: .startCodeableConcept, in: _container, debugDescription: "More than one value provided for \"start\"")
			}
			_t_start = .codeableConcept(startCodeableConcept)
		}
		self.start = _t_start
		self.statusDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.target = try [GoalTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try acceptance?.encode(on: &_container, forKey: .acceptance)
		try achievementStatus?.encode(on: &_container, forKey: .achievementStatus)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try category?.encode(on: &_container, forKey: .category)
		try continuous?.encode(on: &_container, forKey: .continuous, auxiliaryKey: ._continuous)
		try description_fhir.encode(on: &_container, forKey: .description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lifecycleStatus.encode(on: &_container, forKey: .lifecycleStatus, auxiliaryKey: ._lifecycleStatus)
		try note?.encode(on: &_container, forKey: .note)
		try priority?.encode(on: &_container, forKey: .priority)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try source?.encode(on: &_container, forKey: .source)
		if let _enum = start {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .startCodeableConcept)
			}
		}
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Goal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return acceptance == _other.acceptance
		    && achievementStatus == _other.achievementStatus
		    && addresses == _other.addresses
		    && category == _other.category
		    && continuous == _other.continuous
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && lifecycleStatus == _other.lifecycleStatus
		    && note == _other.note
		    && priority == _other.priority
		    && recorder == _other.recorder
		    && source == _other.source
		    && start == _other.start
		    && statusDate == _other.statusDate
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(acceptance)
		hasher.combine(achievementStatus)
		hasher.combine(addresses)
		hasher.combine(category)
		hasher.combine(continuous)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(lifecycleStatus)
		hasher.combine(note)
		hasher.combine(priority)
		hasher.combine(recorder)
		hasher.combine(source)
		hasher.combine(start)
		hasher.combine(statusDate)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(target)
	}
}

/**
 Individual acceptance of goal.
 
 Information about the acceptance and relative priority assigned to the goal by the patient, practitioners and other
 stakeholders.
 */
open class GoalAcceptance: BackboneElement {
	
	/// Individual or organization whose acceptance is reflected
	public var participant: Reference
	
	/// Indicates whether the specified individual has accepted the goal or not.
	public var status: FHIRPrimitive<GoalAcceptStatus>?
	
	/// Priority of goal for individual
	public var priority: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(participant: Reference) {
		self.participant = participant
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		participant: Reference,
		priority: CodeableConcept? = nil,
		status: FHIRPrimitive<GoalAcceptStatus>? = nil
	) {
		self.init(participant: participant)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priority = priority
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case participant
		case priority
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.participant = try Reference(from: _container, forKey: .participant)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.status = try FHIRPrimitive<GoalAcceptStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try participant.encode(on: &_container, forKey: .participant)
		try priority?.encode(on: &_container, forKey: .priority)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GoalAcceptance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return participant == _other.participant
		    && priority == _other.priority
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(participant)
		hasher.combine(priority)
		hasher.combine(status)
	}
}

/**
 Target outcome for the goal.
 
 Indicates what should be done by when.
 */
open class GoalTarget: BackboneElement {
	
	/// All possible types for "detail[x]"
	public enum DetailX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "due[x]"
	public enum DueX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case duration(Duration)
	}
	
	/// The parameter whose value is being tracked
	public var measure: CodeableConcept?
	
	/// The target value to be achieved
	/// One of `detail[x]`
	public var detail: DetailX?
	
	/// Reach goal on or before
	/// One of `due[x]`
	public var due: DueX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		detail: DetailX? = nil,
		due: DueX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measure: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.detail = detail
		self.due = due
		self.`extension` = `extension`
		self.id = id
		self.measure = measure
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detailBoolean; case _detailBoolean
		case detailCodeableConcept
		case detailInteger; case _detailInteger
		case detailQuantity
		case detailRange
		case detailRatio
		case detailString; case _detailString
		case dueDate; case _dueDate
		case dueDuration
		case measure
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_detail: DetailX? = nil
		if let detailQuantity = try Quantity(from: _container, forKeyIfPresent: .detailQuantity) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailQuantity, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .quantity(detailQuantity)
		}
		if let detailRange = try Range(from: _container, forKeyIfPresent: .detailRange) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailRange, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .range(detailRange)
		}
		if let detailCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .detailCodeableConcept) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailCodeableConcept, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .codeableConcept(detailCodeableConcept)
		}
		if let detailString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detailString, auxiliaryKey: ._detailString) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailString, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .string(detailString)
		}
		if let detailBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .detailBoolean, auxiliaryKey: ._detailBoolean) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailBoolean, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .boolean(detailBoolean)
		}
		if let detailInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .detailInteger, auxiliaryKey: ._detailInteger) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailInteger, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .integer(detailInteger)
		}
		if let detailRatio = try Ratio(from: _container, forKeyIfPresent: .detailRatio) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailRatio, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .ratio(detailRatio)
		}
		self.detail = _t_detail
		var _t_due: DueX? = nil
		if let dueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .dueDate, auxiliaryKey: ._dueDate) {
			if _t_due != nil {
				throw DecodingError.dataCorruptedError(forKey: .dueDate, in: _container, debugDescription: "More than one value provided for \"due\"")
			}
			_t_due = .date(dueDate)
		}
		if let dueDuration = try Duration(from: _container, forKeyIfPresent: .dueDuration) {
			if _t_due != nil {
				throw DecodingError.dataCorruptedError(forKey: .dueDuration, in: _container, debugDescription: "More than one value provided for \"due\"")
			}
			_t_due = .duration(dueDuration)
		}
		self.due = _t_due
		self.measure = try CodeableConcept(from: _container, forKeyIfPresent: .measure)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = detail {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .detailQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .detailRange)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .detailCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .detailString, auxiliaryKey: ._detailString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .detailBoolean, auxiliaryKey: ._detailBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .detailInteger, auxiliaryKey: ._detailInteger)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .detailRatio)
			}
		}
		if let _enum = due {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .dueDate, auxiliaryKey: ._dueDate)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .dueDuration)
			}
		}
		try measure?.encode(on: &_container, forKey: .measure)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GoalTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return detail == _other.detail
		    && due == _other.due
		    && measure == _other.measure
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(detail)
		hasher.combine(due)
		hasher.combine(measure)
	}
}
