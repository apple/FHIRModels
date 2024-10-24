//
//  MolecularDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/MolecularDefinition)
//  Copyright 2024 Apple Inc.
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
 Representation of a molecular definition.
 */
open class MolecularDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .molecularDefinition }
	
	/// Unique ID for this particular resource
	public var identifier: [Identifier]?
	
	/// The type of the Molecular Definition (Amino Acid, DNA, RNA).
	public var type: FHIRPrimitive<SequenceType>?
	
	/// Location of this molecule
	public var location: [MolecularDefinitionLocation]?
	
	/// Member
	public var memberState: [Reference]?
	
	/// Representation
	public var representation: [MolecularDefinitionRepresentation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [MolecularDefinitionLocation]? = nil,
		memberState: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		representation: [MolecularDefinitionRepresentation]? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<SequenceType>? = nil
	) {
		self.init()
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.memberState = memberState
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.representation = representation
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case location
		case memberState
		case representation
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try [MolecularDefinitionLocation](from: _container, forKeyIfPresent: .location)
		self.memberState = try [Reference](from: _container, forKeyIfPresent: .memberState)
		self.representation = try [MolecularDefinitionRepresentation](from: _container, forKeyIfPresent: .representation)
		self.type = try FHIRPrimitive<SequenceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try memberState?.encode(on: &_container, forKey: .memberState)
		try representation?.encode(on: &_container, forKey: .representation)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && location == _other.location
		    && memberState == _other.memberState
		    && representation == _other.representation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(memberState)
		hasher.combine(representation)
		hasher.combine(type)
	}
}

/**
 Location of this molecule.
 
 The molecular location of this molecule.
 */
open class MolecularDefinitionLocation: BackboneElement {
	
	/// Location of this molecule in context of a sequence
	public var sequenceLocation: MolecularDefinitionLocationSequenceLocation?
	
	/// Location of this molecule in context of a cytoband
	public var cytobandLocation: MolecularDefinitionLocationCytobandLocation?
	
	/// Location in context of a feature
	public var featureLocation: [MolecularDefinitionLocationFeatureLocation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		cytobandLocation: MolecularDefinitionLocationCytobandLocation? = nil,
		`extension`: [Extension]? = nil,
		featureLocation: [MolecularDefinitionLocationFeatureLocation]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceLocation: MolecularDefinitionLocationSequenceLocation? = nil
	) {
		self.init()
		self.cytobandLocation = cytobandLocation
		self.`extension` = `extension`
		self.featureLocation = featureLocation
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequenceLocation = sequenceLocation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cytobandLocation
		case featureLocation
		case sequenceLocation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cytobandLocation = try MolecularDefinitionLocationCytobandLocation(from: _container, forKeyIfPresent: .cytobandLocation)
		self.featureLocation = try [MolecularDefinitionLocationFeatureLocation](from: _container, forKeyIfPresent: .featureLocation)
		self.sequenceLocation = try MolecularDefinitionLocationSequenceLocation(from: _container, forKeyIfPresent: .sequenceLocation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cytobandLocation?.encode(on: &_container, forKey: .cytobandLocation)
		try featureLocation?.encode(on: &_container, forKey: .featureLocation)
		try sequenceLocation?.encode(on: &_container, forKey: .sequenceLocation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cytobandLocation == _other.cytobandLocation
		    && featureLocation == _other.featureLocation
		    && sequenceLocation == _other.sequenceLocation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cytobandLocation)
		hasher.combine(featureLocation)
		hasher.combine(sequenceLocation)
	}
}

/**
 Location of this molecule in context of a cytoband.
 
 The location of this molecule in context of a cytoband.
 */
open class MolecularDefinitionLocationCytobandLocation: BackboneElement {
	
	/// Reference Genome
	public var genomeAssembly: MolecularDefinitionLocationCytobandLocationGenomeAssembly
	
	/// Cytoband Interval
	public var cytobandInterval: MolecularDefinitionLocationCytobandLocationCytobandInterval
	
	/// Designated initializer taking all required properties
	public init(cytobandInterval: MolecularDefinitionLocationCytobandLocationCytobandInterval, genomeAssembly: MolecularDefinitionLocationCytobandLocationGenomeAssembly) {
		self.cytobandInterval = cytobandInterval
		self.genomeAssembly = genomeAssembly
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		cytobandInterval: MolecularDefinitionLocationCytobandLocationCytobandInterval,
		`extension`: [Extension]? = nil,
		genomeAssembly: MolecularDefinitionLocationCytobandLocationGenomeAssembly,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(cytobandInterval: cytobandInterval, genomeAssembly: genomeAssembly)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cytobandInterval
		case genomeAssembly
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cytobandInterval = try MolecularDefinitionLocationCytobandLocationCytobandInterval(from: _container, forKey: .cytobandInterval)
		self.genomeAssembly = try MolecularDefinitionLocationCytobandLocationGenomeAssembly(from: _container, forKey: .genomeAssembly)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cytobandInterval.encode(on: &_container, forKey: .cytobandInterval)
		try genomeAssembly.encode(on: &_container, forKey: .genomeAssembly)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationCytobandLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cytobandInterval == _other.cytobandInterval
		    && genomeAssembly == _other.genomeAssembly
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cytobandInterval)
		hasher.combine(genomeAssembly)
	}
}

