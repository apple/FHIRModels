//
//  SubstanceSourceMaterial.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial)
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
 Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material
 that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer
 substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled
 vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally
 diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a
 single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction
 information will be captured at the Substance information level and additional information for herbal extracts will be
 captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class:
 Structurally Diverse and the herbal annex.
 */
public struct SubstanceSourceMaterial: DomainResource {
	
	public static let resourceType: ResourceType = .substanceSourceMaterial
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The country where the plant material is harvested or the countries where the plasma is sourced from as laid down
	/// in accordance with the Plasma Master File. For “Plasma-derived substances” the attribute country of origin
	/// provides information about the countries used for the manufacturing of the Cryopoor plama or Crioprecipitate
	public var countryOfOrigin: [CodeableConcept]?
	
	/// Stage of life for animals, plants, insects and microorganisms. This information shall be provided only when the
	/// substance is significantly different in these stages (e.g. foetal bovine serum)
	public var developmentStage: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often
	/// necessary to define both Substances and Specified Group 1 Substances. For substances derived from Plants,
	/// fraction information will be captured at the Substance information level ( . Oils, Juices and Exudates).
	/// Additional information for Extracts, such as extraction solvent composition, will be captured at the Specified
	/// Substance Group 1 information level. For plasma-derived products fraction information will be captured at the
	/// Substance and the Specified Substance Group 1 levels
	public var fractionDescription: [SubstanceSourceMaterialFractionDescription]?
	
	/// The place/region where the plant is harvested or the places/regions where the animal source material has its
	/// habitat
	public var geographicalLocation: [FHIRPrimitive<FHIRString>]?
	
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
	
	/// This subclause describes the organism which the substance is derived from. For vaccines, the parent organism
	/// shall be specified based on these subclause elements. As an example, full taxonomy will be described for the
	/// Substance Name: ., Leaf
	public var organism: SubstanceSourceMaterialOrganism?
	
	/// The unique identifier associated with the source material parent organism shall be specified
	public var organismId: Identifier?
	
	/// The organism accepted Scientific name shall be provided based on the organism taxonomy
	public var organismName: FHIRPrimitive<FHIRString>?
	
	/// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID of the substance (fresh) of Ginkgo biloba
	/// L. or Ginkgo biloba L. (Whole plant)
	public var parentSubstanceId: [Identifier]?
	
	/// The parent substance of the Herbal Drug, or Herbal preparation
	public var parentSubstanceName: [FHIRPrimitive<FHIRString>]?
	
	/// To do
	public var partDescription: [SubstanceSourceMaterialPartDescription]?
	
	/// General high level classification of the source material specific to the origin of the material
	public var sourceMaterialClass: CodeableConcept?
	
	/// The state of the source material when extracted
	public var sourceMaterialState: CodeableConcept?
	
