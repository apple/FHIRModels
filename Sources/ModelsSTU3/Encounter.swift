//
//  Encounter.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Encounter)
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
 An interaction during which services are provided to the patient.
 
 An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 assessing the health status of a patient.
 */
open class Encounter: DomainResource {
	
	override open class var resourceType: ResourceType { return .encounter }
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// None
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// List of past encounter statuses
	public var statusHistory: [EncounterStatusHistory]?
	
	/// inpatient | outpatient | ambulatory | emergency +
	public var `class`: Coding?
	
	/// List of past encounter classes
	public var classHistory: [EncounterClassHistory]?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// The patient ro group present at the encounter
	public var subject: Reference?
	
	/// Episode(s) of care that this encounter should be recorded against
	public var episodeOfCare: [Reference]?
	
	/// The ReferralRequest that initiated this encounter
	public var incomingReferral: [Reference]?
	
	/// List of participants involved in the encounter
	public var participant: [EncounterParticipant]?
	
	/// The appointment that scheduled this encounter
	public var appointment: Reference?
	
	/// The start and end time of the encounter
	public var period: Period?
	
	/// Quantity of time the encounter lasted (less time absent)
	public var length: Duration?
	
	/// Reason the encounter takes place (code)
	public var reason: [CodeableConcept]?
	
	/// The list of diagnosis relevant to this encounter
	public var diagnosis: [EncounterDiagnosis]?
	
	/// The set of accounts that may be used for billing for this Encounter
	public var account: [Reference]?
	
	/// Details about the admission to a healthcare service
	public var hospitalization: EncounterHospitalization?
	
	/// List of locations where the patient has been
	public var location: [EncounterLocation]?
	
	/// The custodian organization of this Encounter record
	public var serviceProvider: Reference?
	
