//
//  ImagingStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ImagingStudy)
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
 A set of images produced in single study (one or more series of references images).
 
 Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which
 includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common
 context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of
 different modalities.
 */
public struct ImagingStudy: DomainResource {
	
	public static let resourceType: ResourceType = .imagingStudy
	
	/// Request fulfilled
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Institution-generated description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Encounter with which this imaging study is associated
	public var encounter: Reference?
	
	/// Study access endpoint
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers for the whole study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Who interpreted images
	public var interpreter: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where ImagingStudy occurred
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// All series modality if actual acquisition modalities
	public var modality: [Coding]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// User-defined comments
	public var note: [Annotation]?
	
	/// Number of Study Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of Study Related Series
	public var numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The performed procedure code
	public var procedureCode: [CodeableConcept]?
	
	/// The performed Procedure reference
	public var procedureReference: Reference?
	
	/// Why the study was requested
	public var reasonCode: [CodeableConcept]?
	
	/// Why was study performed
	public var reasonReference: [Reference]?
	
	/// Referring physician
	public var referrer: Reference?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// When the study was started
	public var started: FHIRPrimitive<DateTime>?
	
	/// The current state of the ImagingStudy.
	public var status: FHIRPrimitive<ImagingStudyStatus>
	
	/// Who or what is the subject of the study
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		encounter: Reference? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		interpreter: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modality: [Coding]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		procedureCode: [CodeableConcept]? = nil,
		procedureReference: Reference? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		referrer: Reference? = nil,
		series: [ImagingStudySeries]? = nil,
		started: FHIRPrimitive<DateTime>? = nil,
		status: FHIRPrimitive<ImagingStudyStatus>,
		subject: Reference,
		text: Narrative? = nil
	) {
		self.basedOn = basedOn
		self.contained = contained
		self.description_fhir = description_fhir
		self.encounter = encounter
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.interpreter = interpreter
		self.language = language
		self.location = location
		self.meta = meta
		self.modality = modality
		self.modifierExtension = modifierExtension
		self.note = note
		self.numberOfInstances = numberOfInstances
		self.numberOfSeries = numberOfSeries
		self.procedureCode = procedureCode
		self.procedureReference = procedureReference
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.referrer = referrer
		self.series = series
		self.started = started
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case endpoint
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case interpreter
		case language; case _language
		case location
		case meta
		case modality
		case modifierExtension
		case note
		case numberOfInstances; case _numberOfInstances
		case numberOfSeries; case _numberOfSeries
		case procedureCode
		case procedureReference
		case reasonCode
		case reasonReference
		case referrer
		case series
		case started; case _started
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.interpreter = try [Reference](from: _container, forKeyIfPresent: .interpreter)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modality = try [Coding](from: _container, forKeyIfPresent: .modality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.numberOfSeries = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		self.procedureCode = try [CodeableConcept](from: _container, forKeyIfPresent: .procedureCode)
		self.procedureReference = try Reference(from: _container, forKeyIfPresent: .procedureReference)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.referrer = try Reference(from: _container, forKeyIfPresent: .referrer)
		self.series = try [ImagingStudySeries](from: _container, forKeyIfPresent: .series)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.status = try FHIRPrimitive<ImagingStudyStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modality?.encode(on: &_container, forKey: .modality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try numberOfInstances?.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try numberOfSeries?.encode(on: &_container, forKey: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		try procedureCode?.encode(on: &_container, forKey: .procedureCode)
		try procedureReference?.encode(on: &_container, forKey: .procedureReference)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try referrer?.encode(on: &_container, forKey: .referrer)
		try series?.encode(on: &_container, forKey: .series)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Each study has one or more series of instances.
 
 Each study has one or more series of images or other content.
 */
public struct ImagingStudySeries: BackboneElement {
	
	/// Body part examined
	public var bodySite: Coding?
	
	/// A short human readable summary of the series
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Series access endpoint
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A single SOP instance from the series
	public var instance: [ImagingStudySeriesInstance]?
	
	/// Body part laterality
	public var laterality: Coding?
	
	/// The modality of the instances in the series
	public var modality: Coding
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Numeric identifier of this series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of Series Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Who performed the series
	public var performer: [ImagingStudySeriesPerformer]?
	
	/// Specimen imaged
	public var specimen: [Reference]?
	
	/// When the series started
	public var started: FHIRPrimitive<DateTime>?
	
	/// DICOM Series Instance UID for the series
	public var uid: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		bodySite: Coding? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: [ImagingStudySeriesInstance]? = nil,
		laterality: Coding? = nil,
		modality: Coding,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		performer: [ImagingStudySeriesPerformer]? = nil,
		specimen: [Reference]? = nil,
		started: FHIRPrimitive<DateTime>? = nil,
		uid: FHIRPrimitive<FHIRString>
	) {
		self.bodySite = bodySite
		self.description_fhir = description_fhir
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.instance = instance
		self.laterality = laterality
		self.modality = modality
		self.modifierExtension = modifierExtension
		self.number = number
		self.numberOfInstances = numberOfInstances
		self.performer = performer
		self.specimen = specimen
		self.started = started
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case `extension` = "extension"
		case id; case _id
		case instance
		case laterality
		case modality
		case modifierExtension
		case number; case _number
		case numberOfInstances; case _numberOfInstances
		case performer
		case specimen
		case started; case _started
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try Coding(from: _container, forKeyIfPresent: .bodySite)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instance = try [ImagingStudySeriesInstance](from: _container, forKeyIfPresent: .instance)
		self.laterality = try Coding(from: _container, forKeyIfPresent: .laterality)
		self.modality = try Coding(from: _container, forKey: .modality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.performer = try [ImagingStudySeriesPerformer](from: _container, forKeyIfPresent: .performer)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instance?.encode(on: &_container, forKey: .instance)
		try laterality?.encode(on: &_container, forKey: .laterality)
		try modality.encode(on: &_container, forKey: .modality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try numberOfInstances?.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try performer?.encode(on: &_container, forKey: .performer)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}

/**
 A single SOP instance from the series.
 
 A single SOP instance within the series, e.g. an image, or presentation state.
 */
public struct ImagingStudySeriesInstance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The number of this instance in the series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM class type
	public var sopClass: Coding
	
	/// Description of instance
	public var title: FHIRPrimitive<FHIRString>?
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		sopClass: Coding,
		title: FHIRPrimitive<FHIRString>? = nil,
		uid: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
		self.sopClass = sopClass
		self.title = title
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case number; case _number
		case sopClass
		case title; case _title
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.sopClass = try Coding(from: _container, forKey: .sopClass)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass.encode(on: &_container, forKey: .sopClass)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}

/**
 Who performed the series.
 
 Indicates who or what performed the series and how they were involved.
 */
public struct ImagingStudySeriesPerformer: BackboneElement {
	
	/// Who performed the series
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
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
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
