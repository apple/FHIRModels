//
//  SubstanceSourceMaterial.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial)
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
open class SubstanceSourceMaterial: DomainResource {
	
	override open class var resourceType: ResourceType { return .substanceSourceMaterial }
	
	/// General high level classification of the source material specific to the origin of the material
	public var sourceMaterialClass: CodeableConcept?
	
	/// The type of the source material shall be specified based on a controlled vocabulary. For vaccines, this
	/// subclause refers to the class of infectious agent
	public var sourceMaterialType: CodeableConcept?
	
	/// The state of the source material when extracted
	public var sourceMaterialState: CodeableConcept?
	
	/// The unique identifier associated with the source material parent organism shall be specified
	public var organismId: Identifier?
	
	/// The organism accepted Scientific name shall be provided based on the organism taxonomy
	public var organismName: FHIRPrimitive<FHIRString>?
	
	/// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID of the substance (fresh) of Ginkgo biloba
	/// L. or Ginkgo biloba L. (Whole plant)
	public var parentSubstanceId: [Identifier]?
	
	/// The parent substance of the Herbal Drug, or Herbal preparation
	public var parentSubstanceName: [FHIRPrimitive<FHIRString>]?
	
	/// The country where the plant material is harvested or the countries where the plasma is sourced from as laid down
	/// in accordance with the Plasma Master File. For “Plasma-derived substances” the attribute country of origin
	/// provides information about the countries used for the manufacturing of the Cryopoor plama or Crioprecipitate
	public var countryOfOrigin: [CodeableConcept]?
	
	/// The place/region where the plant is harvested or the places/regions where the animal source material has its
	/// habitat
	public var geographicalLocation: [FHIRPrimitive<FHIRString>]?
	
	/// Stage of life for animals, plants, insects and microorganisms. This information shall be provided only when the
	/// substance is significantly different in these stages (e.g. foetal bovine serum)
	public var developmentStage: CodeableConcept?
	
	/// Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often
	/// necessary to define both Substances and Specified Group 1 Substances. For substances derived from Plants,
	/// fraction information will be captured at the Substance information level ( . Oils, Juices and Exudates).
	/// Additional information for Extracts, such as extraction solvent composition, will be captured at the Specified
	/// Substance Group 1 information level. For plasma-derived products fraction information will be captured at the
	/// Substance and the Specified Substance Group 1 levels
	public var fractionDescription: [SubstanceSourceMaterialFractionDescription]?
	
	/// This subclause describes the organism which the substance is derived from. For vaccines, the parent organism
	/// shall be specified based on these subclause elements. As an example, full taxonomy will be described for the
	/// Substance Name: ., Leaf
	public var organism: SubstanceSourceMaterialOrganism?
	
