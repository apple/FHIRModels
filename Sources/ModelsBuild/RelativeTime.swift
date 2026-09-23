//
//  RelativeTime.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/RelativeTime)
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
 Expresses a time or time period as relative to the time of an event.
 
 RelativeTime expresses a time or time period as relative to the time of an event defined in data types other than
 dateTime.
 */
public struct RelativeTime: BackboneType {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Equatable, Hashable, Sendable {
		indirect case duration(Duration)
		indirect case range(Range)
	}
	
	/// Coded representation of the event used as a base point (reference point) in time
	public var contextCode: CodeableConcept?
	
	/// The type of event used as a base point
	public var contextDefinition: FHIRPrimitive<Canonical>?
	
	/// Path to the element defining the basis for the relative time
	public var contextPath: FHIRPrimitive<FHIRString>?
	
	/// The specific event occurrence or resource context used as a base point (reference point) in time
	public var contextReference: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// An offset or offset range before (negative values) or after (positive values) the event
	/// One of `offset[x]`
	public var offset: OffsetX?
	
	/// Free-text description
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contextCode: CodeableConcept? = nil,
		contextDefinition: FHIRPrimitive<Canonical>? = nil,
		contextPath: FHIRPrimitive<FHIRString>? = nil,
		contextReference: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		offset: OffsetX? = nil,
		text: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contextCode = contextCode
		self.contextDefinition = contextDefinition
		self.contextPath = contextPath
		self.contextReference = contextReference
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.offset = offset
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contextCode
		case contextDefinition; case _contextDefinition
		case contextPath; case _contextPath
		case contextReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case offsetDuration
		case offsetRange
		case text; case _text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contextCode = try CodeableConcept(from: _container, forKeyIfPresent: .contextCode)
		self.contextDefinition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .contextDefinition, auxiliaryKey: ._contextDefinition)
		self.contextPath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contextPath, auxiliaryKey: ._contextPath)
		self.contextReference = try Reference(from: _container, forKeyIfPresent: .contextReference)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.offset = try Self._decodeOffset(from: _container)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contextCode?.encode(on: &_container, forKey: .contextCode)
		try contextDefinition?.encode(on: &_container, forKey: .contextDefinition, auxiliaryKey: ._contextDefinition)
		try contextPath?.encode(on: &_container, forKey: .contextPath, auxiliaryKey: ._contextPath)
		try contextReference?.encode(on: &_container, forKey: .contextReference)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = offset {
		switch _enum {
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .offsetDuration)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .offsetRange)
		}
		}
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOffset(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OffsetX? {
		var _t_offset: OffsetX? = nil
		if let offsetDuration = try Duration(from: _container, forKeyIfPresent: .offsetDuration) {
			_t_offset = .duration(offsetDuration)
		}
		if let offsetRange = try Range(from: _container, forKeyIfPresent: .offsetRange) {
			if _t_offset != nil {
				throw DecodingError.dataCorruptedError(forKey: .offsetRange, in: _container, debugDescription: "More than one value provided for \"offset\"")
			}
			_t_offset = .range(offsetRange)
		}
		return _t_offset
	}
}
