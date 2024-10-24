//
//  MolecularSequence.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/MolecularSequence)
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
 Representation of a molecular sequence.
 */
open class MolecularSequence: DomainResource {
	
	override open class var resourceType: ResourceType { return .molecularSequence }
	
	/// Unique ID for this particular sequence
	public var identifier: [Identifier]?
	
	/// The type of the Molecular Sequence (Amino Acid Sequence, DNA Sequence, RNA Sequence).
	public var type: FHIRPrimitive<SequenceType>?
	
	/// A literal representation of a Molecular Sequence
	public var literal: [MolecularSequenceLiteral]?
	
	/// Embedded file or a link (URL) which contains content to represent the sequence
	public var file: [Attachment]?
	
	/// A Molecular Sequence that is represented as an ordered series of edits on a specified starting sequence
	public var relative: [MolecularSequenceRelative]?
	
	/// A Molecular Sequence that is represented as an extracted portion of a different Molecular Sequence
	public var extracted: [MolecularSequenceExtracted]?
	
	/// A Molecular Sequence that is represented as a repeated sequence motif
	public var repeated: [MolecularSequenceRepeated]?
	
	/// A Molecular Sequence that is represented as an ordered concatenation of two or more Molecular Sequences
	public var concatenated: MolecularSequenceConcatenated?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		concatenated: MolecularSequenceConcatenated? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		extracted: [MolecularSequenceExtracted]? = nil,
		file: [Attachment]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		literal: [MolecularSequenceLiteral]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		relative: [MolecularSequenceRelative]? = nil,
		repeated: [MolecularSequenceRepeated]? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<SequenceType>? = nil
	) {
		self.init()
		self.concatenated = concatenated
		self.contained = contained
		self.`extension` = `extension`
		self.extracted = extracted
		self.file = file
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.literal = literal
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.relative = relative
		self.repeated = repeated
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concatenated
		case extracted
		case file
		case identifier
		case literal
		case relative
		case repeated
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.concatenated = try MolecularSequenceConcatenated(from: _container, forKeyIfPresent: .concatenated)
		self.extracted = try [MolecularSequenceExtracted](from: _container, forKeyIfPresent: .extracted)
		self.file = try [Attachment](from: _container, forKeyIfPresent: .file)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.literal = try [MolecularSequenceLiteral](from: _container, forKeyIfPresent: .literal)
		self.relative = try [MolecularSequenceRelative](from: _container, forKeyIfPresent: .relative)
		self.repeated = try [MolecularSequenceRepeated](from: _container, forKeyIfPresent: .repeated)
		self.type = try FHIRPrimitive<SequenceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try concatenated?.encode(on: &_container, forKey: .concatenated)
		try extracted?.encode(on: &_container, forKey: .extracted)
		try file?.encode(on: &_container, forKey: .file)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try literal?.encode(on: &_container, forKey: .literal)
		try relative?.encode(on: &_container, forKey: .relative)
		try repeated?.encode(on: &_container, forKey: .repeated)
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
		return concatenated == _other.concatenated
		    && extracted == _other.extracted
		    && file == _other.file
		    && identifier == _other.identifier
		    && literal == _other.literal
		    && relative == _other.relative
		    && repeated == _other.repeated
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(concatenated)
		hasher.combine(extracted)
		hasher.combine(file)
		hasher.combine(identifier)
		hasher.combine(literal)
		hasher.combine(relative)
		hasher.combine(repeated)
		hasher.combine(type)
	}
}

/**
 A Molecular Sequence that is represented as an ordered concatenation of two or more Molecular Sequences.
 */
open class MolecularSequenceConcatenated: BackboneElement {
	
	/// One element of a concatenated Molecular Sequence
	public var sequenceElement: [MolecularSequenceConcatenatedSequenceElement]
	