	/// The type of the source material shall be specified based on a controlled vocabulary. For vaccines, this
	/// subclause refers to the class of infectious agent
	public var sourceMaterialType: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		countryOfOrigin: [CodeableConcept]? = nil,
		developmentStage: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		fractionDescription: [SubstanceSourceMaterialFractionDescription]? = nil,
		geographicalLocation: [FHIRPrimitive<FHIRString>]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		organism: SubstanceSourceMaterialOrganism? = nil,
		organismId: Identifier? = nil,
		organismName: FHIRPrimitive<FHIRString>? = nil,
		parentSubstanceId: [Identifier]? = nil,
		parentSubstanceName: [FHIRPrimitive<FHIRString>]? = nil,
		partDescription: [SubstanceSourceMaterialPartDescription]? = nil,
		sourceMaterialClass: CodeableConcept? = nil,
		sourceMaterialState: CodeableConcept? = nil,
		sourceMaterialType: CodeableConcept? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.countryOfOrigin = countryOfOrigin
		self.developmentStage = developmentStage
		self.`extension` = `extension`
		self.fractionDescription = fractionDescription
		self.geographicalLocation = geographicalLocation
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organism = organism
		self.organismId = organismId
		self.organismName = organismName
		self.parentSubstanceId = parentSubstanceId
		self.parentSubstanceName = parentSubstanceName
		self.partDescription = partDescription
		self.sourceMaterialClass = sourceMaterialClass
		self.sourceMaterialState = sourceMaterialState
		self.sourceMaterialType = sourceMaterialType
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case countryOfOrigin
		case developmentStage
		case `extension` = "extension"
		case fractionDescription
		case geographicalLocation; case _geographicalLocation
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case organism
		case organismId
		case organismName; case _organismName
		case parentSubstanceId
		case parentSubstanceName; case _parentSubstanceName
		case partDescription
		case sourceMaterialClass
		case sourceMaterialState
		case sourceMaterialType
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.countryOfOrigin = try [CodeableConcept](from: _container, forKeyIfPresent: .countryOfOrigin)
		self.developmentStage = try CodeableConcept(from: _container, forKeyIfPresent: .developmentStage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fractionDescription = try [SubstanceSourceMaterialFractionDescription](from: _container, forKeyIfPresent: .fractionDescription)
		self.geographicalLocation = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .geographicalLocation, auxiliaryKey: ._geographicalLocation)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organism = try SubstanceSourceMaterialOrganism(from: _container, forKeyIfPresent: .organism)
		self.organismId = try Identifier(from: _container, forKeyIfPresent: .organismId)
		self.organismName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .organismName, auxiliaryKey: ._organismName)
		self.parentSubstanceId = try [Identifier](from: _container, forKeyIfPresent: .parentSubstanceId)
		self.parentSubstanceName = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .parentSubstanceName, auxiliaryKey: ._parentSubstanceName)
		self.partDescription = try [SubstanceSourceMaterialPartDescription](from: _container, forKeyIfPresent: .partDescription)
		self.sourceMaterialClass = try CodeableConcept(from: _container, forKeyIfPresent: .sourceMaterialClass)
		self.sourceMaterialState = try CodeableConcept(from: _container, forKeyIfPresent: .sourceMaterialState)
		self.sourceMaterialType = try CodeableConcept(from: _container, forKeyIfPresent: .sourceMaterialType)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try countryOfOrigin?.encode(on: &_container, forKey: .countryOfOrigin)
		try developmentStage?.encode(on: &_container, forKey: .developmentStage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fractionDescription?.encode(on: &_container, forKey: .fractionDescription)
		try geographicalLocation?.encode(on: &_container, forKey: .geographicalLocation, auxiliaryKey: ._geographicalLocation)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organism?.encode(on: &_container, forKey: .organism)
		try organismId?.encode(on: &_container, forKey: .organismId)
		try organismName?.encode(on: &_container, forKey: .organismName, auxiliaryKey: ._organismName)
		try parentSubstanceId?.encode(on: &_container, forKey: .parentSubstanceId)
		try parentSubstanceName?.encode(on: &_container, forKey: .parentSubstanceName, auxiliaryKey: ._parentSubstanceName)
		try partDescription?.encode(on: &_container, forKey: .partDescription)
		try sourceMaterialClass?.encode(on: &_container, forKey: .sourceMaterialClass)
		try sourceMaterialState?.encode(on: &_container, forKey: .sourceMaterialState)
		try sourceMaterialType?.encode(on: &_container, forKey: .sourceMaterialType)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often necessary to
 define both Substances and Specified Group 1 Substances. For substances derived from Plants, fraction information will
 be captured at the Substance information level ( . Oils, Juices and Exudates). Additional information for Extracts,
 such as extraction solvent composition, will be captured at the Specified Substance Group 1 information level. For
 plasma-derived products fraction information will be captured at the Substance and the Specified Substance Group 1
 levels.
 */
public struct SubstanceSourceMaterialFractionDescription: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// This element is capturing information about the fraction of a plant part, or human plasma for fractionation
	public var fraction: FHIRPrimitive<FHIRString>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The specific type of the material constituting the component. For Herbal preparations the particulars of the
	/// extracts (liquid/dry) is described in Specified Substance Group 1
	public var materialType: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		fraction: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		materialType: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.fraction = fraction
		self.id = id
		self.materialType = materialType
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case fraction; case _fraction
		case id; case _id
		case materialType
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fraction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fraction, auxiliaryKey: ._fraction)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.materialType = try CodeableConcept(from: _container, forKeyIfPresent: .materialType)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fraction?.encode(on: &_container, forKey: .fraction, auxiliaryKey: ._fraction)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try materialType?.encode(on: &_container, forKey: .materialType)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 This subclause describes the organism which the substance is derived from. For vaccines, the parent organism shall be
 specified based on these subclause elements. As an example, full taxonomy will be described for the Substance Name: .,
 Leaf.
 */
public struct SubstanceSourceMaterialOrganism: BackboneElement {
	
	/// 4.9.13.6.1 Author type (Conditional)
	public var author: [SubstanceSourceMaterialOrganismAuthor]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The family of an organism shall be specified
	public var family: CodeableConcept?
	
	/// The genus of an organism shall be specified; refers to the Latin epithet of the genus element of the
	/// plant/animal scientific name; it is present in names for genera, species and infraspecies
	public var genus: CodeableConcept?
	
