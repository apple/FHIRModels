//
//  RelativeTime.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/RelativeTime)
//  Copyright 2024 Apple Inc.
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
 A point in time or an interval of time relative to an event.
 
 RelativeTime is used to express a point in time or an interval of time relative to an event defined in data types other
 than dateTime.
 */
open class RelativeTime: BackboneType {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Hashable {
		case duration(Duration)
		case range(Range)
	}
	
	/// The specific event occurrence or resource context used as a base point (reference point) in time
	public var contextReference: Reference?
	
	/// The type of event used as a base point
	public var contextDefinition: FHIRPrimitive<Canonical>?
	
	/// Path to the element defining the point in time
	public var contextPath: FHIRPrimitive<FHIRString>?
	
	/// Coded representation of the event used as a base point (reference point) in time
	public var contextCode: CodeableConcept?
	
	/// An offset or offset range before (negative values) or after (positive values) the event
	/// One of `offset[x]`
	public var offset: OffsetX?
	
	/// Free-text description
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case offsetDuration
		case offsetRange
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contextCode = try CodeableConcept(from: _container, forKeyIfPresent: .contextCode)
		self.contextDefinition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .contextDefinition, auxiliaryKey: ._contextDefinition)
		self.contextPath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contextPath, auxiliaryKey: ._contextPath)
		self.contextReference = try Reference(from: _container, forKeyIfPresent: .contextReference)
		var _t_offset: OffsetX? = nil
		if let offsetDuration = try Duration(from: _container, forKeyIfPresent: .offsetDuration) {
			if _t_offset != nil {
				throw DecodingError.dataCorruptedError(forKey: .offsetDuration, in: _container, debugDescription: "More than one value provided for \"offset\"")
			}
			_t_offset = .duration(offsetDuration)
		}
		if let offsetRange = try Range(from: _container, forKeyIfPresent: .offsetRange) {
			if _t_offset != nil {
				throw DecodingError.dataCorruptedError(forKey: .offsetRange, in: _container, debugDescription: "More than one value provided for \"offset\"")
			}
			_t_offset = .range(offsetRange)
		}
		self.offset = _t_offset
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contextCode?.encode(on: &_container, forKey: .contextCode)
		try contextDefinition?.encode(on: &_container, forKey: .contextDefinition, auxiliaryKey: ._contextDefinition)
		try contextPath?.encode(on: &_container, forKey: .contextPath, auxiliaryKey: ._contextPath)
		try contextReference?.encode(on: &_container, forKey: .contextReference)
		if let _enum = offset {
			switch _enum {
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .offsetDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .offsetRange)
			}
		}
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RelativeTime else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contextCode == _other.contextCode
		    && contextDefinition == _other.contextDefinition
		    && contextPath == _other.contextPath
		    && contextReference == _other.contextReference
		    && offset == _other.offset
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contextCode)
		hasher.combine(contextDefinition)
		hasher.combine(contextPath)
		hasher.combine(contextReference)
		hasher.combine(offset)
		hasher.combine(text)
	}
}
