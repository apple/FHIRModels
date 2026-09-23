//
//  CodeableConcept.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/CodeableConcept)
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
 Concept - reference to a terminology or just  text.
 
 A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
 */
public struct CodeableConcept: Element {
	
	/// Code defined by a terminology system
	public var coding: [Coding]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Plain text representation of the concept
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		coding: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil
	) {
		self.coding = coding
		self.`extension` = `extension`
		self.id = id
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coding
		case `extension` = "extension"
		case id; case _id
		case text; case _text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coding = try [Coding](from: _container, forKeyIfPresent: .coding)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coding?.encode(on: &_container, forKey: .coding)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
	}
}
