//
//  Medication.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Medication)
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
 Definition of a Medication.
 
 This resource is primarily used for the identification and definition of a medication. It covers the ingredients and
 the packaging for a medication.
 */
public struct Medication: DomainResource {
	
	public static let resourceType: ResourceType = .medication
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// powder | tablets | capsule +
	public var form: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Picture of the medication
	public var image: [Attachment]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationIngredient]?
	
	/// True if a brand
	public var isBrand: FHIRPrimitive<FHIRBool>?
	
	/// True if medication does not require a prescription
	public var isOverTheCounter: FHIRPrimitive<FHIRBool>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Details about packaged medications
	public var package: MedicationPackage?
	
	/// A code to indicate if the medication is in active use.
	public var status: FHIRPrimitive<MedicationStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		image: [Attachment]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [MedicationIngredient]? = nil,
		isBrand: FHIRPrimitive<FHIRBool>? = nil,
		isOverTheCounter: FHIRPrimitive<FHIRBool>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		package: MedicationPackage? = nil,
		status: FHIRPrimitive<MedicationStatus>? = nil,
		text: Narrative? = nil
	) {
		self.code = code
		self.contained = contained
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.image = image
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.isBrand = isBrand
		self.isOverTheCounter = isOverTheCounter
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.package = package
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case code
		case contained
		case `extension` = "extension"
		case form
		case id; case _id
		case image
		case implicitRules; case _implicitRules
		case ingredient
		case isBrand; case _isBrand
		case isOverTheCounter; case _isOverTheCounter
		case language; case _language
		case manufacturer
		case meta
		case modifierExtension
		case package
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.image = try [Attachment](from: _container, forKeyIfPresent: .image)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [MedicationIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.isBrand = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isBrand, auxiliaryKey: ._isBrand)
		self.isOverTheCounter = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isOverTheCounter, auxiliaryKey: ._isOverTheCounter)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.package = try MedicationPackage(from: _container, forKeyIfPresent: .package)
		self.status = try FHIRPrimitive<MedicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try image?.encode(on: &_container, forKey: .image)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try isBrand?.encode(on: &_container, forKey: .isBrand, auxiliaryKey: ._isBrand)
		try isOverTheCounter?.encode(on: &_container, forKey: .isOverTheCounter, auxiliaryKey: ._isOverTheCounter)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try package?.encode(on: &_container, forKey: .package)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Active or inactive ingredient.
 
 Identifies a particular constituent of interest in the product.
 */
public struct MedicationIngredient: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Quantity of ingredient present
	public var amount: Ratio?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// The product contained
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: Ratio? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isActive: FHIRPrimitive<FHIRBool>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.isActive = isActive
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case `extension` = "extension"
		case id; case _id
		case isActive; case _isActive
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Ratio(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
public struct MedicationPackage: BackboneElement {
	
	/// Identifies a single production run
	public var batch: [MedicationPackageBatch]?
	
	/// E.g. box, vial, blister-pack
	public var container: CodeableConcept?
	
	/// What is  in the package
	public var content: [MedicationPackageContent]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		batch: [MedicationPackageBatch]? = nil,
		container: CodeableConcept? = nil,
		content: [MedicationPackageContent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.batch = batch
		self.container = container
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case batch
		case container
		case content
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.batch = try [MedicationPackageBatch](from: _container, forKeyIfPresent: .batch)
		self.container = try CodeableConcept(from: _container, forKeyIfPresent: .container)
		self.content = try [MedicationPackageContent](from: _container, forKeyIfPresent: .content)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try batch?.encode(on: &_container, forKey: .batch)
		try container?.encode(on: &_container, forKey: .container)
		try content?.encode(on: &_container, forKey: .content)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Identifies a single production run.
 
 Information about a group of medication produced or packaged from one production run.
 */
public struct MedicationPackageBatch: BackboneElement {
	
	/// When batch will expire
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier assigned to batch
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		expirationDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.id = id
		self.lotNumber = lotNumber
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expirationDate; case _expirationDate
		case `extension` = "extension"
		case id; case _id
		case lotNumber; case _lotNumber
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 What is  in the package.
 
 A set of components that go to make up the described item.
 */
public struct MedicationPackageContent: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Quantity present in the package
	public var amount: Quantity?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The item in the package
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}
