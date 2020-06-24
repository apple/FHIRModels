//
//  SubstancePolymer.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstancePolymer)
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
open class SubstancePolymer: DomainResource {
	
	override open class var resourceType: ResourceType { return .substancePolymer }
	
	/// Todo
	public var `class`: CodeableConcept?
	
	/// Todo
	public var geometry: CodeableConcept?
	
	/// Todo
	public var copolymerConnectivity: [CodeableConcept]?
	
	/// Todo
	public var modification: [FHIRPrimitive<FHIRString>]?
	
	/// Todo
	public var monomerSet: [SubstancePolymerMonomerSet]?
	
	/// Todo
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
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modification: [FHIRPrimitive<FHIRString>]? = nil,
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
		self.modification = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .modification, auxiliaryKey: ._modification)
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
		    && modification == _other.modification
		    && monomerSet == _other.monomerSet
		    && `repeat` == _other.`repeat`
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`class`)
		hasher.combine(copolymerConnectivity)
		hasher.combine(geometry)
		hasher.combine(modification)
		hasher.combine(monomerSet)
		hasher.combine(`repeat`)
	}
}

/**
 Todo.
 */
open class SubstancePolymerMonomerSet: BackboneElement {
	
	/// Todo
	public var ratioType: CodeableConcept?
	
	/// Todo
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
 Todo.
 */
open class SubstancePolymerMonomerSetStartingMaterial: BackboneElement {
	
	/// Todo
	public var material: CodeableConcept?
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Todo
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// Todo
	public var amount: SubstanceAmount?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: SubstanceAmount? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isDefining: FHIRPrimitive<FHIRBool>? = nil,
							material: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.isDefining = isDefining
		self.material = material
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case isDefining; case _isDefining
		case material
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try SubstanceAmount(from: _container, forKeyIfPresent: .amount)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try material?.encode(on: &_container, forKey: .material)
		try type?.encode(on: &_container, forKey: .type)
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
		    && isDefining == _other.isDefining
		    && material == _other.material
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(isDefining)
		hasher.combine(material)
		hasher.combine(type)
	}
}

/**
 Todo.
 */
open class SubstancePolymerRepeat: BackboneElement {
	
	/// Todo
	public var numberOfUnits: FHIRPrimitive<FHIRInteger>?
	
	/// Todo
	public var averageMolecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var repeatUnitAmountType: CodeableConcept?
	
	/// Todo
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
							numberOfUnits: FHIRPrimitive<FHIRInteger>? = nil,
							repeatUnit: [SubstancePolymerRepeatRepeatUnit]? = nil,
							repeatUnitAmountType: CodeableConcept? = nil)
	{
		self.init()
		self.averageMolecularFormula = averageMolecularFormula
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.numberOfUnits = numberOfUnits
		self.repeatUnit = repeatUnit
		self.repeatUnitAmountType = repeatUnitAmountType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case averageMolecularFormula; case _averageMolecularFormula
		case numberOfUnits; case _numberOfUnits
		case repeatUnit
		case repeatUnitAmountType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.averageMolecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .averageMolecularFormula, auxiliaryKey: ._averageMolecularFormula)
		self.numberOfUnits = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfUnits, auxiliaryKey: ._numberOfUnits)
		self.repeatUnit = try [SubstancePolymerRepeatRepeatUnit](from: _container, forKeyIfPresent: .repeatUnit)
		self.repeatUnitAmountType = try CodeableConcept(from: _container, forKeyIfPresent: .repeatUnitAmountType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try averageMolecularFormula?.encode(on: &_container, forKey: .averageMolecularFormula, auxiliaryKey: ._averageMolecularFormula)
		try numberOfUnits?.encode(on: &_container, forKey: .numberOfUnits, auxiliaryKey: ._numberOfUnits)
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
		    && numberOfUnits == _other.numberOfUnits
		    && repeatUnit == _other.repeatUnit
		    && repeatUnitAmountType == _other.repeatUnitAmountType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(averageMolecularFormula)
		hasher.combine(numberOfUnits)
		hasher.combine(repeatUnit)
		hasher.combine(repeatUnitAmountType)
	}
}

/**
 Todo.
 */
open class SubstancePolymerRepeatRepeatUnit: BackboneElement {
	
	/// Todo
	public var orientationOfPolymerisation: CodeableConcept?
	
	/// Todo
	public var repeatUnit: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var amount: SubstanceAmount?
	
	/// Todo
	public var degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]?
	
	/// Todo
	public var structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: SubstanceAmount? = nil,
							degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							orientationOfPolymerisation: CodeableConcept? = nil,
							repeatUnit: FHIRPrimitive<FHIRString>? = nil,
							structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]? = nil)
	{
		self.init()
		self.amount = amount
		self.degreeOfPolymerisation = degreeOfPolymerisation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.orientationOfPolymerisation = orientationOfPolymerisation
		self.repeatUnit = repeatUnit
		self.structuralRepresentation = structuralRepresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case degreeOfPolymerisation
		case orientationOfPolymerisation
		case repeatUnit; case _repeatUnit
		case structuralRepresentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try SubstanceAmount(from: _container, forKeyIfPresent: .amount)
		self.degreeOfPolymerisation = try [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation](from: _container, forKeyIfPresent: .degreeOfPolymerisation)
		self.orientationOfPolymerisation = try CodeableConcept(from: _container, forKeyIfPresent: .orientationOfPolymerisation)
		self.repeatUnit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .repeatUnit, auxiliaryKey: ._repeatUnit)
		self.structuralRepresentation = try [SubstancePolymerRepeatRepeatUnitStructuralRepresentation](from: _container, forKeyIfPresent: .structuralRepresentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try degreeOfPolymerisation?.encode(on: &_container, forKey: .degreeOfPolymerisation)
		try orientationOfPolymerisation?.encode(on: &_container, forKey: .orientationOfPolymerisation)
		try repeatUnit?.encode(on: &_container, forKey: .repeatUnit, auxiliaryKey: ._repeatUnit)
		try structuralRepresentation?.encode(on: &_container, forKey: .structuralRepresentation)
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
		    && orientationOfPolymerisation == _other.orientationOfPolymerisation
		    && repeatUnit == _other.repeatUnit
		    && structuralRepresentation == _other.structuralRepresentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(degreeOfPolymerisation)
		hasher.combine(orientationOfPolymerisation)
		hasher.combine(repeatUnit)
		hasher.combine(structuralRepresentation)
	}
}

/**
 Todo.
 */
open class SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation: BackboneElement {
	
	/// Todo
	public var degree: CodeableConcept?
	
	/// Todo
	public var amount: SubstanceAmount?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: SubstanceAmount? = nil,
							degree: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.amount = amount
		self.degree = degree
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case degree
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try SubstanceAmount(from: _container, forKeyIfPresent: .amount)
		self.degree = try CodeableConcept(from: _container, forKeyIfPresent: .degree)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try degree?.encode(on: &_container, forKey: .degree)
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
		return amount == _other.amount
		    && degree == _other.degree
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(degree)
	}
}

/**
 Todo.
 */
open class SubstancePolymerRepeatRepeatUnitStructuralRepresentation: BackboneElement {
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Todo
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var attachment: Attachment?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attachment: Attachment? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							representation: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case representation; case _representation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachment = try Attachment(from: _container, forKeyIfPresent: .attachment)
		self.representation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachment?.encode(on: &_container, forKey: .attachment)
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
		    && representation == _other.representation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachment)
		hasher.combine(representation)
		hasher.combine(type)
	}
}
