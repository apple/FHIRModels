//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Immunization)
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
 Immunization event information.
 
 Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a
 patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was
 followed.
 */
open class Immunization: DomainResource {
	
	override open class var resourceType: ResourceType { return .immunization }
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Indicates the current status of the vaccination event.
	/// Restricted to: ['in-progress', 'on-hold', 'completed', 'entered-in-error', 'stopped']
	public var status: FHIRPrimitive<MedicationAdministrationStatus>
	
	/// Vaccination administration date
	public var date: FHIRPrimitive<DateTime>?
	
	/// Vaccine product administered
	public var vaccineCode: CodeableConcept
	
	/// Who was immunized
	public var patient: Reference
	
	/// Flag for whether immunization was given
	public var wasNotGiven: FHIRPrimitive<FHIRBool>
	
	/// Indicates a self-reported record
	public var reported: FHIRPrimitive<FHIRBool>
	
	/// Who administered vaccine
	public var performer: Reference?
	
	/// Who ordered vaccination
	public var requester: Reference?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Where vaccination occurred
	public var location: Reference?
	
	/// Vaccine lot number
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Vaccine expiration date
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Vaccination notes
	public var note: [Annotation]?
	
	/// Administration/non-administration reasons
	public var explanation: ImmunizationExplanation?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, reported: FHIRPrimitive<FHIRBool>, status: FHIRPrimitive<MedicationAdministrationStatus>, vaccineCode: CodeableConcept, wasNotGiven: FHIRPrimitive<FHIRBool>) {
		self.patient = patient
		self.reported = reported
		self.status = status
		self.vaccineCode = vaccineCode
		self.wasNotGiven = wasNotGiven
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							wasNotGiven: FHIRPrimitive<FHIRBool>)
	{
		self.init(patient: patient, reported: reported, status: status, vaccineCode: vaccineCode, wasNotGiven: wasNotGiven)
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
		self.performer = performer
		self.reaction = reaction
		self.requester = requester
		self.route = route
		self.site = site
		self.text = text
		self.vaccinationProtocol = vaccinationProtocol
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case doseQuantity
		case encounter
		case expirationDate; case _expirationDate
		case explanation
		case identifier
		case location
		case lotNumber; case _lotNumber
		case manufacturer
		case note
		case patient
		case performer
		case reaction
		case reported; case _reported
		case requester
		case route
		case site
		case status; case _status
		case vaccinationProtocol
		case vaccineCode
		case wasNotGiven; case _wasNotGiven
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.explanation = try ImmunizationExplanation(from: _container, forKeyIfPresent: .explanation)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.reaction = try [ImmunizationReaction](from: _container, forKeyIfPresent: .reaction)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .reported, auxiliaryKey: ._reported)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<MedicationAdministrationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.vaccinationProtocol = try [ImmunizationVaccinationProtocol](from: _container, forKeyIfPresent: .vaccinationProtocol)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
		self.wasNotGiven = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .wasNotGiven, auxiliaryKey: ._wasNotGiven)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try doseQuantity?.encode(on: &_container, forKey: .doseQuantity)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try explanation?.encode(on: &_container, forKey: .explanation)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try reported.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
		try requester?.encode(on: &_container, forKey: .requester)
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try vaccinationProtocol?.encode(on: &_container, forKey: .vaccinationProtocol)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
		try wasNotGiven.encode(on: &_container, forKey: .wasNotGiven, auxiliaryKey: ._wasNotGiven)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Immunization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && doseQuantity == _other.doseQuantity
		    && encounter == _other.encounter
		    && expirationDate == _other.expirationDate
		    && explanation == _other.explanation
		    && identifier == _other.identifier
		    && location == _other.location
		    && lotNumber == _other.lotNumber
		    && manufacturer == _other.manufacturer
		    && note == _other.note
		    && patient == _other.patient
		    && performer == _other.performer
		    && reaction == _other.reaction
		    && reported == _other.reported
		    && requester == _other.requester
		    && route == _other.route
		    && site == _other.site
		    && status == _other.status
		    && vaccinationProtocol == _other.vaccinationProtocol
		    && vaccineCode == _other.vaccineCode
		    && wasNotGiven == _other.wasNotGiven
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(doseQuantity)
		hasher.combine(encounter)
		hasher.combine(expirationDate)
		hasher.combine(explanation)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(lotNumber)
		hasher.combine(manufacturer)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(performer)
		hasher.combine(reaction)
		hasher.combine(reported)
		hasher.combine(requester)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(status)
		hasher.combine(vaccinationProtocol)
		hasher.combine(vaccineCode)
		hasher.combine(wasNotGiven)
	}
}

