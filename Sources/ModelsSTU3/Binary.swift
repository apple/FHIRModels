//
//  Binary.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Binary)
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
 Pure binary content defined by a format other than FHIR.
 
 A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
 */
open class Binary: Resource {
	
	override open class var resourceType: ResourceType { return .binary }
	
	/// MimeType of the binary content
	public var contentType: FHIRPrimitive<FHIRString>
	
	/// Access Control Management
	public var securityContext: Reference?
	
	/// The actual content
	public var content: FHIRPrimitive<Base64Binary>
	
	/// Designated initializer taking all required properties
	public init(content: FHIRPrimitive<Base64Binary>, contentType: FHIRPrimitive<FHIRString>) {
		self.content = content
		self.contentType = contentType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							content: FHIRPrimitive<Base64Binary>,
							contentType: FHIRPrimitive<FHIRString>,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							securityContext: Reference? = nil)
	{
		self.init(content: content, contentType: contentType)
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.securityContext = securityContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case content; case _content
		case contentType; case _contentType
		case securityContext
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.content = try FHIRPrimitive<Base64Binary>(from: _container, forKey: .content, auxiliaryKey: ._content)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKey: .contentType, auxiliaryKey: ._contentType)
		self.securityContext = try Reference(from: _container, forKeyIfPresent: .securityContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try content.encode(on: &_container, forKey: .content, auxiliaryKey: ._content)
		try contentType.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try securityContext?.encode(on: &_container, forKey: .securityContext)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Binary else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
		    && contentType == _other.contentType
		    && securityContext == _other.securityContext
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
		hasher.combine(contentType)
		hasher.combine(securityContext)
	}
}
