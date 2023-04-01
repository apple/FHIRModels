//
//  Encounter.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Encounter)
//  Copyright 2023 Apple Inc.
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
 An interaction during which services are provided to the patient.
 
 An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 assessing the health status of a patient.  Encounter is primarily used to record information about the actual
 activities that occurred, where Appointment is used to record planned activities.
 */
open class Encounter: DomainResource {
	
	override open class var resourceType: ResourceType { return .encounter }
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// The current state of the encounter (not the state of the patient within the encounter - that is subjectState).
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// Classification of patient encounter context - e.g. Inpatient, outpatient
	public var `class`: [CodeableConcept]?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// Specific type of encounter (e.g. e-mail consultation, surgical day-care, ...)
	public var type: [CodeableConcept]?
	
	/// Specific type of service
	public var serviceType: [CodeableReference]?
	
	/// The patient or group related to this encounter
	public var subject: Reference?
	
	/// The current status of the subject in relation to the Encounter
	public var subjectStatus: CodeableConcept?
	
	/// Episode(s) of care that this encounter should be recorded against
	public var episodeOfCare: [Reference]?
	
	/// The request that initiated this encounter
	public var basedOn: [Reference]?
	
	/// The group(s) that are allocated to participate in this encounter
	public var careTeam: [Reference]?
	
	/// Another Encounter this encounter is part of
	public var partOf: Reference?
	
	/// The organization (facility) responsible for this encounter
	public var serviceProvider: Reference?
	
	/// List of participants involved in the encounter
	public var participant: [EncounterParticipant]?
	
	/// The appointment that scheduled this encounter
	public var appointment: [Reference]?
	
	/// Connection details of a virtual service (e.g. conference call)
	public var virtualService: [VirtualServiceDetail]?
	
	/// The actual start and end time of the encounter
	public var actualPeriod: Period?
	
	/// The planned start date/time (or admission date) of the encounter
	public var plannedStartDate: FHIRPrimitive<DateTime>?
	
	/// The planned end date/time (or discharge date) of the encounter
	public var plannedEndDate: FHIRPrimitive<DateTime>?
	
	/// Actual quantity of time the encounter lasted (less time absent)
	public var length: Duration?
	
	/// The list of medical reasons that are expected to be addressed during the episode of care
	public var reason: [EncounterReason]?
	
	/// The list of diagnosis relevant to this encounter
	public var diagnosis: [EncounterDiagnosis]?
	
	/// The set of accounts that may be used for billing for this Encounter
	public var account: [Reference]?
	
	/// Diet preferences reported by the patient
	public var dietPreference: [CodeableConcept]?
	
