//
//  ProcedureRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest)
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
 A request for a procedure to be performed.
 
 A request for a procedure to be performed. May be a proposal or an order.
 */
open class ProcedureRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .procedureRequest }
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "scheduled[x]"
	public enum ScheduledX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Unique identifier for the request
	public var identifier: [Identifier]?
	
	/// Who the procedure should be done to
	public var subject: Reference
	
	/// What procedure to perform
	public var code: CodeableConcept
	
	/// What part of body to perform on
	public var bodySite: [CodeableConcept]?
	
	/// Why procedure should occur
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// When procedure should occur
	/// One of `scheduled[x]`
	public var scheduled: ScheduledX?
	
	/// Encounter request created during
	public var encounter: Reference?
	
	/// Who should perform the procedure
	public var performer: Reference?
	
	/// The status of the order.
	/// Restricted to: ['proposed', 'draft', 'requested', 'received', 'accepted', 'in-progress', 'completed',
	/// 'suspended', 'rejected', 'aborted']
	public var status: FHIRPrimitive<ProcedureRequestStatus>?
	
	/// Additional information about desired procedure
	public var notes: [Annotation]?
	
	/// Preconditions for procedure
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// When request was created
	public var orderedOn: FHIRPrimitive<DateTime>?
	
	/// Who made request
	public var orderer: Reference?
	
	/// The clinical priority associated with this order.
	/// Restricted to: ['routine', 'urgent', 'stat', 'asap']
	public var priority: FHIRPrimitive<ProcedureRequestPriority>?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, subject: Reference) {
		self.code = code
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							asNeeded: AsNeededX? = nil,
							bodySite: [CodeableConcept]? = nil,
							code: CodeableConcept,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							notes: [Annotation]? = nil,
							orderedOn: FHIRPrimitive<DateTime>? = nil,
							orderer: Reference? = nil,
							performer: Reference? = nil,
							priority: FHIRPrimitive<ProcedureRequestPriority>? = nil,
							reason: ReasonX? = nil,
							scheduled: ScheduledX? = nil,
							status: FHIRPrimitive<ProcedureRequestStatus>? = nil,
							subject: Reference,
							text: Narrative? = nil)
	{
		self.init(code: code, subject: subject)
		self.asNeeded = asNeeded
		self.bodySite = bodySite
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notes = notes
		self.orderedOn = orderedOn
		self.orderer = orderer
		self.performer = performer
		self.priority = priority
		self.reason = reason
		self.scheduled = scheduled
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case bodySite
		case code
		case encounter
		case identifier
		case notes
		case orderedOn; case _orderedOn
		case orderer
		case performer
		case priority; case _priority
		case reasonCodeableConcept
		case reasonReference
		case scheduledDateTime; case _scheduledDateTime
		case scheduledPeriod
		case scheduledTiming
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededBoolean, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		self.asNeeded = _t_asNeeded
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.notes = try [Annotation](from: _container, forKeyIfPresent: .notes)
		self.orderedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .orderedOn, auxiliaryKey: ._orderedOn)
		self.orderer = try Reference(from: _container, forKeyIfPresent: .orderer)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<ProcedureRequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		var _t_scheduled: ScheduledX? = nil
		if let scheduledDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .scheduledDateTime, auxiliaryKey: ._scheduledDateTime) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledDateTime, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .dateTime(scheduledDateTime)
		}
		if let scheduledPeriod = try Period(from: _container, forKeyIfPresent: .scheduledPeriod) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledPeriod, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .period(scheduledPeriod)
		}
		if let scheduledTiming = try Timing(from: _container, forKeyIfPresent: .scheduledTiming) {
			if _t_scheduled != nil {
				throw DecodingError.dataCorruptedError(forKey: .scheduledTiming, in: _container, debugDescription: "More than one value provided for \"scheduled\"")
			}
			_t_scheduled = .timing(scheduledTiming)
		}
		self.scheduled = _t_scheduled
		self.status = try FHIRPrimitive<ProcedureRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = asNeeded {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
			}
		}
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try code.encode(on: &_container, forKey: .code)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try notes?.encode(on: &_container, forKey: .notes)
		try orderedOn?.encode(on: &_container, forKey: .orderedOn, auxiliaryKey: ._orderedOn)
		try orderer?.encode(on: &_container, forKey: .orderer)
		try performer?.encode(on: &_container, forKey: .performer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		if let _enum = reason {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reasonReference)
			}
		}
		if let _enum = scheduled {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .scheduledDateTime, auxiliaryKey: ._scheduledDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .scheduledPeriod)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .scheduledTiming)
			}
		}
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcedureRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && bodySite == _other.bodySite
		    && code == _other.code
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && notes == _other.notes
		    && orderedOn == _other.orderedOn
		    && orderer == _other.orderer
		    && performer == _other.performer
		    && priority == _other.priority
		    && reason == _other.reason
		    && scheduled == _other.scheduled
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(bodySite)
		hasher.combine(code)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(notes)
		hasher.combine(orderedOn)
		hasher.combine(orderer)
		hasher.combine(performer)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(scheduled)
		hasher.combine(status)
		hasher.combine(subject)
	}
}
