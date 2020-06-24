//
//  QuestionnaireResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse)
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
 A structured set of questions and their answers.
 
 A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
 corresponding to the structure of the grouping of the underlying questions.
 */
open class QuestionnaireResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .questionnaireResponse }
	
	/// Unique id for this set of answers
	public var identifier: Identifier?
	
	/// Form being answered
	public var questionnaire: Reference?
	
	/// The lifecycle status of the questionnaire response as a whole.
	/// Restricted to: ['in-progress', 'completed', 'amended']
	public var status: FHIRPrimitive<QuestionnaireResponseStatus>
	
	/// The subject of the questions
	public var subject: Reference?
	
	/// Person who received and recorded the answers
	public var author: Reference?
	
	/// Date this version was authored
	public var authored: FHIRPrimitive<DateTime>?
	
	/// The person who answered the questions
	public var source: Reference?
	
	/// Primary encounter during which the answers were collected
	public var encounter: Reference?
	
	/// Grouped questions
	public var group: QuestionnaireResponseGroup?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<QuestionnaireResponseStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: Reference? = nil,
							authored: FHIRPrimitive<DateTime>? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							group: QuestionnaireResponseGroup? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							questionnaire: Reference? = nil,
							source: Reference? = nil,
							status: FHIRPrimitive<QuestionnaireResponseStatus>,
							subject: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init(status: status)
		self.author = author
		self.authored = authored
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.questionnaire = questionnaire
		self.source = source
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case authored; case _authored
		case encounter
		case group
		case identifier
		case questionnaire
		case source
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authored = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authored, auxiliaryKey: ._authored)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.group = try QuestionnaireResponseGroup(from: _container, forKeyIfPresent: .group)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.questionnaire = try Reference(from: _container, forKeyIfPresent: .questionnaire)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<QuestionnaireResponseStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try authored?.encode(on: &_container, forKey: .authored, auxiliaryKey: ._authored)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try questionnaire?.encode(on: &_container, forKey: .questionnaire)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && authored == _other.authored
		    && encounter == _other.encounter
		    && group == _other.group
		    && identifier == _other.identifier
		    && questionnaire == _other.questionnaire
		    && source == _other.source
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(authored)
		hasher.combine(encounter)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(questionnaire)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Grouped questions.
 
 A group of questions to a possibly similarly grouped set of questions in the questionnaire response.
 */
open class QuestionnaireResponseGroup: BackboneElement {
	
	/// Corresponding group within Questionnaire
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Name for this group
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Additional text for the group
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The subject this group's answers are about
	public var subject: Reference?
	
	/// Nested questionnaire response group
	public var group: [QuestionnaireResponseGroup]?
	
	/// Questions in this group
	public var question: [QuestionnaireResponseGroupQuestion]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							group: [QuestionnaireResponseGroup]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							linkId: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							question: [QuestionnaireResponseGroupQuestion]? = nil,
							subject: Reference? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.question = question
		self.subject = subject
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case group
		case linkId; case _linkId
		case question
		case subject
		case text; case _text
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.group = try [QuestionnaireResponseGroup](from: _container, forKeyIfPresent: .group)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.question = try [QuestionnaireResponseGroupQuestion](from: _container, forKeyIfPresent: .question)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try group?.encode(on: &_container, forKey: .group)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try question?.encode(on: &_container, forKey: .question)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireResponseGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return group == _other.group
		    && linkId == _other.linkId
		    && question == _other.question
		    && subject == _other.subject
		    && text == _other.text
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(group)
		hasher.combine(linkId)
		hasher.combine(question)
		hasher.combine(subject)
		hasher.combine(text)
		hasher.combine(title)
	}
}

/**
 Questions in this group.
 
 Set of questions within this group. The order of questions within the group is relevant.
 */
open class QuestionnaireResponseGroupQuestion: BackboneElement {
	
	/// Corresponding question within Questionnaire
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Text of the question as it is shown to the user
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The response(s) to the question
	public var answer: [QuestionnaireResponseGroupQuestionAnswer]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							answer: [QuestionnaireResponseGroupQuestionAnswer]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							linkId: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							text: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.answer = answer
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answer
		case linkId; case _linkId
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.answer = try [QuestionnaireResponseGroupQuestionAnswer](from: _container, forKeyIfPresent: .answer)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try answer?.encode(on: &_container, forKey: .answer)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireResponseGroupQuestion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return answer == _other.answer
		    && linkId == _other.linkId
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(answer)
		hasher.combine(linkId)
		hasher.combine(text)
	}
}

/**
 The response(s) to the question.
 
 The respondent's answer(s) to the question.
 */
open class QuestionnaireResponseGroupQuestionAnswer: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Single-valued answer to the question
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireResponseGroup]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							group: [QuestionnaireResponseGroup]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: ValueX? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case group
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCoding
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInstant; case _valueInstant
		case valueInteger; case _valueInteger
		case valueQuantity
		case valueReference
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.group = try [QuestionnaireResponseGroup](from: _container, forKeyIfPresent: .group)
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .valueInstant, auxiliaryKey: ._valueInstant) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInstant, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .instant(valueInstant)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try group?.encode(on: &_container, forKey: .group)
		if let _enum = value {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .valueInstant, auxiliaryKey: ._valueInstant)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireResponseGroupQuestionAnswer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return group == _other.group
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(group)
		hasher.combine(value)
	}
}
