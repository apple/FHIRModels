//
//  ImagingStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ImagingStudy)
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
	
	/// Formal DICOM identifier for the study
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Related workflow identifier ("Accession Number")
	public var accession: Identifier?
	
	/// Other identifiers for the study
	public var identifier: [Identifier]?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE
	public var availability: FHIRPrimitive<FHIRString>?
	
	/// All series modality if actual acquisition modalities
	public var modalityList: [Coding]?
	
	/// Who the images are of
	public var patient: Reference
	
	/// Originating context
	public var context: Reference?
	
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
	public var procedureReference: [Reference]?
	
	/// The performed procedure code
	public var procedureCode: [CodeableConcept]?
	
	/// Why the study was requested
	public var reason: CodeableConcept?
	
	/// Institution-generated description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, uid: FHIRPrimitive<FHIRURI>) {
		self.patient = patient
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							uid: FHIRPrimitive<FHIRURI>)
	{
		self.init(patient: patient, uid: uid)
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
		self.procedureCode = procedureCode
		self.procedureReference = procedureReference
		self.reason = reason
		self.referrer = referrer
		self.series = series
		self.started = started
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accession
		case availability; case _availability
		case basedOn
		case context
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case identifier
		case interpreter
		case modalityList
		case numberOfInstances; case _numberOfInstances
		case numberOfSeries; case _numberOfSeries
		case patient
		case procedureCode
		case procedureReference
		case reason
		case referrer
		case series
		case started; case _started
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accession = try Identifier(from: _container, forKeyIfPresent: .accession)
		self.availability = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availability, auxiliaryKey: ._availability)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.interpreter = try [Reference](from: _container, forKeyIfPresent: .interpreter)
		self.modalityList = try [Coding](from: _container, forKeyIfPresent: .modalityList)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.numberOfSeries = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.procedureCode = try [CodeableConcept](from: _container, forKeyIfPresent: .procedureCode)
		self.procedureReference = try [Reference](from: _container, forKeyIfPresent: .procedureReference)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.referrer = try Reference(from: _container, forKeyIfPresent: .referrer)
		self.series = try [ImagingStudySeries](from: _container, forKeyIfPresent: .series)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accession?.encode(on: &_container, forKey: .accession)
		try availability?.encode(on: &_container, forKey: .availability, auxiliaryKey: ._availability)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try context?.encode(on: &_container, forKey: .context)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try interpreter?.encode(on: &_container, forKey: .interpreter)
		try modalityList?.encode(on: &_container, forKey: .modalityList)
		try numberOfInstances?.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try numberOfSeries?.encode(on: &_container, forKey: .numberOfSeries, auxiliaryKey: ._numberOfSeries)
		try patient.encode(on: &_container, forKey: .patient)
		try procedureCode?.encode(on: &_container, forKey: .procedureCode)
		try procedureReference?.encode(on: &_container, forKey: .procedureReference)
		try reason?.encode(on: &_container, forKey: .reason)
		try referrer?.encode(on: &_container, forKey: .referrer)
		try series?.encode(on: &_container, forKey: .series)
		try started?.encode(on: &_container, forKey: .started, auxiliaryKey: ._started)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
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
		return accession == _other.accession
		    && availability == _other.availability
		    && basedOn == _other.basedOn
		    && context == _other.context
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && identifier == _other.identifier
		    && interpreter == _other.interpreter
		    && modalityList == _other.modalityList
		    && numberOfInstances == _other.numberOfInstances
		    && numberOfSeries == _other.numberOfSeries
		    && patient == _other.patient
		    && procedureCode == _other.procedureCode
		    && procedureReference == _other.procedureReference
		    && reason == _other.reason
		    && referrer == _other.referrer
		    && series == _other.series
		    && started == _other.started
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accession)
		hasher.combine(availability)
		hasher.combine(basedOn)
		hasher.combine(context)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(identifier)
		hasher.combine(interpreter)
		hasher.combine(modalityList)
		hasher.combine(numberOfInstances)
		hasher.combine(numberOfSeries)
		hasher.combine(patient)
		hasher.combine(procedureCode)
		hasher.combine(procedureReference)
		hasher.combine(reason)
		hasher.combine(referrer)
		hasher.combine(series)
		hasher.combine(started)
		hasher.combine(uid)
	}
}

