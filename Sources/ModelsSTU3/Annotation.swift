//
//  Annotation.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Annotation)
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
 Text node with attribution.
 
 A  text note which also  contains information about who made the statement and when.
 */
open class Annotation: Element {
	
	/// All possible types for "author[x]"
	public enum AuthorX: Hashable {
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Individual responsible for the annotation
	/// One of `author[x]`
	public var author: AuthorX?
	
	/// When the annotation was made
	public var time: FHIRPrimitive<DateTime>?
	
	/// The annotation  - text content
	public var text: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(text: FHIRPrimitive<FHIRString>) {
		self.text = text
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: AuthorX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							text: FHIRPrimitive<FHIRString>,
							time: FHIRPrimitive<DateTime>? = nil)
	{
		self.init(text: text)
		self.author = author
		self.`extension` = `extension`
		self.id = id
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorReference
		case authorString; case _authorString
		case text; case _text
		case time; case _time
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_author: AuthorX? = nil
		if let authorReference = try Reference(from: _container, forKeyIfPresent: .authorReference) {
			if _t_author != nil {
				throw DecodingError.dataCorruptedError(forKey: .authorReference, in: _container, debugDescription: "More than one value provided for \"author\"")
			}
			_t_author = .reference(authorReference)
		}
		if let authorString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .authorString, auxiliaryKey: ._authorString) {
			if _t_author != nil {
				throw DecodingError.dataCorruptedError(forKey: .authorString, in: _container, debugDescription: "More than one value provided for \"author\"")
			}
			_t_author = .string(authorString)
		}
		self.author = _t_author
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKey: .text, auxiliaryKey: ._text)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = author {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .authorReference)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .authorString, auxiliaryKey: ._authorString)
			}
		}
		try text.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Annotation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && text == _other.text
		    && time == _other.time
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(text)
		hasher.combine(time)
	}
}
