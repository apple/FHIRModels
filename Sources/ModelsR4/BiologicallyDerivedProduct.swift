//
//  BiologicallyDerivedProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct)
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
 A material substance originating from a biological entity.
 
 A material substance originating from a biological entity intended to be transplanted or infused
 into another (possibly the same) biological entity.
 */
public struct BiologicallyDerivedProduct: DomainResource {
	
	public static let resourceType: ResourceType = .biologicallyDerivedProduct
	
	/// How this product was collected
	public var collection: BiologicallyDerivedProductCollection?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External ids for this item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Any manipulation of product post-collection
	public var manipulation: BiologicallyDerivedProductManipulation?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// BiologicallyDerivedProduct parent
	public var parent: [Reference]?
	
	/// Any processing of the product during collection
	public var processing: [BiologicallyDerivedProductProcessing]?
	
	/// Broad category of this product.
	public var productCategory: FHIRPrimitive<BiologicallyDerivedProductCategory>?
	
	/// What this biologically derived product is
	public var productCode: CodeableConcept?
	
	/// The amount of this biologically derived product
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// Procedure request
	public var request: [Reference]?
	
	/// Whether the product is currently available.
	public var status: FHIRPrimitive<BiologicallyDerivedProductStatus>?
	
	/// Product storage
	public var storage: [BiologicallyDerivedProductStorage]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case collection
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case manipulation
		case meta
		case modifierExtension
		case parent
		case processing
		case productCategory; case _productCategory
		case productCode
		case quantity; case _quantity
		case request
		case status; case _status
		case storage
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.collection = try BiologicallyDerivedProductCollection(from: _container, forKeyIfPresent: .collection)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manipulation = try BiologicallyDerivedProductManipulation(from: _container, forKeyIfPresent: .manipulation)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.processing = try [BiologicallyDerivedProductProcessing](from: _container, forKeyIfPresent: .processing)
		self.productCategory = try FHIRPrimitive<BiologicallyDerivedProductCategory>(from: _container, forKeyIfPresent: .productCategory, auxiliaryKey: ._productCategory)
		self.productCode = try CodeableConcept(from: _container, forKeyIfPresent: .productCode)
		self.quantity = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<BiologicallyDerivedProductStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.storage = try [BiologicallyDerivedProductStorage](from: _container, forKeyIfPresent: .storage)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try collection?.encode(on: &_container, forKey: .collection)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manipulation?.encode(on: &_container, forKey: .manipulation)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parent?.encode(on: &_container, forKey: .parent)
		try processing?.encode(on: &_container, forKey: .processing)
		try productCategory?.encode(on: &_container, forKey: .productCategory, auxiliaryKey: ._productCategory)
		try productCode?.encode(on: &_container, forKey: .productCode)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try request?.encode(on: &_container, forKey: .request)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try storage?.encode(on: &_container, forKey: .storage)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 How this product was collected.
 */
public struct BiologicallyDerivedProductCollection: BackboneElement {
	
	/// All possible types for "collected[x]"
	public enum CollectedX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Time of product collection
	/// One of `collected[x]`
	public var collected: CollectedX?
	
	/// Individual performing collection
	public var collector: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Who is product from
	public var source: Reference?
	
	/// Designated initializer
	public init(
		collected: CollectedX? = nil,
		collector: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: Reference? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.collected = try Self._decodeCollected(from: _container)
		self.collector = try Reference(from: _container, forKeyIfPresent: .collector)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = collected {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .collectedDateTime, auxiliaryKey: ._collectedDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .collectedPeriod)
		}
		}
		try collector?.encode(on: &_container, forKey: .collector)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCollected(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CollectedX? {
		var _t_collected: CollectedX? = nil
		if let collectedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .collectedDateTime, auxiliaryKey: ._collectedDateTime) {
			_t_collected = .dateTime(collectedDateTime)
		}
		if let collectedPeriod = try Period(from: _container, forKeyIfPresent: .collectedPeriod) {
			if _t_collected != nil {
				throw DecodingError.dataCorruptedError(forKey: .collectedPeriod, in: _container, debugDescription: "More than one value provided for \"collected\"")
			}
			_t_collected = .period(collectedPeriod)
		}
		return _t_collected
	}
}

/**
 Any manipulation of product post-collection.
 
 Any manipulation of product post-collection that is intended to alter the product.  For example a buffy-coat enrichment
 or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
 */
public struct BiologicallyDerivedProductManipulation: BackboneElement {
	
	/// All possible types for "time[x]"
	public enum TimeX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Description of manipulation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Time of manipulation
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		time: TimeX? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case timeDateTime; case _timeDateTime
		case timePeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.time = try Self._decodeTime(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = time {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timePeriod)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTime(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimeX? {
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			_t_time = .dateTime(timeDateTime)
		}
		if let timePeriod = try Period(from: _container, forKeyIfPresent: .timePeriod) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timePeriod, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .period(timePeriod)
		}
		return _t_time
	}
}

/**
 Any processing of the product during collection.
 
 Any processing of the product during collection that does not change the fundamental nature of the product. For example
 adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
 */
public struct BiologicallyDerivedProductProcessing: BackboneElement {
	
	/// All possible types for "time[x]"
	public enum TimeX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Substance added during processing
	public var additive: Reference?
	
	/// Description of of processing
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Procesing code
	public var procedure: CodeableConcept?
	
	/// Time of processing
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer
	public init(
		additive: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: CodeableConcept? = nil,
		time: TimeX? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case procedure
		case timeDateTime; case _timeDateTime
		case timePeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try Reference(from: _container, forKeyIfPresent: .additive)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.procedure = try CodeableConcept(from: _container, forKeyIfPresent: .procedure)
		self.time = try Self._decodeTime(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try procedure?.encode(on: &_container, forKey: .procedure)
		if let _enum = time {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timePeriod)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTime(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimeX? {
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			_t_time = .dateTime(timeDateTime)
		}
		if let timePeriod = try Period(from: _container, forKeyIfPresent: .timePeriod) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timePeriod, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .period(timePeriod)
		}
		return _t_time
	}
}

/**
 Product storage.
 */
public struct BiologicallyDerivedProductStorage: BackboneElement {
	
	/// Description of storage
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Storage timeperiod
	public var duration: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Temperature scale used.
	public var scale: FHIRPrimitive<BiologicallyDerivedProductStorageScale>?
	
	/// Storage temperature
	public var temperature: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		duration: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		scale: FHIRPrimitive<BiologicallyDerivedProductStorageScale>? = nil,
		temperature: FHIRPrimitive<FHIRDecimal>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case scale; case _scale
		case temperature; case _temperature
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.duration = try Period(from: _container, forKeyIfPresent: .duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.scale = try FHIRPrimitive<BiologicallyDerivedProductStorageScale>(from: _container, forKeyIfPresent: .scale, auxiliaryKey: ._scale)
		self.temperature = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .temperature, auxiliaryKey: ._temperature)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try duration?.encode(on: &_container, forKey: .duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try scale?.encode(on: &_container, forKey: .scale, auxiliaryKey: ._scale)
		try temperature?.encode(on: &_container, forKey: .temperature, auxiliaryKey: ._temperature)
	}
}
