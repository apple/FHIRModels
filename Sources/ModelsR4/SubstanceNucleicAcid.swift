//
//  SubstanceNucleicAcid.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid)
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
 Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will
 be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
 */
open class SubstanceNucleicAcid: DomainResource {
	
	override open class var resourceType: ResourceType { return .substanceNucleicAcid }
	
	/// The type of the sequence shall be specified based on a controlled vocabulary
	public var sequenceType: CodeableConcept?
	
	/// The number of linear sequences of nucleotides linked through phosphodiester bonds shall be described. Subunits
	/// would be strands of nucleic acids that are tightly associated typically through Watson-Crick base pairing. NOTE:
	/// If not specified in the reference source, the assumption is that there is 1 subunit
	public var numberOfSubunits: FHIRPrimitive<FHIRInteger>?
	
	/// The area of hybridisation shall be described if applicable for double stranded RNA or DNA. The number associated
	/// with the subunit followed by the number associated to the residue shall be specified in increasing order. The
	/// underscore “” shall be used as separator as follows: “Subunitnumber Residue”
	public var areaOfHybridisation: FHIRPrimitive<FHIRString>?
	
	/// (TBC)
	public var oligoNucleotideType: CodeableConcept?
	
	/// Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular
	/// weight; subunits that have identical sequences will be repeated multiple times
	public var subunit: [SubstanceNucleicAcidSubunit]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							areaOfHybridisation: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							numberOfSubunits: FHIRPrimitive<FHIRInteger>? = nil,
							oligoNucleotideType: CodeableConcept? = nil,
							sequenceType: CodeableConcept? = nil,
							subunit: [SubstanceNucleicAcidSubunit]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.areaOfHybridisation = areaOfHybridisation
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.numberOfSubunits = numberOfSubunits
		self.oligoNucleotideType = oligoNucleotideType
		self.sequenceType = sequenceType
		self.subunit = subunit
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case areaOfHybridisation; case _areaOfHybridisation
		case numberOfSubunits; case _numberOfSubunits
		case oligoNucleotideType
		case sequenceType
		case subunit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.areaOfHybridisation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .areaOfHybridisation, auxiliaryKey: ._areaOfHybridisation)
		self.numberOfSubunits = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		self.oligoNucleotideType = try CodeableConcept(from: _container, forKeyIfPresent: .oligoNucleotideType)
		self.sequenceType = try CodeableConcept(from: _container, forKeyIfPresent: .sequenceType)
		self.subunit = try [SubstanceNucleicAcidSubunit](from: _container, forKeyIfPresent: .subunit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try areaOfHybridisation?.encode(on: &_container, forKey: .areaOfHybridisation, auxiliaryKey: ._areaOfHybridisation)
		try numberOfSubunits?.encode(on: &_container, forKey: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		try oligoNucleotideType?.encode(on: &_container, forKey: .oligoNucleotideType)
		try sequenceType?.encode(on: &_container, forKey: .sequenceType)
		try subunit?.encode(on: &_container, forKey: .subunit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceNucleicAcid else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return areaOfHybridisation == _other.areaOfHybridisation
		    && numberOfSubunits == _other.numberOfSubunits
		    && oligoNucleotideType == _other.oligoNucleotideType
		    && sequenceType == _other.sequenceType
		    && subunit == _other.subunit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(areaOfHybridisation)
		hasher.combine(numberOfSubunits)
		hasher.combine(oligoNucleotideType)
		hasher.combine(sequenceType)
		hasher.combine(subunit)
	}
}

/**
 Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular weight;
 subunits that have identical sequences will be repeated multiple times.
 */
open class SubstanceNucleicAcidSubunit: BackboneElement {
	
	/// Index of linear sequences of nucleic acids in order of decreasing length. Sequences of the same length will be
	/// ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential
	/// subscripts
	public var subunit: FHIRPrimitive<FHIRInteger>?
	
	/// Actual nucleotide sequence notation from 5' to 3' end using standard single letter codes. In addition to the
	/// base sequence, sugar and type of phosphate or non-phosphate linkage should also be captured
	public var sequence: FHIRPrimitive<FHIRString>?
	
	/// The length of the sequence shall be captured
	public var length: FHIRPrimitive<FHIRInteger>?
	
	/// (TBC)
	public var sequenceAttachment: Attachment?
	
	/// The nucleotide present at the 5’ terminal shall be specified based on a controlled vocabulary. Since the
	/// sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the first position
	/// in the sequence. A separate representation would be redundant
	public var fivePrime: CodeableConcept?
	
	/// The nucleotide present at the 3’ terminal shall be specified based on a controlled vocabulary. Since the
	/// sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the last position in
	/// the sequence. A separate representation would be redundant
	public var threePrime: CodeableConcept?
	
	/// The linkages between sugar residues will also be captured
	public var linkage: [SubstanceNucleicAcidSubunitLinkage]?
	
	/// 5.3.6.8.1 Sugar ID (Mandatory)
	public var sugar: [SubstanceNucleicAcidSubunitSugar]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							fivePrime: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							length: FHIRPrimitive<FHIRInteger>? = nil,
							linkage: [SubstanceNucleicAcidSubunitLinkage]? = nil,
							modifierExtension: [Extension]? = nil,
							sequence: FHIRPrimitive<FHIRString>? = nil,
							sequenceAttachment: Attachment? = nil,
							subunit: FHIRPrimitive<FHIRInteger>? = nil,
							sugar: [SubstanceNucleicAcidSubunitSugar]? = nil,
							threePrime: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.fivePrime = fivePrime
		self.id = id
		self.length = length
		self.linkage = linkage
		self.modifierExtension = modifierExtension
		self.sequence = sequence
		self.sequenceAttachment = sequenceAttachment
		self.subunit = subunit
		self.sugar = sugar
		self.threePrime = threePrime
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case fivePrime
		case length; case _length
		case linkage
		case sequence; case _sequence
		case sequenceAttachment
		case subunit; case _subunit
		case sugar
		case threePrime
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.fivePrime = try CodeableConcept(from: _container, forKeyIfPresent: .fivePrime)
		self.length = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .length, auxiliaryKey: ._length)
		self.linkage = try [SubstanceNucleicAcidSubunitLinkage](from: _container, forKeyIfPresent: .linkage)
		self.sequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.sequenceAttachment = try Attachment(from: _container, forKeyIfPresent: .sequenceAttachment)
		self.subunit = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .subunit, auxiliaryKey: ._subunit)
		self.sugar = try [SubstanceNucleicAcidSubunitSugar](from: _container, forKeyIfPresent: .sugar)
		self.threePrime = try CodeableConcept(from: _container, forKeyIfPresent: .threePrime)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try fivePrime?.encode(on: &_container, forKey: .fivePrime)
		try length?.encode(on: &_container, forKey: .length, auxiliaryKey: ._length)
		try linkage?.encode(on: &_container, forKey: .linkage)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try sequenceAttachment?.encode(on: &_container, forKey: .sequenceAttachment)
		try subunit?.encode(on: &_container, forKey: .subunit, auxiliaryKey: ._subunit)
		try sugar?.encode(on: &_container, forKey: .sugar)
		try threePrime?.encode(on: &_container, forKey: .threePrime)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceNucleicAcidSubunit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return fivePrime == _other.fivePrime
		    && length == _other.length
		    && linkage == _other.linkage
		    && sequence == _other.sequence
		    && sequenceAttachment == _other.sequenceAttachment
		    && subunit == _other.subunit
		    && sugar == _other.sugar
		    && threePrime == _other.threePrime
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(fivePrime)
		hasher.combine(length)
		hasher.combine(linkage)
		hasher.combine(sequence)
		hasher.combine(sequenceAttachment)
		hasher.combine(subunit)
		hasher.combine(sugar)
		hasher.combine(threePrime)
	}
}

