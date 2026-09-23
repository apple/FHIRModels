//
//  DocumentManifest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DocumentManifest)
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
 A manifest that defines a set of documents.
 */
public struct DocumentManifest: DomainResource {
	
	public static let resourceType: ResourceType = .documentManifest
	
	/// Who and/or what authored the manifest
	public var author: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The items included
	public var content: [DocumentManifestContent]
	
	/// When this document manifest created
	public var created: FHIRPrimitive<DateTime>?
	
	/// Human-readable description (title)
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Other identifiers for the manifest
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Unique Identifier for the set of documents
	public var masterIdentifier: Identifier?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Intended to get notified about this set of documents
	public var recipient: [Reference]?
	
	/// Related things
	public var related: [DocumentManifestRelated]?
	
	/// The source system/application/software
	public var source: FHIRPrimitive<FHIRURI>?
	
	/// The status of this document manifest.
	/// Restricted to: ['current', 'superseded', 'entered-in-error']
	public var status: FHIRPrimitive<DocumentReferenceStatus>
	
	/// The subject of the set of documents
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of document set
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		author: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		content: [DocumentManifestContent],
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
		self.author = author
		self.contained = contained
		self.content = content
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
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case contained
		case content
		case created; case _created
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case masterIdentifier
		case meta
		case modifierExtension
		case recipient
		case related
		case source; case _source
		case status; case _status
		case subject
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try [DocumentManifestContent](from: _container, forKey: .content)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.masterIdentifier = try Identifier(from: _container, forKeyIfPresent: .masterIdentifier)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.related = try [DocumentManifestRelated](from: _container, forKeyIfPresent: .related)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.status = try FHIRPrimitive<DocumentReferenceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try contained?.encode(on: &_container, forKey: .contained)
		try content.encode(on: &_container, forKey: .content)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try masterIdentifier?.encode(on: &_container, forKey: .masterIdentifier)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try related?.encode(on: &_container, forKey: .related)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The items included.
 
 The list of Documents included in the manifest.
 */
public struct DocumentManifestContent: BackboneElement {
	
	/// All possible types for "p[x]"
	public enum PX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Contents of this set of documents
	/// One of `p[x]`
	public var p: PX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		p: PX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.p = p
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case pAttachment
		case pReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.p = try Self._decodeP(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch p {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .pAttachment)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .pReference)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeP(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PX {
		var _t_p: PX? = nil
		if let pAttachment = try Attachment(from: _container, forKeyIfPresent: .pAttachment) {
			_t_p = .attachment(pAttachment)
		}
		if let pReference = try Reference(from: _container, forKeyIfPresent: .pReference) {
			if _t_p != nil {
				throw DecodingError.dataCorruptedError(forKey: .pReference, in: _container, debugDescription: "More than one value provided for \"p\"")
			}
			_t_p = .reference(pReference)
		}
		guard let _t_p else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.pReference)
			throw DecodingError.valueNotFound(PX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"p\" but have none"))
		}
		return _t_p
	}
}

/**
 Related things.
 
 Related identifiers or resources associated with the DocumentManifest.
 */
public struct DocumentManifestRelated: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers of things that are related
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Related Resource
	public var ref: Reference?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		ref: Reference? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.ref = ref
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case ref
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.ref = try Reference(from: _container, forKeyIfPresent: .ref)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try ref?.encode(on: &_container, forKey: .ref)
	}
}
