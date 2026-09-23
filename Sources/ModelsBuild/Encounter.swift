//
//  Encounter.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Encounter)
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
 An interaction during which services are provided to the patient.
 
 An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 assessing the health status of a patient.  Encounter is primarily used to record information about the actual
 activities that occurred, where Appointment is used to record planned activities.
 */
public struct Encounter: DomainResource {
	
	public static let resourceType: ResourceType = .encounter
	
	/// The set of accounts that may be used for billing for this Encounter
	public var account: [Reference]?
	
	/// The actual start and end time of the encounter
	public var actualPeriod: Period?
	
	/// Details about the admission to a healthcare service
	public var admission: EncounterAdmission?
	
	/// The appointment that scheduled this encounter
	public var appointment: [Reference]?
	
	/// The request that initiated this encounter
	public var basedOn: [Reference]?
	
	/// A granular, workflows specific set of statuses that apply to the encounter
	public var businessStatus: [EncounterBusinessStatus]?
	
	/// The group(s) that are allocated to participate in this encounter
	public var careTeam: [Reference]?
	
	/// Classification of patient encounter context - e.g. Inpatient, outpatient
	public var `class`: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The list of diagnosis relevant to this encounter
	public var diagnosis: [EncounterDiagnosis]?
	
	/// Diet preferences reported by the patient
	public var dietPreference: [CodeableConcept]?
	
	/// Episode(s) of care that this encounter should be recorded against
	public var episodeOfCare: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Actual quantity of time the encounter lasted (less time absent)
	public var length: Duration?
	
	/// List of locations where the patient has been
	public var location: [EncounterLocation]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Another Encounter this encounter is part of
	public var partOf: Reference?
	
	/// List of participants involved in the encounter
	public var participant: [EncounterParticipant]?
	
	/// The planned end date/time (or discharge date) of the encounter
	public var plannedEndDate: FHIRPrimitive<DateTime>?
	
	/// The planned start date/time (or admission date) of the encounter
	public var plannedStartDate: FHIRPrimitive<DateTime>?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// The list of medical reasons that are expected to be addressed during the episode of care
	public var reason: [EncounterReason]?
	
	/// The organization (facility) responsible for this encounter
	public var serviceProvider: Reference?
	
	/// Specific type of service
	public var serviceType: [CodeableReference]?
	