	/// Wheelchair, translator, stretcher, etc
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member)
	public var specialCourtesy: [CodeableConcept]?
	
	/// Details about the admission to a healthcare service
	public var admission: EncounterAdmission?
	
	/// List of locations where the patient has been
	public var location: [EncounterLocation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EncounterStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		account: [Reference]? = nil,
		actualPeriod: Period? = nil,
		admission: EncounterAdmission? = nil,
		appointment: [Reference]? = nil,
		basedOn: [Reference]? = nil,
		careTeam: [Reference]? = nil,
		`class`: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		diagnosis: [EncounterDiagnosis]? = nil,
		dietPreference: [CodeableConcept]? = nil,
		episodeOfCare: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		length: Duration? = nil,
		location: [EncounterLocation]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		partOf: Reference? = nil,
		participant: [EncounterParticipant]? = nil,
		plannedEndDate: FHIRPrimitive<DateTime>? = nil,
		plannedStartDate: FHIRPrimitive<DateTime>? = nil,
		priority: CodeableConcept? = nil,
		reason: [EncounterReason]? = nil,
		serviceProvider: Reference? = nil,
		serviceType: [CodeableReference]? = nil,
		specialArrangement: [CodeableConcept]? = nil,
		specialCourtesy: [CodeableConcept]? = nil,
		status: FHIRPrimitive<EncounterStatus>,
		subject: Reference? = nil,
		subjectStatus: CodeableConcept? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil,
		virtualService: [VirtualServiceDetail]? = nil
	) {
		self.init(status: status)
		self.account = account
		self.actualPeriod = actualPeriod
		self.admission = admission
		self.appointment = appointment
		self.basedOn = basedOn
		self.careTeam = careTeam
		self.`class` = `class`
		self.contained = contained
		self.diagnosis = diagnosis
		self.dietPreference = dietPreference
		self.episodeOfCare = episodeOfCare
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.length = length
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.partOf = partOf
		self.participant = participant
		self.plannedEndDate = plannedEndDate
		self.plannedStartDate = plannedStartDate
		self.priority = priority
		self.reason = reason
		self.serviceProvider = serviceProvider
		self.serviceType = serviceType
		self.specialArrangement = specialArrangement
		self.specialCourtesy = specialCourtesy
		self.subject = subject
		self.subjectStatus = subjectStatus
		self.text = text
		self.type = type
		self.virtualService = virtualService
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case actualPeriod
		case admission
		case appointment
		case basedOn
		case careTeam
		case `class` = "class"
		case diagnosis
		case dietPreference
		case episodeOfCare
		case identifier
		case length
		case location
		case partOf
		case participant
		case plannedEndDate; case _plannedEndDate
		case plannedStartDate; case _plannedStartDate
		case priority
		case reason
		case serviceProvider
		case serviceType
		case specialArrangement
		case specialCourtesy
		case status; case _status
		case subject
		case subjectStatus
		case type
		case virtualService
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.actualPeriod = try Period(from: _container, forKeyIfPresent: .actualPeriod)
		self.admission = try EncounterAdmission(from: _container, forKeyIfPresent: .admission)
		self.appointment = try [Reference](from: _container, forKeyIfPresent: .appointment)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.`class` = try [CodeableConcept](from: _container, forKeyIfPresent: .`class`)
		self.diagnosis = try [EncounterDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.dietPreference = try [CodeableConcept](from: _container, forKeyIfPresent: .dietPreference)
		self.episodeOfCare = try [Reference](from: _container, forKeyIfPresent: .episodeOfCare)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.length = try Duration(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterLocation](from: _container, forKeyIfPresent: .location)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.participant = try [EncounterParticipant](from: _container, forKeyIfPresent: .participant)
		self.plannedEndDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .plannedEndDate, auxiliaryKey: ._plannedEndDate)
		self.plannedStartDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .plannedStartDate, auxiliaryKey: ._plannedStartDate)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [EncounterReason](from: _container, forKeyIfPresent: .reason)
		self.serviceProvider = try Reference(from: _container, forKeyIfPresent: .serviceProvider)
		self.serviceType = try [CodeableReference](from: _container, forKeyIfPresent: .serviceType)
		self.specialArrangement = try [CodeableConcept](from: _container, forKeyIfPresent: .specialArrangement)
		self.specialCourtesy = try [CodeableConcept](from: _container, forKeyIfPresent: .specialCourtesy)
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subjectStatus = try CodeableConcept(from: _container, forKeyIfPresent: .subjectStatus)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.virtualService = try [VirtualServiceDetail](from: _container, forKeyIfPresent: .virtualService)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try actualPeriod?.encode(on: &_container, forKey: .actualPeriod)
		try admission?.encode(on: &_container, forKey: .admission)
		try appointment?.encode(on: &_container, forKey: .appointment)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try dietPreference?.encode(on: &_container, forKey: .dietPreference)
		try episodeOfCare?.encode(on: &_container, forKey: .episodeOfCare)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try participant?.encode(on: &_container, forKey: .participant)
		try plannedEndDate?.encode(on: &_container, forKey: .plannedEndDate, auxiliaryKey: ._plannedEndDate)
		try plannedStartDate?.encode(on: &_container, forKey: .plannedStartDate, auxiliaryKey: ._plannedStartDate)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try serviceProvider?.encode(on: &_container, forKey: .serviceProvider)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try specialArrangement?.encode(on: &_container, forKey: .specialArrangement)
		try specialCourtesy?.encode(on: &_container, forKey: .specialCourtesy)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try subjectStatus?.encode(on: &_container, forKey: .subjectStatus)
		try type?.encode(on: &_container, forKey: .type)
		try virtualService?.encode(on: &_container, forKey: .virtualService)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Encounter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return account == _other.account
		    && actualPeriod == _other.actualPeriod
		    && admission == _other.admission
		    && appointment == _other.appointment
		    && basedOn == _other.basedOn
		    && careTeam == _other.careTeam
		    && `class` == _other.`class`
		    && diagnosis == _other.diagnosis
		    && dietPreference == _other.dietPreference
		    && episodeOfCare == _other.episodeOfCare
		    && identifier == _other.identifier
		    && length == _other.length
		    && location == _other.location
		    && partOf == _other.partOf
		    && participant == _other.participant
		    && plannedEndDate == _other.plannedEndDate
		    && plannedStartDate == _other.plannedStartDate
		    && priority == _other.priority
		    && reason == _other.reason
		    && serviceProvider == _other.serviceProvider
		    && serviceType == _other.serviceType
		    && specialArrangement == _other.specialArrangement
		    && specialCourtesy == _other.specialCourtesy
		    && status == _other.status
		    && subject == _other.subject
		    && subjectStatus == _other.subjectStatus
		    && type == _other.type
		    && virtualService == _other.virtualService
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(actualPeriod)
		hasher.combine(admission)
		hasher.combine(appointment)
		hasher.combine(basedOn)
		hasher.combine(careTeam)
		hasher.combine(`class`)
		hasher.combine(diagnosis)
		hasher.combine(dietPreference)
		hasher.combine(episodeOfCare)
		hasher.combine(identifier)
		hasher.combine(length)
		hasher.combine(location)
		hasher.combine(partOf)
		hasher.combine(participant)
		hasher.combine(plannedEndDate)
		hasher.combine(plannedStartDate)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(serviceProvider)
		hasher.combine(serviceType)
		hasher.combine(specialArrangement)
		hasher.combine(specialCourtesy)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(subjectStatus)
		hasher.combine(type)
		hasher.combine(virtualService)
	}
}

