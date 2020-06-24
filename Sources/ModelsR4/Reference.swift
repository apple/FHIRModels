//
//  Reference.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Reference)
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
 A reference from one resource to another.
 */
open class Reference: Element {
	
	/// Literal reference, Relative, internal or absolute URL
	public var reference: FHIRPrimitive<FHIRString>?
	
	/// Type the reference refers to (e.g. "Patient")
	public var type: FHIRPrimitive<FHIRURI>?
	
	/// Logical reference, when literal reference is not known
	public var identifier: Identifier?
	
	/// Text alternative for the resource
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							reference: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init()
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
		case identifier
		case reference; case _reference
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.reference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.type = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Reference else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return display == _other.display
		    && identifier == _other.identifier
		    && reference == _other.reference
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(display)
		hasher.combine(identifier)
		hasher.combine(reference)
		hasher.combine(type)
	}
}
