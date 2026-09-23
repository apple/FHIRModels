//
//  Goal.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Goal)
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
 Describes the intended objective(s) for a patient, group or organization.
 
 Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an
 activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
 */
public struct Goal: DomainResource {
	
	public static let resourceType: ResourceType = .goal
	
	/// All possible types for "start[x]"
	public enum StartX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
	}
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case quantity(Quantity)
	}
	
	/// Issues addressed by this goal
	public var addresses: [Reference]?
	
	/// Who's responsible for creating Goal?
	public var author: Reference?
	
	/// E.g. Treatment, dietary, behavioral, etc.
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// What's the desired outcome?
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the goal
	public var note: [Annotation]?
	
	/// What was end result of goal?
	public var outcome: [GoalOutcome]?
	
	/// high | medium |low
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins
	/// One of `start[x]`
	public var start: StartX?
	
	/// Indicates whether the goal has been reached and is still considered relevant.
	/// Restricted to: ['proposed', 'planned', 'accepted', 'rejected', 'in-progress', 'achieved', 'sustaining', 'on-
	/// hold', 'cancelled']
	public var status: FHIRPrimitive<GoalStatus>
	
	/// When goal status took effect
	public var statusDate: FHIRPrimitive<FHIRDate>?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Who this goal is intended for
	public var subject: Reference?
	
	/// Reach goal on or before
	/// One of `target[x]`
	public var target: TargetX?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
		self.addresses = addresses
		self.author = author
		self.category = category
		self.contained = contained
		self.description_fhir = description_fhir
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
		self.status = status
		self.statusDate = statusDate
		self.statusReason = statusReason
		self.subject = subject
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case addresses
		case author
		case category
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcome = try [GoalOutcome](from: _container, forKeyIfPresent: .outcome)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.start = try Self._decodeStart(from: _container)
		self.status = try FHIRPrimitive<GoalStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.target = try Self._decodeTarget(from: _container)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try priority?.encode(on: &_container, forKey: .priority)
		if let _enum = start {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .startCodeableConcept)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
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
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX? {
		var _t_target: TargetX? = nil
		if let targetDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .targetDate, auxiliaryKey: ._targetDate) {
			_t_target = .date(targetDate)
		}
		if let targetQuantity = try Quantity(from: _container, forKeyIfPresent: .targetQuantity) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetQuantity, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .quantity(targetQuantity)
		}
		return _t_target
	}
}

/**
 What was end result of goal?.
 
 Identifies the change (or lack of change) at the point where the goal was deepmed to be cancelled or achieved.
 */
public struct GoalOutcome: BackboneElement {
	
	/// All possible types for "result[x]"
	public enum ResultX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Code or observation that resulted from goal
	/// One of `result[x]`
	public var result: ResultX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		result: ResultX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.result = result
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case resultCodeableConcept
		case resultReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.result = try Self._decodeResult(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = result {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .resultCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .resultReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeResult(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ResultX? {
		var _t_result: ResultX? = nil
		if let resultCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .resultCodeableConcept) {
			_t_result = .codeableConcept(resultCodeableConcept)
		}
		if let resultReference = try Reference(from: _container, forKeyIfPresent: .resultReference) {
			if _t_result != nil {
				throw DecodingError.dataCorruptedError(forKey: .resultReference, in: _container, debugDescription: "More than one value provided for \"result\"")
			}
			_t_result = .reference(resultReference)
		}
		return _t_result
	}
}
