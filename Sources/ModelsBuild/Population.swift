//
//  Population.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Population)
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
 A definition of a set of people that apply to some clinically related context, for example people contraindicated for a
 certain medication.
 
 A populatioof people with some set of grouping criteria.
 */
open class Population: BackboneType {
	
	/// All possible types for "age[x]"
	public enum AgeX: Hashable {
		case codeableConcept(CodeableConcept)
		case range(Range)
	}
	
	/// The age of the specific population
	/// One of `age[x]`
	public var age: AgeX?
	
	/// The gender of the specific population
	public var gender: CodeableConcept?
	
	/// Race of the specific population
	public var race: CodeableConcept?
	
	/// The existing physiological conditions of the specific population to which this applies
	public var physiologicalCondition: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							age: AgeX? = nil,
							`extension`: [Extension]? = nil,
							gender: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							physiologicalCondition: CodeableConcept? = nil,
							race: CodeableConcept? = nil)
	{
		self.init()
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
		case gender
		case physiologicalCondition
		case race
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_age: AgeX? = nil
		if let ageRange = try Range(from: _container, forKeyIfPresent: .ageRange) {
			if _t_age != nil {
				throw DecodingError.dataCorruptedError(forKey: .ageRange, in: _container, debugDescription: "More than one value provided for \"age\"")
			}
			_t_age = .range(ageRange)
		}
		if let ageCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .ageCodeableConcept) {
			if _t_age != nil {
				throw DecodingError.dataCorruptedError(forKey: .ageCodeableConcept, in: _container, debugDescription: "More than one value provided for \"age\"")
			}
			_t_age = .codeableConcept(ageCodeableConcept)
		}
		self.age = _t_age
		self.gender = try CodeableConcept(from: _container, forKeyIfPresent: .gender)
		self.physiologicalCondition = try CodeableConcept(from: _container, forKeyIfPresent: .physiologicalCondition)
		self.race = try CodeableConcept(from: _container, forKeyIfPresent: .race)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = age {
			switch _enum {
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .ageRange)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .ageCodeableConcept)
			}
		}
		try gender?.encode(on: &_container, forKey: .gender)
		try physiologicalCondition?.encode(on: &_container, forKey: .physiologicalCondition)
		try race?.encode(on: &_container, forKey: .race)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Population else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return age == _other.age
		    && gender == _other.gender
		    && physiologicalCondition == _other.physiologicalCondition
		    && race == _other.race
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(age)
		hasher.combine(gender)
		hasher.combine(physiologicalCondition)
		hasher.combine(race)
	}
}
