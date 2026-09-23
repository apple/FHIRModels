//
//  Reference.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Reference)
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
 A reference from one resource to another.
 */
public final class Reference: DataTypeReadOnly, Sendable {
	
	/// Text alternative for the resource
	public let display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public let `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public let id: FHIRPrimitive<FHIRString>?
	
	/// Logical reference, when literal reference is not known
	public let identifier: Identifier?
	
	/// Literal reference, Relative, internal or absolute URL
	public let reference: FHIRPrimitive<FHIRString>?
	
	/// Type the reference refers to (e.g. "Patient") - must be a resource in resources
	public let type: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		reference: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.reference = reference
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case identifier
		case reference; case _reference
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.reference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.type = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
	
	// MARK: - Equatable & Hashable
	
	public static func == (lhs: Reference, rhs: Reference) -> Bool {
		return lhs.display == rhs.display
			&& lhs.`extension` == rhs.`extension`
			&& lhs.id == rhs.id
			&& lhs.identifier == rhs.identifier
			&& lhs.reference == rhs.reference
			&& lhs.type == rhs.type

	}
	
	public func hash(into hasher: inout Hasher) {
		hasher.combine(display)
		hasher.combine(`extension`)
		hasher.combine(id)
		hasher.combine(identifier)
		hasher.combine(reference)
		hasher.combine(type)
	}
}
