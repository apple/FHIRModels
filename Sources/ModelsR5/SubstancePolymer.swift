//
//  SubstancePolymer.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SubstancePolymer)
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
 Properties of a substance specific to it being a polymer.
 */
public struct SubstancePolymer: DomainResource {
	
	public static let resourceType: ResourceType = .substancePolymer
	
	/// Overall type of the polymer
	public var `class`: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Descrtibes the copolymer sequence type (polymer connectivity)
	public var copolymerConnectivity: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Polymer geometry, e.g. linear, branched, cross-linked, network or dendritic
	public var geometry: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A business idenfier for this polymer, but typically this is handled by a SubstanceDefinition identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Todo - this is intended to connect to a repeating full modification structure, also used by Protein and Nucleic
	/// Acid . String is just a placeholder
	public var modification: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var monomerSet: [SubstancePolymerMonomerSet]?
	
	/// Specifies and quantifies the repeated units and their configuration
	public var `repeat`: [SubstancePolymerRepeat]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		`class`: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		copolymerConnectivity: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		geometry: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modification: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		monomerSet: [SubstancePolymerMonomerSet]? = nil,
		`repeat`: [SubstancePolymerRepeat]? = nil,
		text: Narrative? = nil
	) {
		self.`class` = `class`
		self.contained = contained
		self.copolymerConnectivity = copolymerConnectivity
		self.`extension` = `extension`
		self.geometry = geometry
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modification = modification
		self.modifierExtension = modifierExtension
		self.monomerSet = monomerSet
		self.`repeat` = `repeat`
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case `class` = "class"
		case contained
		case copolymerConnectivity
		case `extension` = "extension"
		case geometry
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modification; case _modification
		case modifierExtension
		case monomerSet
		case `repeat` = "repeat"
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`class` = try CodeableConcept(from: _container, forKeyIfPresent: .`class`)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copolymerConnectivity = try [CodeableConcept](from: _container, forKeyIfPresent: .copolymerConnectivity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.geometry = try CodeableConcept(from: _container, forKeyIfPresent: .geometry)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modification = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modification, auxiliaryKey: ._modification)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.monomerSet = try [SubstancePolymerMonomerSet](from: _container, forKeyIfPresent: .monomerSet)
		self.`repeat` = try [SubstancePolymerRepeat](from: _container, forKeyIfPresent: .`repeat`)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try contained?.encode(on: &_container, forKey: .contained)
		try copolymerConnectivity?.encode(on: &_container, forKey: .copolymerConnectivity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try geometry?.encode(on: &_container, forKey: .geometry)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modification?.encode(on: &_container, forKey: .modification, auxiliaryKey: ._modification)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try monomerSet?.encode(on: &_container, forKey: .monomerSet)
		try `repeat`?.encode(on: &_container, forKey: .`repeat`)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Todo.
 */
public struct SubstancePolymerMonomerSet: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Captures the type of ratio to the entire polymer, e.g. Monomer/Polymer ratio, SRU/Polymer Ratio
	public var ratioType: CodeableConcept?
	
	/// The starting materials - monomer(s) used in the synthesis of the polymer
	public var startingMaterial: [SubstancePolymerMonomerSetStartingMaterial]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		ratioType: CodeableConcept? = nil,
		startingMaterial: [SubstancePolymerMonomerSetStartingMaterial]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.ratioType = ratioType
		self.startingMaterial = startingMaterial
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case ratioType
		case startingMaterial
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.ratioType = try CodeableConcept(from: _container, forKeyIfPresent: .ratioType)
		self.startingMaterial = try [SubstancePolymerMonomerSetStartingMaterial](from: _container, forKeyIfPresent: .startingMaterial)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try ratioType?.encode(on: &_container, forKey: .ratioType)
		try startingMaterial?.encode(on: &_container, forKey: .startingMaterial)
	}
}

/**
 The starting materials - monomer(s) used in the synthesis of the polymer.
 */
public struct SubstancePolymerMonomerSetStartingMaterial: BackboneElement {
	
	/// A percentage
	public var amount: Quantity?
	
	/// Substance high level category, e.g. chemical substance
	public var category: CodeableConcept?
	
	/// The type of substance for this starting material
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Used to specify whether the attribute described is a defining element for the unique identification of the
	/// polymer
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		category: CodeableConcept? = nil,
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDefining: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.category = category
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.isDefining = isDefining
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case category
		case code
		case `extension` = "extension"
		case id; case _id
		case isDefining; case _isDefining
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Specifies and quantifies the repeated units and their configuration.
 */
public struct SubstancePolymerRepeat: BackboneElement {
	
	/// A representation of an (average) molecular formula from a polymer
	public var averageMolecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// An SRU - Structural Repeat Unit
	public var repeatUnit: [SubstancePolymerRepeatRepeatUnit]?
	
	/// How the quantitative amount of Structural Repeat Units is captured (e.g. Exact, Numeric, Average)
	public var repeatUnitAmountType: CodeableConcept?
	
