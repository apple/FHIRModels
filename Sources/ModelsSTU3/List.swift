//
//  List.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/List)
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
 Information summarized from a list of other resources.
 
 A set of information summarized from a list of other resources.
 */
open class List: DomainResource {
	
	override open class var resourceType: ResourceType { return .list }
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Indicates the current state of this list.
	public var status: FHIRPrimitive<ListStatus>
	
	/// How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing
	/// basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list
	/// where items may be marked as added, modified or deleted.
	public var mode: FHIRPrimitive<ListMode>
	
	/// Descriptive name for the list
	public var title: FHIRPrimitive<FHIRString>?
	
	/// What the purpose of this list is
	public var code: CodeableConcept?
	
	/// If all resources have the same subject
	public var subject: Reference?
	
	/// Context in which list created
	public var encounter: Reference?
	
	/// When the list was prepared
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who and/or what defined the list contents (aka Author)
	public var source: Reference?
	
	/// What order the list has
	public var orderedBy: CodeableConcept?
	
	/// Comments about the list
	public var note: [Annotation]?
	
	/// Entries in the list
	public var entry: [ListEntry]?
	
	/// Why list is empty
	public var emptyReason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<ListMode>, status: FHIRPrimitive<ListStatus>) {
		self.mode = mode
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(mode: mode, status: status)
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
		self.modifierExtension = modifierExtension
		self.note = note
		self.orderedBy = orderedBy
		self.source = source
		self.subject = subject
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case date; case _date
		case emptyReason
		case encounter
		case entry
		case identifier
		case mode; case _mode
		case note
		case orderedBy
		case source
		case status; case _status
		case subject
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.emptyReason = try CodeableConcept(from: _container, forKeyIfPresent: .emptyReason)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.entry = try [ListEntry](from: _container, forKeyIfPresent: .entry)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.mode = try FHIRPrimitive<ListMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.orderedBy = try CodeableConcept(from: _container, forKeyIfPresent: .orderedBy)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<ListStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try emptyReason?.encode(on: &_container, forKey: .emptyReason)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try entry?.encode(on: &_container, forKey: .entry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try note?.encode(on: &_container, forKey: .note)
		try orderedBy?.encode(on: &_container, forKey: .orderedBy)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? List else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && date == _other.date
		    && emptyReason == _other.emptyReason
		    && encounter == _other.encounter
		    && entry == _other.entry
		    && identifier == _other.identifier
		    && mode == _other.mode
		    && note == _other.note
		    && orderedBy == _other.orderedBy
		    && source == _other.source
		    && status == _other.status
		    && subject == _other.subject
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(date)
		hasher.combine(emptyReason)
		hasher.combine(encounter)
		hasher.combine(entry)
		hasher.combine(identifier)
		hasher.combine(mode)
		hasher.combine(note)
		hasher.combine(orderedBy)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(title)
	}
}

/**
 Entries in the list.
 
 Entries in this list.
 */
open class ListEntry: BackboneElement {
	
	/// Status/Workflow information about this item
	public var flag: CodeableConcept?
	
	/// If this item is actually marked as deleted
	public var deleted: FHIRPrimitive<FHIRBool>?
	
	/// When item added to list
	public var date: FHIRPrimitive<DateTime>?
	
	/// Actual entry
	public var item: Reference
	
	/// Designated initializer taking all required properties
	public init(item: Reference) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<DateTime>? = nil,
							deleted: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							flag: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: Reference,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.date = date
		self.deleted = deleted
		self.`extension` = `extension`
		self.flag = flag
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case deleted; case _deleted
		case flag
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.deleted = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deleted, auxiliaryKey: ._deleted)
		self.flag = try CodeableConcept(from: _container, forKeyIfPresent: .flag)
		self.item = try Reference(from: _container, forKey: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try deleted?.encode(on: &_container, forKey: .deleted, auxiliaryKey: ._deleted)
		try flag?.encode(on: &_container, forKey: .flag)
		try item.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ListEntry else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && deleted == _other.deleted
		    && flag == _other.flag
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(deleted)
		hasher.combine(flag)
		hasher.combine(item)
	}
}
