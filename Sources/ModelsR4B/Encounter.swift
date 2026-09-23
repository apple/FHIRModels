//
//  Encounter.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Encounter)
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
	
	/// The set of accounts that may be used for billing for this Encounter
	public var account: [Reference]?
	
	/// The appointment that scheduled this encounter
	public var appointment: [Reference]?
	
	/// The ServiceRequest that initiated this encounter
	public var basedOn: [Reference]?
	
	/// Classification of patient encounter
	public var `class`: Coding
	
	/// List of past encounter classes
	public var classHistory: [EncounterClassHistory]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The list of diagnosis relevant to this encounter
	public var diagnosis: [EncounterDiagnosis]?
	
	/// Episode(s) of care that this encounter should be recorded against
	public var episodeOfCare: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Details about the admission to a healthcare service
	public var hospitalization: EncounterHospitalization?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Quantity of time the encounter lasted (less time absent)
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
	
	/// The start and end time of the encounter
	public var period: Period?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// Coded reason the encounter takes place
	public var reasonCode: [CodeableConcept]?
	
	/// Reason the encounter takes place (reference)
	public var reasonReference: [Reference]?
	
	/// The organization (facility) responsible for this encounter
	public var serviceProvider: Reference?
	
	/// Specific type of service
	public var serviceType: CodeableConcept?
	
	/// None
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// List of past encounter statuses
	public var statusHistory: [EncounterStatusHistory]?
	
	/// The patient or group present at the encounter
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		account: [Reference]? = nil,
		appointment: [Reference]? = nil,
		basedOn: [Reference]? = nil,
		`class`: Coding,
		classHistory: [EncounterClassHistory]? = nil,
		contained: [ResourceProxy]? = nil,
		diagnosis: [EncounterDiagnosis]? = nil,
		episodeOfCare: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		hospitalization: EncounterHospitalization? = nil,
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
		period: Period? = nil,
		priority: CodeableConcept? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		serviceProvider: Reference? = nil,
		serviceType: CodeableConcept? = nil,
		status: FHIRPrimitive<EncounterStatus>,
		statusHistory: [EncounterStatusHistory]? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.account = account
		self.appointment = appointment
		self.basedOn = basedOn
		self.`class` = `class`
		self.classHistory = classHistory
		self.contained = contained
		self.diagnosis = diagnosis
		self.episodeOfCare = episodeOfCare
		self.`extension` = `extension`
		self.hospitalization = hospitalization
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
		self.period = period
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.serviceProvider = serviceProvider
		self.serviceType = serviceType
		self.status = status
		self.statusHistory = statusHistory
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case account
		case appointment
		case basedOn
		case `class` = "class"
		case classHistory
		case contained
		case diagnosis
		case episodeOfCare
		case `extension` = "extension"
		case hospitalization
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
		case period
		case priority
		case reasonCode
		case reasonReference
		case serviceProvider
		case serviceType
		case status; case _status
		case statusHistory
		case subject
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.appointment = try [Reference](from: _container, forKeyIfPresent: .appointment)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.`class` = try Coding(from: _container, forKey: .`class`)
		self.classHistory = try [EncounterClassHistory](from: _container, forKeyIfPresent: .classHistory)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.diagnosis = try [EncounterDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.episodeOfCare = try [Reference](from: _container, forKeyIfPresent: .episodeOfCare)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hospitalization = try EncounterHospitalization(from: _container, forKeyIfPresent: .hospitalization)
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.serviceProvider = try Reference(from: _container, forKeyIfPresent: .serviceProvider)
		self.serviceType = try CodeableConcept(from: _container, forKeyIfPresent: .serviceType)
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EncounterStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try appointment?.encode(on: &_container, forKey: .appointment)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try `class`.encode(on: &_container, forKey: .`class`)
		try classHistory?.encode(on: &_container, forKey: .classHistory)
		try contained?.encode(on: &_container, forKey: .contained)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try episodeOfCare?.encode(on: &_container, forKey: .episodeOfCare)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
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
		try period?.encode(on: &_container, forKey: .period)
		try priority?.encode(on: &_container, forKey: .priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try serviceProvider?.encode(on: &_container, forKey: .serviceProvider)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 List of past encounter classes.
 
 The class history permits the tracking of the encounters transitions without needing to go  through the resource
 history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into
 an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more
 easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from
 emergency to inpatient.
 */
public struct EncounterClassHistory: BackboneElement {
	
	/// inpatient | outpatient | ambulatory | emergency +
	public var `class`: Coding
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The time that the episode was in the specified class
	public var period: Period
	
	/// Designated initializer
	public init(
		`class`: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period
	) {
		self.`class` = `class`
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `class` = "class"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`class` = try Coding(from: _container, forKey: .`class`)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKey: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `class`.encode(on: &_container, forKey: .`class`)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period.encode(on: &_container, forKey: .period)
	}
}

/**
 The list of diagnosis relevant to this encounter.
 */
public struct EncounterDiagnosis: BackboneElement {
	
	/// The diagnosis or procedure relevant to the encounter
	public var condition: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Ranking of the diagnosis (for each role type)
	public var rank: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)
	public var use: CodeableConcept?
	
	/// Designated initializer
	public init(
		condition: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rank: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		use: CodeableConcept? = nil
	) {
		self.condition = condition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rank = rank
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case rank; case _rank
		case use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.condition = try Reference(from: _container, forKey: .condition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rank = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rank, auxiliaryKey: ._rank)
		self.use = try CodeableConcept(from: _container, forKeyIfPresent: .use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try condition.encode(on: &_container, forKey: .condition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rank?.encode(on: &_container, forKey: .rank, auxiliaryKey: ._rank)
		try use?.encode(on: &_container, forKey: .use)
	}
}

/**
 Details about the admission to a healthcare service.
 */
public struct EncounterHospitalization: BackboneElement {
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// Location/organization to which the patient is discharged
	public var destination: Reference?
	
	/// Diet preferences reported by the patient
	public var dietPreference: [CodeableConcept]?
	
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
		destination: Reference? = nil,
		dietPreference: [CodeableConcept]? = nil,
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
		self.destination = destination
		self.dietPreference = dietPreference
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
		case destination
		case dietPreference
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
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dietPreference = try [CodeableConcept](from: _container, forKeyIfPresent: .dietPreference)
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
		try destination?.encode(on: &_container, forKey: .destination)
		try dietPreference?.encode(on: &_container, forKey: .dietPreference)
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Location the encounter takes place
	public var location: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Time period during which the patient was present at the location
	public var period: Period?
	
	/// The physical type of the location (usually the level in the location hierachy - bed room ward etc.)
	public var physicalType: CodeableConcept?
	
	/// The status of the participants' presence at the specified location during the period specified. If the
	/// participant is no longer at the location, then the period will have an end date/time.
	public var status: FHIRPrimitive<EncounterLocationStatus>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		physicalType: CodeableConcept? = nil,
		status: FHIRPrimitive<EncounterLocationStatus>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.period = period
		self.physicalType = physicalType
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case location
		case modifierExtension
		case period
		case physicalType
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
		self.physicalType = try CodeableConcept(from: _container, forKeyIfPresent: .physicalType)
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
		try physicalType?.encode(on: &_container, forKey: .physicalType)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}

/**
 List of participants involved in the encounter.
 
 The list of people responsible for providing the service.
 */
public struct EncounterParticipant: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Persons involved in the encounter other than the patient
	public var individual: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Period of time during the encounter that the participant participated
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The time that the episode was in the specified status
	public var period: Period
	
	/// None
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period,
		status: FHIRPrimitive<EncounterStatus>
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
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
