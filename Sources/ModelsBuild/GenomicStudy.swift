//
//  GenomicStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/GenomicStudy)
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
 Genomic Study.
 
 A GenomicStudy is a set of analyses performed to analyze and generate genomic data.
 */
open class GenomicStudy: DomainResource {
	
	override open class var resourceType: ResourceType { return .genomicStudy }
	
	/// Identifiers for this genomic study
	public var identifier: [Identifier]?
	
	/// registered | available | cancelled | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// The type of the study (e.g., Familial variant segregation, Functional variation detection, or Gene expression
	/// profiling)
	public var type: [CodeableConcept]?
	
	/// The primary subject of the genomic study
	public var subject: Reference
	
	/// The healthcare event with which this genomics study is associated
	public var encounter: Reference?
	
	/// When the genomic study was started
	public var startDate: FHIRPrimitive<DateTime>?
	
	/// Event resources that the genomic study is based on
	public var basedOn: [Reference]?
	
	/// Healthcare professional who requested or referred the genomic study
	public var referrer: Reference?
	
	/// Healthcare professionals who interpreted the genomic study
	public var interpreter: [Reference]?
	
	/// Why the genomic study was performed
	public var reason: [CodeableReference]?
	
	/// The defined protocol that describes the study
	public var instantiatesCanonical: FHIRPrimitive<Canonical>?
	
	/// The URL pointing to an externally maintained protocol that describes the study
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// Comments related to the genomic study
	public var note: [Annotation]?
	
	/// Description of the genomic study
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Genomic Analysis Event
	public var analysis: [GenomicStudyAnalysis]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<FHIRString>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		analysis: [GenomicStudyAnalysis]? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: FHIRPrimitive<Canonical>? = nil,
		instantiatesUri: FHIRPrimitive<FHIRURI>? = nil,
		interpreter: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		reason: [CodeableReference]? = nil,
		referrer: Reference? = nil,
		startDate: FHIRPrimitive<DateTime>? = nil,
		status: FHIRPrimitive<FHIRString>,
		subject: Reference,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(status: status, subject: subject)
		self.analysis = analysis
		self.basedOn = basedOn
		self.contained = contained
		self.description_fhir = description_fhir
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.interpreter = interpreter
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.reason = reason
		self.referrer = referrer
		self.startDate = startDate
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case analysis
		case basedOn
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case interpreter
		case note
		case reason
		case referrer
		case startDate; case _startDate
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.analysis = try [GenomicStudyAnalysis](from: _container, forKeyIfPresent: .analysis)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.interpreter = try [Reference](from: _container, forKeyIfPresent: .interpreter)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.referrer = try Reference(from: _container, forKeyIfPresent: .referrer)
		self.startDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try analysis?.encode(on: &_container, forKey: .analysis)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try note?.encode(on: &_container, forKey: .note)
		try reason?.encode(on: &_container, forKey: .reason)
		try referrer?.encode(on: &_container, forKey: .referrer)
		try startDate?.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GenomicStudy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return analysis == _other.analysis
		    && basedOn == _other.basedOn
		    && description_fhir == _other.description_fhir
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && interpreter == _other.interpreter
		    && note == _other.note
		    && reason == _other.reason
		    && referrer == _other.referrer
		    && startDate == _other.startDate
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(analysis)
		hasher.combine(basedOn)
		hasher.combine(description_fhir)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(interpreter)
		hasher.combine(note)
		hasher.combine(reason)
		hasher.combine(referrer)
		hasher.combine(startDate)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Genomic Analysis Event.
 
 The details about a specific analysis that was performed in this GenomicStudy.
 */
open class GenomicStudyAnalysis: BackboneElement {
	
	/// Identifiers for the analysis event
	public var identifier: [Identifier]?
	
	/// Type of the methods used in the analysis (e.g., FISH, Karyotyping, MSI)
	public var methodType: [CodeableConcept]?
	
	/// Type of the genomic changes studied in the analysis (e.g., DNA, RNA, or AA change)
	public var changeType: [CodeableConcept]?
	
	/// Genome build that is used in this analysis
	public var genomeBuild: CodeableConcept?
	
	/// The defined protocol that describes the analysis
	public var instantiatesCanonical: FHIRPrimitive<Canonical>?
	
	/// The URL pointing to an externally maintained protocol that describes the analysis
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// Name of the analysis event (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// What the genomic analysis is about, when it is not about the subject of record
	public var focus: [Reference]?
	
