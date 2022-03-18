//
//  RelatedArtifact.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/RelatedArtifact)
//  Copyright 2022 Apple Inc.
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
open class RelatedArtifact: DataType {
	
	/// The type of relationship to the related artifact.
	public var type: FHIRPrimitive<RelatedArtifactType>
	
	/// Additional classifiers
	public var classifier: [CodeableConcept]?
	
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
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<RelatedArtifactType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		citation: FHIRPrimitive<FHIRString>? = nil,
		classifier: [CodeableConcept]? = nil,
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
		self.citation = citation
		self.classifier = classifier
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
		case citation; case _citation
		case classifier
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
		self.citation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citation, auxiliaryKey: ._citation)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
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
		try citation?.encode(on: &_container, forKey: .citation, auxiliaryKey: ._citation)
		try classifier?.encode(on: &_container, forKey: .classifier)
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
		return citation == _other.citation
		    && classifier == _other.classifier
		    && display == _other.display
		    && document == _other.document
		    && label == _other.label
		    && resource == _other.resource
		    && resourceReference == _other.resourceReference
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(citation)
		hasher.combine(classifier)
		hasher.combine(display)
		hasher.combine(document)
		hasher.combine(label)
		hasher.combine(resource)
		hasher.combine(resourceReference)
		hasher.combine(type)
	}
}
