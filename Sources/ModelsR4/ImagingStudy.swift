//
//  ImagingStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ImagingStudy)
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
 A set of images produced in single study (one or more series of references images).
 
 Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which
 includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common
 context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of
 different modalities.
 */
open class ImagingStudy: DomainResource {
	
	override open class var resourceType: ResourceType { return .imagingStudy }
	
	/// Identifiers for the whole study
	public var identifier: [Identifier]?
	
	/// The current state of the ImagingStudy.
	public var status: FHIRPrimitive<ImagingStudyStatus>
	
	/// All series modality if actual acquisition modalities
	public var modality: [Coding]?
	
	/// Who or what is the subject of the study
	public var subject: Reference
	
	/// Encounter with which this imaging study is associated
	public var encounter: Reference?
	
	/// When the study was started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Request fulfilled
	public var basedOn: [Reference]?
	
	/// Referring physician
	public var referrer: Reference?
	
	/// Who interpreted images
	public var interpreter: [Reference]?
	
	/// Study access endpoint
	public var endpoint: [Reference]?
	
	/// Number of Study Related Series
	public var numberOfSeries: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Number of Study Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The performed Procedure reference
	public var procedureReference: Reference?
	
	/// The performed procedure code
	public var procedureCode: [CodeableConcept]?
	
	/// Where ImagingStudy occurred
	public var location: Reference?
	
	/// Why the study was requested
	public var reasonCode: [CodeableConcept]?
	
	/// Why was study performed
	public var reasonReference: [Reference]?
	
	/// User-defined comments
	public var note: [Annotation]?
	
	/// Institution-generated description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ImagingStudyStatus>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(status: status, subject: subject)
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
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case endpoint
		case identifier
		case interpreter
		case location
		case modality
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.interpreter = try [Reference](from: _container, forKeyIfPresent: .interpreter)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.modality = try [Coding](from: _container, forKeyIfPresent: .modality)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try location?.encode(on: &_container, forKey: .location)
		try modality?.encode(on: &_container, forKey: .modality)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingStudy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && description_fhir == _other.description_fhir
		    && encounter == _other.encounter
		    && endpoint == _other.endpoint
		    && identifier == _other.identifier
		    && interpreter == _other.interpreter
		    && location == _other.location
		    && modality == _other.modality
		    && note == _other.note
		    && numberOfInstances == _other.numberOfInstances
		    && numberOfSeries == _other.numberOfSeries
		    && procedureCode == _other.procedureCode
		    && procedureReference == _other.procedureReference
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && referrer == _other.referrer
		    && series == _other.series
		    && started == _other.started
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(description_fhir)
		hasher.combine(encounter)
		hasher.combine(endpoint)
		hasher.combine(identifier)
		hasher.combine(interpreter)
		hasher.combine(location)
		hasher.combine(modality)
		hasher.combine(note)
		hasher.combine(numberOfInstances)
		hasher.combine(numberOfSeries)
		hasher.combine(procedureCode)
		hasher.combine(procedureReference)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(referrer)
		hasher.combine(series)
		hasher.combine(started)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Each study has one or more series of instances.
 
 Each study has one or more series of images or other content.
 */
open class ImagingStudySeries: BackboneElement {
	
	/// DICOM Series Instance UID for the series
	public var uid: FHIRPrimitive<FHIRString>
	
	/// Numeric identifier of this series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The modality of the instances in the series
	public var modality: Coding
	
	/// A short human readable summary of the series
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Number of Series Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Series access endpoint
	public var endpoint: [Reference]?
	
	/// Body part examined
	public var bodySite: Coding?
	
	/// Body part laterality
	public var laterality: Coding?
	
	/// Specimen imaged
	public var specimen: [Reference]?
	
	/// When the series started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Who performed the series
	public var performer: [ImagingStudySeriesPerformer]?
	
	/// A single SOP instance from the series
	public var instance: [ImagingStudySeriesInstance]?
	
	/// Designated initializer taking all required properties
	public init(modality: Coding, uid: FHIRPrimitive<FHIRString>) {
		self.modality = modality
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							uid: FHIRPrimitive<FHIRString>)
	{
		self.init(modality: modality, uid: uid)
		self.bodySite = bodySite
		self.description_fhir = description_fhir
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.instance = instance
		self.laterality = laterality
		self.modifierExtension = modifierExtension
		self.number = number
		self.numberOfInstances = numberOfInstances
		self.performer = performer
		self.specimen = specimen
		self.started = started
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case instance
		case laterality
		case modality
		case number; case _number
		case numberOfInstances; case _numberOfInstances
		case performer
		case specimen
		case started; case _started
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try Coding(from: _container, forKeyIfPresent: .bodySite)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.instance = try [ImagingStudySeriesInstance](from: _container, forKeyIfPresent: .instance)
		self.laterality = try Coding(from: _container, forKeyIfPresent: .laterality)
		self.modality = try Coding(from: _container, forKey: .modality)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.performer = try [ImagingStudySeriesPerformer](from: _container, forKeyIfPresent: .performer)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try instance?.encode(on: &_container, forKey: .instance)
		try laterality?.encode(on: &_container, forKey: .laterality)
		try modality.encode(on: &_container, forKey: .modality)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try numberOfInstances?.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try performer?.encode(on: &_container, forKey: .performer)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingStudySeries else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && instance == _other.instance
		    && laterality == _other.laterality
		    && modality == _other.modality
		    && number == _other.number
		    && numberOfInstances == _other.numberOfInstances
		    && performer == _other.performer
		    && specimen == _other.specimen
		    && started == _other.started
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(instance)
		hasher.combine(laterality)
		hasher.combine(modality)
		hasher.combine(number)
		hasher.combine(numberOfInstances)
		hasher.combine(performer)
		hasher.combine(specimen)
		hasher.combine(started)
		hasher.combine(uid)
	}
}

/**
 A single SOP instance from the series.
 
 A single SOP instance within the series, e.g. an image, or presentation state.
 */
open class ImagingStudySeriesInstance: BackboneElement {
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRString>
	
	/// DICOM class type
	public var sopClass: Coding
	
	/// The number of this instance in the series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Description of instance
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(sopClass: Coding, uid: FHIRPrimitive<FHIRString>) {
		self.sopClass = sopClass
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							sopClass: Coding,
							title: FHIRPrimitive<FHIRString>? = nil,
							uid: FHIRPrimitive<FHIRString>)
	{
		self.init(sopClass: sopClass, uid: uid)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case number; case _number
		case sopClass
		case title; case _title
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.sopClass = try Coding(from: _container, forKey: .sopClass)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass.encode(on: &_container, forKey: .sopClass)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingStudySeriesInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return number == _other.number
		    && sopClass == _other.sopClass
		    && title == _other.title
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(number)
		hasher.combine(sopClass)
		hasher.combine(title)
		hasher.combine(uid)
	}
}

/**
 Who performed the series.
 
 Indicates who or what performed the series and how they were involved.
 */
open class ImagingStudySeriesPerformer: BackboneElement {
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Who performed the series
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							function: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingStudySeriesPerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}
