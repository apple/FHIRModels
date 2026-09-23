//
//  ArtifactAssessment.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ArtifactAssessment)
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
 Adds metadata-supported comments, classifiers or ratings related to a Resource.
 
 This Resource provides one or more comments, classifiers or ratings about a Resource and supports attribution and
 rights management metadata for the added content.
 */
public struct ArtifactAssessment: DomainResource {
	
	public static let resourceType: ResourceType = .artifactAssessment
	
	/// All possible types for "artifact[x]"
	public enum ArtifactX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// When the artifact assessment was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// The artifact assessed, commented upon or rated
	/// One of `artifact[x]`
	public var artifact: ArtifactX
	
	/// How to cite the comment or rating
	public var citeAs: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Comment, classifier, or rating content
	public var content: [ArtifactAssessmentContent]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Indicates the disposition of the responsible party to the comment or change request.
	public var disposition: FHIRPrimitive<ArtifactAssessmentDisposition>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the artifact assessment
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the artifact assessment was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Relationship to other Resources
	public var relatesTo: [ArtifactAssessmentRelatesTo]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// A label for use in displaying and selecting the artifact assessment
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Indicates the workflow status of the comment or change request.
	public var workflowStatus: FHIRPrimitive<ArtifactAssessmentWorkflowStatus>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		artifact: ArtifactX,
		citeAs: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		content: [ArtifactAssessmentContent]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		disposition: FHIRPrimitive<ArtifactAssessmentDisposition>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		relatesTo: [ArtifactAssessmentRelatesTo]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		workflowStatus: FHIRPrimitive<ArtifactAssessmentWorkflowStatus>? = nil
	) {
		self.approvalDate = approvalDate
		self.artifact = artifact
		self.citeAs = citeAs
		self.contained = contained
		self.content = content
		self.copyright = copyright
		self.date = date
		self.disposition = disposition
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.relatesTo = relatesTo
		self.text = text
		self.title = title
		self.workflowStatus = workflowStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case artifactCanonical; case _artifactCanonical
		case artifactReference
		case artifactUri; case _artifactUri
		case citeAs; case _citeAs
		case contained
		case content
		case copyright; case _copyright
		case date; case _date
		case disposition; case _disposition
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
		case relatesTo
		case text
		case title; case _title
		case workflowStatus; case _workflowStatus
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.artifact = try Self._decodeArtifact(from: _container)
		self.citeAs = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAs, auxiliaryKey: ._citeAs)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try [ArtifactAssessmentContent](from: _container, forKeyIfPresent: .content)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.disposition = try FHIRPrimitive<ArtifactAssessmentDisposition>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatesTo = try [ArtifactAssessmentRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.workflowStatus = try FHIRPrimitive<ArtifactAssessmentWorkflowStatus>(from: _container, forKeyIfPresent: .workflowStatus, auxiliaryKey: ._workflowStatus)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		
		switch artifact {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .artifactCanonical, auxiliaryKey: ._artifactCanonical)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .artifactReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .artifactUri, auxiliaryKey: ._artifactUri)
		}
		
		try citeAs?.encode(on: &_container, forKey: .citeAs, auxiliaryKey: ._citeAs)
		try contained?.encode(on: &_container, forKey: .contained)
		try content?.encode(on: &_container, forKey: .content)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try workflowStatus?.encode(on: &_container, forKey: .workflowStatus, auxiliaryKey: ._workflowStatus)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeArtifact(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ArtifactX {
		var _t_artifact: ArtifactX? = nil
		if let artifactCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .artifactCanonical, auxiliaryKey: ._artifactCanonical) {
			_t_artifact = .canonical(artifactCanonical)
		}
		if let artifactReference = try Reference(from: _container, forKeyIfPresent: .artifactReference) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactReference, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .reference(artifactReference)
		}
		if let artifactUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .artifactUri, auxiliaryKey: ._artifactUri) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactUri, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .uri(artifactUri)
		}
		guard let _t_artifact else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.artifactUri)
			throw DecodingError.valueNotFound(ArtifactX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"artifact\" but have none"))
		}
		return _t_artifact
	}
}

/**
 Comment, classifier, or rating content.
 
 A component comment, classifier, or rating of the artifact.
 */
public struct ArtifactAssessmentContent: BackboneElement {
	
	/// Who authored the content
	public var author: [Reference]?
	
	/// Rating, classifier, or assessment
	public var classifier: [CodeableConcept]?
	
	/// Comment, classifier, or rating content
	public var component: [ArtifactAssessmentContent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Acceptable to publicly share the content
	public var freeToShare: FHIRPrimitive<FHIRBool>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What the comment is directed to
	public var path: [FHIRPrimitive<FHIRURI>]?
	
	/// Quantitative rating
	public var quantity: Quantity?
	
	/// Relationship to other Resources
	public var relatesTo: [ArtifactAssessmentRelatesTo]?
	
	/// Brief summary of the content
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// What type of content
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		author: [Reference]? = nil,
		classifier: [CodeableConcept]? = nil,
		component: [ArtifactAssessmentContent]? = nil,
		`extension`: [Extension]? = nil,
		freeToShare: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: [FHIRPrimitive<FHIRURI>]? = nil,
		quantity: Quantity? = nil,
		relatesTo: [ArtifactAssessmentRelatesTo]? = nil,
		summary: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.author = author
		self.classifier = classifier
		self.component = component
		self.`extension` = `extension`
		self.freeToShare = freeToShare
		self.id = id
		self.modifierExtension = modifierExtension
		self.path = path
		self.quantity = quantity
		self.relatesTo = relatesTo
		self.summary = summary
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case classifier
		case component
		case `extension` = "extension"
		case freeToShare; case _freeToShare
		case id; case _id
		case modifierExtension
		case path; case _path
		case quantity
		case relatesTo
		case summary; case _summary
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.component = try [ArtifactAssessmentContent](from: _container, forKeyIfPresent: .component)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.freeToShare = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .freeToShare, auxiliaryKey: ._freeToShare)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.relatesTo = try [ArtifactAssessmentRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.summary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .summary, auxiliaryKey: ._summary)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try component?.encode(on: &_container, forKey: .component)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try freeToShare?.encode(on: &_container, forKey: .freeToShare, auxiliaryKey: ._freeToShare)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try summary?.encode(on: &_container, forKey: .summary, auxiliaryKey: ._summary)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Relationship to other Resources.
 
 Relationship that this ArtifactAssessment has with other FHIR or non-FHIR resources that already exist.
 */
public struct ArtifactAssessmentRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case canonical(FHIRPrimitive<Canonical>)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The artifact that is related to this ArtifactAssessment
	/// One of `target[x]`
	public var target: TargetX
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of | summarizes
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: TargetX,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case targetAttachment
		case targetCanonical; case _targetCanonical
		case targetMarkdown; case _targetMarkdown
		case targetReference
		case targetUri; case _targetUri
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try Self._decodeTarget(from: _container)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch target {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .targetAttachment)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .targetMarkdown, auxiliaryKey: ._targetMarkdown)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .targetReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
		}
		
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX {
		var _t_target: TargetX? = nil
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			_t_target = .attachment(targetAttachment)
		}
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetCanonical, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .canonical(targetCanonical)
		}
		if let targetMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetMarkdown, auxiliaryKey: ._targetMarkdown) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetMarkdown, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .markdown(targetMarkdown)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		guard let _t_target else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.targetUri)
			throw DecodingError.valueNotFound(TargetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		return _t_target
	}
}
