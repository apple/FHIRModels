//
//  Composition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Composition)
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
 A set of resources composed into a single coherent clinical statement with clinical attestation.
 
 A set of healthcare-related information that is assembled together into a single logical package that provides a single
 coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is
 making the statement. A Composition defines the structure and narrative content necessary for a document. However, a
 Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where
 Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the
 Bundle (for example Patient, Practitioner, Encounter, etc.).
 */
open class Composition: DomainResource {
	
	override open class var resourceType: ResourceType { return .composition }
	
	/// Version-independent identifier for the Composition
	public var identifier: Identifier?
	
	/// The workflow/clinical status of this composition. The status is a marker for the clinical standing of the
	/// document.
	public var status: FHIRPrimitive<CompositionStatus>
	
	/// Kind of composition (LOINC if possible)
	public var type: CodeableConcept
	
	/// Categorization of Composition
	public var category: [CodeableConcept]?
	
	/// Who and/or what the composition is about
	public var subject: Reference?
	
	/// Context of the Composition
	public var encounter: Reference?
	
	/// Composition editing time
	public var date: FHIRPrimitive<DateTime>
	
	/// Who and/or what authored the composition
	public var author: [Reference]
	
	/// Human Readable name/title
	public var title: FHIRPrimitive<FHIRString>
	
	/// As defined by affinity domain
	public var confidentiality: FHIRPrimitive<FHIRString>?
	
	/// Attests to accuracy of composition
	public var attester: [CompositionAttester]?
	
	/// Organization which maintains the composition
	public var custodian: Reference?
	
	/// Relationships to other compositions/documents
	public var relatesTo: [CompositionRelatesTo]?
	
	/// The clinical service(s) being documented
	public var event: [CompositionEvent]?
	
	/// Composition is broken into sections
	public var section: [CompositionSection]?
	
	/// Designated initializer taking all required properties
	public init(author: [Reference], date: FHIRPrimitive<DateTime>, status: FHIRPrimitive<CompositionStatus>, title: FHIRPrimitive<FHIRString>, type: CodeableConcept) {
		self.author = author
		self.date = date
		self.status = status
		self.title = title
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attester: [CompositionAttester]? = nil,
							author: [Reference],
							category: [CodeableConcept]? = nil,
							confidentiality: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							custodian: Reference? = nil,
							date: FHIRPrimitive<DateTime>,
							encounter: Reference? = nil,
							event: [CompositionEvent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							relatesTo: [CompositionRelatesTo]? = nil,
							section: [CompositionSection]? = nil,
							status: FHIRPrimitive<CompositionStatus>,
							subject: Reference? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>,
							type: CodeableConcept)
	{
		self.init(author: author, date: date, status: status, title: title, type: type)
		self.attester = attester
		self.category = category
		self.confidentiality = confidentiality
		self.contained = contained
		self.custodian = custodian
		self.encounter = encounter
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.relatesTo = relatesTo
		self.section = section
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attester
		case author
		case category
		case confidentiality; case _confidentiality
		case custodian
		case date; case _date
		case encounter
		case event
		case identifier
		case relatesTo
		case section
		case status; case _status
		case subject
		case title; case _title
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attester = try [CompositionAttester](from: _container, forKeyIfPresent: .attester)
		self.author = try [Reference](from: _container, forKey: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.confidentiality = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .confidentiality, auxiliaryKey: ._confidentiality)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.event = try [CompositionEvent](from: _container, forKeyIfPresent: .event)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.relatesTo = try [CompositionRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.section = try [CompositionSection](from: _container, forKeyIfPresent: .section)
		self.status = try FHIRPrimitive<CompositionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attester?.encode(on: &_container, forKey: .attester)
		try author.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try confidentiality?.encode(on: &_container, forKey: .confidentiality, auxiliaryKey: ._confidentiality)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try section?.encode(on: &_container, forKey: .section)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Composition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attester == _other.attester
		    && author == _other.author
		    && category == _other.category
		    && confidentiality == _other.confidentiality
		    && custodian == _other.custodian
		    && date == _other.date
		    && encounter == _other.encounter
		    && event == _other.event
		    && identifier == _other.identifier
		    && relatesTo == _other.relatesTo
		    && section == _other.section
		    && status == _other.status
		    && subject == _other.subject
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attester)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(confidentiality)
		hasher.combine(custodian)
		hasher.combine(date)
		hasher.combine(encounter)
		hasher.combine(event)
		hasher.combine(identifier)
		hasher.combine(relatesTo)
		hasher.combine(section)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(title)
		hasher.combine(type)
	}
}

/**
 Attests to accuracy of composition.
 
 A participant who has attested to the accuracy of the composition/document.
 */
open class CompositionAttester: BackboneElement {
	
	/// The type of attestation the authenticator offers.
	public var mode: FHIRPrimitive<CompositionAttestationMode>
	
	/// When the composition was attested
	public var time: FHIRPrimitive<DateTime>?
	
