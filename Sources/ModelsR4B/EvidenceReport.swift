//
//  EvidenceReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/EvidenceReport)
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
 A EvidenceReport.
 
 The EvidenceReport Resource is a specialized container for a collection of resources and codable concepts, adapted to
 support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
 */
public struct EvidenceReport: DomainResource {
	
	public static let resourceType: ResourceType = .evidenceReport
	
	/// All possible types for "citeAs[x]"
	public enum CiteAsX: Equatable, Hashable, Sendable {
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case reference(Reference)
	}
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Citation for this report
	/// One of `citeAs[x]`
	public var citeAs: CiteAsX?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for the evidence report
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Used for footnotes and annotations
	public var note: [Annotation]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Link, description or reference to artifact associated with the report
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Identifiers for articles that may relate to more than one evidence report
	public var relatedIdentifier: [Identifier]?
	
	/// Relationships to other compositions/documents
	public var relatesTo: [EvidenceReportRelatesTo]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Composition is broken into sections
	public var section: [EvidenceReportSection]?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Focus of the report
	public var subject: EvidenceReportSubject
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of report
	public var type: CodeableConcept?
	
	/// Canonical identifier for this EvidenceReport, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Designated initializer
	public init(
		author: [ContactDetail]? = nil,
		citeAs: CiteAsX? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		editor: [ContactDetail]? = nil,
		endorser: [ContactDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		relatedIdentifier: [Identifier]? = nil,
		relatesTo: [EvidenceReportRelatesTo]? = nil,
		reviewer: [ContactDetail]? = nil,
		section: [EvidenceReportSection]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: EvidenceReportSubject,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil
	) {
		self.author = author
		self.citeAs = citeAs
		self.contact = contact
		self.contained = contained
		self.editor = editor
		self.endorser = endorser
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.relatedIdentifier = relatedIdentifier
		self.relatesTo = relatesTo
		self.reviewer = reviewer
		self.section = section
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
		self.url = url
		self.useContext = useContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case citeAsMarkdown; case _citeAsMarkdown
		case citeAsReference
		case contact
		case contained
		case editor
		case endorser
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case publisher; case _publisher
		case relatedArtifact
		case relatedIdentifier
		case relatesTo
		case reviewer
		case section
		case status; case _status
		case subject
		case text
		case type
		case url; case _url
		case useContext
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.citeAs = try Self._decodeCiteAs(from: _container)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.relatedIdentifier = try [Identifier](from: _container, forKeyIfPresent: .relatedIdentifier)
		self.relatesTo = try [EvidenceReportRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.section = try [EvidenceReportSection](from: _container, forKeyIfPresent: .section)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try EvidenceReportSubject(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		if let _enum = citeAs {
		switch _enum {
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .citeAsReference)
		}
		}
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try relatedIdentifier?.encode(on: &_container, forKey: .relatedIdentifier)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try section?.encode(on: &_container, forKey: .section)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCiteAs(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CiteAsX? {
		var _t_citeAs: CiteAsX? = nil
		if let citeAsMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAsMarkdown, auxiliaryKey: ._citeAsMarkdown) {
			_t_citeAs = .markdown(citeAsMarkdown)
		}
		if let citeAsReference = try Reference(from: _container, forKeyIfPresent: .citeAsReference) {
			if _t_citeAs != nil {
				throw DecodingError.dataCorruptedError(forKey: .citeAsReference, in: _container, debugDescription: "More than one value provided for \"citeAs\"")
			}
			_t_citeAs = .reference(citeAsReference)
		}
		return _t_citeAs
	}
}

/**
 Relationships to other compositions/documents.
 
 Relationships that this composition has with other compositions or documents that already exist.
 */
public struct EvidenceReportRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		indirect case identifier(Identifier)
		indirect case reference(Reference)
	}
	
	/// The type of relationship that this composition has with anther composition or document.
	public var code: FHIRPrimitive<ReportRelationshipType>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Target of the relationship
	/// One of `target[x]`
	public var target: TargetX
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<ReportRelationshipType>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: TargetX
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case targetIdentifier
		case targetReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<ReportRelationshipType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try Self._decodeTarget(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch target {
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .targetIdentifier)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .targetReference)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX {
		var _t_target: TargetX? = nil
		if let targetIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetIdentifier) {
			_t_target = .identifier(targetIdentifier)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		guard let _t_target else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.targetReference)
			throw DecodingError.valueNotFound(TargetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		return _t_target
	}
}

/**
 Composition is broken into sections.
 
 The root of the sections that make up the composition.
 */
public struct EvidenceReportSection: BackboneElement {
	
