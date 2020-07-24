//
//  Goal.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Goal)
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
 Describes the intended objective(s) for a patient, group or organization.
 
 Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an
 activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
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
	
	/// Indicates whether the goal has been reached and is still considered relevant.
	public var status: FHIRPrimitive<GoalStatus>
	
	/// E.g. Treatment, dietary, behavioral, etc.
	public var category: [CodeableConcept]?
	
	/// high-priority | medium-priority | low-priority
	public var priority: CodeableConcept?
	
	/// Code or text describing goal
	public var description_fhir: CodeableConcept
	
	/// Who this goal is intended for
	public var subject: Reference?
	
	/// When goal pursuit begins
	/// One of `start[x]`
	public var start: StartX?
	
	/// Target outcome for the goal
	public var target: GoalTarget?
	
	/// When goal status took effect
	public var statusDate: FHIRPrimitive<FHIRDate>?
	
	/// Reason for current status
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Who's responsible for creating Goal?
	public var expressedBy: Reference?
	
	/// Issues addressed by this goal
	public var addresses: [Reference]?
	
	/// Comments about the goal
	public var note: [Annotation]?
	
	/// What result was achieved regarding the goal?
	public var outcomeCode: [CodeableConcept]?
	
	/// Observation that resulted from goal
	public var outcomeReference: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: CodeableConcept, status: FHIRPrimitive<GoalStatus>) {
		self.description_fhir = description_fhir
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							addresses: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: CodeableConcept,
							expressedBy: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							outcomeCode: [CodeableConcept]? = nil,
							outcomeReference: [Reference]? = nil,
							priority: CodeableConcept? = nil,
							start: StartX? = nil,
							status: FHIRPrimitive<GoalStatus>,
							statusDate: FHIRPrimitive<FHIRDate>? = nil,
							statusReason: FHIRPrimitive<FHIRString>? = nil,
							subject: Reference? = nil,
							target: GoalTarget? = nil,
							text: Narrative? = nil)
	{
		self.init(description_fhir: description_fhir, status: status)
		self.addresses = addresses
		self.category = category
		self.contained = contained
		self.expressedBy = expressedBy
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.outcomeCode = outcomeCode
		self.outcomeReference = outcomeReference
		self.priority = priority
		self.start = start
		self.statusDate = statusDate
		self.statusReason = statusReason
		self.subject = subject
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case addresses
		case category
		case description_fhir = "description"
		case expressedBy
		case identifier
		case note
		case outcomeCode
		case outcomeReference
		case priority
		case startCodeableConcept
		case startDate; case _startDate
		case status; case _status
		case statusDate; case _statusDate
		case statusReason; case _statusReason
		case subject
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.description_fhir = try CodeableConcept(from: _container, forKey: .description_fhir)
		self.expressedBy = try Reference(from: _container, forKeyIfPresent: .expressedBy)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcomeCode = try [CodeableConcept](from: _container, forKeyIfPresent: .outcomeCode)
		self.outcomeReference = try [Reference](from: _container, forKeyIfPresent: .outcomeReference)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
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
		self.status = try FHIRPrimitive<GoalStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.target = try GoalTarget(from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try addresses?.encode(on: &_container, forKey: .addresses)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir.encode(on: &_container, forKey: .description_fhir)
		try expressedBy?.encode(on: &_container, forKey: .expressedBy)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try note?.encode(on: &_container, forKey: .note)
		try outcomeCode?.encode(on: &_container, forKey: .outcomeCode)
		try outcomeReference?.encode(on: &_container, forKey: .outcomeReference)
		try priority?.encode(on: &_container, forKey: .priority)
		if let _enum = start {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .startCodeableConcept)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
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
		return addresses == _other.addresses
		    && category == _other.category
		    && description_fhir == _other.description_fhir
		    && expressedBy == _other.expressedBy
		    && identifier == _other.identifier
		    && note == _other.note
		    && outcomeCode == _other.outcomeCode
		    && outcomeReference == _other.outcomeReference
		    && priority == _other.priority
		    && start == _other.start
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(addresses)
		hasher.combine(category)
		hasher.combine(description_fhir)
		hasher.combine(expressedBy)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(outcomeCode)
		hasher.combine(outcomeReference)
		hasher.combine(priority)
		hasher.combine(start)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(target)
	}
}

/**
 Target outcome for the goal.
 
 Indicates what should be done by when.
 */
open class GoalTarget: BackboneElement {
	
	/// All possible types for "detail[x]"
	public enum DetailX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
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
							modifierExtension: [Extension]? = nil)
	{
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
		case detailCodeableConcept
		case detailQuantity
		case detailRange
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
