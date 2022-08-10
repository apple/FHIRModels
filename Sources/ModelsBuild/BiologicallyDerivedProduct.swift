//
//  BiologicallyDerivedProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct)
//  Copyright 2022 Apple Inc.
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
 This resource reflects an instance of a biologically derived product.
 
 This resource reflects an instance of a biologically derived product. A material substance originating from a
 biological entity intended to be transplanted or infused
 into another (possibly the same) biological entity.
 */
open class BiologicallyDerivedProduct: DomainResource {
	
	override open class var resourceType: ResourceType { return .biologicallyDerivedProduct }
	
	/// Broad category of this product.
	public var productCategory: FHIRPrimitive<BiologicallyDerivedProductCategory>?
	
	/// What this biologically derived product is
	public var productCode: CodeableConcept?
	
	/// BiologicallyDerivedProduct parent
	public var parent: [Reference]?
	
	/// Procedure request
	public var request: [Reference]?
	
	/// External ids for this item
	public var identifier: [Identifier]?
	
	/// An identifier that supports traceability to the biological entity that is the source of biological material in
	/// the product
	public var biologicalSource: Identifier?
	
	/// Processing facility
	public var processingFacility: [Reference]?
	
	/// Description of division
	public var division: FHIRPrimitive<FHIRString>?
	
	/// Whether the product is currently available.
	public var status: FHIRPrimitive<BiologicallyDerivedProductStatus>?
	
	/// Date of expiration
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// How this product was collected
	public var collection: BiologicallyDerivedProductCollection?
	
	/// Product storage temp requirements
	public var storageTempRequirements: Range?
	
	/// A property that is specific to this BiologicallyDerivedProduct instance
	public var property: [BiologicallyDerivedProductProperty]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		biologicalSource: Identifier? = nil,
		collection: BiologicallyDerivedProductCollection? = nil,
		contained: [ResourceProxy]? = nil,
		division: FHIRPrimitive<FHIRString>? = nil,
		expirationDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		parent: [Reference]? = nil,
		processingFacility: [Reference]? = nil,
		productCategory: FHIRPrimitive<BiologicallyDerivedProductCategory>? = nil,
		productCode: CodeableConcept? = nil,
		property: [BiologicallyDerivedProductProperty]? = nil,
		request: [Reference]? = nil,
		status: FHIRPrimitive<BiologicallyDerivedProductStatus>? = nil,
		storageTempRequirements: Range? = nil,
		text: Narrative? = nil
	) {
		self.init()
		self.biologicalSource = biologicalSource
		self.collection = collection
		self.contained = contained
		self.division = division
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.parent = parent
		self.processingFacility = processingFacility
		self.productCategory = productCategory
		self.productCode = productCode
		self.property = property
		self.request = request
		self.status = status
		self.storageTempRequirements = storageTempRequirements
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case biologicalSource
		case collection
		case division; case _division
		case expirationDate; case _expirationDate
		case identifier
		case parent
		case processingFacility
		case productCategory; case _productCategory
		case productCode
		case property
		case request
		case status; case _status
		case storageTempRequirements
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.biologicalSource = try Identifier(from: _container, forKeyIfPresent: .biologicalSource)
		self.collection = try BiologicallyDerivedProductCollection(from: _container, forKeyIfPresent: .collection)
		self.division = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .division, auxiliaryKey: ._division)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.processingFacility = try [Reference](from: _container, forKeyIfPresent: .processingFacility)
		self.productCategory = try FHIRPrimitive<BiologicallyDerivedProductCategory>(from: _container, forKeyIfPresent: .productCategory, auxiliaryKey: ._productCategory)
		self.productCode = try CodeableConcept(from: _container, forKeyIfPresent: .productCode)
		self.property = try [BiologicallyDerivedProductProperty](from: _container, forKeyIfPresent: .property)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<BiologicallyDerivedProductStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.storageTempRequirements = try Range(from: _container, forKeyIfPresent: .storageTempRequirements)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try biologicalSource?.encode(on: &_container, forKey: .biologicalSource)
		try collection?.encode(on: &_container, forKey: .collection)
		try division?.encode(on: &_container, forKey: .division, auxiliaryKey: ._division)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try parent?.encode(on: &_container, forKey: .parent)
		try processingFacility?.encode(on: &_container, forKey: .processingFacility)
		try productCategory?.encode(on: &_container, forKey: .productCategory, auxiliaryKey: ._productCategory)
		try productCode?.encode(on: &_container, forKey: .productCode)
		try property?.encode(on: &_container, forKey: .property)
		try request?.encode(on: &_container, forKey: .request)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try storageTempRequirements?.encode(on: &_container, forKey: .storageTempRequirements)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProduct else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return biologicalSource == _other.biologicalSource
		    && collection == _other.collection
		    && division == _other.division
		    && expirationDate == _other.expirationDate
		    && identifier == _other.identifier
		    && parent == _other.parent
		    && processingFacility == _other.processingFacility
		    && productCategory == _other.productCategory
		    && productCode == _other.productCode
		    && property == _other.property
		    && request == _other.request
		    && status == _other.status
		    && storageTempRequirements == _other.storageTempRequirements
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(biologicalSource)
		hasher.combine(collection)
		hasher.combine(division)
		hasher.combine(expirationDate)
		hasher.combine(identifier)
		hasher.combine(parent)
		hasher.combine(processingFacility)
		hasher.combine(productCategory)
		hasher.combine(productCode)
		hasher.combine(property)
		hasher.combine(request)
		hasher.combine(status)
		hasher.combine(storageTempRequirements)
	}
}

