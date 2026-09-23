//
//  Annotation.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Annotation)
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
 Text node with attribution.
 
 A  text note which also  contains information about who made the statement and when.
 */
public struct Annotation: Element {
	
	/// All possible types for "author[x]"
	public enum AuthorX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Individual responsible for the annotation
	/// One of `author[x]`
	public var author: AuthorX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The annotation  - text content
	public var text: FHIRPrimitive<FHIRString>
	
	/// When the annotation was made
	public var time: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		author: AuthorX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		text: FHIRPrimitive<FHIRString>,
		time: FHIRPrimitive<DateTime>? = nil
	) {
		self.author = author
		self.`extension` = `extension`
		self.id = id
		self.text = text
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorReference
		case authorString; case _authorString
		case `extension` = "extension"
		case id; case _id
		case text; case _text
		case time; case _time
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Self._decodeAuthor(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = author {
		switch _enum {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .authorReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .authorString, auxiliaryKey: ._authorString)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAuthor(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AuthorX? {
		var _t_author: AuthorX? = nil
		if let authorReference = try Reference(from: _container, forKeyIfPresent: .authorReference) {
			_t_author = .reference(authorReference)
		}
		if let authorString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .authorString, auxiliaryKey: ._authorString) {
			if _t_author != nil {
				throw DecodingError.dataCorruptedError(forKey: .authorString, in: _container, debugDescription: "More than one value provided for \"author\"")
			}
			_t_author = .string(authorString)
		}
		return _t_author
	}
}