/**
 Cytoband Interval.
 
 The Cytoband Interval.
 */
open class MolecularDefinitionLocationCytobandLocationCytobandInterval: BackboneElement {
	
	/// Chromosome
	public var chromosome: CodeableConcept
	
	/// Start
	public var startCytoband: MolecularDefinitionLocationCytobandLocationCytobandIntervalStartCytoband?
	
	/// End
	public var endCytoband: MolecularDefinitionLocationCytobandLocationCytobandIntervalEndCytoband?
	
	/// Designated initializer taking all required properties
	public init(chromosome: CodeableConcept) {
		self.chromosome = chromosome
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		chromosome: CodeableConcept,
		endCytoband: MolecularDefinitionLocationCytobandLocationCytobandIntervalEndCytoband? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		startCytoband: MolecularDefinitionLocationCytobandLocationCytobandIntervalStartCytoband? = nil
	) {
		self.init(chromosome: chromosome)
		self.endCytoband = endCytoband
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.startCytoband = startCytoband
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chromosome
		case endCytoband
		case startCytoband
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.chromosome = try CodeableConcept(from: _container, forKey: .chromosome)
		self.endCytoband = try MolecularDefinitionLocationCytobandLocationCytobandIntervalEndCytoband(from: _container, forKeyIfPresent: .endCytoband)
		self.startCytoband = try MolecularDefinitionLocationCytobandLocationCytobandIntervalStartCytoband(from: _container, forKeyIfPresent: .startCytoband)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try chromosome.encode(on: &_container, forKey: .chromosome)
		try endCytoband?.encode(on: &_container, forKey: .endCytoband)
		try startCytoband?.encode(on: &_container, forKey: .startCytoband)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationCytobandLocationCytobandInterval else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return chromosome == _other.chromosome
		    && endCytoband == _other.endCytoband
		    && startCytoband == _other.startCytoband
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chromosome)
		hasher.combine(endCytoband)
		hasher.combine(startCytoband)
	}
}

/**
 End.
 
 The end of this cytoband Interval.
 */
open class MolecularDefinitionLocationCytobandLocationCytobandIntervalEndCytoband: BackboneElement {
	
	/// All possible types for "arm[x]"
	public enum ArmX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "band[x]"
	public enum BandX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "region[x]"
	public enum RegionX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "subBand[x]"
	public enum SubBandX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Arm
	/// One of `arm[x]`
	public var arm: ArmX?
	
	/// Region
	/// One of `region[x]`
	public var region: RegionX?
	
	/// Band
	/// One of `band[x]`
	public var band: BandX?
	
