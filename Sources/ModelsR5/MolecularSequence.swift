//
//  MolecularSequence.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MolecularSequence)
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
 Representation of a molecular sequence.
 */
public struct MolecularSequence: DomainResource {
	
	public static let resourceType: ResourceType = .molecularSequence
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The method for sequencing
	public var device: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What the molecular sequence is about, when it is not about the subject of record
	public var focus: [Reference]?
	
	/// Embedded file or a link (URL) which contains content to represent the sequence
	public var formatted: [Attachment]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique ID for this particular sequence
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Sequence that was observed
	public var literal: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who should be responsible for test result
	public var performer: Reference?
	
	/// A sequence defined relative to another sequence
	public var relative: [MolecularSequenceRelative]?
	
	/// Specimen used for sequencing
	public var specimen: Reference?
	
	/// Subject this sequence is associated too
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
	public var type: FHIRPrimitive<SequenceType>?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		device: Reference? = nil,
		`extension`: [Extension]? = nil,
		focus: [Reference]? = nil,
		formatted: [Attachment]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		literal: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		performer: Reference? = nil,
		relative: [MolecularSequenceRelative]? = nil,
		specimen: Reference? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<SequenceType>? = nil
	) {
		self.contained = contained
		self.device = device
		self.`extension` = `extension`
		self.focus = focus
		self.formatted = formatted
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.literal = literal
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.performer = performer
		self.relative = relative
		self.specimen = specimen
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case device
		case `extension` = "extension"
		case focus
		case formatted
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case literal; case _literal
		case meta
		case modifierExtension
		case performer
		case relative
		case specimen
		case subject
		case text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.formatted = try [Attachment](from: _container, forKeyIfPresent: .formatted)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.literal = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .literal, auxiliaryKey: ._literal)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.relative = try [MolecularSequenceRelative](from: _container, forKeyIfPresent: .relative)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<SequenceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try formatted?.encode(on: &_container, forKey: .formatted)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try literal?.encode(on: &_container, forKey: .literal, auxiliaryKey: ._literal)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try performer?.encode(on: &_container, forKey: .performer)
		try relative?.encode(on: &_container, forKey: .relative)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 A sequence defined relative to another sequence.
 */
public struct MolecularSequenceRelative: BackboneElement {
	
	/// Ways of identifying nucleotides or amino acids within a sequence
	public var coordinateSystem: CodeableConcept
	
	/// Changes in sequence from the starting sequence
	public var edit: [MolecularSequenceRelativeEdit]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Indicates the order in which the sequence should be considered when putting multiple 'relative' elements
	/// together
	public var ordinalPosition: FHIRPrimitive<FHIRInteger>?
	
	/// Indicates the nucleotide range in the composed sequence when multiple 'relative' elements are used together
	public var sequenceRange: Range?
	
	/// A sequence used as starting sequence
	public var startingSequence: MolecularSequenceRelativeStartingSequence?
	
	/// Designated initializer
	public init(
		coordinateSystem: CodeableConcept,
		edit: [MolecularSequenceRelativeEdit]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		ordinalPosition: FHIRPrimitive<FHIRInteger>? = nil,
		sequenceRange: Range? = nil,
		startingSequence: MolecularSequenceRelativeStartingSequence? = nil
	) {
		self.coordinateSystem = coordinateSystem
		self.edit = edit
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.ordinalPosition = ordinalPosition
		self.sequenceRange = sequenceRange
		self.startingSequence = startingSequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinateSystem
		case edit
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case ordinalPosition; case _ordinalPosition
		case sequenceRange
		case startingSequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coordinateSystem = try CodeableConcept(from: _container, forKey: .coordinateSystem)
		self.edit = try [MolecularSequenceRelativeEdit](from: _container, forKeyIfPresent: .edit)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.ordinalPosition = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .ordinalPosition, auxiliaryKey: ._ordinalPosition)
		self.sequenceRange = try Range(from: _container, forKeyIfPresent: .sequenceRange)
		self.startingSequence = try MolecularSequenceRelativeStartingSequence(from: _container, forKeyIfPresent: .startingSequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coordinateSystem.encode(on: &_container, forKey: .coordinateSystem)
		try edit?.encode(on: &_container, forKey: .edit)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try ordinalPosition?.encode(on: &_container, forKey: .ordinalPosition, auxiliaryKey: ._ordinalPosition)
		try sequenceRange?.encode(on: &_container, forKey: .sequenceRange)
		try startingSequence?.encode(on: &_container, forKey: .startingSequence)
	}
}

/**
 Changes in sequence from the starting sequence.
 */
public struct MolecularSequenceRelativeEdit: BackboneElement {
	
	/// End position of the edit on the starting sequence
	public var end: FHIRPrimitive<FHIRInteger>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Allele in the starting sequence
	public var replacedSequence: FHIRPrimitive<FHIRString>?
	
	/// Allele that was observed
	public var replacementSequence: FHIRPrimitive<FHIRString>?
	
