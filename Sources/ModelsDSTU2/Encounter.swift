//
//  Encounter.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Encounter)
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
 assessing the health status of a patient.
 */
public struct Encounter: DomainResource {
	
	public static let resourceType: ResourceType = .encounter
	
	/// The appointment that scheduled this encounter
	public var appointment: Reference?
	
	/// 
	/// Restricted to: ['inpatient', 'outpatient', 'ambulatory', 'emergency', 'home', 'field', 'daytime', 'virtual',
	/// 'other']
	public var `class`: FHIRPrimitive<EncounterClass>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Episode(s) of care that this encounter should be recorded against
	public var episodeOfCare: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Details about the admission to a healthcare service
	public var hospitalization: EncounterHospitalization?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The ReferralRequest that initiated this encounter
	public var incomingReferral: [Reference]?
	
	/// Reason the encounter takes place (resource)
	public var indication: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Quantity of time the encounter lasted (less time absent)
	public var length: Quantity?
	
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
	
	/// The patient present at the encounter
	public var patient: Reference?
	
	/// The start and end time of the encounter
	public var period: Period?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// Reason the encounter takes place (code)
	public var reason: [CodeableConcept]?
	
	/// The custodian organization of this Encounter record
	public var serviceProvider: Reference?
	
	/// 
	/// Restricted to: ['planned', 'arrived', 'in-progress', 'onleave', 'finished', 'cancelled']
	public var status: FHIRPrimitive<EncounterState>
	
	/// List of past encounter statuses
	public var statusHistory: [EncounterStatusHistory]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		appointment: Reference? = nil,
		`class`: FHIRPrimitive<EncounterClass>? = nil,
		contained: [ResourceProxy]? = nil,
		episodeOfCare: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		hospitalization: EncounterHospitalization? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		incomingReferral: [Reference]? = nil,
		indication: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		length: Quantity? = nil,
		location: [EncounterLocation]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		partOf: Reference? = nil,
		participant: [EncounterParticipant]? = nil,
		patient: Reference? = nil,
		period: Period? = nil,
		priority: CodeableConcept? = nil,
		reason: [CodeableConcept]? = nil,
		serviceProvider: Reference? = nil,
		status: FHIRPrimitive<EncounterState>,
		statusHistory: [EncounterStatusHistory]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.appointment = appointment
		self.`class` = `class`
		self.contained = contained
		self.episodeOfCare = episodeOfCare
		self.`extension` = `extension`
		self.hospitalization = hospitalization
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.incomingReferral = incomingReferral
		self.indication = indication
		self.language = language
		self.length = length
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.partOf = partOf
		self.participant = participant
		self.patient = patient
		self.period = period
		self.priority = priority
		self.reason = reason
		self.serviceProvider = serviceProvider
		self.status = status
		self.statusHistory = statusHistory
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case appointment
		case `class` = "class"; case _class = "_class"
		case contained
		case episodeOfCare
		case `extension` = "extension"
		case hospitalization
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case incomingReferral
		case indication
		case language; case _language
		case length
		case location
		case meta
		case modifierExtension
		case partOf
		case participant
		case patient
		case period
		case priority
		case reason
		case serviceProvider
		case status; case _status
		case statusHistory
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.appointment = try Reference(from: _container, forKeyIfPresent: .appointment)
		self.`class` = try FHIRPrimitive<EncounterClass>(from: _container, forKeyIfPresent: .`class`, auxiliaryKey: ._class)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.episodeOfCare = try [Reference](from: _container, forKeyIfPresent: .episodeOfCare)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hospitalization = try EncounterHospitalization(from: _container, forKeyIfPresent: .hospitalization)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.incomingReferral = try [Reference](from: _container, forKeyIfPresent: .incomingReferral)
		self.indication = try [Reference](from: _container, forKeyIfPresent: .indication)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.length = try Quantity(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterLocation](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.participant = try [EncounterParticipant](from: _container, forKeyIfPresent: .participant)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.serviceProvider = try Reference(from: _container, forKeyIfPresent: .serviceProvider)
		self.status = try FHIRPrimitive<EncounterState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EncounterStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try appointment?.encode(on: &_container, forKey: .appointment)
		try `class`?.encode(on: &_container, forKey: .`class`, auxiliaryKey: ._class)
		try contained?.encode(on: &_container, forKey: .contained)
		try episodeOfCare?.encode(on: &_container, forKey: .episodeOfCare)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try incomingReferral?.encode(on: &_container, forKey: .incomingReferral)
		try indication?.encode(on: &_container, forKey: .indication)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try participant?.encode(on: &_container, forKey: .participant)
		try patient?.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try serviceProvider?.encode(on: &_container, forKey: .serviceProvider)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Details about the admission to a healthcare service.
 */
public struct EncounterHospitalization: BackboneElement {
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// The admitting diagnosis as reported by admitting practitioner
	public var admittingDiagnosis: [Reference]?
	
	/// Location to which the patient is discharged
	public var destination: Reference?
	
	/// Diet preferences reported by the patient
	public var dietPreference: [CodeableConcept]?
	
	/// The final diagnosis given a patient before release from the hospital after all testing, surgery, and workup are
	/// complete
	public var dischargeDiagnosis: [Reference]?
	
	/// Category or kind of location after discharge
	public var dischargeDisposition: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The location from which the patient came before admission
	public var origin: Reference?
	
	/// Pre-admission identifier
	public var preAdmissionIdentifier: Identifier?
	
	/// The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not
	/// identified as a readmission
	public var reAdmission: CodeableConcept?
	
	/// Wheelchair, translator, stretcher, etc.
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member)
	public var specialCourtesy: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		admitSource: CodeableConcept? = nil,
		admittingDiagnosis: [Reference]? = nil,
		destination: Reference? = nil,
		dietPreference: [CodeableConcept]? = nil,
		dischargeDiagnosis: [Reference]? = nil,
		dischargeDisposition: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		origin: Reference? = nil,
		preAdmissionIdentifier: Identifier? = nil,
		reAdmission: CodeableConcept? = nil,
		specialArrangement: [CodeableConcept]? = nil,
		specialCourtesy: [CodeableConcept]? = nil
	) {
		self.admitSource = admitSource
		self.admittingDiagnosis = admittingDiagnosis
		self.destination = destination
		self.dietPreference = dietPreference
		self.dischargeDiagnosis = dischargeDiagnosis
		self.dischargeDisposition = dischargeDisposition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.origin = origin
		self.preAdmissionIdentifier = preAdmissionIdentifier
		self.reAdmission = reAdmission
		self.specialArrangement = specialArrangement
		self.specialCourtesy = specialCourtesy
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case admitSource
		case admittingDiagnosis
		case destination
		case dietPreference
		case dischargeDiagnosis
		case dischargeDisposition
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case origin
		case preAdmissionIdentifier
		case reAdmission
		case specialArrangement
		case specialCourtesy
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.admitSource = try CodeableConcept(from: _container, forKeyIfPresent: .admitSource)
		self.admittingDiagnosis = try [Reference](from: _container, forKeyIfPresent: .admittingDiagnosis)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dietPreference = try [CodeableConcept](from: _container, forKeyIfPresent: .dietPreference)
		self.dischargeDiagnosis = try [Reference](from: _container, forKeyIfPresent: .dischargeDiagnosis)
		self.dischargeDisposition = try CodeableConcept(from: _container, forKeyIfPresent: .dischargeDisposition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.origin = try Reference(from: _container, forKeyIfPresent: .origin)
		self.preAdmissionIdentifier = try Identifier(from: _container, forKeyIfPresent: .preAdmissionIdentifier)
		self.reAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .reAdmission)
		self.specialArrangement = try [CodeableConcept](from: _container, forKeyIfPresent: .specialArrangement)
		self.specialCourtesy = try [CodeableConcept](from: _container, forKeyIfPresent: .specialCourtesy)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try admitSource?.encode(on: &_container, forKey: .admitSource)
		try admittingDiagnosis?.encode(on: &_container, forKey: .admittingDiagnosis)
		try destination?.encode(on: &_container, forKey: .destination)
		try dietPreference?.encode(on: &_container, forKey: .dietPreference)
		try dischargeDiagnosis?.encode(on: &_container, forKey: .dischargeDiagnosis)
		try dischargeDisposition?.encode(on: &_container, forKey: .dischargeDisposition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try origin?.encode(on: &_container, forKey: .origin)
		try preAdmissionIdentifier?.encode(on: &_container, forKey: .preAdmissionIdentifier)
		try reAdmission?.encode(on: &_container, forKey: .reAdmission)
		try specialArrangement?.encode(on: &_container, forKey: .specialArrangement)
		try specialCourtesy?.encode(on: &_container, forKey: .specialCourtesy)
	}
}

/**
 List of locations where the patient has been.
 
 List of locations where  the patient has been during this encounter.
 */
public struct EncounterLocation: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Location the encounter takes place
	public var location: Reference
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Time period during which the patient was present at the location
	public var period: Period?
	