/**
 Each study has one or more series of instances.
 
 Each study has one or more series of images or other content.
 */
open class ImagingStudySeries: BackboneElement {
	
	/// Formal DICOM identifier for this series
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// Numeric identifier of this series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The modality of the instances in the series
	public var modality: Coding
	
	/// A short human readable summary of the series
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Number of Series Related Instances
	public var numberOfInstances: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE
	public var availability: FHIRPrimitive<FHIRString>?
	
	/// Series access endpoint
	public var endpoint: [Reference]?
	
	/// Body part examined
	public var bodySite: Coding?
	
	/// Body part laterality
	public var laterality: Coding?
	
	/// When the series started
	public var started: FHIRPrimitive<DateTime>?
	
	/// Who performed the series
	public var performer: [Reference]?
	
	/// A single SOP instance from the series
	public var instance: [ImagingStudySeriesInstance]?
	
	/// Designated initializer taking all required properties
	public init(modality: Coding, uid: FHIRPrimitive<FHIRURI>) {
		self.modality = modality
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							uid: FHIRPrimitive<FHIRURI>)
	{
		self.init(modality: modality, uid: uid)
		self.availability = availability
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
		self.started = started
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availability; case _availability
		case bodySite
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case instance
		case laterality
		case modality
		case number; case _number
		case numberOfInstances; case _numberOfInstances
		case performer
		case started; case _started
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.availability = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availability, auxiliaryKey: ._availability)
		self.bodySite = try Coding(from: _container, forKeyIfPresent: .bodySite)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.instance = try [ImagingStudySeriesInstance](from: _container, forKeyIfPresent: .instance)
		self.laterality = try Coding(from: _container, forKeyIfPresent: .laterality)
		self.modality = try Coding(from: _container, forKey: .modality)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.numberOfInstances = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.started = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .started, auxiliaryKey: ._started)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try availability?.encode(on: &_container, forKey: .availability, auxiliaryKey: ._availability)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try instance?.encode(on: &_container, forKey: .instance)
		try laterality?.encode(on: &_container, forKey: .laterality)
		try modality.encode(on: &_container, forKey: .modality)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try numberOfInstances?.encode(on: &_container, forKey: .numberOfInstances, auxiliaryKey: ._numberOfInstances)
		try performer?.encode(on: &_container, forKey: .performer)
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
		return availability == _other.availability
		    && bodySite == _other.bodySite
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && instance == _other.instance
		    && laterality == _other.laterality
		    && modality == _other.modality
		    && number == _other.number
		    && numberOfInstances == _other.numberOfInstances
		    && performer == _other.performer
		    && started == _other.started
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(availability)
		hasher.combine(bodySite)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(instance)
		hasher.combine(laterality)
		hasher.combine(modality)
		hasher.combine(number)
		hasher.combine(numberOfInstances)
		hasher.combine(performer)
		hasher.combine(started)
		hasher.combine(uid)
	}
}

/**
 A single SOP instance from the series.
 
 A single SOP instance within the series, e.g. an image, or presentation state.
 */
open class ImagingStudySeriesInstance: BackboneElement {
	
	/// Formal DICOM identifier for this instance
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// The number of this instance in the series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM class type
	public var sopClass: FHIRPrimitive<FHIRURI>
	
	/// Description of instance
	public var title: FHIRPrimitive<FHIRString>?
	
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
							number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							sopClass: FHIRPrimitive<FHIRURI>,
							title: FHIRPrimitive<FHIRString>? = nil,
							uid: FHIRPrimitive<FHIRURI>)
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
		case sopClass; case _sopClass
		case title; case _title
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
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
