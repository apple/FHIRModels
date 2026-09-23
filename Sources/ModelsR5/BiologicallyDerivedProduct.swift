//
//  BiologicallyDerivedProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct)
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
 This resource reflects an instance of a biologically derived product.
 
 This resource reflects an instance of a biologically derived product. A material substance originating from a
 biological entity intended to be transplanted or infused
 into another (possibly the same) biological entity.
 */
public struct BiologicallyDerivedProduct: DomainResource {
	
	public static let resourceType: ResourceType = .biologicallyDerivedProduct
	
	/// An identifier that supports traceability to the event during which material in this product from one or more
	/// biological entities was obtained or pooled
	public var biologicalSourceEvent: Identifier?
	
	/// How this product was collected
	public var collection: BiologicallyDerivedProductCollection?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// A unique identifier for an aliquot of a product
	public var division: FHIRPrimitive<FHIRString>?
	
	/// Date, and where relevant time, of expiration
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The parent biologically-derived product
	public var parent: [Reference]?
	
	/// Processing facilities responsible for the labeling and distribution of this biologically derived product
	public var processingFacility: [Reference]?
	
	/// organ | tissue | fluid | cells | biologicalAgent
	public var productCategory: Coding?
	
	/// A code that identifies the kind of this biologically derived product
	public var productCode: CodeableConcept?
	
	/// available | unavailable
	public var productStatus: Coding?
	
	/// A property that is specific to this BiologicallyDerviedProduct instance
	public var property: [BiologicallyDerivedProductProperty]?
	
	/// Request to obtain and/or infuse this product
	public var request: [Reference]?
	
	/// Product storage temperature requirements
	public var storageTempRequirements: Range?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		biologicalSourceEvent: Identifier? = nil,
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
		productCategory: Coding? = nil,
		productCode: CodeableConcept? = nil,
		productStatus: Coding? = nil,
		property: [BiologicallyDerivedProductProperty]? = nil,
		request: [Reference]? = nil,
		storageTempRequirements: Range? = nil,
		text: Narrative? = nil
	) {
		self.biologicalSourceEvent = biologicalSourceEvent
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
		self.productStatus = productStatus
		self.property = property
		self.request = request
		self.storageTempRequirements = storageTempRequirements
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case biologicalSourceEvent
		case collection
		case contained
		case division; case _division
		case expirationDate; case _expirationDate
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case parent
		case processingFacility
		case productCategory
		case productCode
		case productStatus
		case property
		case request
		case storageTempRequirements
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.biologicalSourceEvent = try Identifier(from: _container, forKeyIfPresent: .biologicalSourceEvent)
		self.collection = try BiologicallyDerivedProductCollection(from: _container, forKeyIfPresent: .collection)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.division = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .division, auxiliaryKey: ._division)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.processingFacility = try [Reference](from: _container, forKeyIfPresent: .processingFacility)
		self.productCategory = try Coding(from: _container, forKeyIfPresent: .productCategory)
		self.productCode = try CodeableConcept(from: _container, forKeyIfPresent: .productCode)
		self.productStatus = try Coding(from: _container, forKeyIfPresent: .productStatus)
		self.property = try [BiologicallyDerivedProductProperty](from: _container, forKeyIfPresent: .property)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.storageTempRequirements = try Range(from: _container, forKeyIfPresent: .storageTempRequirements)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try biologicalSourceEvent?.encode(on: &_container, forKey: .biologicalSourceEvent)
		try collection?.encode(on: &_container, forKey: .collection)
		try contained?.encode(on: &_container, forKey: .contained)
		try division?.encode(on: &_container, forKey: .division, auxiliaryKey: ._division)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parent?.encode(on: &_container, forKey: .parent)
		try processingFacility?.encode(on: &_container, forKey: .processingFacility)
		try productCategory?.encode(on: &_container, forKey: .productCategory)
		try productCode?.encode(on: &_container, forKey: .productCode)
		try productStatus?.encode(on: &_container, forKey: .productStatus)
		try property?.encode(on: &_container, forKey: .property)
		try request?.encode(on: &_container, forKey: .request)
		try storageTempRequirements?.encode(on: &_container, forKey: .storageTempRequirements)
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
	
	/// The patient who underwent the medical procedure to collect the product or the organization that facilitated the
	/// collection
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
 A property that is specific to this BiologicallyDerviedProduct instance.
 */
public struct BiologicallyDerivedProductProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code that specifies the property
	public var type: CodeableConcept
	
	/// Property values
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch value {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
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
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
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
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}
