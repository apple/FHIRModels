//
//  MolecularSequence.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MolecularSequence)
//  Copyright 2023 Apple Inc.
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
open class MolecularSequence: DomainResource {
	
	override open class var resourceType: ResourceType { return .molecularSequence }
	
	/// Unique ID for this particular sequence
	public var identifier: [Identifier]?
	
	/// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
	public var type: FHIRPrimitive<SequenceType>?
	
	/// Subject this sequence is associated too
	public var subject: Reference?
	
	/// What the molecular sequence is about, when it is not about the subject of record
	public var focus: [Reference]?
	
	/// Specimen used for sequencing
	public var specimen: Reference?
	
	/// The method for sequencing
	public var device: Reference?
	
	/// Who should be responsible for test result
	public var performer: Reference?
	
	/// Sequence that was observed
	public var literal: FHIRPrimitive<FHIRString>?
	
	/// Embedded file or a link (URL) which contains content to represent the sequence
	public var formatted: [Attachment]?
	
	/// A sequence defined relative to another sequence
	public var relative: [MolecularSequenceRelative]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case device
		case focus
		case formatted
		case identifier
		case literal; case _literal
		case performer
		case relative
		case specimen
		case subject
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.formatted = try [Attachment](from: _container, forKeyIfPresent: .formatted)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.literal = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .literal, auxiliaryKey: ._literal)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.relative = try [MolecularSequenceRelative](from: _container, forKeyIfPresent: .relative)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try FHIRPrimitive<SequenceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try device?.encode(on: &_container, forKey: .device)
		try focus?.encode(on: &_container, forKey: .focus)
		try formatted?.encode(on: &_container, forKey: .formatted)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try literal?.encode(on: &_container, forKey: .literal, auxiliaryKey: ._literal)
		try performer?.encode(on: &_container, forKey: .performer)
		try relative?.encode(on: &_container, forKey: .relative)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return device == _other.device
		    && focus == _other.focus
		    && formatted == _other.formatted
		    && identifier == _other.identifier
		    && literal == _other.literal
		    && performer == _other.performer
		    && relative == _other.relative
		    && specimen == _other.specimen
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(device)
		hasher.combine(focus)
		hasher.combine(formatted)
		hasher.combine(identifier)
		hasher.combine(literal)
		hasher.combine(performer)
		hasher.combine(relative)
		hasher.combine(specimen)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 A sequence defined relative to another sequence.
 */
open class MolecularSequenceRelative: BackboneElement {
	
	/// Ways of identifying nucleotides or amino acids within a sequence
	public var coordinateSystem: CodeableConcept
	
	/// Indicates the order in which the sequence should be considered when putting multiple 'relative' elements
	/// together
	public var ordinalPosition: FHIRPrimitive<FHIRInteger>?
	
	/// Indicates the nucleotide range in the composed sequence when multiple 'relative' elements are used together
	public var sequenceRange: Range?
	
	/// A sequence used as starting sequence
	public var startingSequence: MolecularSequenceRelativeStartingSequence?
	
	/// Changes in sequence from the starting sequence
	public var edit: [MolecularSequenceRelativeEdit]?
	
	/// Designated initializer taking all required properties
	public init(coordinateSystem: CodeableConcept) {
		self.coordinateSystem = coordinateSystem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinateSystem: CodeableConcept,
		edit: [MolecularSequenceRelativeEdit]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		ordinalPosition: FHIRPrimitive<FHIRInteger>? = nil,
		sequenceRange: Range? = nil,
		startingSequence: MolecularSequenceRelativeStartingSequence? = nil
	) {
		self.init(coordinateSystem: coordinateSystem)
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
		case ordinalPosition; case _ordinalPosition
		case sequenceRange
		case startingSequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateSystem = try CodeableConcept(from: _container, forKey: .coordinateSystem)
		self.edit = try [MolecularSequenceRelativeEdit](from: _container, forKeyIfPresent: .edit)
		self.ordinalPosition = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .ordinalPosition, auxiliaryKey: ._ordinalPosition)
		self.sequenceRange = try Range(from: _container, forKeyIfPresent: .sequenceRange)
		self.startingSequence = try MolecularSequenceRelativeStartingSequence(from: _container, forKeyIfPresent: .startingSequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinateSystem.encode(on: &_container, forKey: .coordinateSystem)
		try edit?.encode(on: &_container, forKey: .edit)
		try ordinalPosition?.encode(on: &_container, forKey: .ordinalPosition, auxiliaryKey: ._ordinalPosition)
		try sequenceRange?.encode(on: &_container, forKey: .sequenceRange)
		try startingSequence?.encode(on: &_container, forKey: .startingSequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceRelative else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinateSystem == _other.coordinateSystem
		    && edit == _other.edit
		    && ordinalPosition == _other.ordinalPosition
		    && sequenceRange == _other.sequenceRange
		    && startingSequence == _other.startingSequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateSystem)
		hasher.combine(edit)
		hasher.combine(ordinalPosition)
		hasher.combine(sequenceRange)
		hasher.combine(startingSequence)
	}
}

/**
 Changes in sequence from the starting sequence.
 */
open class MolecularSequenceRelativeEdit: BackboneElement {
	
	/// Start position of the edit on the starting sequence
	public var start: FHIRPrimitive<FHIRInteger>?
	
	/// End position of the edit on the starting sequence
	public var end: FHIRPrimitive<FHIRInteger>?
	
	/// Allele that was observed
	public var replacementSequence: FHIRPrimitive<FHIRString>?
	
