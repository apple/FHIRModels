//
//  Substance.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/Substance)
//  Copyright 2025 Apple Inc.
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
 A homogeneous material with a definite composition.
 */
open class Substance: DomainResource {
	
	override open class var resourceType: ResourceType { return .substance }
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// A code to indicate if the substance is actively used.
	public var status: FHIRPrimitive<FHIRSubstanceStatus>?
	
	/// What class/type of substance this is
	public var category: [CodeableConcept]?
	
	/// What substance this is
	public var code: CodeableReference
	
	/// Textual description of the substance, comments
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When no longer valid to use
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// Amount of substance in the package
	public var quantity: Quantity?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableReference) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: [CodeableConcept]? = nil,
		code: CodeableReference,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expiry: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		status: FHIRPrimitive<FHIRSubstanceStatus>? = nil,
		text: Narrative? = nil
	) {
		self.init(code: code)
		self.category = category
		self.contained = contained
		self.description_fhir = description_fhir
		self.expiry = expiry
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case expiry; case _expiry
		case identifier
		case quantity
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableReference(from: _container, forKey: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.status = try FHIRPrimitive<FHIRSubstanceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Substance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
		    && description_fhir == _other.description_fhir
		    && expiry == _other.expiry
		    && identifier == _other.identifier
		    && quantity == _other.quantity
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(expiry)
		hasher.combine(identifier)
		hasher.combine(quantity)
		hasher.combine(status)
	}
}