	/// Who attested the composition
	public var party: Reference?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<CompositionAttestationMode>) {
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<CompositionAttestationMode>,
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
		self.mode = try FHIRPrimitive<CompositionAttestationMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
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
		guard let _other = _other as? CompositionAttester else {
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
 The clinical service(s) being documented.
 
 The clinical service, such as a colonoscopy or an appendectomy, being documented.
 */
open class CompositionEvent: BackboneElement {
	
	/// Code(s) that apply to the event being documented
	public var code: [CodeableConcept]?
	
	/// The period covered by the documentation
	public var period: Period?
	
	/// The event(s) being documented
	public var detail: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: [CodeableConcept]? = nil,
							detail: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil)
	{
		self.init()
		self.code = code
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detail
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.detail = try [Reference](from: _container, forKeyIfPresent: .detail)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail)
		try period?.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CompositionEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && detail == _other.detail
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detail)
		hasher.combine(period)
	}
}

/**
 Relationships to other compositions/documents.
 
 Relationships that this composition has with other compositions or documents that already exist.
 */
open class CompositionRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case identifier(Identifier)
		case reference(Reference)
	}
	
	/// The type of relationship that this composition has with anther composition or document.
	public var code: FHIRPrimitive<DocumentRelationshipType>
	
	/// Target of the relationship
	/// One of `target[x]`
	public var target: TargetX
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<DocumentRelationshipType>, target: TargetX) {
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
							target: TargetX)
	{
		self.init(code: code, target: target)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case targetIdentifier
		case targetReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.targetIdentifier) || _container.contains(CodingKeys.targetReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.targetIdentifier, CodingKeys.targetReference], debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		
		// Decode all our properties
		self.code = try FHIRPrimitive<DocumentRelationshipType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		var _t_target: TargetX? = nil
		if let targetIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetIdentifier) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetIdentifier, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .identifier(targetIdentifier)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		self.target = _t_target!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		
			switch target {
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .targetIdentifier)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CompositionRelatesTo else {
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

/**
 Composition is broken into sections.
 
 The root of the sections that make up the composition.
 */
open class CompositionSection: BackboneElement {
	
	/// Label for section (e.g. for ToC)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Classification of section (recommended)
	public var code: CodeableConcept?
	
	/// Who and/or what authored the section
	public var author: [Reference]?
	
	/// Who/what the section is about, when it is not about the subject of composition
	public var focus: Reference?
	
	/// Text summary of the section, for human interpretation
	public var text: Narrative?
	
	/// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an
	/// ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a
	/// prepared list where items may be marked as added, modified or deleted.
	public var mode: FHIRPrimitive<ListMode>?
	
	/// Order of section entries
	public var orderedBy: CodeableConcept?
	
	/// A reference to data that supports this section
	public var entry: [Reference]?
	
	/// Why the section is empty
	public var emptyReason: CodeableConcept?
	
	/// Nested Section
	public var section: [CompositionSection]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: [Reference]? = nil,
							code: CodeableConcept? = nil,
							emptyReason: CodeableConcept? = nil,
							entry: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							focus: Reference? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<ListMode>? = nil,
							modifierExtension: [Extension]? = nil,
							orderedBy: CodeableConcept? = nil,
							section: [CompositionSection]? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.author = author
		self.code = code
		self.emptyReason = emptyReason
		self.entry = entry
		self.`extension` = `extension`
		self.focus = focus
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
		case code
		case emptyReason
		case entry
		case focus
		case mode; case _mode
		case orderedBy
		case section
		case text
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.emptyReason = try CodeableConcept(from: _container, forKeyIfPresent: .emptyReason)
		self.entry = try [Reference](from: _container, forKeyIfPresent: .entry)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.mode = try FHIRPrimitive<ListMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.orderedBy = try CodeableConcept(from: _container, forKeyIfPresent: .orderedBy)
		self.section = try [CompositionSection](from: _container, forKeyIfPresent: .section)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try code?.encode(on: &_container, forKey: .code)
		try emptyReason?.encode(on: &_container, forKey: .emptyReason)
		try entry?.encode(on: &_container, forKey: .entry)
		try focus?.encode(on: &_container, forKey: .focus)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try orderedBy?.encode(on: &_container, forKey: .orderedBy)
		try section?.encode(on: &_container, forKey: .section)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CompositionSection else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && code == _other.code
		    && emptyReason == _other.emptyReason
		    && entry == _other.entry
		    && focus == _other.focus
		    && mode == _other.mode
		    && orderedBy == _other.orderedBy
		    && section == _other.section
		    && text == _other.text
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(code)
		hasher.combine(emptyReason)
		hasher.combine(entry)
		hasher.combine(focus)
		hasher.combine(mode)
		hasher.combine(orderedBy)
		hasher.combine(section)
		hasher.combine(text)
		hasher.combine(title)
	}
}
