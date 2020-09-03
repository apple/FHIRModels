//
//  DocumentReference.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/DocumentReference)
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
 
 A reference to a document of any kind for any purpose. While the term “document” implies a more narrow focus, for this
 resource this "document" encompasses *any* serialized object with a mime-type, it includes formal patient-centric
 documents (CDA), clinical notes, scanned paper, non-patient specific documents like policy text, as well as a photo,
 video, or audio recording acquired or used in healthcare.  The DocumentReference resource provides metadata about the
 document so that the document can be discovered and managed.  The actual content may be inline base64 encoded data or
 provided by direct reference.
 */
open class DocumentReference: DomainResource {
	
	override open class var resourceType: ResourceType { return .documentReference }
	
	/// Other identifiers for the document
	public var identifier: [Identifier]?
	
	/// Procedure that caused this media to be created
	public var basedOn: [Reference]?
	
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
	
	/// Context of the document  content
	public var encounter: [Reference]?
	
	/// Main clinical acts documented
	public var event: [CodeableConcept]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// When this document reference was created
	public var date: FHIRPrimitive<Instant>?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Attests to accuracy of composition
	public var attester: [DocumentReferenceAttester]?
	
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
	
	/// Patient demographics from source
	public var sourcePatientInfo: Reference?
	
	/// Related identifiers or resources
	public var related: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(content: [DocumentReferenceContent], status: FHIRPrimitive<DocumentReferenceStatus>) {
		self.content = content
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attester: [DocumentReferenceAttester]? = nil,
							author: [Reference]? = nil,
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							content: [DocumentReferenceContent],
							custodian: Reference? = nil,
							date: FHIRPrimitive<Instant>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							docStatus: FHIRPrimitive<CompositionStatus>? = nil,
							encounter: [Reference]? = nil,
							event: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							facilityType: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							practiceSetting: CodeableConcept? = nil,
							related: [Reference]? = nil,
							relatesTo: [DocumentReferenceRelatesTo]? = nil,
							securityLabel: [CodeableConcept]? = nil,
							sourcePatientInfo: Reference? = nil,
							status: FHIRPrimitive<DocumentReferenceStatus>,
							subject: Reference? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(content: content, status: status)
		self.attester = attester
		self.author = author
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.custodian = custodian
		self.date = date
		self.description_fhir = description_fhir
		self.docStatus = docStatus
		self.encounter = encounter
		self.event = event
		self.`extension` = `extension`
		self.facilityType = facilityType
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.practiceSetting = practiceSetting
		self.related = related
		self.relatesTo = relatesTo
		self.securityLabel = securityLabel
		self.sourcePatientInfo = sourcePatientInfo
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attester
		case author
		case basedOn
		case category
		case content
		case custodian
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case docStatus; case _docStatus
		case encounter
		case event
		case facilityType
		case identifier
		case period
		case practiceSetting
		case related
		case relatesTo
		case securityLabel
		case sourcePatientInfo
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attester = try [DocumentReferenceAttester](from: _container, forKeyIfPresent: .attester)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.content = try [DocumentReferenceContent](from: _container, forKey: .content)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.docStatus = try FHIRPrimitive<CompositionStatus>(from: _container, forKeyIfPresent: .docStatus, auxiliaryKey: ._docStatus)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.event = try [CodeableConcept](from: _container, forKeyIfPresent: .event)
		self.facilityType = try CodeableConcept(from: _container, forKeyIfPresent: .facilityType)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practiceSetting = try CodeableConcept(from: _container, forKeyIfPresent: .practiceSetting)
		self.related = try [Reference](from: _container, forKeyIfPresent: .related)
		self.relatesTo = try [DocumentReferenceRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
		self.sourcePatientInfo = try Reference(from: _container, forKeyIfPresent: .sourcePatientInfo)
		self.status = try FHIRPrimitive<DocumentReferenceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attester?.encode(on: &_container, forKey: .attester)
		try author?.encode(on: &_container, forKey: .author)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try content.encode(on: &_container, forKey: .content)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try docStatus?.encode(on: &_container, forKey: .docStatus, auxiliaryKey: ._docStatus)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try facilityType?.encode(on: &_container, forKey: .facilityType)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try period?.encode(on: &_container, forKey: .period)
		try practiceSetting?.encode(on: &_container, forKey: .practiceSetting)
		try related?.encode(on: &_container, forKey: .related)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try sourcePatientInfo?.encode(on: &_container, forKey: .sourcePatientInfo)
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
		return attester == _other.attester
		    && author == _other.author
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && content == _other.content
		    && custodian == _other.custodian
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && docStatus == _other.docStatus
		    && encounter == _other.encounter
		    && event == _other.event
		    && facilityType == _other.facilityType
		    && identifier == _other.identifier
		    && period == _other.period
		    && practiceSetting == _other.practiceSetting
		    && related == _other.related
		    && relatesTo == _other.relatesTo
		    && securityLabel == _other.securityLabel
		    && sourcePatientInfo == _other.sourcePatientInfo
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attester)
		hasher.combine(author)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(content)
		hasher.combine(custodian)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(docStatus)
		hasher.combine(encounter)
		hasher.combine(event)
		hasher.combine(facilityType)
		hasher.combine(identifier)
		hasher.combine(period)
		hasher.combine(practiceSetting)
		hasher.combine(related)
		hasher.combine(relatesTo)
		hasher.combine(securityLabel)
		hasher.combine(sourcePatientInfo)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Attests to accuracy of composition.
 
 A participant who has attested to the accuracy of the composition/document.
 */
open class DocumentReferenceAttester: BackboneElement {
	
	/// The type of attestation the authenticator offers.
	public var mode: FHIRPrimitive<DocumentAttestationMode>
	
	/// When the composition was attested
	public var time: FHIRPrimitive<DateTime>?
	
	/// Who attested the composition
	public var party: Reference?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<DocumentAttestationMode>) {
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<DocumentAttestationMode>,
							modifierExtension: [Extension]? = nil,
							party: Reference? = nil,
							time: FHIRPrimitive<DateTime>? = nil)
	{
		self.init(mode: mode)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case mode; case _mode
		case party
		case time; case _time
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.mode = try FHIRPrimitive<DocumentAttestationMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try party?.encode(on: &_container, forKey: .party)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentReferenceAttester else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return mode == _other.mode
		    && party == _other.party
		    && time == _other.time
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(mode)
		hasher.combine(party)
		hasher.combine(time)
	}
}

/**
 Document referenced.
 
 The document and format referenced.  If there are multiple content element repetitions, these must all represent the
 same document in different format, or attachment metadata.
 */
open class DocumentReferenceContent: BackboneElement {
	
	/// Where to access the document
	public var attachment: Attachment
	
	/// Format/content rules for the document
	public var format: Coding?
	
	/// Identifier of the attachment binary
	public var identifier: Identifier?
	
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
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(attachment: attachment)
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case format
		case identifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachment = try Attachment(from: _container, forKey: .attachment)
		self.format = try Coding(from: _container, forKeyIfPresent: .format)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachment.encode(on: &_container, forKey: .attachment)
		try format?.encode(on: &_container, forKey: .format)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		    && identifier == _other.identifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachment)
		hasher.combine(format)
		hasher.combine(identifier)
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
