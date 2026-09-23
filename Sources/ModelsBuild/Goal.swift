//
//  Goal.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Goal)
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
 Describes the intended objective(s) for a patient, group, or organizational care.
 
 Describes the intended objective(s) for a patient, group, or organizational care. Examples include a patient's weight
 loss, restoration of an activity of daily living for a patient, obtaining herd immunity via immunization for a group,
 meeting a process improvement objective for an organization, etc.
 */
public struct Goal: DomainResource {
	
	public static let resourceType: ResourceType = .goal
	
	/// All possible types for "start[x]"
	public enum StartX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
	}
	
	/// Individual acceptance of goal
	public var acceptance: [GoalAcceptance]?
	
	/// in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-
	/// attainable
	public var achievementStatus: CodeableConcept?
	
	/// Issues addressed by this goal
	public var addresses: [Reference]?
	
	/// E.g. Treatment, dietary, behavioral, etc
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// After meeting the goal, ongoing activity is needed to sustain the goal objective
	public var continuous: FHIRPrimitive<FHIRBool>?
	
	/// Code or text describing goal
	public var description_fhir: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The state of the goal throughout its lifecycle.
	public var lifecycleStatus: FHIRPrimitive<GoalLifecycleStatus>
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the goal
	public var note: [Annotation]?
	
	/// high-priority | medium-priority | low-priority
	public var priority: CodeableConcept?
	
	/// Who recorded the goal
	public var recorder: Reference?
	
	/// Who's responsible for creating Goal?
	public var source: Reference?
	
	/// When goal pursuit begins
	/// One of `start[x]`
	public var start: StartX?
	
	/// When goal achievment status took effect
	public var statusDate: FHIRPrimitive<FHIRDate>?
	
	/// Reason for current lifecycle status
	public var statusReason: [CodeableConcept]?
	
	/// Who this goal is intended for
	public var subject: Reference
	
	/// Target outcome for the goal
	public var target: [GoalTarget]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		self.acceptance = acceptance
		self.achievementStatus = achievementStatus
		self.addresses = addresses
		self.category = category
		self.contained = contained
		self.continuous = continuous
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lifecycleStatus = lifecycleStatus
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.priority = priority
		self.recorder = recorder
		self.source = source
		self.start = start
		self.statusDate = statusDate
		self.statusReason = statusReason
		self.subject = subject
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case acceptance
		case achievementStatus
		case addresses
		case category
		case contained
		case continuous; case _continuous
		case description_fhir = "description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lifecycleStatus; case _lifecycleStatus
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.acceptance = try [GoalAcceptance](from: _container, forKeyIfPresent: .acceptance)
		self.achievementStatus = try CodeableConcept(from: _container, forKeyIfPresent: .achievementStatus)
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.continuous = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .continuous, auxiliaryKey: ._continuous)
		self.description_fhir = try CodeableConcept(from: _container, forKey: .description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lifecycleStatus = try FHIRPrimitive<GoalLifecycleStatus>(from: _container, forKey: .lifecycleStatus, auxiliaryKey: ._lifecycleStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.start = try Self._decodeStart(from: _container)
		self.statusDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.target = try [GoalTarget](from: _container, forKeyIfPresent: .target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try acceptance?.encode(on: &_container, forKey: .acceptance)
		try achievementStatus?.encode(on: &_container, forKey: .achievementStatus)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try continuous?.encode(on: &_container, forKey: .continuous, auxiliaryKey: ._continuous)
		try description_fhir.encode(on: &_container, forKey: .description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lifecycleStatus.encode(on: &_container, forKey: .lifecycleStatus, auxiliaryKey: ._lifecycleStatus)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try priority?.encode(on: &_container, forKey: .priority)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try source?.encode(on: &_container, forKey: .source)
		if let _enum = start {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .startCodeableConcept)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		}
		}
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try target?.encode(on: &_container, forKey: .target)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeStart(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StartX? {
		var _t_start: StartX? = nil
		if let startCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .startCodeableConcept) {
			_t_start = .codeableConcept(startCodeableConcept)
		}
		if let startDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate) {
			if _t_start != nil {
				throw DecodingError.dataCorruptedError(forKey: .startDate, in: _container, debugDescription: "More than one value provided for \"start\"")
			}
			_t_start = .date(startDate)
		}
		return _t_start
	}
}

/**
 Individual acceptance of goal.
 
 Information about the acceptance and relative priority assigned to the goal by the patient, practitioners and other
 stakeholders.
 */
public struct GoalAcceptance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Individual or organization whose acceptance is reflected
	public var participant: Reference
	
	/// Priority of goal for individual
	public var priority: CodeableConcept?
	
	/// Indicates whether the specified individual has accepted the goal or not.
	public var status: FHIRPrimitive<GoalAcceptStatus>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		participant: Reference,
		priority: CodeableConcept? = nil,
		status: FHIRPrimitive<GoalAcceptStatus>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.participant = participant
		self.priority = priority
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case participant
		case priority
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
		self.participant = try Reference(from: _container, forKey: .participant)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.status = try FHIRPrimitive<GoalAcceptStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try participant.encode(on: &_container, forKey: .participant)
		try priority?.encode(on: &_container, forKey: .priority)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}

/**
 Target outcome for the goal.
 
 Indicates what should be done by when.
 */
public struct GoalTarget: BackboneElement {
	
	/// All possible types for "detail[x]"
	public enum DetailX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "due[x]"
	public enum DueX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case duration(Duration)
	}
	
	/// The target value to be achieved
	/// One of `detail[x]`
	public var detail: DetailX?
	
	/// Reach goal on or before
	/// One of `due[x]`
	public var due: DueX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The parameter whose value is being tracked
	public var measure: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		detail: DetailX? = nil,
		due: DueX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measure: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case measure
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.detail = try Self._decodeDetail(from: _container)
		self.due = try Self._decodeDue(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measure = try CodeableConcept(from: _container, forKeyIfPresent: .measure)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = detail {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .detailBoolean, auxiliaryKey: ._detailBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .detailCodeableConcept)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .detailInteger, auxiliaryKey: ._detailInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .detailQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .detailRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .detailRatio)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .detailString, auxiliaryKey: ._detailString)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measure?.encode(on: &_container, forKey: .measure)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDetail(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DetailX? {
		var _t_detail: DetailX? = nil
		if let detailBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .detailBoolean, auxiliaryKey: ._detailBoolean) {
			_t_detail = .boolean(detailBoolean)
		}
		if let detailCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .detailCodeableConcept) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailCodeableConcept, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .codeableConcept(detailCodeableConcept)
		}
		if let detailInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .detailInteger, auxiliaryKey: ._detailInteger) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailInteger, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .integer(detailInteger)
		}
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
		if let detailRatio = try Ratio(from: _container, forKeyIfPresent: .detailRatio) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailRatio, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .ratio(detailRatio)
		}
		if let detailString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detailString, auxiliaryKey: ._detailString) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailString, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .string(detailString)
		}
		return _t_detail
	}
	
	private static func _decodeDue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DueX? {
		var _t_due: DueX? = nil
		if let dueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .dueDate, auxiliaryKey: ._dueDate) {
			_t_due = .date(dueDate)
		}
		if let dueDuration = try Duration(from: _container, forKeyIfPresent: .dueDuration) {
			if _t_due != nil {
				throw DecodingError.dataCorruptedError(forKey: .dueDuration, in: _container, debugDescription: "More than one value provided for \"due\"")
			}
			_t_due = .duration(dueDuration)
		}
		return _t_due
	}
}
