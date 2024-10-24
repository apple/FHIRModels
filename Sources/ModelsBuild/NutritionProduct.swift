//
//  NutritionProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/NutritionProduct)
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
 A product used for nutritional purposes (i.e. food or supplement).
 
 A food or supplement that is consumed by patients.
 */
open class NutritionProduct: DomainResource {
	
	override open class var resourceType: ResourceType { return .nutritionProduct }
	
	/// A code that can identify the product
	public var code: CodeableConcept?
	
	/// The current state of the product.
	public var status: FHIRPrimitive<NutritionProductStatus>
	
	/// Broad product groups, like Fruit, Grain, Beverages, or Vegetables Products
	public var category: [CodeableConcept]?
	
	/// Manufacturer, representative or officially responsible for the product
	public var manufacturer: [Reference]?
	
	/// The product's nutritional information expressed by the nutrients
	public var nutrient: [NutritionProductNutrient]?
	
	/// Textual description of product ingredients
	public var ingredientSummary: FHIRPrimitive<FHIRString>?
	
	/// Ingredients contained in this product
	public var ingredient: [NutritionProductIngredient]?
	
	/// The amount of energy present in the product expressed in kilocalories or kilojoules
	public var energy: Quantity?
	
	/// Specifies descriptive properties of the nutrition product
	public var characteristic: [NutritionProductCharacteristic]?
	
	/// One or several physical instances or occurrences of the nutrition product
	public var instance: [NutritionProductInstance]?
	
	/// Comments made about the product
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<NutritionProductStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: [CodeableConcept]? = nil,
		characteristic: [NutritionProductCharacteristic]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		energy: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [NutritionProductIngredient]? = nil,
		ingredientSummary: FHIRPrimitive<FHIRString>? = nil,
		instance: [NutritionProductInstance]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		nutrient: [NutritionProductNutrient]? = nil,
		status: FHIRPrimitive<NutritionProductStatus>,
		text: Narrative? = nil
	) {
		self.init(status: status)
		self.category = category
		self.characteristic = characteristic
		self.code = code
		self.contained = contained
		self.energy = energy
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.ingredientSummary = ingredientSummary
		self.instance = instance
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.nutrient = nutrient
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case characteristic
		case code
		case energy
		case ingredient
		case ingredientSummary; case _ingredientSummary
		case instance
		case manufacturer
		case note
		case nutrient
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [NutritionProductCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.energy = try Quantity(from: _container, forKeyIfPresent: .energy)
		self.ingredient = try [NutritionProductIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.ingredientSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ingredientSummary, auxiliaryKey: ._ingredientSummary)
		self.instance = try [NutritionProductInstance](from: _container, forKeyIfPresent: .instance)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.nutrient = try [NutritionProductNutrient](from: _container, forKeyIfPresent: .nutrient)
		self.status = try FHIRPrimitive<NutritionProductStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try energy?.encode(on: &_container, forKey: .energy)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try ingredientSummary?.encode(on: &_container, forKey: .ingredientSummary, auxiliaryKey: ._ingredientSummary)
		try instance?.encode(on: &_container, forKey: .instance)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try note?.encode(on: &_container, forKey: .note)
		try nutrient?.encode(on: &_container, forKey: .nutrient)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionProduct else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && characteristic == _other.characteristic
		    && code == _other.code
		    && energy == _other.energy
		    && ingredient == _other.ingredient
		    && ingredientSummary == _other.ingredientSummary
		    && instance == _other.instance
		    && manufacturer == _other.manufacturer
		    && note == _other.note
		    && nutrient == _other.nutrient
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(characteristic)
		hasher.combine(code)
		hasher.combine(energy)
		hasher.combine(ingredient)
		hasher.combine(ingredientSummary)
		hasher.combine(instance)
		hasher.combine(manufacturer)
		hasher.combine(note)
		hasher.combine(nutrient)
		hasher.combine(status)
	}
}

/**
 Specifies descriptive properties of the nutrition product.
 */
open class NutritionProductCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Code specifying the type of characteristic
	public var type: CodeableConcept
	
	/// The value of the characteristic
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueAttachment
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBase64Binary) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAttachment, CodingKeys.valueBase64Binary, CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueQuantity, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionProductCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Ingredients contained in this product.
 */
