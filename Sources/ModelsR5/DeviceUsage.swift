//
//  DeviceUsage.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DeviceUsage)
//  Copyright 2023 Apple Inc.
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
 
 A record of a device being used by a patient where the record is the result of a report from the patient or a
 clinician.
 */
open class DeviceUsage: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceUsage }
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External identifier for this record
	public var identifier: [Identifier]?
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// A code representing the patient or other source's judgment about the state of the device used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: FHIRPrimitive<DeviceUsageStatus>
	
	/// The category of the statement - classifying how the statement is made
	public var category: [CodeableConcept]?
	
	/// Patient using device
	public var patient: Reference
	
	/// Supporting information
	public var derivedFrom: [Reference]?
	
	/// The encounter or episode of care that establishes the context for this device use statement
	public var context: Reference?
	
	/// How often  the device was used
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// When the statement was made (and recorded)
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// The status of the device usage, for example always, sometimes, never. This is not the same as the status of the
	/// statement
	public var usageStatus: CodeableConcept?
	
	/// The reason for asserting the usage status - for example forgot, lost, stolen, broken
	public var usageReason: [CodeableConcept]?
	
	/// How device is being used
	public var adherence: DeviceUsageAdherence?
	
	/// Who made the statement
	public var informationSource: Reference?
	
	/// Code or Reference to device used
	public var device: CodeableReference
	
	/// Why device was used
	public var reason: [CodeableReference]?
	
	/// Target body site
	public var bodySite: CodeableReference?
	
	/// Addition details (comments, instructions)
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(device: CodeableReference, patient: Reference, status: FHIRPrimitive<DeviceUsageStatus>) {
		self.device = device
		self.patient = patient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adherence: DeviceUsageAdherence? = nil,
		basedOn: [Reference]? = nil,
		bodySite: CodeableReference? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		dateAsserted: FHIRPrimitive<DateTime>? = nil,
		derivedFrom: [Reference]? = nil,
		device: CodeableReference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		informationSource: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		patient: Reference,
		reason: [CodeableReference]? = nil,
		status: FHIRPrimitive<DeviceUsageStatus>,
		text: Narrative? = nil,
		timing: TimingX? = nil,
		usageReason: [CodeableConcept]? = nil,
		usageStatus: CodeableConcept? = nil
	) {
		self.init(device: device, patient: patient, status: status)
		self.adherence = adherence
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.contained = contained
		self.context = context
		self.dateAsserted = dateAsserted
		self.derivedFrom = derivedFrom
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.reason = reason
		self.text = text
		self.timing = timing
		self.usageReason = usageReason
		self.usageStatus = usageStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adherence
		case basedOn
		case bodySite
		case category
		case context
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case device
		case identifier
		case informationSource
		case note
		case patient
		case reason
		case status; case _status
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingTiming
		case usageReason
		case usageStatus
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adherence = try DeviceUsageAdherence(from: _container, forKeyIfPresent: .adherence)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try CodeableReference(from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.device = try CodeableReference(from: _container, forKey: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try Reference(from: _container, forKeyIfPresent: .informationSource)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.status = try FHIRPrimitive<DeviceUsageStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		self.usageReason = try [CodeableConcept](from: _container, forKeyIfPresent: .usageReason)
		self.usageStatus = try CodeableConcept(from: _container, forKeyIfPresent: .usageStatus)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adherence?.encode(on: &_container, forKey: .adherence)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
		try dateAsserted?.encode(on: &_container, forKey: .dateAsserted, auxiliaryKey: ._dateAsserted)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try device.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try reason?.encode(on: &_container, forKey: .reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		try usageReason?.encode(on: &_container, forKey: .usageReason)
		try usageStatus?.encode(on: &_container, forKey: .usageStatus)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceUsage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return adherence == _other.adherence
		    && basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && context == _other.context
		    && dateAsserted == _other.dateAsserted
		    && derivedFrom == _other.derivedFrom
		    && device == _other.device
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && note == _other.note
		    && patient == _other.patient
		    && reason == _other.reason
		    && status == _other.status
		    && timing == _other.timing
		    && usageReason == _other.usageReason
		    && usageStatus == _other.usageStatus
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adherence)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(dateAsserted)
		hasher.combine(derivedFrom)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(reason)
		hasher.combine(status)
		hasher.combine(timing)
		hasher.combine(usageReason)
		hasher.combine(usageStatus)
	}
}

/**
 How device is being used.
 
 This indicates how or if the device is being used.
 */
open class DeviceUsageAdherence: BackboneElement {
	
	/// always | never | sometimes
	public var code: CodeableConcept
	
	/// lost | stolen | prescribed | broken | burned | forgot
	public var reason: [CodeableConcept]
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, reason: [CodeableConcept]) {
		self.code = code
		self.reason = reason
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]
	) {
		self.init(code: code, reason: reason)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.reason = try [CodeableConcept](from: _container, forKey: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try reason.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceUsageAdherence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(reason)
	}
}
