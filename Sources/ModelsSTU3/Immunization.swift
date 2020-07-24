//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Immunization)
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
	/// Restricted to: ['completed', 'entered-in-error']
	public var status: FHIRPrimitive<MedicationAdministrationStatus>
	
	/// Flag for whether immunization was given
	public var notGiven: FHIRPrimitive<FHIRBool>
	
	/// Vaccine product administered
	public var vaccineCode: CodeableConcept
	
	/// Who was immunized
	public var patient: Reference
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Vaccination administration date
	public var date: FHIRPrimitive<DateTime>?
	
	/// Indicates context the data was recorded in
	public var primarySource: FHIRPrimitive<FHIRBool>
	
	/// Indicates the source of a secondarily reported record
	public var reportOrigin: CodeableConcept?
	
	/// Where vaccination occurred
	public var location: Reference?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
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
	
	/// Who performed event
	public var practitioner: [ImmunizationPractitioner]?
	
	/// Vaccination notes
	public var note: [Annotation]?
	
	/// Administration/non-administration reasons
	public var explanation: ImmunizationExplanation?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Designated initializer taking all required properties
	public init(notGiven: FHIRPrimitive<FHIRBool>, patient: Reference, primarySource: FHIRPrimitive<FHIRBool>, status: FHIRPrimitive<MedicationAdministrationStatus>, vaccineCode: CodeableConcept) {
		self.notGiven = notGiven
		self.patient = patient
		self.primarySource = primarySource
		self.status = status
		self.vaccineCode = vaccineCode
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
							notGiven: FHIRPrimitive<FHIRBool>,
							note: [Annotation]? = nil,
							patient: Reference,
							practitioner: [ImmunizationPractitioner]? = nil,
							primarySource: FHIRPrimitive<FHIRBool>,
							reaction: [ImmunizationReaction]? = nil,
							reportOrigin: CodeableConcept? = nil,
							route: CodeableConcept? = nil,
							site: CodeableConcept? = nil,
							status: FHIRPrimitive<MedicationAdministrationStatus>,
							text: Narrative? = nil,
							vaccinationProtocol: [ImmunizationVaccinationProtocol]? = nil,
							vaccineCode: CodeableConcept)
	{
		self.init(notGiven: notGiven, patient: patient, primarySource: primarySource, status: status, vaccineCode: vaccineCode)
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
		self.practitioner = practitioner
		self.reaction = reaction
		self.reportOrigin = reportOrigin
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
		case notGiven; case _notGiven
		case note
		case patient
		case practitioner
		case primarySource; case _primarySource
		case reaction
		case reportOrigin
		case route
		case site
		case status; case _status
		case vaccinationProtocol
		case vaccineCode
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
		self.notGiven = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .notGiven, auxiliaryKey: ._notGiven)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.practitioner = try [ImmunizationPractitioner](from: _container, forKeyIfPresent: .practitioner)
		self.primarySource = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .primarySource, auxiliaryKey: ._primarySource)
		self.reaction = try [ImmunizationReaction](from: _container, forKeyIfPresent: .reaction)
		self.reportOrigin = try CodeableConcept(from: _container, forKeyIfPresent: .reportOrigin)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<MedicationAdministrationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.vaccinationProtocol = try [ImmunizationVaccinationProtocol](from: _container, forKeyIfPresent: .vaccinationProtocol)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
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
		try notGiven.encode(on: &_container, forKey: .notGiven, auxiliaryKey: ._notGiven)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try practitioner?.encode(on: &_container, forKey: .practitioner)
		try primarySource.encode(on: &_container, forKey: .primarySource, auxiliaryKey: ._primarySource)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try reportOrigin?.encode(on: &_container, forKey: .reportOrigin)
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try vaccinationProtocol?.encode(on: &_container, forKey: .vaccinationProtocol)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
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
		    && notGiven == _other.notGiven
		    && note == _other.note
		    && patient == _other.patient
		    && practitioner == _other.practitioner
		    && primarySource == _other.primarySource
		    && reaction == _other.reaction
		    && reportOrigin == _other.reportOrigin
		    && route == _other.route
		    && site == _other.site
		    && status == _other.status
		    && vaccinationProtocol == _other.vaccinationProtocol
		    && vaccineCode == _other.vaccineCode
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
		hasher.combine(notGiven)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(practitioner)
		hasher.combine(primarySource)
		hasher.combine(reaction)
		hasher.combine(reportOrigin)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(status)
		hasher.combine(vaccinationProtocol)
		hasher.combine(vaccineCode)
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
 Who performed event.
 
 Indicates who or what performed the event.
 */
open class ImmunizationPractitioner: BackboneElement {
	
	/// What type of performance was done
	public var role: CodeableConcept?
	
	/// Individual who was performing
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
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationPractitioner else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(role)
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
	public var doseSequence: FHIRPrimitive<FHIRPositiveInteger>?
	
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
	public init(doseStatus: CodeableConcept, targetDisease: [CodeableConcept]) {
		self.doseStatus = doseStatus
		self.targetDisease = targetDisease
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: Reference? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							doseSequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							doseStatus: CodeableConcept,
							doseStatusReason: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							series: FHIRPrimitive<FHIRString>? = nil,
							seriesDoses: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							targetDisease: [CodeableConcept])
	{
		self.init(doseStatus: doseStatus, targetDisease: targetDisease)
		self.authority = authority
		self.description_fhir = description_fhir
		self.doseSequence = doseSequence
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
		self.doseSequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseSequence, auxiliaryKey: ._doseSequence)
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
		try doseSequence?.encode(on: &_container, forKey: .doseSequence, auxiliaryKey: ._doseSequence)
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
