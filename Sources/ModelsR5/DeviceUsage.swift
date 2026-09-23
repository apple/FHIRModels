//
//  DeviceUsage.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DeviceUsage)
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
 
 A record of a device being used by a patient where the record is the result of a report from the patient or a
 clinician.
 */
public struct DeviceUsage: DomainResource {
	
	public static let resourceType: ResourceType = .deviceUsage
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// How device is being used
	public var adherence: DeviceUsageAdherence?
	
	/// Fulfills plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Target body site
	public var bodySite: CodeableReference?
	
	/// The category of the statement - classifying how the statement is made
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The encounter or episode of care that establishes the context for this device use statement
	public var context: Reference?
	
	/// When the statement was made (and recorded)
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Supporting information
	public var derivedFrom: [Reference]?
	
	/// Code or Reference to device used
	public var device: CodeableReference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier for this record
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Who made the statement
	public var informationSource: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Addition details (comments, instructions)
	public var note: [Annotation]?
	
	/// Patient using device
	public var patient: Reference
	
	/// Why device was used
	public var reason: [CodeableReference]?
	
	/// A code representing the patient or other source's judgment about the state of the device used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: FHIRPrimitive<DeviceUsageStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// How often  the device was used
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// The reason for asserting the usage status - for example forgot, lost, stolen, broken
	public var usageReason: [CodeableConcept]?
	
	/// The status of the device usage, for example always, sometimes, never. This is not the same as the status of the
	/// statement
	public var usageStatus: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		self.adherence = adherence
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.contained = contained
		self.context = context
		self.dateAsserted = dateAsserted
		self.derivedFrom = derivedFrom
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.patient = patient
		self.reason = reason
		self.status = status
		self.text = text
		self.timing = timing
		self.usageReason = usageReason
		self.usageStatus = usageStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case adherence
		case basedOn
		case bodySite
		case category
		case contained
		case context
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case device
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case informationSource
		case language; case _language
		case meta
		case modifierExtension
		case note
		case patient
		case reason
		case status; case _status
		case text
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingTiming
		case usageReason
		case usageStatus
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adherence = try DeviceUsageAdherence(from: _container, forKeyIfPresent: .adherence)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try CodeableReference(from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.device = try CodeableReference(from: _container, forKey: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.informationSource = try Reference(from: _container, forKeyIfPresent: .informationSource)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.status = try FHIRPrimitive<DeviceUsageStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timing = try Self._decodeTiming(from: _container)
		self.usageReason = try [CodeableConcept](from: _container, forKeyIfPresent: .usageReason)
		self.usageStatus = try CodeableConcept(from: _container, forKeyIfPresent: .usageStatus)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try adherence?.encode(on: &_container, forKey: .adherence)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try dateAsserted?.encode(on: &_container, forKey: .dateAsserted, auxiliaryKey: ._dateAsserted)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try device.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try reason?.encode(on: &_container, forKey: .reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		try usageReason?.encode(on: &_container, forKey: .usageReason)
		try usageStatus?.encode(on: &_container, forKey: .usageStatus)
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

/**
 How device is being used.
 
 This indicates how or if the device is being used.
 */
public struct DeviceUsageAdherence: BackboneElement {
	
	/// always | never | sometimes
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// lost | stolen | prescribed | broken | burned | forgot
	public var reason: [CodeableConcept]
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try [CodeableConcept](from: _container, forKey: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason.encode(on: &_container, forKey: .reason)
	}
}
