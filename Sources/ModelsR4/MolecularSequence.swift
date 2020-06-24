//
//  MolecularSequence.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MolecularSequence)
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
 Information about a biological sequence.
 
 Raw data describing a biological sequence.
 */
open class MolecularSequence: DomainResource {
	
	override open class var resourceType: ResourceType { return .molecularSequence }
	
	/// Unique ID for this particular sequence. This is a FHIR-defined id
	public var identifier: [Identifier]?
	
	/// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
	public var type: FHIRPrimitive<SequenceType>?
	
	/// Base number of coordinate system (0 for 0-based numbering or coordinates, inclusive start, exclusive end, 1 for
	/// 1-based numbering, inclusive start, inclusive end)
	public var coordinateSystem: FHIRPrimitive<FHIRInteger>
	
	/// Who and/or what this is about
	public var patient: Reference?
	
	/// Specimen used for sequencing
	public var specimen: Reference?
	
	/// The method for sequencing
	public var device: Reference?
	
	/// Who should be responsible for test result
	public var performer: Reference?
	
	/// The number of copies of the sequence of interest.  (RNASeq)
	public var quantity: Quantity?
	
	/// A sequence used as reference
	public var referenceSeq: MolecularSequenceReferenceSeq?
	
	/// Variant in sequence
	public var variant: [MolecularSequenceVariant]?
	
	/// Sequence that was observed
	public var observedSeq: FHIRPrimitive<FHIRString>?
	
	/// An set of value as quality of sequence
	public var quality: [MolecularSequenceQuality]?
	
	/// Average number of reads representing a given nucleotide in the reconstructed sequence
	public var readCoverage: FHIRPrimitive<FHIRInteger>?
	
	/// External repository which contains detailed report related with observedSeq in this resource
	public var repository: [MolecularSequenceRepository]?
	
	/// Pointer to next atomic sequence
	public var pointer: [Reference]?
	
	/// Structural variant
	public var structureVariant: [MolecularSequenceStructureVariant]?
	
	/// Designated initializer taking all required properties
	public init(coordinateSystem: FHIRPrimitive<FHIRInteger>) {
		self.coordinateSystem = coordinateSystem
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							coordinateSystem: FHIRPrimitive<FHIRInteger>,
							device: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							observedSeq: FHIRPrimitive<FHIRString>? = nil,
							patient: Reference? = nil,
							performer: Reference? = nil,
							pointer: [Reference]? = nil,
							quality: [MolecularSequenceQuality]? = nil,
							quantity: Quantity? = nil,
							readCoverage: FHIRPrimitive<FHIRInteger>? = nil,
							referenceSeq: MolecularSequenceReferenceSeq? = nil,
							repository: [MolecularSequenceRepository]? = nil,
							specimen: Reference? = nil,
							structureVariant: [MolecularSequenceStructureVariant]? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<SequenceType>? = nil,
							variant: [MolecularSequenceVariant]? = nil)
	{
		self.init(coordinateSystem: coordinateSystem)
		self.contained = contained
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.observedSeq = observedSeq
		self.patient = patient
		self.performer = performer
		self.pointer = pointer
		self.quality = quality
		self.quantity = quantity
		self.readCoverage = readCoverage
		self.referenceSeq = referenceSeq
		self.repository = repository
		self.specimen = specimen
		self.structureVariant = structureVariant
		self.text = text
		self.type = type
		self.variant = variant
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinateSystem; case _coordinateSystem
		case device
		case identifier
		case observedSeq; case _observedSeq
		case patient
		case performer
		case pointer
		case quality
		case quantity
		case readCoverage; case _readCoverage
		case referenceSeq
		case repository
		case specimen
		case structureVariant
		case type; case _type
		case variant
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinateSystem = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .coordinateSystem, auxiliaryKey: ._coordinateSystem)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.observedSeq = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .observedSeq, auxiliaryKey: ._observedSeq)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.pointer = try [Reference](from: _container, forKeyIfPresent: .pointer)
		self.quality = try [MolecularSequenceQuality](from: _container, forKeyIfPresent: .quality)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.readCoverage = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .readCoverage, auxiliaryKey: ._readCoverage)
		self.referenceSeq = try MolecularSequenceReferenceSeq(from: _container, forKeyIfPresent: .referenceSeq)
		self.repository = try [MolecularSequenceRepository](from: _container, forKeyIfPresent: .repository)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.structureVariant = try [MolecularSequenceStructureVariant](from: _container, forKeyIfPresent: .structureVariant)
		self.type = try FHIRPrimitive<SequenceType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.variant = try [MolecularSequenceVariant](from: _container, forKeyIfPresent: .variant)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinateSystem.encode(on: &_container, forKey: .coordinateSystem, auxiliaryKey: ._coordinateSystem)
		try device?.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try observedSeq?.encode(on: &_container, forKey: .observedSeq, auxiliaryKey: ._observedSeq)
		try patient?.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try pointer?.encode(on: &_container, forKey: .pointer)
		try quality?.encode(on: &_container, forKey: .quality)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try readCoverage?.encode(on: &_container, forKey: .readCoverage, auxiliaryKey: ._readCoverage)
		try referenceSeq?.encode(on: &_container, forKey: .referenceSeq)
		try repository?.encode(on: &_container, forKey: .repository)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try structureVariant?.encode(on: &_container, forKey: .structureVariant)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try variant?.encode(on: &_container, forKey: .variant)
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
		return coordinateSystem == _other.coordinateSystem
		    && device == _other.device
		    && identifier == _other.identifier
		    && observedSeq == _other.observedSeq
		    && patient == _other.patient
		    && performer == _other.performer
		    && pointer == _other.pointer
		    && quality == _other.quality
		    && quantity == _other.quantity
		    && readCoverage == _other.readCoverage
		    && referenceSeq == _other.referenceSeq
		    && repository == _other.repository
		    && specimen == _other.specimen
		    && structureVariant == _other.structureVariant
		    && type == _other.type
		    && variant == _other.variant
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinateSystem)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(observedSeq)
		hasher.combine(patient)
		hasher.combine(performer)
		hasher.combine(pointer)
		hasher.combine(quality)
		hasher.combine(quantity)
		hasher.combine(readCoverage)
		hasher.combine(referenceSeq)
		hasher.combine(repository)
		hasher.combine(specimen)
		hasher.combine(structureVariant)
		hasher.combine(type)
		hasher.combine(variant)
	}
}