	/// The specimen used in the analysis event
	public var specimen: [Reference]?
	
	/// The date of the analysis event
	public var date: FHIRPrimitive<DateTime>?
	
	/// Any notes capture with the analysis event
	public var note: [Annotation]?
	
	/// The protocol that was performed for the analysis event
	public var protocolPerformed: Reference?
	
	/// The genomic regions to be studied in the analysis (BED file)
	public var regionsStudied: [Reference]?
	
	/// Genomic regions actually called in the analysis event (BED file)
	public var regionsCalled: [Reference]?
	
	/// Inputs for the analysis event
	public var input: [GenomicStudyAnalysisInput]?
	
	/// Outputs for the analysis event
	public var output: [GenomicStudyAnalysisOutput]?
	
	/// Performer for the analysis event
	public var performer: [GenomicStudyAnalysisPerformer]?
	
	/// Devices used for the analysis (e.g., instruments, software), with settings and parameters
	public var device: [GenomicStudyAnalysisDevice]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		changeType: [CodeableConcept]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		device: [GenomicStudyAnalysisDevice]? = nil,
		`extension`: [Extension]? = nil,
		focus: [Reference]? = nil,
		genomeBuild: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		input: [GenomicStudyAnalysisInput]? = nil,
		instantiatesCanonical: FHIRPrimitive<Canonical>? = nil,
		instantiatesUri: FHIRPrimitive<FHIRURI>? = nil,
		methodType: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		output: [GenomicStudyAnalysisOutput]? = nil,
		performer: [GenomicStudyAnalysisPerformer]? = nil,
		protocolPerformed: Reference? = nil,
		regionsCalled: [Reference]? = nil,
		regionsStudied: [Reference]? = nil,
		specimen: [Reference]? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.changeType = changeType
		self.date = date
		self.device = device
		self.`extension` = `extension`
		self.focus = focus
		self.genomeBuild = genomeBuild
		self.id = id
		self.identifier = identifier
		self.input = input
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.methodType = methodType
		self.modifierExtension = modifierExtension
		self.note = note
		self.output = output
		self.performer = performer
		self.protocolPerformed = protocolPerformed
		self.regionsCalled = regionsCalled
		self.regionsStudied = regionsStudied
		self.specimen = specimen
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case changeType
		case date; case _date
		case device
		case focus
		case genomeBuild
		case identifier
		case input
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case methodType
		case note
		case output
		case performer
		case protocolPerformed
		case regionsCalled
		case regionsStudied
		case specimen
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.changeType = try [CodeableConcept](from: _container, forKeyIfPresent: .changeType)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.device = try [GenomicStudyAnalysisDevice](from: _container, forKeyIfPresent: .device)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.genomeBuild = try CodeableConcept(from: _container, forKeyIfPresent: .genomeBuild)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.input = try [GenomicStudyAnalysisInput](from: _container, forKeyIfPresent: .input)
		self.instantiatesCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.methodType = try [CodeableConcept](from: _container, forKeyIfPresent: .methodType)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.output = try [GenomicStudyAnalysisOutput](from: _container, forKeyIfPresent: .output)
		self.performer = try [GenomicStudyAnalysisPerformer](from: _container, forKeyIfPresent: .performer)
		self.protocolPerformed = try Reference(from: _container, forKeyIfPresent: .protocolPerformed)
		self.regionsCalled = try [Reference](from: _container, forKeyIfPresent: .regionsCalled)
		self.regionsStudied = try [Reference](from: _container, forKeyIfPresent: .regionsStudied)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try changeType?.encode(on: &_container, forKey: .changeType)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try device?.encode(on: &_container, forKey: .device)
		try focus?.encode(on: &_container, forKey: .focus)
		try genomeBuild?.encode(on: &_container, forKey: .genomeBuild)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try input?.encode(on: &_container, forKey: .input)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try methodType?.encode(on: &_container, forKey: .methodType)
		try note?.encode(on: &_container, forKey: .note)
		try output?.encode(on: &_container, forKey: .output)
		try performer?.encode(on: &_container, forKey: .performer)
		try protocolPerformed?.encode(on: &_container, forKey: .protocolPerformed)
		try regionsCalled?.encode(on: &_container, forKey: .regionsCalled)
		try regionsStudied?.encode(on: &_container, forKey: .regionsStudied)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GenomicStudyAnalysis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return changeType == _other.changeType
		    && date == _other.date
		    && device == _other.device
		    && focus == _other.focus
		    && genomeBuild == _other.genomeBuild
		    && identifier == _other.identifier
		    && input == _other.input
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && methodType == _other.methodType
		    && note == _other.note
		    && output == _other.output
		    && performer == _other.performer
		    && protocolPerformed == _other.protocolPerformed
		    && regionsCalled == _other.regionsCalled
		    && regionsStudied == _other.regionsStudied
		    && specimen == _other.specimen
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(changeType)
		hasher.combine(date)
		hasher.combine(device)
		hasher.combine(focus)
		hasher.combine(genomeBuild)
		hasher.combine(identifier)
		hasher.combine(input)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(methodType)
		hasher.combine(note)
		hasher.combine(output)
		hasher.combine(performer)
		hasher.combine(protocolPerformed)
		hasher.combine(regionsCalled)
		hasher.combine(regionsStudied)
		hasher.combine(specimen)
		hasher.combine(title)
	}
}