	/// SuBand
	/// One of `subBand[x]`
	public var subBand: SubBandX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		arm: ArmX? = nil,
		band: BandX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		region: RegionX? = nil,
		subBand: SubBandX? = nil
	) {
		self.init()
		self.arm = arm
		self.band = band
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.region = region
		self.subBand = subBand
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case armCode; case _armCode
		case armString; case _armString
		case bandCode; case _bandCode
		case bandString; case _bandString
		case regionCode; case _regionCode
		case regionString; case _regionString
		case subBandCode; case _subBandCode
		case subBandString; case _subBandString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_arm: ArmX? = nil
		if let armCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .armCode, auxiliaryKey: ._armCode) {
			if _t_arm != nil {
				throw DecodingError.dataCorruptedError(forKey: .armCode, in: _container, debugDescription: "More than one value provided for \"arm\"")
			}
			_t_arm = .code(armCode)
		}
		if let armString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .armString, auxiliaryKey: ._armString) {
			if _t_arm != nil {
				throw DecodingError.dataCorruptedError(forKey: .armString, in: _container, debugDescription: "More than one value provided for \"arm\"")
			}
			_t_arm = .string(armString)
		}
		self.arm = _t_arm
		var _t_band: BandX? = nil
		if let bandCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .bandCode, auxiliaryKey: ._bandCode) {
			if _t_band != nil {
				throw DecodingError.dataCorruptedError(forKey: .bandCode, in: _container, debugDescription: "More than one value provided for \"band\"")
			}
			_t_band = .code(bandCode)
		}
		if let bandString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .bandString, auxiliaryKey: ._bandString) {
			if _t_band != nil {
				throw DecodingError.dataCorruptedError(forKey: .bandString, in: _container, debugDescription: "More than one value provided for \"band\"")
			}
			_t_band = .string(bandString)
		}
		self.band = _t_band
		var _t_region: RegionX? = nil
		if let regionCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .regionCode, auxiliaryKey: ._regionCode) {
			if _t_region != nil {
				throw DecodingError.dataCorruptedError(forKey: .regionCode, in: _container, debugDescription: "More than one value provided for \"region\"")
			}
			_t_region = .code(regionCode)
		}
		if let regionString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .regionString, auxiliaryKey: ._regionString) {
			if _t_region != nil {
				throw DecodingError.dataCorruptedError(forKey: .regionString, in: _container, debugDescription: "More than one value provided for \"region\"")
			}
			_t_region = .string(regionString)
		}
		self.region = _t_region
		var _t_subBand: SubBandX? = nil
		if let subBandCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subBandCode, auxiliaryKey: ._subBandCode) {
			if _t_subBand != nil {
				throw DecodingError.dataCorruptedError(forKey: .subBandCode, in: _container, debugDescription: "More than one value provided for \"subBand\"")
			}
			_t_subBand = .code(subBandCode)
		}
		if let subBandString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subBandString, auxiliaryKey: ._subBandString) {
			if _t_subBand != nil {
				throw DecodingError.dataCorruptedError(forKey: .subBandString, in: _container, debugDescription: "More than one value provided for \"subBand\"")
			}
			_t_subBand = .string(subBandString)
		}
		self.subBand = _t_subBand
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = arm {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .armCode, auxiliaryKey: ._armCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .armString, auxiliaryKey: ._armString)
			}
		}
		if let _enum = band {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .bandCode, auxiliaryKey: ._bandCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .bandString, auxiliaryKey: ._bandString)
			}
		}
		if let _enum = region {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .regionCode, auxiliaryKey: ._regionCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .regionString, auxiliaryKey: ._regionString)
			}
		}
		if let _enum = subBand {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .subBandCode, auxiliaryKey: ._subBandCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .subBandString, auxiliaryKey: ._subBandString)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationCytobandLocationCytobandIntervalEndCytoband else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return arm == _other.arm
		    && band == _other.band
		    && region == _other.region
		    && subBand == _other.subBand
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(arm)
		hasher.combine(band)
		hasher.combine(region)
		hasher.combine(subBand)
	}
}

/**
 Start.
 
 The start of this cytoband Interval.
 */
open class MolecularDefinitionLocationCytobandLocationCytobandIntervalStartCytoband: BackboneElement {
	
	/// All possible types for "arm[x]"
	public enum ArmX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "band[x]"
	public enum BandX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "region[x]"
	public enum RegionX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "subBand[x]"
	public enum SubBandX: Hashable {
		case code(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Arm
	/// One of `arm[x]`
	public var arm: ArmX?
	
	/// Region
	/// One of `region[x]`
	public var region: RegionX?
	
	/// Band
	/// One of `band[x]`
	public var band: BandX?
	
	/// Sub-band
	/// One of `subBand[x]`
	public var subBand: SubBandX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		arm: ArmX? = nil,
		band: BandX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		region: RegionX? = nil,
		subBand: SubBandX? = nil
	) {
		self.init()
		self.arm = arm
		self.band = band
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.region = region
		self.subBand = subBand
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case armCode; case _armCode
		case armString; case _armString
		case bandCode; case _bandCode
		case bandString; case _bandString
		case regionCode; case _regionCode
		case regionString; case _regionString
		case subBandCode; case _subBandCode
		case subBandString; case _subBandString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_arm: ArmX? = nil
		if let armCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .armCode, auxiliaryKey: ._armCode) {
			if _t_arm != nil {
				throw DecodingError.dataCorruptedError(forKey: .armCode, in: _container, debugDescription: "More than one value provided for \"arm\"")
			}
			_t_arm = .code(armCode)
		}
		if let armString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .armString, auxiliaryKey: ._armString) {
			if _t_arm != nil {
				throw DecodingError.dataCorruptedError(forKey: .armString, in: _container, debugDescription: "More than one value provided for \"arm\"")
			}
			_t_arm = .string(armString)
		}
		self.arm = _t_arm
		var _t_band: BandX? = nil
		if let bandCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .bandCode, auxiliaryKey: ._bandCode) {
			if _t_band != nil {
				throw DecodingError.dataCorruptedError(forKey: .bandCode, in: _container, debugDescription: "More than one value provided for \"band\"")
			}
			_t_band = .code(bandCode)
		}
		if let bandString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .bandString, auxiliaryKey: ._bandString) {
			if _t_band != nil {
				throw DecodingError.dataCorruptedError(forKey: .bandString, in: _container, debugDescription: "More than one value provided for \"band\"")
			}
			_t_band = .string(bandString)
		}
		self.band = _t_band
		var _t_region: RegionX? = nil
		if let regionCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .regionCode, auxiliaryKey: ._regionCode) {
			if _t_region != nil {
				throw DecodingError.dataCorruptedError(forKey: .regionCode, in: _container, debugDescription: "More than one value provided for \"region\"")
			}
			_t_region = .code(regionCode)
		}
		if let regionString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .regionString, auxiliaryKey: ._regionString) {
			if _t_region != nil {
				throw DecodingError.dataCorruptedError(forKey: .regionString, in: _container, debugDescription: "More than one value provided for \"region\"")
			}
			_t_region = .string(regionString)
		}
		self.region = _t_region
		var _t_subBand: SubBandX? = nil
		if let subBandCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subBandCode, auxiliaryKey: ._subBandCode) {
			if _t_subBand != nil {
				throw DecodingError.dataCorruptedError(forKey: .subBandCode, in: _container, debugDescription: "More than one value provided for \"subBand\"")
			}
			_t_subBand = .code(subBandCode)
		}
		if let subBandString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subBandString, auxiliaryKey: ._subBandString) {
			if _t_subBand != nil {
				throw DecodingError.dataCorruptedError(forKey: .subBandString, in: _container, debugDescription: "More than one value provided for \"subBand\"")
			}
			_t_subBand = .string(subBandString)
		}
		self.subBand = _t_subBand
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = arm {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .armCode, auxiliaryKey: ._armCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .armString, auxiliaryKey: ._armString)
			}
		}
		if let _enum = band {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .bandCode, auxiliaryKey: ._bandCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .bandString, auxiliaryKey: ._bandString)
			}
		}
		if let _enum = region {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .regionCode, auxiliaryKey: ._regionCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .regionString, auxiliaryKey: ._regionString)
			}
		}
		if let _enum = subBand {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .subBandCode, auxiliaryKey: ._subBandCode)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .subBandString, auxiliaryKey: ._subBandString)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationCytobandLocationCytobandIntervalStartCytoband else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return arm == _other.arm
		    && band == _other.band
		    && region == _other.region
		    && subBand == _other.subBand
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(arm)
		hasher.combine(band)
		hasher.combine(region)
		hasher.combine(subBand)
	}
}