/**
 An set of value as quality of sequence.
 
 An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred
 quality score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
 */
open class MolecularSequenceQuality: BackboneElement {
	
	/// INDEL / SNP / Undefined variant.
	public var type: FHIRPrimitive<QualityType>
	
	/// Standard sequence for comparison
	public var standardSequence: CodeableConcept?
	
	/// Start position of the sequence
	public var start: FHIRPrimitive<FHIRInteger>?
	
	/// End position of the sequence
	public var end: FHIRPrimitive<FHIRInteger>?
	
	/// Quality score for the comparison
	public var score: Quantity?
	
	/// Method to get quality
	public var method: CodeableConcept?
	
	/// True positives from the perspective of the truth data
	public var truthTP: FHIRPrimitive<FHIRDecimal>?
	
	/// True positives from the perspective of the query data
	public var queryTP: FHIRPrimitive<FHIRDecimal>?
	
	/// False negatives
	public var truthFN: FHIRPrimitive<FHIRDecimal>?
	
	/// False positives
	public var queryFP: FHIRPrimitive<FHIRDecimal>?
	
	/// False positives where the non-REF alleles in the Truth and Query Call Sets match
	public var gtFP: FHIRPrimitive<FHIRDecimal>?
	
	/// Precision of comparison
	public var precision: FHIRPrimitive<FHIRDecimal>?
	
	/// Recall of comparison
	public var recall: FHIRPrimitive<FHIRDecimal>?
	
	/// F-score
	public var fScore: FHIRPrimitive<FHIRDecimal>?
	
