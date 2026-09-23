//
//  ProcedureRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest)
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
 A request for a procedure to be performed.
 
 A request for a procedure to be performed. May be a proposal or an order.
 */
public struct ProcedureRequest: DomainResource {
	
	public static let resourceType: ResourceType = .procedureRequest
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "scheduled[x]"
	public enum ScheduledX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Preconditions for procedure
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// What part of body to perform on
	public var bodySite: [CodeableConcept]?
	
	/// What procedure to perform
	public var code: CodeableConcept
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter request created during
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for the request
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional information about desired procedure
	public var notes: [Annotation]?
	
	/// When request was created
	public var orderedOn: FHIRPrimitive<DateTime>?
	
	/// Who made request
	public var orderer: Reference?
	
	/// Who should perform the procedure
	public var performer: Reference?
	
	/// The clinical priority associated with this order.
	/// Restricted to: ['routine', 'urgent', 'stat', 'asap']
	public var priority: FHIRPrimitive<ProcedureRequestPriority>?
	
	/// Why procedure should occur
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// When procedure should occur
	/// One of `scheduled[x]`
	public var scheduled: ScheduledX?
	
	/// The status of the order.
	/// Restricted to: ['proposed', 'draft', 'requested', 'received', 'accepted', 'in-progress', 'completed',
	/// 'suspended', 'rejected', 'aborted']
	public var status: FHIRPrimitive<ProcedureRequestStatus>?
	
	/// Who the procedure should be done to
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
		self.asNeeded = asNeeded
		self.bodySite = bodySite
		self.code = code
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
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case bodySite
		case code
		case contained
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notes = try [Annotation](from: _container, forKeyIfPresent: .notes)
		self.orderedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .orderedOn, auxiliaryKey: ._orderedOn)
		self.orderer = try Reference(from: _container, forKeyIfPresent: .orderer)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<ProcedureRequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try Self._decodeReason(from: _container)
		self.scheduled = try Self._decodeScheduled(from: _container)
		self.status = try FHIRPrimitive<ProcedureRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
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
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAsNeeded(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AsNeededX? {
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		return _t_asNeeded
	}
	
	private static func _decodeReason(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReasonX? {
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		return _t_reason
	}
	
	private static func _decodeScheduled(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ScheduledX? {
		var _t_scheduled: ScheduledX? = nil
		if let scheduledDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .scheduledDateTime, auxiliaryKey: ._scheduledDateTime) {
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
		return _t_scheduled
	}
}
