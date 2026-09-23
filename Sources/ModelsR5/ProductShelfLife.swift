//
//  ProductShelfLife.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ProductShelfLife)
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
public struct ProductShelfLife: BackboneType {
	
	/// All possible types for "period[x]"
	public enum PeriodX: Equatable, Hashable, Sendable {
		indirect case duration(Duration)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The shelf life time period can be specified using a numerical value for the period of time and its unit of time
	/// measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting
	/// terminology The symbol and the symbol identifier shall be used
	/// One of `period[x]`
	public var period: PeriodX?
	
	/// Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var specialPrecautionsForStorage: [CodeableConcept]?
	
	/// This describes the shelf life, taking into account various scenarios such as shelf life of the packaged
	/// Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening
	/// of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: PeriodX? = nil,
		specialPrecautionsForStorage: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.specialPrecautionsForStorage = specialPrecautionsForStorage
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case periodDuration
		case periodString; case _periodString
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
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Self._decodePeriod(from: _container)
		self.specialPrecautionsForStorage = try [CodeableConcept](from: _container, forKeyIfPresent: .specialPrecautionsForStorage)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = period {
		switch _enum {
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .periodDuration)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .periodString, auxiliaryKey: ._periodString)
		}
		}
		try specialPrecautionsForStorage?.encode(on: &_container, forKey: .specialPrecautionsForStorage)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodePeriod(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PeriodX? {
		var _t_period: PeriodX? = nil
		if let periodDuration = try Duration(from: _container, forKeyIfPresent: .periodDuration) {
			_t_period = .duration(periodDuration)
		}
		if let periodString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .periodString, auxiliaryKey: ._periodString) {
			if _t_period != nil {
				throw DecodingError.dataCorruptedError(forKey: .periodString, in: _container, debugDescription: "More than one value provided for \"period\"")
			}
			_t_period = .string(periodString)
		}
		return _t_period
	}
}