	/// Designated initializer taking all required properties
	public init(sequenceElement: [MolecularSequenceConcatenatedSequenceElement]) {
		self.sequenceElement = sequenceElement
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceElement: [MolecularSequenceConcatenatedSequenceElement]
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
		self.sequenceElement = try [MolecularSequenceConcatenatedSequenceElement](from: _container, forKey: .sequenceElement)
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
		guard let _other = _other as? MolecularSequenceConcatenated else {
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
open class MolecularSequenceConcatenatedSequenceElement: BackboneElement {
	
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
		guard let _other = _other as? MolecularSequenceConcatenatedSequenceElement else {
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
open class MolecularSequenceExtracted: BackboneElement {
	
	/// The Molecular Sequence that serves as the parent sequence, from which the intended sequence will be extracted
	public var startingSequence: Reference
	
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
	public init(coordinateSystem: CodeableConcept, end: FHIRPrimitive<FHIRInteger>, start: FHIRPrimitive<FHIRInteger>, startingSequence: Reference) {
		self.coordinateSystem = coordinateSystem
		self.end = end
		self.start = start
		self.startingSequence = startingSequence
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
		startingSequence: Reference
	) {
		self.init(coordinateSystem: coordinateSystem, end: end, start: start, startingSequence: startingSequence)
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
		case startingSequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateSystem = try CodeableConcept(from: _container, forKey: .coordinateSystem)
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.reverseComplement = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reverseComplement, auxiliaryKey: ._reverseComplement)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.startingSequence = try Reference(from: _container, forKey: .startingSequence)
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
		try startingSequence.encode(on: &_container, forKey: .startingSequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceExtracted else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinateSystem == _other.coordinateSystem
		    && end == _other.end
		    && reverseComplement == _other.reverseComplement
		    && start == _other.start
		    && startingSequence == _other.startingSequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateSystem)
		hasher.combine(end)
		hasher.combine(reverseComplement)
		hasher.combine(start)
		hasher.combine(startingSequence)
	}
}

/**
 A literal representation of a Molecular Sequence.
 */
open class MolecularSequenceLiteral: BackboneElement {
	
	/// The primary (linear) sequence, expressed as a literal string
	public var sequenceValue: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(sequenceValue: FHIRPrimitive<FHIRString>) {
		self.sequenceValue = sequenceValue
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceValue: FHIRPrimitive<FHIRString>
	) {
		self.init(sequenceValue: sequenceValue)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case sequenceValue; case _sequenceValue
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.sequenceValue = try FHIRPrimitive<FHIRString>(from: _container, forKey: .sequenceValue, auxiliaryKey: ._sequenceValue)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try sequenceValue.encode(on: &_container, forKey: .sequenceValue, auxiliaryKey: ._sequenceValue)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceLiteral else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return sequenceValue == _other.sequenceValue
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(sequenceValue)
	}
}

/**
 A Molecular Sequence that is represented as an ordered series of edits on a specified starting sequence.
 */
open class MolecularSequenceRelative: BackboneElement {
	
	/// The Molecular Sequence that serves as the starting sequence, on which edits will be applied
	public var startingSequence: Reference
	
	/// An edit (change) made to a sequence
	public var edit: [MolecularSequenceRelativeEdit]?
	
	/// Designated initializer taking all required properties
	public init(startingSequence: Reference) {
		self.startingSequence = startingSequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		edit: [MolecularSequenceRelativeEdit]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		startingSequence: Reference
	) {
		self.init(startingSequence: startingSequence)
		self.edit = edit
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case edit
		case startingSequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.edit = try [MolecularSequenceRelativeEdit](from: _container, forKeyIfPresent: .edit)
		self.startingSequence = try Reference(from: _container, forKey: .startingSequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try edit?.encode(on: &_container, forKey: .edit)
		try startingSequence.encode(on: &_container, forKey: .startingSequence)
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
		return edit == _other.edit
		    && startingSequence == _other.startingSequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(edit)
		hasher.combine(startingSequence)
	}
}

/**
 An edit (change) made to a sequence.
 */
open class MolecularSequenceRelativeEdit: BackboneElement {
	
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
	public var replacementSequence: Reference
	
	/// The sequence on the 'starting' sequence for the edit operation, defined by the specified interval, that will be
	/// replaced during the edit
	public var replacedSequence: Reference?
	
	/// Designated initializer taking all required properties
	public init(coordinateSystem: CodeableConcept, end: FHIRPrimitive<FHIRInteger>, replacementSequence: Reference, start: FHIRPrimitive<FHIRInteger>) {
		self.coordinateSystem = coordinateSystem
		self.end = end
		self.replacementSequence = replacementSequence
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
		replacedSequence: Reference? = nil,
		replacementSequence: Reference,
		start: FHIRPrimitive<FHIRInteger>
	) {
		self.init(coordinateSystem: coordinateSystem, end: end, replacementSequence: replacementSequence, start: start)
		self.editOrder = editOrder
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.replacedSequence = replacedSequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinateSystem
		case editOrder; case _editOrder
		case end; case _end
		case replacedSequence
		case replacementSequence
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateSystem = try CodeableConcept(from: _container, forKey: .coordinateSystem)
		self.editOrder = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .editOrder, auxiliaryKey: ._editOrder)
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .end, auxiliaryKey: ._end)
		self.replacedSequence = try Reference(from: _container, forKeyIfPresent: .replacedSequence)
		self.replacementSequence = try Reference(from: _container, forKey: .replacementSequence)
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
		try replacedSequence?.encode(on: &_container, forKey: .replacedSequence)
		try replacementSequence.encode(on: &_container, forKey: .replacementSequence)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
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
		return coordinateSystem == _other.coordinateSystem
		    && editOrder == _other.editOrder
		    && end == _other.end
		    && replacedSequence == _other.replacedSequence
		    && replacementSequence == _other.replacementSequence
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateSystem)
		hasher.combine(editOrder)
		hasher.combine(end)
		hasher.combine(replacedSequence)
		hasher.combine(replacementSequence)
		hasher.combine(start)
	}
}

/**
 A Molecular Sequence that is represented as a repeated sequence motif.
 */
open class MolecularSequenceRepeated: BackboneElement {
	
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
		guard let _other = _other as? MolecularSequenceRepeated else {
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
