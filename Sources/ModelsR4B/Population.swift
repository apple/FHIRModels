//
//  Population.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Population)
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
 A definition of a set of people that apply to some clinically related context, for example people contraindicated for a
 certain medication.
 
 A populatioof people with some set of grouping criteria.
 */
public struct Population: BackboneElement {
	
	/// All possible types for "age[x]"
	public enum AgeX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case range(Range)
	}
	
	/// The age of the specific population
	/// One of `age[x]`
	public var age: AgeX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The gender of the specific population
	public var gender: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The existing physiological conditions of the specific population to which this applies
	public var physiologicalCondition: CodeableConcept?
	
	/// Race of the specific population
	public var race: CodeableConcept?
	
	/// Designated initializer
	public init(
		age: AgeX? = nil,
		`extension`: [Extension]? = nil,
		gender: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		physiologicalCondition: CodeableConcept? = nil,
		race: CodeableConcept? = nil
	) {
		self.age = age
		self.`extension` = `extension`
		self.gender = gender
		self.id = id
		self.modifierExtension = modifierExtension
		self.physiologicalCondition = physiologicalCondition
		self.race = race
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case ageCodeableConcept
		case ageRange
		case `extension` = "extension"
		case gender
		case id; case _id
		case modifierExtension
		case physiologicalCondition
		case race
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.age = try Self._decodeAge(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try CodeableConcept(from: _container, forKeyIfPresent: .gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.physiologicalCondition = try CodeableConcept(from: _container, forKeyIfPresent: .physiologicalCondition)
		self.race = try CodeableConcept(from: _container, forKeyIfPresent: .race)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = age {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .ageCodeableConcept)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .ageRange)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try physiologicalCondition?.encode(on: &_container, forKey: .physiologicalCondition)
		try race?.encode(on: &_container, forKey: .race)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAge(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AgeX? {
		var _t_age: AgeX? = nil
		if let ageCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .ageCodeableConcept) {
			_t_age = .codeableConcept(ageCodeableConcept)
		}
		if let ageRange = try Range(from: _container, forKeyIfPresent: .ageRange) {
			if _t_age != nil {
				throw DecodingError.dataCorruptedError(forKey: .ageRange, in: _container, debugDescription: "More than one value provided for \"age\"")
			}
			_t_age = .range(ageRange)
		}
		return _t_age
	}
}
