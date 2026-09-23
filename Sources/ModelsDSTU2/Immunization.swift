//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Immunization)
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
 Immunization event information.
 
 Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a
 patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was
 followed.
 */
public struct Immunization: DomainResource {
	
	public static let resourceType: ResourceType = .immunization
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Vaccination administration date
	public var date: FHIRPrimitive<DateTime>?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Vaccine expiration date
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Administration/non-administration reasons
	public var explanation: ImmunizationExplanation?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where vaccination occurred
	public var location: Reference?
	
	/// Vaccine lot number
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Vaccination notes
	public var note: [Annotation]?
	
	/// Who was immunized
	public var patient: Reference
	
	/// Who administered vaccine
	public var performer: Reference?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Indicates a self-reported record
	public var reported: FHIRPrimitive<FHIRBool>
	
	/// Who ordered vaccination
	public var requester: Reference?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// Indicates the current status of the vaccination event.
	/// Restricted to: ['in-progress', 'on-hold', 'completed', 'entered-in-error', 'stopped']
	public var status: FHIRPrimitive<MedicationAdministrationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered
	public var vaccineCode: CodeableConcept
	
	/// Flag for whether immunization was given
	public var wasNotGiven: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		doseQuantity: Quantity? = nil,
		encounter: Reference? = nil,
		expirationDate: FHIRPrimitive<FHIRDate>? = nil,
		explanation: ImmunizationExplanation? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		patient: Reference,
		performer: Reference? = nil,
		reaction: [ImmunizationReaction]? = nil,
		reported: FHIRPrimitive<FHIRBool>,
		requester: Reference? = nil,
		route: CodeableConcept? = nil,
		site: CodeableConcept? = nil,
		status: FHIRPrimitive<MedicationAdministrationStatus>,
		text: Narrative? = nil,
		vaccinationProtocol: [ImmunizationVaccinationProtocol]? = nil,
		vaccineCode: CodeableConcept,
		wasNotGiven: FHIRPrimitive<FHIRBool>
	) {
		self.contained = contained
		self.date = date
		self.doseQuantity = doseQuantity
		self.encounter = encounter
		self.expirationDate = expirationDate
		self.explanation = explanation
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.lotNumber = lotNumber
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.patient = patient
		self.performer = performer
		self.reaction = reaction
		self.reported = reported
		self.requester = requester
		self.route = route
		self.site = site
		self.status = status
		self.text = text
		self.vaccinationProtocol = vaccinationProtocol
		self.vaccineCode = vaccineCode
		self.wasNotGiven = wasNotGiven
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case date; case _date
		case doseQuantity
		case encounter
		case expirationDate; case _expirationDate
		case explanation
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case lotNumber; case _lotNumber
		case manufacturer
		case meta
		case modifierExtension
		case note
		case patient
		case performer
		case reaction
		case reported; case _reported
		case requester
		case route
		case site
		case status; case _status
		case text
		case vaccinationProtocol
		case vaccineCode
		case wasNotGiven; case _wasNotGiven
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.explanation = try ImmunizationExplanation(from: _container, forKeyIfPresent: .explanation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.reaction = try [ImmunizationReaction](from: _container, forKeyIfPresent: .reaction)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .reported, auxiliaryKey: ._reported)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<MedicationAdministrationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.vaccinationProtocol = try [ImmunizationVaccinationProtocol](from: _container, forKeyIfPresent: .vaccinationProtocol)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
		self.wasNotGiven = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .wasNotGiven, auxiliaryKey: ._wasNotGiven)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try doseQuantity?.encode(on: &_container, forKey: .doseQuantity)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try explanation?.encode(on: &_container, forKey: .explanation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try reported.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
		try requester?.encode(on: &_container, forKey: .requester)
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try vaccinationProtocol?.encode(on: &_container, forKey: .vaccinationProtocol)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
		try wasNotGiven.encode(on: &_container, forKey: .wasNotGiven, auxiliaryKey: ._wasNotGiven)
	}
}

/**
 Administration/non-administration reasons.
 
 Reasons why a vaccine was or was not administered.
 */
public struct ImmunizationExplanation: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Why immunization occurred
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]? = nil,
		reasonNotGiven: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.reasonNotGiven = reasonNotGiven
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case reasonNotGiven
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.reasonNotGiven = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotGiven)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try reasonNotGiven?.encode(on: &_container, forKey: .reasonNotGiven)
	}
}

/**
 Details of a reaction that follows immunization.
 
 Categorical data indicating that an adverse event is associated in time to an immunization.
 */
public struct ImmunizationReaction: BackboneElement {
	
	/// When reaction started
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates self-reported reaction
	public var reported: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		detail: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reported: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.date = date
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reported = reported
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reported; case _reported
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detail = try Reference(from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reported, auxiliaryKey: ._reported)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reported?.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
	}
}

/**
 What protocol was followed.
 
 Contains information about the protocol(s) under which the vaccine was administered.
 */
public struct ImmunizationVaccinationProtocol: BackboneElement {
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Details of vaccine protocol
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Dose number within series
	public var doseSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Indicates if dose counts towards immunity
	public var doseStatus: CodeableConcept
	
	/// Why dose does (not) count
	public var doseStatusReason: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Recommended number of doses for immunity
	public var seriesDoses: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Disease immunized against
	public var targetDisease: [CodeableConcept]
	
	/// Designated initializer
	public init(
		authority: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		doseSequence: FHIRPrimitive<FHIRPositiveInteger>,
		doseStatus: CodeableConcept,
		doseStatusReason: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		series: FHIRPrimitive<FHIRString>? = nil,
		seriesDoses: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		targetDisease: [CodeableConcept]
	) {
		self.authority = authority
		self.description_fhir = description_fhir
		self.doseSequence = doseSequence
		self.doseStatus = doseStatus
		self.doseStatusReason = doseStatusReason
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.series = series
		self.seriesDoses = seriesDoses
		self.targetDisease = targetDisease
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case description_fhir = "description"; case _description_fhir = "_description"
		case doseSequence; case _doseSequence
		case doseStatus
		case doseStatusReason
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case series; case _series
		case seriesDoses; case _seriesDoses
		case targetDisease
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doseSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
		self.doseStatus = try CodeableConcept(from: _container, forKey: .doseStatus)
		self.doseStatusReason = try CodeableConcept(from: _container, forKeyIfPresent: .doseStatusReason)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		self.seriesDoses = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .seriesDoses, auxiliaryKey: ._seriesDoses)
		self.targetDisease = try [CodeableConcept](from: _container, forKey: .targetDisease)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try doseSequence.encode(on: &_container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
		try doseStatus.encode(on: &_container, forKey: .doseStatus)
		try doseStatusReason?.encode(on: &_container, forKey: .doseStatusReason)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		try seriesDoses?.encode(on: &_container, forKey: .seriesDoses, auxiliaryKey: ._seriesDoses)
		try targetDisease.encode(on: &_container, forKey: .targetDisease)
	}
}