	/// Receiver Operator Characteristic (ROC) Curve
	public var roc: MolecularSequenceQualityRoc?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<QualityType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							end: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							fScore: FHIRPrimitive<FHIRDecimal>? = nil,
							gtFP: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							precision: FHIRPrimitive<FHIRDecimal>? = nil,
							queryFP: FHIRPrimitive<FHIRDecimal>? = nil,
							queryTP: FHIRPrimitive<FHIRDecimal>? = nil,
							recall: FHIRPrimitive<FHIRDecimal>? = nil,
							roc: MolecularSequenceQualityRoc? = nil,
							score: Quantity? = nil,
							standardSequence: CodeableConcept? = nil,
							start: FHIRPrimitive<FHIRInteger>? = nil,
							truthFN: FHIRPrimitive<FHIRDecimal>? = nil,
							truthTP: FHIRPrimitive<FHIRDecimal>? = nil,
							type: FHIRPrimitive<QualityType>)
	{
		self.init(type: type)
		self.end = end
		self.`extension` = `extension`
		self.fScore = fScore
		self.gtFP = gtFP
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.precision = precision
		self.queryFP = queryFP
		self.queryTP = queryTP
		self.recall = recall
		self.roc = roc
		self.score = score
		self.standardSequence = standardSequence
		self.start = start
		self.truthFN = truthFN
		self.truthTP = truthTP
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case end; case _end
		case fScore; case _fScore
		case gtFP; case _gtFP
		case method
		case precision; case _precision
		case queryFP; case _queryFP
		case queryTP; case _queryTP
		case recall; case _recall
		case roc
		case score
		case standardSequence
		case start; case _start
		case truthFN; case _truthFN
		case truthTP; case _truthTP
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.fScore = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .fScore, auxiliaryKey: ._fScore)
		self.gtFP = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .gtFP, auxiliaryKey: ._gtFP)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.precision = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .precision, auxiliaryKey: ._precision)
		self.queryFP = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .queryFP, auxiliaryKey: ._queryFP)
		self.queryTP = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .queryTP, auxiliaryKey: ._queryTP)
		self.recall = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .recall, auxiliaryKey: ._recall)
		self.roc = try MolecularSequenceQualityRoc(from: _container, forKeyIfPresent: .roc)
		self.score = try Quantity(from: _container, forKeyIfPresent: .score)
		self.standardSequence = try CodeableConcept(from: _container, forKeyIfPresent: .standardSequence)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.truthFN = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .truthFN, auxiliaryKey: ._truthFN)
		self.truthTP = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .truthTP, auxiliaryKey: ._truthTP)
		self.type = try FHIRPrimitive<QualityType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try fScore?.encode(on: &_container, forKey: .fScore, auxiliaryKey: ._fScore)
		try gtFP?.encode(on: &_container, forKey: .gtFP, auxiliaryKey: ._gtFP)
		try method?.encode(on: &_container, forKey: .method)
		try precision?.encode(on: &_container, forKey: .precision, auxiliaryKey: ._precision)
		try queryFP?.encode(on: &_container, forKey: .queryFP, auxiliaryKey: ._queryFP)
		try queryTP?.encode(on: &_container, forKey: .queryTP, auxiliaryKey: ._queryTP)
		try recall?.encode(on: &_container, forKey: .recall, auxiliaryKey: ._recall)
		try roc?.encode(on: &_container, forKey: .roc)
		try score?.encode(on: &_container, forKey: .score)
		try standardSequence?.encode(on: &_container, forKey: .standardSequence)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try truthFN?.encode(on: &_container, forKey: .truthFN, auxiliaryKey: ._truthFN)
		try truthTP?.encode(on: &_container, forKey: .truthTP, auxiliaryKey: ._truthTP)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceQuality else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return end == _other.end
		    && fScore == _other.fScore
		    && gtFP == _other.gtFP
		    && method == _other.method
		    && precision == _other.precision
		    && queryFP == _other.queryFP
		    && queryTP == _other.queryTP
		    && recall == _other.recall
		    && roc == _other.roc
		    && score == _other.score
		    && standardSequence == _other.standardSequence
		    && start == _other.start
		    && truthFN == _other.truthFN
		    && truthTP == _other.truthTP
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(end)
		hasher.combine(fScore)
		hasher.combine(gtFP)
		hasher.combine(method)
		hasher.combine(precision)
		hasher.combine(queryFP)
		hasher.combine(queryTP)
		hasher.combine(recall)
		hasher.combine(roc)
		hasher.combine(score)
		hasher.combine(standardSequence)
		hasher.combine(start)
		hasher.combine(truthFN)
		hasher.combine(truthTP)
		hasher.combine(type)
	}
}

/**
 Receiver Operator Characteristic (ROC) Curve.
 
 Receiver Operator Characteristic (ROC) Curve  to give sensitivity/specificity tradeoff.
 */
