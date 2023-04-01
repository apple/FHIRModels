//
//  ArtifactAssessment.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ArtifactAssessment)
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
 Adds metadata-supported comments, classifiers or ratings related to a Resource.
 
 This Resource provides one or more comments, classifiers or ratings about a Resource and supports attribution and
 rights management metadata for the added content.
 */
open class ArtifactAssessment: DomainResource {
	
	override open class var resourceType: ResourceType { return .artifactAssessment }
	
	/// All possible types for "artifact[x]"
	public enum ArtifactX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "citeAs[x]"
	public enum CiteAsX: Hashable {
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
	}
	
	/// Additional identifier for the artifact assessment
	public var identifier: [Identifier]?
	
	/// A short title for the assessment for use in displaying and selecting
	public var title: FHIRPrimitive<FHIRString>?
	
	/// How to cite the comment or rating
	/// One of `citeAs[x]`
	public var citeAs: CiteAsX?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the artifact assessment was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the artifact assessment was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// The artifact assessed, commented upon or rated
	/// One of `artifact[x]`
	public var artifact: ArtifactX
	
	/// Comment, classifier, or rating content
	public var content: [ArtifactAssessmentContent]?
	
	/// Indicates the workflow status of the comment or change request.
	public var workflowStatus: FHIRPrimitive<ArtifactAssessmentWorkflowStatus>?
	
	/// Indicates the disposition of the responsible party to the comment or change request.
	public var disposition: FHIRPrimitive<ArtifactAssessmentDisposition>?
	
	/// Designated initializer taking all required properties
	public init(artifact: ArtifactX) {
		self.artifact = artifact
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		artifact: ArtifactX,
		citeAs: CiteAsX? = nil,
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
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		workflowStatus: FHIRPrimitive<ArtifactAssessmentWorkflowStatus>? = nil
	) {
		self.init(artifact: artifact)
		self.approvalDate = approvalDate
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
		self.text = text
		self.title = title
		self.workflowStatus = workflowStatus
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case artifactCanonical; case _artifactCanonical
		case artifactReference
		case artifactUri; case _artifactUri
		case citeAsMarkdown; case _citeAsMarkdown
		case citeAsReference
		case content
		case copyright; case _copyright
		case date; case _date
		case disposition; case _disposition
		case identifier
		case lastReviewDate; case _lastReviewDate
		case title; case _title
		case workflowStatus; case _workflowStatus
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.artifactCanonical) || _container.contains(CodingKeys.artifactReference) || _container.contains(CodingKeys.artifactUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.artifactCanonical, CodingKeys.artifactReference, CodingKeys.artifactUri], debugDescription: "Must have at least one value for \"artifact\" but have none"))
		}
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		var _t_artifact: ArtifactX? = nil
		if let artifactReference = try Reference(from: _container, forKeyIfPresent: .artifactReference) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactReference, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .reference(artifactReference)
		}
		if let artifactCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .artifactCanonical, auxiliaryKey: ._artifactCanonical) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactCanonical, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .canonical(artifactCanonical)
		}
		if let artifactUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .artifactUri, auxiliaryKey: ._artifactUri) {
			if _t_artifact != nil {
				throw DecodingError.dataCorruptedError(forKey: .artifactUri, in: _container, debugDescription: "More than one value provided for \"artifact\"")
			}
			_t_artifact = .uri(artifactUri)
		}
		self.artifact = _t_artifact!
		var _t_citeAs: CiteAsX? = nil
		if let citeAsReference = try Reference(from: _container, forKeyIfPresent: .citeAsReference) {
			if _t_citeAs != nil {
				throw DecodingError.dataCorruptedError(forKey: .citeAsReference, in: _container, debugDescription: "More than one value provided for \"citeAs\"")
			}
			_t_citeAs = .reference(citeAsReference)
		}
		if let citeAsMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown) {
			if _t_citeAs != nil {
				throw DecodingError.dataCorruptedError(forKey: .citeAsMarkdown, in: _container, debugDescription: "More than one value provided for \"citeAs\"")
			}
			_t_citeAs = .markdown(citeAsMarkdown)
		}
		self.citeAs = _t_citeAs
		self.content = try [ArtifactAssessmentContent](from: _container, forKeyIfPresent: .content)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.disposition = try FHIRPrimitive<ArtifactAssessmentDisposition>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.workflowStatus = try FHIRPrimitive<ArtifactAssessmentWorkflowStatus>(from: _container, forKeyIfPresent: .workflowStatus, auxiliaryKey: ._workflowStatus)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		
			switch artifact {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .artifactReference)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .artifactCanonical, auxiliaryKey: ._artifactCanonical)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .artifactUri, auxiliaryKey: ._artifactUri)
			}
		
		if let _enum = citeAs {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .citeAsReference)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown)
			}
		}
		try content?.encode(on: &_container, forKey: .content)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try workflowStatus?.encode(on: &_container, forKey: .workflowStatus, auxiliaryKey: ._workflowStatus)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ArtifactAssessment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && artifact == _other.artifact
		    && citeAs == _other.citeAs
		    && content == _other.content
		    && copyright == _other.copyright
		    && date == _other.date
		    && disposition == _other.disposition
		    && identifier == _other.identifier
		    && lastReviewDate == _other.lastReviewDate
		    && title == _other.title
		    && workflowStatus == _other.workflowStatus
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(artifact)
		hasher.combine(citeAs)
		hasher.combine(content)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(disposition)
		hasher.combine(identifier)
		hasher.combine(lastReviewDate)
		hasher.combine(title)
		hasher.combine(workflowStatus)
	}
}

