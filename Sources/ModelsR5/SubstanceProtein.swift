//
//  SubstanceProtein.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SubstanceProtein)
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
 A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are
 either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic,
 recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This
 set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors,
 peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
 */
public struct SubstanceProtein: DomainResource {
	
	public static let resourceType: ResourceType = .substanceProtein
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The disulphide bond between two cysteine residues either on the same subunit or on two different subunits shall
	/// be described. The position of the disulfide bonds in the SubstanceProtein shall be listed in increasing order of
	/// subunit number and position within subunit followed by the abbreviation of the amino acids involved. The
	/// disulfide linkage positions shall actually contain the amino acid Cysteine at the respective positions
	public var disulfideLinkage: [FHIRPrimitive<FHIRString>]?
	
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
	
	/// Number of linear sequences of amino acids linked through peptide bonds. The number of subunits constituting the
	/// SubstanceProtein shall be described. It is possible that the number of subunits can be variable
	public var numberOfSubunits: FHIRPrimitive<FHIRInteger>?
	
	/// The SubstanceProtein descriptive elements will only be used when a complete or partial amino acid sequence is
	/// available or derivable from a nucleic acid sequence
	public var sequenceType: CodeableConcept?
	
	/// This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a
	/// linear sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the
	/// finished SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within
	/// a single sequence. Subunits are listed in order of decreasing length; sequences of the same length will be
	/// ordered by decreasing molecular weight; subunits that have identical sequences will be repeated multiple times
	public var subunit: [SubstanceProteinSubunit]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		disulfideLinkage: [FHIRPrimitive<FHIRString>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfSubunits: FHIRPrimitive<FHIRInteger>? = nil,
		sequenceType: CodeableConcept? = nil,
		subunit: [SubstanceProteinSubunit]? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.disulfideLinkage = disulfideLinkage
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.numberOfSubunits = numberOfSubunits
		self.sequenceType = sequenceType
		self.subunit = subunit
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case disulfideLinkage; case _disulfideLinkage
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case numberOfSubunits; case _numberOfSubunits
		case sequenceType
		case subunit
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.disulfideLinkage = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .disulfideLinkage, auxiliaryKey: ._disulfideLinkage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfSubunits = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		self.sequenceType = try CodeableConcept(from: _container, forKeyIfPresent: .sequenceType)
		self.subunit = try [SubstanceProteinSubunit](from: _container, forKeyIfPresent: .subunit)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try disulfideLinkage?.encode(on: &_container, forKey: .disulfideLinkage, auxiliaryKey: ._disulfideLinkage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfSubunits?.encode(on: &_container, forKey: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		try sequenceType?.encode(on: &_container, forKey: .sequenceType)
		try subunit?.encode(on: &_container, forKey: .subunit)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a linear
 sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the finished
 SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within a single
 sequence. Subunits are listed in order of decreasing length; sequences of the same length will be ordered by decreasing
 molecular weight; subunits that have identical sequences will be repeated multiple times.
 */
public struct SubstanceProteinSubunit: BackboneElement {
	
	/// The modification at the C-terminal shall be specified
	public var cTerminalModification: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID
	public var cTerminalModificationId: Identifier?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Length of linear sequences of amino acids contained in the subunit
	public var length: FHIRPrimitive<FHIRInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name of the fragment modified at the N-terminal of the SubstanceProtein shall be specified
	public var nTerminalModification: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID
	public var nTerminalModificationId: Identifier?
	
	/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard
	/// single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids.
	/// Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide
	/// containing amino acids that are not represented with a single letter code an X should be used within the
	/// sequence. The modified amino acids will be distinguished by their position in the sequence
	public var sequence: FHIRPrimitive<FHIRString>?
	
	/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard
	/// single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids.
	/// Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide
	/// containing amino acids that are not represented with a single letter code an X should be used within the
	/// sequence. The modified amino acids will be distinguished by their position in the sequence
	public var sequenceAttachment: Attachment?
	
	/// Index of primary sequences of amino acids linked through peptide bonds in order of decreasing length. Sequences
	/// of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated
	/// and have sequential subscripts
	public var subunit: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer
	public init(
		cTerminalModification: FHIRPrimitive<FHIRString>? = nil,
		cTerminalModificationId: Identifier? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		length: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		nTerminalModification: FHIRPrimitive<FHIRString>? = nil,
		nTerminalModificationId: Identifier? = nil,
		sequence: FHIRPrimitive<FHIRString>? = nil,
		sequenceAttachment: Attachment? = nil,
		subunit: FHIRPrimitive<FHIRInteger>? = nil
	) {
		self.cTerminalModification = cTerminalModification
		self.cTerminalModificationId = cTerminalModificationId
		self.`extension` = `extension`
		self.id = id
		self.length = length
		self.modifierExtension = modifierExtension
		self.nTerminalModification = nTerminalModification
		self.nTerminalModificationId = nTerminalModificationId
		self.sequence = sequence
		self.sequenceAttachment = sequenceAttachment
		self.subunit = subunit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cTerminalModification; case _cTerminalModification
		case cTerminalModificationId
		case `extension` = "extension"
		case id; case _id
		case length; case _length
		case modifierExtension
		case nTerminalModification; case _nTerminalModification
		case nTerminalModificationId
		case sequence; case _sequence
		case sequenceAttachment
		case subunit; case _subunit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.cTerminalModification = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cTerminalModification, auxiliaryKey: ._cTerminalModification)
		self.cTerminalModificationId = try Identifier(from: _container, forKeyIfPresent: .cTerminalModificationId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.length = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .length, auxiliaryKey: ._length)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.nTerminalModification = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .nTerminalModification, auxiliaryKey: ._nTerminalModification)
		self.nTerminalModificationId = try Identifier(from: _container, forKeyIfPresent: .nTerminalModificationId)
		self.sequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.sequenceAttachment = try Attachment(from: _container, forKeyIfPresent: .sequenceAttachment)
		self.subunit = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .subunit, auxiliaryKey: ._subunit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try cTerminalModification?.encode(on: &_container, forKey: .cTerminalModification, auxiliaryKey: ._cTerminalModification)
		try cTerminalModificationId?.encode(on: &_container, forKey: .cTerminalModificationId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try length?.encode(on: &_container, forKey: .length, auxiliaryKey: ._length)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try nTerminalModification?.encode(on: &_container, forKey: .nTerminalModification, auxiliaryKey: ._nTerminalModification)
		try nTerminalModificationId?.encode(on: &_container, forKey: .nTerminalModificationId)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try sequenceAttachment?.encode(on: &_container, forKey: .sequenceAttachment)
		try subunit?.encode(on: &_container, forKey: .subunit, auxiliaryKey: ._subunit)
	}
}
