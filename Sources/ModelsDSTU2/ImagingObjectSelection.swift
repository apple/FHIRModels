//
//  ImagingObjectSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImagingObjectSelection)
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
 Key Object Selection.
 
 A manifest of a set of DICOM Service-Object Pair Instances (SOP Instances).  The referenced SOP Instances (images or
 other content) are for a single patient, and may be from one or more studies. The referenced SOP Instances have been
 selected for a purpose, such as quality assurance, conference, or consult. Reflecting that range of purposes, typical
 ImagingObjectSelection resources may include all SOP Instances in a study (perhaps for sharing through a Health
 Information Exchange); key images from multiple studies (for reference by a referring or treating physician); a multi-
 frame ultrasound instance ("cine" video clip) and a set of measurements taken from that instance (for inclusion in a
 teaching file); and so on.
 */
open class ImagingObjectSelection: DomainResource {
	
	override open class var resourceType: ResourceType { return .imagingObjectSelection }
	
	/// Instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Patient of the selected objects
	public var patient: Reference
	
	/// Reason for selection
	public var title: CodeableConcept
	
	/// Description text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Author (human or machine)
	public var author: Reference?
	
	/// Authoring time of the selection
	public var authoringTime: FHIRPrimitive<DateTime>?
	
	/// Study identity of the selected instances
	public var study: [ImagingObjectSelectionStudy]
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, study: [ImagingObjectSelectionStudy], title: CodeableConcept, uid: FHIRPrimitive<FHIRURI>) {
		self.patient = patient
		self.study = study
		self.title = title
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							uid: FHIRPrimitive<FHIRURI>)
	{
		self.init(patient: patient, study: study, title: title, uid: uid)
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
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case authoringTime; case _authoringTime
		case description_fhir = "description"; case _description_fhir = "_description"
		case patient
		case study
		case title
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authoringTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoringTime, auxiliaryKey: ._authoringTime)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.study = try [ImagingObjectSelectionStudy](from: _container, forKey: .study)
		self.title = try CodeableConcept(from: _container, forKey: .title)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try authoringTime?.encode(on: &_container, forKey: .authoringTime, auxiliaryKey: ._authoringTime)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try patient.encode(on: &_container, forKey: .patient)
		try study.encode(on: &_container, forKey: .study)
		try title.encode(on: &_container, forKey: .title)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingObjectSelection else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && authoringTime == _other.authoringTime
		    && description_fhir == _other.description_fhir
		    && patient == _other.patient
		    && study == _other.study
		    && title == _other.title
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(authoringTime)
		hasher.combine(description_fhir)
		hasher.combine(patient)
		hasher.combine(study)
		hasher.combine(title)
		hasher.combine(uid)
	}
}

/**
 Study identity of the selected instances.
 
 Study identity and locating information of the DICOM SOP instances in the selection.
 */
open class ImagingObjectSelectionStudy: BackboneElement {
	
	/// Study instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Retrieve study URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Reference to ImagingStudy
	public var imagingStudy: Reference?
	
	/// Series identity of the selected instances
	public var series: [ImagingObjectSelectionStudySeries]
	
	/// Designated initializer taking all required properties
	public init(series: [ImagingObjectSelectionStudySeries], uid: FHIRPrimitive<FHIRURI>) {
		self.series = series
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							imagingStudy: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							series: [ImagingObjectSelectionStudySeries],
							uid: FHIRPrimitive<FHIRURI>,
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(series: series, uid: uid)
		self.`extension` = `extension`
		self.id = id
		self.imagingStudy = imagingStudy
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case imagingStudy
		case series
		case uid; case _uid
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.imagingStudy = try Reference(from: _container, forKeyIfPresent: .imagingStudy)
		self.series = try [ImagingObjectSelectionStudySeries](from: _container, forKey: .series)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try imagingStudy?.encode(on: &_container, forKey: .imagingStudy)
		try series.encode(on: &_container, forKey: .series)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingObjectSelectionStudy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return imagingStudy == _other.imagingStudy
		    && series == _other.series
		    && uid == _other.uid
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(imagingStudy)
		hasher.combine(series)
		hasher.combine(uid)
		hasher.combine(url)
	}
}