	/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional)
	public var hybrid: SubstanceSourceMaterialOrganismHybrid?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The intraspecific description of an organism shall be specified based on a controlled vocabulary. For Influenza
	/// Vaccine, the intraspecific description shall contain the syntax of the antigen in line with the WHO convention
	public var intraspecificDescription: FHIRPrimitive<FHIRString>?
	
	/// The Intraspecific type of an organism shall be specified
	public var intraspecificType: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// 4.9.13.7.1 Kingdom (Conditional)
	public var organismGeneral: SubstanceSourceMaterialOrganismOrganismGeneral?
	
	/// The species of an organism shall be specified; refers to the Latin epithet of the species of the plant/animal;
	/// it is present in names for species and infraspecies
	public var species: CodeableConcept?
	
	/// Designated initializer
	public init(
		author: [SubstanceSourceMaterialOrganismAuthor]? = nil,
		`extension`: [Extension]? = nil,
		family: CodeableConcept? = nil,
		genus: CodeableConcept? = nil,
		hybrid: SubstanceSourceMaterialOrganismHybrid? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intraspecificDescription: FHIRPrimitive<FHIRString>? = nil,
		intraspecificType: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		organismGeneral: SubstanceSourceMaterialOrganismOrganismGeneral? = nil,
		species: CodeableConcept? = nil
	) {
		self.author = author
		self.`extension` = `extension`
		self.family = family
		self.genus = genus
		self.hybrid = hybrid
		self.id = id
		self.intraspecificDescription = intraspecificDescription
		self.intraspecificType = intraspecificType
		self.modifierExtension = modifierExtension
		self.organismGeneral = organismGeneral
		self.species = species
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case `extension` = "extension"
		case family
		case genus
		case hybrid
		case id; case _id
		case intraspecificDescription; case _intraspecificDescription
		case intraspecificType
		case modifierExtension
		case organismGeneral
		case species
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try [SubstanceSourceMaterialOrganismAuthor](from: _container, forKeyIfPresent: .author)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.family = try CodeableConcept(from: _container, forKeyIfPresent: .family)
		self.genus = try CodeableConcept(from: _container, forKeyIfPresent: .genus)
		self.hybrid = try SubstanceSourceMaterialOrganismHybrid(from: _container, forKeyIfPresent: .hybrid)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.intraspecificDescription = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .intraspecificDescription, auxiliaryKey: ._intraspecificDescription)
		self.intraspecificType = try CodeableConcept(from: _container, forKeyIfPresent: .intraspecificType)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organismGeneral = try SubstanceSourceMaterialOrganismOrganismGeneral(from: _container, forKeyIfPresent: .organismGeneral)
		self.species = try CodeableConcept(from: _container, forKeyIfPresent: .species)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try family?.encode(on: &_container, forKey: .family)
		try genus?.encode(on: &_container, forKey: .genus)
		try hybrid?.encode(on: &_container, forKey: .hybrid)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try intraspecificDescription?.encode(on: &_container, forKey: .intraspecificDescription, auxiliaryKey: ._intraspecificDescription)
		try intraspecificType?.encode(on: &_container, forKey: .intraspecificType)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organismGeneral?.encode(on: &_container, forKey: .organismGeneral)
		try species?.encode(on: &_container, forKey: .species)
	}
}

/**
 4.9.13.6.1 Author type (Conditional).
 */
public struct SubstanceSourceMaterialOrganismAuthor: BackboneElement {
	
	/// The author of an organism species shall be specified. The author year of an organism shall also be specified
	/// when applicable; refers to the year in which the first author(s) published the infraspecific plant/animal name
	/// (of any rank)
	public var authorDescription: FHIRPrimitive<FHIRString>?
	