/**
 Devices used for the analysis (e.g., instruments, software), with settings and parameters.
 */
open class GenomicStudyAnalysisDevice: BackboneElement {
	
	/// Device used for the analysis
	public var device: Reference?
	
	/// Specific function for the device used for the analysis
	public var function: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		device: Reference? = nil,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.device = device
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case device
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try device?.encode(on: &_container, forKey: .device)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GenomicStudyAnalysisDevice else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return device == _other.device
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(device)
		hasher.combine(function)
	}
}

/**
 Inputs for the analysis event.
 */
open class GenomicStudyAnalysisInput: BackboneElement {
	
	/// All possible types for "generatedBy[x]"
	public enum GeneratedByX: Hashable {
		case identifier(Identifier)
		case reference(Reference)
	}
	
	/// File containing input data
	public var file: Reference?
	
	/// Type of input data (e.g., BAM, CRAM, or FASTA)
	public var type: CodeableConcept?
	
	/// The analysis event or other GenomicStudy that generated this input file
	/// One of `generatedBy[x]`
	public var generatedBy: GeneratedByX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		file: Reference? = nil,
		generatedBy: GeneratedByX? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.file = file
		self.generatedBy = generatedBy
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case file
		case generatedByIdentifier
		case generatedByReference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.file = try Reference(from: _container, forKeyIfPresent: .file)
		var _t_generatedBy: GeneratedByX? = nil
		if let generatedByIdentifier = try Identifier(from: _container, forKeyIfPresent: .generatedByIdentifier) {
			if _t_generatedBy != nil {
				throw DecodingError.dataCorruptedError(forKey: .generatedByIdentifier, in: _container, debugDescription: "More than one value provided for \"generatedBy\"")
			}
			_t_generatedBy = .identifier(generatedByIdentifier)
		}
		if let generatedByReference = try Reference(from: _container, forKeyIfPresent: .generatedByReference) {
			if _t_generatedBy != nil {
				throw DecodingError.dataCorruptedError(forKey: .generatedByReference, in: _container, debugDescription: "More than one value provided for \"generatedBy\"")
			}
			_t_generatedBy = .reference(generatedByReference)
		}
		self.generatedBy = _t_generatedBy
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try file?.encode(on: &_container, forKey: .file)
		if let _enum = generatedBy {
			switch _enum {
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .generatedByIdentifier)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .generatedByReference)
			}
		}
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GenomicStudyAnalysisInput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return file == _other.file
		    && generatedBy == _other.generatedBy
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(file)
		hasher.combine(generatedBy)
		hasher.combine(type)
	}
}

/**
 Outputs for the analysis event.
 */
open class GenomicStudyAnalysisOutput: BackboneElement {
	
	/// File containing output data
	public var file: Reference?
	
	/// Type of output data (e.g., VCF, MAF, or BAM)
	public var type: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		file: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.file = file
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case file
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.file = try Reference(from: _container, forKeyIfPresent: .file)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try file?.encode(on: &_container, forKey: .file)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GenomicStudyAnalysisOutput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return file == _other.file
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(file)
		hasher.combine(type)
	}
}

/**
 Performer for the analysis event.
 */
open class GenomicStudyAnalysisPerformer: BackboneElement {
	
	/// The organization, healthcare professional, or others who participated in performing this analysis
	public var actor: Reference?
	
	/// Role of the actor for this analysis
	public var role: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil
	) {
		self.init()
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GenomicStudyAnalysisPerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(role)
	}
}
