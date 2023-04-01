//
//  DocumentManifest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/DocumentManifest)
//  Copyright 2023 Apple Inc.
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
 A list that defines a set of documents.
 
 A collection of documents compiled for a purpose together with metadata that applies to the collection.
 */
open class DocumentManifest: DomainResource {
	
	override open class var resourceType: ResourceType { return .documentManifest }
	
	/// Unique Identifier for the set of documents
	public var masterIdentifier: Identifier?
	
	/// Other identifiers for the manifest
	public var identifier: [Identifier]?
	
	/// The status of this document manifest.
	public var status: FHIRPrimitive<DocumentReferenceStatus>
	
	/// Kind of document set
	public var type: CodeableConcept?
	
	/// The subject of the set of documents
	public var subject: Reference?
	
	/// When this document manifest created
	public var created: FHIRPrimitive<DateTime>?
	
	/// Who and/or what authored the DocumentManifest
	public var author: [Reference]?
	
	/// Intended to get notified about this set of documents
	public var recipient: [Reference]?
	
	/// The source system/application/software
	public var source: FHIRPrimitive<FHIRURI>?
	
	/// Human-readable description (title)
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Items in manifest
	public var content: [Reference]
	
	/// Related things
	public var related: [DocumentManifestRelated]?
	
	/// Designated initializer taking all required properties
	public init(content: [Reference], status: FHIRPrimitive<DocumentReferenceStatus>) {
		self.content = content
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		author: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		content: [Reference],
		created: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		masterIdentifier: Identifier? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		recipient: [Reference]? = nil,
		related: [DocumentManifestRelated]? = nil,
		source: FHIRPrimitive<FHIRURI>? = nil,
		status: FHIRPrimitive<DocumentReferenceStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(content: content, status: status)
		self.author = author
		self.contained = contained
		self.created = created
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.masterIdentifier = masterIdentifier
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.recipient = recipient
		self.related = related
		self.source = source
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case content
		case created; case _created
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case masterIdentifier
		case recipient
		case related
		case source; case _source
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.content = try [Reference](from: _container, forKey: .content)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.masterIdentifier = try Identifier(from: _container, forKeyIfPresent: .masterIdentifier)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.related = try [DocumentManifestRelated](from: _container, forKeyIfPresent: .related)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.status = try FHIRPrimitive<DocumentReferenceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try content.encode(on: &_container, forKey: .content)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try masterIdentifier?.encode(on: &_container, forKey: .masterIdentifier)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try related?.encode(on: &_container, forKey: .related)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentManifest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && content == _other.content
		    && created == _other.created
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && masterIdentifier == _other.masterIdentifier
		    && recipient == _other.recipient
		    && related == _other.related
		    && source == _other.source
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(content)
		hasher.combine(created)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(masterIdentifier)
		hasher.combine(recipient)
		hasher.combine(related)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Related things.
 
 Related identifiers or resources associated with the DocumentManifest.
 */
open class DocumentManifestRelated: BackboneElement {
	
	/// Identifiers of things that are related
	public var identifier: Identifier?
	
	/// Related Resource
	public var ref: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		ref: Reference? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.ref = ref
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case ref
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.ref = try Reference(from: _container, forKeyIfPresent: .ref)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ref?.encode(on: &_container, forKey: .ref)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentManifestRelated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && ref == _other.ref
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(ref)
	}
}