/**
 Details about the admission to a healthcare service.
 
 Details about the stay during which a healthcare service is provided.
 
 This does not describe the event of admitting the patient, but rather any information that is relevant from the time of
 admittance until the time of discharge.
 */
open class EncounterAdmission: BackboneElement {
	
	/// Pre-admission identifier
	public var preAdmissionIdentifier: Identifier?
	
	/// The location/organization from which the patient came before admission
	public var origin: Reference?
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// Indicates that the patient is being re-admitted
	public var reAdmission: CodeableConcept?
	
	/// Location/organization to which the patient is discharged
	public var destination: Reference?
	
	/// Category or kind of location after discharge
	public var dischargeDisposition: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		admitSource: CodeableConcept? = nil,
		destination: Reference? = nil,
		dischargeDisposition: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		origin: Reference? = nil,
		preAdmissionIdentifier: Identifier? = nil,
		reAdmission: CodeableConcept? = nil
	) {
		self.init()
		self.admitSource = admitSource
		self.destination = destination
		self.dischargeDisposition = dischargeDisposition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.origin = origin
		self.preAdmissionIdentifier = preAdmissionIdentifier
		self.reAdmission = reAdmission
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case admitSource
		case destination
		case dischargeDisposition
		case origin
		case preAdmissionIdentifier
		case reAdmission
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.admitSource = try CodeableConcept(from: _container, forKeyIfPresent: .admitSource)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dischargeDisposition = try CodeableConcept(from: _container, forKeyIfPresent: .dischargeDisposition)
		self.origin = try Reference(from: _container, forKeyIfPresent: .origin)
		self.preAdmissionIdentifier = try Identifier(from: _container, forKeyIfPresent: .preAdmissionIdentifier)
		self.reAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .reAdmission)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try admitSource?.encode(on: &_container, forKey: .admitSource)
		try destination?.encode(on: &_container, forKey: .destination)
		try dischargeDisposition?.encode(on: &_container, forKey: .dischargeDisposition)
		try origin?.encode(on: &_container, forKey: .origin)
		try preAdmissionIdentifier?.encode(on: &_container, forKey: .preAdmissionIdentifier)
		try reAdmission?.encode(on: &_container, forKey: .reAdmission)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterAdmission else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return admitSource == _other.admitSource
		    && destination == _other.destination
		    && dischargeDisposition == _other.dischargeDisposition
		    && origin == _other.origin
		    && preAdmissionIdentifier == _other.preAdmissionIdentifier
		    && reAdmission == _other.reAdmission
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(admitSource)
		hasher.combine(destination)
		hasher.combine(dischargeDisposition)
		hasher.combine(origin)
		hasher.combine(preAdmissionIdentifier)
		hasher.combine(reAdmission)
	}
}

