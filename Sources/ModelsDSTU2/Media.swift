//
//  Media.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Media)
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
	
	/// Whether the media is a photo (still image), an audio recording, or a video recording.
	/// Restricted to: ['photo', 'video', 'audio']
	public var type: FHIRPrimitive<DigitalMediaType>
	
	/// The type of acquisition equipment/process
	public var subtype: CodeableConcept?
	
	/// Identifier(s) for the image
	public var identifier: [Identifier]?
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// The person who generated the image
	public var `operator`: Reference?
	
	/// Imaging view, e.g. Lateral or Antero-posterior
	public var view: CodeableConcept?
	
	/// Name of the device/manufacturer
	public var deviceName: FHIRPrimitive<FHIRString>?
	
	/// Height of the image in pixels (photo/video)
	public var height: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Width of the image in pixels (photo/video)
	public var width: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Number of frames if > 1 (photo)
	public var frames: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Length in seconds (audio / video)
	public var duration: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Actual Media - reference or data
	public var content: Attachment
	
	/// Designated initializer taking all required properties
	public init(content: Attachment, type: FHIRPrimitive<DigitalMediaType>) {
		self.content = content
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							content: Attachment,
							deviceName: FHIRPrimitive<FHIRString>? = nil,
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
							`operator`: Reference? = nil,
							subject: Reference? = nil,
							subtype: CodeableConcept? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<DigitalMediaType>,
							view: CodeableConcept? = nil,
							width: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init(content: content, type: type)
		self.contained = contained
		self.deviceName = deviceName
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
		self.`operator` = `operator`
		self.subject = subject
		self.subtype = subtype
		self.text = text
		self.view = view
		self.width = width
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case content
		case deviceName; case _deviceName
		case duration; case _duration
		case frames; case _frames
		case height; case _height
		case identifier
		case `operator` = "operator"
		case subject
		case subtype
		case type; case _type
		case view
		case width; case _width
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.content = try Attachment(from: _container, forKey: .content)
		self.deviceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deviceName, auxiliaryKey: ._deviceName)
		self.duration = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.frames = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frames, auxiliaryKey: ._frames)
		self.height = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .height, auxiliaryKey: ._height)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.`operator` = try Reference(from: _container, forKeyIfPresent: .`operator`)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subtype = try CodeableConcept(from: _container, forKeyIfPresent: .subtype)
		self.type = try FHIRPrimitive<DigitalMediaType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.view = try CodeableConcept(from: _container, forKeyIfPresent: .view)
		self.width = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .width, auxiliaryKey: ._width)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try content.encode(on: &_container, forKey: .content)
		try deviceName?.encode(on: &_container, forKey: .deviceName, auxiliaryKey: ._deviceName)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try frames?.encode(on: &_container, forKey: .frames, auxiliaryKey: ._frames)
		try height?.encode(on: &_container, forKey: .height, auxiliaryKey: ._height)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try `operator`?.encode(on: &_container, forKey: .`operator`)
		try subject?.encode(on: &_container, forKey: .subject)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		return content == _other.content
		    && deviceName == _other.deviceName
		    && duration == _other.duration
		    && frames == _other.frames
		    && height == _other.height
		    && identifier == _other.identifier
		    && `operator` == _other.`operator`
		    && subject == _other.subject
		    && subtype == _other.subtype
		    && type == _other.type
		    && view == _other.view
		    && width == _other.width
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
		hasher.combine(deviceName)
		hasher.combine(duration)
		hasher.combine(frames)
		hasher.combine(height)
		hasher.combine(identifier)
		hasher.combine(`operator`)
		hasher.combine(subject)
		hasher.combine(subtype)
		hasher.combine(type)
		hasher.combine(view)
		hasher.combine(width)
	}
}
