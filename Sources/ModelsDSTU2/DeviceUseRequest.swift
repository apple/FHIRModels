//
//  DeviceUseRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest)
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
 A request for a patient to use or be given a medical device.
 
 Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
 assistive device, such as a walker.
 */
public struct DeviceUseRequest: DomainResource {
	
	public static let resourceType: ResourceType = .deviceUseRequest
	
	/// All possible types for "bodySite[x]"
	public enum BodySiteX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Target body site
	/// One of `bodySite[x]`
	public var bodySite: BodySiteX?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Device requested
	public var device: Reference
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Request identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Reason for request
	public var indication: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Notes or comments
	public var notes: [FHIRPrimitive<FHIRString>]?
	
	/// When ordered
	public var orderedOn: FHIRPrimitive<DateTime>?
	
	/// Characterizes how quickly the  use of device must be initiated. Includes concepts such as stat, urgent, routine.
	/// Restricted to: ['routine', 'urgent', 'stat', 'asap']
	public var priority: FHIRPrimitive<DeviceUseRequestPriority>?
	
	/// PRN
	public var prnReason: [CodeableConcept]?
	
	/// When recorded
	public var recordedOn: FHIRPrimitive<DateTime>?
	
	/// The status of the request.
	/// Restricted to: ['proposed', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'completed',
	/// 'suspended', 'rejected', 'aborted']
	public var status: FHIRPrimitive<DeviceUseRequestStatus>?
	
	/// Focus of request
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Schedule for use
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Designated initializer
	public init(
		bodySite: BodySiteX? = nil,
		contained: [ResourceProxy]? = nil,
		device: Reference,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		indication: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		notes: [FHIRPrimitive<FHIRString>]? = nil,
		orderedOn: FHIRPrimitive<DateTime>? = nil,
		priority: FHIRPrimitive<DeviceUseRequestPriority>? = nil,
		prnReason: [CodeableConcept]? = nil,
		recordedOn: FHIRPrimitive<DateTime>? = nil,
		status: FHIRPrimitive<DeviceUseRequestStatus>? = nil,
		subject: Reference,
		text: Narrative? = nil,
		timing: TimingX? = nil
	) {
		self.bodySite = bodySite
		self.contained = contained
		self.device = device
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.indication = indication
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notes = notes
		self.orderedOn = orderedOn
		self.priority = priority
		self.prnReason = prnReason
		self.recordedOn = recordedOn
		self.status = status
		self.subject = subject
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case bodySiteCodeableConcept
		case bodySiteReference
		case contained
		case device
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case indication
		case language; case _language
		case meta
		case modifierExtension
		case notes; case _notes
		case orderedOn; case _orderedOn
		case priority; case _priority
		case prnReason
		case recordedOn; case _recordedOn
		case status; case _status
		case subject
		case text
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingTiming
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try Self._decodeBodySite(from: _container)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.device = try Reference(from: _container, forKey: .device)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.indication = try [CodeableConcept](from: _container, forKeyIfPresent: .indication)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notes = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		self.orderedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .orderedOn, auxiliaryKey: ._orderedOn)
		self.priority = try FHIRPrimitive<DeviceUseRequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.prnReason = try [CodeableConcept](from: _container, forKeyIfPresent: .prnReason)
		self.recordedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedOn, auxiliaryKey: ._recordedOn)
		self.status = try FHIRPrimitive<DeviceUseRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timing = try Self._decodeTiming(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		if let _enum = bodySite {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .bodySiteCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .bodySiteReference)
		}
		}
		try contained?.encode(on: &_container, forKey: .contained)
		try device.encode(on: &_container, forKey: .device)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try indication?.encode(on: &_container, forKey: .indication)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		try orderedOn?.encode(on: &_container, forKey: .orderedOn, auxiliaryKey: ._orderedOn)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try prnReason?.encode(on: &_container, forKey: .prnReason)
		try recordedOn?.encode(on: &_container, forKey: .recordedOn, auxiliaryKey: ._recordedOn)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		if let _enum = timing {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timingPeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .timingTiming)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeBodySite(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> BodySiteX? {
		var _t_bodySite: BodySiteX? = nil
		if let bodySiteCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .bodySiteCodeableConcept) {
			_t_bodySite = .codeableConcept(bodySiteCodeableConcept)
		}
		if let bodySiteReference = try Reference(from: _container, forKeyIfPresent: .bodySiteReference) {
			if _t_bodySite != nil {
				throw DecodingError.dataCorruptedError(forKey: .bodySiteReference, in: _container, debugDescription: "More than one value provided for \"bodySite\"")
			}
			_t_bodySite = .reference(bodySiteReference)
		}
		return _t_bodySite
	}
	
	private static func _decodeTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimingX? {
		var _t_timing: TimingX? = nil
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			_t_timing = .dateTime(timingDateTime)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		return _t_timing
	}
}