	/// Allele in the starting sequence
	public var replacedSequence: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		end: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		replacedSequence: FHIRPrimitive<FHIRString>? = nil,
		replacementSequence: FHIRPrimitive<FHIRString>? = nil,
		start: FHIRPrimitive<FHIRInteger>? = nil
	) {
		self.init()
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
		case replacedSequence; case _replacedSequence
		case replacementSequence; case _replacementSequence
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.replacedSequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .replacedSequence, auxiliaryKey: ._replacedSequence)
		self.replacementSequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .replacementSequence, auxiliaryKey: ._replacementSequence)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try replacedSequence?.encode(on: &_container, forKey: .replacedSequence, auxiliaryKey: ._replacedSequence)
		try replacementSequence?.encode(on: &_container, forKey: .replacementSequence, auxiliaryKey: ._replacementSequence)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceRelativeEdit else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return end == _other.end
		    && replacedSequence == _other.replacedSequence
		    && replacementSequence == _other.replacementSequence
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(end)
		hasher.combine(replacedSequence)
		hasher.combine(replacementSequence)
		hasher.combine(start)
	}
}

/**
 A sequence used as starting sequence.
 
 A sequence that is used as a starting sequence to describe variants that are present in a sequence analyzed.
 */
open class MolecularSequenceRelativeStartingSequence: BackboneElement {
	
	/// All possible types for "sequence[x]"
	public enum SequenceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The genome assembly used for starting sequence, e.g. GRCh38
	public var genomeAssembly: CodeableConcept?
	
	/// Chromosome Identifier
	public var chromosome: CodeableConcept?
	
	/// The reference sequence that represents the starting sequence
	/// One of `sequence[x]`
	public var sequence: SequenceX?
	
	/// Start position of the window on the starting sequence
	public var windowStart: FHIRPrimitive<FHIRInteger>?
	
	/// End position of the window on the starting sequence
	public var windowEnd: FHIRPrimitive<FHIRInteger>?
	
	/// A relative reference to a DNA strand based on gene orientation. The strand that contains the open reading frame
	/// of the gene is the "sense" strand, and the opposite complementary strand is the "antisense" strand.
	public var orientation: FHIRPrimitive<OrientationType>?
	
	/// An absolute reference to a strand. The Watson strand is the strand whose 5'-end is on the short arm of the
	/// chromosome, and the Crick strand as the one whose 5'-end is on the long arm.
	public var strand: FHIRPrimitive<StrandType>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case genomeAssembly
		case orientation; case _orientation
		case sequenceCodeableConcept
		case sequenceReference
		case sequenceString; case _sequenceString
		case strand; case _strand
		case windowEnd; case _windowEnd
		case windowStart; case _windowStart
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.chromosome = try CodeableConcept(from: _container, forKeyIfPresent: .chromosome)
		self.genomeAssembly = try CodeableConcept(from: _container, forKeyIfPresent: .genomeAssembly)
		self.orientation = try FHIRPrimitive<OrientationType>(from: _container, forKeyIfPresent: .orientation, auxiliaryKey: ._orientation)
		var _t_sequence: SequenceX? = nil
		if let sequenceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .sequenceCodeableConcept) {
			if _t_sequence != nil {
				throw DecodingError.dataCorruptedError(forKey: .sequenceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"sequence\"")
			}
			_t_sequence = .codeableConcept(sequenceCodeableConcept)
		}
		if let sequenceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequenceString, auxiliaryKey: ._sequenceString) {
			if _t_sequence != nil {
				throw DecodingError.dataCorruptedError(forKey: .sequenceString, in: _container, debugDescription: "More than one value provided for \"sequence\"")
			}
			_t_sequence = .string(sequenceString)
		}
		if let sequenceReference = try Reference(from: _container, forKeyIfPresent: .sequenceReference) {
			if _t_sequence != nil {
				throw DecodingError.dataCorruptedError(forKey: .sequenceReference, in: _container, debugDescription: "More than one value provided for \"sequence\"")
			}
			_t_sequence = .reference(sequenceReference)
		}
		self.sequence = _t_sequence
		self.strand = try FHIRPrimitive<StrandType>(from: _container, forKeyIfPresent: .strand, auxiliaryKey: ._strand)
		self.windowEnd = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .windowEnd, auxiliaryKey: ._windowEnd)
		self.windowStart = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .windowStart, auxiliaryKey: ._windowStart)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try chromosome?.encode(on: &_container, forKey: .chromosome)
		try genomeAssembly?.encode(on: &_container, forKey: .genomeAssembly)
		try orientation?.encode(on: &_container, forKey: .orientation, auxiliaryKey: ._orientation)
		if let _enum = sequence {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .sequenceCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .sequenceString, auxiliaryKey: ._sequenceString)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sequenceReference)
			}
		}
		try strand?.encode(on: &_container, forKey: .strand, auxiliaryKey: ._strand)
		try windowEnd?.encode(on: &_container, forKey: .windowEnd, auxiliaryKey: ._windowEnd)
		try windowStart?.encode(on: &_container, forKey: .windowStart, auxiliaryKey: ._windowStart)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceRelativeStartingSequence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return chromosome == _other.chromosome
		    && genomeAssembly == _other.genomeAssembly
		    && orientation == _other.orientation
		    && sequence == _other.sequence
		    && strand == _other.strand
		    && windowEnd == _other.windowEnd
		    && windowStart == _other.windowStart
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chromosome)
		hasher.combine(genomeAssembly)
		hasher.combine(orientation)
		hasher.combine(sequence)
		hasher.combine(strand)
		hasher.combine(windowEnd)
		hasher.combine(windowStart)
	}
}
