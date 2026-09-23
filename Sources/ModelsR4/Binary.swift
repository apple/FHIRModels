//
//  Binary.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Binary)
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
 Pure binary content defined by a format other than FHIR.
 
 A resource that represents the data of a single raw artifact as digital content accessible in its native format.  A
 Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
 */
public struct Binary: Resource {
	
	public static let resourceType: ResourceType = .binary
	
	/// MimeType of the binary content
	public var contentType: FHIRPrimitive<FHIRString>
	
	/// The actual content
	public var data: FHIRPrimitive<Base64Binary>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Identifies another resource to use as proxy when enforcing access control
	public var securityContext: Reference?
	
	/// Designated initializer
	public init(
		contentType: FHIRPrimitive<FHIRString>,
		data: FHIRPrimitive<Base64Binary>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		securityContext: Reference? = nil
	) {
		self.contentType = contentType
		self.data = data
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.securityContext = securityContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contentType; case _contentType
		case data; case _data
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case securityContext
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKey: .contentType, auxiliaryKey: ._contentType)
		self.data = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .data, auxiliaryKey: ._data)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.securityContext = try Reference(from: _container, forKeyIfPresent: .securityContext)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contentType.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try data?.encode(on: &_container, forKey: .data, auxiliaryKey: ._data)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try securityContext?.encode(on: &_container, forKey: .securityContext)
	}
}