/**
 The linkages between sugar residues will also be captured.
 */
open class SubstanceNucleicAcidSubunitLinkage: BackboneElement {
	
	/// The entity that links the sugar residues together should also be captured for nearly all naturally occurring
	/// nucleic acid the linkage is a phosphate group. For many synthetic oligonucleotides phosphorothioate linkages are
	/// often seen. Linkage connectivity is assumed to be 3’-5’. If the linkage is either 3’-3’ or 5’-5’ this should be
	/// specified
	public var connectivity: FHIRPrimitive<FHIRString>?
	
	/// Each linkage will be registered as a fragment and have an ID
	public var identifier: Identifier?
	
	/// Each linkage will be registered as a fragment and have at least one name. A single name shall be assigned to
	/// each linkage
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Residues shall be captured as described in 5.3.6.8.3
	public var residueSite: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							connectivity: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							residueSite: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.connectivity = connectivity
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.residueSite = residueSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case connectivity; case _connectivity
		case identifier
		case name; case _name
		case residueSite; case _residueSite
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.connectivity = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .connectivity, auxiliaryKey: ._connectivity)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.residueSite = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .residueSite, auxiliaryKey: ._residueSite)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try connectivity?.encode(on: &_container, forKey: .connectivity, auxiliaryKey: ._connectivity)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try residueSite?.encode(on: &_container, forKey: .residueSite, auxiliaryKey: ._residueSite)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceNucleicAcidSubunitLinkage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return connectivity == _other.connectivity
		    && identifier == _other.identifier
		    && name == _other.name
		    && residueSite == _other.residueSite
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(connectivity)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(residueSite)
	}
}

/**
 5.3.6.8.1 Sugar ID (Mandatory).
 */
open class SubstanceNucleicAcidSubunitSugar: BackboneElement {
	
	/// The Substance ID of the sugar or sugar-like component that make up the nucleotide
	public var identifier: Identifier?
	
	/// The name of the sugar or sugar-like component that make up the nucleotide
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The residues that contain a given sugar will be captured. The order of given residues will be captured in the
	/// 5‘-3‘direction consistent with the base sequences listed above
	public var residueSite: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							residueSite: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.residueSite = residueSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case name; case _name
		case residueSite; case _residueSite
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.residueSite = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .residueSite, auxiliaryKey: ._residueSite)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try residueSite?.encode(on: &_container, forKey: .residueSite, auxiliaryKey: ._residueSite)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceNucleicAcidSubunitSugar else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && name == _other.name
		    && residueSite == _other.residueSite
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(residueSite)
	}
}