open class MolecularSequenceQualityRoc: BackboneElement {
	
	/// Genotype quality score
	public var score: [FHIRPrimitive<FHIRInteger>]?
	
	/// Roc score true positive numbers
	public var numTP: [FHIRPrimitive<FHIRInteger>]?
	
	/// Roc score false positive numbers
	public var numFP: [FHIRPrimitive<FHIRInteger>]?
	
	/// Roc score false negative numbers
	public var numFN: [FHIRPrimitive<FHIRInteger>]?
	
	/// Precision of the GQ score
	public var precision: [FHIRPrimitive<FHIRDecimal>]?
	
	/// Sensitivity of the GQ score
	public var sensitivity: [FHIRPrimitive<FHIRDecimal>]?
	
	/// FScore of the GQ score
	public var fMeasure: [FHIRPrimitive<FHIRDecimal>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							fMeasure: [FHIRPrimitive<FHIRDecimal>]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							numFN: [FHIRPrimitive<FHIRInteger>]? = nil,
							numFP: [FHIRPrimitive<FHIRInteger>]? = nil,
							numTP: [FHIRPrimitive<FHIRInteger>]? = nil,
							precision: [FHIRPrimitive<FHIRDecimal>]? = nil,
							score: [FHIRPrimitive<FHIRInteger>]? = nil,
							sensitivity: [FHIRPrimitive<FHIRDecimal>]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.fMeasure = fMeasure
		self.id = id
		self.modifierExtension = modifierExtension
		self.numFN = numFN
		self.numFP = numFP
		self.numTP = numTP
		self.precision = precision
		self.score = score
		self.sensitivity = sensitivity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case fMeasure; case _fMeasure
		case numFN; case _numFN
		case numFP; case _numFP
		case numTP; case _numTP
		case precision; case _precision
		case score; case _score
		case sensitivity; case _sensitivity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.fMeasure = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKeyIfPresent: .fMeasure, auxiliaryKey: ._fMeasure)
		self.numFN = try [FHIRPrimitive<FHIRInteger>](from: _container, forKeyIfPresent: .numFN, auxiliaryKey: ._numFN)
		self.numFP = try [FHIRPrimitive<FHIRInteger>](from: _container, forKeyIfPresent: .numFP, auxiliaryKey: ._numFP)
		self.numTP = try [FHIRPrimitive<FHIRInteger>](from: _container, forKeyIfPresent: .numTP, auxiliaryKey: ._numTP)
		self.precision = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKeyIfPresent: .precision, auxiliaryKey: ._precision)
		self.score = try [FHIRPrimitive<FHIRInteger>](from: _container, forKeyIfPresent: .score, auxiliaryKey: ._score)
		self.sensitivity = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKeyIfPresent: .sensitivity, auxiliaryKey: ._sensitivity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try fMeasure?.encode(on: &_container, forKey: .fMeasure, auxiliaryKey: ._fMeasure)
		try numFN?.encode(on: &_container, forKey: .numFN, auxiliaryKey: ._numFN)
		try numFP?.encode(on: &_container, forKey: .numFP, auxiliaryKey: ._numFP)
		try numTP?.encode(on: &_container, forKey: .numTP, auxiliaryKey: ._numTP)
		try precision?.encode(on: &_container, forKey: .precision, auxiliaryKey: ._precision)
		try score?.encode(on: &_container, forKey: .score, auxiliaryKey: ._score)
		try sensitivity?.encode(on: &_container, forKey: .sensitivity, auxiliaryKey: ._sensitivity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceQualityRoc else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return fMeasure == _other.fMeasure
		    && numFN == _other.numFN
		    && numFP == _other.numFP
		    && numTP == _other.numTP
		    && precision == _other.precision
		    && score == _other.score
		    && sensitivity == _other.sensitivity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(fMeasure)
		hasher.combine(numFN)
		hasher.combine(numFP)
		hasher.combine(numTP)
		hasher.combine(precision)
		hasher.combine(score)
		hasher.combine(sensitivity)
	}
}

/**
 A sequence used as reference.
 
 A sequence that is used as a reference to describe variants that are present in a sequence analyzed.
 */
open class MolecularSequenceReferenceSeq: BackboneElement {
	
	/// Chromosome containing genetic finding
	public var chromosome: CodeableConcept?
	
