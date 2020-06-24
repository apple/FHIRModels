//
//  DeviceUseStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement)
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
 A record of a device being used by a patient where the record is the result of a report from the patient or another
 clinician.
 */
open class DeviceUseStatement: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceUseStatement }
	
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
	
	/// None
	public var whenUsed: Period?
	
	/// None
	public var device: Reference
	
	/// None
	public var identifier: [Identifier]?
	
	/// None
	public var indication: [CodeableConcept]?
	
	/// None
	public var notes: [FHIRPrimitive<FHIRString>]?
	
	/// None
	public var recordedOn: FHIRPrimitive<DateTime>?
	
	/// None
	public var subject: Reference
	
	/// 
	/// One of `timing[x]`
	public var timing: TimingX?
	
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
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							indication: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							notes: [FHIRPrimitive<FHIRString>]? = nil,
							recordedOn: FHIRPrimitive<DateTime>? = nil,
							subject: Reference,
							text: Narrative? = nil,
							timing: TimingX? = nil,
							whenUsed: Period? = nil)
	{
		self.init(device: device, subject: subject)
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
		self.notes = notes
		self.recordedOn = recordedOn
		self.text = text
		self.timing = timing
		self.whenUsed = whenUsed
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySiteCodeableConcept
		case bodySiteReference
		case device
		case identifier
		case indication
		case notes; case _notes
		case recordedOn; case _recordedOn
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
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try [CodeableConcept](from: _container, forKeyIfPresent: .indication)
		self.notes = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		self.recordedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedOn, auxiliaryKey: ._recordedOn)
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
		if let _enum = bodySite {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .bodySiteCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .bodySiteReference)
			}
		}
		try device.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indication?.encode(on: &_container, forKey: .indication)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		try recordedOn?.encode(on: &_container, forKey: .recordedOn, auxiliaryKey: ._recordedOn)
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
		    && notes == _other.notes
		    && recordedOn == _other.recordedOn
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
		hasher.combine(notes)
		hasher.combine(recordedOn)
		hasher.combine(subject)
		hasher.combine(timing)
		hasher.combine(whenUsed)
	}
}
