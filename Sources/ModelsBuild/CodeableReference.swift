//
//  CodeableReference.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/CodeableReference)
//  Copyright 2024 Apple Inc.
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
 Reference to a resource or a concept.
 
 A reference to a resource (by instance), or instead, a reference to a concept defined in a terminology or ontology (by
 class).
 */
open class CodeableReference: DataType {
	
	/// Reference to a concept (by class)
	public var concept: CodeableConcept?
	
	/// Reference to a resource (by instance)
	public var reference: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		concept: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		reference: Reference? = nil
	) {
		self.init()
		self.concept = concept
		self.`extension` = `extension`
		self.id = id
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concept
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.concept = try CodeableConcept(from: _container, forKeyIfPresent: .concept)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try concept?.encode(on: &_container, forKey: .concept)
		try reference?.encode(on: &_container, forKey: .reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CodeableReference else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return concept == _other.concept
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(concept)
		hasher.combine(reference)
	}
}