	/// The Genome Build used for reference, following GRCh build versions e.g. 'GRCh 37'
	public var genomeBuild: FHIRPrimitive<FHIRString>?
	
	/// A relative reference to a DNA strand based on gene orientation. The strand that contains the open reading frame
	/// of the gene is the "sense" strand, and the opposite complementary strand is the "antisense" strand.
	public var orientation: FHIRPrimitive<OrientationType>?
	
	/// Reference identifier
	public var referenceSeqId: CodeableConcept?
	
	/// A pointer to another MolecularSequence entity as reference sequence
	public var referenceSeqPointer: Reference?
	
	/// A string to represent reference sequence
	public var referenceSeqString: FHIRPrimitive<FHIRString>?
	
	/// An absolute reference to a strand. The Watson strand is the strand whose 5'-end is on the short arm of the
	/// chromosome, and the Crick strand as the one whose 5'-end is on the long arm.
	public var strand: FHIRPrimitive<StrandType>?
	
	/// Start position of the window on the  reference sequence
	public var windowStart: FHIRPrimitive<FHIRInteger>?
	
	/// End position of the window on the reference sequence
	public var windowEnd: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							chromosome: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							genomeBuild: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							orientation: FHIRPrimitive<OrientationType>? = nil,
							referenceSeqId: CodeableConcept? = nil,
							referenceSeqPointer: Reference? = nil,
							referenceSeqString: FHIRPrimitive<FHIRString>? = nil,
							strand: FHIRPrimitive<StrandType>? = nil,
							windowEnd: FHIRPrimitive<FHIRInteger>? = nil,
							windowStart: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
		self.chromosome = chromosome
		self.`extension` = `extension`
		self.genomeBuild = genomeBuild
		self.id = id
		self.modifierExtension = modifierExtension
		self.orientation = orientation
		self.referenceSeqId = referenceSeqId
		self.referenceSeqPointer = referenceSeqPointer
		self.referenceSeqString = referenceSeqString
		self.strand = strand
		self.windowEnd = windowEnd
		self.windowStart = windowStart
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chromosome
		case genomeBuild; case _genomeBuild
		case orientation; case _orientation
		case referenceSeqId
		case referenceSeqPointer
		case referenceSeqString; case _referenceSeqString
		case strand; case _strand
		case windowEnd; case _windowEnd
		case windowStart; case _windowStart
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.chromosome = try CodeableConcept(from: _container, forKeyIfPresent: .chromosome)
		self.genomeBuild = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .genomeBuild, auxiliaryKey: ._genomeBuild)
		self.orientation = try FHIRPrimitive<OrientationType>(from: _container, forKeyIfPresent: .orientation, auxiliaryKey: ._orientation)
		self.referenceSeqId = try CodeableConcept(from: _container, forKeyIfPresent: .referenceSeqId)
		self.referenceSeqPointer = try Reference(from: _container, forKeyIfPresent: .referenceSeqPointer)
		self.referenceSeqString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .referenceSeqString, auxiliaryKey: ._referenceSeqString)
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
		try genomeBuild?.encode(on: &_container, forKey: .genomeBuild, auxiliaryKey: ._genomeBuild)
		try orientation?.encode(on: &_container, forKey: .orientation, auxiliaryKey: ._orientation)
		try referenceSeqId?.encode(on: &_container, forKey: .referenceSeqId)
		try referenceSeqPointer?.encode(on: &_container, forKey: .referenceSeqPointer)
		try referenceSeqString?.encode(on: &_container, forKey: .referenceSeqString, auxiliaryKey: ._referenceSeqString)
		try strand?.encode(on: &_container, forKey: .strand, auxiliaryKey: ._strand)
		try windowEnd?.encode(on: &_container, forKey: .windowEnd, auxiliaryKey: ._windowEnd)
		try windowStart?.encode(on: &_container, forKey: .windowStart, auxiliaryKey: ._windowStart)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceReferenceSeq else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return chromosome == _other.chromosome
		    && genomeBuild == _other.genomeBuild
		    && orientation == _other.orientation
		    && referenceSeqId == _other.referenceSeqId
		    && referenceSeqPointer == _other.referenceSeqPointer
		    && referenceSeqString == _other.referenceSeqString
		    && strand == _other.strand
		    && windowEnd == _other.windowEnd
		    && windowStart == _other.windowStart
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chromosome)
		hasher.combine(genomeBuild)
		hasher.combine(orientation)
		hasher.combine(referenceSeqId)
		hasher.combine(referenceSeqPointer)
		hasher.combine(referenceSeqString)
		hasher.combine(strand)
		hasher.combine(windowEnd)
		hasher.combine(windowStart)
	}
}

