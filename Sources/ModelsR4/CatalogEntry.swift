//
//  CatalogEntry.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/CatalogEntry)
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
	
	/// Unique identifier of the catalog item
	public var identifier: [Identifier]?
	
	/// The type of item - medication, device, service, protocol or other
	public var type: CodeableConcept?
	
	/// Whether the entry represents an orderable item
	public var orderable: FHIRPrimitive<FHIRBool>
	
	/// The item that is being defined
	public var referencedItem: Reference
	
	/// Any additional identifier(s) for the catalog item, in the same granularity or concept
	public var additionalIdentifier: [Identifier]?
	
	/// Classification (category or class) of the item entry
	public var classification: [CodeableConcept]?
	
	/// Used to support catalog exchange even for unsupported products, e.g. getting list of medications even if not
	/// prescribable.
	public var status: FHIRPrimitive<PublicationStatus>?
	
	/// The time period in which this catalog entry is expected to be active
	public var validityPeriod: Period?
	
	/// The date until which this catalog entry is expected to be active
	public var validTo: FHIRPrimitive<DateTime>?
	
	/// When was this catalog last updated
	public var lastUpdated: FHIRPrimitive<DateTime>?
	
	/// Additional characteristics of the catalog entry
	public var additionalCharacteristic: [CodeableConcept]?
	
	/// Additional classification of the catalog entry
	public var additionalClassification: [CodeableConcept]?
	
	/// An item that this catalog entry is related to
	public var relatedEntry: [CatalogEntryRelatedEntry]?
	
	/// Designated initializer taking all required properties
	public init(orderable: FHIRPrimitive<FHIRBool>, referencedItem: Reference) {
		self.orderable = orderable
		self.referencedItem = referencedItem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							validityPeriod: Period? = nil)
	{
		self.init(orderable: orderable, referencedItem: referencedItem)
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
		self.relatedEntry = relatedEntry
		self.status = status
		self.text = text
		self.type = type
		self.validTo = validTo
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalCharacteristic
		case additionalClassification
		case additionalIdentifier
		case classification
		case identifier
		case lastUpdated; case _lastUpdated
		case orderable; case _orderable
		case referencedItem
		case relatedEntry
		case status; case _status
		case type
		case validTo; case _validTo
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalCharacteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .additionalCharacteristic)
		self.additionalClassification = try [CodeableConcept](from: _container, forKeyIfPresent: .additionalClassification)
		self.additionalIdentifier = try [Identifier](from: _container, forKeyIfPresent: .additionalIdentifier)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastUpdated = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastUpdated, auxiliaryKey: ._lastUpdated)
		self.orderable = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .orderable, auxiliaryKey: ._orderable)
		self.referencedItem = try Reference(from: _container, forKey: .referencedItem)
		self.relatedEntry = try [CatalogEntryRelatedEntry](from: _container, forKeyIfPresent: .relatedEntry)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.validTo = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .validTo, auxiliaryKey: ._validTo)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalCharacteristic?.encode(on: &_container, forKey: .additionalCharacteristic)
		try additionalClassification?.encode(on: &_container, forKey: .additionalClassification)
		try additionalIdentifier?.encode(on: &_container, forKey: .additionalIdentifier)
		try classification?.encode(on: &_container, forKey: .classification)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastUpdated?.encode(on: &_container, forKey: .lastUpdated, auxiliaryKey: ._lastUpdated)
		try orderable.encode(on: &_container, forKey: .orderable, auxiliaryKey: ._orderable)
		try referencedItem.encode(on: &_container, forKey: .referencedItem)
		try relatedEntry?.encode(on: &_container, forKey: .relatedEntry)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try validTo?.encode(on: &_container, forKey: .validTo, auxiliaryKey: ._validTo)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
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
		return additionalCharacteristic == _other.additionalCharacteristic
		    && additionalClassification == _other.additionalClassification
		    && additionalIdentifier == _other.additionalIdentifier
		    && classification == _other.classification
		    && identifier == _other.identifier
		    && lastUpdated == _other.lastUpdated
		    && orderable == _other.orderable
		    && referencedItem == _other.referencedItem
		    && relatedEntry == _other.relatedEntry
		    && status == _other.status
		    && type == _other.type
		    && validTo == _other.validTo
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalCharacteristic)
		hasher.combine(additionalClassification)
		hasher.combine(additionalIdentifier)
		hasher.combine(classification)
		hasher.combine(identifier)
		hasher.combine(lastUpdated)
		hasher.combine(orderable)
		hasher.combine(referencedItem)
		hasher.combine(relatedEntry)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(validTo)
		hasher.combine(validityPeriod)
	}
}

/**
 An item that this catalog entry is related to.
 
 Used for example, to point to a substance, or to a device used to administer a medication.
 */
open class CatalogEntryRelatedEntry: BackboneElement {
	
	/// The type of relation to the related item: child, parent, packageContent, containerPackage, usedIn, uses,
	/// requires, etc.
	public var relationtype: FHIRPrimitive<CatalogEntryRelationType>
	
	/// The reference to the related item
	public var item: Reference
	
	/// Designated initializer taking all required properties
	public init(item: Reference, relationtype: FHIRPrimitive<CatalogEntryRelationType>) {
		self.item = item
		self.relationtype = relationtype
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: Reference,
							modifierExtension: [Extension]? = nil,
							relationtype: FHIRPrimitive<CatalogEntryRelationType>)
	{
		self.init(item: item, relationtype: relationtype)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case item
		case relationtype; case _relationtype
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.item = try Reference(from: _container, forKey: .item)
		self.relationtype = try FHIRPrimitive<CatalogEntryRelationType>(from: _container, forKey: .relationtype, auxiliaryKey: ._relationtype)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try item.encode(on: &_container, forKey: .item)
		try relationtype.encode(on: &_container, forKey: .relationtype, auxiliaryKey: ._relationtype)
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
		return item == _other.item
		    && relationtype == _other.relationtype
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
		hasher.combine(relationtype)
	}
}
