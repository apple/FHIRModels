//
//  Narrative.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Narrative)
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
 A human-readable formatted text, including images.
 */
open class Narrative: Element {
	
	/// The status of the narrative - whether it's entirely generated (from just the defined data or the extensions
	/// too), or whether a human authored it and it may contain additional data.
	/// Restricted to: ['generated', 'extensions', 'additional', 'empty']
	public var status: FHIRPrimitive<NarrativeStatus>
	
	/// Limited xhtml content
	public var div: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(div: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<NarrativeStatus>) {
		self.div = div
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							div: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<NarrativeStatus>)
	{
		self.init(div: div, status: status)
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case div; case _div
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.div = try FHIRPrimitive<FHIRString>(from: _container, forKey: .div, auxiliaryKey: ._div)
		self.status = try FHIRPrimitive<NarrativeStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try div.encode(on: &_container, forKey: .div, auxiliaryKey: ._div)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Narrative else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return div == _other.div
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(div)
		hasher.combine(status)
	}
}
