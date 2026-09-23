//
//  ImagingStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImagingStudy)
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
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056)
	public var availability: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Institution-generated description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Other identifiers for the study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Who interpreted images
	public var interpreter: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// All series modality if actual acquisition modalities
	public var modalityList: [Coding]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Number of Study Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>
	
	/// Number of Study Related Series
	public var numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>
	
	/// Order(s) that caused this study to be performed
	public var order: [Reference]?
	
	/// Who the images are of
	public var patient: Reference
	
	/// Type of procedure performed
	public var procedure: [Reference]?
	
	/// Referring physician (0008,0090)
	public var referrer: Reference?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// When the study was started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Formal identifier for the study
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Retrieve URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		accession: Identifier? = nil,
		availability: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		interpreter: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modalityList: [Coding]? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>,
		numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>,
		order: [Reference]? = nil,
		patient: Reference,
		procedure: [Reference]? = nil,
		referrer: Reference? = nil,
		series: [ImagingStudySeries]? = nil,
		started: FHIRPrimitive<DateTime>? = nil,
		text: Narrative? = nil,
		uid: FHIRPrimitive<FHIRURI>,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.accession = accession
		self.availability = availability
		self.contained = contained
		self.description_fhir = description_fhir
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
		self.order = order
		self.patient = patient
		self.procedure = procedure
		self.referrer = referrer
		self.series = series
		self.started = started
		self.text = text
		self.uid = uid
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accession
		case availability; case _availability
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
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
		case order
		case patient
		case procedure
		case referrer
		case series
		case started; case _started
		case text
		case uid; case _uid
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accession = try Identifier(from: _container, forKeyIfPresent: .accession)
		self.availability = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availability, auxiliaryKey: ._availability)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.interpreter = try Reference(from: _container, forKeyIfPresent: .interpreter)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modalityList = try [Coding](from: _container, forKeyIfPresent: .modalityList)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.numberOfSeries = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKey: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		self.order = try [Reference](from: _container, forKeyIfPresent: .order)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.procedure = try [Reference](from: _container, forKeyIfPresent: .procedure)
		self.referrer = try Reference(from: _container, forKeyIfPresent: .referrer)
		self.series = try [ImagingStudySeries](from: _container, forKeyIfPresent: .series)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accession?.encode(on: &_container, forKey: .accession)
		try availability?.encode(on: &_container, forKey: .availability, auxiliaryKey: ._availability)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modalityList?.encode(on: &_container, forKey: .modalityList)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfInstances.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try numberOfSeries.encode(on: &_container, forKey: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		try order?.encode(on: &_container, forKey: .order)
		try patient.encode(on: &_container, forKey: .patient)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try referrer?.encode(on: &_container, forKey: .referrer)
		try series?.encode(on: &_container, forKey: .series)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try text?.encode(on: &_container, forKey: .text)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
	
	/// A description of the series
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
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
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>
	
	/// When the series started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Formal identifier for this series
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Location of the referenced instance(s)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		availability: FHIRPrimitive<FHIRString>? = nil,
		bodySite: Coding? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: [ImagingStudySeriesInstance]? = nil,
		laterality: Coding? = nil,
		modality: Coding,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>,
		started: FHIRPrimitive<DateTime>? = nil,
		uid: FHIRPrimitive<FHIRURI>,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.availability = availability
		self.bodySite = bodySite
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.instance = instance
		self.laterality = laterality
		self.modality = modality
		self.modifierExtension = modifierExtension
		self.number = number
		self.numberOfInstances = numberOfInstances
		self.started = started
		self.uid = uid
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availability; case _availability
		case bodySite
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case instance
		case laterality
		case modality
		case modifierExtension
		case number; case _number
		case numberOfInstances; case _numberOfInstances
		case started; case _started
		case uid; case _uid
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.availability = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availability, auxiliaryKey: ._availability)
		self.bodySite = try Coding(from: _container, forKeyIfPresent: .bodySite)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instance = try [ImagingStudySeriesInstance](from: _container, forKeyIfPresent: .instance)
		self.laterality = try Coding(from: _container, forKeyIfPresent: .laterality)
		self.modality = try Coding(from: _container, forKey: .modality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try availability?.encode(on: &_container, forKey: .availability, auxiliaryKey: ._availability)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instance?.encode(on: &_container, forKey: .instance)
		try laterality?.encode(on: &_container, forKey: .laterality)
		try modality.encode(on: &_container, forKey: .modality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try numberOfInstances.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 A single SOP instance from the series.
 
 A single SOP Instance within the series, e.g. an image, or presentation state.
 */
public struct ImagingStudySeriesInstance: BackboneElement {
	
	/// Content of the instance
	public var content: [Attachment]?
	
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
	
	/// Type of instance (image etc.)
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Formal identifier for this instance
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		content: [Attachment]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		sopClass: FHIRPrimitive<FHIRURI>,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<FHIRString>? = nil,
		uid: FHIRPrimitive<FHIRURI>
	) {
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
		self.sopClass = sopClass
		self.title = title
		self.type = type
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case content
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case number; case _number
		case sopClass; case _sopClass
		case title; case _title
		case type; case _type
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.content = try [Attachment](from: _container, forKeyIfPresent: .content)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try content?.encode(on: &_container, forKey: .content)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}
