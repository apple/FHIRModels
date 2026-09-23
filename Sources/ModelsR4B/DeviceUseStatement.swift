//
//  DeviceUseStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement)
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
 Record of use of a device.
 
 A record of a device being used by a patient where the record is the result of a report from the patient or another
 clinician.
 */
public struct DeviceUseStatement: DomainResource {
	
	public static let resourceType: ResourceType = .deviceUseStatement
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Target body site
	public var bodySite: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Supporting information
	public var derivedFrom: [Reference]?
	
	/// Reference to device used
	public var device: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier for this record
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Addition details (comments, instructions)
	public var note: [Annotation]?
	
	/// Why device was used
	public var reasonCode: [CodeableConcept]?
	
	/// Why was DeviceUseStatement performed?
	public var reasonReference: [Reference]?
	
	/// When statement was recorded
	public var recordedOn: FHIRPrimitive<DateTime>?
	
	/// Who made the statement
	public var source: Reference?
	
	/// A code representing the patient or other source's judgment about the state of the device used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: FHIRPrimitive<DeviceUseStatementStatus>
	
	/// Patient using device
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// How often  the device was used
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		bodySite: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		derivedFrom: [Reference]? = nil,
		device: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		recordedOn: FHIRPrimitive<DateTime>? = nil,
		source: Reference? = nil,
		status: FHIRPrimitive<DeviceUseStatementStatus>,
		subject: Reference,
		text: Narrative? = nil,
		timing: TimingX? = nil
	) {
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recordedOn = recordedOn
		self.source = source
		self.status = status
		self.subject = subject
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case bodySite
		case contained
		case derivedFrom
		case device
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case reasonCode
		case reasonReference
		case recordedOn; case _recordedOn
		case source
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
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.device = try Reference(from: _container, forKey: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recordedOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedOn, auxiliaryKey: ._recordedOn)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<DeviceUseStatementStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try contained?.encode(on: &_container, forKey: .contained)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try device.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recordedOn?.encode(on: &_container, forKey: .recordedOn, auxiliaryKey: ._recordedOn)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
