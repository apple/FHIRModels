//
//  ParameterDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ParameterDefinition)
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
 Definition of a parameter to a module.
 
 The parameters to the module. This collection specifies both the input and output parameters. Input parameters are
 provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
 */
open class ParameterDefinition: Element {
	
	/// Name used to access the parameter value
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Whether the parameter is input or output for the module.
	public var use: FHIRPrimitive<OperationParameterUse>
	
	/// Minimum cardinality
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Maximum cardinality (a number of *)
	public var max: FHIRPrimitive<FHIRString>?
	
	/// A brief description of the parameter
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// What type of value
	public var type: FHIRPrimitive<FHIRString>
	
	/// What profile the value is expected to be
	public var profile: Reference?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<FHIRString>, use: FHIRPrimitive<OperationParameterUse>) {
		self.type = type
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							max: FHIRPrimitive<FHIRString>? = nil,
							min: FHIRPrimitive<FHIRInteger>? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							profile: Reference? = nil,
							type: FHIRPrimitive<FHIRString>,
							use: FHIRPrimitive<OperationParameterUse>)
	{
		self.init(type: type, use: use)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.max = max
		self.min = min
		self.name = name
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case max; case _max
		case min; case _min
		case name; case _name
		case profile
		case type; case _type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<OperationParameterUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ParameterDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && max == _other.max
		    && min == _other.min
		    && name == _other.name
		    && profile == _other.profile
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(name)
		hasher.combine(profile)
		hasher.combine(type)
		hasher.combine(use)
	}
}
