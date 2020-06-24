//
//  BiologicallyDerivedProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct)
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
 A material substance originating from a biological entity.
 
 A material substance originating from a biological entity intended to be transplanted or infused
 into another (possibly the same) biological entity.
 */
open class BiologicallyDerivedProduct: DomainResource {
	
	override open class var resourceType: ResourceType { return .biologicallyDerivedProduct }
	
	/// External ids for this item
	public var identifier: [Identifier]?
	
	/// Broad category of this product.
	public var productCategory: FHIRPrimitive<BiologicallyDerivedProductCategory>?
	
	/// What this biologically derived product is
	public var productCode: CodeableConcept?
	
	/// Whether the product is currently available.
	public var status: FHIRPrimitive<BiologicallyDerivedProductStatus>?
	
	/// Procedure request
	public var request: [Reference]?
	
	/// The amount of this biologically derived product
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// BiologicallyDerivedProduct parent
	public var parent: [Reference]?
	
	/// How this product was collected
	public var collection: BiologicallyDerivedProductCollection?
	
	/// Any processing of the product during collection
	public var processing: [BiologicallyDerivedProductProcessing]?
	
	/// Any manipulation of product post-collection
	public var manipulation: BiologicallyDerivedProductManipulation?
	
	/// Product storage
	public var storage: [BiologicallyDerivedProductStorage]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							collection: BiologicallyDerivedProductCollection? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							manipulation: BiologicallyDerivedProductManipulation? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							parent: [Reference]? = nil,
							processing: [BiologicallyDerivedProductProcessing]? = nil,
							productCategory: FHIRPrimitive<BiologicallyDerivedProductCategory>? = nil,
							productCode: CodeableConcept? = nil,
							quantity: FHIRPrimitive<FHIRInteger>? = nil,
							request: [Reference]? = nil,
							status: FHIRPrimitive<BiologicallyDerivedProductStatus>? = nil,
							storage: [BiologicallyDerivedProductStorage]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.collection = collection
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.manipulation = manipulation
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.parent = parent
		self.processing = processing
		self.productCategory = productCategory
		self.productCode = productCode
		self.quantity = quantity
		self.request = request
		self.status = status
		self.storage = storage
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case collection
		case identifier
		case manipulation
		case parent
		case processing
		case productCategory; case _productCategory
		case productCode
		case quantity; case _quantity
		case request
		case status; case _status
		case storage
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.collection = try BiologicallyDerivedProductCollection(from: _container, forKeyIfPresent: .collection)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.manipulation = try BiologicallyDerivedProductManipulation(from: _container, forKeyIfPresent: .manipulation)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.processing = try [BiologicallyDerivedProductProcessing](from: _container, forKeyIfPresent: .processing)
		self.productCategory = try FHIRPrimitive<BiologicallyDerivedProductCategory>(from: _container, forKeyIfPresent: .productCategory, auxiliaryKey: ._productCategory)
		self.productCode = try CodeableConcept(from: _container, forKeyIfPresent: .productCode)
		self.quantity = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<BiologicallyDerivedProductStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.storage = try [BiologicallyDerivedProductStorage](from: _container, forKeyIfPresent: .storage)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try collection?.encode(on: &_container, forKey: .collection)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try manipulation?.encode(on: &_container, forKey: .manipulation)
		try parent?.encode(on: &_container, forKey: .parent)
		try processing?.encode(on: &_container, forKey: .processing)
		try productCategory?.encode(on: &_container, forKey: .productCategory, auxiliaryKey: ._productCategory)
		try productCode?.encode(on: &_container, forKey: .productCode)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try request?.encode(on: &_container, forKey: .request)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try storage?.encode(on: &_container, forKey: .storage)
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
		return collection == _other.collection
		    && identifier == _other.identifier
		    && manipulation == _other.manipulation
		    && parent == _other.parent
		    && processing == _other.processing
		    && productCategory == _other.productCategory
		    && productCode == _other.productCode
		    && quantity == _other.quantity
		    && request == _other.request
		    && status == _other.status
		    && storage == _other.storage
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(collection)
		hasher.combine(identifier)
		hasher.combine(manipulation)
		hasher.combine(parent)
		hasher.combine(processing)
		hasher.combine(productCategory)
		hasher.combine(productCode)
		hasher.combine(quantity)
		hasher.combine(request)
		hasher.combine(status)
		hasher.combine(storage)
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
							source: Reference? = nil)
	{
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
 Any manipulation of product post-collection.
 
 Any manipulation of product post-collection that is intended to alter the product.  For example a buffy-coat enrichment
 or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
 */
open class BiologicallyDerivedProductManipulation: BackboneElement {
	
	/// All possible types for "time[x]"
	public enum TimeX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Description of manipulation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Time of manipulation
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							time: TimeX? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case timeDateTime; case _timeDateTime
		case timePeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timeDateTime, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .dateTime(timeDateTime)
		}
		if let timePeriod = try Period(from: _container, forKeyIfPresent: .timePeriod) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timePeriod, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .period(timePeriod)
		}
		self.time = _t_time
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = time {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .timePeriod)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductManipulation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && time == _other.time
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(time)
	}
}