	/// The status of the participants' presence at the specified location during the period specified. If the
	/// participant is is no longer at the location, then the period will have an end date/time.
	/// Restricted to: ['planned', 'active', 'reserved', 'completed']
	public var status: FHIRPrimitive<EncounterLocationStatus>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		status: FHIRPrimitive<EncounterLocationStatus>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
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
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}

/**
 List of participants involved in the encounter.
 
 The list of people responsible for providing the service.
 */
public struct EncounterParticipant: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Persons involved in the encounter other than the patient
	public var individual: Reference?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Period of time during the encounter participant was present
	public var period: Period?
	
	/// Role of participant in encounter
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		individual: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.individual = individual
		self.modifierExtension = modifierExtension
		self.period = period
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case individual
		case modifierExtension
		case period
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.individual = try Reference(from: _container, forKeyIfPresent: .individual)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try individual?.encode(on: &_container, forKey: .individual)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 List of past encounter statuses.
 
 The status history permits the encounter resource to contain the status history without needing to read through the
 historical versions of the resource, or even have the server store them.
 */
public struct EncounterStatusHistory: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The time that the episode was in the specified status
	public var period: Period
	
	/// 
	/// Restricted to: ['planned', 'arrived', 'in-progress', 'onleave', 'finished', 'cancelled']
	public var status: FHIRPrimitive<EncounterState>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		status: FHIRPrimitive<EncounterState>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
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
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
		self.status = try FHIRPrimitive<EncounterState>(from: _container, forKey: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}
