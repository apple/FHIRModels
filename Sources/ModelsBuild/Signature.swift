//
//  Signature.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Signature)
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
 A Signature - XML DigSig, JWS, Graphical image of signature, etc..
 
 A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or
 some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing
 a hand-written signature, or a signature ceremony Different signature approaches have different utilities.
 */
open class Signature: DataType {
	
	/// Indication of the reason the entity signed the object(s)
	public var type: [Coding]
	
	/// When the signature was created
	public var when: FHIRPrimitive<Instant>
	
	/// Who signed
	public var who: Reference
	
	/// The party represented
	public var onBehalfOf: Reference?
	
	/// The technical format of the signed resources
	public var targetFormat: FHIRPrimitive<FHIRString>?
	
	/// The technical format of the signature
	public var sigFormat: FHIRPrimitive<FHIRString>?
	
	/// The actual signature content (XML DigSig. JWS, picture, etc.)
	public var data: FHIRPrimitive<Base64Binary>?
	
	/// Designated initializer taking all required properties
	public init(type: [Coding], when: FHIRPrimitive<Instant>, who: Reference) {
		self.type = type
		self.when = when
		self.who = who
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							data: FHIRPrimitive<Base64Binary>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							onBehalfOf: Reference? = nil,
							sigFormat: FHIRPrimitive<FHIRString>? = nil,
							targetFormat: FHIRPrimitive<FHIRString>? = nil,
							type: [Coding],
							when: FHIRPrimitive<Instant>,
							who: Reference)
	{
		self.init(type: type, when: when, who: who)
		self.data = data
		self.`extension` = `extension`
		self.id = id
		self.onBehalfOf = onBehalfOf
		self.sigFormat = sigFormat
		self.targetFormat = targetFormat
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case data; case _data
		case onBehalfOf
		case sigFormat; case _sigFormat
		case targetFormat; case _targetFormat
		case type
		case when; case _when
		case who
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.data = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.sigFormat = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sigFormat, auxiliaryKey: ._sigFormat)
		self.targetFormat = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetFormat, auxiliaryKey: ._targetFormat)
		self.type = try [Coding](from: _container, forKey: .type)
		self.when = try FHIRPrimitive<Instant>(from: _container, forKey: .when, auxiliaryKey: ._when)
		self.who = try Reference(from: _container, forKey: .who)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try sigFormat?.encode(on: &_container, forKey: .sigFormat, auxiliaryKey: ._sigFormat)
		try targetFormat?.encode(on: &_container, forKey: .targetFormat, auxiliaryKey: ._targetFormat)
		try type.encode(on: &_container, forKey: .type)
		try when.encode(on: &_container, forKey: .when, auxiliaryKey: ._when)
		try who.encode(on: &_container, forKey: .who)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Signature else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return data == _other.data
		    && onBehalfOf == _other.onBehalfOf
		    && sigFormat == _other.sigFormat
		    && targetFormat == _other.targetFormat
		    && type == _other.type
		    && when == _other.when
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(data)
		hasher.combine(onBehalfOf)
		hasher.combine(sigFormat)
		hasher.combine(targetFormat)
		hasher.combine(type)
		hasher.combine(when)
		hasher.combine(who)
	}
}