	/// Another Encounter this encounter is part of
	public var partOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EncounterStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							account: [Reference]? = nil,
							appointment: Reference? = nil,
							`class`: Coding? = nil,
							classHistory: [EncounterClassHistory]? = nil,
							contained: [ResourceProxy]? = nil,
							diagnosis: [EncounterDiagnosis]? = nil,
							episodeOfCare: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							hospitalization: EncounterHospitalization? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							incomingReferral: [Reference]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							length: Duration? = nil,
							location: [EncounterLocation]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							partOf: Reference? = nil,
							participant: [EncounterParticipant]? = nil,
							period: Period? = nil,
							priority: CodeableConcept? = nil,
							reason: [CodeableConcept]? = nil,
							serviceProvider: Reference? = nil,
							status: FHIRPrimitive<EncounterStatus>,
							statusHistory: [EncounterStatusHistory]? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init(status: status)
		self.account = account
		self.appointment = appointment
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
		self.incomingReferral = incomingReferral
		self.language = language
		self.length = length
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.partOf = partOf
		self.participant = participant
		self.period = period
		self.priority = priority
		self.reason = reason
		self.serviceProvider = serviceProvider
		self.statusHistory = statusHistory
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case appointment
		case `class` = "class"
		case classHistory
		case diagnosis
		case episodeOfCare
		case hospitalization
		case identifier
		case incomingReferral
		case length
		case location
		case partOf
		case participant
		case period
		case priority
		case reason
		case serviceProvider
		case status; case _status
		case statusHistory
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.appointment = try Reference(from: _container, forKeyIfPresent: .appointment)
		self.`class` = try Coding(from: _container, forKeyIfPresent: .`class`)
		self.classHistory = try [EncounterClassHistory](from: _container, forKeyIfPresent: .classHistory)
		self.diagnosis = try [EncounterDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.episodeOfCare = try [Reference](from: _container, forKeyIfPresent: .episodeOfCare)
		self.hospitalization = try EncounterHospitalization(from: _container, forKeyIfPresent: .hospitalization)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.incomingReferral = try [Reference](from: _container, forKeyIfPresent: .incomingReferral)
		self.length = try Duration(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterLocation](from: _container, forKeyIfPresent: .location)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.participant = try [EncounterParticipant](from: _container, forKeyIfPresent: .participant)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.serviceProvider = try Reference(from: _container, forKeyIfPresent: .serviceProvider)
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EncounterStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try appointment?.encode(on: &_container, forKey: .appointment)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try classHistory?.encode(on: &_container, forKey: .classHistory)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try episodeOfCare?.encode(on: &_container, forKey: .episodeOfCare)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try incomingReferral?.encode(on: &_container, forKey: .incomingReferral)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try participant?.encode(on: &_container, forKey: .participant)
		try period?.encode(on: &_container, forKey: .period)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try serviceProvider?.encode(on: &_container, forKey: .serviceProvider)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
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
		    && appointment == _other.appointment
		    && `class` == _other.`class`
		    && classHistory == _other.classHistory
		    && diagnosis == _other.diagnosis
		    && episodeOfCare == _other.episodeOfCare
		    && hospitalization == _other.hospitalization
		    && identifier == _other.identifier
		    && incomingReferral == _other.incomingReferral
		    && length == _other.length
		    && location == _other.location
		    && partOf == _other.partOf
		    && participant == _other.participant
		    && period == _other.period
		    && priority == _other.priority
		    && reason == _other.reason
		    && serviceProvider == _other.serviceProvider
		    && status == _other.status
		    && statusHistory == _other.statusHistory
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(appointment)
		hasher.combine(`class`)
		hasher.combine(classHistory)
		hasher.combine(diagnosis)
		hasher.combine(episodeOfCare)
		hasher.combine(hospitalization)
		hasher.combine(identifier)
		hasher.combine(incomingReferral)
		hasher.combine(length)
		hasher.combine(location)
		hasher.combine(partOf)
		hasher.combine(participant)
		hasher.combine(period)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(serviceProvider)
		hasher.combine(status)
		hasher.combine(statusHistory)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 List of past encounter classes.
 
 The class history permits the tracking of the encounters transitions without needing to go  through the resource
 history.
 
 This would be used for a case where an admission starts of as an emergency encounter, then transisions into an
 inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more
 easily follow the patient and not require re-processing and not get lost or cancelled during a kindof discharge from
 emergency to inpatient.
 */
open class EncounterClassHistory: BackboneElement {
	
	/// inpatient | outpatient | ambulatory | emergency +
	public var `class`: Coding
	
	/// The time that the episode was in the specified class
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(`class`: Coding, period: Period) {
		self.`class` = `class`
		self.period = period
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`class`: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period)
	{
		self.init(class: `class`, period: period)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `class` = "class"
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.`class` = try Coding(from: _container, forKey: .`class`)
		self.period = try Period(from: _container, forKey: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try `class`.encode(on: &_container, forKey: .`class`)
		try period.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterClassHistory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return `class` == _other.`class`
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`class`)
		hasher.combine(period)
	}
}

/**
 The list of diagnosis relevant to this encounter.
 */
open class EncounterDiagnosis: BackboneElement {
	
	/// Reason the encounter takes place (resource)
	public var condition: Reference
	
	/// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)
	public var role: CodeableConcept?
	
	/// Ranking of the diagnosis (for each role type)
	public var rank: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	public init(condition: Reference) {
		self.condition = condition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							condition: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							rank: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							role: CodeableConcept? = nil)
	{
		self.init(condition: condition)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rank = rank
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case rank; case _rank
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try Reference(from: _container, forKey: .condition)
		self.rank = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .rank, auxiliaryKey: ._rank)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition.encode(on: &_container, forKey: .condition)
		try rank?.encode(on: &_container, forKey: .rank, auxiliaryKey: ._rank)
		try role?.encode(on: &_container, forKey: .role)
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
		    && rank == _other.rank
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(rank)
		hasher.combine(role)
	}
}

/**
 Details about the admission to a healthcare service.
 */
open class EncounterHospitalization: BackboneElement {
	
	/// Pre-admission identifier
	public var preAdmissionIdentifier: Identifier?
	
	/// The location from which the patient came before admission
	public var origin: Reference?
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not
	/// identified as a readmission
	public var reAdmission: CodeableConcept?
	
	/// Diet preferences reported by the patient
	public var dietPreference: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member)
	public var specialCourtesy: [CodeableConcept]?
	
	/// Wheelchair, translator, stretcher, etc.
	public var specialArrangement: [CodeableConcept]?
	
