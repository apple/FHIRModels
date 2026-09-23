//
//  DocumentReference.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/DocumentReference)
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
 A reference to a document.
 
 A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be
 discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient
 centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
 */
public struct DocumentReference: DomainResource {
	
	public static let resourceType: ResourceType = .documentReference
	
	/// Who/what authenticated the document
	public var authenticator: Reference?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Categorization of document
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Document referenced
	public var content: [DocumentReferenceContent]
	
	/// Clinical context of document
	public var context: DocumentReferenceContext?
	
	/// Organization which maintains the document
	public var custodian: Reference?
	
	/// When this document reference was created
	public var date: FHIRPrimitive<Instant>?
	
	/// Human-readable description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The status of the underlying document.
	public var docStatus: FHIRPrimitive<CompositionStatus>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Other identifiers for the document
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Master Version Specific Identifier
	public var masterIdentifier: Identifier?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Relationships to other documents
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// Document security-tags
	public var securityLabel: [CodeableConcept]?
	
	/// The status of this document reference.
	public var status: FHIRPrimitive<DocumentReferenceStatus>
	
	/// Who/what is the subject of the document
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of document (LOINC if possible)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		authenticator: Reference? = nil,
		author: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		content: [DocumentReferenceContent],
		context: DocumentReferenceContext? = nil,
		custodian: Reference? = nil,
		date: FHIRPrimitive<Instant>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		docStatus: FHIRPrimitive<CompositionStatus>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		masterIdentifier: Identifier? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		relatesTo: [DocumentReferenceRelatesTo]? = nil,
		securityLabel: [CodeableConcept]? = nil,
		status: FHIRPrimitive<DocumentReferenceStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.authenticator = authenticator
		self.author = author
		self.category = category
		self.contained = contained
		self.content = content
		self.context = context
		self.custodian = custodian
		self.date = date
		self.description_fhir = description_fhir
		self.docStatus = docStatus
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.masterIdentifier = masterIdentifier
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.relatesTo = relatesTo
		self.securityLabel = securityLabel
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authenticator
		case author
		case category
		case contained
		case content
		case context
		case custodian
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case docStatus; case _docStatus
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case masterIdentifier
		case meta
		case modifierExtension
		case relatesTo
		case securityLabel
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
		self.authenticator = try Reference(from: _container, forKeyIfPresent: .authenticator)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try [DocumentReferenceContent](from: _container, forKey: .content)
		self.context = try DocumentReferenceContext(from: _container, forKeyIfPresent: .context)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.docStatus = try FHIRPrimitive<CompositionStatus>(from: _container, forKeyIfPresent: .docStatus, auxiliaryKey: ._docStatus)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.masterIdentifier = try Identifier(from: _container, forKeyIfPresent: .masterIdentifier)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatesTo = try [DocumentReferenceRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
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
		try authenticator?.encode(on: &_container, forKey: .authenticator)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try content.encode(on: &_container, forKey: .content)
		try context?.encode(on: &_container, forKey: .context)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try docStatus?.encode(on: &_container, forKey: .docStatus, auxiliaryKey: ._docStatus)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try masterIdentifier?.encode(on: &_container, forKey: .masterIdentifier)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Document referenced.
 
 The document and format referenced. There may be multiple content element repetitions, each with a different format.
 */
public struct DocumentReferenceContent: BackboneElement {
	
	/// Where to access the document
	public var attachment: Attachment
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Format/content rules for the document
	public var format: Coding?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		attachment: Attachment,
		`extension`: [Extension]? = nil,
		format: Coding? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.attachment = attachment
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case `extension` = "extension"
		case format
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attachment = try Attachment(from: _container, forKey: .attachment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.format = try Coding(from: _container, forKeyIfPresent: .format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attachment.encode(on: &_container, forKey: .attachment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try format?.encode(on: &_container, forKey: .format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Clinical context of document.
 
 The clinical context in which the document was prepared.
 */
public struct DocumentReferenceContext: BackboneElement {
	
	/// Context of the document  content
	public var encounter: [Reference]?
	
	/// Main clinical acts documented
	public var event: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Related identifiers or resources
	public var related: [Reference]?
	
	/// Patient demographics from source
	public var sourcePatientInfo: Reference?
	
	/// Designated initializer
	public init(
		encounter: [Reference]? = nil,
		event: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		facilityType: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		practiceSetting: CodeableConcept? = nil,
		related: [Reference]? = nil,
		sourcePatientInfo: Reference? = nil
	) {
		self.encounter = encounter
		self.event = event
		self.`extension` = `extension`
		self.facilityType = facilityType
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.practiceSetting = practiceSetting
		self.related = related
		self.sourcePatientInfo = sourcePatientInfo
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case encounter
		case event
		case `extension` = "extension"
		case facilityType
		case id; case _id
		case modifierExtension
		case period
		case practiceSetting
		case related
		case sourcePatientInfo
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.event = try [CodeableConcept](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facilityType = try CodeableConcept(from: _container, forKeyIfPresent: .facilityType)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practiceSetting = try CodeableConcept(from: _container, forKeyIfPresent: .practiceSetting)
		self.related = try [Reference](from: _container, forKeyIfPresent: .related)
		self.sourcePatientInfo = try Reference(from: _container, forKeyIfPresent: .sourcePatientInfo)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facilityType?.encode(on: &_container, forKey: .facilityType)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try practiceSetting?.encode(on: &_container, forKey: .practiceSetting)
		try related?.encode(on: &_container, forKey: .related)
		try sourcePatientInfo?.encode(on: &_container, forKey: .sourcePatientInfo)
	}
}

/**
 Relationships to other documents.
 
 Relationships that this document has with other document references that already exist.
 */
public struct DocumentReferenceRelatesTo: BackboneElement {
	
	/// The type of relationship that this document has with anther document.
	public var code: FHIRPrimitive<DocumentRelationshipType>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Target of the relationship
	public var target: Reference
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<DocumentRelationshipType>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: Reference
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
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<DocumentRelationshipType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try Reference(from: _container, forKey: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target.encode(on: &_container, forKey: .target)
	}
}
