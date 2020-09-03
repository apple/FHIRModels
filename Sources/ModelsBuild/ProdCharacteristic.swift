//
//  ProdCharacteristic.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ProdCharacteristic)
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
 The marketing status describes the date when a medicinal product is actually put on the market or the date as of which
 it is no longer available.
 */
open class ProdCharacteristic: BackboneType {
	
	/// Where applicable, the height can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used
	public var height: Quantity?
	
	/// Where applicable, the width can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used
	public var width: Quantity?
	
	/// Where applicable, the depth can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used
	public var depth: Quantity?
	
	/// Where applicable, the weight can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used
	public var weight: Quantity?
	
	/// Where applicable, the nominal volume can be specified using a numerical value and its unit of measurement The
	/// unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and
	/// the symbol identifier shall be used
	public var nominalVolume: Quantity?
	
	/// Where applicable, the external diameter can be specified using a numerical value and its unit of measurement The
	/// unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and
	/// the symbol identifier shall be used
	public var externalDiameter: Quantity?
	
	/// Where applicable, the shape can be specified An appropriate controlled vocabulary shall be used The term and the
	/// term identifier shall be used
	public var shape: FHIRPrimitive<FHIRString>?
	
	/// Where applicable, the color can be specified An appropriate controlled vocabulary shall be used The term and the
	/// term identifier shall be used
	public var color: [FHIRPrimitive<FHIRString>]?
	
	/// Where applicable, the imprint can be specified as text
	public var imprint: [FHIRPrimitive<FHIRString>]?
	
	/// Where applicable, the image can be provided The format of the image attachment shall be specified by regional
	/// implementations
	public var image: [Attachment]?
	
	/// Where applicable, the scoring can be specified An appropriate controlled vocabulary shall be used The term and
	/// the term identifier shall be used
	public var scoring: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							color: [FHIRPrimitive<FHIRString>]? = nil,
							depth: Quantity? = nil,
							`extension`: [Extension]? = nil,
							externalDiameter: Quantity? = nil,
							height: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							image: [Attachment]? = nil,
							imprint: [FHIRPrimitive<FHIRString>]? = nil,
							modifierExtension: [Extension]? = nil,
							nominalVolume: Quantity? = nil,
							scoring: CodeableConcept? = nil,
							shape: FHIRPrimitive<FHIRString>? = nil,
							weight: Quantity? = nil,
							width: Quantity? = nil)
	{
		self.init()
		self.color = color
		self.depth = depth
		self.`extension` = `extension`
		self.externalDiameter = externalDiameter
		self.height = height
		self.id = id
		self.image = image
		self.imprint = imprint
		self.modifierExtension = modifierExtension
		self.nominalVolume = nominalVolume
		self.scoring = scoring
		self.shape = shape
		self.weight = weight
		self.width = width
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case color; case _color
		case depth
		case externalDiameter
		case height
		case image
		case imprint; case _imprint
		case nominalVolume
		case scoring
		case shape; case _shape
		case weight
		case width
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.color = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.depth = try Quantity(from: _container, forKeyIfPresent: .depth)
		self.externalDiameter = try Quantity(from: _container, forKeyIfPresent: .externalDiameter)
		self.height = try Quantity(from: _container, forKeyIfPresent: .height)
		self.image = try [Attachment](from: _container, forKeyIfPresent: .image)
		self.imprint = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .imprint, auxiliaryKey: ._imprint)
		self.nominalVolume = try Quantity(from: _container, forKeyIfPresent: .nominalVolume)
		self.scoring = try CodeableConcept(from: _container, forKeyIfPresent: .scoring)
		self.shape = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shape, auxiliaryKey: ._shape)
		self.weight = try Quantity(from: _container, forKeyIfPresent: .weight)
		self.width = try Quantity(from: _container, forKeyIfPresent: .width)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try depth?.encode(on: &_container, forKey: .depth)
		try externalDiameter?.encode(on: &_container, forKey: .externalDiameter)
		try height?.encode(on: &_container, forKey: .height)
		try image?.encode(on: &_container, forKey: .image)
		try imprint?.encode(on: &_container, forKey: .imprint, auxiliaryKey: ._imprint)
		try nominalVolume?.encode(on: &_container, forKey: .nominalVolume)
		try scoring?.encode(on: &_container, forKey: .scoring)
		try shape?.encode(on: &_container, forKey: .shape, auxiliaryKey: ._shape)
		try weight?.encode(on: &_container, forKey: .weight)
		try width?.encode(on: &_container, forKey: .width)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProdCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return color == _other.color
		    && depth == _other.depth
		    && externalDiameter == _other.externalDiameter
		    && height == _other.height
		    && image == _other.image
		    && imprint == _other.imprint
		    && nominalVolume == _other.nominalVolume
		    && scoring == _other.scoring
		    && shape == _other.shape
		    && weight == _other.weight
		    && width == _other.width
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(color)
		hasher.combine(depth)
		hasher.combine(externalDiameter)
		hasher.combine(height)
		hasher.combine(image)
		hasher.combine(imprint)
		hasher.combine(nominalVolume)
		hasher.combine(scoring)
		hasher.combine(shape)
		hasher.combine(weight)
		hasher.combine(width)
	}
}