	/// Start position of the edit on the starting sequence
	public var start: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer
	public init(
		end: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		replacedSequence: FHIRPrimitive<FHIRString>? = nil,
		replacementSequence: FHIRPrimitive<FHIRString>? = nil,
		start: FHIRPrimitive<FHIRInteger>? = nil
	) {
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.replacedSequence = replacedSequence
		self.replacementSequence = replacementSequence
		self.start = start
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case end; case _end
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case replacedSequence; case _replacedSequence
		case replacementSequence; case _replacementSequence
		case start; case _start
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.replacedSequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .replacedSequence, auxiliaryKey: ._replacedSequence)
		self.replacementSequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .replacementSequence, auxiliaryKey: ._replacementSequence)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try replacedSequence?.encode(on: &_container, forKey: .replacedSequence, auxiliaryKey: ._replacedSequence)
		try replacementSequence?.encode(on: &_container, forKey: .replacementSequence, auxiliaryKey: ._replacementSequence)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
	}
}

/**
 A sequence used as starting sequence.
 
 A sequence that is used as a starting sequence to describe variants that are present in a sequence analyzed.
 */
public struct MolecularSequenceRelativeStartingSequence: BackboneElement {
	
	/// All possible types for "sequence[x]"
	public enum SequenceX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Chromosome Identifier
	public var chromosome: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The genome assembly used for starting sequence, e.g. GRCh38
	public var genomeAssembly: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A relative reference to a DNA strand based on gene orientation. The strand that contains the open reading frame
	/// of the gene is the "sense" strand, and the opposite complementary strand is the "antisense" strand.
	public var orientation: FHIRPrimitive<OrientationType>?
	
	/// The reference sequence that represents the starting sequence
	/// One of `sequence[x]`
	public var sequence: SequenceX?
	
	/// An absolute reference to a strand. The Watson strand is the strand whose 5'-end is on the short arm of the
	/// chromosome, and the Crick strand as the one whose 5'-end is on the long arm.
	public var strand: FHIRPrimitive<StrandType>?
	
	/// End position of the window on the starting sequence
	public var windowEnd: FHIRPrimitive<FHIRInteger>?
	
	/// Start position of the window on the starting sequence
	public var windowStart: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer
	public init(
		chromosome: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		genomeAssembly: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		orientation: FHIRPrimitive<OrientationType>? = nil,
		sequence: SequenceX? = nil,
		strand: FHIRPrimitive<StrandType>? = nil,
		windowEnd: FHIRPrimitive<FHIRInteger>? = nil,
		windowStart: FHIRPrimitive<FHIRInteger>? = nil
	) {
		self.chromosome = chromosome
		self.`extension` = `extension`
		self.genomeAssembly = genomeAssembly
		self.id = id
		self.modifierExtension = modifierExtension
		self.orientation = orientation
		self.sequence = sequence
		self.strand = strand
		self.windowEnd = windowEnd
		self.windowStart = windowStart
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chromosome
		case `extension` = "extension"
		case genomeAssembly
		case id; case _id
		case modifierExtension
		case orientation; case _orientation
		case sequenceCodeableConcept
		case sequenceReference
		case sequenceString; case _sequenceString
		case strand; case _strand
		case windowEnd; case _windowEnd
		case windowStart; case _windowStart
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.chromosome = try CodeableConcept(from: _container, forKeyIfPresent: .chromosome)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.genomeAssembly = try CodeableConcept(from: _container, forKeyIfPresent: .genomeAssembly)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orientation = try FHIRPrimitive<OrientationType>(from: _container, forKeyIfPresent: .orientation, auxiliaryKey: ._orientation)
		self.sequence = try Self._decodeSequence(from: _container)
		self.strand = try FHIRPrimitive<StrandType>(from: _container, forKeyIfPresent: .strand, auxiliaryKey: ._strand)
		self.windowEnd = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .windowEnd, auxiliaryKey: ._windowEnd)
		self.windowStart = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .windowStart, auxiliaryKey: ._windowStart)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try chromosome?.encode(on: &_container, forKey: .chromosome)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try genomeAssembly?.encode(on: &_container, forKey: .genomeAssembly)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orientation?.encode(on: &_container, forKey: .orientation, auxiliaryKey: ._orientation)
		if let _enum = sequence {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .sequenceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .sequenceReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .sequenceString, auxiliaryKey: ._sequenceString)
		}
		}
		try strand?.encode(on: &_container, forKey: .strand, auxiliaryKey: ._strand)
		try windowEnd?.encode(on: &_container, forKey: .windowEnd, auxiliaryKey: ._windowEnd)
		try windowStart?.encode(on: &_container, forKey: .windowStart, auxiliaryKey: ._windowStart)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSequence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SequenceX? {
		var _t_sequence: SequenceX? = nil
		if let sequenceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .sequenceCodeableConcept) {
			_t_sequence = .codeableConcept(sequenceCodeableConcept)
		}
		if let sequenceReference = try Reference(from: _container, forKeyIfPresent: .sequenceReference) {
			if _t_sequence != nil {
				throw DecodingError.dataCorruptedError(forKey: .sequenceReference, in: _container, debugDescription: "More than one value provided for \"sequence\"")
			}
			_t_sequence = .reference(sequenceReference)
		}
		if let sequenceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequenceString, auxiliaryKey: ._sequenceString) {
			if _t_sequence != nil {
				throw DecodingError.dataCorruptedError(forKey: .sequenceString, in: _container, debugDescription: "More than one value provided for \"sequence\"")
			}
			_t_sequence = .string(sequenceString)
		}
		return _t_sequence
	}
}