/**
 Reference Genome.
 
 The reference genome assemble.
 */
open class MolecularDefinitionLocationCytobandLocationGenomeAssembly: BackboneElement {
	
	/// All possible types for "description_fhir[x]"
	public enum Description_fhirX: Hashable {
		case markdown(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Species of the organism
	public var organism: CodeableConcept?
	
	/// Build number
	public var build: CodeableConcept?
	
	/// Accession
	public var accession: CodeableConcept?
	
	/// Genome assemble description
	/// One of `description_fhir[x]`
	public var description_fhir: Description_fhirX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		accession: CodeableConcept? = nil,
		build: CodeableConcept? = nil,
		description_fhir: Description_fhirX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organism: CodeableConcept? = nil
	) {
		self.init()
		self.accession = accession
		self.build = build
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.organism = organism
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accession
		case build
		case descriptionMarkdown; case _descriptionMarkdown
		case descriptionString; case _descriptionString
		case organism
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accession = try CodeableConcept(from: _container, forKeyIfPresent: .accession)
		self.build = try CodeableConcept(from: _container, forKeyIfPresent: .build)
		var _t_description_fhir: Description_fhirX? = nil
		if let descriptionMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .descriptionMarkdown, auxiliaryKey: ._descriptionMarkdown) {
			if _t_description_fhir != nil {
				throw DecodingError.dataCorruptedError(forKey: .descriptionMarkdown, in: _container, debugDescription: "More than one value provided for \"description_fhir\"")
			}
			_t_description_fhir = .markdown(descriptionMarkdown)
		}
		if let descriptionString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .descriptionString, auxiliaryKey: ._descriptionString) {
			if _t_description_fhir != nil {
				throw DecodingError.dataCorruptedError(forKey: .descriptionString, in: _container, debugDescription: "More than one value provided for \"description_fhir\"")
			}
			_t_description_fhir = .string(descriptionString)
		}
		self.description_fhir = _t_description_fhir
		self.organism = try CodeableConcept(from: _container, forKeyIfPresent: .organism)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accession?.encode(on: &_container, forKey: .accession)
		try build?.encode(on: &_container, forKey: .build)
		if let _enum = description_fhir {
			switch _enum {
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .descriptionMarkdown, auxiliaryKey: ._descriptionMarkdown)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .descriptionString, auxiliaryKey: ._descriptionString)
			}
		}
		try organism?.encode(on: &_container, forKey: .organism)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationCytobandLocationGenomeAssembly else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accession == _other.accession
		    && build == _other.build
		    && description_fhir == _other.description_fhir
		    && organism == _other.organism
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accession)
		hasher.combine(build)
		hasher.combine(description_fhir)
		hasher.combine(organism)
	}
}

/**
 Location in context of a feature.
 
 The location of this molecule in context of a feature.
 */
open class MolecularDefinitionLocationFeatureLocation: BackboneElement {
	