/**
 How this product was collected.
 */
open class BiologicallyDerivedProductCollection: BackboneElement {
	
	/// All possible types for "collected[x]"
	public enum CollectedX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Individual performing collection
	public var collector: Reference?
	
	/// Who is product from
	public var source: Reference?
	
	/// Time of product collection
	/// One of `collected[x]`
	public var collected: CollectedX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		collected: CollectedX? = nil,
		collector: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: Reference? = nil
	) {
		self.init()
		self.collected = collected
		self.collector = collector
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case collectedDateTime; case _collectedDateTime
		case collectedPeriod
		case collector
		case source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_collected: CollectedX? = nil
		if let collectedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .collectedDateTime, auxiliaryKey: ._collectedDateTime) {
			if _t_collected != nil {
				throw DecodingError.dataCorruptedError(forKey: .collectedDateTime, in: _container, debugDescription: "More than one value provided for \"collected\"")
			}
			_t_collected = .dateTime(collectedDateTime)
		}
		if let collectedPeriod = try Period(from: _container, forKeyIfPresent: .collectedPeriod) {
			if _t_collected != nil {
				throw DecodingError.dataCorruptedError(forKey: .collectedPeriod, in: _container, debugDescription: "More than one value provided for \"collected\"")
			}
			_t_collected = .period(collectedPeriod)
		}
		self.collected = _t_collected
		self.collector = try Reference(from: _container, forKeyIfPresent: .collector)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = collected {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .collectedDateTime, auxiliaryKey: ._collectedDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .collectedPeriod)
			}
		}
		try collector?.encode(on: &_container, forKey: .collector)
		try source?.encode(on: &_container, forKey: .source)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductCollection else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return collected == _other.collected
		    && collector == _other.collector
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(collected)
		hasher.combine(collector)
		hasher.combine(source)
	}
}

/**
 A property that is specific to this BiologicallyDerviedProduct instance.
 */
open class BiologicallyDerivedProductProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case integer(FHIRPrimitive<FHIRInteger>)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Code that specifies the property
	public var type: CodeableConcept
	
	/// Property values
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
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueInteger; case _valueInteger
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAttachment, CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueInteger, CodingKeys.valuePeriod, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
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
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductProperty else {
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
