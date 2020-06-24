//
//  Attachment.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Attachment)
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
open class Attachment: Element {
	
	/// Mime type of the content, with charset etc.
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// Human language of the content (BCP-47)
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Data inline, base64ed
	public var data: FHIRPrimitive<Base64Binary>?
	
	/// Uri where the data can be found
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Number of bytes of content (if url provided)
	public var size: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Hash of the data (sha-1, base64ed)
	public var hash: FHIRPrimitive<Base64Binary>?
	
	/// Label to display in place of the data
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Date attachment was first created
	public var creation: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contentType: FHIRPrimitive<FHIRString>? = nil,
							creation: FHIRPrimitive<DateTime>? = nil,
							data: FHIRPrimitive<Base64Binary>? = nil,
							`extension`: [Extension]? = nil,
							hash: FHIRPrimitive<Base64Binary>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							size: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init()
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
		case hash; case _hash
		case language; case _language
		case size; case _size
		case title; case _title
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.creation = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .creation, auxiliaryKey: ._creation)
		self.data = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.hash = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .hash, auxiliaryKey: ._hash)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.size = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .size, auxiliaryKey: ._size)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try creation?.encode(on: &_container, forKey: .creation, auxiliaryKey: ._creation)
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try hash?.encode(on: &_container, forKey: .hash, auxiliaryKey: ._hash)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try size?.encode(on: &_container, forKey: .size, auxiliaryKey: ._size)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
		    && hash == _other.hash
		    && language == _other.language
		    && size == _other.size
		    && title == _other.title
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contentType)
		hasher.combine(creation)
		hasher.combine(data)
		hasher.combine(hash)
		hasher.combine(language)
		hasher.combine(size)
		hasher.combine(title)
		hasher.combine(url)
	}
}
