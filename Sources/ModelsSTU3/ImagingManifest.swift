//
//  ImagingManifest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ImagingManifest)
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
 
 A text description of the DICOM SOP instances selected in the ImagingManifest; or the reason for, or significance of,
 the selection.
 */
open class ImagingManifest: DomainResource {
	
	override open class var resourceType: ResourceType { return .imagingManifest }
	
	/// SOP Instance UID
	public var identifier: Identifier?
	
	/// Patient of the selected objects
	public var patient: Reference
	
	/// Time when the selection of instances was made
	public var authoringTime: FHIRPrimitive<DateTime>?
	
	/// Author (human or machine)
	public var author: Reference?
	
	/// Description text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Study identity of the selected instances
	public var study: [ImagingManifestStudy]
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, study: [ImagingManifestStudy]) {
		self.patient = patient
		self.study = study
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
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							patient: Reference,
							study: [ImagingManifestStudy],
							text: Narrative? = nil)
	{
		self.init(patient: patient, study: study)
		self.author = author
		self.authoringTime = authoringTime
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
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
		case identifier
		case patient
		case study
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authoringTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoringTime, auxiliaryKey: ._authoringTime)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.study = try [ImagingManifestStudy](from: _container, forKey: .study)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try authoringTime?.encode(on: &_container, forKey: .authoringTime, auxiliaryKey: ._authoringTime)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patient.encode(on: &_container, forKey: .patient)
		try study.encode(on: &_container, forKey: .study)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingManifest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && authoringTime == _other.authoringTime
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && patient == _other.patient
		    && study == _other.study
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(authoringTime)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(patient)
		hasher.combine(study)
	}
}

/**
 Study identity of the selected instances.
 
 Study identity and locating information of the DICOM SOP instances in the selection.
 */
open class ImagingManifestStudy: BackboneElement {
	
	/// Study instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Reference to ImagingStudy
	public var imagingStudy: Reference?
	
	/// Study access service endpoint
	public var endpoint: [Reference]?
	
	/// Series identity of the selected instances
	public var series: [ImagingManifestStudySeries]
	
	/// Designated initializer taking all required properties
	public init(series: [ImagingManifestStudySeries], uid: FHIRPrimitive<FHIRURI>) {
		self.series = series
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							endpoint: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							imagingStudy: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							series: [ImagingManifestStudySeries],
							uid: FHIRPrimitive<FHIRURI>)
	{
		self.init(series: series, uid: uid)
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.imagingStudy = imagingStudy
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endpoint
		case imagingStudy
		case series
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.imagingStudy = try Reference(from: _container, forKeyIfPresent: .imagingStudy)
		self.series = try [ImagingManifestStudySeries](from: _container, forKey: .series)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try imagingStudy?.encode(on: &_container, forKey: .imagingStudy)
		try series.encode(on: &_container, forKey: .series)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingManifestStudy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return endpoint == _other.endpoint
		    && imagingStudy == _other.imagingStudy
		    && series == _other.series
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(endpoint)
		hasher.combine(imagingStudy)
		hasher.combine(series)
		hasher.combine(uid)
	}
}

/**
 Series identity of the selected instances.
 
 Series identity and locating information of the DICOM SOP instances in the selection.
 */
open class ImagingManifestStudySeries: BackboneElement {
	
	/// Series instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Series access endpoint
	public var endpoint: [Reference]?
	
	/// The selected instance
	public var instance: [ImagingManifestStudySeriesInstance]
	
	/// Designated initializer taking all required properties
	public init(instance: [ImagingManifestStudySeriesInstance], uid: FHIRPrimitive<FHIRURI>) {
		self.instance = instance
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							endpoint: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instance: [ImagingManifestStudySeriesInstance],
							modifierExtension: [Extension]? = nil,
							uid: FHIRPrimitive<FHIRURI>)
	{
		self.init(instance: instance, uid: uid)
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endpoint
		case instance
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.instance = try [ImagingManifestStudySeriesInstance](from: _container, forKey: .instance)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try instance.encode(on: &_container, forKey: .instance)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingManifestStudySeries else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return endpoint == _other.endpoint
		    && instance == _other.instance
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(endpoint)
		hasher.combine(instance)
		hasher.combine(uid)
	}
}

/**
 The selected instance.
 
 Identity and locating information of the selected DICOM SOP instances.
 */
open class ImagingManifestStudySeriesInstance: BackboneElement {
	
	/// SOP class UID of instance
	public var sopClass: FHIRPrimitive<FHIRURI>
	
	/// Selected instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(sopClass: FHIRPrimitive<FHIRURI>, uid: FHIRPrimitive<FHIRURI>) {
		self.sopClass = sopClass
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sopClass: FHIRPrimitive<FHIRURI>,
							uid: FHIRPrimitive<FHIRURI>)
	{
		self.init(sopClass: sopClass, uid: uid)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case sopClass; case _sopClass
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try sopClass.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingManifestStudySeriesInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return sopClass == _other.sopClass
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(sopClass)
		hasher.combine(uid)
	}
}
