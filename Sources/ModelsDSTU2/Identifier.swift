//
//  Identifier.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Identifier)
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
 An identifier intended for computation.
 
 A technical identifier - identifies some entity uniquely and unambiguously.
 */
public final class Identifier: ElementReadOnly, Sendable {
	
	/// Organization that issued id (may be just text)
	public let assigner: Reference?
	
	/// Additional Content defined by implementations
	public let `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public let id: FHIRPrimitive<FHIRString>?
	
	/// Time period when id is/was valid for use
	public let period: Period?
	
	/// The namespace for the identifier
	public let system: FHIRPrimitive<FHIRURI>?
	
	/// Description of identifier
	public let type: CodeableConcept?
	
	/// The purpose of this identifier.
	/// Restricted to: ['usual', 'official', 'temp', 'secondary']
	public let use: FHIRPrimitive<IdentifierUse>?
	
	/// The value that is unique
	public let value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		assigner: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		period: Period? = nil,
		system: FHIRPrimitive<FHIRURI>? = nil,
		type: CodeableConcept? = nil,
		use: FHIRPrimitive<IdentifierUse>? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.assigner = assigner
		self.`extension` = `extension`
		self.id = id
		self.period = period
		self.system = system
		self.type = type
		self.use = use
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assigner
		case `extension` = "extension"
		case id; case _id
		case period
		case system; case _system
		case type
		case use; case _use
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assigner = try Reference(from: _container, forKeyIfPresent: .assigner)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.use = try FHIRPrimitive<IdentifierUse>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assigner?.encode(on: &_container, forKey: .assigner)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try period?.encode(on: &_container, forKey: .period)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try type?.encode(on: &_container, forKey: .type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
	
	// MARK: - Equatable & Hashable
	
	public static func == (lhs: Identifier, rhs: Identifier) -> Bool {
		return lhs.assigner == rhs.assigner
			&& lhs.`extension` == rhs.`extension`
			&& lhs.id == rhs.id
			&& lhs.period == rhs.period
			&& lhs.system == rhs.system
			&& lhs.type == rhs.type
			&& lhs.use == rhs.use
			&& lhs.value == rhs.value

	}
	
	public func hash(into hasher: inout Hasher) {
		hasher.combine(assigner)
		hasher.combine(`extension`)
		hasher.combine(id)
		hasher.combine(period)
		hasher.combine(system)
		hasher.combine(type)
		hasher.combine(use)
		hasher.combine(value)
	}
}