/**
 External repository which contains detailed report related with observedSeq in this resource.
 
 Configurations of the external repository. The repository shall store target's observedSeq or records related with
 target's observedSeq.
 */
open class MolecularSequenceRepository: BackboneElement {
	
	/// Click and see / RESTful API / Need login to see / RESTful API with authentication / Other ways to see resource.
	public var type: FHIRPrimitive<RepositoryType>
	
	/// URI of the repository
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Repository's name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Id of the dataset that used to call for dataset in repository
	public var datasetId: FHIRPrimitive<FHIRString>?
	
	/// Id of the variantset that used to call for variantset in repository
	public var variantsetId: FHIRPrimitive<FHIRString>?
	
	/// Id of the read
	public var readsetId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<RepositoryType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							datasetId: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							readsetId: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<RepositoryType>,
							url: FHIRPrimitive<FHIRURI>? = nil,
							variantsetId: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(type: type)
		self.datasetId = datasetId
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.readsetId = readsetId
		self.url = url
		self.variantsetId = variantsetId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case datasetId; case _datasetId
		case name; case _name
		case readsetId; case _readsetId
		case type; case _type
		case url; case _url
		case variantsetId; case _variantsetId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.datasetId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .datasetId, auxiliaryKey: ._datasetId)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.readsetId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .readsetId, auxiliaryKey: ._readsetId)
		self.type = try FHIRPrimitive<RepositoryType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.variantsetId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .variantsetId, auxiliaryKey: ._variantsetId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try datasetId?.encode(on: &_container, forKey: .datasetId, auxiliaryKey: ._datasetId)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try readsetId?.encode(on: &_container, forKey: .readsetId, auxiliaryKey: ._readsetId)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try variantsetId?.encode(on: &_container, forKey: .variantsetId, auxiliaryKey: ._variantsetId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceRepository else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return datasetId == _other.datasetId
		    && name == _other.name
		    && readsetId == _other.readsetId
		    && type == _other.type
		    && url == _other.url
		    && variantsetId == _other.variantsetId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(datasetId)
		hasher.combine(name)
		hasher.combine(readsetId)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(variantsetId)
	}
}

/**
 Structural variant.
 
 Information about chromosome structure variation.
 */
open class MolecularSequenceStructureVariant: BackboneElement {
	
	/// Structural variant change type
	public var variantType: CodeableConcept?
	
	/// Does the structural variant have base pair resolution breakpoints?
	public var exact: FHIRPrimitive<FHIRBool>?
	
	/// Structural variant length
	public var length: FHIRPrimitive<FHIRInteger>?
	
	/// Structural variant outer
	public var outer: MolecularSequenceStructureVariantOuter?
	
	/// Structural variant inner
	public var inner: MolecularSequenceStructureVariantInner?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							exact: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							inner: MolecularSequenceStructureVariantInner? = nil,
							length: FHIRPrimitive<FHIRInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							outer: MolecularSequenceStructureVariantOuter? = nil,
							variantType: CodeableConcept? = nil)
	{
		self.init()
		self.exact = exact
		self.`extension` = `extension`
		self.id = id
		self.inner = inner
		self.length = length
		self.modifierExtension = modifierExtension
		self.outer = outer
		self.variantType = variantType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exact; case _exact
		case inner
		case length; case _length
		case outer
		case variantType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.exact = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exact, auxiliaryKey: ._exact)
		self.inner = try MolecularSequenceStructureVariantInner(from: _container, forKeyIfPresent: .inner)
		self.length = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .length, auxiliaryKey: ._length)
		self.outer = try MolecularSequenceStructureVariantOuter(from: _container, forKeyIfPresent: .outer)
		self.variantType = try CodeableConcept(from: _container, forKeyIfPresent: .variantType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try exact?.encode(on: &_container, forKey: .exact, auxiliaryKey: ._exact)
		try inner?.encode(on: &_container, forKey: .inner)
		try length?.encode(on: &_container, forKey: .length, auxiliaryKey: ._length)
		try outer?.encode(on: &_container, forKey: .outer)
		try variantType?.encode(on: &_container, forKey: .variantType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceStructureVariant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return exact == _other.exact
		    && inner == _other.inner
		    && length == _other.length
		    && outer == _other.outer
		    && variantType == _other.variantType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(exact)
		hasher.combine(inner)
		hasher.combine(length)
		hasher.combine(outer)
		hasher.combine(variantType)
	}
}