	/// To do
	public var partDescription: [SubstanceSourceMaterialPartDescription]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case countryOfOrigin
		case developmentStage
		case fractionDescription
		case geographicalLocation; case _geographicalLocation
		case organism
		case organismId
		case organismName; case _organismName
		case parentSubstanceId
		case parentSubstanceName; case _parentSubstanceName
		case partDescription
		case sourceMaterialClass
		case sourceMaterialState
		case sourceMaterialType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.countryOfOrigin = try [CodeableConcept](from: _container, forKeyIfPresent: .countryOfOrigin)
		self.developmentStage = try CodeableConcept(from: _container, forKeyIfPresent: .developmentStage)
		self.fractionDescription = try [SubstanceSourceMaterialFractionDescription](from: _container, forKeyIfPresent: .fractionDescription)
		self.geographicalLocation = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .geographicalLocation, auxiliaryKey: ._geographicalLocation)
		self.organism = try SubstanceSourceMaterialOrganism(from: _container, forKeyIfPresent: .organism)
		self.organismId = try Identifier(from: _container, forKeyIfPresent: .organismId)
		self.organismName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .organismName, auxiliaryKey: ._organismName)
		self.parentSubstanceId = try [Identifier](from: _container, forKeyIfPresent: .parentSubstanceId)
		self.parentSubstanceName = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .parentSubstanceName, auxiliaryKey: ._parentSubstanceName)
		self.partDescription = try [SubstanceSourceMaterialPartDescription](from: _container, forKeyIfPresent: .partDescription)
		self.sourceMaterialClass = try CodeableConcept(from: _container, forKeyIfPresent: .sourceMaterialClass)
		self.sourceMaterialState = try CodeableConcept(from: _container, forKeyIfPresent: .sourceMaterialState)
		self.sourceMaterialType = try CodeableConcept(from: _container, forKeyIfPresent: .sourceMaterialType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try countryOfOrigin?.encode(on: &_container, forKey: .countryOfOrigin)
		try developmentStage?.encode(on: &_container, forKey: .developmentStage)
		try fractionDescription?.encode(on: &_container, forKey: .fractionDescription)
		try geographicalLocation?.encode(on: &_container, forKey: .geographicalLocation, auxiliaryKey: ._geographicalLocation)
		try organism?.encode(on: &_container, forKey: .organism)
		try organismId?.encode(on: &_container, forKey: .organismId)
		try organismName?.encode(on: &_container, forKey: .organismName, auxiliaryKey: ._organismName)
		try parentSubstanceId?.encode(on: &_container, forKey: .parentSubstanceId)
		try parentSubstanceName?.encode(on: &_container, forKey: .parentSubstanceName, auxiliaryKey: ._parentSubstanceName)
		try partDescription?.encode(on: &_container, forKey: .partDescription)
		try sourceMaterialClass?.encode(on: &_container, forKey: .sourceMaterialClass)
		try sourceMaterialState?.encode(on: &_container, forKey: .sourceMaterialState)
		try sourceMaterialType?.encode(on: &_container, forKey: .sourceMaterialType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return countryOfOrigin == _other.countryOfOrigin
		    && developmentStage == _other.developmentStage
		    && fractionDescription == _other.fractionDescription
		    && geographicalLocation == _other.geographicalLocation
		    && organism == _other.organism
		    && organismId == _other.organismId
		    && organismName == _other.organismName
		    && parentSubstanceId == _other.parentSubstanceId
		    && parentSubstanceName == _other.parentSubstanceName
		    && partDescription == _other.partDescription
		    && sourceMaterialClass == _other.sourceMaterialClass
		    && sourceMaterialState == _other.sourceMaterialState
		    && sourceMaterialType == _other.sourceMaterialType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(countryOfOrigin)
		hasher.combine(developmentStage)
		hasher.combine(fractionDescription)
		hasher.combine(geographicalLocation)
		hasher.combine(organism)
		hasher.combine(organismId)
		hasher.combine(organismName)
		hasher.combine(parentSubstanceId)
		hasher.combine(parentSubstanceName)
		hasher.combine(partDescription)
		hasher.combine(sourceMaterialClass)
		hasher.combine(sourceMaterialState)
		hasher.combine(sourceMaterialType)
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
open class SubstanceSourceMaterialFractionDescription: BackboneElement {
	
	/// This element is capturing information about the fraction of a plant part, or human plasma for fractionation
	public var fraction: FHIRPrimitive<FHIRString>?
	
	/// The specific type of the material constituting the component. For Herbal preparations the particulars of the
	/// extracts (liquid/dry) is described in Specified Substance Group 1
	public var materialType: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							fraction: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							materialType: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.fraction = fraction
		self.id = id
		self.materialType = materialType
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case fraction; case _fraction
		case materialType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.fraction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fraction, auxiliaryKey: ._fraction)
		self.materialType = try CodeableConcept(from: _container, forKeyIfPresent: .materialType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try fraction?.encode(on: &_container, forKey: .fraction, auxiliaryKey: ._fraction)
		try materialType?.encode(on: &_container, forKey: .materialType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterialFractionDescription else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return fraction == _other.fraction
		    && materialType == _other.materialType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(fraction)
		hasher.combine(materialType)
	}
}

/**
 This subclause describes the organism which the substance is derived from. For vaccines, the parent organism shall be
 specified based on these subclause elements. As an example, full taxonomy will be described for the Substance Name: .,
 Leaf.
 */
open class SubstanceSourceMaterialOrganism: BackboneElement {
	
	/// The family of an organism shall be specified
	public var family: CodeableConcept?
	
	/// The genus of an organism shall be specified; refers to the Latin epithet of the genus element of the
	/// plant/animal scientific name; it is present in names for genera, species and infraspecies
	public var genus: CodeableConcept?
	
	/// The species of an organism shall be specified; refers to the Latin epithet of the species of the plant/animal;
	/// it is present in names for species and infraspecies
	public var species: CodeableConcept?
	
	/// The Intraspecific type of an organism shall be specified
	public var intraspecificType: CodeableConcept?
	
	/// The intraspecific description of an organism shall be specified based on a controlled vocabulary. For Influenza
	/// Vaccine, the intraspecific description shall contain the syntax of the antigen in line with the WHO convention
	public var intraspecificDescription: FHIRPrimitive<FHIRString>?
	
	/// 4.9.13.6.1 Author type (Conditional)
	public var author: [SubstanceSourceMaterialOrganismAuthor]?
	
	/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional)
	public var hybrid: SubstanceSourceMaterialOrganismHybrid?
	
	/// 4.9.13.7.1 Kingdom (Conditional)
	public var organismGeneral: SubstanceSourceMaterialOrganismOrganismGeneral?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							species: CodeableConcept? = nil)
	{
		self.init()
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
		case family
		case genus
		case hybrid
		case intraspecificDescription; case _intraspecificDescription
		case intraspecificType
		case organismGeneral
		case species
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [SubstanceSourceMaterialOrganismAuthor](from: _container, forKeyIfPresent: .author)
		self.family = try CodeableConcept(from: _container, forKeyIfPresent: .family)
		self.genus = try CodeableConcept(from: _container, forKeyIfPresent: .genus)
		self.hybrid = try SubstanceSourceMaterialOrganismHybrid(from: _container, forKeyIfPresent: .hybrid)
		self.intraspecificDescription = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .intraspecificDescription, auxiliaryKey: ._intraspecificDescription)
		self.intraspecificType = try CodeableConcept(from: _container, forKeyIfPresent: .intraspecificType)
		self.organismGeneral = try SubstanceSourceMaterialOrganismOrganismGeneral(from: _container, forKeyIfPresent: .organismGeneral)
		self.species = try CodeableConcept(from: _container, forKeyIfPresent: .species)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try family?.encode(on: &_container, forKey: .family)
		try genus?.encode(on: &_container, forKey: .genus)
		try hybrid?.encode(on: &_container, forKey: .hybrid)
		try intraspecificDescription?.encode(on: &_container, forKey: .intraspecificDescription, auxiliaryKey: ._intraspecificDescription)
		try intraspecificType?.encode(on: &_container, forKey: .intraspecificType)
		try organismGeneral?.encode(on: &_container, forKey: .organismGeneral)
		try species?.encode(on: &_container, forKey: .species)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterialOrganism else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && family == _other.family
		    && genus == _other.genus
		    && hybrid == _other.hybrid
		    && intraspecificDescription == _other.intraspecificDescription
		    && intraspecificType == _other.intraspecificType
		    && organismGeneral == _other.organismGeneral
		    && species == _other.species
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(family)
		hasher.combine(genus)
		hasher.combine(hybrid)
		hasher.combine(intraspecificDescription)
		hasher.combine(intraspecificType)
		hasher.combine(organismGeneral)
		hasher.combine(species)
	}
}

