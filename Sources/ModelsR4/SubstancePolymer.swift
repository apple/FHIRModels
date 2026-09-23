//
//  SubstancePolymer.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstancePolymer)
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
public struct SubstancePolymer: DomainResource {
	
	public static let resourceType: ResourceType = .substancePolymer
	
	/// Todo
	public var `class`: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Todo
	public var copolymerConnectivity: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Todo
	public var geometry: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Todo
	public var modification: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var monomerSet: [SubstancePolymerMonomerSet]?
	
	/// Todo
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
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modification: [FHIRPrimitive<FHIRString>]? = nil,
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
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modification = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .modification, auxiliaryKey: ._modification)
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
	
	/// Todo
	public var ratioType: CodeableConcept?
	
	/// Todo
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
 Todo.
 */
public struct SubstancePolymerMonomerSetStartingMaterial: BackboneElement {
	
	/// Todo
	public var amount: SubstanceAmount?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// Todo
	public var material: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		amount: SubstanceAmount? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDefining: FHIRPrimitive<FHIRBool>? = nil,
		material: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case isDefining; case _isDefining
		case material
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try SubstanceAmount(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
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
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try material?.encode(on: &_container, forKey: .material)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Todo.
 */
public struct SubstancePolymerRepeat: BackboneElement {
	
	/// Todo
	public var averageMolecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var numberOfUnits: FHIRPrimitive<FHIRInteger>?
	
	/// Todo
	public var repeatUnit: [SubstancePolymerRepeatRepeatUnit]?
	
	/// Todo
	public var repeatUnitAmountType: CodeableConcept?
	
	/// Designated initializer
	public init(
		averageMolecularFormula: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfUnits: FHIRPrimitive<FHIRInteger>? = nil,
		repeatUnit: [SubstancePolymerRepeatRepeatUnit]? = nil,
		repeatUnitAmountType: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case numberOfUnits; case _numberOfUnits
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
		self.numberOfUnits = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfUnits, auxiliaryKey: ._numberOfUnits)
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
		try numberOfUnits?.encode(on: &_container, forKey: .numberOfUnits, auxiliaryKey: ._numberOfUnits)
		try repeatUnit?.encode(on: &_container, forKey: .repeatUnit)
		try repeatUnitAmountType?.encode(on: &_container, forKey: .repeatUnitAmountType)
	}
}

/**
 Todo.
 */
public struct SubstancePolymerRepeatRepeatUnit: BackboneElement {
	
	/// Todo
	public var amount: SubstanceAmount?
	
	/// Todo
	public var degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var orientationOfPolymerisation: CodeableConcept?
	
	/// Todo
	public var repeatUnit: FHIRPrimitive<FHIRString>?
	
	/// Todo
	public var structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]?
	
	/// Designated initializer
	public init(
		amount: SubstanceAmount? = nil,
		degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		orientationOfPolymerisation: CodeableConcept? = nil,
		repeatUnit: FHIRPrimitive<FHIRString>? = nil,
		structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case orientationOfPolymerisation
		case repeatUnit; case _repeatUnit
		case structuralRepresentation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try SubstanceAmount(from: _container, forKeyIfPresent: .amount)
		self.degreeOfPolymerisation = try [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation](from: _container, forKeyIfPresent: .degreeOfPolymerisation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orientationOfPolymerisation = try CodeableConcept(from: _container, forKeyIfPresent: .orientationOfPolymerisation)
		self.repeatUnit = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .repeatUnit, auxiliaryKey: ._repeatUnit)
		self.structuralRepresentation = try [SubstancePolymerRepeatRepeatUnitStructuralRepresentation](from: _container, forKeyIfPresent: .structuralRepresentation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try degreeOfPolymerisation?.encode(on: &_container, forKey: .degreeOfPolymerisation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orientationOfPolymerisation?.encode(on: &_container, forKey: .orientationOfPolymerisation)
		try repeatUnit?.encode(on: &_container, forKey: .repeatUnit, auxiliaryKey: ._repeatUnit)
		try structuralRepresentation?.encode(on: &_container, forKey: .structuralRepresentation)
	}
}

/**
 Todo.
 */
public struct SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation: BackboneElement {
	
	/// Todo
	public var amount: SubstanceAmount?
	
	/// Todo
	public var degree: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: SubstanceAmount? = nil,
		degree: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try SubstanceAmount(from: _container, forKeyIfPresent: .amount)
		self.degree = try CodeableConcept(from: _container, forKeyIfPresent: .degree)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try degree?.encode(on: &_container, forKey: .degree)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Todo.
 */
public struct SubstancePolymerRepeatRepeatUnitStructuralRepresentation: BackboneElement {
	
	/// Todo
	public var attachment: Attachment?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Todo
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// Todo
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
