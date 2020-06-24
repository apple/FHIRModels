//
//  Meta.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Meta)
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
 Metadata about a resource.
 
 The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the
 content may not always be associated with version changes to the resource.
 */
open class Meta: Element {
	
	/// Version specific identifier
	public var versionId: FHIRPrimitive<FHIRString>?
	
	/// When the resource version last changed
	public var lastUpdated: FHIRPrimitive<Instant>?
	
	/// Profiles this resource claims to conform to
	public var profile: [FHIRPrimitive<FHIRURI>]?
	
	/// Security Labels applied to this resource
	public var security: [Coding]?
	
	/// Tags applied to this resource
	public var tag: [Coding]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lastUpdated: FHIRPrimitive<Instant>? = nil,
							profile: [FHIRPrimitive<FHIRURI>]? = nil,
							security: [Coding]? = nil,
							tag: [Coding]? = nil,
							versionId: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.lastUpdated = lastUpdated
		self.profile = profile
		self.security = security
		self.tag = tag
		self.versionId = versionId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case lastUpdated; case _lastUpdated
		case profile; case _profile
		case security
		case tag
		case versionId; case _versionId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.lastUpdated = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .lastUpdated, auxiliaryKey: ._lastUpdated)
		self.profile = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.security = try [Coding](from: _container, forKeyIfPresent: .security)
		self.tag = try [Coding](from: _container, forKeyIfPresent: .tag)
		self.versionId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionId, auxiliaryKey: ._versionId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try lastUpdated?.encode(on: &_container, forKey: .lastUpdated, auxiliaryKey: ._lastUpdated)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try security?.encode(on: &_container, forKey: .security)
		try tag?.encode(on: &_container, forKey: .tag)
		try versionId?.encode(on: &_container, forKey: .versionId, auxiliaryKey: ._versionId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Meta else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return lastUpdated == _other.lastUpdated
		    && profile == _other.profile
		    && security == _other.security
		    && tag == _other.tag
		    && versionId == _other.versionId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(lastUpdated)
		hasher.combine(profile)
		hasher.combine(security)
		hasher.combine(tag)
		hasher.combine(versionId)
	}
}
