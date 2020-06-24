//
//  Coding.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Coding)
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
 A reference to a code defined by a terminology system.
 */
open class Coding: Element {
	
	/// Identity of the terminology system
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// Version of the system - if relevant
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Symbol in syntax defined by the system
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Representation defined by the system
	public var display: FHIRPrimitive<FHIRString>?
	
	/// If this coding was chosen directly by the user
	public var userSelected: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							system: FHIRPrimitive<FHIRURI>? = nil,
							userSelected: FHIRPrimitive<FHIRBool>? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.system = system
		self.userSelected = userSelected
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case system; case _system
		case userSelected; case _userSelected
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.userSelected = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .userSelected, auxiliaryKey: ._userSelected)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try userSelected?.encode(on: &_container, forKey: .userSelected, auxiliaryKey: ._userSelected)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Coding else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && display == _other.display
		    && system == _other.system
		    && userSelected == _other.userSelected
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(system)
		hasher.combine(userSelected)
		hasher.combine(version)
	}
}
