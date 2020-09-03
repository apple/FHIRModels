//
//  SubstancePolymer.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/SubstancePolymer)
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
 Properties of a substance specific to it being a polymer.
 */
open class SubstancePolymer: DomainResource {
	
	override open class var resourceType: ResourceType { return .substancePolymer }
	
	/// A business idenfier for this polymer, but typically this is handled by a SubstanceDefinition identifier
	public var identifier: Identifier?
	
	/// Overall type of the polymer
	public var `class`: CodeableConcept?
	
	/// Polymer geometry, e.g. linear, branched, cross-linked, network or dendritic
	public var geometry: CodeableConcept?
	
	/// Descrtibes the copolymer sequence type (polymer connectivity)
	public var copolymerConnectivity: [CodeableConcept]?
	
	/// Todo - this is intended to connect to a repeating full modification structure, also used by Protein and Nucleic
	/// Acid . String is just a placeholder
	public var modification: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var monomerSet: [SubstancePolymerMonomerSet]?
	
	/// Specifies and quantifies the repeated units and their configuration
	public var `repeat`: [SubstancePolymerRepeat]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case `class` = "class"
		case copolymerConnectivity
		case geometry
		case identifier
		case modification; case _modification
		case monomerSet
		case `repeat` = "repeat"
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.`class` = try CodeableConcept(from: _container, forKeyIfPresent: .`class`)
		self.copolymerConnectivity = try [CodeableConcept](from: _container, forKeyIfPresent: .copolymerConnectivity)
		self.geometry = try CodeableConcept(from: _container, forKeyIfPresent: .geometry)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modification = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .modification, auxiliaryKey: ._modification)
		self.monomerSet = try [SubstancePolymerMonomerSet](from: _container, forKeyIfPresent: .monomerSet)
		self.`repeat` = try [SubstancePolymerRepeat](from: _container, forKeyIfPresent: .`repeat`)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try `class`?.encode(on: &_container, forKey: .`class`)
		try copolymerConnectivity?.encode(on: &_container, forKey: .copolymerConnectivity)
		try geometry?.encode(on: &_container, forKey: .geometry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modification?.encode(on: &_container, forKey: .modification, auxiliaryKey: ._modification)
		try monomerSet?.encode(on: &_container, forKey: .monomerSet)
		try `repeat`?.encode(on: &_container, forKey: .`repeat`)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return `class` == _other.`class`
		    && copolymerConnectivity == _other.copolymerConnectivity
		    && geometry == _other.geometry
		    && identifier == _other.identifier
		    && modification == _other.modification
		    && monomerSet == _other.monomerSet
		    && `repeat` == _other.`repeat`
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`class`)
		hasher.combine(copolymerConnectivity)
		hasher.combine(geometry)
		hasher.combine(identifier)
		hasher.combine(modification)
		hasher.combine(monomerSet)
		hasher.combine(`repeat`)
	}
}

/**
 Todo.
 */
open class SubstancePolymerMonomerSet: BackboneElement {
	
	/// Captures the type of ratio to the entire polymer, e.g. Monomer/Polymer ratio, SRU/Polymer Ratio
	public var ratioType: CodeableConcept?
	
	/// The starting materials - monomer(s) used in the synthesis of the polymer
	public var startingMaterial: [SubstancePolymerMonomerSetStartingMaterial]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							ratioType: CodeableConcept? = nil,
							startingMaterial: [SubstancePolymerMonomerSetStartingMaterial]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.ratioType = ratioType
		self.startingMaterial = startingMaterial
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case ratioType
		case startingMaterial
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.ratioType = try CodeableConcept(from: _container, forKeyIfPresent: .ratioType)
		self.startingMaterial = try [SubstancePolymerMonomerSetStartingMaterial](from: _container, forKeyIfPresent: .startingMaterial)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try ratioType?.encode(on: &_container, forKey: .ratioType)
		try startingMaterial?.encode(on: &_container, forKey: .startingMaterial)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymerMonomerSet else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return ratioType == _other.ratioType
		    && startingMaterial == _other.startingMaterial
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(ratioType)
		hasher.combine(startingMaterial)
	}
}

/**
 The starting materials - monomer(s) used in the synthesis of the polymer.
 */
open class SubstancePolymerMonomerSetStartingMaterial: BackboneElement {
	
	/// The type of substance for this starting material
	public var code: CodeableConcept?
	
	/// Substance high level category, e.g. chemical substance
	public var category: CodeableConcept?
	
	/// Used to specify whether the attribute described is a defining element for the unique identification of the
	/// polymer
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// A percentage
	public var amount: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							category: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isDefining: FHIRPrimitive<FHIRBool>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
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
		case isDefining; case _isDefining
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymerMonomerSetStartingMaterial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && category == _other.category
		    && code == _other.code
		    && isDefining == _other.isDefining
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(isDefining)
	}
}

/**
 Specifies and quantifies the repeated units and their configuration.
 */
open class SubstancePolymerRepeat: BackboneElement {
	
	/// A representation of an (average) molecular formula from a polymer
	public var averageMolecularFormula: FHIRPrimitive<FHIRString>?
	
	/// How the quantitative amount of Structural Repeat Units is captured (e.g. Exact, Numeric, Average)
	public var repeatUnitAmountType: CodeableConcept?
	