/**
 Any processing of the product during collection.
 
 Any processing of the product during collection that does not change the fundamental nature of the product. For example
 adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
 */
open class BiologicallyDerivedProductProcessing: BackboneElement {
	
	/// All possible types for "time[x]"
	public enum TimeX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Description of of processing
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Procesing code
	public var procedure: CodeableConcept?
	
	/// Substance added during processing
	public var additive: Reference?
	
	/// Time of processing
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							additive: Reference? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							procedure: CodeableConcept? = nil,
							time: TimeX? = nil)
	{
		self.init()
		self.additive = additive
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case description_fhir = "description"; case _description_fhir = "_description"
		case procedure
		case timeDateTime; case _timeDateTime
		case timePeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additive = try Reference(from: _container, forKeyIfPresent: .additive)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.procedure = try CodeableConcept(from: _container, forKeyIfPresent: .procedure)
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timeDateTime, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .dateTime(timeDateTime)
		}
		if let timePeriod = try Period(from: _container, forKeyIfPresent: .timePeriod) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timePeriod, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .period(timePeriod)
		}
		self.time = _t_time
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additive?.encode(on: &_container, forKey: .additive)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try procedure?.encode(on: &_container, forKey: .procedure)
		if let _enum = time {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .timePeriod)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductProcessing else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
		    && description_fhir == _other.description_fhir
		    && procedure == _other.procedure
		    && time == _other.time
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(description_fhir)
		hasher.combine(procedure)
		hasher.combine(time)
	}
}

/**
 Product storage.
 */
open class BiologicallyDerivedProductStorage: BackboneElement {
	
	/// Description of storage
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Storage temperature
	public var temperature: FHIRPrimitive<FHIRDecimal>?
	
	/// Temperature scale used.
	public var scale: FHIRPrimitive<BiologicallyDerivedProductStorageScale>?
	
	/// Storage timeperiod
	public var duration: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							duration: Period? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							scale: FHIRPrimitive<BiologicallyDerivedProductStorageScale>? = nil,
							temperature: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.scale = scale
		self.temperature = temperature
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case duration
		case scale; case _scale
		case temperature; case _temperature
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.duration = try Period(from: _container, forKeyIfPresent: .duration)
		self.scale = try FHIRPrimitive<BiologicallyDerivedProductStorageScale>(from: _container, forKeyIfPresent: .scale, auxiliaryKey: ._scale)
		self.temperature = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .temperature, auxiliaryKey: ._temperature)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try duration?.encode(on: &_container, forKey: .duration)
		try scale?.encode(on: &_container, forKey: .scale, auxiliaryKey: ._scale)
		try temperature?.encode(on: &_container, forKey: .temperature, auxiliaryKey: ._temperature)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductStorage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && duration == _other.duration
		    && scale == _other.scale
		    && temperature == _other.temperature
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(duration)
		hasher.combine(scale)
		hasher.combine(temperature)
	}
}
