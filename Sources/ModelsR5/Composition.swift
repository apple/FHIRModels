//
//  Composition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Composition)
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
 A set of resources composed into a single coherent clinical statement with clinical attestation.
 
 A set of healthcare-related information that is assembled together into a single logical package that provides a single
 coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is
 making the statement. A Composition defines the structure and narrative content necessary for a document. However, a
 Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where
 Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the
 Bundle (for example Patient, Practitioner, Encounter, etc.).
 */
public struct Composition: DomainResource {
	
	public static let resourceType: ResourceType = .composition
	
	/// Attests to accuracy of composition
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition
	public var author: [Reference]
	
	/// Categorization of Composition
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Organization which maintains the composition
	public var custodian: Reference?
	
	/// Composition editing time
	public var date: FHIRPrimitive<DateTime>
	
	/// Context of the Composition
	public var encounter: Reference?
	
	/// The clinical service(s) being documented
	public var event: [CompositionEvent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Version-independent identifier for the Composition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this Composition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// For any additional notes
	public var note: [Annotation]?
	
	/// Relationships to other compositions/documents
	public var relatesTo: [RelatedArtifact]?
	
	/// Composition is broken into sections
	public var section: [CompositionSection]?
	
	/// The workflow/clinical status of this composition. The status is a marker for the clinical standing of the
	/// document.
	public var status: FHIRPrimitive<CompositionStatus>
	
	/// Who and/or what the composition is about
	public var subject: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Human Readable name/title
	public var title: FHIRPrimitive<FHIRString>
	
	/// Kind of composition (LOINC if possible)
	public var type: CodeableConcept
	
	/// Canonical identifier for this Composition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// An explicitly assigned identifer of a variation of the content in the Composition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		attester: [CompositionAttester]? = nil,
		author: [Reference],
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		custodian: Reference? = nil,
		date: FHIRPrimitive<DateTime>,
		encounter: Reference? = nil,
		event: [CompositionEvent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		relatesTo: [RelatedArtifact]? = nil,
		section: [CompositionSection]? = nil,
		status: FHIRPrimitive<CompositionStatus>,
		subject: [Reference]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>,
		type: CodeableConcept,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.attester = attester
		self.author = author
		self.category = category
		self.contained = contained
		self.custodian = custodian
		self.date = date
		self.encounter = encounter
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.relatesTo = relatesTo
		self.section = section
		self.status = status
		self.subject = subject
		self.text = text
		self.title = title
		self.type = type
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case attester
		case author
		case category
		case contained
		case custodian
		case date; case _date
		case encounter
		case event
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case note
		case relatesTo
		case section
		case status; case _status
		case subject
		case text
		case title; case _title
		case type
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attester = try [CompositionAttester](from: _container, forKeyIfPresent: .attester)
		self.author = try [Reference](from: _container, forKey: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.event = try [CompositionEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.relatesTo = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatesTo)
		self.section = try [CompositionSection](from: _container, forKeyIfPresent: .section)
		self.status = try FHIRPrimitive<CompositionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		try attester?.encode(on: &_container, forKey: .attester)
		try author.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try custodian?.encode(on: &_container, forKey: .custodian)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try section?.encode(on: &_container, forKey: .section)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Attests to accuracy of composition.
 
 A participant who has attested to the accuracy of the composition/document.
 */
public struct CompositionAttester: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// personal | professional | legal | official
	public var mode: CodeableConcept
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Who attested the composition
	public var party: Reference?
	
	/// When the composition was attested
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
 The clinical service(s) being documented.
 
 The clinical service, such as a colonoscopy or an appendectomy, being documented.
 */
public struct CompositionEvent: BackboneElement {
	
	/// The event(s) being documented, as code(s), reference(s), or both
	public var detail: [CodeableReference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The period covered by the documentation
	public var period: Period?
	
	/// Designated initializer
	public init(
		detail: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil
	) {
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.detail = try [CodeableReference](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
	}
}

/**
 Composition is broken into sections.
 
 The root of the sections that make up the composition.
 */
public struct CompositionSection: BackboneElement {
	
	/// Who and/or what authored the section
	public var author: [Reference]?
	
	/// Classification of section (recommended)
	public var code: CodeableConcept?
	
	/// Why the section is empty
	public var emptyReason: CodeableConcept?
	
	/// A reference to data that supports this section
	public var entry: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Who/what the section is about, when it is not about the subject of composition
	public var focus: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Order of section entries
	public var orderedBy: CodeableConcept?
	
	/// Nested Section
	public var section: [CompositionSection]?
	
	/// Text summary of the section, for human interpretation
	public var text: Narrative?
	
	/// Label for section (e.g. for ToC)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		author: [Reference]? = nil,
		code: CodeableConcept? = nil,
		emptyReason: CodeableConcept? = nil,
		entry: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		focus: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		orderedBy: CodeableConcept? = nil,
		section: [CompositionSection]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.author = author
		self.code = code
		self.emptyReason = emptyReason
		self.entry = entry
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
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
		case `extension` = "extension"
		case focus
		case id; case _id
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
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.emptyReason = try CodeableConcept(from: _container, forKeyIfPresent: .emptyReason)
		self.entry = try [Reference](from: _container, forKeyIfPresent: .entry)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orderedBy = try CodeableConcept(from: _container, forKeyIfPresent: .orderedBy)
		self.section = try [CompositionSection](from: _container, forKeyIfPresent: .section)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try code?.encode(on: &_container, forKey: .code)
		try emptyReason?.encode(on: &_container, forKey: .emptyReason)
		try entry?.encode(on: &_container, forKey: .entry)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orderedBy?.encode(on: &_container, forKey: .orderedBy)
		try section?.encode(on: &_container, forKey: .section)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}