open class NutritionProductIngredient: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// The ingredient contained in the product
	public var item: CodeableReference
	
	/// The amount of ingredient that is in the product
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Known or suspected substances that are a part of this product
	public var allergen: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		allergen: FHIRPrimitive<FHIRBool>? = nil,
		amount: AmountX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil
	) {
		self.init(item: item)
		self.allergen = allergen
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allergen; case _allergen
		case amountQuantity
		case amountRatio
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allergen = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allergen, auxiliaryKey: ._allergen)
		var _t_amount: AmountX? = nil
		if let amountRatio = try Ratio(from: _container, forKeyIfPresent: .amountRatio) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRatio, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .ratio(amountRatio)
		}
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		self.amount = _t_amount
		self.item = try CodeableReference(from: _container, forKey: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allergen?.encode(on: &_container, forKey: .allergen, auxiliaryKey: ._allergen)
		if let _enum = amount {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .amountRatio)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			}
		}
		try item.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionProductIngredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allergen == _other.allergen
		    && amount == _other.amount
		    && item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allergen)
		hasher.combine(amount)
		hasher.combine(item)
	}
}

/**
 One or several physical instances or occurrences of the nutrition product.
 
 Conveys instance-level information about this product item. One or several physical, countable instances or occurrences
 of the product.
 */
open class NutritionProductInstance: BackboneElement {
	
	/// The amount of items or instances
	public var quantity: Quantity?
	
	/// The identifier for the physical instance, typically a serial number or manufacturer number
	public var identifier: [Identifier]?
	
	/// The name or brand for the specific product
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The identification of the batch or lot of the product
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// The expiry date or date and time for the product
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// The date until which the product is expected to be good for consumption
	public var useBy: FHIRPrimitive<DateTime>?
	
	/// An identifier that supports traceability to the event during which material in this product from one or more
	/// biological entities was obtained or pooled
	public var biologicalSourceEvent: Identifier?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		biologicalSourceEvent: Identifier? = nil,
		expiry: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity? = nil,
		useBy: FHIRPrimitive<DateTime>? = nil
	) {
		self.init()
		self.biologicalSourceEvent = biologicalSourceEvent
		self.expiry = expiry
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.lotNumber = lotNumber
		self.modifierExtension = modifierExtension
		self.name = name
		self.quantity = quantity
		self.useBy = useBy
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case biologicalSourceEvent
		case expiry; case _expiry
		case identifier
		case lotNumber; case _lotNumber
		case name; case _name
		case quantity
		case useBy; case _useBy
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.biologicalSourceEvent = try Identifier(from: _container, forKeyIfPresent: .biologicalSourceEvent)
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.useBy = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .useBy, auxiliaryKey: ._useBy)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try biologicalSourceEvent?.encode(on: &_container, forKey: .biologicalSourceEvent)
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try useBy?.encode(on: &_container, forKey: .useBy, auxiliaryKey: ._useBy)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionProductInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return biologicalSourceEvent == _other.biologicalSourceEvent
		    && expiry == _other.expiry
		    && identifier == _other.identifier
		    && lotNumber == _other.lotNumber
		    && name == _other.name
		    && quantity == _other.quantity
		    && useBy == _other.useBy
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(biologicalSourceEvent)
		hasher.combine(expiry)
		hasher.combine(identifier)
		hasher.combine(lotNumber)
		hasher.combine(name)
		hasher.combine(quantity)
		hasher.combine(useBy)
	}
}

/**
 The product's nutritional information expressed by the nutrients.
 */
open class NutritionProductNutrient: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// The (relevant) nutrients in the product
	public var item: CodeableReference
	
	/// The amount of nutrient present in the product
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: AmountX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil
	) {
		self.init(item: item)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRatio
		case item
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountRatio = try Ratio(from: _container, forKeyIfPresent: .amountRatio) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRatio, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .ratio(amountRatio)
		}
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		self.amount = _t_amount
		self.item = try CodeableReference(from: _container, forKey: .item)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .amountRatio)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			}
		}
		try item.encode(on: &_container, forKey: .item)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionProductNutrient else {
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