	/// Wheelchair, translator, stretcher, etc
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member)
	public var specialCourtesy: [CodeableConcept]?
	
	/// The current state of the encounter (not the state of the patient within the encounter - that is subjectState).
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// The patient or group related to this encounter
	public var subject: Reference?
	
	/// The current status of the subject in relation to the Encounter
	public var subjectStatus: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific type of encounter (e.g. e-mail consultation, surgical day-care, ...)
	public var type: [CodeableConcept]?
	
	/// Connection details of a virtual service (e.g. conference call)
	public var virtualService: [VirtualServiceDetail]?
	
	/// Designated initializer
	public init(
		account: [Reference]? = nil,
		actualPeriod: Period? = nil,
		admission: EncounterAdmission? = nil,
		appointment: [Reference]? = nil,
		basedOn: [Reference]? = nil,
		businessStatus: [EncounterBusinessStatus]? = nil,
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
		self.account = account
		self.actualPeriod = actualPeriod
		self.admission = admission
		self.appointment = appointment
		self.basedOn = basedOn
		self.businessStatus = businessStatus
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
		self.status = status
		self.subject = subject
		self.subjectStatus = subjectStatus
		self.text = text
		self.type = type
		self.virtualService = virtualService
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case account
		case actualPeriod
		case admission
		case appointment
		case basedOn
		case businessStatus
		case careTeam
		case `class` = "class"
		case contained
		case diagnosis
		case dietPreference
		case episodeOfCare
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case length
		case location
		case meta
		case modifierExtension
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
		case text
		case type
		case virtualService
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.actualPeriod = try Period(from: _container, forKeyIfPresent: .actualPeriod)
		self.admission = try EncounterAdmission(from: _container, forKeyIfPresent: .admission)
		self.appointment = try [Reference](from: _container, forKeyIfPresent: .appointment)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.businessStatus = try [EncounterBusinessStatus](from: _container, forKeyIfPresent: .businessStatus)
		self.careTeam = try [Reference](from: _container, forKeyIfPresent: .careTeam)
		self.`class` = try [CodeableConcept](from: _container, forKeyIfPresent: .`class`)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.diagnosis = try [EncounterDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.dietPreference = try [CodeableConcept](from: _container, forKeyIfPresent: .dietPreference)
		self.episodeOfCare = try [Reference](from: _container, forKeyIfPresent: .episodeOfCare)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.length = try Duration(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterLocation](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.virtualService = try [VirtualServiceDetail](from: _container, forKeyIfPresent: .virtualService)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try actualPeriod?.encode(on: &_container, forKey: .actualPeriod)
		try admission?.encode(on: &_container, forKey: .admission)
		try appointment?.encode(on: &_container, forKey: .appointment)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try businessStatus?.encode(on: &_container, forKey: .businessStatus)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try contained?.encode(on: &_container, forKey: .contained)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try dietPreference?.encode(on: &_container, forKey: .dietPreference)
		try episodeOfCare?.encode(on: &_container, forKey: .episodeOfCare)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try virtualService?.encode(on: &_container, forKey: .virtualService)
	}
}

/**
 Details about the admission to a healthcare service.
 
 Details about the stay during which a healthcare service is provided.
 
 This does not describe the event of admitting the patient, but rather any information that is relevant from the time of
 admittance until the time of discharge.
 */
public struct EncounterAdmission: BackboneElement {
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// Location/organization to which the patient is discharged
	public var destination: Reference?
	
	/// Category or kind of location after discharge
	public var dischargeDisposition: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The location/organization from which the patient came before admission
	public var origin: Reference?
	
	/// Pre-admission identifier
	public var preAdmissionIdentifier: Identifier?
	
	/// Indicates that the patient is being re-admitted
	public var reAdmission: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case origin
		case preAdmissionIdentifier
		case reAdmission
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.admitSource = try CodeableConcept(from: _container, forKeyIfPresent: .admitSource)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dischargeDisposition = try CodeableConcept(from: _container, forKeyIfPresent: .dischargeDisposition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.origin = try Reference(from: _container, forKeyIfPresent: .origin)
		self.preAdmissionIdentifier = try Identifier(from: _container, forKeyIfPresent: .preAdmissionIdentifier)
		self.reAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .reAdmission)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try admitSource?.encode(on: &_container, forKey: .admitSource)
		try destination?.encode(on: &_container, forKey: .destination)
		try dischargeDisposition?.encode(on: &_container, forKey: .dischargeDisposition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try origin?.encode(on: &_container, forKey: .origin)
		try preAdmissionIdentifier?.encode(on: &_container, forKey: .preAdmissionIdentifier)
		try reAdmission?.encode(on: &_container, forKey: .reAdmission)
	}
}

/**
 A granular, workflows specific set of statuses that apply to the encounter.
 */
public struct EncounterBusinessStatus: BackboneElement {
	
	/// The current business status
	public var code: CodeableConcept
	
	/// When the encounter entered this business status
	public var effectiveDate: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The kind of workflow the status is tracking
	public var type: Coding?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		effectiveDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: Coding? = nil
	) {
		self.code = code
		self.effectiveDate = effectiveDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case effectiveDate; case _effectiveDate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.effectiveDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDate, auxiliaryKey: ._effectiveDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate, auxiliaryKey: ._effectiveDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The list of diagnosis relevant to this encounter.
 */
public struct EncounterDiagnosis: BackboneElement {
	
	/// The diagnosis relevant to the encounter
	public var condition: [CodeableReference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)
	public var use: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		condition: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: [CodeableConcept]? = nil
	) {
		self.condition = condition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.condition = try [CodeableReference](from: _container, forKeyIfPresent: .condition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.use = try [CodeableConcept](from: _container, forKeyIfPresent: .use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try condition?.encode(on: &_container, forKey: .condition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try use?.encode(on: &_container, forKey: .use)
	}
}

/**
 List of locations where the patient has been.
 
 List of locations where  the patient has been during this encounter.
 */
public struct EncounterLocation: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The physical type of the location (usually the level in the location hierarchy - bed, room, ward, virtual etc.)
	public var form: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Location the encounter takes place
	public var location: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Time period during which the patient was present at the location
	public var period: Period?
	
	/// The status of the participants' presence at the specified location during the period specified. If the
	/// participant is no longer at the location, then the period will have an end date/time.
	public var status: FHIRPrimitive<EncounterLocationStatus>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		status: FHIRPrimitive<EncounterLocationStatus>? = nil
	) {
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case form
		case id; case _id
		case location
		case modifierExtension
		case period
		case status; case _status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Reference(from: _container, forKey: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<EncounterLocationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}

/**
 List of participants involved in the encounter.
 
 The list of people responsible for providing the service.
 */
public struct EncounterParticipant: BackboneElement {
	
	/// The individual, device, or service participating in the encounter
	public var actor: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Period of time during the encounter that the participant participated
	public var period: Period?
	
	/// Role of participant in encounter
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		type: [CodeableConcept]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The list of medical reasons that are expected to be addressed during the episode of care.
 */
public struct EncounterReason: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What the reason value should be used for/as
	public var use: [CodeableConcept]?
	
	/// Reason the encounter takes place (core or reference)
	public var value: [CodeableReference]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: [CodeableConcept]? = nil,
		value: [CodeableReference]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.use = use
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case use
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.use = try [CodeableConcept](from: _container, forKeyIfPresent: .use)
		self.value = try [CodeableReference](from: _container, forKeyIfPresent: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try use?.encode(on: &_container, forKey: .use)
		try value?.encode(on: &_container, forKey: .value)
	}
}
