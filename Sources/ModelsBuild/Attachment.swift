//
//  Attachment.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Attachment)
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
 Content in a format defined elsewhere.
 
 For referring to data content defined in other formats.
 */
public struct Attachment: DataType {
	
	/// Mime type of the content, with charset etc.
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// Date attachment was first created
	public var creation: FHIRPrimitive<DateTime>?
	
	/// Data inline, base64ed
	public var data: FHIRPrimitive<Base64Binary>?
	
	/// Length in seconds (audio / video)
	public var duration: FHIRPrimitive<FHIRDecimal>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Number of frames if > 1 (photo)
	public var frames: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Hash of the data (sha-1, base64ed)
	public var hash: FHIRPrimitive<Base64Binary>?
	
	/// Height of the image in pixels (photo/video)
	public var height: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Human language of the content (BCP-47)
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Number of printed pages
	public var pages: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Number of bytes of content (if url provided)
	public var size: FHIRInteger64?
	
	/// Label to display in place of the data
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Uri where the data can be found
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Width of the image in pixels (photo/video)
	public var width: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer
	public init(
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
		size: FHIRInteger64? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		width: FHIRPrimitive<FHIRPositiveInteger>? = nil
	) {
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
		case `extension` = "extension"
		case frames; case _frames
		case hash; case _hash
		case height; case _height
		case id; case _id
		case language; case _language
		case pages; case _pages
		case size
		case title; case _title
		case url; case _url
		case width; case _width
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.creation = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .creation, auxiliaryKey: ._creation)
		self.data = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.duration = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .duration, auxiliaryKey: ._duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frames = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .frames, auxiliaryKey: ._frames)
		self.hash = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .hash, auxiliaryKey: ._hash)
		self.height = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .height, auxiliaryKey: ._height)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.pages = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .pages, auxiliaryKey: ._pages)
		self.size = try FHIRInteger64(from: _container, forKeyIfPresent: .size)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.width = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .width, auxiliaryKey: ._width)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try creation?.encode(on: &_container, forKey: .creation, auxiliaryKey: ._creation)
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try duration?.encode(on: &_container, forKey: .duration, auxiliaryKey: ._duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frames?.encode(on: &_container, forKey: .frames, auxiliaryKey: ._frames)
		try hash?.encode(on: &_container, forKey: .hash, auxiliaryKey: ._hash)
		try height?.encode(on: &_container, forKey: .height, auxiliaryKey: ._height)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try pages?.encode(on: &_container, forKey: .pages, auxiliaryKey: ._pages)
		try size?.encode(on: &_container, forKey: .size)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try width?.encode(on: &_container, forKey: .width, auxiliaryKey: ._width)
	}
}
