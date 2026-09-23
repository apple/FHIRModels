//
//  Questionnaire.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Questionnaire)
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
 A structured set of questions.
 
 A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
 detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
 */
public struct Questionnaire: DomainResource {
	
	public static let resourceType: ResourceType = .questionnaire
	
	/// When the questionnaire was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Concept that represents the overall questionnaire
	public var code: [Coding]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the questionnaire
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When the questionnaire is expected to be used
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the questionnaire
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Questions and sections within the Questionnaire
	public var item: [QuestionnaireItem]?
	
	/// Intended jurisdiction for questionnaire (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the questionnaire was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this questionnaire (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this questionnaire is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this questionnaire. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The types of subjects that can be the subject of responses created for the questionnaire.
	public var subjectType: [FHIRPrimitive<ResourceType>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this questionnaire (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Logical URI to reference this questionnaire (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the questionnaire
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		code: [Coding]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		item: [QuestionnaireItem]? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subjectType: [FHIRPrimitive<ResourceType>]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.approvalDate = approvalDate
		self.code = code
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.item = item
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.subjectType = subjectType
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case code
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case item
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case subjectType; case _subjectType
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.item = try [QuestionnaireItem](from: _container, forKeyIfPresent: .item)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subjectType = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .subjectType, auxiliaryKey: ._subjectType)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try item?.encode(on: &_container, forKey: .item)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subjectType?.encode(on: &_container, forKey: .subjectType, auxiliaryKey: ._subjectType)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Questions and sections within the Questionnaire.
 
 A particular question, question grouping or display text that is part of the questionnaire.
 */
public struct QuestionnaireItem: BackboneElement {
	
	/// All possible types for "initial[x]"
	public enum InitialX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Corresponding concept for this item in a terminology
	public var code: [Coding]?
	
	/// ElementDefinition - details for the item
	public var definition: FHIRPrimitive<FHIRURI>?
	
	/// Only allow data when
	public var enableWhen: [QuestionnaireItemEnableWhen]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Default value when item is first rendered
	/// One of `initial[x]`
	public var initial: InitialX?
	
	/// Nested questionnaire items
	public var item: [QuestionnaireItem]?
	
	/// Unique id for item in questionnaire
	public var linkId: FHIRPrimitive<FHIRString>
	
	/// No more than this many characters
	public var maxLength: FHIRPrimitive<FHIRInteger>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Permitted answer
	public var option: [QuestionnaireItemOption]?
	
	/// Valueset containing permitted answers
	public var options: Reference?
	
	/// E.g. "1(a)", "2.5.3"
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// Don't allow human editing
	public var readOnly: FHIRPrimitive<FHIRBool>?
	
	/// Whether the item may repeat
	public var repeats: FHIRPrimitive<FHIRBool>?
	
	/// Whether the item must be included in data results
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Primary text for the item
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The type of questionnaire item this is - whether text for display, a grouping of other items or a particular
	/// type of data to be captured (string, integer, coded choice, etc.).
	public var type: FHIRPrimitive<QuestionnaireItemType>
	
	/// Designated initializer
	public init(
		code: [Coding]? = nil,
		definition: FHIRPrimitive<FHIRURI>? = nil,
		enableWhen: [QuestionnaireItemEnableWhen]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initial: InitialX? = nil,
		item: [QuestionnaireItem]? = nil,
		linkId: FHIRPrimitive<FHIRString>,
		maxLength: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		option: [QuestionnaireItemOption]? = nil,
		options: Reference? = nil,
		prefix: FHIRPrimitive<FHIRString>? = nil,
		readOnly: FHIRPrimitive<FHIRBool>? = nil,
		repeats: FHIRPrimitive<FHIRBool>? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<QuestionnaireItemType>
	) {
		self.code = code
		self.definition = definition
		self.enableWhen = enableWhen
		self.`extension` = `extension`
		self.id = id
		self.initial = initial
		self.item = item
		self.linkId = linkId
		self.maxLength = maxLength
		self.modifierExtension = modifierExtension
		self.option = option
		self.options = options
		self.prefix = prefix
		self.readOnly = readOnly
		self.repeats = repeats
		self.required = required
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case definition; case _definition
		case enableWhen
		case `extension` = "extension"
		case id; case _id
		case initialAttachment
		case initialBoolean; case _initialBoolean
		case initialCoding
		case initialDate; case _initialDate
		case initialDateTime; case _initialDateTime
		case initialDecimal; case _initialDecimal
		case initialInteger; case _initialInteger
		case initialQuantity
		case initialReference
		case initialString; case _initialString
		case initialTime; case _initialTime
		case initialUri; case _initialUri
		case item
		case linkId; case _linkId
		case maxLength; case _maxLength
		case modifierExtension
		case option
		case options
		case prefix; case _prefix
		case readOnly; case _readOnly
		case repeats; case _repeats
		case required; case _required
		case text; case _text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.definition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.enableWhen = try [QuestionnaireItemEnableWhen](from: _container, forKeyIfPresent: .enableWhen)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initial = try Self._decodeInitial(from: _container)
		self.item = try [QuestionnaireItem](from: _container, forKeyIfPresent: .item)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .linkId, auxiliaryKey: ._linkId)
		self.maxLength = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .maxLength, auxiliaryKey: ._maxLength)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.option = try [QuestionnaireItemOption](from: _container, forKeyIfPresent: .option)
		self.options = try Reference(from: _container, forKeyIfPresent: .options)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.readOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readOnly, auxiliaryKey: ._readOnly)
		self.repeats = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .repeats, auxiliaryKey: ._repeats)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<QuestionnaireItemType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try enableWhen?.encode(on: &_container, forKey: .enableWhen)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = initial {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .initialAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .initialBoolean, auxiliaryKey: ._initialBoolean)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .initialCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .initialDate, auxiliaryKey: ._initialDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .initialDateTime, auxiliaryKey: ._initialDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .initialDecimal, auxiliaryKey: ._initialDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .initialInteger, auxiliaryKey: ._initialInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .initialQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .initialReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .initialString, auxiliaryKey: ._initialString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .initialTime, auxiliaryKey: ._initialTime)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .initialUri, auxiliaryKey: ._initialUri)
		}
		}
		try item?.encode(on: &_container, forKey: .item)
		try linkId.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try maxLength?.encode(on: &_container, forKey: .maxLength, auxiliaryKey: ._maxLength)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try option?.encode(on: &_container, forKey: .option)
		try options?.encode(on: &_container, forKey: .options)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try readOnly?.encode(on: &_container, forKey: .readOnly, auxiliaryKey: ._readOnly)
		try repeats?.encode(on: &_container, forKey: .repeats, auxiliaryKey: ._repeats)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeInitial(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> InitialX? {
		var _t_initial: InitialX? = nil
		if let initialAttachment = try Attachment(from: _container, forKeyIfPresent: .initialAttachment) {
			_t_initial = .attachment(initialAttachment)
		}
		if let initialBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initialBoolean, auxiliaryKey: ._initialBoolean) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialBoolean, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .boolean(initialBoolean)
		}
		if let initialCoding = try Coding(from: _container, forKeyIfPresent: .initialCoding) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialCoding, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .coding(initialCoding)
		}
		if let initialDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .initialDate, auxiliaryKey: ._initialDate) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialDate, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .date(initialDate)
		}
		if let initialDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .initialDateTime, auxiliaryKey: ._initialDateTime) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialDateTime, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .dateTime(initialDateTime)
		}
		if let initialDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .initialDecimal, auxiliaryKey: ._initialDecimal) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialDecimal, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .decimal(initialDecimal)
		}
		if let initialInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .initialInteger, auxiliaryKey: ._initialInteger) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialInteger, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .integer(initialInteger)
		}
		if let initialQuantity = try Quantity(from: _container, forKeyIfPresent: .initialQuantity) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialQuantity, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .quantity(initialQuantity)
		}
		if let initialReference = try Reference(from: _container, forKeyIfPresent: .initialReference) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialReference, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .reference(initialReference)
		}
		if let initialString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initialString, auxiliaryKey: ._initialString) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialString, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .string(initialString)
		}
		if let initialTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .initialTime, auxiliaryKey: ._initialTime) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialTime, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .time(initialTime)
		}
		if let initialUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .initialUri, auxiliaryKey: ._initialUri) {
			if _t_initial != nil {
				throw DecodingError.dataCorruptedError(forKey: .initialUri, in: _container, debugDescription: "More than one value provided for \"initial\"")
			}
			_t_initial = .uri(initialUri)
		}
		return _t_initial
	}
}

