//
//  GenomicStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/GenomicStudy)
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
 Genomic Study.
 
 A GenomicStudy is a set of analyses performed to analyze and generate genomic data.
 */
public struct GenomicStudy: DomainResource {
	
	public static let resourceType: ResourceType = .genomicStudy
	
	/// Genomic Analysis Event
	public var analysis: [GenomicStudyAnalysis]?
	
	/// Event resources that the genomic study is based on
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Description of the genomic study
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The healthcare event with which this genomics study is associated
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers for this genomic study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The defined protocol that describes the study
	public var instantiatesCanonical: FHIRPrimitive<Canonical>?
	
	/// The URL pointing to an externally maintained protocol that describes the study
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// Healthcare professionals who interpreted the genomic study
	public var interpreter: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments related to the genomic study
	public var note: [Annotation]?
	
	/// Why the genomic study was performed
	public var reason: [CodeableReference]?
	
	/// Healthcare professional who requested or referred the genomic study
	public var referrer: Reference?
	
	/// When the genomic study was started
	public var startDate: FHIRPrimitive<DateTime>?
	
	/// registered | available | cancelled | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// The primary subject of the genomic study
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of the study (e.g., Familial variant segregation, Functional variation detection, or Gene expression
	/// profiling)
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case analysis
		case basedOn
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case interpreter
		case language; case _language
		case meta
		case modifierExtension
		case note
		case reason
		case referrer
		case startDate; case _startDate
		case status; case _status
		case subject
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.analysis = try [GenomicStudyAnalysis](from: _container, forKeyIfPresent: .analysis)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiatesCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.interpreter = try [Reference](from: _container, forKeyIfPresent: .interpreter)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.referrer = try Reference(from: _container, forKeyIfPresent: .referrer)
		self.startDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try analysis?.encode(on: &_container, forKey: .analysis)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try reason?.encode(on: &_container, forKey: .reason)
		try referrer?.encode(on: &_container, forKey: .referrer)
		try startDate?.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Genomic Analysis Event.
 
 The details about a specific analysis that was performed in this GenomicStudy.
 */
public struct GenomicStudyAnalysis: BackboneElement {
	
	/// Type of the genomic changes studied in the analysis (e.g., DNA, RNA, or AA change)
	public var changeType: [CodeableConcept]?
	
	/// The date of the analysis event
	public var date: FHIRPrimitive<DateTime>?
	
	/// Devices used for the analysis (e.g., instruments, software), with settings and parameters
	public var device: [GenomicStudyAnalysisDevice]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What the genomic analysis is about, when it is not about the subject of record
	public var focus: [Reference]?
	
	/// Genome build that is used in this analysis
	public var genomeBuild: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers for the analysis event
	public var identifier: [Identifier]?
	
	/// Inputs for the analysis event
	public var input: [GenomicStudyAnalysisInput]?
	
	/// The defined protocol that describes the analysis
	public var instantiatesCanonical: FHIRPrimitive<Canonical>?
	
	/// The URL pointing to an externally maintained protocol that describes the analysis
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// Type of the methods used in the analysis (e.g., FISH, Karyotyping, MSI)
	public var methodType: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Any notes capture with the analysis event
	public var note: [Annotation]?
	
	/// Outputs for the analysis event
	public var output: [GenomicStudyAnalysisOutput]?
	
	/// Performer for the analysis event
	public var performer: [GenomicStudyAnalysisPerformer]?
	
	/// The protocol that was performed for the analysis event
	public var protocolPerformed: Reference?
	
	/// Genomic regions actually called in the analysis event (BED file)
	public var regionsCalled: [Reference]?
	
	/// The genomic regions to be studied in the analysis (BED file)
	public var regionsStudied: [Reference]?
	
	/// The specimen used in the analysis event
	public var specimen: [Reference]?
	
	/// Name of the analysis event (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case focus
		case genomeBuild
		case id; case _id
		case identifier
		case input
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case methodType
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.changeType = try [CodeableConcept](from: _container, forKeyIfPresent: .changeType)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.device = try [GenomicStudyAnalysisDevice](from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.genomeBuild = try CodeableConcept(from: _container, forKeyIfPresent: .genomeBuild)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.input = try [GenomicStudyAnalysisInput](from: _container, forKeyIfPresent: .input)
		self.instantiatesCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.methodType = try [CodeableConcept](from: _container, forKeyIfPresent: .methodType)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.output = try [GenomicStudyAnalysisOutput](from: _container, forKeyIfPresent: .output)
		self.performer = try [GenomicStudyAnalysisPerformer](from: _container, forKeyIfPresent: .performer)
		self.protocolPerformed = try Reference(from: _container, forKeyIfPresent: .protocolPerformed)
		self.regionsCalled = try [Reference](from: _container, forKeyIfPresent: .regionsCalled)
		self.regionsStudied = try [Reference](from: _container, forKeyIfPresent: .regionsStudied)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try changeType?.encode(on: &_container, forKey: .changeType)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try genomeBuild?.encode(on: &_container, forKey: .genomeBuild)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try input?.encode(on: &_container, forKey: .input)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try methodType?.encode(on: &_container, forKey: .methodType)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try output?.encode(on: &_container, forKey: .output)
		try performer?.encode(on: &_container, forKey: .performer)
		try protocolPerformed?.encode(on: &_container, forKey: .protocolPerformed)
		try regionsCalled?.encode(on: &_container, forKey: .regionsCalled)
		try regionsStudied?.encode(on: &_container, forKey: .regionsStudied)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Devices used for the analysis (e.g., instruments, software), with settings and parameters.
 */
public struct GenomicStudyAnalysisDevice: BackboneElement {
	
	/// Device used for the analysis
	public var device: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Specific function for the device used for the analysis
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		device: Reference? = nil,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.device = device
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case device
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Inputs for the analysis event.
 */
public struct GenomicStudyAnalysisInput: BackboneElement {
	
	/// All possible types for "generatedBy[x]"
	public enum GeneratedByX: Equatable, Hashable, Sendable {
		indirect case identifier(Identifier)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// File containing input data
	public var file: Reference?
	
	/// The analysis event or other GenomicStudy that generated this input file
	/// One of `generatedBy[x]`
	public var generatedBy: GeneratedByX?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of input data (e.g., BAM, CRAM, or FASTA)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		file: Reference? = nil,
		generatedBy: GeneratedByX? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.file = file
		self.generatedBy = generatedBy
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case file
		case generatedByIdentifier
		case generatedByReference
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.file = try Reference(from: _container, forKeyIfPresent: .file)
		self.generatedBy = try Self._decodeGeneratedBy(from: _container)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try file?.encode(on: &_container, forKey: .file)
		if let _enum = generatedBy {
		switch _enum {
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .generatedByIdentifier)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .generatedByReference)
		}
		}
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeGeneratedBy(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> GeneratedByX? {
		var _t_generatedBy: GeneratedByX? = nil
		if let generatedByIdentifier = try Identifier(from: _container, forKeyIfPresent: .generatedByIdentifier) {
			_t_generatedBy = .identifier(generatedByIdentifier)
		}
		if let generatedByReference = try Reference(from: _container, forKeyIfPresent: .generatedByReference) {
			if _t_generatedBy != nil {
				throw DecodingError.dataCorruptedError(forKey: .generatedByReference, in: _container, debugDescription: "More than one value provided for \"generatedBy\"")
			}
			_t_generatedBy = .reference(generatedByReference)
		}
		return _t_generatedBy
	}
}

/**
 Outputs for the analysis event.
 */
public struct GenomicStudyAnalysisOutput: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// File containing output data
	public var file: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of output data (e.g., VCF, MAF, or BAM)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		file: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.file = file
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case file
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.file = try Reference(from: _container, forKeyIfPresent: .file)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try file?.encode(on: &_container, forKey: .file)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Performer for the analysis event.
 */
public struct GenomicStudyAnalysisPerformer: BackboneElement {
	
	/// The organization, healthcare professional, or others who participated in performing this analysis
	public var actor: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Role of the actor for this analysis
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
	}
}
