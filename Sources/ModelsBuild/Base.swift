//
//  Base.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Base)
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
 Base for all types and resources.
 
 Base definition for all types defined in FHIR type system.
 */
open class Base: FHIRType {
	
	/// Designated initializer taking all required properties
	public init() {
	}
	
	// MARK: - Codable
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
	}
	
	// MARK: - Equatable & Hashable
	
	public static func ==(l: Base, r: Base) -> Bool {
		return l.isEqual(to: r)
	}
	
	public func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Base else {
			return false
		}
		guard type(of: self) == type(of: _other) else {
			return false
		}
		return true
	}
	
	public func hash(into hasher: inout Hasher) {
	}
}