/**
 Only allow data when.
 
 A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the
 specified condition is true.
 */
public struct QuestionnaireItemEnableWhen: BackboneElement {
	
	/// All possible types for "answer[x]"
	public enum AnswerX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Value question must have
	/// One of `answer[x]`
	public var answer: AnswerX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Enable when answered or not
	public var hasAnswer: FHIRPrimitive<FHIRBool>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Question that determines whether item is enabled
	public var question: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		answer: AnswerX? = nil,
		`extension`: [Extension]? = nil,
		hasAnswer: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		question: FHIRPrimitive<FHIRString>
	) {
		self.answer = answer
		self.`extension` = `extension`
		self.hasAnswer = hasAnswer
		self.id = id
		self.modifierExtension = modifierExtension
		self.question = question
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answerAttachment
		case answerBoolean; case _answerBoolean
		case answerCoding
		case answerDate; case _answerDate
		case answerDateTime; case _answerDateTime
		case answerDecimal; case _answerDecimal
		case answerInteger; case _answerInteger
		case answerQuantity
		case answerReference
		case answerString; case _answerString
		case answerTime; case _answerTime
		case answerUri; case _answerUri
		case `extension` = "extension"
		case hasAnswer; case _hasAnswer
		case id; case _id
		case modifierExtension
		case question; case _question
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.answer = try Self._decodeAnswer(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hasAnswer = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .hasAnswer, auxiliaryKey: ._hasAnswer)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.question = try FHIRPrimitive<FHIRString>(from: _container, forKey: .question, auxiliaryKey: ._question)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = answer {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .answerAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .answerBoolean, auxiliaryKey: ._answerBoolean)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .answerCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .answerDate, auxiliaryKey: ._answerDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .answerDateTime, auxiliaryKey: ._answerDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .answerDecimal, auxiliaryKey: ._answerDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .answerInteger, auxiliaryKey: ._answerInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .answerQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .answerReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .answerString, auxiliaryKey: ._answerString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .answerTime, auxiliaryKey: ._answerTime)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .answerUri, auxiliaryKey: ._answerUri)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hasAnswer?.encode(on: &_container, forKey: .hasAnswer, auxiliaryKey: ._hasAnswer)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try question.encode(on: &_container, forKey: .question, auxiliaryKey: ._question)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAnswer(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AnswerX? {
		var _t_answer: AnswerX? = nil
		if let answerAttachment = try Attachment(from: _container, forKeyIfPresent: .answerAttachment) {
			_t_answer = .attachment(answerAttachment)
		}
		if let answerBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .answerBoolean, auxiliaryKey: ._answerBoolean) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerBoolean, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .boolean(answerBoolean)
		}
		if let answerCoding = try Coding(from: _container, forKeyIfPresent: .answerCoding) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerCoding, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .coding(answerCoding)
		}
		if let answerDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .answerDate, auxiliaryKey: ._answerDate) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerDate, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .date(answerDate)
		}
		if let answerDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .answerDateTime, auxiliaryKey: ._answerDateTime) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerDateTime, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .dateTime(answerDateTime)
		}
		if let answerDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .answerDecimal, auxiliaryKey: ._answerDecimal) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerDecimal, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .decimal(answerDecimal)
		}
		if let answerInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .answerInteger, auxiliaryKey: ._answerInteger) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerInteger, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .integer(answerInteger)
		}
		if let answerQuantity = try Quantity(from: _container, forKeyIfPresent: .answerQuantity) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerQuantity, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .quantity(answerQuantity)
		}
		if let answerReference = try Reference(from: _container, forKeyIfPresent: .answerReference) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerReference, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .reference(answerReference)
		}
		if let answerString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .answerString, auxiliaryKey: ._answerString) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerString, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .string(answerString)
		}
		if let answerTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .answerTime, auxiliaryKey: ._answerTime) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerTime, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .time(answerTime)
		}
		if let answerUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .answerUri, auxiliaryKey: ._answerUri) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerUri, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .uri(answerUri)
		}
		return _t_answer
	}
}

/**
 Permitted answer.
 
 One of the permitted answers for a "choice" or "open-choice" question.
 */
public struct QuestionnaireItemOption: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Answer value
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
		case valueCoding
		case valueDate; case _valueDate
		case valueInteger; case _valueInteger
		case valueString; case _valueString
		case valueTime; case _valueTime
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
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			_t_value = .coding(valueCoding)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueTime)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}