	/// An SRU - Structural Repeat Unit
	public var repeatUnit: [SubstancePolymerRepeatRepeatUnit]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							averageMolecularFormula: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							repeatUnit: [SubstancePolymerRepeatRepeatUnit]? = nil,
							repeatUnitAmountType: CodeableConcept? = nil)
	{
		self.init()
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
		case repeatUnit
		case repeatUnitAmountType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.averageMolecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .averageMolecularFormula, auxiliaryKey: ._averageMolecularFormula)
		self.repeatUnit = try [SubstancePolymerRepeatRepeatUnit](from: _container, forKeyIfPresent: .repeatUnit)
		self.repeatUnitAmountType = try CodeableConcept(from: _container, forKeyIfPresent: .repeatUnitAmountType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try averageMolecularFormula?.encode(on: &_container, forKey: .averageMolecularFormula, auxiliaryKey: ._averageMolecularFormula)
		try repeatUnit?.encode(on: &_container, forKey: .repeatUnit)
		try repeatUnitAmountType?.encode(on: &_container, forKey: .repeatUnitAmountType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymerRepeat else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return averageMolecularFormula == _other.averageMolecularFormula
		    && repeatUnit == _other.repeatUnit
		    && repeatUnitAmountType == _other.repeatUnitAmountType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(averageMolecularFormula)
		hasher.combine(repeatUnit)
		hasher.combine(repeatUnitAmountType)
	}
}

/**
 An SRU - Structural Repeat Unit.
 */
open class SubstancePolymerRepeatRepeatUnit: BackboneElement {
	
	/// Structural repeat units are essential elements for defining polymers
	public var unit: FHIRPrimitive<FHIRString>?
	
	/// The orientation of the polymerisation, e.g. head-tail, head-head, random
	public var orientation: CodeableConcept?
	
	/// Number of repeats of this unit
	public var amount: FHIRPrimitive<FHIRInteger>?
	
	/// Applies to homopolymer and block co-polymers where the degree of polymerisation within a block can be described
	public var degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]?
	
	/// A graphical structure for this SRU
	public var structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: FHIRPrimitive<FHIRInteger>? = nil,
							degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							orientation: CodeableConcept? = nil,
							structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]? = nil,
							unit: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case orientation
		case structuralRepresentation
		case unit; case _unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .amount, auxiliaryKey: ._amount)
		self.degreeOfPolymerisation = try [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation](from: _container, forKeyIfPresent: .degreeOfPolymerisation)
		self.orientation = try CodeableConcept(from: _container, forKeyIfPresent: .orientation)
		self.structuralRepresentation = try [SubstancePolymerRepeatRepeatUnitStructuralRepresentation](from: _container, forKeyIfPresent: .structuralRepresentation)
		self.unit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .unit, auxiliaryKey: ._unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount, auxiliaryKey: ._amount)
		try degreeOfPolymerisation?.encode(on: &_container, forKey: .degreeOfPolymerisation)
		try orientation?.encode(on: &_container, forKey: .orientation)
		try structuralRepresentation?.encode(on: &_container, forKey: .structuralRepresentation)
		try unit?.encode(on: &_container, forKey: .unit, auxiliaryKey: ._unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymerRepeatRepeatUnit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && degreeOfPolymerisation == _other.degreeOfPolymerisation
		    && orientation == _other.orientation
		    && structuralRepresentation == _other.structuralRepresentation
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(degreeOfPolymerisation)
		hasher.combine(orientation)
		hasher.combine(structuralRepresentation)
		hasher.combine(unit)
	}
}

/**
 Applies to homopolymer and block co-polymers where the degree of polymerisation within a block can be described.
 */
open class SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation: BackboneElement {
	
	/// The type of the degree of polymerisation shall be described, e.g. SRU/Polymer Ratio
	public var type: CodeableConcept?
	
	/// An average amount of polymerisation
	public var average: FHIRPrimitive<FHIRInteger>?
	
	/// A low expected limit of the amount
	public var low: FHIRPrimitive<FHIRInteger>?
	
	/// A high expected limit of the amount
	public var high: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							average: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							high: FHIRPrimitive<FHIRInteger>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							low: FHIRPrimitive<FHIRInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case high; case _high
		case low; case _low
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.average = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .average, auxiliaryKey: ._average)
		self.high = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .high, auxiliaryKey: ._high)
		self.low = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .low, auxiliaryKey: ._low)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try average?.encode(on: &_container, forKey: .average, auxiliaryKey: ._average)
		try high?.encode(on: &_container, forKey: .high, auxiliaryKey: ._high)
		try low?.encode(on: &_container, forKey: .low, auxiliaryKey: ._low)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return average == _other.average
		    && high == _other.high
		    && low == _other.low
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(average)
		hasher.combine(high)
		hasher.combine(low)
		hasher.combine(type)
	}
}

/**
 A graphical structure for this SRU.
 */
open class SubstancePolymerRepeatRepeatUnitStructuralRepresentation: BackboneElement {
	
	/// The type of structure (e.g. Full, Partial, Representative)
	public var type: CodeableConcept?
	
	/// The structural representation as text string in a standard format e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB,
	/// mmCIF
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF
	public var format: CodeableConcept?
	
	/// An attached file with the structural representation
	public var attachment: Attachment?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attachment: Attachment? = nil,
							`extension`: [Extension]? = nil,
							format: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							representation: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case format
		case representation; case _representation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachment = try Attachment(from: _container, forKeyIfPresent: .attachment)
		self.format = try CodeableConcept(from: _container, forKeyIfPresent: .format)
		self.representation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachment?.encode(on: &_container, forKey: .attachment)
		try format?.encode(on: &_container, forKey: .format)
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstancePolymerRepeatRepeatUnitStructuralRepresentation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attachment == _other.attachment
		    && format == _other.format
		    && representation == _other.representation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachment)
		hasher.combine(format)
		hasher.combine(representation)
		hasher.combine(type)
	}
}
