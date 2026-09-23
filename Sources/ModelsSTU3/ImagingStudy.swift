//
//  ImagingStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ImagingStudy)
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
	
	/// Related workflow identifier ("Accession Number")
	public var accession: Identifier?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE
	public var availability: FHIRPrimitive<FHIRString>?
	
	/// Request fulfilled
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Originating context
	public var context: Reference?
	
	/// Institution-generated description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Study access endpoint
	public var endpoint: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Other identifiers for the study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Who interpreted images
	public var interpreter: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// All series modality if actual acquisition modalities
	public var modalityList: [Coding]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Number of Study Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of Study Related Series
	public var numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Who the images are of
	public var patient: Reference
	
	/// The performed procedure code
	public var procedureCode: [CodeableConcept]?
	
	/// The performed Procedure reference
	public var procedureReference: [Reference]?
	
	/// Why the study was requested
	public var reason: CodeableConcept?
	
	/// Referring physician
	public var referrer: Reference?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// When the study was started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Formal DICOM identifier for the study
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		accession: Identifier? = nil,
		availability: FHIRPrimitive<FHIRString>? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		interpreter: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modalityList: [Coding]? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		patient: Reference,
		procedureCode: [CodeableConcept]? = nil,
		procedureReference: [Reference]? = nil,
		reason: CodeableConcept? = nil,
		referrer: Reference? = nil,
		series: [ImagingStudySeries]? = nil,
		started: FHIRPrimitive<DateTime>? = nil,
		text: Narrative? = nil,
		uid: FHIRPrimitive<FHIRURI>
	) {
		self.accession = accession
		self.availability = availability
		self.basedOn = basedOn
		self.contained = contained
		self.context = context
		self.description_fhir = description_fhir
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.interpreter = interpreter
		self.language = language
		self.meta = meta
		self.modalityList = modalityList
		self.modifierExtension = modifierExtension
		self.numberOfInstances = numberOfInstances
		self.numberOfSeries = numberOfSeries
		self.patient = patient
		self.procedureCode = procedureCode
		self.procedureReference = procedureReference
		self.reason = reason
		self.referrer = referrer
		self.series = series
		self.started = started
		self.text = text
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accession
		case availability; case _availability
		case basedOn
		case contained
		case context
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case interpreter
		case language; case _language
		case meta
		case modalityList
		case modifierExtension
		case numberOfInstances; case _numberOfInstances
		case numberOfSeries; case _numberOfSeries
		case patient
		case procedureCode
		case procedureReference
		case reason
		case referrer
		case series
		case started; case _started
		case text
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accession = try Identifier(from: _container, forKeyIfPresent: .accession)
		self.availability = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availability, auxiliaryKey: ._availability)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.interpreter = try [Reference](from: _container, forKeyIfPresent: .interpreter)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modalityList = try [Coding](from: _container, forKeyIfPresent: .modalityList)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.numberOfSeries = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.procedureCode = try [CodeableConcept](from: _container, forKeyIfPresent: .procedureCode)
		self.procedureReference = try [Reference](from: _container, forKeyIfPresent: .procedureReference)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.referrer = try Reference(from: _container, forKeyIfPresent: .referrer)
		self.series = try [ImagingStudySeries](from: _container, forKeyIfPresent: .series)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accession?.encode(on: &_container, forKey: .accession)
		try availability?.encode(on: &_container, forKey: .availability, auxiliaryKey: ._availability)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modalityList?.encode(on: &_container, forKey: .modalityList)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfInstances?.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try numberOfSeries?.encode(on: &_container, forKey: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		try patient.encode(on: &_container, forKey: .patient)
		try procedureCode?.encode(on: &_container, forKey: .procedureCode)
		try procedureReference?.encode(on: &_container, forKey: .procedureReference)
		try reason?.encode(on: &_container, forKey: .reason)
		try referrer?.encode(on: &_container, forKey: .referrer)
		try series?.encode(on: &_container, forKey: .series)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try text?.encode(on: &_container, forKey: .text)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}

/**
 Each study has one or more series of instances.
 
 Each study has one or more series of images or other content.
 */
public struct ImagingStudySeries: BackboneElement {
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE
	public var availability: FHIRPrimitive<FHIRString>?
	
	/// Body part examined
	public var bodySite: Coding?
	
	/// A short human readable summary of the series
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Series access endpoint
	public var endpoint: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A single SOP instance from the series
	public var instance: [ImagingStudySeriesInstance]?
	
	/// Body part laterality
	public var laterality: Coding?
	
	/// The modality of the instances in the series
	public var modality: Coding
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Numeric identifier of this series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of Series Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Who performed the series
	public var performer: [Reference]?
	
	/// When the series started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Formal DICOM identifier for this series
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		availability: FHIRPrimitive<FHIRString>? = nil,
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
		performer: [Reference]? = nil,
		started: FHIRPrimitive<DateTime>? = nil,
		uid: FHIRPrimitive<FHIRURI>
	) {
		self.availability = availability
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
		self.started = started
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availability; case _availability
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
		case started; case _started
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.availability = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availability, auxiliaryKey: ._availability)
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
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try availability?.encode(on: &_container, forKey: .availability, auxiliaryKey: ._availability)
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
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}

/**
 A single SOP instance from the series.
 
 A single SOP instance within the series, e.g. an image, or presentation state.
 */
public struct ImagingStudySeriesInstance: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The number of this instance in the series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM class type
	public var sopClass: FHIRPrimitive<FHIRURI>
	
	/// Description of instance
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Formal DICOM identifier for this instance
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		sopClass: FHIRPrimitive<FHIRURI>,
		title: FHIRPrimitive<FHIRString>? = nil,
		uid: FHIRPrimitive<FHIRURI>
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
		case sopClass; case _sopClass
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
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}
