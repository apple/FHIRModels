//
//  Attachment.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Attachment)
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
 Content in a format defined elsewhere.
 
 For referring to data content defined in other formats.
 */
open class Attachment: DataType {
	
	/// Mime type of the content, with charset etc.
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// Human language of the content (BCP-47)
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Data inline, base64ed
	public var data: FHIRPrimitive<Base64Binary>?
	
	/// Uri where the data can be found
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Number of bytes of content (if url provided)
	public var size: FHIRPrimitive<FHIRInteger64>?
	
	/// Hash of the data (sha-1, base64ed)
	public var hash: FHIRPrimitive<Base64Binary>?
	
	/// Label to display in place of the data
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Date attachment was first created
	public var creation: FHIRPrimitive<DateTime>?
	
	/// Height of the image in pixels (photo/video)
	public var height: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Width of the image in pixels (photo/video)
	public var width: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Number of frames if > 1 (photo)
	public var frames: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Length in seconds (audio / video)
	public var duration: FHIRPrimitive<FHIRDecimal>?
	
	/// Number of printed pages
	public var pages: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contentType: FHIRPrimitive<FHIRString>? = nil,
							creation: FHIRPrimitive<DateTime>? = nil,
							data: FHIRPrimitive<Base64Binary>? = nil,
							duration: FHIRPrimitive<FHIRDecimal>? = nil,
							`extension`: [Extension]? = nil,
							frames: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							hash: FHIRPrimitive<Base64Binary>? = nil,
							height: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							pages: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							size: FHIRPrimitive<FHIRInteger64>? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							width: FHIRPrimitive<FHIRPositiveInteger>? = nil)
	{
		self.init()
		self.contentType = contentType
		self.creation = creation
		self.data = data
		self.duration = duration
		self.`extension` = `extension`
		self.frames = frames
		self.hash = hash
		self.height = height
		self.id = id
		self.language = language
		self.pages = pages
		self.size = size
		self.title = title
		self.url = url
		self.width = width
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentType; case _contentType
		case creation; case _creation
		case data; case _data
		case duration; case _duration
		case frames; case _frames
		case hash; case _hash
		case height; case _height
		case language; case _language
		case pages; case _pages
		case size; case _size
		case title; case _title
		case url; case _url
		case width; case _width
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.creation = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .creation, auxiliaryKey: ._creation)
		self.data = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.duration = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.frames = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frames, auxiliaryKey: ._frames)
		self.hash = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .hash, auxiliaryKey: ._hash)
		self.height = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .height, auxiliaryKey: ._height)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.pages = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .pages, auxiliaryKey: ._pages)
		self.size = try FHIRPrimitive<FHIRInteger64>(from: _container, forKeyIfPresent: .size, auxiliaryKey: ._size)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.width = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .width, auxiliaryKey: ._width)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try creation?.encode(on: &_container, forKey: .creation, auxiliaryKey: ._creation)
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try frames?.encode(on: &_container, forKey: .frames, auxiliaryKey: ._frames)
		try hash?.encode(on: &_container, forKey: .hash, auxiliaryKey: ._hash)
		try height?.encode(on: &_container, forKey: .height, auxiliaryKey: ._height)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try pages?.encode(on: &_container, forKey: .pages, auxiliaryKey: ._pages)
		try size?.encode(on: &_container, forKey: .size, auxiliaryKey: ._size)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try width?.encode(on: &_container, forKey: .width, auxiliaryKey: ._width)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Attachment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contentType == _other.contentType
		    && creation == _other.creation
		    && data == _other.data
		    && duration == _other.duration
		    && frames == _other.frames
		    && hash == _other.hash
		    && height == _other.height
		    && language == _other.language
		    && pages == _other.pages
		    && size == _other.size
		    && title == _other.title
		    && url == _other.url
		    && width == _other.width
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contentType)
		hasher.combine(creation)
		hasher.combine(data)
		hasher.combine(duration)
		hasher.combine(frames)
		hasher.combine(hash)
		hasher.combine(height)
		hasher.combine(language)
		hasher.combine(pages)
		hasher.combine(size)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(width)
	}
}
