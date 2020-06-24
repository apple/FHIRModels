//
//  Signature.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Signature)
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
 A digital Signature - XML DigSig, JWT, Graphical image of signature, etc..
 
 A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
 graphical image representing a hand-written signature, or a signature process. Different Signature approaches have
 different utilities.
 */
open class Signature: Element {
	
	/// All possible types for "who[x]"
	public enum WhoX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Indication of the reason the entity signed the object(s)
	public var type: [Coding]
	
	/// When the signature was created
	public var when: FHIRPrimitive<Instant>
	
	/// Who signed the signature
	/// One of `who[x]`
	public var who: WhoX
	
	/// The technical format of the signature
	public var contentType: FHIRPrimitive<FHIRString>
	
	/// The actual signature content (XML DigSig. JWT, picture, etc.)
	public var blob: FHIRPrimitive<Base64Binary>
	
	/// Designated initializer taking all required properties
	public init(blob: FHIRPrimitive<Base64Binary>, contentType: FHIRPrimitive<FHIRString>, type: [Coding], when: FHIRPrimitive<Instant>, who: WhoX) {
		self.blob = blob
		self.contentType = contentType
		self.type = type
		self.when = when
		self.who = who
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							blob: FHIRPrimitive<Base64Binary>,
							contentType: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							type: [Coding],
							when: FHIRPrimitive<Instant>,
							who: WhoX)
	{
		self.init(blob: blob, contentType: contentType, type: type, when: when, who: who)
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case blob; case _blob
		case contentType; case _contentType
		case type
		case when; case _when
		case whoReference
		case whoUri; case _whoUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.whoReference) || _container.contains(CodingKeys.whoUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.whoReference, CodingKeys.whoUri], debugDescription: "Must have at least one value for \"who\" but have none"))
		}
		
		// Decode all our properties
		self.blob = try FHIRPrimitive<Base64Binary>(from: _container, forKey: .blob, auxiliaryKey: ._blob)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKey: .contentType, auxiliaryKey: ._contentType)
		self.type = try [Coding](from: _container, forKey: .type)
		self.when = try FHIRPrimitive<Instant>(from: _container, forKey: .when, auxiliaryKey: ._when)
		var _t_who: WhoX? = nil
		if let whoUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .whoUri, auxiliaryKey: ._whoUri) {
			if _t_who != nil {
				throw DecodingError.dataCorruptedError(forKey: .whoUri, in: _container, debugDescription: "More than one value provided for \"who\"")
			}
			_t_who = .uri(whoUri)
		}
		if let whoReference = try Reference(from: _container, forKeyIfPresent: .whoReference) {
			if _t_who != nil {
				throw DecodingError.dataCorruptedError(forKey: .whoReference, in: _container, debugDescription: "More than one value provided for \"who\"")
			}
			_t_who = .reference(whoReference)
		}
		self.who = _t_who!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try blob.encode(on: &_container, forKey: .blob, auxiliaryKey: ._blob)
		try contentType.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try type.encode(on: &_container, forKey: .type)
		try when.encode(on: &_container, forKey: .when, auxiliaryKey: ._when)
		
			switch who {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .whoUri, auxiliaryKey: ._whoUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .whoReference)
			}
		
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
		return blob == _other.blob
		    && contentType == _other.contentType
		    && type == _other.type
		    && when == _other.when
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(blob)
		hasher.combine(contentType)
		hasher.combine(type)
		hasher.combine(when)
		hasher.combine(who)
	}
}
