//
//  ImagingObjectSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImagingObjectSelection)
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
 Key Object Selection.
 
 A manifest of a set of DICOM Service-Object Pair Instances (SOP Instances).  The referenced SOP Instances (images or
 other content) are for a single patient, and may be from one or more studies. The referenced SOP Instances have been
 selected for a purpose, such as quality assurance, conference, or consult. Reflecting that range of purposes, typical
 ImagingObjectSelection resources may include all SOP Instances in a study (perhaps for sharing through a Health
 Information Exchange); key images from multiple studies (for reference by a referring or treating physician); a multi-
 frame ultrasound instance ("cine" video clip) and a set of measurements taken from that instance (for inclusion in a
 teaching file); and so on.
 */
public struct ImagingObjectSelection: DomainResource {
	
	public static let resourceType: ResourceType = .imagingObjectSelection
	
	/// Author (human or machine)
	public var author: Reference?
	
	/// Authoring time of the selection
	public var authoringTime: FHIRPrimitive<DateTime>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Description text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient of the selected objects
	public var patient: Reference
	
	/// Study identity of the selected instances
	public var study: [ImagingObjectSelectionStudy]
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Reason for selection
	public var title: CodeableConcept
	
	/// Instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		author: Reference? = nil,
		authoringTime: FHIRPrimitive<DateTime>? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference,
		study: [ImagingObjectSelectionStudy],
		text: Narrative? = nil,
		title: CodeableConcept,
		uid: FHIRPrimitive<FHIRURI>
	) {
		self.author = author
		self.authoringTime = authoringTime
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.study = study
		self.text = text
		self.title = title
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case authoringTime; case _authoringTime
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case study
		case text
		case title
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authoringTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoringTime, auxiliaryKey: ._authoringTime)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.study = try [ImagingObjectSelectionStudy](from: _container, forKey: .study)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try CodeableConcept(from: _container, forKey: .title)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try authoringTime?.encode(on: &_container, forKey: .authoringTime, auxiliaryKey: ._authoringTime)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient.encode(on: &_container, forKey: .patient)
		try study.encode(on: &_container, forKey: .study)
		try text?.encode(on: &_container, forKey: .text)
		try title.encode(on: &_container, forKey: .title)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}

/**
 Study identity of the selected instances.
 
 Study identity and locating information of the DICOM SOP instances in the selection.
 */
public struct ImagingObjectSelectionStudy: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Reference to ImagingStudy
	public var imagingStudy: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Series identity of the selected instances
	public var series: [ImagingObjectSelectionStudySeries]
	
	/// Study instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Retrieve study URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		imagingStudy: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		series: [ImagingObjectSelectionStudySeries],
		uid: FHIRPrimitive<FHIRURI>,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.imagingStudy = imagingStudy
		self.modifierExtension = modifierExtension
		self.series = series
		self.uid = uid
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case imagingStudy
		case modifierExtension
		case series
		case uid; case _uid
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.imagingStudy = try Reference(from: _container, forKeyIfPresent: .imagingStudy)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.series = try [ImagingObjectSelectionStudySeries](from: _container, forKey: .series)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try imagingStudy?.encode(on: &_container, forKey: .imagingStudy)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try series.encode(on: &_container, forKey: .series)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 Series identity of the selected instances.
 
 Series identity and locating information of the DICOM SOP instances in the selection.
 */
public struct ImagingObjectSelectionStudySeries: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The selected instance
	public var instance: [ImagingObjectSelectionStudySeriesInstance]
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Series instance UID
	public var uid: FHIRPrimitive<FHIRURI>?
	
	/// Retrieve series URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: [ImagingObjectSelectionStudySeriesInstance],
		modifierExtension: [Extension]? = nil,
		uid: FHIRPrimitive<FHIRURI>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.instance = instance
		self.modifierExtension = modifierExtension
		self.uid = uid
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case instance
		case modifierExtension
		case uid; case _uid
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instance = try [ImagingObjectSelectionStudySeriesInstance](from: _container, forKey: .instance)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instance.encode(on: &_container, forKey: .instance)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try uid?.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 The selected instance.
 
 Identity and locating information of the selected DICOM SOP instances.
 */
public struct ImagingObjectSelectionStudySeriesInstance: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// The frame set
	public var frames: [ImagingObjectSelectionStudySeriesInstanceFrames]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// SOP class UID of instance
	public var sopClass: FHIRPrimitive<FHIRURI>
	
	/// Selected instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Retrieve instance URL
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		frames: [ImagingObjectSelectionStudySeriesInstanceFrames]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sopClass: FHIRPrimitive<FHIRURI>,
		uid: FHIRPrimitive<FHIRURI>,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.`extension` = `extension`
		self.frames = frames
		self.id = id
		self.modifierExtension = modifierExtension
		self.sopClass = sopClass
		self.uid = uid
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case frames
		case id; case _id
		case modifierExtension
		case sopClass; case _sopClass
		case uid; case _uid
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frames = try [ImagingObjectSelectionStudySeriesInstanceFrames](from: _container, forKeyIfPresent: .frames)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frames?.encode(on: &_container, forKey: .frames)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sopClass.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 The frame set.
 
 Identity and location information of the frames in the selected instance.
 */
public struct ImagingObjectSelectionStudySeriesInstanceFrames: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Frame numbers
	public var frameNumbers: [FHIRPrimitive<FHIRUnsignedInteger>]
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Retrieve frame URL
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		frameNumbers: [FHIRPrimitive<FHIRUnsignedInteger>],
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.`extension` = `extension`
		self.frameNumbers = frameNumbers
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case frameNumbers; case _frameNumbers
		case id; case _id
		case modifierExtension
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frameNumbers = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKey: .frameNumbers, auxiliaryKey: ._frameNumbers)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frameNumbers.encode(on: &_container, forKey: .frameNumbers, auxiliaryKey: ._frameNumbers)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}
