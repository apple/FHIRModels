//
//  InventoryReport.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/InventoryReport)
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
 A report of inventory or stock items.
 */
public struct InventoryReport: DomainResource {
	
	public static let resourceType: ResourceType = .inventoryReport
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Whether the report is about the current inventory count (snapshot) or a differential change in inventory
	/// (change).
	public var countType: FHIRPrimitive<InventoryCountType>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the report
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// An inventory listing section (grouped by any of the attributes)
	public var inventoryListing: [InventoryReportInventoryListing]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A note associated with the InventoryReport
	public var note: [Annotation]?
	
	/// addition | subtraction
	public var operationType: CodeableConcept?
	
	/// The reason for this count - regular count, ad-hoc count, new arrivals, etc
	public var operationTypeReason: CodeableConcept?
	
	/// When the report has been submitted
	public var reportedDateTime: FHIRPrimitive<DateTime>
	
	/// Who submits the report
	public var reporter: Reference?
	
	/// The period the report refers to
	public var reportingPeriod: Period?
	
	/// The status of the inventory check or notification - whether this is draft (e.g. the report is still pending some
	/// updates) or active.
	public var status: FHIRPrimitive<InventoryReportStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		countType: FHIRPrimitive<InventoryCountType>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		inventoryListing: [InventoryReportInventoryListing]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		operationType: CodeableConcept? = nil,
		operationTypeReason: CodeableConcept? = nil,
		reportedDateTime: FHIRPrimitive<DateTime>,
		reporter: Reference? = nil,
		reportingPeriod: Period? = nil,
		status: FHIRPrimitive<InventoryReportStatus>,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.countType = countType
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.inventoryListing = inventoryListing
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.operationType = operationType
		self.operationTypeReason = operationTypeReason
		self.reportedDateTime = reportedDateTime
		self.reporter = reporter
		self.reportingPeriod = reportingPeriod
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case countType; case _countType
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case inventoryListing
		case language; case _language
		case meta
		case modifierExtension
		case note
		case operationType
		case operationTypeReason
		case reportedDateTime; case _reportedDateTime
		case reporter
		case reportingPeriod
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.countType = try FHIRPrimitive<InventoryCountType>(from: _container, forKey: .countType, auxiliaryKey: ._countType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.inventoryListing = try [InventoryReportInventoryListing](from: _container, forKeyIfPresent: .inventoryListing)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.operationType = try CodeableConcept(from: _container, forKeyIfPresent: .operationType)
		self.operationTypeReason = try CodeableConcept(from: _container, forKeyIfPresent: .operationTypeReason)
		self.reportedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .reportedDateTime, auxiliaryKey: ._reportedDateTime)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.reportingPeriod = try Period(from: _container, forKeyIfPresent: .reportingPeriod)
		self.status = try FHIRPrimitive<InventoryReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try countType.encode(on: &_container, forKey: .countType, auxiliaryKey: ._countType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try inventoryListing?.encode(on: &_container, forKey: .inventoryListing)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try operationType?.encode(on: &_container, forKey: .operationType)
		try operationTypeReason?.encode(on: &_container, forKey: .operationTypeReason)
		try reportedDateTime.encode(on: &_container, forKey: .reportedDateTime, auxiliaryKey: ._reportedDateTime)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try reportingPeriod?.encode(on: &_container, forKey: .reportingPeriod)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 An inventory listing section (grouped by any of the attributes).
 */
public struct InventoryReportInventoryListing: BackboneElement {
	
	/// The date and time when the items were counted
	public var countingDateTime: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The item or items in this listing
	public var item: [InventoryReportInventoryListingItem]?
	
	/// The status of the items that are being reported
	public var itemStatus: CodeableConcept?
	
	/// Location of the inventory items
	public var location: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		countingDateTime: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: [InventoryReportInventoryListingItem]? = nil,
		itemStatus: CodeableConcept? = nil,
		location: Reference? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.countingDateTime = countingDateTime
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.itemStatus = itemStatus
		self.location = location
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countingDateTime; case _countingDateTime
		case `extension` = "extension"
		case id; case _id
		case item
		case itemStatus
		case location
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.countingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .countingDateTime, auxiliaryKey: ._countingDateTime)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try [InventoryReportInventoryListingItem](from: _container, forKeyIfPresent: .item)
		self.itemStatus = try CodeableConcept(from: _container, forKeyIfPresent: .itemStatus)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try countingDateTime?.encode(on: &_container, forKey: .countingDateTime, auxiliaryKey: ._countingDateTime)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item?.encode(on: &_container, forKey: .item)
		try itemStatus?.encode(on: &_container, forKey: .itemStatus)
		try location?.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 The item or items in this listing.
 */
public struct InventoryReportInventoryListingItem: BackboneElement {
	
	/// The inventory category or classification of the items being reported
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The code or reference to the item type
	public var item: CodeableReference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The quantity of the item or items being reported
	public var quantity: Quantity
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity
	) {
		self.category = category
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
		case quantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try CodeableReference(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity.encode(on: &_container, forKey: .quantity)
	}
}
