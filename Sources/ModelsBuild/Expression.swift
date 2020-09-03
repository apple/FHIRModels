//
//  Expression.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Expression)
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
 An expression that can be used to generate a value.
 
 A expression that is evaluated in a specified context and returns a value. The context of use of the expression must
 specify the context in which the expression is evaluated, and how the result of the expression is used.
 */
open class Expression: DataType {
	
	/// Natural language description of the condition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Short name assigned to expression for reuse
	public var name: FHIRPrimitive<FHIRString>?
	
	/// text/cql | text/fhirpath | application/x-fhir-query | etc.
	public var language: FHIRPrimitive<FHIRString>
	
	/// Expression in specified language
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Where the expression is found
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(language: FHIRPrimitive<FHIRString>) {
		self.language = language
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							expression: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>,
							name: FHIRPrimitive<FHIRString>? = nil,
							reference: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(language: language)
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.name = name
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case language; case _language
		case name; case _name
		case reference; case _reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKey: .language, auxiliaryKey: ._language)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try language.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Expression else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && expression == _other.expression
		    && language == _other.language
		    && name == _other.name
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(expression)
		hasher.combine(language)
		hasher.combine(name)
		hasher.combine(reference)
	}
}
