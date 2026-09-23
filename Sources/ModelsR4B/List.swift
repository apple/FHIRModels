//
//  List.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/List)
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
 A list is a curated collection of resources.
 */
public struct List: DomainResource {
	
	public static let resourceType: ResourceType = .list
	
	/// What the purpose of this list is
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the list was prepared
	public var date: FHIRPrimitive<DateTime>?
	
	/// Why list is empty
	public var emptyReason: CodeableConcept?
	
	/// Context in which list created
	public var encounter: Reference?
	
	/// Entries in the list
	public var entry: [ListEntry]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing
	/// basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list
	/// where items may be marked as added, modified or deleted.
	public var mode: FHIRPrimitive<ListMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the list
	public var note: [Annotation]?
	
	/// What order the list has
	public var orderedBy: CodeableConcept?
	
	/// Who and/or what defined the list contents (aka Author)
	public var source: Reference?
	
	/// Indicates the current state of this list.
	public var status: FHIRPrimitive<ListStatus>
	
	/// If all resources have the same subject
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Descriptive name for the list
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		emptyReason: CodeableConcept? = nil,
		encounter: Reference? = nil,
		entry: [ListEntry]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		mode: FHIRPrimitive<ListMode>,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		orderedBy: CodeableConcept? = nil,
		source: Reference? = nil,
		status: FHIRPrimitive<ListStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.code = code
		self.contained = contained
		self.date = date
		self.emptyReason = emptyReason
		self.encounter = encounter
		self.entry = entry
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.note = note
		self.orderedBy = orderedBy
		self.source = source
		self.status = status
		self.subject = subject
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case code
		case contained
		case date; case _date
		case emptyReason
		case encounter
		case entry
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case mode; case _mode
		case modifierExtension
		case note
		case orderedBy
		case source
		case status; case _status
		case subject
		case text
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.emptyReason = try CodeableConcept(from: _container, forKeyIfPresent: .emptyReason)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.entry = try [ListEntry](from: _container, forKeyIfPresent: .entry)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.mode = try FHIRPrimitive<ListMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.orderedBy = try CodeableConcept(from: _container, forKeyIfPresent: .orderedBy)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<ListStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try emptyReason?.encode(on: &_container, forKey: .emptyReason)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try entry?.encode(on: &_container, forKey: .entry)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try orderedBy?.encode(on: &_container, forKey: .orderedBy)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Entries in the list.
 
 Entries in this list.
 */
public struct ListEntry: BackboneElement {
	
	/// When item added to list
	public var date: FHIRPrimitive<DateTime>?
	
	/// If this item is actually marked as deleted
	public var deleted: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Status/Workflow information about this item
	public var flag: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Actual entry
	public var item: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		deleted: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		flag: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.date = date
		self.deleted = deleted
		self.`extension` = `extension`
		self.flag = flag
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case deleted; case _deleted
		case `extension` = "extension"
		case flag
		case id; case _id
		case item
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.deleted = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deleted, auxiliaryKey: ._deleted)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.flag = try CodeableConcept(from: _container, forKeyIfPresent: .flag)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Reference(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try deleted?.encode(on: &_container, forKey: .deleted, auxiliaryKey: ._deleted)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try flag?.encode(on: &_container, forKey: .flag)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