/**
 4.9.13.6.1 Author type (Conditional).
 */
open class SubstanceSourceMaterialOrganismAuthor: BackboneElement {
	
	/// The type of author of an organism species shall be specified. The parenthetical author of an organism species
	/// refers to the first author who published the plant/animal name (of any rank). The primary author of an organism
	/// species refers to the first author(s), who validly published the plant/animal name
	public var authorType: CodeableConcept?
	
	/// The author of an organism species shall be specified. The author year of an organism shall also be specified
	/// when applicable; refers to the year in which the first author(s) published the infraspecific plant/animal name
	/// (of any rank)
	public var authorDescription: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authorDescription: FHIRPrimitive<FHIRString>? = nil,
							authorType: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorDescription = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .authorDescription, auxiliaryKey: ._authorDescription)
		self.authorType = try CodeableConcept(from: _container, forKeyIfPresent: .authorType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorDescription?.encode(on: &_container, forKey: .authorDescription, auxiliaryKey: ._authorDescription)
		try authorType?.encode(on: &_container, forKey: .authorType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterialOrganismAuthor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authorDescription == _other.authorDescription
		    && authorType == _other.authorType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorDescription)
		hasher.combine(authorType)
	}
}

/**
 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
 */
open class SubstanceSourceMaterialOrganismHybrid: BackboneElement {
	
	/// The identifier of the maternal species constituting the hybrid organism shall be specified based on a controlled
	/// vocabulary. For plants, the parents aren’t always known, and it is unlikely that it will be known which is
	/// maternal and which is paternal
	public var maternalOrganismId: FHIRPrimitive<FHIRString>?
	
	/// The name of the maternal species constituting the hybrid organism shall be specified. For plants, the parents
	/// aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal
	public var maternalOrganismName: FHIRPrimitive<FHIRString>?
	
	/// The identifier of the paternal species constituting the hybrid organism shall be specified based on a controlled
	/// vocabulary
	public var paternalOrganismId: FHIRPrimitive<FHIRString>?
	
	/// The name of the paternal species constituting the hybrid organism shall be specified
	public var paternalOrganismName: FHIRPrimitive<FHIRString>?
	
