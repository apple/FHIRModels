//
//  Basic.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Basic)
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
 Resource for non-supported content.
 
 Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing
 resource, and custom resources not appropriate for inclusion in the FHIR specification.
 */
open class Basic: DomainResource {
	
	override open class var resourceType: ResourceType { return .basic }
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Kind of Resource
	public var code: CodeableConcept
	
	/// Identifies the focus of this resource
	public var subject: Reference?
	
	/// When created
	public var created: FHIRPrimitive<FHIRDate>?
	
	/// Who created
	public var author: Reference?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: Reference? = nil,
							code: CodeableConcept,
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<FHIRDate>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init(code: code)
		self.author = author
		self.contained = contained
		self.created = created
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case code
		case created; case _created
		case identifier
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.created = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try code.encode(on: &_container, forKey: .code)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Basic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && code == _other.code
		    && created == _other.created
		    && identifier == _other.identifier
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(code)
		hasher.combine(created)
		hasher.combine(identifier)
		hasher.combine(subject)
	}
}