	/// Who and/or what authored the section
	public var author: [Reference]?
	
	/// Why the section is empty
	public var emptyReason: CodeableConcept?
	
	/// Extensible classifiers as content
	public var entryClassifier: [CodeableConcept]?
	
	/// Quantity as content
	public var entryQuantity: [Quantity]?
	
	/// Reference to resources as content
	public var entryReference: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Classification of section (recommended)
	public var focus: CodeableConcept?
	
	/// Classification of section by Resource
	public var focusReference: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an
	/// ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a
	/// prepared list where items may be marked as added, modified or deleted.
	public var mode: FHIRPrimitive<ListMode>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Order of section entries
	public var orderedBy: CodeableConcept?
	
	/// Nested Section
	public var section: [EvidenceReportSection]?
	
	/// Text summary of the section, for human interpretation
	public var text: Narrative?
	
	/// Label for section (e.g. for ToC)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		author: [Reference]? = nil,
		emptyReason: CodeableConcept? = nil,
		entryClassifier: [CodeableConcept]? = nil,
		entryQuantity: [Quantity]? = nil,
		entryReference: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		focus: CodeableConcept? = nil,
		focusReference: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<ListMode>? = nil,
		modifierExtension: [Extension]? = nil,
		orderedBy: CodeableConcept? = nil,
		section: [EvidenceReportSection]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.author = author
		self.emptyReason = emptyReason
		self.entryClassifier = entryClassifier
		self.entryQuantity = entryQuantity
		self.entryReference = entryReference
		self.`extension` = `extension`
		self.focus = focus
		self.focusReference = focusReference
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.orderedBy = orderedBy
		self.section = section
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case emptyReason
		case entryClassifier
		case entryQuantity
		case entryReference
		case `extension` = "extension"
		case focus
		case focusReference
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case orderedBy
		case section
		case text
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.emptyReason = try CodeableConcept(from: _container, forKeyIfPresent: .emptyReason)
		self.entryClassifier = try [CodeableConcept](from: _container, forKeyIfPresent: .entryClassifier)
		self.entryQuantity = try [Quantity](from: _container, forKeyIfPresent: .entryQuantity)
		self.entryReference = try [Reference](from: _container, forKeyIfPresent: .entryReference)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try CodeableConcept(from: _container, forKeyIfPresent: .focus)
		self.focusReference = try Reference(from: _container, forKeyIfPresent: .focusReference)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<ListMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orderedBy = try CodeableConcept(from: _container, forKeyIfPresent: .orderedBy)
		self.section = try [EvidenceReportSection](from: _container, forKeyIfPresent: .section)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try emptyReason?.encode(on: &_container, forKey: .emptyReason)
		try entryClassifier?.encode(on: &_container, forKey: .entryClassifier)
		try entryQuantity?.encode(on: &_container, forKey: .entryQuantity)
		try entryReference?.encode(on: &_container, forKey: .entryReference)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try focusReference?.encode(on: &_container, forKey: .focusReference)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orderedBy?.encode(on: &_container, forKey: .orderedBy)
		try section?.encode(on: &_container, forKey: .section)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Focus of the report.
 
 Specifies the subject or focus of the report. Answers "What is this report about?".
 */
public struct EvidenceReportSubject: BackboneElement {
	
	/// Characteristic
	public var characteristic: [EvidenceReportSubjectCharacteristic]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Designated initializer
	public init(
		characteristic: [EvidenceReportSubjectCharacteristic]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil
	) {
		self.characteristic = characteristic
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristic
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.characteristic = try [EvidenceReportSubjectCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
	}
}

/**
 Characteristic.
 */
public struct EvidenceReportSubjectCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
	/// Characteristic code
	public var code: CodeableConcept
	
	/// Is used to express not the characteristic
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Timeframe for the characteristic
	public var period: Period?
	
	/// Characteristic value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		exclude: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		value: ValueX
	) {
		self.code = code
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case exclude; case _exclude
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueReference)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}