	/// Designated initializer
	public init(
		averageMolecularFormula: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		repeatUnit: [SubstancePolymerRepeatRepeatUnit]? = nil,
		repeatUnitAmountType: CodeableConcept? = nil
	) {
		self.averageMolecularFormula = averageMolecularFormula
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.repeatUnit = repeatUnit
		self.repeatUnitAmountType = repeatUnitAmountType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case averageMolecularFormula; case _averageMolecularFormula
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case repeatUnit
		case repeatUnitAmountType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.averageMolecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .averageMolecularFormula, auxiliaryKey: ._averageMolecularFormula)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.repeatUnit = try [SubstancePolymerRepeatRepeatUnit](from: _container, forKeyIfPresent: .repeatUnit)
		self.repeatUnitAmountType = try CodeableConcept(from: _container, forKeyIfPresent: .repeatUnitAmountType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try averageMolecularFormula?.encode(on: &_container, forKey: .averageMolecularFormula, auxiliaryKey: ._averageMolecularFormula)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try repeatUnit?.encode(on: &_container, forKey: .repeatUnit)
		try repeatUnitAmountType?.encode(on: &_container, forKey: .repeatUnitAmountType)
	}
}

/**
 An SRU - Structural Repeat Unit.
 */
public struct SubstancePolymerRepeatRepeatUnit: BackboneElement {
	
	/// Number of repeats of this unit
	public var amount: FHIRPrimitive<FHIRInteger>?
	
	/// Applies to homopolymer and block co-polymers where the degree of polymerisation within a block can be described
	public var degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The orientation of the polymerisation, e.g. head-tail, head-head, random
	public var orientation: CodeableConcept?
	
	/// A graphical structure for this SRU
	public var structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]?
	
	/// Structural repeat units are essential elements for defining polymers
	public var unit: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		amount: FHIRPrimitive<FHIRInteger>? = nil,
		degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		orientation: CodeableConcept? = nil,
		structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]? = nil,
		unit: FHIRPrimitive<FHIRString>? = nil
	) {
		self.amount = amount
		self.degreeOfPolymerisation = degreeOfPolymerisation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.orientation = orientation
		self.structuralRepresentation = structuralRepresentation
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount; case _amount
		case degreeOfPolymerisation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case orientation
		case structuralRepresentation
		case unit; case _unit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .amount, auxiliaryKey: ._amount)
		self.degreeOfPolymerisation = try [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation](from: _container, forKeyIfPresent: .degreeOfPolymerisation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orientation = try CodeableConcept(from: _container, forKeyIfPresent: .orientation)
		self.structuralRepresentation = try [SubstancePolymerRepeatRepeatUnitStructuralRepresentation](from: _container, forKeyIfPresent: .structuralRepresentation)
		self.unit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .unit, auxiliaryKey: ._unit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount, auxiliaryKey: ._amount)
		try degreeOfPolymerisation?.encode(on: &_container, forKey: .degreeOfPolymerisation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orientation?.encode(on: &_container, forKey: .orientation)
		try structuralRepresentation?.encode(on: &_container, forKey: .structuralRepresentation)
		try unit?.encode(on: &_container, forKey: .unit, auxiliaryKey: ._unit)
	}
}

/**
 Applies to homopolymer and block co-polymers where the degree of polymerisation within a block can be described.
 */
public struct SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation: BackboneElement {
	
	/// An average amount of polymerisation
	public var average: FHIRPrimitive<FHIRInteger>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// A high expected limit of the amount
	public var high: FHIRPrimitive<FHIRInteger>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A low expected limit of the amount
	public var low: FHIRPrimitive<FHIRInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of the degree of polymerisation shall be described, e.g. SRU/Polymer Ratio
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		average: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		high: FHIRPrimitive<FHIRInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		low: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.average = average
		self.`extension` = `extension`
		self.high = high
		self.id = id
		self.low = low
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case average; case _average
		case `extension` = "extension"
		case high; case _high
		case id; case _id
		case low; case _low
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.average = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .average, auxiliaryKey: ._average)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.high = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .high, auxiliaryKey: ._high)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.low = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .low, auxiliaryKey: ._low)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try average?.encode(on: &_container, forKey: .average, auxiliaryKey: ._average)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try high?.encode(on: &_container, forKey: .high, auxiliaryKey: ._high)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try low?.encode(on: &_container, forKey: .low, auxiliaryKey: ._low)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 A graphical structure for this SRU.
 */
public struct SubstancePolymerRepeatRepeatUnitStructuralRepresentation: BackboneElement {
	
	/// An attached file with the structural representation
	public var attachment: Attachment?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF
	public var format: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The structural representation as text string in a standard format e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB,
	/// mmCIF
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// The type of structure (e.g. Full, Partial, Representative)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		attachment: Attachment? = nil,
		`extension`: [Extension]? = nil,
		format: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		representation: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.attachment = attachment
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.modifierExtension = modifierExtension
		self.representation = representation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case `extension` = "extension"
		case format
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
		self.format = try CodeableConcept(from: _container, forKeyIfPresent: .format)
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
		try format?.encode(on: &_container, forKey: .format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try type?.encode(on: &_container, forKey: .type)
	}
}
