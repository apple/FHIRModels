//
//  Media.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Media)
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
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Procedure that caused this media to be created
	public var basedOn: [Reference]?
	
	/// Body part in media
	public var bodySite: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Actual Media - reference or data
	public var content: Attachment
	
	/// Encounter / Episode associated with media
	public var context: Reference?
	
	/// Observing Device
	public var device: Reference?
	
	/// Length in seconds (audio / video)
	public var duration: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Additional Content defined by implementations
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
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the media
	public var note: [Annotation]?
	
	/// When Media was collected
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// The person who generated the image
	public var `operator`: Reference?
	
	/// Why was event performed?
	public var reasonCode: [CodeableConcept]?
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// The type of acquisition equipment/process
	public var subtype: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Whether the media is a photo (still image), an audio recording, or a video recording.
	public var type: FHIRPrimitive<DigitalMediaType>
	
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
		context: Reference? = nil,
		device: Reference? = nil,
		duration: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		`extension`: [Extension]? = nil,
		frames: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		height: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		`operator`: Reference? = nil,
		reasonCode: [CodeableConcept]? = nil,
		subject: Reference? = nil,
		subtype: CodeableConcept? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<DigitalMediaType>,
		view: CodeableConcept? = nil,
		width: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.contained = contained
		self.content = content
		self.context = context
		self.device = device
		self.duration = duration
		self.`extension` = `extension`
		self.frames = frames
		self.height = height
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.`operator` = `operator`
		self.reasonCode = reasonCode
		self.subject = subject
		self.subtype = subtype
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
		case context
		case device
		case duration; case _duration
		case `extension` = "extension"
		case frames; case _frames
		case height; case _height
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case `operator` = "operator"
		case reasonCode
		case subject
		case subtype
		case text
		case type; case _type
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
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.duration = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frames = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frames, auxiliaryKey: ._frames)
		self.height = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .height, auxiliaryKey: ._height)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.`operator` = try Reference(from: _container, forKeyIfPresent: .`operator`)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subtype = try CodeableConcept(from: _container, forKeyIfPresent: .subtype)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<DigitalMediaType>(from: _container, forKey: .type, auxiliaryKey: ._type)
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
		try context?.encode(on: &_container, forKey: .context)
		try device?.encode(on: &_container, forKey: .device)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frames?.encode(on: &_container, forKey: .frames, auxiliaryKey: ._frames)
		try height?.encode(on: &_container, forKey: .height, auxiliaryKey: ._height)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurrencePeriod)
		}
		}
		try `operator`?.encode(on: &_container, forKey: .`operator`)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try subject?.encode(on: &_container, forKey: .subject)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try view?.encode(on: &_container, forKey: .view)
		try width?.encode(on: &_container, forKey: .width, auxiliaryKey: ._width)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		return _t_occurrence
	}
}
