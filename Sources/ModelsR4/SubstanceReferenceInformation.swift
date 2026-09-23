//
//  SubstanceReferenceInformation.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation)
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
 Todo.
 */
public struct SubstanceReferenceInformation: DomainResource {
	
	public static let resourceType: ResourceType = .substanceReferenceInformation
	
	/// Todo
	public var classification: [SubstanceReferenceInformationClassification]?
	
	/// Todo
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Todo
	public var gene: [SubstanceReferenceInformationGene]?
	
	/// Todo
	public var geneElement: [SubstanceReferenceInformationGeneElement]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var target: [SubstanceReferenceInformationTarget]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case classification
		case comment; case _comment
		case contained
		case `extension` = "extension"
		case gene
		case geneElement
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case target
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classification = try [SubstanceReferenceInformationClassification](from: _container, forKeyIfPresent: .classification)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gene = try [SubstanceReferenceInformationGene](from: _container, forKeyIfPresent: .gene)
		self.geneElement = try [SubstanceReferenceInformationGeneElement](from: _container, forKeyIfPresent: .geneElement)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try [SubstanceReferenceInformationTarget](from: _container, forKeyIfPresent: .target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try classification?.encode(on: &_container, forKey: .classification)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gene?.encode(on: &_container, forKey: .gene)
		try geneElement?.encode(on: &_container, forKey: .geneElement)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target?.encode(on: &_container, forKey: .target)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Todo.
 */
public struct SubstanceReferenceInformationClassification: BackboneElement {
	
	/// Todo
	public var classification: CodeableConcept?
	
	/// Todo
	public var domain: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var source: [Reference]?
	
	/// Todo
	public var subtype: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		classification: CodeableConcept? = nil,
		domain: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: [Reference]? = nil,
		subtype: [CodeableConcept]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
		case subtype
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classification = try CodeableConcept(from: _container, forKeyIfPresent: .classification)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.subtype = try [CodeableConcept](from: _container, forKeyIfPresent: .subtype)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classification?.encode(on: &_container, forKey: .classification)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
		try subtype?.encode(on: &_container, forKey: .subtype)
	}
}

/**
 Todo.
 */
public struct SubstanceReferenceInformationGene: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Todo
	public var gene: CodeableConcept?
	
	/// Todo
	public var geneSequenceOrigin: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var source: [Reference]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		gene: CodeableConcept? = nil,
		geneSequenceOrigin: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: [Reference]? = nil
	) {
		self.`extension` = `extension`
		self.gene = gene
		self.geneSequenceOrigin = geneSequenceOrigin
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case gene
		case geneSequenceOrigin
		case id; case _id
		case modifierExtension
		case source
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gene = try CodeableConcept(from: _container, forKeyIfPresent: .gene)
		self.geneSequenceOrigin = try CodeableConcept(from: _container, forKeyIfPresent: .geneSequenceOrigin)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gene?.encode(on: &_container, forKey: .gene)
		try geneSequenceOrigin?.encode(on: &_container, forKey: .geneSequenceOrigin)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
	}
}

/**
 Todo.
 */
public struct SubstanceReferenceInformationGeneElement: BackboneElement {
	
	/// Todo
	public var element: Identifier?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var source: [Reference]?
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		element: Identifier? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: [Reference]? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.element = try Identifier(from: _container, forKeyIfPresent: .element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try element?.encode(on: &_container, forKey: .element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Todo.
 */
public struct SubstanceReferenceInformationTarget: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Todo
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Todo
	public var amountType: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var interaction: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var organism: CodeableConcept?
	
	/// Todo
	public var organismType: CodeableConcept?
	
	/// Todo
	public var source: [Reference]?
	
	/// Todo
	public var target: Identifier?
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case interaction
		case modifierExtension
		case organism
		case organismType
		case source
		case target
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Self._decodeAmount(from: _container)
		self.amountType = try CodeableConcept(from: _container, forKeyIfPresent: .amountType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interaction = try CodeableConcept(from: _container, forKeyIfPresent: .interaction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organism = try CodeableConcept(from: _container, forKeyIfPresent: .organism)
		self.organismType = try CodeableConcept(from: _container, forKeyIfPresent: .organismType)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.target = try Identifier(from: _container, forKeyIfPresent: .target)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organism?.encode(on: &_container, forKey: .organism)
		try organismType?.encode(on: &_container, forKey: .organismType)
		try source?.encode(on: &_container, forKey: .source)
		try target?.encode(on: &_container, forKey: .target)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAmount(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AmountX? {
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
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
		return _t_amount
	}
}