/**
 Structural variant inner.
 */
open class MolecularSequenceStructureVariantInner: BackboneElement {
	
	/// Structural variant inner start
	public var start: FHIRPrimitive<FHIRInteger>?
	
	/// Structural variant inner end
	public var end: FHIRPrimitive<FHIRInteger>?
	
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
							start: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.start = start
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case end; case _end
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceStructureVariantInner else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return end == _other.end
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(end)
		hasher.combine(start)
	}
}

/**
 Structural variant outer.
 */
open class MolecularSequenceStructureVariantOuter: BackboneElement {
	
	/// Structural variant outer start
	public var start: FHIRPrimitive<FHIRInteger>?
	
	/// Structural variant outer end
	public var end: FHIRPrimitive<FHIRInteger>?
	
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
							start: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init()
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.start = start
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case end; case _end
		case start; case _start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceStructureVariantOuter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return end == _other.end
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(end)
		hasher.combine(start)
	}
}

/**
 Variant in sequence.
 
 The definition of variant here originates from Sequence ontology
 ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This element can represent amino
 acid or nucleic sequence change(including insertion,deletion,SNP,etc.)  It can represent some complex mutation or
 segment variation with the assist of CIGAR string.
 */
open class MolecularSequenceVariant: BackboneElement {
	
	/// Start position of the variant on the  reference sequence
	public var start: FHIRPrimitive<FHIRInteger>?
	
	/// End position of the variant on the reference sequence
	public var end: FHIRPrimitive<FHIRInteger>?
	
	/// Allele that was observed
	public var observedAllele: FHIRPrimitive<FHIRString>?
	
	/// Allele in the reference sequence
	public var referenceAllele: FHIRPrimitive<FHIRString>?
	
	/// Extended CIGAR string for aligning the sequence with reference bases
	public var cigar: FHIRPrimitive<FHIRString>?
	
	/// Pointer to observed variant information
	public var variantPointer: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							cigar: FHIRPrimitive<FHIRString>? = nil,
							end: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							observedAllele: FHIRPrimitive<FHIRString>? = nil,
							referenceAllele: FHIRPrimitive<FHIRString>? = nil,
							start: FHIRPrimitive<FHIRInteger>? = nil,
							variantPointer: Reference? = nil)
	{
		self.init()
		self.cigar = cigar
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.observedAllele = observedAllele
		self.referenceAllele = referenceAllele
		self.start = start
		self.variantPointer = variantPointer
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cigar; case _cigar
		case end; case _end
		case observedAllele; case _observedAllele
		case referenceAllele; case _referenceAllele
		case start; case _start
		case variantPointer
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cigar = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .cigar, auxiliaryKey: ._cigar)
		self.end = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.observedAllele = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .observedAllele, auxiliaryKey: ._observedAllele)
		self.referenceAllele = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .referenceAllele, auxiliaryKey: ._referenceAllele)
		self.start = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.variantPointer = try Reference(from: _container, forKeyIfPresent: .variantPointer)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cigar?.encode(on: &_container, forKey: .cigar, auxiliaryKey: ._cigar)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try observedAllele?.encode(on: &_container, forKey: .observedAllele, auxiliaryKey: ._observedAllele)
		try referenceAllele?.encode(on: &_container, forKey: .referenceAllele, auxiliaryKey: ._referenceAllele)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try variantPointer?.encode(on: &_container, forKey: .variantPointer)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MolecularSequenceVariant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cigar == _other.cigar
		    && end == _other.end
		    && observedAllele == _other.observedAllele
		    && referenceAllele == _other.referenceAllele
		    && start == _other.start
		    && variantPointer == _other.variantPointer
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cigar)
		hasher.combine(end)
		hasher.combine(observedAllele)
		hasher.combine(referenceAllele)
		hasher.combine(start)
		hasher.combine(variantPointer)
	}
}
