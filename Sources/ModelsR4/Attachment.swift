//
//  Attachment.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Attachment)
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
public struct Attachment: Element {
	
	/// Mime type of the content, with charset etc.
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// Date attachment was first created
	public var creation: FHIRPrimitive<DateTime>?
	
	/// Data inline, base64ed
	public var data: FHIRPrimitive<Base64Binary>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Hash of the data (sha-1, base64ed)
	public var hash: FHIRPrimitive<Base64Binary>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Human language of the content (BCP-47)
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Number of bytes of content (if url provided)
	public var size: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Label to display in place of the data
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Uri where the data can be found
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		contentType: FHIRPrimitive<FHIRString>? = nil,
		creation: FHIRPrimitive<DateTime>? = nil,
		data: FHIRPrimitive<Base64Binary>? = nil,
		`extension`: [Extension]? = nil,
		hash: FHIRPrimitive<Base64Binary>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		size: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.contentType = contentType
		self.creation = creation
		self.data = data
		self.`extension` = `extension`
		self.hash = hash
		self.id = id
		self.language = language
		self.size = size
		self.title = title
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentType; case _contentType
		case creation; case _creation
		case data; case _data
		case `extension` = "extension"
		case hash; case _hash
		case id; case _id
		case language; case _language
		case size; case _size
		case title; case _title
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.creation = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .creation, auxiliaryKey: ._creation)
		self.data = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hash = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .hash, auxiliaryKey: ._hash)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.size = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .size, auxiliaryKey: ._size)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try creation?.encode(on: &_container, forKey: .creation, auxiliaryKey: ._creation)
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hash?.encode(on: &_container, forKey: .hash, auxiliaryKey: ._hash)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try size?.encode(on: &_container, forKey: .size, auxiliaryKey: ._size)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}
