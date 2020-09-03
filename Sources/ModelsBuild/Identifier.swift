//
//  Identifier.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Identifier)
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
 An identifier intended for computation.
 
 An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
 */
open class Identifier: DataType {
	
	/// The purpose of this identifier.
	public var use: FHIRPrimitive<IdentifierUse>?
	
	/// Description of identifier
	public var type: CodeableConcept?
	
	/// The namespace for the identifier value
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// The value that is unique
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Time period when id is/was valid for use
	public var period: Period?
	
	/// Organization that issued id (may be just text)
	public var assigner: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assigner: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							period: Period? = nil,
							system: FHIRPrimitive<FHIRURI>? = nil,
							type: CodeableConcept? = nil,
							use: FHIRPrimitive<IdentifierUse>? = nil,
							value: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case period
		case system; case _system
		case type
		case use; case _use
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assigner = try Reference(from: _container, forKeyIfPresent: .assigner)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.use = try FHIRPrimitive<IdentifierUse>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assigner?.encode(on: &_container, forKey: .assigner)
		try period?.encode(on: &_container, forKey: .period)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try type?.encode(on: &_container, forKey: .type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Identifier else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assigner == _other.assigner
		    && period == _other.period
		    && system == _other.system
		    && type == _other.type
		    && use == _other.use
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assigner)
		hasher.combine(period)
		hasher.combine(system)
		hasher.combine(type)
		hasher.combine(use)
		hasher.combine(value)
	}
}
