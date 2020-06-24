//
//  SubstanceReferenceInformation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation)
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
 Todo.
 */
open class SubstanceReferenceInformation: DomainResource {
	
	override open class var resourceType: ResourceType { return .substanceReferenceInformation }
	
	/// Todo
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var gene: [SubstanceReferenceInformationGene]?
	
	/// Todo
	public var geneElement: [SubstanceReferenceInformationGeneElement]?
	
	/// Todo
	public var classification: [SubstanceReferenceInformationClassification]?
	
	/// Todo
	public var target: [SubstanceReferenceInformationTarget]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							classification: [SubstanceReferenceInformationClassification]? = nil,
							comment: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							gene: [SubstanceReferenceInformationGene]? = nil,
							geneElement: [SubstanceReferenceInformationGeneElement]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							target: [SubstanceReferenceInformationTarget]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.classification = classification
		self.comment = comment
		self.contained = contained
		self.`extension` = `extension`
		self.gene = gene
		self.geneElement = geneElement
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case comment; case _comment
		case gene
		case geneElement
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classification = try [SubstanceReferenceInformationClassification](from: _container, forKeyIfPresent: .classification)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.gene = try [SubstanceReferenceInformationGene](from: _container, forKeyIfPresent: .gene)
		self.geneElement = try [SubstanceReferenceInformationGeneElement](from: _container, forKeyIfPresent: .geneElement)
		self.target = try [SubstanceReferenceInformationTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classification?.encode(on: &_container, forKey: .classification)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try gene?.encode(on: &_container, forKey: .gene)
		try geneElement?.encode(on: &_container, forKey: .geneElement)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceReferenceInformation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classification == _other.classification
		    && comment == _other.comment
		    && gene == _other.gene
		    && geneElement == _other.geneElement
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classification)
		hasher.combine(comment)
		hasher.combine(gene)
		hasher.combine(geneElement)
		hasher.combine(target)
	}
}

/**
 Todo.
 */
open class SubstanceReferenceInformationClassification: BackboneElement {
	
	/// Todo
	public var domain: CodeableConcept?
	
	/// Todo
	public var classification: CodeableConcept?
	
	/// Todo
	public var subtype: [CodeableConcept]?
	
	/// Todo
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							classification: CodeableConcept? = nil,
							domain: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: [Reference]? = nil,
							subtype: [CodeableConcept]? = nil)
	{
		self.init()
		self.classification = classification
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.subtype = subtype
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case domain
		case source
		case subtype
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classification = try CodeableConcept(from: _container, forKeyIfPresent: .classification)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.subtype = try [CodeableConcept](from: _container, forKeyIfPresent: .subtype)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classification?.encode(on: &_container, forKey: .classification)
		try domain?.encode(on: &_container, forKey: .domain)
		try source?.encode(on: &_container, forKey: .source)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceReferenceInformationClassification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classification == _other.classification
		    && domain == _other.domain
		    && source == _other.source
		    && subtype == _other.subtype
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classification)
		hasher.combine(domain)
		hasher.combine(source)
		hasher.combine(subtype)
	}
}

/**
 Todo.
 */
open class SubstanceReferenceInformationGene: BackboneElement {
	
	/// Todo
	public var geneSequenceOrigin: CodeableConcept?
	
	/// Todo
	public var gene: CodeableConcept?
	
	/// Todo
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							gene: CodeableConcept? = nil,
							geneSequenceOrigin: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: [Reference]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.gene = gene
		self.geneSequenceOrigin = geneSequenceOrigin
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case gene
		case geneSequenceOrigin
		case source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.gene = try CodeableConcept(from: _container, forKeyIfPresent: .gene)
		self.geneSequenceOrigin = try CodeableConcept(from: _container, forKeyIfPresent: .geneSequenceOrigin)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try gene?.encode(on: &_container, forKey: .gene)
		try geneSequenceOrigin?.encode(on: &_container, forKey: .geneSequenceOrigin)
		try source?.encode(on: &_container, forKey: .source)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceReferenceInformationGene else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return gene == _other.gene
		    && geneSequenceOrigin == _other.geneSequenceOrigin
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(gene)
		hasher.combine(geneSequenceOrigin)
		hasher.combine(source)
	}
}

/**
 Todo.
 */
open class SubstanceReferenceInformationGeneElement: BackboneElement {
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Todo
	public var element: Identifier?
	
	/// Todo
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							element: Identifier? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: [Reference]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
		case source
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.element = try Identifier(from: _container, forKeyIfPresent: .element)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try element?.encode(on: &_container, forKey: .element)
		try source?.encode(on: &_container, forKey: .source)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceReferenceInformationGeneElement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return element == _other.element
		    && source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(element)
		hasher.combine(source)
		hasher.combine(type)
	}
}

/**
 Todo.
 */
open class SubstanceReferenceInformationTarget: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Todo
	public var target: Identifier?
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Todo
	public var interaction: CodeableConcept?
	
	/// Todo
	public var organism: CodeableConcept?
	
	/// Todo
	public var organismType: CodeableConcept?
	
	/// Todo
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Todo
	public var amountType: CodeableConcept?
	
	/// Todo
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: AmountX? = nil,
							amountType: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							interaction: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							organism: CodeableConcept? = nil,
							organismType: CodeableConcept? = nil,
							source: [Reference]? = nil,
							target: Identifier? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.amount = amount
		self.amountType = amountType
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.organism = organism
		self.organismType = organismType
		self.source = source
		self.target = target
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRange
		case amountString; case _amountString
		case amountType
		case interaction
		case organism
		case organismType
		case source
		case target
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountRange = try Range(from: _container, forKeyIfPresent: .amountRange) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRange, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .range(amountRange)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.amountType = try CodeableConcept(from: _container, forKeyIfPresent: .amountType)
		self.interaction = try CodeableConcept(from: _container, forKeyIfPresent: .interaction)
		self.organism = try CodeableConcept(from: _container, forKeyIfPresent: .organism)
		self.organismType = try CodeableConcept(from: _container, forKeyIfPresent: .organismType)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.target = try Identifier(from: _container, forKeyIfPresent: .target)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .amountRange)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try amountType?.encode(on: &_container, forKey: .amountType)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try organism?.encode(on: &_container, forKey: .organism)
		try organismType?.encode(on: &_container, forKey: .organismType)
		try source?.encode(on: &_container, forKey: .source)
		try target?.encode(on: &_container, forKey: .target)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceReferenceInformationTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && amountType == _other.amountType
		    && interaction == _other.interaction
		    && organism == _other.organism
		    && organismType == _other.organismType
		    && source == _other.source
		    && target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(amountType)
		hasher.combine(interaction)
		hasher.combine(organism)
		hasher.combine(organismType)
		hasher.combine(source)
		hasher.combine(target)
		hasher.combine(type)
	}
}
