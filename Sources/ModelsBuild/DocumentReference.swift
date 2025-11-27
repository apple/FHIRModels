//
//  DocumentReference.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/DocumentReference)
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
	
	/// Business identifiers for the document
	public var identifier: [Identifier]?
	
	/// An explicitly assigned identifier of a variation of the content in the DocumentReference
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Procedure that caused this media to be created
	public var basedOn: [Reference]?
	
	/// The current state of the document reference.
	public var status: FHIRPrimitive<DocumentReferenceStatus>
	
	/// The status of the underlying document.
	public var docStatus: FHIRPrimitive<CompositionStatus>?
	
	/// Imaging modality used
	public var modality: [CodeableConcept]?
	
	/// Kind of document (LOINC if possible)
	public var type: CodeableConcept?
	
	/// Categorization of document
	public var category: [CodeableConcept]?
	
	/// Who/what is the subject of the document
	public var subject: Reference?
	
	/// Encounter the document reference is part of
	public var context: [Reference]?
	
	/// Main clinical acts documented
	public var event: [CodeableReference]?
	
	/// Related identifiers or resources associated with the document reference
	public var related: [Reference]?
	
	/// Body structure included
	public var bodyStructure: [CodeableReference]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// When this document reference was created
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Attests to accuracy of the document
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
		self.init(content: content, status: status)
		self.attester = attester
		self.author = author
		self.basedOn = basedOn
		self.bodyStructure = bodyStructure
		self.category = category
		self.contained = contained
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
		self.subject = subject
		self.text = text
		self.type = type
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attester
		case author
		case basedOn
		case bodyStructure
		case category
		case content
		case context
		case custodian
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case docStatus; case _docStatus
		case event
		case facilityType
		case identifier
		case modality
		case period
		case practiceSetting
		case related
		case relatesTo
		case securityLabel
		case status; case _status
		case subject
		case type
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attester = try [DocumentReferenceAttester](from: _container, forKeyIfPresent: .attester)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodyStructure = try [CodeableReference](from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.content = try [DocumentReferenceContent](from: _container, forKey: .content)
		self.context = try [Reference](from: _container, forKeyIfPresent: .context)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.docStatus = try FHIRPrimitive<CompositionStatus>(from: _container, forKeyIfPresent: .docStatus, auxiliaryKey: ._docStatus)
		self.event = try [CodeableReference](from: _container, forKeyIfPresent: .event)
		self.facilityType = try CodeableConcept(from: _container, forKeyIfPresent: .facilityType)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modality = try [CodeableConcept](from: _container, forKeyIfPresent: .modality)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.practiceSetting = try CodeableConcept(from: _container, forKeyIfPresent: .practiceSetting)
		self.related = try [Reference](from: _container, forKeyIfPresent: .related)
		self.relatesTo = try [DocumentReferenceRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
		self.status = try FHIRPrimitive<DocumentReferenceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attester?.encode(on: &_container, forKey: .attester)
		try author?.encode(on: &_container, forKey: .author)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try content.encode(on: &_container, forKey: .content)
		try context?.encode(on: &_container, forKey: .context)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try docStatus?.encode(on: &_container, forKey: .docStatus, auxiliaryKey: ._docStatus)
		try event?.encode(on: &_container, forKey: .event)
		try facilityType?.encode(on: &_container, forKey: .facilityType)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modality?.encode(on: &_container, forKey: .modality)
		try period?.encode(on: &_container, forKey: .period)
		try practiceSetting?.encode(on: &_container, forKey: .practiceSetting)
		try related?.encode(on: &_container, forKey: .related)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
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
		    && bodyStructure == _other.bodyStructure
		    && category == _other.category
		    && content == _other.content
		    && context == _other.context
		    && custodian == _other.custodian
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && docStatus == _other.docStatus
		    && event == _other.event
		    && facilityType == _other.facilityType
		    && identifier == _other.identifier
		    && modality == _other.modality
		    && period == _other.period
		    && practiceSetting == _other.practiceSetting
		    && related == _other.related
		    && relatesTo == _other.relatesTo
		    && securityLabel == _other.securityLabel
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attester)
		hasher.combine(author)
		hasher.combine(basedOn)
		hasher.combine(bodyStructure)
		hasher.combine(category)
		hasher.combine(content)
		hasher.combine(context)
		hasher.combine(custodian)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(docStatus)
		hasher.combine(event)
		hasher.combine(facilityType)
		hasher.combine(identifier)
		hasher.combine(modality)
		hasher.combine(period)
		hasher.combine(practiceSetting)
		hasher.combine(related)
		hasher.combine(relatesTo)
		hasher.combine(securityLabel)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(version)
	}
}

/**
 Attests to accuracy of the document.
 
 A participant who has authenticated the accuracy of the document.
 */
open class DocumentReferenceAttester: BackboneElement {
	
	/// personal | professional | legal | official
	public var mode: CodeableConcept
	
	/// When the document was attested
	public var time: FHIRPrimitive<DateTime>?
	
	/// Who attested the document
	public var party: Reference?
	
	/// Designated initializer taking all required properties
	public init(mode: CodeableConcept) {
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: CodeableConcept,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		time: FHIRPrimitive<DateTime>? = nil
	) {
		self.init(mode: mode)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case mode
		case party
		case time; case _time
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.mode = try CodeableConcept(from: _container, forKey: .mode)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try mode.encode(on: &_container, forKey: .mode)
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
	
	/// Content profile rules for the document
	public var profile: [DocumentReferenceContentProfile]?
	
	/// Designated initializer taking all required properties
	public init(attachment: Attachment) {
		self.attachment = attachment
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attachment: Attachment,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		profile: [DocumentReferenceContentProfile]? = nil
	) {
		self.init(attachment: attachment)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case profile
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachment = try Attachment(from: _container, forKey: .attachment)
		self.profile = try [DocumentReferenceContentProfile](from: _container, forKeyIfPresent: .profile)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachment.encode(on: &_container, forKey: .attachment)
		try profile?.encode(on: &_container, forKey: .profile)
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
		    && profile == _other.profile
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachment)
		hasher.combine(profile)
	}
}

/**
 Content profile rules for the document.
 
 An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the
 base format indicated in the mimeType.
 */
open class DocumentReferenceContentProfile: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case coding(Coding)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Code|uri|canonical
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(value: ValueX) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case valueCanonical; case _valueCanonical
		case valueCoding
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueCanonical) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueCanonical, CodingKeys.valueCoding, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		var _t_value: ValueX? = nil
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
		if let valueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueCanonical, auxiliaryKey: ._valueCanonical) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCanonical, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .canonical(valueCanonical)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch value {
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .valueCanonical, auxiliaryKey: ._valueCanonical)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DocumentReferenceContentProfile else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(value)
	}
}

/**
 Relationships to other documents.
 
 Relationships that this document has with other document references that already exist.
 */
open class DocumentReferenceRelatesTo: BackboneElement {
	
	/// The relationship type with another document
	public var code: CodeableConcept
	
	/// Target of the relationship
	public var target: Reference
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, target: Reference) {
		self.code = code
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: Reference
	) {
		self.init(code: code, target: target)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.target = try Reference(from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
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
