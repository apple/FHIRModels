//
//  Medication.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Medication)
//  Copyright 2024 Apple Inc.
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
	
	/// Organization that has authorization to market medication
	public var marketingAuthorizationHolder: Reference?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// When the specified product code does not infer a package size, this is the specific amount of drug in the
	/// product
	public var totalVolume: Quantity?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationIngredient]?
	
	/// Details about packaged medications
	public var batch: MedicationBatch?
	
	/// Knowledge about this medication
	public var definition: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		batch: MedicationBatch? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		definition: Reference? = nil,
		doseForm: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [MedicationIngredient]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		marketingAuthorizationHolder: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		status: FHIRPrimitive<MedicationStatusCodes>? = nil,
		text: Narrative? = nil,
		totalVolume: Quantity? = nil
	) {
		self.init()
		self.batch = batch
		self.code = code
		self.contained = contained
		self.definition = definition
		self.doseForm = doseForm
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.marketingAuthorizationHolder = marketingAuthorizationHolder
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.status = status
		self.text = text
		self.totalVolume = totalVolume
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case batch
		case code
		case definition
		case doseForm
		case identifier
		case ingredient
		case marketingAuthorizationHolder
		case status; case _status
		case totalVolume
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.batch = try MedicationBatch(from: _container, forKeyIfPresent: .batch)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [MedicationIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.marketingAuthorizationHolder = try Reference(from: _container, forKeyIfPresent: .marketingAuthorizationHolder)
		self.status = try FHIRPrimitive<MedicationStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.totalVolume = try Quantity(from: _container, forKeyIfPresent: .totalVolume)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try batch?.encode(on: &_container, forKey: .batch)
		try code?.encode(on: &_container, forKey: .code)
		try definition?.encode(on: &_container, forKey: .definition)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try marketingAuthorizationHolder?.encode(on: &_container, forKey: .marketingAuthorizationHolder)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try totalVolume?.encode(on: &_container, forKey: .totalVolume)
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
		return batch == _other.batch
		    && code == _other.code
		    && definition == _other.definition
		    && doseForm == _other.doseForm
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && marketingAuthorizationHolder == _other.marketingAuthorizationHolder
		    && status == _other.status
		    && totalVolume == _other.totalVolume
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(batch)
		hasher.combine(code)
		hasher.combine(definition)
		hasher.combine(doseForm)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(marketingAuthorizationHolder)
		hasher.combine(status)
		hasher.combine(totalVolume)
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
		modifierExtension: [Extension]? = nil
	) {
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
		strength: StrengthX? = nil
	) {
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