	/// Gene Id
	public var geneId: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		geneId: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.geneId = geneId
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case geneId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.geneId = try [CodeableConcept](from: _container, forKeyIfPresent: .geneId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try geneId?.encode(on: &_container, forKey: .geneId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationFeatureLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return geneId == _other.geneId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(geneId)
	}
}

/**
 Location of this molecule in context of a sequence.
 
 The Location of this molecule in context of a sequence.
 */
open class MolecularDefinitionLocationSequenceLocation: BackboneElement {
	
	/// Reference sequence
	public var sequenceContext: Reference
	
	/// Coordinate Interval for this location
	public var coordinateInterval: MolecularDefinitionLocationSequenceLocationCoordinateInterval?
	
	/// Forward or Reverse
	public var strand: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(sequenceContext: Reference) {
		self.sequenceContext = sequenceContext
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinateInterval: MolecularDefinitionLocationSequenceLocationCoordinateInterval? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceContext: Reference,
		strand: CodeableConcept? = nil
	) {
		self.init(sequenceContext: sequenceContext)
		self.coordinateInterval = coordinateInterval
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strand = strand
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinateInterval
		case sequenceContext
		case strand
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateInterval = try MolecularDefinitionLocationSequenceLocationCoordinateInterval(from: _container, forKeyIfPresent: .coordinateInterval)
		self.sequenceContext = try Reference(from: _container, forKey: .sequenceContext)
		self.strand = try CodeableConcept(from: _container, forKeyIfPresent: .strand)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinateInterval?.encode(on: &_container, forKey: .coordinateInterval)
		try sequenceContext.encode(on: &_container, forKey: .sequenceContext)
		try strand?.encode(on: &_container, forKey: .strand)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationSequenceLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinateInterval == _other.coordinateInterval
		    && sequenceContext == _other.sequenceContext
		    && strand == _other.strand
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateInterval)
		hasher.combine(sequenceContext)
		hasher.combine(strand)
	}
}

/**
 Coordinate Interval for this location.
 
 The coordinate interval for this location.
 */
open class MolecularDefinitionLocationSequenceLocationCoordinateInterval: BackboneElement {
	
	/// All possible types for "end[x]"
	public enum EndX: Hashable {
		case quantity(Quantity)
		case range(Range)
	}
	
	/// All possible types for "start[x]"
	public enum StartX: Hashable {
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Coordinate System
	public var numberingSystem: CodeableConcept?
	
	/// Start
	/// One of `start[x]`
	public var start: StartX?
	
	/// End
	/// One of `end[x]`
	public var end: EndX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		end: EndX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		numberingSystem: CodeableConcept? = nil,
		start: StartX? = nil
	) {
		self.init()
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.numberingSystem = numberingSystem
		self.start = start
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endQuantity
		case endRange
		case numberingSystem
		case startQuantity
		case startRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_end: EndX? = nil
		if let endQuantity = try Quantity(from: _container, forKeyIfPresent: .endQuantity) {
			if _t_end != nil {
				throw DecodingError.dataCorruptedError(forKey: .endQuantity, in: _container, debugDescription: "More than one value provided for \"end\"")
			}
			_t_end = .quantity(endQuantity)
		}
		if let endRange = try Range(from: _container, forKeyIfPresent: .endRange) {
			if _t_end != nil {
				throw DecodingError.dataCorruptedError(forKey: .endRange, in: _container, debugDescription: "More than one value provided for \"end\"")
			}
			_t_end = .range(endRange)
		}
		self.end = _t_end
		self.numberingSystem = try CodeableConcept(from: _container, forKeyIfPresent: .numberingSystem)
		var _t_start: StartX? = nil
		if let startQuantity = try Quantity(from: _container, forKeyIfPresent: .startQuantity) {
			if _t_start != nil {
				throw DecodingError.dataCorruptedError(forKey: .startQuantity, in: _container, debugDescription: "More than one value provided for \"start\"")
			}
			_t_start = .quantity(startQuantity)
		}
		if let startRange = try Range(from: _container, forKeyIfPresent: .startRange) {
			if _t_start != nil {
				throw DecodingError.dataCorruptedError(forKey: .startRange, in: _container, debugDescription: "More than one value provided for \"start\"")
			}
			_t_start = .range(startRange)
		}
		self.start = _t_start
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = end {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .endQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .endRange)
			}
		}
		try numberingSystem?.encode(on: &_container, forKey: .numberingSystem)
		if let _enum = start {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .startQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .startRange)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionLocationSequenceLocationCoordinateInterval else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return end == _other.end
		    && numberingSystem == _other.numberingSystem
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(end)
		hasher.combine(numberingSystem)
		hasher.combine(start)
	}
}

/**
 Representation.
 
 The representation of this molecular definition, e.g., as a literal or repeated elements.
 */
open class MolecularDefinitionRepresentation: BackboneElement {
	
	/// The focus of the representation
	public var focus: CodeableConcept?
	
	/// A code of the representation
	public var code: [CodeableConcept]?
	
	/// A literal representation
	public var literal: MolecularDefinitionRepresentationLiteral?
	