	/// The hybrid type of an organism shall be specified
	public var hybridType: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							hybridType: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							maternalOrganismId: FHIRPrimitive<FHIRString>? = nil,
							maternalOrganismName: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							paternalOrganismId: FHIRPrimitive<FHIRString>? = nil,
							paternalOrganismName: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case hybridType
		case maternalOrganismId; case _maternalOrganismId
		case maternalOrganismName; case _maternalOrganismName
		case paternalOrganismId; case _paternalOrganismId
		case paternalOrganismName; case _paternalOrganismName
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.hybridType = try CodeableConcept(from: _container, forKeyIfPresent: .hybridType)
		self.maternalOrganismId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maternalOrganismId, auxiliaryKey: ._maternalOrganismId)
		self.maternalOrganismName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .maternalOrganismName, auxiliaryKey: ._maternalOrganismName)
		self.paternalOrganismId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .paternalOrganismId, auxiliaryKey: ._paternalOrganismId)
		self.paternalOrganismName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .paternalOrganismName, auxiliaryKey: ._paternalOrganismName)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try hybridType?.encode(on: &_container, forKey: .hybridType)
		try maternalOrganismId?.encode(on: &_container, forKey: .maternalOrganismId, auxiliaryKey: ._maternalOrganismId)
		try maternalOrganismName?.encode(on: &_container, forKey: .maternalOrganismName, auxiliaryKey: ._maternalOrganismName)
		try paternalOrganismId?.encode(on: &_container, forKey: .paternalOrganismId, auxiliaryKey: ._paternalOrganismId)
		try paternalOrganismName?.encode(on: &_container, forKey: .paternalOrganismName, auxiliaryKey: ._paternalOrganismName)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterialOrganismHybrid else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return hybridType == _other.hybridType
		    && maternalOrganismId == _other.maternalOrganismId
		    && maternalOrganismName == _other.maternalOrganismName
		    && paternalOrganismId == _other.paternalOrganismId
		    && paternalOrganismName == _other.paternalOrganismName
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(hybridType)
		hasher.combine(maternalOrganismId)
		hasher.combine(maternalOrganismName)
		hasher.combine(paternalOrganismId)
		hasher.combine(paternalOrganismName)
	}
}

/**
 4.9.13.7.1 Kingdom (Conditional).
 */
open class SubstanceSourceMaterialOrganismOrganismGeneral: BackboneElement {
	
	/// The kingdom of an organism shall be specified
	public var kingdom: CodeableConcept?
	
	/// The phylum of an organism shall be specified
	public var phylum: CodeableConcept?
	
	/// The class of an organism shall be specified
	public var `class`: CodeableConcept?
	
	/// The order of an organism shall be specified,
	public var order: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`class`: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							kingdom: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							order: CodeableConcept? = nil,
							phylum: CodeableConcept? = nil)
	{
		self.init()
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
		case kingdom
		case order
		case phylum
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.`class` = try CodeableConcept(from: _container, forKeyIfPresent: .`class`)
		self.kingdom = try CodeableConcept(from: _container, forKeyIfPresent: .kingdom)
		self.order = try CodeableConcept(from: _container, forKeyIfPresent: .order)
		self.phylum = try CodeableConcept(from: _container, forKeyIfPresent: .phylum)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try `class`?.encode(on: &_container, forKey: .`class`)
		try kingdom?.encode(on: &_container, forKey: .kingdom)
		try order?.encode(on: &_container, forKey: .order)
		try phylum?.encode(on: &_container, forKey: .phylum)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterialOrganismOrganismGeneral else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return `class` == _other.`class`
		    && kingdom == _other.kingdom
		    && order == _other.order
		    && phylum == _other.phylum
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`class`)
		hasher.combine(kingdom)
		hasher.combine(order)
		hasher.combine(phylum)
	}
}

/**
 To do.
 */
open class SubstanceSourceMaterialPartDescription: BackboneElement {
	
	/// Entity of anatomical origin of source material within an organism
	public var part: CodeableConcept?
	
	/// The detailed anatomic location when the part can be extracted from different anatomical locations of the
	/// organism. Multiple alternative locations may apply
	public var partLocation: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							part: CodeableConcept? = nil,
							partLocation: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.partLocation = partLocation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case part
		case partLocation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.part = try CodeableConcept(from: _container, forKeyIfPresent: .part)
		self.partLocation = try CodeableConcept(from: _container, forKeyIfPresent: .partLocation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try part?.encode(on: &_container, forKey: .part)
		try partLocation?.encode(on: &_container, forKey: .partLocation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSourceMaterialPartDescription else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return part == _other.part
		    && partLocation == _other.partLocation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(part)
		hasher.combine(partLocation)
	}
}
