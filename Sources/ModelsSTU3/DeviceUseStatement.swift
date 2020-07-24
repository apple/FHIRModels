//
//  DeviceUseStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement)
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
 Record of use of a device.
 
 A record of a device being used by a patient where the record is the result of a report from the patient or another
 clinician.
 */
open class DeviceUseStatement: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceUseStatement }
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External identifier for this record
	public var identifier: [Identifier]?
	
	/// A code representing the patient or other source's judgment about the state of the device used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: FHIRPrimitive<DeviceUseStatementStatus>
	
	/// Patient using device
	public var subject: Reference
	
	/// Period device was used
	public var whenUsed: Period?
	
	/// How often  the device was used
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// When statement was recorded
	public var recordedOn: FHIRPrimitive<DateTime>?
	
	/// Who made the statement
	public var source: Reference?
	
	/// Reference to device used
	public var device: Reference
	
	/// Why device was used
	public var indication: [CodeableConcept]?
	
	/// Target body site
	public var bodySite: CodeableConcept?
	
	/// Addition details (comments, instructions)
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(device: Reference, status: FHIRPrimitive<DeviceUseStatementStatus>, subject: Reference) {
		self.device = device
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							device: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							indication: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							recordedOn: FHIRPrimitive<DateTime>? = nil,
							source: Reference? = nil,
							status: FHIRPrimitive<DeviceUseStatementStatus>,
							subject: Reference,
							text: Narrative? = nil,
							timing: TimingX? = nil,
							whenUsed: Period? = nil)
	{
		self.init(device: device, status: status, subject: subject)
		self.bodySite = bodySite
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.indication = indication
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.recordedOn = recordedOn
		self.source = source
		self.text = text
		self.timing = timing
		self.whenUsed = whenUsed
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case device
		case identifier
		case indication
		case note
		case recordedOn; case _recordedOn
		case source
		case status; case _status
		case subject
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingTiming
		case whenUsed
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.device = try Reference(from: _container, forKey: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try [CodeableConcept](from: _container, forKeyIfPresent: .indication)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.recordedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedOn, auxiliaryKey: ._recordedOn)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<DeviceUseStatementStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		self.whenUsed = try Period(from: _container, forKeyIfPresent: .whenUsed)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try device.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indication?.encode(on: &_container, forKey: .indication)
		try note?.encode(on: &_container, forKey: .note)
		try recordedOn?.encode(on: &_container, forKey: .recordedOn, auxiliaryKey: ._recordedOn)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		try whenUsed?.encode(on: &_container, forKey: .whenUsed)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceUseStatement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && device == _other.device
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && note == _other.note
		    && recordedOn == _other.recordedOn
		    && source == _other.source
		    && status == _other.status
		    && subject == _other.subject
		    && timing == _other.timing
		    && whenUsed == _other.whenUsed
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(note)
		hasher.combine(recordedOn)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(timing)
		hasher.combine(whenUsed)
	}
}
