//
//  Signature.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Signature)
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
 A digital Signature - XML DigSig, JWT, Graphical image of signature, etc..
 
 A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
 graphical image representing a hand-written signature, or a signature process. Different signature approaches have
 different utilities.
 */
public struct Signature: Element {
	
	/// All possible types for "onBehalfOf[x]"
	public enum OnBehalfOfX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "who[x]"
	public enum WhoX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// The actual signature content (XML DigSig. JWT, picture, etc.)
	public var blob: FHIRPrimitive<Base64Binary>?
	
	/// The technical format of the signature
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The party represented
	/// One of `onBehalfOf[x]`
	public var onBehalfOf: OnBehalfOfX?
	
	/// Indication of the reason the entity signed the object(s)
	public var type: [Coding]
	
	/// When the signature was created
	public var when: FHIRPrimitive<Instant>
	
	/// Who signed
	/// One of `who[x]`
	public var who: WhoX
	
	/// Designated initializer
	public init(
		blob: FHIRPrimitive<Base64Binary>? = nil,
		contentType: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		onBehalfOf: OnBehalfOfX? = nil,
		type: [Coding],
		when: FHIRPrimitive<Instant>,
		who: WhoX
	) {
		self.blob = blob
		self.contentType = contentType
		self.`extension` = `extension`
		self.id = id
		self.onBehalfOf = onBehalfOf
		self.type = type
		self.when = when
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case blob; case _blob
		case contentType; case _contentType
		case `extension` = "extension"
		case id; case _id
		case onBehalfOfReference
		case onBehalfOfUri; case _onBehalfOfUri
		case type
		case when; case _when
		case whoReference
		case whoUri; case _whoUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.blob = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .blob, auxiliaryKey: ._blob)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.onBehalfOf = try Self._decodeOnBehalfOf(from: _container)
		self.type = try [Coding](from: _container, forKey: .type)
		self.when = try FHIRPrimitive<Instant>(from: _container, forKey: .when, auxiliaryKey: ._when)
		self.who = try Self._decodeWho(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try blob?.encode(on: &_container, forKey: .blob, auxiliaryKey: ._blob)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = onBehalfOf {
		switch _enum {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .onBehalfOfReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .onBehalfOfUri, auxiliaryKey: ._onBehalfOfUri)
		}
		}
		try type.encode(on: &_container, forKey: .type)
		try when.encode(on: &_container, forKey: .when, auxiliaryKey: ._when)
		
		switch who {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .whoReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .whoUri, auxiliaryKey: ._whoUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOnBehalfOf(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OnBehalfOfX? {
		var _t_onBehalfOf: OnBehalfOfX? = nil
		if let onBehalfOfReference = try Reference(from: _container, forKeyIfPresent: .onBehalfOfReference) {
			_t_onBehalfOf = .reference(onBehalfOfReference)
		}
		if let onBehalfOfUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .onBehalfOfUri, auxiliaryKey: ._onBehalfOfUri) {
			if _t_onBehalfOf != nil {
				throw DecodingError.dataCorruptedError(forKey: .onBehalfOfUri, in: _container, debugDescription: "More than one value provided for \"onBehalfOf\"")
			}
			_t_onBehalfOf = .uri(onBehalfOfUri)
		}
		return _t_onBehalfOf
	}
	
	private static func _decodeWho(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> WhoX {
		var _t_who: WhoX? = nil
		if let whoReference = try Reference(from: _container, forKeyIfPresent: .whoReference) {
			_t_who = .reference(whoReference)
		}
		if let whoUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .whoUri, auxiliaryKey: ._whoUri) {
			if _t_who != nil {
				throw DecodingError.dataCorruptedError(forKey: .whoUri, in: _container, debugDescription: "More than one value provided for \"who\"")
			}
			_t_who = .uri(whoUri)
		}
		guard let _t_who else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.whoUri)
			throw DecodingError.valueNotFound(WhoX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"who\" but have none"))
		}
		return _t_who
	}
}
