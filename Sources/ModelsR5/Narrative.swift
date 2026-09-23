//
//  Narrative.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Narrative)
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
 Human-readable summary of the resource (essential clinical and business information).
 
 A human-readable summary of the resource conveying the essential clinical and business information for the resource.
 */
public struct Narrative: DataType {
	
	/// Limited xhtml content
	public var div: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The status of the narrative - whether it's entirely generated (from just the defined data or the extensions
	/// too), or whether a human authored it and it may contain additional data.
	public var status: FHIRPrimitive<NarrativeStatus>
	
	/// Designated initializer
	public init(
		div: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<NarrativeStatus>
	) {
		self.div = div
		self.`extension` = `extension`
		self.id = id
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case div; case _div
		case `extension` = "extension"
		case id; case _id
		case status; case _status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.div = try FHIRPrimitive<FHIRString>(from: _container, forKey: .div, auxiliaryKey: ._div)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.status = try FHIRPrimitive<NarrativeStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try div.encode(on: &_container, forKey: .div, auxiliaryKey: ._div)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}
