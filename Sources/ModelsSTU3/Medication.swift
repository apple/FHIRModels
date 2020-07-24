//
//  Medication.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Medication)
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
 Definition of a Medication.
 
 This resource is primarily used for the identification and definition of a medication. It covers the ingredients and
 the packaging for a medication.
 */
open class Medication: DomainResource {
	
	override open class var resourceType: ResourceType { return .medication }
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// A code to indicate if the medication is in active use.
	public var status: FHIRPrimitive<MedicationStatus>?
	
	/// True if a brand
	public var isBrand: FHIRPrimitive<FHIRBool>?
	
	/// True if medication does not require a prescription
	public var isOverTheCounter: FHIRPrimitive<FHIRBool>?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// powder | tablets | capsule +
	public var form: CodeableConcept?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationIngredient]?
	
	/// Details about packaged medications
	public var package: MedicationPackage?
	
	/// Picture of the medication
	public var image: [Attachment]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case code
		case form
		case image
		case ingredient
		case isBrand; case _isBrand
		case isOverTheCounter; case _isOverTheCounter
		case manufacturer
		case package
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.image = try [Attachment](from: _container, forKeyIfPresent: .image)
		self.ingredient = try [MedicationIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.isBrand = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isBrand, auxiliaryKey: ._isBrand)
		self.isOverTheCounter = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isOverTheCounter, auxiliaryKey: ._isOverTheCounter)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.package = try MedicationPackage(from: _container, forKeyIfPresent: .package)
		self.status = try FHIRPrimitive<MedicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try form?.encode(on: &_container, forKey: .form)
		try image?.encode(on: &_container, forKey: .image)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try isBrand?.encode(on: &_container, forKey: .isBrand, auxiliaryKey: ._isBrand)
		try isOverTheCounter?.encode(on: &_container, forKey: .isOverTheCounter, auxiliaryKey: ._isOverTheCounter)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try package?.encode(on: &_container, forKey: .package)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Medication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && form == _other.form
		    && image == _other.image
		    && ingredient == _other.ingredient
		    && isBrand == _other.isBrand
		    && isOverTheCounter == _other.isOverTheCounter
		    && manufacturer == _other.manufacturer
		    && package == _other.package
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(form)
		hasher.combine(image)
		hasher.combine(ingredient)
		hasher.combine(isBrand)
		hasher.combine(isOverTheCounter)
		hasher.combine(manufacturer)
		hasher.combine(package)
		hasher.combine(status)
	}
}

/**
 Active or inactive ingredient.
 
 Identifies a particular constituent of interest in the product.
 */
open class MedicationIngredient: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The product contained
	/// One of `item[x]`
	public var item: ItemX
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// Quantity of ingredient present
	public var amount: Ratio?
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Ratio? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isActive: FHIRPrimitive<FHIRBool>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.isActive = isActive
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case isActive; case _isActive
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		self.amount = try Ratio(from: _container, forKeyIfPresent: .amount)
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		
			switch item {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationIngredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && isActive == _other.isActive
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(isActive)
		hasher.combine(item)
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
open class MedicationPackage: BackboneElement {
	
	/// E.g. box, vial, blister-pack
	public var container: CodeableConcept?
	
	/// What is  in the package
	public var content: [MedicationPackageContent]?
	
	/// Identifies a single production run
	public var batch: [MedicationPackageBatch]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							batch: [MedicationPackageBatch]? = nil,
							container: CodeableConcept? = nil,
							content: [MedicationPackageContent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.batch = try [MedicationPackageBatch](from: _container, forKeyIfPresent: .batch)
		self.container = try CodeableConcept(from: _container, forKeyIfPresent: .container)
		self.content = try [MedicationPackageContent](from: _container, forKeyIfPresent: .content)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try batch?.encode(on: &_container, forKey: .batch)
		try container?.encode(on: &_container, forKey: .container)
		try content?.encode(on: &_container, forKey: .content)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationPackage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return batch == _other.batch
		    && container == _other.container
		    && content == _other.content
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(batch)
		hasher.combine(container)
		hasher.combine(content)
	}
}

/**
 Identifies a single production run.
 
 Information about a group of medication produced or packaged from one production run.
 */
open class MedicationPackageBatch: BackboneElement {
	
	/// Identifier assigned to batch
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// When batch will expire
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							expirationDate: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lotNumber: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.id = id
		self.lotNumber = lotNumber
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expirationDate; case _expirationDate
		case lotNumber; case _lotNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationPackageBatch else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expirationDate == _other.expirationDate
		    && lotNumber == _other.lotNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expirationDate)
		hasher.combine(lotNumber)
	}
}

/**
 What is  in the package.
 
 A set of components that go to make up the described item.
 */
open class MedicationPackageContent: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The item in the package
	/// One of `item[x]`
	public var item: ItemX
	
	/// Quantity present in the package
	public var amount: Quantity?
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		
			switch item {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationPackageContent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(item)
	}
}