	/// A resolvable representation of a molecule that optionally contains formatting in addition to the specification
	/// of the primary sequence itself
	public var resolvable: Attachment?
	
	/// A Molecular Sequence that is represented as an extracted portion of a different Molecular Sequence
	public var extracted: MolecularDefinitionRepresentationExtracted?
	
	/// A Molecular Sequence that is represented as a repeated sequence motif
	public var repeated: MolecularDefinitionRepresentationRepeated?
	
	/// A Molecular Sequence that is represented as an ordered concatenation of two or more Molecular Sequences
	public var concatenated: MolecularDefinitionRepresentationConcatenated?
	
	/// A Molecular Definition that is represented as an ordered series of edits on a specified starting sequence
	public var relative: MolecularDefinitionRepresentationRelative?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: [CodeableConcept]? = nil,
		concatenated: MolecularDefinitionRepresentationConcatenated? = nil,
		`extension`: [Extension]? = nil,
		extracted: MolecularDefinitionRepresentationExtracted? = nil,
		focus: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		literal: MolecularDefinitionRepresentationLiteral? = nil,
		modifierExtension: [Extension]? = nil,
		relative: MolecularDefinitionRepresentationRelative? = nil,
		repeated: MolecularDefinitionRepresentationRepeated? = nil,
		resolvable: Attachment? = nil
	) {
		self.init()
		self.code = code
		self.concatenated = concatenated
		self.`extension` = `extension`
		self.extracted = extracted
		self.focus = focus
		self.id = id
		self.literal = literal
		self.modifierExtension = modifierExtension
		self.relative = relative
		self.repeated = repeated
		self.resolvable = resolvable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case concatenated
		case extracted
		case focus
		case literal
		case relative
		case repeated
		case resolvable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.concatenated = try MolecularDefinitionRepresentationConcatenated(from: _container, forKeyIfPresent: .concatenated)
		self.extracted = try MolecularDefinitionRepresentationExtracted(from: _container, forKeyIfPresent: .extracted)
		self.focus = try CodeableConcept(from: _container, forKeyIfPresent: .focus)
		self.literal = try MolecularDefinitionRepresentationLiteral(from: _container, forKeyIfPresent: .literal)
		self.relative = try MolecularDefinitionRepresentationRelative(from: _container, forKeyIfPresent: .relative)
		self.repeated = try MolecularDefinitionRepresentationRepeated(from: _container, forKeyIfPresent: .repeated)
		self.resolvable = try Attachment(from: _container, forKeyIfPresent: .resolvable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try concatenated?.encode(on: &_container, forKey: .concatenated)
		try extracted?.encode(on: &_container, forKey: .extracted)
		try focus?.encode(on: &_container, forKey: .focus)
		try literal?.encode(on: &_container, forKey: .literal)
		try relative?.encode(on: &_container, forKey: .relative)
		try repeated?.encode(on: &_container, forKey: .repeated)
		try resolvable?.encode(on: &_container, forKey: .resolvable)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && concatenated == _other.concatenated
		    && extracted == _other.extracted
		    && focus == _other.focus
		    && literal == _other.literal
		    && relative == _other.relative
		    && repeated == _other.repeated
		    && resolvable == _other.resolvable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(concatenated)
		hasher.combine(extracted)
		hasher.combine(focus)
		hasher.combine(literal)
		hasher.combine(relative)
		hasher.combine(repeated)
		hasher.combine(resolvable)
	}
}

/**
 A Molecular Sequence that is represented as an ordered concatenation of two or more Molecular Sequences.
 */
open class MolecularDefinitionRepresentationConcatenated: BackboneElement {
	
	/// One element of a concatenated Molecular Sequence
	public var sequenceElement: [MolecularDefinitionRepresentationConcatenatedSequenceElement]
	
	/// Designated initializer taking all required properties
	public init(sequenceElement: [MolecularDefinitionRepresentationConcatenatedSequenceElement]) {
		self.sequenceElement = sequenceElement
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceElement: [MolecularDefinitionRepresentationConcatenatedSequenceElement]
	) {
		self.init(sequenceElement: sequenceElement)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case sequenceElement
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.sequenceElement = try [MolecularDefinitionRepresentationConcatenatedSequenceElement](from: _container, forKey: .sequenceElement)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try sequenceElement.encode(on: &_container, forKey: .sequenceElement)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationConcatenated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return sequenceElement == _other.sequenceElement
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(sequenceElement)
	}
}

/**
 One element of a concatenated Molecular Sequence.
 */
open class MolecularDefinitionRepresentationConcatenatedSequenceElement: BackboneElement {
	
	/// The Molecular Sequence corresponding to this element
	public var sequence: Reference
	
	/// The ordinal position of this sequence element within the concatenated Molecular Sequence
	public var ordinalIndex: FHIRPrimitive<FHIRInteger>
	
