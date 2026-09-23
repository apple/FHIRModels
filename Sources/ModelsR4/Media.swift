//
//  Media.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Media)
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
 A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
 direct reference.
 */
public struct Media: DomainResource {
	
	public static let resourceType: ResourceType = .media
	
	/// All possible types for "created[x]"
	public enum CreatedX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Procedure that caused this media to be created
	public var basedOn: [Reference]?
	
	/// Observed body part
	public var bodySite: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Actual Media - reference or data
	public var content: Attachment
	
	/// When Media was collected
	/// One of `created[x]`
	public var created: CreatedX?
	
	/// Observing Device
	public var device: Reference?
	
	/// Name of the device/manufacturer
	public var deviceName: FHIRPrimitive<FHIRString>?
	
	/// Length in seconds (audio / video)
	public var duration: FHIRPrimitive<FHIRDecimal>?
	
	/// Encounter associated with media
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Number of frames if > 1 (photo)
	public var frames: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Height of the image in pixels (photo/video)
	public var height: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) for the image
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Date/Time this version was made available
	public var issued: FHIRPrimitive<Instant>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// The type of acquisition equipment/process
	public var modality: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the media
	public var note: [Annotation]?
	
	/// The person who generated the image
	public var `operator`: Reference?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Why was event performed?
	public var reasonCode: [CodeableConcept]?
	
	/// The current state of the {{title}}.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Classification of media as image, video, or audio
	public var type: CodeableConcept?
	
	/// Imaging view, e.g. Lateral or Antero-posterior
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video)
	public var width: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		bodySite: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		content: Attachment,
		created: CreatedX? = nil,
		device: Reference? = nil,
		deviceName: FHIRPrimitive<FHIRString>? = nil,
		duration: FHIRPrimitive<FHIRDecimal>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		frames: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		height: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modality: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		`operator`: Reference? = nil,
		partOf: [Reference]? = nil,
		reasonCode: [CodeableConcept]? = nil,
		status: FHIRPrimitive<EventStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		view: CodeableConcept? = nil,
		width: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.contained = contained
		self.content = content
		self.created = created
		self.device = device
		self.deviceName = deviceName
		self.duration = duration
		self.encounter = encounter
		self.`extension` = `extension`
		self.frames = frames
		self.height = height
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.issued = issued
		self.language = language
		self.meta = meta
		self.modality = modality
		self.modifierExtension = modifierExtension
		self.note = note
		self.`operator` = `operator`
		self.partOf = partOf
		self.reasonCode = reasonCode
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
		self.view = view
		self.width = width
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case bodySite
		case contained
		case content
		case createdDateTime; case _createdDateTime
		case createdPeriod
		case device
		case deviceName; case _deviceName
		case duration; case _duration
		case encounter
		case `extension` = "extension"
		case frames; case _frames
		case height; case _height
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case issued; case _issued
		case language; case _language
		case meta
		case modality
		case modifierExtension
		case note
		case `operator` = "operator"
		case partOf
		case reasonCode
		case status; case _status
		case subject
		case text
		case type
		case view
		case width; case _width
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try Attachment(from: _container, forKey: .content)
		self.created = try Self._decodeCreated(from: _container)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.deviceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deviceName, auxiliaryKey: ._deviceName)
		self.duration = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frames = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frames, auxiliaryKey: ._frames)
		self.height = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .height, auxiliaryKey: ._height)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modality = try CodeableConcept(from: _container, forKeyIfPresent: .modality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.`operator` = try Reference(from: _container, forKeyIfPresent: .`operator`)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.view = try CodeableConcept(from: _container, forKeyIfPresent: .view)
		self.width = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .width, auxiliaryKey: ._width)
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
		try content.encode(on: &_container, forKey: .content)
		if let _enum = created {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .createdDateTime, auxiliaryKey: ._createdDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .createdPeriod)
		}
		}
		try device?.encode(on: &_container, forKey: .device)
		try deviceName?.encode(on: &_container, forKey: .deviceName, auxiliaryKey: ._deviceName)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frames?.encode(on: &_container, forKey: .frames, auxiliaryKey: ._frames)
		try height?.encode(on: &_container, forKey: .height, auxiliaryKey: ._height)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modality?.encode(on: &_container, forKey: .modality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try `operator`?.encode(on: &_container, forKey: .`operator`)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try view?.encode(on: &_container, forKey: .view)
		try width?.encode(on: &_container, forKey: .width, auxiliaryKey: ._width)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCreated(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CreatedX? {
		var _t_created: CreatedX? = nil
		if let createdDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .createdDateTime, auxiliaryKey: ._createdDateTime) {
			_t_created = .dateTime(createdDateTime)
		}
		if let createdPeriod = try Period(from: _container, forKeyIfPresent: .createdPeriod) {
			if _t_created != nil {
				throw DecodingError.dataCorruptedError(forKey: .createdPeriod, in: _container, debugDescription: "More than one value provided for \"created\"")
			}
			_t_created = .period(createdPeriod)
		}
		return _t_created
	}
}