/**
 Comment, classifier, or rating content.
 
 A component comment, classifier, or rating of the artifact.
 */
open class ArtifactAssessmentContent: BackboneElement {
	
	/// The type of information this component of the content represents.
	public var informationType: FHIRPrimitive<ArtifactAssessmentInformationType>?
	
	/// Brief summary of the content
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// What type of content
	public var type: CodeableConcept?
	
	/// Rating, classifier, or assessment
	public var classifier: [CodeableConcept]?
	
	/// Quantitative rating
	public var quantity: Quantity?
	
	/// Who authored the content
	public var author: Reference?
	
	/// What the comment is directed to
	public var path: [FHIRPrimitive<FHIRURI>]?
	
	/// Additional information
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Acceptable to publicly share the resource content
	public var freeToShare: FHIRPrimitive<FHIRBool>?
	
	/// Contained content
	public var component: [ArtifactAssessmentContent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		author: Reference? = nil,
		classifier: [CodeableConcept]? = nil,
		component: [ArtifactAssessmentContent]? = nil,
		`extension`: [Extension]? = nil,
		freeToShare: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		informationType: FHIRPrimitive<ArtifactAssessmentInformationType>? = nil,
		modifierExtension: [Extension]? = nil,
		path: [FHIRPrimitive<FHIRURI>]? = nil,
		quantity: Quantity? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		summary: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.author = author
		self.classifier = classifier
		self.component = component
		self.`extension` = `extension`
		self.freeToShare = freeToShare
		self.id = id
		self.informationType = informationType
		self.modifierExtension = modifierExtension
		self.path = path
		self.quantity = quantity
		self.relatedArtifact = relatedArtifact
		self.summary = summary
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case classifier
		case component
		case freeToShare; case _freeToShare
		case informationType; case _informationType
		case path; case _path
		case quantity
		case relatedArtifact
		case summary; case _summary
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.component = try [ArtifactAssessmentContent](from: _container, forKeyIfPresent: .component)
		self.freeToShare = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .freeToShare, auxiliaryKey: ._freeToShare)
		self.informationType = try FHIRPrimitive<ArtifactAssessmentInformationType>(from: _container, forKeyIfPresent: .informationType, auxiliaryKey: ._informationType)
		self.path = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.summary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .summary, auxiliaryKey: ._summary)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try component?.encode(on: &_container, forKey: .component)
		try freeToShare?.encode(on: &_container, forKey: .freeToShare, auxiliaryKey: ._freeToShare)
		try informationType?.encode(on: &_container, forKey: .informationType, auxiliaryKey: ._informationType)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try summary?.encode(on: &_container, forKey: .summary, auxiliaryKey: ._summary)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ArtifactAssessmentContent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && classifier == _other.classifier
		    && component == _other.component
		    && freeToShare == _other.freeToShare
		    && informationType == _other.informationType
		    && path == _other.path
		    && quantity == _other.quantity
		    && relatedArtifact == _other.relatedArtifact
		    && summary == _other.summary
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(classifier)
		hasher.combine(component)
		hasher.combine(freeToShare)
		hasher.combine(informationType)
		hasher.combine(path)
		hasher.combine(quantity)
		hasher.combine(relatedArtifact)
		hasher.combine(summary)
		hasher.combine(type)
	}
}