	/// The type of author of an organism species shall be specified. The parenthetical author of an organism species
	/// refers to the first author who published the plant/animal name (of any rank). The primary author of an organism
	/// species refers to the first author(s), who validly published the plant/animal name
	public var authorType: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		authorDescription: FHIRPrimitive<FHIRString>? = nil,
		authorType: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.authorDescription = authorDescription
		self.authorType = authorType
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorDescription; case _authorDescription
		case authorType
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authorDescription = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .authorDescription, auxiliaryKey: ._authorDescription)
		self.authorType = try CodeableConcept(from: _container, forKeyIfPresent: .authorType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authorDescription?.encode(on: &_container, forKey: .authorDescription, auxiliaryKey: ._authorDescription)
		try authorType?.encode(on: &_container, forKey: .authorType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
 */
public struct SubstanceSourceMaterialOrganismHybrid: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The hybrid type of an organism shall be specified
	public var hybridType: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The identifier of the maternal species constituting the hybrid organism shall be specified based on a controlled
	/// vocabulary. For plants, the parents aren’t always known, and it is unlikely that it will be known which is
	/// maternal and which is paternal
	public var maternalOrganismId: FHIRPrimitive<FHIRString>?
	
	/// The name of the maternal species constituting the hybrid organism shall be specified. For plants, the parents
	/// aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal
	public var maternalOrganismName: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The identifier of the paternal species constituting the hybrid organism shall be specified based on a controlled
	/// vocabulary
	public var paternalOrganismId: FHIRPrimitive<FHIRString>?
	
	/// The name of the paternal species constituting the hybrid organism shall be specified
	public var paternalOrganismName: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		hybridType: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maternalOrganismId: FHIRPrimitive<FHIRString>? = nil,
		maternalOrganismName: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		paternalOrganismId: FHIRPrimitive<FHIRString>? = nil,
		paternalOrganismName: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.hybridType = hybridType
		self.id = id
		self.maternalOrganismId = maternalOrganismId
		self.maternalOrganismName = maternalOrganismName
		self.modifierExtension = modifierExtension
		self.paternalOrganismId = paternalOrganismId
		self.paternalOrganismName = paternalOrganismName
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case hybridType
		case id; case _id
		case maternalOrganismId; case _maternalOrganismId
		case maternalOrganismName; case _maternalOrganismName
		case modifierExtension
		case paternalOrganismId; case _paternalOrganismId
		case paternalOrganismName; case _paternalOrganismName
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hybridType = try CodeableConcept(from: _container, forKeyIfPresent: .hybridType)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maternalOrganismId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maternalOrganismId, auxiliaryKey: ._maternalOrganismId)
		self.maternalOrganismName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maternalOrganismName, auxiliaryKey: ._maternalOrganismName)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.paternalOrganismId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .paternalOrganismId, auxiliaryKey: ._paternalOrganismId)
		self.paternalOrganismName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .paternalOrganismName, auxiliaryKey: ._paternalOrganismName)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hybridType?.encode(on: &_container, forKey: .hybridType)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maternalOrganismId?.encode(on: &_container, forKey: .maternalOrganismId, auxiliaryKey: ._maternalOrganismId)
		try maternalOrganismName?.encode(on: &_container, forKey: .maternalOrganismName, auxiliaryKey: ._maternalOrganismName)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try paternalOrganismId?.encode(on: &_container, forKey: .paternalOrganismId, auxiliaryKey: ._paternalOrganismId)
		try paternalOrganismName?.encode(on: &_container, forKey: .paternalOrganismName, auxiliaryKey: ._paternalOrganismName)
	}
}

/**
 4.9.13.7.1 Kingdom (Conditional).
 */
public struct SubstanceSourceMaterialOrganismOrganismGeneral: BackboneElement {
	
	/// The class of an organism shall be specified
	public var `class`: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The kingdom of an organism shall be specified
	public var kingdom: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The order of an organism shall be specified,
	public var order: CodeableConcept?
	
	/// The phylum of an organism shall be specified
	public var phylum: CodeableConcept?
	
	/// Designated initializer
	public init(
		`class`: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		kingdom: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		order: CodeableConcept? = nil,
		phylum: CodeableConcept? = nil
	) {
		self.`class` = `class`
		self.`extension` = `extension`
		self.id = id
		self.kingdom = kingdom
		self.modifierExtension = modifierExtension
		self.order = order
		self.phylum = phylum
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `class` = "class"
		case `extension` = "extension"
		case id; case _id
		case kingdom
		case modifierExtension
		case order
		case phylum
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`class` = try CodeableConcept(from: _container, forKeyIfPresent: .`class`)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.kingdom = try CodeableConcept(from: _container, forKeyIfPresent: .kingdom)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.order = try CodeableConcept(from: _container, forKeyIfPresent: .order)
		self.phylum = try CodeableConcept(from: _container, forKeyIfPresent: .phylum)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try kingdom?.encode(on: &_container, forKey: .kingdom)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try order?.encode(on: &_container, forKey: .order)
		try phylum?.encode(on: &_container, forKey: .phylum)
	}
}

/**
 To do.
 */
public struct SubstanceSourceMaterialPartDescription: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Entity of anatomical origin of source material within an organism
	public var part: CodeableConcept?
	
	/// The detailed anatomic location when the part can be extracted from different anatomical locations of the
	/// organism. Multiple alternative locations may apply
	public var partLocation: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: CodeableConcept? = nil,
		partLocation: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.partLocation = partLocation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case part
		case partLocation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.part = try CodeableConcept(from: _container, forKeyIfPresent: .part)
		self.partLocation = try CodeableConcept(from: _container, forKeyIfPresent: .partLocation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try part?.encode(on: &_container, forKey: .part)
		try partLocation?.encode(on: &_container, forKey: .partLocation)
	}
}
