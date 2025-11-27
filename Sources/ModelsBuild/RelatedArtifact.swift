//
//  RelatedArtifact.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/RelatedArtifact)
//  Copyright 2025 Apple Inc.
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
 
 Related artifacts such as dependencies, components, additional documentation, justification, or bibliographic
 references.
 */
open class RelatedArtifact: DataType {
	
	/// All possible types for "artifact[x]"
	public enum ArtifactX: Hashable {
		case attachment(Attachment)
		case canonical(FHIRPrimitive<Canonical>)
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// The type of relationship to the related artifact.
	public var type: FHIRPrimitive<RelatedArtifactType>
	
	/// Short label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Brief description of the related artifact
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Bibliographic citation for the artifact
	public var citation: FHIRPrimitive<FHIRString>?
	
	/// What document is being referenced
	public var document: Attachment?
	
	/// What artifact is being referenced
	public var resource: FHIRPrimitive<Canonical>?
	
	/// What artifact, if not a conformance resource
	public var resourceReference: Reference?
	
	/// What document, citation, artifact, or resource is being referenced
	/// One of `artifact[x]`
	public var artifact: ArtifactX?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<RelatedArtifactType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		artifact: ArtifactX? = nil,
		citation: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		document: Attachment? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		resource: FHIRPrimitive<Canonical>? = nil,
		resourceReference: Reference? = nil,
		type: FHIRPrimitive<RelatedArtifactType>
	) {
		self.init(type: type)
		self.artifact = artifact
		self.citation = citation
		self.display = display
		self.document = document
		self.`extension` = `extension`
		self.id = id
		self.label = label
		self.resource = resource
		self.resourceReference = resourceReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case artifactAttachment
		case artifactCanonical; case _artifactCanonical
		case artifactMarkdown; case _artifactMarkdown
		case artifactReference
		case citation; case _citation
		case display; case _display
		case document
		case label; case _label
		case resource; case _resource
		case resourceReference
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_artifact: ArtifactX? = nil
		if let artifactMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .artifactMarkdown, auxiliaryKey: ._artifactMarkdown) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactMarkdown, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .markdown(artifactMarkdown)
		}
		if let artifactAttachment = try Attachment(from: _container, forKeyIfPresent: .artifactAttachment) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactAttachment, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .attachment(artifactAttachment)
		}
		if let artifactCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .artifactCanonical, auxiliaryKey: ._artifactCanonical) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactCanonical, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .canonical(artifactCanonical)
		}
		if let artifactReference = try Reference(from: _container, forKeyIfPresent: .artifactReference) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactReference, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .reference(artifactReference)
		}
		self.artifact = _t_artifact
		self.citation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citation, auxiliaryKey: ._citation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.document = try Attachment(from: _container, forKeyIfPresent: .document)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.resource = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.resourceReference = try Reference(from: _container, forKeyIfPresent: .resourceReference)
		self.type = try FHIRPrimitive<RelatedArtifactType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = artifact {
			switch _enum {
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .artifactMarkdown, auxiliaryKey: ._artifactMarkdown)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .artifactAttachment)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .artifactCanonical, auxiliaryKey: ._artifactCanonical)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .artifactReference)
			}
		}
		try citation?.encode(on: &_container, forKey: .citation, auxiliaryKey: ._citation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try document?.encode(on: &_container, forKey: .document)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try resourceReference?.encode(on: &_container, forKey: .resourceReference)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RelatedArtifact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return artifact == _other.artifact
		    && citation == _other.citation
		    && display == _other.display
		    && document == _other.document
		    && label == _other.label
		    && resource == _other.resource
		    && resourceReference == _other.resourceReference
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(artifact)
		hasher.combine(citation)
		hasher.combine(display)
		hasher.combine(document)
		hasher.combine(label)
		hasher.combine(resource)
		hasher.combine(resourceReference)
		hasher.combine(type)
	}
}