	/// Designated initializer taking all required properties
	public init(ordinalIndex: FHIRPrimitive<FHIRInteger>, sequence: Reference) {
		self.ordinalIndex = ordinalIndex
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		ordinalIndex: FHIRPrimitive<FHIRInteger>,
		sequence: Reference
	) {
		self.init(ordinalIndex: ordinalIndex, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case ordinalIndex; case _ordinalIndex
		case sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.ordinalIndex = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .ordinalIndex, auxiliaryKey: ._ordinalIndex)
		self.sequence = try Reference(from: _container, forKey: .sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try ordinalIndex.encode(on: &_container, forKey: .ordinalIndex, auxiliaryKey: ._ordinalIndex)
		try sequence.encode(on: &_container, forKey: .sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationConcatenatedSequenceElement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return ordinalIndex == _other.ordinalIndex
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(ordinalIndex)
		hasher.combine(sequence)
	}
}

/**
 A Molecular Sequence that is represented as an extracted portion of a different Molecular Sequence.
 */
open class MolecularDefinitionRepresentationExtracted: BackboneElement {
	
	/// The Molecular Sequence that serves as the parent sequence, from which the intended sequence will be extracted
	public var startingMolecule: Reference
	
	/// The start coordinate (on the parent sequence) of the interval that defines the subsequence to be extracted
	public var start: FHIRPrimitive<FHIRInteger>
	
	/// The end coordinate (on the parent sequence) of the interval that defines the subsequence to be extracted
	public var end: FHIRPrimitive<FHIRInteger>
	
	/// The coordinate system used to define the interval that defines the subsequence to be extracted. Coordinate
	/// systems are usually 0- or 1-based
	public var coordinateSystem: CodeableConcept
	
	/// A flag that indicates whether the extracted sequence should be reverse complemented
	public var reverseComplement: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(coordinateSystem: CodeableConcept, end: FHIRPrimitive<FHIRInteger>, start: FHIRPrimitive<FHIRInteger>, startingMolecule: Reference) {
		self.coordinateSystem = coordinateSystem
		self.end = end
		self.start = start
		self.startingMolecule = startingMolecule
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinateSystem: CodeableConcept,
		end: FHIRPrimitive<FHIRInteger>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reverseComplement: FHIRPrimitive<FHIRBool>? = nil,
		start: FHIRPrimitive<FHIRInteger>,
		startingMolecule: Reference
	) {
		self.init(coordinateSystem: coordinateSystem, end: end, start: start, startingMolecule: startingMolecule)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reverseComplement = reverseComplement
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinateSystem
		case end; case _end
		case reverseComplement; case _reverseComplement
		case start; case _start
		case startingMolecule
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateSystem = try CodeableConcept(from: _container, forKey: .coordinateSystem)
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.reverseComplement = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reverseComplement, auxiliaryKey: ._reverseComplement)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.startingMolecule = try Reference(from: _container, forKey: .startingMolecule)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinateSystem.encode(on: &_container, forKey: .coordinateSystem)
		try end.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try reverseComplement?.encode(on: &_container, forKey: .reverseComplement, auxiliaryKey: ._reverseComplement)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try startingMolecule.encode(on: &_container, forKey: .startingMolecule)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationExtracted else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinateSystem == _other.coordinateSystem
		    && end == _other.end
		    && reverseComplement == _other.reverseComplement
		    && start == _other.start
		    && startingMolecule == _other.startingMolecule
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateSystem)
		hasher.combine(end)
		hasher.combine(reverseComplement)
		hasher.combine(start)
		hasher.combine(startingMolecule)
	}
}

/**
 A literal representation.
 */
open class MolecularDefinitionRepresentationLiteral: BackboneElement {
	
	/// The encoding used for the expression of the primary sequence
	public var encoding: CodeableConcept?
	
	/// The primary (linear) sequence, expressed as a literal string
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		encoding: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(value: value)
		self.encoding = encoding
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case encoding
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.encoding = try CodeableConcept(from: _container, forKeyIfPresent: .encoding)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try encoding?.encode(on: &_container, forKey: .encoding)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationLiteral else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return encoding == _other.encoding
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(encoding)
		hasher.combine(value)
	}
}

/**
 A Molecular Definition that is represented as an ordered series of edits on a specified starting sequence.
 */
open class MolecularDefinitionRepresentationRelative: BackboneElement {
	
	/// The Molecular Sequence that serves as the starting sequence, on which edits will be applied
	public var startingMolecule: Reference
	
	/// An edit (change) made to a sequence
	public var edit: [MolecularDefinitionRepresentationRelativeEdit]?
	
	/// Designated initializer taking all required properties
	public init(startingMolecule: Reference) {
		self.startingMolecule = startingMolecule
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		edit: [MolecularDefinitionRepresentationRelativeEdit]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		startingMolecule: Reference
	) {
		self.init(startingMolecule: startingMolecule)
		self.edit = edit
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case edit
		case startingMolecule
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.edit = try [MolecularDefinitionRepresentationRelativeEdit](from: _container, forKeyIfPresent: .edit)
		self.startingMolecule = try Reference(from: _container, forKey: .startingMolecule)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try edit?.encode(on: &_container, forKey: .edit)
		try startingMolecule.encode(on: &_container, forKey: .startingMolecule)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationRelative else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return edit == _other.edit
		    && startingMolecule == _other.startingMolecule
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(edit)
		hasher.combine(startingMolecule)
	}
}

