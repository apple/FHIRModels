//
//  Goal.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Goal)
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
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case quantity(Quantity)
	}
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// Who this goal is intended for
	public var subject: Reference?
	
	/// When goal pursuit begins
	/// One of `start[x]`
	public var start: StartX?
	
	/// Reach goal on or before
	/// One of `target[x]`
	public var target: TargetX?
	
	/// E.g. Treatment, dietary, behavioral, etc.
	public var category: [CodeableConcept]?
	
	/// What's the desired outcome?
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Indicates whether the goal has been reached and is still considered relevant.
	/// Restricted to: ['proposed', 'planned', 'accepted', 'rejected', 'in-progress', 'achieved', 'sustaining', 'on-
	/// hold', 'cancelled']
	public var status: FHIRPrimitive<GoalStatus>
	
	/// When goal status took effect
	public var statusDate: FHIRPrimitive<FHIRDate>?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Who's responsible for creating Goal?
	public var author: Reference?
	
	/// high | medium |low
	public var priority: CodeableConcept?
	
	/// Issues addressed by this goal
	public var addresses: [Reference]?
	
	/// Comments about the goal
	public var note: [Annotation]?
	
	/// What was end result of goal?
	public var outcome: [GoalOutcome]?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<GoalStatus>) {
		self.description_fhir = description_fhir
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							addresses: [Reference]? = nil,
							author: Reference? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							outcome: [GoalOutcome]? = nil,
							priority: CodeableConcept? = nil,
							start: StartX? = nil,
							status: FHIRPrimitive<GoalStatus>,
							statusDate: FHIRPrimitive<FHIRDate>? = nil,
							statusReason: CodeableConcept? = nil,
							subject: Reference? = nil,
							target: TargetX? = nil,
							text: Narrative? = nil)
	{
		self.init(description_fhir: description_fhir, status: status)
		self.addresses = addresses
		self.author = author
		self.category = category
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.outcome = outcome
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
		case author
		case category
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case note
		case outcome
		case priority
		case startCodeableConcept
		case startDate; case _startDate
		case status; case _status
		case statusDate; case _statusDate
		case statusReason
		case subject
		case targetDate; case _targetDate
		case targetQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcome = try [GoalOutcome](from: _container, forKeyIfPresent: .outcome)
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
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		var _t_target: TargetX? = nil
		if let targetDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .targetDate, auxiliaryKey: ._targetDate) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetDate, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .date(targetDate)
		}
		if let targetQuantity = try Quantity(from: _container, forKeyIfPresent: .targetQuantity) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetQuantity, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .quantity(targetQuantity)
		}
		self.target = _t_target
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try addresses?.encode(on: &_container, forKey: .addresses)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try note?.encode(on: &_container, forKey: .note)
		try outcome?.encode(on: &_container, forKey: .outcome)
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
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		if let _enum = target {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .targetDate, auxiliaryKey: ._targetDate)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .targetQuantity)
			}
		}
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
		    && author == _other.author
		    && category == _other.category
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && note == _other.note
		    && outcome == _other.outcome
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
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(outcome)
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
 What was end result of goal?.
 
 Identifies the change (or lack of change) at the point where the goal was deepmed to be cancelled or achieved.
 */
open class GoalOutcome: BackboneElement {
	
	/// All possible types for "result[x]"
	public enum ResultX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Code or observation that resulted from goal
	/// One of `result[x]`
	public var result: ResultX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							result: ResultX? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.result = result
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resultCodeableConcept
		case resultReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_result: ResultX? = nil
		if let resultCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .resultCodeableConcept) {
			if _t_result != nil {
				throw DecodingError.dataCorruptedError(forKey: .resultCodeableConcept, in: _container, debugDescription: "More than one value provided for \"result\"")
			}
			_t_result = .codeableConcept(resultCodeableConcept)
		}
		if let resultReference = try Reference(from: _container, forKeyIfPresent: .resultReference) {
			if _t_result != nil {
				throw DecodingError.dataCorruptedError(forKey: .resultReference, in: _container, debugDescription: "More than one value provided for \"result\"")
			}
			_t_result = .reference(resultReference)
		}
		self.result = _t_result
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = result {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .resultCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .resultReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GoalOutcome else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return result == _other.result
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(result)
	}
}
