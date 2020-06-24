//
//  Media.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Media)
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
 A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
 direct reference.
 */
open class Media: DomainResource {
	
	override open class var resourceType: ResourceType { return .media }
	
	/// All possible types for "created[x]"
	public enum CreatedX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Identifier(s) for the image
	public var identifier: [Identifier]?
	
	/// Procedure that caused this media to be created
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// The current state of the {{title}}.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Classification of media as image, video, or audio
	public var type: CodeableConcept?
	
	/// The type of acquisition equipment/process
	public var modality: CodeableConcept?
	
	/// Imaging view, e.g. Lateral or Antero-posterior
	public var view: CodeableConcept?
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// Encounter associated with media
	public var encounter: Reference?
	
	/// When Media was collected
	/// One of `created[x]`
	public var created: CreatedX?
	
	/// Date/Time this version was made available
	public var issued: FHIRPrimitive<Instant>?
	
	/// The person who generated the image
	public var `operator`: Reference?
	
	/// Why was event performed?
	public var reasonCode: [CodeableConcept]?
	
	/// Observed body part
	public var bodySite: CodeableConcept?
	
	/// Name of the device/manufacturer
	public var deviceName: FHIRPrimitive<FHIRString>?
	
	/// Observing Device
	public var device: Reference?
	
	/// Height of the image in pixels (photo/video)
	public var height: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Width of the image in pixels (photo/video)
	public var width: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Number of frames if > 1 (photo)
	public var frames: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Length in seconds (audio / video)
	public var duration: FHIRPrimitive<FHIRDecimal>?
	
	/// Actual Media - reference or data
	public var content: Attachment
	
	/// Comments made about the media
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(content: Attachment, status: FHIRPrimitive<EventStatus>) {
		self.content = content
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							width: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init(content: content, status: status)
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.contained = contained
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
		self.subject = subject
		self.text = text
		self.type = type
		self.view = view
		self.width = width
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case bodySite
		case content
		case createdDateTime; case _createdDateTime
		case createdPeriod
		case device
		case deviceName; case _deviceName
		case duration; case _duration
		case encounter
		case frames; case _frames
		case height; case _height
		case identifier
		case issued; case _issued
		case modality
		case note
		case `operator` = "operator"
		case partOf
		case reasonCode
		case status; case _status
		case subject
		case type
		case view
		case width; case _width
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.content = try Attachment(from: _container, forKey: .content)
		var _t_created: CreatedX? = nil
		if let createdDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .createdDateTime, auxiliaryKey: ._createdDateTime) {
			if _t_created != nil {
				throw DecodingError.dataCorruptedError(forKey: .createdDateTime, in: _container, debugDescription: "More than one value provided for \"created\"")
			}
			_t_created = .dateTime(createdDateTime)
		}
		if let createdPeriod = try Period(from: _container, forKeyIfPresent: .createdPeriod) {
			if _t_created != nil {
				throw DecodingError.dataCorruptedError(forKey: .createdPeriod, in: _container, debugDescription: "More than one value provided for \"created\"")
			}
			_t_created = .period(createdPeriod)
		}
		self.created = _t_created
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.deviceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deviceName, auxiliaryKey: ._deviceName)
		self.duration = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.frames = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frames, auxiliaryKey: ._frames)
		self.height = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .height, auxiliaryKey: ._height)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.modality = try CodeableConcept(from: _container, forKeyIfPresent: .modality)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.`operator` = try Reference(from: _container, forKeyIfPresent: .`operator`)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.view = try CodeableConcept(from: _container, forKeyIfPresent: .view)
		self.width = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .width, auxiliaryKey: ._width)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
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
		try frames?.encode(on: &_container, forKey: .frames, auxiliaryKey: ._frames)
		try height?.encode(on: &_container, forKey: .height, auxiliaryKey: ._height)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try modality?.encode(on: &_container, forKey: .modality)
		try note?.encode(on: &_container, forKey: .note)
		try `operator`?.encode(on: &_container, forKey: .`operator`)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try view?.encode(on: &_container, forKey: .view)
		try width?.encode(on: &_container, forKey: .width, auxiliaryKey: ._width)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Media else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && content == _other.content
		    && created == _other.created
		    && device == _other.device
		    && deviceName == _other.deviceName
		    && duration == _other.duration
		    && encounter == _other.encounter
		    && frames == _other.frames
		    && height == _other.height
		    && identifier == _other.identifier
		    && issued == _other.issued
		    && modality == _other.modality
		    && note == _other.note
		    && `operator` == _other.`operator`
		    && partOf == _other.partOf
		    && reasonCode == _other.reasonCode
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
		    && view == _other.view
		    && width == _other.width
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(content)
		hasher.combine(created)
		hasher.combine(device)
		hasher.combine(deviceName)
		hasher.combine(duration)
		hasher.combine(encounter)
		hasher.combine(frames)
		hasher.combine(height)
		hasher.combine(identifier)
		hasher.combine(issued)
		hasher.combine(modality)
		hasher.combine(note)
		hasher.combine(`operator`)
		hasher.combine(partOf)
		hasher.combine(reasonCode)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(view)
		hasher.combine(width)
	}
}
