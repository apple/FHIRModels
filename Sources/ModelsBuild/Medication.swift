//
//  Medication.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Medication)
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
 
 This resource is primarily used for the identification and definition of a medication, including ingredients, for the
 purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication
 use.
 */
open class Medication: DomainResource {
	
	override open class var resourceType: ResourceType { return .medication }
	
	/// Business identifier for this medication
	public var identifier: [Identifier]?
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// A code to indicate if the medication is in active use.
	public var status: FHIRPrimitive<MedicationStatusCodes>?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// Amount of drug in package
	public var amount: Ratio?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationIngredient]?
	
	/// Details about packaged medications
	public var batch: MedicationBatch?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Ratio? = nil,
							batch: MedicationBatch? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							doseForm: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							ingredient: [MedicationIngredient]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							status: FHIRPrimitive<MedicationStatusCodes>? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.amount = amount
		self.batch = batch
		self.code = code
		self.contained = contained
		self.doseForm = doseForm
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case batch
		case code
		case doseForm
		case identifier
		case ingredient
		case manufacturer
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Ratio(from: _container, forKeyIfPresent: .amount)
		self.batch = try MedicationBatch(from: _container, forKeyIfPresent: .batch)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [MedicationIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.status = try FHIRPrimitive<MedicationStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try batch?.encode(on: &_container, forKey: .batch)
		try code?.encode(on: &_container, forKey: .code)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
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
		return amount == _other.amount
		    && batch == _other.batch
		    && code == _other.code
		    && doseForm == _other.doseForm
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && manufacturer == _other.manufacturer
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(batch)
		hasher.combine(code)
		hasher.combine(doseForm)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(manufacturer)
		hasher.combine(status)
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
open class MedicationBatch: BackboneElement {
	
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
		guard let _other = _other as? MedicationBatch else {
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
 Active or inactive ingredient.
 
 Identifies a particular constituent of interest in the product.
 */
open class MedicationIngredient: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// The ingredient (substance or medication) that the ingredient.strength relates to
	public var item: CodeableReference
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// Quantity of ingredient present
	/// One of `strength[x]`
	public var strength: StrengthX?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isActive: FHIRPrimitive<FHIRBool>? = nil,
							item: CodeableReference,
							modifierExtension: [Extension]? = nil,
							strength: StrengthX? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.isActive = isActive
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case isActive; case _isActive
		case item
		case strengthCodeableConcept
		case strengthQuantity
		case strengthRatio
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		self.item = try CodeableReference(from: _container, forKey: .item)
		var _t_strength: StrengthX? = nil
		if let strengthRatio = try Ratio(from: _container, forKeyIfPresent: .strengthRatio) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthRatio, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .ratio(strengthRatio)
		}
		if let strengthCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .strengthCodeableConcept) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthCodeableConcept, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .codeableConcept(strengthCodeableConcept)
		}
		if let strengthQuantity = try Quantity(from: _container, forKeyIfPresent: .strengthQuantity) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthQuantity, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .quantity(strengthQuantity)
		}
		self.strength = _t_strength
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		try item.encode(on: &_container, forKey: .item)
		if let _enum = strength {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .strengthRatio)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .strengthCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .strengthQuantity)
			}
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
		return isActive == _other.isActive
		    && item == _other.item
		    && strength == _other.strength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(isActive)
		hasher.combine(item)
		hasher.combine(strength)
	}
}
