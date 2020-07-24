//
//  Period.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Period)
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
 Time range defined by start and end date/time.
 
 A time period defined by a start and end date and optionally time.
 */
open class Period: Element {
	
	/// Starting time with inclusive boundary
	public var start: FHIRPrimitive<DateTime>?
	
	/// End time with inclusive boundary, if not ongoing
	public var end: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							end: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							start: FHIRPrimitive<DateTime>? = nil)
	{
		self.init()
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.start = start
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case end; case _end
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.end = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.start = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Period else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return end == _other.end
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(end)
		hasher.combine(start)
	}
}
