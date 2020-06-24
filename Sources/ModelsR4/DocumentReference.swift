//
//  DocumentReference.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/DocumentReference)
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
 A reference to a document.
 
 A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be
 discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient
 centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
 */
open class DocumentReference: DomainResource {
	
	override open class var resourceType: ResourceType { return .documentReference }
	
	/// Master Version Specific Identifier
	public var masterIdentifier: Identifier?
	
	/// Other identifiers for the document
	public var identifier: [Identifier]?
	
	/// The status of this document reference.
	public var status: FHIRPrimitive<DocumentReferenceStatus>
	
	/// The status of the underlying document.
	public var docStatus: FHIRPrimitive<CompositionStatus>?
	
	/// Kind of document (LOINC if possible)
	public var type: CodeableConcept?
	
	/// Categorization of document
	public var category: [CodeableConcept]?
	
	/// Who/what is the subject of the document
	public var subject: Reference?
	
	/// When this document reference was created
	public var date: FHIRPrimitive<Instant>?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Who/what authenticated the document
	public var authenticator: Reference?
	
	/// Organization which maintains the document
	public var custodian: Reference?
	
	/// Relationships to other documents
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// Human-readable description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Document security-tags
	public var securityLabel: [CodeableConcept]?
	
	/// Document referenced
	public var content: [DocumentReferenceContent]
	
	/// Clinical context of document
	public var context: DocumentReferenceContext?
	
	/// Designated initializer taking all required properties
	public init(content: [DocumentReferenceContent], status: FHIRPrimitive<DocumentReferenceStatus>) {
		self.content = content
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(content: content, status: status)
		self.authenticator = authenticator
		self.author = author
		self.category = category
		self.contained = contained
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
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authenticator
		case author
		case category
		case content
		case context
		case custodian
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case docStatus; case _docStatus
		case identifier
		case masterIdentifier
		case relatesTo
		case securityLabel
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authenticator = try Reference(from: _container, forKeyIfPresent: .authenticator)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.content = try [DocumentReferenceContent](from: _container, forKey: .content)
		self.context = try DocumentReferenceContext(from: _container, forKeyIfPresent: .context)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.docStatus = try FHIRPrimitive<CompositionStatus>(from: _container, forKeyIfPresent: .docStatus, auxiliaryKey: ._docStatus)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.masterIdentifier = try Identifier(from: _container, forKeyIfPresent: .masterIdentifier)
		self.relatesTo = try [DocumentReferenceRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
		self.status = try FHIRPrimitive<DocumentReferenceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authenticator?.encode(on: &_container, forKey: .authenticator)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try content.encode(on: &_container, forKey: .content)
		try context?.encode(on: &_container, forKey: .context)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try docStatus?.encode(on: &_container, forKey: .docStatus, auxiliaryKey: ._docStatus)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try masterIdentifier?.encode(on: &_container, forKey: .masterIdentifier)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentReference else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authenticator == _other.authenticator
		    && author == _other.author
		    && category == _other.category
		    && content == _other.content
		    && context == _other.context
		    && custodian == _other.custodian
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && docStatus == _other.docStatus
		    && identifier == _other.identifier
		    && masterIdentifier == _other.masterIdentifier
		    && relatesTo == _other.relatesTo
		    && securityLabel == _other.securityLabel
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authenticator)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(content)
		hasher.combine(context)
		hasher.combine(custodian)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(docStatus)
		hasher.combine(identifier)
		hasher.combine(masterIdentifier)
		hasher.combine(relatesTo)
		hasher.combine(securityLabel)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Document referenced.
 
 The document and format referenced. There may be multiple content element repetitions, each with a different format.
 */
open class DocumentReferenceContent: BackboneElement {
	
	/// Where to access the document
	public var attachment: Attachment
	
	/// Format/content rules for the document
	public var format: Coding?
	
	/// Designated initializer taking all required properties
	public init(attachment: Attachment) {
		self.attachment = attachment
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attachment: Attachment,
							`extension`: [Extension]? = nil,
							format: Coding? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(attachment: attachment)
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case format
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachment = try Attachment(from: _container, forKey: .attachment)
		self.format = try Coding(from: _container, forKeyIfPresent: .format)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachment.encode(on: &_container, forKey: .attachment)
		try format?.encode(on: &_container, forKey: .format)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentReferenceContent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attachment == _other.attachment
		    && format == _other.format
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachment)
		hasher.combine(format)
	}
}

/**
 Clinical context of document.
 
 The clinical context in which the document was prepared.
 */
open class DocumentReferenceContext: BackboneElement {
	
	/// Context of the document  content
	public var encounter: [Reference]?
	
	/// Main clinical acts documented
	public var event: [CodeableConcept]?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Patient demographics from source
	public var sourcePatientInfo: Reference?
	
	/// Related identifiers or resources
	public var related: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							encounter: [Reference]? = nil,
							event: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							facilityType: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							practiceSetting: CodeableConcept? = nil,
							related: [Reference]? = nil,
							sourcePatientInfo: Reference? = nil)
	{
		self.init()
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
		case facilityType
		case period
		case practiceSetting
		case related
		case sourcePatientInfo
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.event = try [CodeableConcept](from: _container, forKeyIfPresent: .event)
		self.facilityType = try CodeableConcept(from: _container, forKeyIfPresent: .facilityType)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practiceSetting = try CodeableConcept(from: _container, forKeyIfPresent: .practiceSetting)
		self.related = try [Reference](from: _container, forKeyIfPresent: .related)
		self.sourcePatientInfo = try Reference(from: _container, forKeyIfPresent: .sourcePatientInfo)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try facilityType?.encode(on: &_container, forKey: .facilityType)
		try period?.encode(on: &_container, forKey: .period)
		try practiceSetting?.encode(on: &_container, forKey: .practiceSetting)
		try related?.encode(on: &_container, forKey: .related)
		try sourcePatientInfo?.encode(on: &_container, forKey: .sourcePatientInfo)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentReferenceContext else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return encounter == _other.encounter
		    && event == _other.event
		    && facilityType == _other.facilityType
		    && period == _other.period
		    && practiceSetting == _other.practiceSetting
		    && related == _other.related
		    && sourcePatientInfo == _other.sourcePatientInfo
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(encounter)
		hasher.combine(event)
		hasher.combine(facilityType)
		hasher.combine(period)
		hasher.combine(practiceSetting)
		hasher.combine(related)
		hasher.combine(sourcePatientInfo)
	}
}

/**
 Relationships to other documents.
 
 Relationships that this document has with other document references that already exist.
 */
open class DocumentReferenceRelatesTo: BackboneElement {
	
	/// The type of relationship that this document has with anther document.
	public var code: FHIRPrimitive<DocumentRelationshipType>
	
	/// Target of the relationship
	public var target: Reference
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<DocumentRelationshipType>, target: Reference) {
		self.code = code
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<DocumentRelationshipType>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							target: Reference)
	{
		self.init(code: code, target: target)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<DocumentRelationshipType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.target = try Reference(from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try target.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentReferenceRelatesTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(target)
	}
}