/**
 An edit (change) made to a sequence.
 */
open class MolecularDefinitionRepresentationRelativeEdit: BackboneElement {
	
	/// The order of this edit, relative to other edits on the starting sequence
	public var editOrder: FHIRPrimitive<FHIRInteger>?
	
	/// The coordinate system used to define the edited intervals on the starting sequence. Coordinate systems are
	/// usually 0- or 1-based
	public var coordinateSystem: CodeableConcept
	
	/// The start coordinate of the interval that will be edited
	public var start: FHIRPrimitive<FHIRInteger>
	
	/// The end coordinate of the interval that will be edited
	public var end: FHIRPrimitive<FHIRInteger>
	
	/// The sequence that defines the replacement sequence used in the edit operation
	public var replacementMolecule: Reference
	
	/// The sequence on the 'starting' sequence for the edit operation, defined by the specified interval, that will be
	/// replaced during the edit
	public var replacedMolecule: Reference?
	
	/// Designated initializer taking all required properties
	public init(coordinateSystem: CodeableConcept, end: FHIRPrimitive<FHIRInteger>, replacementMolecule: Reference, start: FHIRPrimitive<FHIRInteger>) {
		self.coordinateSystem = coordinateSystem
		self.end = end
		self.replacementMolecule = replacementMolecule
		self.start = start
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinateSystem: CodeableConcept,
		editOrder: FHIRPrimitive<FHIRInteger>? = nil,
		end: FHIRPrimitive<FHIRInteger>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		replacedMolecule: Reference? = nil,
		replacementMolecule: Reference,
		start: FHIRPrimitive<FHIRInteger>
	) {
		self.init(coordinateSystem: coordinateSystem, end: end, replacementMolecule: replacementMolecule, start: start)
		self.editOrder = editOrder
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.replacedMolecule = replacedMolecule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinateSystem
		case editOrder; case _editOrder
		case end; case _end
		case replacedMolecule
		case replacementMolecule
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateSystem = try CodeableConcept(from: _container, forKey: .coordinateSystem)
		self.editOrder = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .editOrder, auxiliaryKey: ._editOrder)
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.replacedMolecule = try Reference(from: _container, forKeyIfPresent: .replacedMolecule)
		self.replacementMolecule = try Reference(from: _container, forKey: .replacementMolecule)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .start, auxiliaryKey: ._start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinateSystem.encode(on: &_container, forKey: .coordinateSystem)
		try editOrder?.encode(on: &_container, forKey: .editOrder, auxiliaryKey: ._editOrder)
		try end.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try replacedMolecule?.encode(on: &_container, forKey: .replacedMolecule)
		try replacementMolecule.encode(on: &_container, forKey: .replacementMolecule)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationRelativeEdit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinateSystem == _other.coordinateSystem
		    && editOrder == _other.editOrder
		    && end == _other.end
		    && replacedMolecule == _other.replacedMolecule
		    && replacementMolecule == _other.replacementMolecule
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateSystem)
		hasher.combine(editOrder)
		hasher.combine(end)
		hasher.combine(replacedMolecule)
		hasher.combine(replacementMolecule)
		hasher.combine(start)
	}
}

/**
 A Molecular Sequence that is represented as a repeated sequence motif.
 */
open class MolecularDefinitionRepresentationRepeated: BackboneElement {
	
	/// The sequence that defines the repeated motif
	public var sequenceMotif: Reference
	
	/// The number of repeats (copies) of the sequence motif
	public var copyCount: FHIRPrimitive<FHIRInteger>
	
	/// Designated initializer taking all required properties
	public init(copyCount: FHIRPrimitive<FHIRInteger>, sequenceMotif: Reference) {
		self.copyCount = copyCount
		self.sequenceMotif = sequenceMotif
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		copyCount: FHIRPrimitive<FHIRInteger>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceMotif: Reference
	) {
		self.init(copyCount: copyCount, sequenceMotif: sequenceMotif)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case copyCount; case _copyCount
		case sequenceMotif
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.copyCount = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .copyCount, auxiliaryKey: ._copyCount)
		self.sequenceMotif = try Reference(from: _container, forKey: .sequenceMotif)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try copyCount.encode(on: &_container, forKey: .copyCount, auxiliaryKey: ._copyCount)
		try sequenceMotif.encode(on: &_container, forKey: .sequenceMotif)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularDefinitionRepresentationRepeated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return copyCount == _other.copyCount
		    && sequenceMotif == _other.sequenceMotif
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(copyCount)
		hasher.combine(sequenceMotif)
	}
}