/**
 Administration/non-administration reasons.
 
 Reasons why a vaccine was or was not administered.
 */
open class ImmunizationExplanation: BackboneElement {
	
	/// Why immunization occurred
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: [CodeableConcept]? = nil,
							reasonNotGiven: [CodeableConcept]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.reasonNotGiven = reasonNotGiven
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reason
		case reasonNotGiven
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.reasonNotGiven = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotGiven)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try reasonNotGiven?.encode(on: &_container, forKey: .reasonNotGiven)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationExplanation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reason == _other.reason
		    && reasonNotGiven == _other.reasonNotGiven
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reason)
		hasher.combine(reasonNotGiven)
	}
}

/**
 Details of a reaction that follows immunization.
 
 Categorical data indicating that an adverse event is associated in time to an immunization.
 */
open class ImmunizationReaction: BackboneElement {
	
	/// When reaction started
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Indicates self-reported reaction
	public var reported: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<DateTime>? = nil,
							detail: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reported: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init()
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
		case reported; case _reported
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detail = try Reference(from: _container, forKeyIfPresent: .detail)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reported, auxiliaryKey: ._reported)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detail?.encode(on: &_container, forKey: .detail)
		try reported?.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationReaction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && detail == _other.detail
		    && reported == _other.reported
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(detail)
		hasher.combine(reported)
	}
}

/**
 What protocol was followed.
 
 Contains information about the protocol(s) under which the vaccine was administered.
 */
open class ImmunizationVaccinationProtocol: BackboneElement {
	
	/// Dose number within series
	public var doseSequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Details of vaccine protocol
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Recommended number of doses for immunity
	public var seriesDoses: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Disease immunized against
	public var targetDisease: [CodeableConcept]
	
	/// Indicates if dose counts towards immunity
	public var doseStatus: CodeableConcept
	
	/// Why dose does (not) count
	public var doseStatusReason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(doseSequence: FHIRPrimitive<FHIRPositiveInteger>, doseStatus: CodeableConcept, targetDisease: [CodeableConcept]) {
		self.doseSequence = doseSequence
		self.doseStatus = doseStatus
		self.targetDisease = targetDisease
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							targetDisease: [CodeableConcept])
	{
		self.init(doseSequence: doseSequence, doseStatus: doseStatus, targetDisease: targetDisease)
		self.authority = authority
		self.description_fhir = description_fhir
		self.doseStatusReason = doseStatusReason
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.series = series
		self.seriesDoses = seriesDoses
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case description_fhir = "description"; case _description_fhir = "_description"
		case doseSequence; case _doseSequence
		case doseStatus
		case doseStatusReason
		case series; case _series
		case seriesDoses; case _seriesDoses
		case targetDisease
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doseSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
		self.doseStatus = try CodeableConcept(from: _container, forKey: .doseStatus)
		self.doseStatusReason = try CodeableConcept(from: _container, forKeyIfPresent: .doseStatusReason)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		self.seriesDoses = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .seriesDoses, auxiliaryKey: ._seriesDoses)
		self.targetDisease = try [CodeableConcept](from: _container, forKey: .targetDisease)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try doseSequence.encode(on: &_container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
		try doseStatus.encode(on: &_container, forKey: .doseStatus)
		try doseStatusReason?.encode(on: &_container, forKey: .doseStatusReason)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		try seriesDoses?.encode(on: &_container, forKey: .seriesDoses, auxiliaryKey: ._seriesDoses)
		try targetDisease.encode(on: &_container, forKey: .targetDisease)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationVaccinationProtocol else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && description_fhir == _other.description_fhir
		    && doseSequence == _other.doseSequence
		    && doseStatus == _other.doseStatus
		    && doseStatusReason == _other.doseStatusReason
		    && series == _other.series
		    && seriesDoses == _other.seriesDoses
		    && targetDisease == _other.targetDisease
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(description_fhir)
		hasher.combine(doseSequence)
		hasher.combine(doseStatus)
		hasher.combine(doseStatusReason)
		hasher.combine(series)
		hasher.combine(seriesDoses)
		hasher.combine(targetDisease)
	}
}
