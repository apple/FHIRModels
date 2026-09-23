//
//  Meta.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Meta)
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
 Metadata about a resource.
 
 The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the
 content might not always be associated with version changes to the resource.
 */
public struct Meta: DataType {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// When the resource version last changed
	public var lastUpdated: FHIRPrimitive<Instant>?
	
	/// Profiles this resource claims to conform to
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// Security Labels applied to this resource
	public var security: [Coding]?
	
	/// Identifies where the resource comes from
	public var source: FHIRPrimitive<FHIRURI>?
	
	/// Tags applied to this resource
	public var tag: [Coding]?
	
	/// Version specific identifier
	public var versionId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lastUpdated: FHIRPrimitive<Instant>? = nil,
		profile: [FHIRPrimitive<Canonical>]? = nil,
		security: [Coding]? = nil,
		source: FHIRPrimitive<FHIRURI>? = nil,
		tag: [Coding]? = nil,
		versionId: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.lastUpdated = lastUpdated
		self.profile = profile
		self.security = security
		self.source = source
		self.tag = tag
		self.versionId = versionId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case lastUpdated; case _lastUpdated
		case profile; case _profile
		case security
		case source; case _source
		case tag
		case versionId; case _versionId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lastUpdated = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .lastUpdated, auxiliaryKey: ._lastUpdated)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.security = try [Coding](from: _container, forKeyIfPresent: .security)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.tag = try [Coding](from: _container, forKeyIfPresent: .tag)
		self.versionId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionId, auxiliaryKey: ._versionId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lastUpdated?.encode(on: &_container, forKey: .lastUpdated, auxiliaryKey: ._lastUpdated)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try security?.encode(on: &_container, forKey: .security)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try tag?.encode(on: &_container, forKey: .tag)
		try versionId?.encode(on: &_container, forKey: .versionId, auxiliaryKey: ._versionId)
	}
}
