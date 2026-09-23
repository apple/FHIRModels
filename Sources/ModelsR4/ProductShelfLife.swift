//
//  ProductShelfLife.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ProductShelfLife)
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
 The shelf-life and storage information for a medicinal product item or container can be described using this class.
 */
public struct ProductShelfLife: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for the packaged Medicinal Product
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The shelf life time period can be specified using a numerical value for the period of time and its unit of time
	/// measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting
	/// terminology The symbol and the symbol identifier shall be used
	public var period: Quantity
	
	/// Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var specialPrecautionsForStorage: [CodeableConcept]?
	
	/// This describes the shelf life, taking into account various scenarios such as shelf life of the packaged
	/// Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening
	/// of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		period: Quantity,
		specialPrecautionsForStorage: [CodeableConcept]? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.period = period
		self.specialPrecautionsForStorage = specialPrecautionsForStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case period
		case specialPrecautionsForStorage
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Quantity(from: _container, forKey: .period)
		self.specialPrecautionsForStorage = try [CodeableConcept](from: _container, forKeyIfPresent: .specialPrecautionsForStorage)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try specialPrecautionsForStorage?.encode(on: &_container, forKey: .specialPrecautionsForStorage)
		try type.encode(on: &_container, forKey: .type)
	}
}
