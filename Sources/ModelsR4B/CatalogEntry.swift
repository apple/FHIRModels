//
//  CatalogEntry.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/CatalogEntry)
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
 An entry in a catalog.
 
 Catalog entries are wrappers that contextualize items included in a catalog.
 */
public struct CatalogEntry: DomainResource {
	
	public static let resourceType: ResourceType = .catalogEntry
	
	/// Additional characteristics of the catalog entry
	public var additionalCharacteristic: [CodeableConcept]?
	
	/// Additional classification of the catalog entry
	public var additionalClassification: [CodeableConcept]?
	
	/// Any additional identifier(s) for the catalog item, in the same granularity or concept
	public var additionalIdentifier: [Identifier]?
	
	/// Classification (category or class) of the item entry
	public var classification: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier of the catalog item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When was this catalog last updated
	public var lastUpdated: FHIRPrimitive<DateTime>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Whether the entry represents an orderable item
	public var orderable: FHIRPrimitive<FHIRBool>
	
	/// The item that is being defined
	public var referencedItem: Reference
	
	/// An item that this catalog entry is related to
	public var relatedEntry: [CatalogEntryRelatedEntry]?
	
	/// Used to support catalog exchange even for unsupported products, e.g. getting list of medications even if not
	/// prescribable.
	public var status: FHIRPrimitive<PublicationStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of item - medication, device, service, protocol or other
	public var type: CodeableConcept?
	
	/// The date until which this catalog entry is expected to be active
	public var validTo: FHIRPrimitive<DateTime>?
	
	/// The time period in which this catalog entry is expected to be active
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		additionalCharacteristic: [CodeableConcept]? = nil,
		additionalClassification: [CodeableConcept]? = nil,
		additionalIdentifier: [Identifier]? = nil,
		classification: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastUpdated: FHIRPrimitive<DateTime>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		orderable: FHIRPrimitive<FHIRBool>,
		referencedItem: Reference,
		relatedEntry: [CatalogEntryRelatedEntry]? = nil,
		status: FHIRPrimitive<PublicationStatus>? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		validTo: FHIRPrimitive<DateTime>? = nil,
		validityPeriod: Period? = nil
	) {
		self.additionalCharacteristic = additionalCharacteristic
		self.additionalClassification = additionalClassification
		self.additionalIdentifier = additionalIdentifier
		self.classification = classification
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastUpdated = lastUpdated
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.orderable = orderable
		self.referencedItem = referencedItem
		self.relatedEntry = relatedEntry
		self.status = status
		self.text = text
		self.type = type
		self.validTo = validTo
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case additionalCharacteristic
		case additionalClassification
		case additionalIdentifier
		case classification
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lastUpdated; case _lastUpdated
		case meta
		case modifierExtension
		case orderable; case _orderable
		case referencedItem
		case relatedEntry
		case status; case _status
		case text
		case type
		case validTo; case _validTo
		case validityPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalCharacteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .additionalCharacteristic)
		self.additionalClassification = try [CodeableConcept](from: _container, forKeyIfPresent: .additionalClassification)
		self.additionalIdentifier = try [Identifier](from: _container, forKeyIfPresent: .additionalIdentifier)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastUpdated = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastUpdated, auxiliaryKey: ._lastUpdated)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orderable = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .orderable, auxiliaryKey: ._orderable)
		self.referencedItem = try Reference(from: _container, forKey: .referencedItem)
		self.relatedEntry = try [CatalogEntryRelatedEntry](from: _container, forKeyIfPresent: .relatedEntry)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.validTo = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .validTo, auxiliaryKey: ._validTo)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try additionalCharacteristic?.encode(on: &_container, forKey: .additionalCharacteristic)
		try additionalClassification?.encode(on: &_container, forKey: .additionalClassification)
		try additionalIdentifier?.encode(on: &_container, forKey: .additionalIdentifier)
		try classification?.encode(on: &_container, forKey: .classification)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastUpdated?.encode(on: &_container, forKey: .lastUpdated, auxiliaryKey: ._lastUpdated)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orderable.encode(on: &_container, forKey: .orderable, auxiliaryKey: ._orderable)
		try referencedItem.encode(on: &_container, forKey: .referencedItem)
		try relatedEntry?.encode(on: &_container, forKey: .relatedEntry)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try validTo?.encode(on: &_container, forKey: .validTo, auxiliaryKey: ._validTo)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
	}
}

/**
 An item that this catalog entry is related to.
 
 Used for example, to point to a substance, or to a device used to administer a medication.
 */
public struct CatalogEntryRelatedEntry: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The reference to the related item
	public var item: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of relation to the related item: child, parent, packageContent, containerPackage, usedIn, uses,
	/// requires, etc.
	public var relationtype: FHIRPrimitive<CatalogEntryRelationType>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: Reference,
		modifierExtension: [Extension]? = nil,
		relationtype: FHIRPrimitive<CatalogEntryRelationType>
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
		self.relationtype = relationtype
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
		case relationtype; case _relationtype
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Reference(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relationtype = try FHIRPrimitive<CatalogEntryRelationType>(from: _container, forKey: .relationtype, auxiliaryKey: ._relationtype)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relationtype.encode(on: &_container, forKey: .relationtype, auxiliaryKey: ._relationtype)
	}
}
