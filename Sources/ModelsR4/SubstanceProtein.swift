//
//  SubstanceProtein.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceProtein)
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
 A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are
 either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic,
 recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This
 set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors,
 peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
 */
open class SubstanceProtein: DomainResource {
	
	override open class var resourceType: ResourceType { return .substanceProtein }
	
	/// The SubstanceProtein descriptive elements will only be used when a complete or partial amino acid sequence is
	/// available or derivable from a nucleic acid sequence
	public var sequenceType: CodeableConcept?
	
	/// Number of linear sequences of amino acids linked through peptide bonds. The number of subunits constituting the
	/// SubstanceProtein shall be described. It is possible that the number of subunits can be variable
	public var numberOfSubunits: FHIRPrimitive<FHIRInteger>?
	
	/// The disulphide bond between two cysteine residues either on the same subunit or on two different subunits shall
	/// be described. The position of the disulfide bonds in the SubstanceProtein shall be listed in increasing order of
	/// subunit number and position within subunit followed by the abbreviation of the amino acids involved. The
	/// disulfide linkage positions shall actually contain the amino acid Cysteine at the respective positions
	public var disulfideLinkage: [FHIRPrimitive<FHIRString>]?
	
	/// This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a
	/// linear sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the
	/// finished SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within
	/// a single sequence. Subunits are listed in order of decreasing length; sequences of the same length will be
	/// ordered by decreasing molecular weight; subunits that have identical sequences will be repeated multiple times
	public var subunit: [SubstanceProteinSubunit]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case disulfideLinkage; case _disulfideLinkage
		case numberOfSubunits; case _numberOfSubunits
		case sequenceType
		case subunit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.disulfideLinkage = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .disulfideLinkage, auxiliaryKey: ._disulfideLinkage)
		self.numberOfSubunits = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		self.sequenceType = try CodeableConcept(from: _container, forKeyIfPresent: .sequenceType)
		self.subunit = try [SubstanceProteinSubunit](from: _container, forKeyIfPresent: .subunit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try disulfideLinkage?.encode(on: &_container, forKey: .disulfideLinkage, auxiliaryKey: ._disulfideLinkage)
		try numberOfSubunits?.encode(on: &_container, forKey: .numberOfSubunits, auxiliaryKey: ._numberOfSubunits)
		try sequenceType?.encode(on: &_container, forKey: .sequenceType)
		try subunit?.encode(on: &_container, forKey: .subunit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceProtein else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return disulfideLinkage == _other.disulfideLinkage
		    && numberOfSubunits == _other.numberOfSubunits
		    && sequenceType == _other.sequenceType
		    && subunit == _other.subunit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(disulfideLinkage)
		hasher.combine(numberOfSubunits)
		hasher.combine(sequenceType)
		hasher.combine(subunit)
	}
}

/**
 This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a linear
 sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the finished
 SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within a single
 sequence. Subunits are listed in order of decreasing length; sequences of the same length will be ordered by decreasing
 molecular weight; subunits that have identical sequences will be repeated multiple times.
 */
open class SubstanceProteinSubunit: BackboneElement {
	
	/// Index of primary sequences of amino acids linked through peptide bonds in order of decreasing length. Sequences
	/// of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated
	/// and have sequential subscripts
	public var subunit: FHIRPrimitive<FHIRInteger>?
	
	/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard
	/// single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids.
	/// Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide
	/// containing amino acids that are not represented with a single letter code an X should be used within the
	/// sequence. The modified amino acids will be distinguished by their position in the sequence
	public var sequence: FHIRPrimitive<FHIRString>?
	
	/// Length of linear sequences of amino acids contained in the subunit
	public var length: FHIRPrimitive<FHIRInteger>?
	
	/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard
	/// single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids.
	/// Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide
	/// containing amino acids that are not represented with a single letter code an X should be used within the
	/// sequence. The modified amino acids will be distinguished by their position in the sequence
	public var sequenceAttachment: Attachment?
	
	/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID
	public var nTerminalModificationId: Identifier?
	
	/// The name of the fragment modified at the N-terminal of the SubstanceProtein shall be specified
	public var nTerminalModification: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID
	public var cTerminalModificationId: Identifier?
	
	/// The modification at the C-terminal shall be specified
	public var cTerminalModification: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							subunit: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
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
		case length; case _length
		case nTerminalModification; case _nTerminalModification
		case nTerminalModificationId
		case sequence; case _sequence
		case sequenceAttachment
		case subunit; case _subunit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cTerminalModification = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cTerminalModification, auxiliaryKey: ._cTerminalModification)
		self.cTerminalModificationId = try Identifier(from: _container, forKeyIfPresent: .cTerminalModificationId)
		self.length = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .length, auxiliaryKey: ._length)
		self.nTerminalModification = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .nTerminalModification, auxiliaryKey: ._nTerminalModification)
		self.nTerminalModificationId = try Identifier(from: _container, forKeyIfPresent: .nTerminalModificationId)
		self.sequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.sequenceAttachment = try Attachment(from: _container, forKeyIfPresent: .sequenceAttachment)
		self.subunit = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .subunit, auxiliaryKey: ._subunit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cTerminalModification?.encode(on: &_container, forKey: .cTerminalModification, auxiliaryKey: ._cTerminalModification)
		try cTerminalModificationId?.encode(on: &_container, forKey: .cTerminalModificationId)
		try length?.encode(on: &_container, forKey: .length, auxiliaryKey: ._length)
		try nTerminalModification?.encode(on: &_container, forKey: .nTerminalModification, auxiliaryKey: ._nTerminalModification)
		try nTerminalModificationId?.encode(on: &_container, forKey: .nTerminalModificationId)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try sequenceAttachment?.encode(on: &_container, forKey: .sequenceAttachment)
		try subunit?.encode(on: &_container, forKey: .subunit, auxiliaryKey: ._subunit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceProteinSubunit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cTerminalModification == _other.cTerminalModification
		    && cTerminalModificationId == _other.cTerminalModificationId
		    && length == _other.length
		    && nTerminalModification == _other.nTerminalModification
		    && nTerminalModificationId == _other.nTerminalModificationId
		    && sequence == _other.sequence
		    && sequenceAttachment == _other.sequenceAttachment
		    && subunit == _other.subunit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cTerminalModification)
		hasher.combine(cTerminalModificationId)
		hasher.combine(length)
		hasher.combine(nTerminalModification)
		hasher.combine(nTerminalModificationId)
		hasher.combine(sequence)
		hasher.combine(sequenceAttachment)
		hasher.combine(subunit)
	}
}
