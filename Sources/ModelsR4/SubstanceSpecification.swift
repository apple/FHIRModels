//
//  SubstanceSpecification.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceSpecification)
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
 The detailed description of a substance, typically at a level beyond what is used for prescribing.
 */
public struct SubstanceSpecification: DomainResource {
	
	public static let resourceType: ResourceType = .substanceSpecification
	
	/// Codes associated with the substance
	public var code: [SubstanceSpecificationFHIRString]?
	
	/// Textual comment about this record of a substance
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Textual description of the substance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If the substance applies to only human or veterinary use
	public var domain: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier by which this substance is known
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Moiety, for structural modifications
	public var moiety: [SubstanceSpecificationMoiety]?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids)
	public var molecularWeight: [SubstanceSpecificationStructureIsotopeMolecularWeight]?
	
	/// Names applicable to this substance
	public var name: [SubstanceSpecificationName]?
	
	/// Data items specific to nucleic acids
	public var nucleicAcid: Reference?
	
	/// Data items specific to polymers
	public var polymer: Reference?
	
	/// General specifications for this substance, including how it is related to other substances
	public var property: [SubstanceSpecificationProperty]?
	
	/// Data items specific to proteins
	public var protein: Reference?
	
	/// General information detailing this substance
	public var referenceInformation: Reference?
	
	/// A link between this substance and another, with details of the relationship
	public var relationship: [SubstanceSpecificationRelationship]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Material or taxonomic/anatomical source for the substance
	public var sourceMaterial: Reference?
	
	/// Status of substance within the catalogue e.g. approved
	public var status: CodeableConcept?
	
	/// Structural information
	public var structure: SubstanceSpecificationStructure?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// High level categorization, e.g. polymer or nucleic acid
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		code: [SubstanceSpecificationFHIRString]? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		domain: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		moiety: [SubstanceSpecificationMoiety]? = nil,
		molecularWeight: [SubstanceSpecificationStructureIsotopeMolecularWeight]? = nil,
		name: [SubstanceSpecificationName]? = nil,
		nucleicAcid: Reference? = nil,
		polymer: Reference? = nil,
		property: [SubstanceSpecificationProperty]? = nil,
		protein: Reference? = nil,
		referenceInformation: Reference? = nil,
		relationship: [SubstanceSpecificationRelationship]? = nil,
		source: [Reference]? = nil,
		sourceMaterial: Reference? = nil,
		status: CodeableConcept? = nil,
		structure: SubstanceSpecificationStructure? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.code = code
		self.comment = comment
		self.contained = contained
		self.description_fhir = description_fhir
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.moiety = moiety
		self.molecularWeight = molecularWeight
		self.name = name
		self.nucleicAcid = nucleicAcid
		self.polymer = polymer
		self.property = property
		self.protein = protein
		self.referenceInformation = referenceInformation
		self.relationship = relationship
		self.source = source
		self.sourceMaterial = sourceMaterial
		self.status = status
		self.structure = structure
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case code
		case comment; case _comment
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case moiety
		case molecularWeight
		case name
		case nucleicAcid
		case polymer
		case property
		case protein
		case referenceInformation
		case relationship
		case source
		case sourceMaterial
		case status
		case structure
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try [SubstanceSpecificationFHIRString](from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.moiety = try [SubstanceSpecificationMoiety](from: _container, forKeyIfPresent: .moiety)
		self.molecularWeight = try [SubstanceSpecificationStructureIsotopeMolecularWeight](from: _container, forKeyIfPresent: .molecularWeight)
		self.name = try [SubstanceSpecificationName](from: _container, forKeyIfPresent: .name)
		self.nucleicAcid = try Reference(from: _container, forKeyIfPresent: .nucleicAcid)
		self.polymer = try Reference(from: _container, forKeyIfPresent: .polymer)
		self.property = try [SubstanceSpecificationProperty](from: _container, forKeyIfPresent: .property)
		self.protein = try Reference(from: _container, forKeyIfPresent: .protein)
		self.referenceInformation = try Reference(from: _container, forKeyIfPresent: .referenceInformation)
		self.relationship = try [SubstanceSpecificationRelationship](from: _container, forKeyIfPresent: .relationship)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.sourceMaterial = try Reference(from: _container, forKeyIfPresent: .sourceMaterial)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.structure = try SubstanceSpecificationStructure(from: _container, forKeyIfPresent: .structure)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try moiety?.encode(on: &_container, forKey: .moiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try name?.encode(on: &_container, forKey: .name)
		try nucleicAcid?.encode(on: &_container, forKey: .nucleicAcid)
		try polymer?.encode(on: &_container, forKey: .polymer)
		try property?.encode(on: &_container, forKey: .property)
		try protein?.encode(on: &_container, forKey: .protein)
		try referenceInformation?.encode(on: &_container, forKey: .referenceInformation)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try source?.encode(on: &_container, forKey: .source)
		try sourceMaterial?.encode(on: &_container, forKey: .sourceMaterial)
		try status?.encode(on: &_container, forKey: .status)
		try structure?.encode(on: &_container, forKey: .structure)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Codes associated with the substance.
 */
public struct SubstanceSpecificationFHIRString: BackboneElement {
	
	/// The specific code
	public var code: CodeableConcept?
	
	/// Any comment can be provided in this field, if necessary
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Status of the code assignment
	public var status: CodeableConcept?
	
	/// The date at which the code status is changed as part of the terminology maintenance
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: [Reference]? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil
	) {
		self.code = code
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.status = status
		self.statusDate = statusDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case comment; case _comment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
		case status
		case statusDate; case _statusDate
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
	}
}

/**
 Moiety, for structural modifications.
 */
public struct SubstanceSpecificationMoiety: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Quantitative value for this moiety
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier by which this moiety substance is known
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Molecular formula
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Textual name for this moiety substance
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// Role that the moiety is playing
	public var role: CodeableConcept?
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Designated initializer
	public init(
		amount: AmountX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		molecularFormula: FHIRPrimitive<FHIRString>? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		opticalActivity: CodeableConcept? = nil,
		role: CodeableConcept? = nil,
		stereochemistry: CodeableConcept? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.name = name
		self.opticalActivity = opticalActivity
		self.role = role
		self.stereochemistry = stereochemistry
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountString; case _amountString
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case molecularFormula; case _molecularFormula
		case name; case _name
		case opticalActivity
		case role
		case stereochemistry
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Self._decodeAmount(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = amount {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .amountQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try role?.encode(on: &_container, forKey: .role)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAmount(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AmountX? {
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			_t_amount = .quantity(amountQuantity)
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

/**
 Names applicable to this substance.
 */
public struct SubstanceSpecificationName: BackboneElement {
	
	/// The use context of this name for example if there is a different name a drug active ingredient as opposed to a
	/// food colour additive
	public var domain: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The jurisdiction where this name applies
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the name
	public var language: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The actual name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Details of the official nature of this name
	public var official: [SubstanceSpecificationNameOfficial]?
	
	/// If this is the preferred name for this substance
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// The status of the name
	public var status: CodeableConcept?
	
	/// A synonym of this name
	public var synonym: [SubstanceSpecificationName]?
	
	/// A translation for this name
	public var translation: [SubstanceSpecificationName]?
	
	/// Name type
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		domain: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		official: [SubstanceSpecificationNameOfficial]? = nil,
		preferred: FHIRPrimitive<FHIRBool>? = nil,
		source: [Reference]? = nil,
		status: CodeableConcept? = nil,
		synonym: [SubstanceSpecificationName]? = nil,
		translation: [SubstanceSpecificationName]? = nil,
		type: CodeableConcept? = nil
	) {
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.language = language
		self.modifierExtension = modifierExtension
		self.name = name
		self.official = official
		self.preferred = preferred
		self.source = source
		self.status = status
		self.synonym = synonym
		self.translation = translation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case domain
		case `extension` = "extension"
		case id; case _id
		case jurisdiction
		case language
		case modifierExtension
		case name; case _name
		case official
		case preferred; case _preferred
		case source
		case status
		case synonym
		case translation
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.domain = try [CodeableConcept](from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.official = try [SubstanceSpecificationNameOfficial](from: _container, forKeyIfPresent: .official)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.synonym = try [SubstanceSpecificationName](from: _container, forKeyIfPresent: .synonym)
		self.translation = try [SubstanceSpecificationName](from: _container, forKeyIfPresent: .translation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try official?.encode(on: &_container, forKey: .official)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try synonym?.encode(on: &_container, forKey: .synonym)
		try translation?.encode(on: &_container, forKey: .translation)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Details of the official nature of this name.
 */
public struct SubstanceSpecificationNameOfficial: BackboneElement {
	
	/// Which authority uses this official name
	public var authority: CodeableConcept?
	
	/// Date of official name change
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The status of the official name
	public var status: CodeableConcept?
	
	/// Designated initializer
	public init(
		authority: CodeableConcept? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil
	) {
		self.authority = authority
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try CodeableConcept(from: _container, forKeyIfPresent: .authority)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try status?.encode(on: &_container, forKey: .status)
	}
}

/**
 General specifications for this substance, including how it is related to other substances.
 */
public struct SubstanceSpecificationProperty: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "definingSubstance[x]"
	public enum DefiningSubstanceX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Quantitative value for this property
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// A category for this property, e.g. Physical, Chemical, Enzymatic
	public var category: CodeableConcept?
	
	/// Property type e.g. viscosity, pH, isoelectric point
	public var code: CodeableConcept?
	
	/// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol)
	/// One of `definingSubstance[x]`
	public var definingSubstance: DefiningSubstanceX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Parameters that were used in the measurement of a property (e.g. for viscosity: measured at 20C with a pH of
	/// 7.1)
	public var parameters: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		amount: AmountX? = nil,
		category: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		definingSubstance: DefiningSubstanceX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		parameters: FHIRPrimitive<FHIRString>? = nil
	) {
		self.amount = amount
		self.category = category
		self.code = code
		self.definingSubstance = definingSubstance
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameters = parameters
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountString; case _amountString
		case category
		case code
		case definingSubstanceCodeableConcept
		case definingSubstanceReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case parameters; case _parameters
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Self._decodeAmount(from: _container)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.definingSubstance = try Self._decodeDefiningSubstance(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parameters = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .parameters, auxiliaryKey: ._parameters)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = amount {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .amountQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
		}
		}
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		if let _enum = definingSubstance {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .definingSubstanceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .definingSubstanceReference)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parameters?.encode(on: &_container, forKey: .parameters, auxiliaryKey: ._parameters)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAmount(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AmountX? {
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			_t_amount = .quantity(amountQuantity)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		return _t_amount
	}
	
	private static func _decodeDefiningSubstance(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DefiningSubstanceX? {
		var _t_definingSubstance: DefiningSubstanceX? = nil
		if let definingSubstanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .definingSubstanceCodeableConcept) {
			_t_definingSubstance = .codeableConcept(definingSubstanceCodeableConcept)
		}
		if let definingSubstanceReference = try Reference(from: _container, forKeyIfPresent: .definingSubstanceReference) {
			if _t_definingSubstance != nil {
				throw DecodingError.dataCorruptedError(forKey: .definingSubstanceReference, in: _container, debugDescription: "More than one value provided for \"definingSubstance\"")
			}
			_t_definingSubstance = .reference(definingSubstanceReference)
		}
		return _t_definingSubstance
	}
}

/**
 A link between this substance and another, with details of the relationship.
 */
public struct SubstanceSpecificationRelationship: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "substance[x]"
	public enum SubstanceX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage
	/// of the active substance in relation to some other
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// For use when the numeric
	public var amountRatioLowLimit: Ratio?
	
	/// An operator for the amount, for example "average", "approximately", "less than"
	public var amountType: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that
	/// enzyme, out of several possible substance relationships
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For example "salt to parent", "active moiety", "starting material"
	public var relationship: CodeableConcept?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// A pointer to another substance, as a resource or just a representational code
	/// One of `substance[x]`
	public var substance: SubstanceX?
	
	/// Designated initializer
	public init(
		amount: AmountX? = nil,
		amountRatioLowLimit: Ratio? = nil,
		amountType: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDefining: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		relationship: CodeableConcept? = nil,
		source: [Reference]? = nil,
		substance: SubstanceX? = nil
	) {
		self.amount = amount
		self.amountRatioLowLimit = amountRatioLowLimit
		self.amountType = amountType
		self.`extension` = `extension`
		self.id = id
		self.isDefining = isDefining
		self.modifierExtension = modifierExtension
		self.relationship = relationship
		self.source = source
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRange
		case amountRatio
		case amountRatioLowLimit
		case amountString; case _amountString
		case amountType
		case `extension` = "extension"
		case id; case _id
		case isDefining; case _isDefining
		case modifierExtension
		case relationship
		case source
		case substanceCodeableConcept
		case substanceReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Self._decodeAmount(from: _container)
		self.amountRatioLowLimit = try Ratio(from: _container, forKeyIfPresent: .amountRatioLowLimit)
		self.amountType = try CodeableConcept(from: _container, forKeyIfPresent: .amountType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.substance = try Self._decodeSubstance(from: _container)
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
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .amountRatio)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
		}
		}
		try amountRatioLowLimit?.encode(on: &_container, forKey: .amountRatioLowLimit)
		try amountType?.encode(on: &_container, forKey: .amountType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try source?.encode(on: &_container, forKey: .source)
		if let _enum = substance {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .substanceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .substanceReference)
		}
		}
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
		if let amountRatio = try Ratio(from: _container, forKeyIfPresent: .amountRatio) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRatio, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .ratio(amountRatio)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		return _t_amount
	}
	
	private static func _decodeSubstance(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubstanceX? {
		var _t_substance: SubstanceX? = nil
		if let substanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .substanceCodeableConcept) {
			_t_substance = .codeableConcept(substanceCodeableConcept)
		}
		if let substanceReference = try Reference(from: _container, forKeyIfPresent: .substanceReference) {
			if _t_substance != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceReference, in: _container, debugDescription: "More than one value provided for \"substance\"")
			}
			_t_substance = .reference(substanceReference)
		}
		return _t_substance
	}
}

/**
 Structural information.
 */
public struct SubstanceSpecificationStructure: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio
	public var isotope: [SubstanceSpecificationStructureIsotope]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Molecular formula
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety
	/// separated by a dot
	public var molecularFormulaByMoiety: FHIRPrimitive<FHIRString>?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids)
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// Molecular structural representation
	public var representation: [SubstanceSpecificationStructureRepresentation]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isotope: [SubstanceSpecificationStructureIsotope]? = nil,
		modifierExtension: [Extension]? = nil,
		molecularFormula: FHIRPrimitive<FHIRString>? = nil,
		molecularFormulaByMoiety: FHIRPrimitive<FHIRString>? = nil,
		molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight? = nil,
		opticalActivity: CodeableConcept? = nil,
		representation: [SubstanceSpecificationStructureRepresentation]? = nil,
		source: [Reference]? = nil,
		stereochemistry: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.isotope = isotope
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.molecularFormulaByMoiety = molecularFormulaByMoiety
		self.molecularWeight = molecularWeight
		self.opticalActivity = opticalActivity
		self.representation = representation
		self.source = source
		self.stereochemistry = stereochemistry
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case isotope
		case modifierExtension
		case molecularFormula; case _molecularFormula
		case molecularFormulaByMoiety; case _molecularFormulaByMoiety
		case molecularWeight
		case opticalActivity
		case representation
		case source
		case stereochemistry
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isotope = try [SubstanceSpecificationStructureIsotope](from: _container, forKeyIfPresent: .isotope)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.molecularFormulaByMoiety = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		self.molecularWeight = try SubstanceSpecificationStructureIsotopeMolecularWeight(from: _container, forKeyIfPresent: .molecularWeight)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.representation = try [SubstanceSpecificationStructureRepresentation](from: _container, forKeyIfPresent: .representation)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isotope?.encode(on: &_container, forKey: .isotope)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try molecularFormulaByMoiety?.encode(on: &_container, forKey: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try representation?.encode(on: &_container, forKey: .representation)
		try source?.encode(on: &_container, forKey: .source)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
	}
}

/**
 Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
 */
public struct SubstanceSpecificationStructureIsotope: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Half life - for a non-natural nuclide
	public var halfLife: Quantity?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Substance identifier for each non-natural or radioisotope
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids)
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Substance name for each non-natural or radioisotope
	public var name: CodeableConcept?
	
	/// The type of isotopic substitution present in a single substance
	public var substitution: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		halfLife: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight? = nil,
		name: CodeableConcept? = nil,
		substitution: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.halfLife = halfLife
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.molecularWeight = molecularWeight
		self.name = name
		self.substitution = substitution
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case halfLife
		case id; case _id
		case identifier
		case modifierExtension
		case molecularWeight
		case name
		case substitution
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.halfLife = try Quantity(from: _container, forKeyIfPresent: .halfLife)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.molecularWeight = try SubstanceSpecificationStructureIsotopeMolecularWeight(from: _container, forKeyIfPresent: .molecularWeight)
		self.name = try CodeableConcept(from: _container, forKeyIfPresent: .name)
		self.substitution = try CodeableConcept(from: _container, forKeyIfPresent: .substitution)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try halfLife?.encode(on: &_container, forKey: .halfLife)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try name?.encode(on: &_container, forKey: .name)
		try substitution?.encode(on: &_container, forKey: .substitution)
	}
}

/**
 The molecular weight or weight range (for proteins, polymers or nucleic acids).
 */
public struct SubstanceSpecificationStructureIsotopeMolecularWeight: BackboneElement {
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field
	public var amount: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The method by which the molecular weight was determined
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of molecular weight such as exact, average (also known as. number average), weight average
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case `extension` = "extension"
		case id; case _id
		case method
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Molecular structural representation.
 */
public struct SubstanceSpecificationStructureRepresentation: BackboneElement {
	
	/// An attached file with the structural representation
	public var attachment: Attachment?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The structural representation as text string in a format e.g. InChI, SMILES, MOLFILE, CDX
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// The type of structure (e.g. Full, Partial, Representative)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		attachment: Attachment? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		representation: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.attachment = attachment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.representation = representation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case representation; case _representation
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attachment = try Attachment(from: _container, forKeyIfPresent: .attachment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.representation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attachment?.encode(on: &_container, forKey: .attachment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try type?.encode(on: &_container, forKey: .type)
	}
}