/**
 Series identity of the selected instances.
 
 Series identity and locating information of the DICOM SOP instances in the selection.
 */
open class ImagingObjectSelectionStudySeries: BackboneElement {
	
	/// Series instance UID
	public var uid: FHIRPrimitive<FHIRURI>?
	
	/// Retrieve series URL
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The selected instance
	public var instance: [ImagingObjectSelectionStudySeriesInstance]
	
	/// Designated initializer taking all required properties
	public init(instance: [ImagingObjectSelectionStudySeriesInstance]) {
		self.instance = instance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instance: [ImagingObjectSelectionStudySeriesInstance],
							modifierExtension: [Extension]? = nil,
							uid: FHIRPrimitive<FHIRURI>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(instance: instance)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uid = uid
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case instance
		case uid; case _uid
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.instance = try [ImagingObjectSelectionStudySeriesInstance](from: _container, forKey: .instance)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try instance.encode(on: &_container, forKey: .instance)
		try uid?.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingObjectSelectionStudySeries else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return instance == _other.instance
		    && uid == _other.uid
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(instance)
		hasher.combine(uid)
		hasher.combine(url)
	}
}

/**
 The selected instance.
 
 Identity and locating information of the selected DICOM SOP instances.
 */
open class ImagingObjectSelectionStudySeriesInstance: BackboneElement {
	
	/// SOP class UID of instance
	public var sopClass: FHIRPrimitive<FHIRURI>
	
	/// Selected instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Retrieve instance URL
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The frame set
	public var frames: [ImagingObjectSelectionStudySeriesInstanceFrames]?
	
	/// Designated initializer taking all required properties
	public init(sopClass: FHIRPrimitive<FHIRURI>, uid: FHIRPrimitive<FHIRURI>, url: FHIRPrimitive<FHIRURI>) {
		self.sopClass = sopClass
		self.uid = uid
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							frames: [ImagingObjectSelectionStudySeriesInstanceFrames]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sopClass: FHIRPrimitive<FHIRURI>,
							uid: FHIRPrimitive<FHIRURI>,
							url: FHIRPrimitive<FHIRURI>)
	{
		self.init(sopClass: sopClass, uid: uid, url: url)
		self.`extension` = `extension`
		self.frames = frames
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case frames
		case sopClass; case _sopClass
		case uid; case _uid
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.frames = try [ImagingObjectSelectionStudySeriesInstanceFrames](from: _container, forKeyIfPresent: .frames)
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try frames?.encode(on: &_container, forKey: .frames)
		try sopClass.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingObjectSelectionStudySeriesInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return frames == _other.frames
		    && sopClass == _other.sopClass
		    && uid == _other.uid
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(frames)
		hasher.combine(sopClass)
		hasher.combine(uid)
		hasher.combine(url)
	}
}

/**
 The frame set.
 
 Identity and location information of the frames in the selected instance.
 */
open class ImagingObjectSelectionStudySeriesInstanceFrames: BackboneElement {
	
	/// Frame numbers
	public var frameNumbers: [FHIRPrimitive<FHIRUnsignedInteger>]
	
	/// Retrieve frame URL
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(frameNumbers: [FHIRPrimitive<FHIRUnsignedInteger>], url: FHIRPrimitive<FHIRURI>) {
		self.frameNumbers = frameNumbers
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							frameNumbers: [FHIRPrimitive<FHIRUnsignedInteger>],
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							url: FHIRPrimitive<FHIRURI>)
	{
		self.init(frameNumbers: frameNumbers, url: url)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case frameNumbers; case _frameNumbers
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.frameNumbers = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKey: .frameNumbers, auxiliaryKey: ._frameNumbers)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try frameNumbers.encode(on: &_container, forKey: .frameNumbers, auxiliaryKey: ._frameNumbers)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingObjectSelectionStudySeriesInstanceFrames else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return frameNumbers == _other.frameNumbers
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(frameNumbers)
		hasher.combine(url)
	}
}
