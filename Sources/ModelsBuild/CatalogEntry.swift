//
//  CatalogEntry.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/CatalogEntry)
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
 An entry in a catalog.
 
 Catalog entries are wrappers that contextualize items included in a catalog.
 */
open class CatalogEntry: DomainResource {
	
	override open class var resourceType: ResourceType { return .catalogEntry }
	
	/// Business identifier of the catalog entry
	public var identifier: [Identifier]?
	
	/// Displayable name assigned to the catalog entry
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The type of resource that is represented by this catalog entry.
	public var type: FHIRPrimitive<CatalogEntryType>?
	
	/// Indicates whether this catalog entry is open to public usage (active) or not (draft or retired).
	public var status: FHIRPrimitive<CatalogEntryStatus>?
	
	/// When this catalog entry is expected to be active
	public var effectivePeriod: Period?
	
	/// Is orderable
	public var orderable: FHIRPrimitive<FHIRBool>
	
	/// Item attached to this entry of the catalog
	public var referencedItem: Reference
	
	/// Another entry of the catalog related to this one
	public var relatedEntry: [CatalogEntryRelatedEntry]?
	
	/// Last updater of this catalog entry
	public var updatedBy: Reference?
	
	/// Notes and comments about this catalog entry
	public var note: [Annotation]?
	
	/// Estimated duration of the orderable item
	public var estimatedDuration: Duration?
	
	/// Billing code in the context of this catalog entry
	public var billingCode: [CodeableConcept]?
	
	/// Billing summary in the context of this catalog entry
	public var billingSummary: FHIRPrimitive<FHIRString>?
	
	/// Schedule summary for the catalog entry
	public var scheduleSummary: FHIRPrimitive<FHIRString>?
	
	/// Summary of limitations for the catalog entry
	public var limitationSummary: FHIRPrimitive<FHIRString>?
	
	/// Regulatory  summary for the catalog entry
	public var regulatorySummary: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(orderable: FHIRPrimitive<FHIRBool>, referencedItem: Reference) {
		self.orderable = orderable
		self.referencedItem = referencedItem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							billingCode: [CodeableConcept]? = nil,
							billingSummary: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							effectivePeriod: Period? = nil,
							estimatedDuration: Duration? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							limitationSummary: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							note: [Annotation]? = nil,
							orderable: FHIRPrimitive<FHIRBool>,
							referencedItem: Reference,
							regulatorySummary: FHIRPrimitive<FHIRString>? = nil,
							relatedEntry: [CatalogEntryRelatedEntry]? = nil,
							scheduleSummary: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<CatalogEntryStatus>? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<CatalogEntryType>? = nil,
							updatedBy: Reference? = nil)
	{
		self.init(orderable: orderable, referencedItem: referencedItem)
		self.billingCode = billingCode
		self.billingSummary = billingSummary
		self.contained = contained
		self.effectivePeriod = effectivePeriod
		self.estimatedDuration = estimatedDuration
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.limitationSummary = limitationSummary
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.regulatorySummary = regulatorySummary
		self.relatedEntry = relatedEntry
		self.scheduleSummary = scheduleSummary
		self.status = status
		self.text = text
		self.type = type
		self.updatedBy = updatedBy
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case billingCode
		case billingSummary; case _billingSummary
		case effectivePeriod
		case estimatedDuration
		case identifier
		case limitationSummary; case _limitationSummary
		case name; case _name
		case note
		case orderable; case _orderable
		case referencedItem
		case regulatorySummary; case _regulatorySummary
		case relatedEntry
		case scheduleSummary; case _scheduleSummary
		case status; case _status
		case type; case _type
		case updatedBy
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.billingCode = try [CodeableConcept](from: _container, forKeyIfPresent: .billingCode)
		self.billingSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .billingSummary, auxiliaryKey: ._billingSummary)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.estimatedDuration = try Duration(from: _container, forKeyIfPresent: .estimatedDuration)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.limitationSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .limitationSummary, auxiliaryKey: ._limitationSummary)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.orderable = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .orderable, auxiliaryKey: ._orderable)
		self.referencedItem = try Reference(from: _container, forKey: .referencedItem)
		self.regulatorySummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .regulatorySummary, auxiliaryKey: ._regulatorySummary)
		self.relatedEntry = try [CatalogEntryRelatedEntry](from: _container, forKeyIfPresent: .relatedEntry)
		self.scheduleSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .scheduleSummary, auxiliaryKey: ._scheduleSummary)
		self.status = try FHIRPrimitive<CatalogEntryStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.type = try FHIRPrimitive<CatalogEntryType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.updatedBy = try Reference(from: _container, forKeyIfPresent: .updatedBy)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try billingCode?.encode(on: &_container, forKey: .billingCode)
		try billingSummary?.encode(on: &_container, forKey: .billingSummary, auxiliaryKey: ._billingSummary)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try estimatedDuration?.encode(on: &_container, forKey: .estimatedDuration)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try limitationSummary?.encode(on: &_container, forKey: .limitationSummary, auxiliaryKey: ._limitationSummary)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try orderable.encode(on: &_container, forKey: .orderable, auxiliaryKey: ._orderable)
		try referencedItem.encode(on: &_container, forKey: .referencedItem)
		try regulatorySummary?.encode(on: &_container, forKey: .regulatorySummary, auxiliaryKey: ._regulatorySummary)
		try relatedEntry?.encode(on: &_container, forKey: .relatedEntry)
		try scheduleSummary?.encode(on: &_container, forKey: .scheduleSummary, auxiliaryKey: ._scheduleSummary)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try updatedBy?.encode(on: &_container, forKey: .updatedBy)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CatalogEntry else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return billingCode == _other.billingCode
		    && billingSummary == _other.billingSummary
		    && effectivePeriod == _other.effectivePeriod
		    && estimatedDuration == _other.estimatedDuration
		    && identifier == _other.identifier
		    && limitationSummary == _other.limitationSummary
		    && name == _other.name
		    && note == _other.note
		    && orderable == _other.orderable
		    && referencedItem == _other.referencedItem
		    && regulatorySummary == _other.regulatorySummary
		    && relatedEntry == _other.relatedEntry
		    && scheduleSummary == _other.scheduleSummary
		    && status == _other.status
		    && type == _other.type
		    && updatedBy == _other.updatedBy
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(billingCode)
		hasher.combine(billingSummary)
		hasher.combine(effectivePeriod)
		hasher.combine(estimatedDuration)
		hasher.combine(identifier)
		hasher.combine(limitationSummary)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(orderable)
		hasher.combine(referencedItem)
		hasher.combine(regulatorySummary)
		hasher.combine(relatedEntry)
		hasher.combine(scheduleSummary)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(updatedBy)
	}
}

/**
 Another entry of the catalog related to this one.
 
 Used for example, to point to a substance, or to a device used to administer a medication.
 */
open class CatalogEntryRelatedEntry: BackboneElement {
	
	/// The type of relationship to the related entry.
	public var relationship: FHIRPrimitive<CatalogEntryRelationType>
	
	/// The reference to the related entry
	public var target: Reference
	
	/// Designated initializer taking all required properties
	public init(relationship: FHIRPrimitive<CatalogEntryRelationType>, target: Reference) {
		self.relationship = relationship
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							relationship: FHIRPrimitive<CatalogEntryRelationType>,
							target: Reference)
	{
		self.init(relationship: relationship, target: target)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case relationship; case _relationship
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.relationship = try FHIRPrimitive<CatalogEntryRelationType>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
		self.target = try Reference(from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try target.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CatalogEntryRelatedEntry else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return relationship == _other.relationship
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(relationship)
		hasher.combine(target)
	}
}
