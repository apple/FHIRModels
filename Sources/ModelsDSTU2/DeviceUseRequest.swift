//
//  DeviceUseRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest)
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
 A request for a patient to use or be given a medical device.
 
 Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
 assistive device, such as a walker.
 */
open class DeviceUseRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceUseRequest }
	
	/// All possible types for "bodySite[x]"
	public enum BodySiteX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Target body site
	/// One of `bodySite[x]`
	public var bodySite: BodySiteX?
	
	/// The status of the request.
	/// Restricted to: ['proposed', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'completed',
	/// 'suspended', 'rejected', 'aborted']
	public var status: FHIRPrimitive<DeviceUseRequestStatus>?
	
	/// Device requested
	public var device: Reference
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Request identifier
	public var identifier: [Identifier]?
	
	/// Reason for request
	public var indication: [CodeableConcept]?
	
	/// Notes or comments
	public var notes: [FHIRPrimitive<FHIRString>]?
	
	/// PRN
	public var prnReason: [CodeableConcept]?
	
	/// When ordered
	public var orderedOn: FHIRPrimitive<DateTime>?
	
	/// When recorded
	public var recordedOn: FHIRPrimitive<DateTime>?
	
	/// Focus of request
	public var subject: Reference
	
	/// Schedule for use
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Characterizes how quickly the  use of device must be initiated. Includes concepts such as stat, urgent, routine.
	/// Restricted to: ['routine', 'urgent', 'stat', 'asap']
	public var priority: FHIRPrimitive<DeviceUseRequestPriority>?
	
	/// Designated initializer taking all required properties
	public init(device: Reference, subject: Reference) {
		self.device = device
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							timing: TimingX? = nil)
	{
		self.init(device: device, subject: subject)
		self.bodySite = bodySite
		self.contained = contained
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
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySiteCodeableConcept
		case bodySiteReference
		case device
		case encounter
		case identifier
		case indication
		case notes; case _notes
		case orderedOn; case _orderedOn
		case priority; case _priority
		case prnReason
		case recordedOn; case _recordedOn
		case status; case _status
		case subject
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingTiming
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_bodySite: BodySiteX? = nil
		if let bodySiteCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .bodySiteCodeableConcept) {
			if _t_bodySite != nil {
				throw DecodingError.dataCorruptedError(forKey: .bodySiteCodeableConcept, in: _container, debugDescription: "More than one value provided for \"bodySite\"")
			}
			_t_bodySite = .codeableConcept(bodySiteCodeableConcept)
		}
		if let bodySiteReference = try Reference(from: _container, forKeyIfPresent: .bodySiteReference) {
			if _t_bodySite != nil {
				throw DecodingError.dataCorruptedError(forKey: .bodySiteReference, in: _container, debugDescription: "More than one value provided for \"bodySite\"")
			}
			_t_bodySite = .reference(bodySiteReference)
		}
		self.bodySite = _t_bodySite
		self.device = try Reference(from: _container, forKey: .device)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try [CodeableConcept](from: _container, forKeyIfPresent: .indication)
		self.notes = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		self.orderedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .orderedOn, auxiliaryKey: ._orderedOn)
		self.priority = try FHIRPrimitive<DeviceUseRequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.prnReason = try [CodeableConcept](from: _container, forKeyIfPresent: .prnReason)
		self.recordedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedOn, auxiliaryKey: ._recordedOn)
		self.status = try FHIRPrimitive<DeviceUseRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		var _t_timing: TimingX? = nil
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .dateTime(timingDateTime)
		}
		self.timing = _t_timing
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = bodySite {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .bodySiteCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .bodySiteReference)
			}
		}
		try device.encode(on: &_container, forKey: .device)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indication?.encode(on: &_container, forKey: .indication)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		try orderedOn?.encode(on: &_container, forKey: .orderedOn, auxiliaryKey: ._orderedOn)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try prnReason?.encode(on: &_container, forKey: .prnReason)
		try recordedOn?.encode(on: &_container, forKey: .recordedOn, auxiliaryKey: ._recordedOn)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		if let _enum = timing {
			switch _enum {
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .timingTiming)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .timingPeriod)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceUseRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && device == _other.device
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && notes == _other.notes
		    && orderedOn == _other.orderedOn
		    && priority == _other.priority
		    && prnReason == _other.prnReason
		    && recordedOn == _other.recordedOn
		    && status == _other.status
		    && subject == _other.subject
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(device)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(notes)
		hasher.combine(orderedOn)
		hasher.combine(priority)
		hasher.combine(prnReason)
		hasher.combine(recordedOn)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(timing)
	}
}
