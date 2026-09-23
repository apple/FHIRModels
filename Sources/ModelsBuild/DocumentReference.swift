//
//  DocumentReference.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DocumentReference)
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
 
 A reference to a document of any kind for any purpose. While the term “document” implies a more narrow focus, for this
 resource this "document" encompasses *any* serialized object with a mime-type, it includes formal patient-centric
 documents (CDA), clinical notes, scanned paper, non-patient specific documents like policy text, as well as a photo,
 video, or audio recording acquired or used in healthcare.  The DocumentReference resource provides metadata about the
 document so that the document can be discovered and managed.  The actual content may be inline base64 encoded data or
 provided by direct reference.
 */
public struct DocumentReference: DomainResource {
	
	public static let resourceType: ResourceType = .documentReference
	
	/// Attests to accuracy of the document
	public var attester: [DocumentReferenceAttester]?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Procedure that caused this media to be created
	public var basedOn: [Reference]?
	
	/// Body structure included
	public var bodyStructure: [CodeableReference]?
	
	/// Categorization of document
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Document referenced
	public var content: [DocumentReferenceContent]
	
	/// Encounter the document reference is part of
	public var context: [Reference]?
	
	/// Organization which maintains the document
	public var custodian: Reference?
	
	/// When this document reference was created
	public var date: FHIRPrimitive<DateTime>?
	
	/// Human-readable description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The status of the underlying document.
	public var docStatus: FHIRPrimitive<CompositionStatus>?
	
	/// Main clinical acts documented
	public var event: [CodeableReference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifiers for the document
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Imaging modality used
	public var modality: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Related identifiers or resources associated with the document reference
	public var related: [Reference]?
	
	/// Relationships to other documents
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// Document security-tags
	public var securityLabel: [CodeableConcept]?
	
	/// The current state of the document reference.
	public var status: FHIRPrimitive<DocumentReferenceStatus>
	
	/// Who/what is the subject of the document
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of document (LOINC if possible)
	public var type: CodeableConcept?
	
	/// An explicitly assigned identifier of a variation of the content in the DocumentReference
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		attester: [DocumentReferenceAttester]? = nil,
		author: [Reference]? = nil,
		basedOn: [Reference]? = nil,
		bodyStructure: [CodeableReference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		content: [DocumentReferenceContent],
		context: [Reference]? = nil,
		custodian: Reference? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		docStatus: FHIRPrimitive<CompositionStatus>? = nil,
		event: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		facilityType: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modality: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		practiceSetting: CodeableConcept? = nil,
		related: [Reference]? = nil,
		relatesTo: [DocumentReferenceRelatesTo]? = nil,
		securityLabel: [CodeableConcept]? = nil,
		status: FHIRPrimitive<DocumentReferenceStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.attester = attester
		self.author = author
		self.basedOn = basedOn
		self.bodyStructure = bodyStructure
		self.category = category
		self.contained = contained
		self.content = content
		self.context = context
		self.custodian = custodian
		self.date = date
		self.description_fhir = description_fhir
		self.docStatus = docStatus
		self.event = event
		self.`extension` = `extension`
		self.facilityType = facilityType
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modality = modality
		self.modifierExtension = modifierExtension
		self.period = period
		self.practiceSetting = practiceSetting
		self.related = related
		self.relatesTo = relatesTo
		self.securityLabel = securityLabel
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case attester
		case author
		case basedOn
		case bodyStructure
		case category
		case contained
		case content
		case context
		case custodian
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case docStatus; case _docStatus
		case event
		case `extension` = "extension"
		case facilityType
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modality
		case modifierExtension
		case period
		case practiceSetting
		case related
		case relatesTo
		case securityLabel
		case status; case _status
		case subject
		case text
		case type
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attester = try [DocumentReferenceAttester](from: _container, forKeyIfPresent: .attester)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodyStructure = try [CodeableReference](from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try [DocumentReferenceContent](from: _container, forKey: .content)
		self.context = try [Reference](from: _container, forKeyIfPresent: .context)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.docStatus = try FHIRPrimitive<CompositionStatus>(from: _container, forKeyIfPresent: .docStatus, auxiliaryKey: ._docStatus)
		self.event = try [CodeableReference](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facilityType = try CodeableConcept(from: _container, forKeyIfPresent: .facilityType)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modality = try [CodeableConcept](from: _container, forKeyIfPresent: .modality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practiceSetting = try CodeableConcept(from: _container, forKeyIfPresent: .practiceSetting)
		self.related = try [Reference](from: _container, forKeyIfPresent: .related)
		self.relatesTo = try [DocumentReferenceRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
		self.status = try FHIRPrimitive<DocumentReferenceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try attester?.encode(on: &_container, forKey: .attester)
		try author?.encode(on: &_container, forKey: .author)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try content.encode(on: &_container, forKey: .content)
		try context?.encode(on: &_container, forKey: .context)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try docStatus?.encode(on: &_container, forKey: .docStatus, auxiliaryKey: ._docStatus)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facilityType?.encode(on: &_container, forKey: .facilityType)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modality?.encode(on: &_container, forKey: .modality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try practiceSetting?.encode(on: &_container, forKey: .practiceSetting)
		try related?.encode(on: &_container, forKey: .related)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Attests to accuracy of the document.
 
 A participant who has authenticated the accuracy of the document.
 */
public struct DocumentReferenceAttester: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// personal | professional | legal | official
	public var mode: CodeableConcept
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Who attested the document
	public var party: Reference?
	
	/// When the document was attested
	public var time: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: CodeableConcept,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		time: FHIRPrimitive<DateTime>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.party = party
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case mode
		case modifierExtension
		case party
		case time; case _time
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try CodeableConcept(from: _container, forKey: .mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try party?.encode(on: &_container, forKey: .party)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
	}
}

/**
 Document referenced.
 
 The document and format referenced.  If there are multiple content element repetitions, these must all represent the
 same document in different format, or attachment metadata.
 */
public struct DocumentReferenceContent: BackboneElement {
	
	/// Where to access the document
	public var attachment: Attachment
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Content profile rules for the document
	public var profile: [DocumentReferenceContentProfile]?
	
	/// Designated initializer
	public init(
		attachment: Attachment,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		profile: [DocumentReferenceContentProfile]? = nil
	) {
		self.attachment = attachment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case profile
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attachment = try Attachment(from: _container, forKey: .attachment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try [DocumentReferenceContentProfile](from: _container, forKeyIfPresent: .profile)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attachment.encode(on: &_container, forKey: .attachment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile?.encode(on: &_container, forKey: .profile)
	}
}

/**
 Content profile rules for the document.
 
 An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the
 base format indicated in the mimeType.
 */
public struct DocumentReferenceContentProfile: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case coding(Coding)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code|uri|canonical
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueCanonical; case _valueCanonical
		case valueCoding
		case valueUri; case _valueUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueCanonical, auxiliaryKey: ._valueCanonical) {
			_t_value = .canonical(valueCanonical)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUri)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Relationships to other documents.
 
 Relationships that this document has with other document references that already exist.
 */
public struct DocumentReferenceRelatesTo: BackboneElement {
	
	/// The relationship type with another document
	public var code: CodeableConcept
	
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
		code: CodeableConcept,
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
		case code
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
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try Reference(from: _container, forKey: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target.encode(on: &_container, forKey: .target)
	}
}
