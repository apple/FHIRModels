//
//  ArtifactAssessment.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/ArtifactAssessment)
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
	
	/// Additional identifier for the artifact assessment
	public var identifier: [Identifier]?
	
	/// A label for use in displaying and selecting the artifact assessment
	public var title: FHIRPrimitive<FHIRString>?
	
	/// How to cite the comment or rating
	public var citeAs: FHIRPrimitive<FHIRString>?
	
	/// The artifact assessed, commented upon or rated
	/// One of `artifact[x]`
	public var artifact: ArtifactX
	
	/// Relationship to other Resources
	public var relatesTo: [ArtifactAssessmentRelatesTo]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the artifact assessment was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the artifact assessment was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
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
		self.relatesTo = relatesTo
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
		case citeAs; case _citeAs
		case content
		case copyright; case _copyright
		case date; case _date
		case disposition; case _disposition
		case identifier
		case lastReviewDate; case _lastReviewDate
		case relatesTo
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
		self.citeAs = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAs, auxiliaryKey: ._citeAs)
		self.content = try [ArtifactAssessmentContent](from: _container, forKeyIfPresent: .content)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.disposition = try FHIRPrimitive<ArtifactAssessmentDisposition>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.relatesTo = try [ArtifactAssessmentRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
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
		
		try citeAs?.encode(on: &_container, forKey: .citeAs, auxiliaryKey: ._citeAs)
		try content?.encode(on: &_container, forKey: .content)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
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
		    && relatesTo == _other.relatesTo
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
		hasher.combine(relatesTo)
		hasher.combine(title)
		hasher.combine(workflowStatus)
	}
}

/**
 Comment, classifier, or rating content.
 
 A component comment, classifier, or rating of the artifact.
 */
open class ArtifactAssessmentContent: BackboneElement {
	
	/// Brief summary of the content
	public var summary: FHIRPrimitive<FHIRString>?
	
	/// What type of content
	public var type: CodeableConcept?
	
	/// Rating, classifier, or assessment
	public var classifier: [CodeableConcept]?
	
	/// Quantitative rating
	public var quantity: Quantity?
	
	/// Who authored the content
	public var author: [Reference]?
	
	/// What the comment is directed to
	public var path: [FHIRPrimitive<FHIRURI>]?
	
	/// Relationship to other Resources
	public var relatesTo: [ArtifactAssessmentRelatesTo]?
	
	/// Acceptable to publicly share the content
	public var freeToShare: FHIRPrimitive<FHIRBool>?
	
	/// Comment, classifier, or rating content
	public var component: [ArtifactAssessmentContent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case freeToShare; case _freeToShare
		case path; case _path
		case quantity
		case relatesTo
		case summary; case _summary
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.component = try [ArtifactAssessmentContent](from: _container, forKeyIfPresent: .component)
		self.freeToShare = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .freeToShare, auxiliaryKey: ._freeToShare)
		self.path = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.relatesTo = try [ArtifactAssessmentRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
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
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
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
		    && path == _other.path
		    && quantity == _other.quantity
		    && relatesTo == _other.relatesTo
		    && summary == _other.summary
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(classifier)
		hasher.combine(component)
		hasher.combine(freeToShare)
		hasher.combine(path)
		hasher.combine(quantity)
		hasher.combine(relatesTo)
		hasher.combine(summary)
		hasher.combine(type)
	}
}

/**
 Relationship to other Resources.
 
 Relationship that this ArtifactAssessment has with other FHIR or non-FHIR resources that already exist.
 */
open class ArtifactAssessmentRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case attachment(Attachment)
		case canonical(FHIRPrimitive<Canonical>)
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of | summarizes
	public var type: CodeableConcept
	
	/// The artifact that is related to this ArtifactAssessment
	/// One of `target[x]`
	public var target: TargetX
	
	/// Designated initializer taking all required properties
	public init(target: TargetX, type: CodeableConcept) {
		self.target = target
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: TargetX,
		type: CodeableConcept
	) {
		self.init(target: target, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case targetAttachment
		case targetCanonical; case _targetCanonical
		case targetMarkdown; case _targetMarkdown
		case targetReference
		case targetUri; case _targetUri
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.targetAttachment) || _container.contains(CodingKeys.targetCanonical) || _container.contains(CodingKeys.targetMarkdown) || _container.contains(CodingKeys.targetReference) || _container.contains(CodingKeys.targetUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.targetAttachment, CodingKeys.targetCanonical, CodingKeys.targetMarkdown, CodingKeys.targetReference, CodingKeys.targetUri], debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		
		// Decode all our properties
		var _t_target: TargetX? = nil
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetAttachment, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .attachment(targetAttachment)
		}
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetCanonical, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .canonical(targetCanonical)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetMarkdown, auxiliaryKey: ._targetMarkdown) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetMarkdown, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .markdown(targetMarkdown)
		}
		self.target = _t_target!
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch target {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .targetAttachment)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .targetMarkdown, auxiliaryKey: ._targetMarkdown)
			}
		
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ArtifactAssessmentRelatesTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(target)
		hasher.combine(type)
	}
}