	/// Location to which the patient is discharged
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
							dietPreference: [CodeableConcept]? = nil,
							dischargeDisposition: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							origin: Reference? = nil,
							preAdmissionIdentifier: Identifier? = nil,
							reAdmission: CodeableConcept? = nil,
							specialArrangement: [CodeableConcept]? = nil,
							specialCourtesy: [CodeableConcept]? = nil)
	{
		self.init()
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
		case origin
		case preAdmissionIdentifier
		case reAdmission
		case specialArrangement
		case specialCourtesy
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.admitSource = try CodeableConcept(from: _container, forKeyIfPresent: .admitSource)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dietPreference = try [CodeableConcept](from: _container, forKeyIfPresent: .dietPreference)
		self.dischargeDisposition = try CodeableConcept(from: _container, forKeyIfPresent: .dischargeDisposition)
		self.origin = try Reference(from: _container, forKeyIfPresent: .origin)
		self.preAdmissionIdentifier = try Identifier(from: _container, forKeyIfPresent: .preAdmissionIdentifier)
		self.reAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .reAdmission)
		self.specialArrangement = try [CodeableConcept](from: _container, forKeyIfPresent: .specialArrangement)
		self.specialCourtesy = try [CodeableConcept](from: _container, forKeyIfPresent: .specialCourtesy)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try admitSource?.encode(on: &_container, forKey: .admitSource)
		try destination?.encode(on: &_container, forKey: .destination)
		try dietPreference?.encode(on: &_container, forKey: .dietPreference)
		try dischargeDisposition?.encode(on: &_container, forKey: .dischargeDisposition)
		try origin?.encode(on: &_container, forKey: .origin)
		try preAdmissionIdentifier?.encode(on: &_container, forKey: .preAdmissionIdentifier)
		try reAdmission?.encode(on: &_container, forKey: .reAdmission)
		try specialArrangement?.encode(on: &_container, forKey: .specialArrangement)
		try specialCourtesy?.encode(on: &_container, forKey: .specialCourtesy)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterHospitalization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return admitSource == _other.admitSource
		    && destination == _other.destination
		    && dietPreference == _other.dietPreference
		    && dischargeDisposition == _other.dischargeDisposition
		    && origin == _other.origin
		    && preAdmissionIdentifier == _other.preAdmissionIdentifier
		    && reAdmission == _other.reAdmission
		    && specialArrangement == _other.specialArrangement
		    && specialCourtesy == _other.specialCourtesy
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(admitSource)
		hasher.combine(destination)
		hasher.combine(dietPreference)
		hasher.combine(dischargeDisposition)
		hasher.combine(origin)
		hasher.combine(preAdmissionIdentifier)
		hasher.combine(reAdmission)
		hasher.combine(specialArrangement)
		hasher.combine(specialCourtesy)
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
	/// participant is is no longer at the location, then the period will have an end date/time.
	public var status: FHIRPrimitive<EncounterLocationStatus>?
	
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
							id: FHIRPrimitive<FHIRString>? = nil,
							location: Reference,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							status: FHIRPrimitive<EncounterLocationStatus>? = nil)
	{
		self.init(location: location)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case location
		case period
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.location = try Reference(from: _container, forKey: .location)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<EncounterLocationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		return location == _other.location
		    && period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(location)
		hasher.combine(period)
		hasher.combine(status)
	}
}

/**
 List of participants involved in the encounter.
 
 The list of people responsible for providing the service.
 */
open class EncounterParticipant: BackboneElement {
	
	/// Role of participant in encounter
	public var type: [CodeableConcept]?
	
	/// Period of time during the encounter that the participant participated
	public var period: Period?
	
	/// Persons involved in the encounter other than the patient
	public var individual: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							individual: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.individual = individual
		self.modifierExtension = modifierExtension
		self.period = period
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case individual
		case period
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.individual = try Reference(from: _container, forKeyIfPresent: .individual)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try individual?.encode(on: &_container, forKey: .individual)
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
		return individual == _other.individual
		    && period == _other.period
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(individual)
		hasher.combine(period)
		hasher.combine(type)
	}
}

/**
 List of past encounter statuses.
 
 The status history permits the encounter resource to contain the status history without needing to read through the
 historical versions of the resource, or even have the server store them.
 */
open class EncounterStatusHistory: BackboneElement {
	
	/// None
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// The time that the episode was in the specified status
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(period: Period, status: FHIRPrimitive<EncounterStatus>) {
		self.period = period
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period,
							status: FHIRPrimitive<EncounterStatus>)
	{
		self.init(period: period, status: status)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Period(from: _container, forKey: .period)
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterStatusHistory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(status)
	}
}
