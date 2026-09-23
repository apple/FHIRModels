//
//  SubstanceNucleicAcid.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid)
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
 Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will
 be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
 */
public struct SubstanceNucleicAcid: DomainResource {
	
	public static let resourceType: ResourceType = .substanceNucleicAcid
	
	/// The area of hybridisation shall be described if applicable for double stranded RNA or DNA. The number associated
	/// with the subunit followed by the number associated to the residue shall be specified in increasing order. The
	/// underscore “” shall be used as separator as follows: “Subunitnumber Residue”
	public var areaOfHybridisation: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
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
	
	/// The number of linear sequences of nucleotides linked through phosphodiester bonds shall be described. Subunits
	/// would be strands of nucleic acids that are tightly associated typically through Watson-Crick base pairing. NOTE:
	/// If not specified in the reference source, the assumption is that there is 1 subunit
	public var numberOfSubunits: FHIRPrimitive<FHIRInteger>?
	
	/// (TBC)
	public var oligoNucleotideType: CodeableConcept?
	
	/// The type of the sequence shall be specified based on a controlled vocabulary
	public var sequenceType: CodeableConcept?
	
	/// Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular
	/// weight; subunits that have identical sequences will be repeated multiple times
	public var subunit: [SubstanceNucleicAcidSubunit]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case areaOfHybridisation; case _areaOfHybridisation
		case contained
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case numberOfSubunits; case _numberOfSubunits
		case oligoNucleotideType
		case sequenceType
		case subunit
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.areaOfHybridisation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .areaOfHybridisation, auxiliaryKey: ._areaOfHybridisation)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfSubunits = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		self.oligoNucleotideType = try CodeableConcept(from: _container, forKeyIfPresent: .oligoNucleotideType)
		self.sequenceType = try CodeableConcept(from: _container, forKeyIfPresent: .sequenceType)
		self.subunit = try [SubstanceNucleicAcidSubunit](from: _container, forKeyIfPresent: .subunit)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try areaOfHybridisation?.encode(on: &_container, forKey: .areaOfHybridisation, auxiliaryKey: ._areaOfHybridisation)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfSubunits?.encode(on: &_container, forKey: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		try oligoNucleotideType?.encode(on: &_container, forKey: .oligoNucleotideType)
		try sequenceType?.encode(on: &_container, forKey: .sequenceType)
		try subunit?.encode(on: &_container, forKey: .subunit)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular weight;
 subunits that have identical sequences will be repeated multiple times.
 */
public struct SubstanceNucleicAcidSubunit: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The nucleotide present at the 5’ terminal shall be specified based on a controlled vocabulary. Since the
	/// sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the first position
	/// in the sequence. A separate representation would be redundant
	public var fivePrime: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The length of the sequence shall be captured
	public var length: FHIRPrimitive<FHIRInteger>?
	
	/// The linkages between sugar residues will also be captured
	public var linkage: [SubstanceNucleicAcidSubunitLinkage]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Actual nucleotide sequence notation from 5' to 3' end using standard single letter codes. In addition to the
	/// base sequence, sugar and type of phosphate or non-phosphate linkage should also be captured
	public var sequence: FHIRPrimitive<FHIRString>?
	
	/// (TBC)
	public var sequenceAttachment: Attachment?
	
	/// Index of linear sequences of nucleic acids in order of decreasing length. Sequences of the same length will be
	/// ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential
	/// subscripts
	public var subunit: FHIRPrimitive<FHIRInteger>?
	
	/// 5.3.6.8.1 Sugar ID (Mandatory)
	public var sugar: [SubstanceNucleicAcidSubunitSugar]?
	
	/// The nucleotide present at the 3’ terminal shall be specified based on a controlled vocabulary. Since the
	/// sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the last position in
	/// the sequence. A separate representation would be redundant
	public var threePrime: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		threePrime: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case fivePrime
		case id; case _id
		case length; case _length
		case linkage
		case modifierExtension
		case sequence; case _sequence
		case sequenceAttachment
		case subunit; case _subunit
		case sugar
		case threePrime
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fivePrime = try CodeableConcept(from: _container, forKeyIfPresent: .fivePrime)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.length = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .length, auxiliaryKey: ._length)
		self.linkage = try [SubstanceNucleicAcidSubunitLinkage](from: _container, forKeyIfPresent: .linkage)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.sequenceAttachment = try Attachment(from: _container, forKeyIfPresent: .sequenceAttachment)
		self.subunit = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .subunit, auxiliaryKey: ._subunit)
		self.sugar = try [SubstanceNucleicAcidSubunitSugar](from: _container, forKeyIfPresent: .sugar)
		self.threePrime = try CodeableConcept(from: _container, forKeyIfPresent: .threePrime)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fivePrime?.encode(on: &_container, forKey: .fivePrime)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try length?.encode(on: &_container, forKey: .length, auxiliaryKey: ._length)
		try linkage?.encode(on: &_container, forKey: .linkage)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try sequenceAttachment?.encode(on: &_container, forKey: .sequenceAttachment)
		try subunit?.encode(on: &_container, forKey: .subunit, auxiliaryKey: ._subunit)
		try sugar?.encode(on: &_container, forKey: .sugar)
		try threePrime?.encode(on: &_container, forKey: .threePrime)
	}
}

/**
 The linkages between sugar residues will also be captured.
 */
public struct SubstanceNucleicAcidSubunitLinkage: BackboneElement {
	
	/// The entity that links the sugar residues together should also be captured for nearly all naturally occurring
	/// nucleic acid the linkage is a phosphate group. For many synthetic oligonucleotides phosphorothioate linkages are
	/// often seen. Linkage connectivity is assumed to be 3’-5’. If the linkage is either 3’-3’ or 5’-5’ this should be
	/// specified
	public var connectivity: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Each linkage will be registered as a fragment and have an ID
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Each linkage will be registered as a fragment and have at least one name. A single name shall be assigned to
	/// each linkage
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Residues shall be captured as described in 5.3.6.8.3
	public var residueSite: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		connectivity: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		residueSite: FHIRPrimitive<FHIRString>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case name; case _name
		case residueSite; case _residueSite
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.connectivity = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .connectivity, auxiliaryKey: ._connectivity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.residueSite = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .residueSite, auxiliaryKey: ._residueSite)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try connectivity?.encode(on: &_container, forKey: .connectivity, auxiliaryKey: ._connectivity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try residueSite?.encode(on: &_container, forKey: .residueSite, auxiliaryKey: ._residueSite)
	}
}

/**
 5.3.6.8.1 Sugar ID (Mandatory).
 */
public struct SubstanceNucleicAcidSubunitSugar: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The Substance ID of the sugar or sugar-like component that make up the nucleotide
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name of the sugar or sugar-like component that make up the nucleotide
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The residues that contain a given sugar will be captured. The order of given residues will be captured in the
	/// 5‘-3‘direction consistent with the base sequences listed above
	public var residueSite: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		residueSite: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.residueSite = residueSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case name; case _name
		case residueSite; case _residueSite
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.residueSite = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .residueSite, auxiliaryKey: ._residueSite)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try residueSite?.encode(on: &_container, forKey: .residueSite, auxiliaryKey: ._residueSite)
	}
}
