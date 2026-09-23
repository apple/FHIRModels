//
//  RelatedArtifact.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/RelatedArtifact)
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
 Related artifacts for a knowledge resource.
 
 Related artifacts such as additional documentation, justification, or bibliographic references.
 */
public struct RelatedArtifact: Element {
	
	/// Bibliographic citation for the artifact
	public var citation: FHIRPrimitive<FHIRString>?
	
	/// Brief description of the related artifact
	public var display: FHIRPrimitive<FHIRString>?
	
	/// What document is being referenced
	public var document: Attachment?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What resource is being referenced
	public var resource: Reference?
	
	/// The type of relationship to the related artifact.
	public var type: FHIRPrimitive<RelatedArtifactType>
	
	/// Where the artifact can be accessed
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		citation: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		document: Attachment? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		resource: Reference? = nil,
		type: FHIRPrimitive<RelatedArtifactType>,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.citation = citation
		self.display = display
		self.document = document
		self.`extension` = `extension`
		self.id = id
		self.resource = resource
		self.type = type
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case citation; case _citation
		case display; case _display
		case document
		case `extension` = "extension"
		case id; case _id
		case resource
		case type; case _type
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.citation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citation, auxiliaryKey: ._citation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.document = try Attachment(from: _container, forKeyIfPresent: .document)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
		self.type = try FHIRPrimitive<RelatedArtifactType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try citation?.encode(on: &_container, forKey: .citation, auxiliaryKey: ._citation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try document?.encode(on: &_container, forKey: .document)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try resource?.encode(on: &_container, forKey: .resource)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}