/**
 The list of diagnosis relevant to this encounter.
 */
open class EncounterDiagnosis: BackboneElement {
	
	/// The diagnosis relevant to the encounter
	public var condition: [CodeableReference]?
	
	/// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)
	public var use: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		condition: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: [CodeableConcept]? = nil
	) {
		self.init()
		self.condition = condition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try [CodeableReference](from: _container, forKeyIfPresent: .condition)
		self.use = try [CodeableConcept](from: _container, forKeyIfPresent: .use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition?.encode(on: &_container, forKey: .condition)
		try use?.encode(on: &_container, forKey: .use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterDiagnosis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return condition == _other.condition
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(use)
	}
}

/**
 List of locations where the patient has been.
 
 List of locations where  the patient has been during this encounter.
 */
open class EncounterLocation: BackboneElement {
	
	/// Location the encounter takes place
	public var location: Reference
	
	/// The status of the participants' presence at the specified location during the period specified. If the
	/// participant is no longer at the location, then the period will have an end date/time.
	public var status: FHIRPrimitive<EncounterLocationStatus>?
	
	/// The physical type of the location (usually the level in the location hierarchy - bed, room, ward, virtual etc.)
	public var form: CodeableConcept?
	
	/// Time period during which the patient was present at the location
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(location: Reference) {
		self.location = location
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		status: FHIRPrimitive<EncounterLocationStatus>? = nil
	) {
		self.init(location: location)
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case form
		case location
		case period
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.location = try Reference(from: _container, forKey: .location)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<EncounterLocationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try form?.encode(on: &_container, forKey: .form)
		try location.encode(on: &_container, forKey: .location)
		try period?.encode(on: &_container, forKey: .period)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return form == _other.form
		    && location == _other.location
		    && period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(form)
		hasher.combine(location)
		hasher.combine(period)
		hasher.combine(status)
	}
}

/**
 List of participants involved in the encounter.
 
 The list of people responsible for providing the service.
 */
open class EncounterParticipant: BackboneElement {
	
	/// Role of participant in encounter
	public var type: [CodeableConcept]?
	
	/// Period of time during the encounter that the participant participated
	public var period: Period?
	
	/// The individual, device, or service participating in the encounter
	public var actor: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case period
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try period?.encode(on: &_container, forKey: .period)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && period == _other.period
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(period)
		hasher.combine(type)
	}
}

/**
 The list of medical reasons that are expected to be addressed during the episode of care.
 */
open class EncounterReason: BackboneElement {
	
	/// What the reason value should be used for/as
	public var use: [CodeableConcept]?
	
	/// Reason the encounter takes place (core or reference)
	public var value: [CodeableReference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: [CodeableConcept]? = nil,
		value: [CodeableReference]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.use = use
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case use
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.use = try [CodeableConcept](from: _container, forKeyIfPresent: .use)
		self.value = try [CodeableReference](from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try use?.encode(on: &_container, forKey: .use)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterReason else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return use == _other.use
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(use)
		hasher.combine(value)
	}
}
