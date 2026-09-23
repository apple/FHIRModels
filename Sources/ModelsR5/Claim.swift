//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Claim)
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
 Claim, Pre-determination or Pre-authorization.
 
 A provider issued list of professional services and products which have been provided, or are to be provided, to a
 patient which is sent to an insurer for reimbursement.
 */
public struct Claim: DomainResource {
	
	public static let resourceType: ResourceType = .claim
	
	/// Details of the event
	public var accident: ClaimAccident?
	
	/// Relevant time frame for the claim
	public var billablePeriod: Period?
	
	/// Members of the care team
	public var careTeam: [ClaimCareTeam]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Resource creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Pertinent diagnosis information
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Package billing code
	public var diagnosisRelatedGroup: CodeableConcept?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Author of the claim
	public var enterer: Reference?
	
	/// Event information
	public var event: [ClaimEvent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing facility
	public var facility: Reference?
	
	/// For whom to reserve funds
	public var fundsReserve: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for claim
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Patient insurance information
	public var insurance: [ClaimInsurance]?
	
	/// Target
	public var insurer: Reference?
	
	/// Product or service provided
	public var item: [ClaimItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Original prescription if superseded by fulfiller
	public var originalPrescription: Reference?
	
	/// The recipient of the products and services
	public var patient: Reference
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Recipient of benefits payable
	public var payee: ClaimPayee?
	
	/// Prescription authorizing services and products
	public var prescription: Reference?
	
	/// Desired processing urgency
	public var priority: CodeableConcept?
	
	/// Clinical procedures performed
	public var procedure: [ClaimProcedure]?
	
	/// Party responsible for the claim
	public var provider: Reference?
	
	/// Treatment referral
	public var referral: Reference?
	
	/// Prior or corollary claims
	public var related: [ClaimRelated]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// Supporting information
	public var supportingInfo: [ClaimSupportingInfo]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Total claim cost
	public var total: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Category or discipline
	public var type: CodeableConcept
	
	/// A code to indicate whether the nature of the request is: Claim - A request to an Insurer to adjudicate the
	/// supplied charges for health care goods and services under the identified policy and to pay the determined
	/// Benefit amount, if any; Preauthorization - A request to an Insurer to adjudicate the supplied proposed future
	/// charges for health care goods and services under the identified policy and to approve the services and provide
	/// the expected benefit amounts and potentially to reserve funds to pay the benefits when Claims for the indicated
	/// services are later submitted; or, Pre-determination - A request to an Insurer to adjudicate the supplied 'what
	/// if' charges for health care goods and services under the identified policy and report back what the Benefit
	/// payable would be had the services actually been provided.
	public var use: FHIRPrimitive<Use>
	
	/// Designated initializer
	public init(
		accident: ClaimAccident? = nil,
		billablePeriod: Period? = nil,
		careTeam: [ClaimCareTeam]? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		diagnosis: [ClaimDiagnosis]? = nil,
		diagnosisRelatedGroup: CodeableConcept? = nil,
		encounter: [Reference]? = nil,
		enterer: Reference? = nil,
		event: [ClaimEvent]? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		fundsReserve: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [ClaimInsurance]? = nil,
		insurer: Reference? = nil,
		item: [ClaimItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		originalPrescription: Reference? = nil,
		patient: Reference,
		patientPaid: Money? = nil,
		payee: ClaimPayee? = nil,
		prescription: Reference? = nil,
		priority: CodeableConcept? = nil,
		procedure: [ClaimProcedure]? = nil,
		provider: Reference? = nil,
		referral: Reference? = nil,
		related: [ClaimRelated]? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		subType: CodeableConcept? = nil,
		supportingInfo: [ClaimSupportingInfo]? = nil,
		text: Narrative? = nil,
		total: Money? = nil,
		traceNumber: [Identifier]? = nil,
		type: CodeableConcept,
		use: FHIRPrimitive<Use>
	) {
		self.accident = accident
		self.billablePeriod = billablePeriod
		self.careTeam = careTeam
		self.contained = contained
		self.created = created
		self.diagnosis = diagnosis
		self.diagnosisRelatedGroup = diagnosisRelatedGroup
		self.encounter = encounter
		self.enterer = enterer
		self.event = event
		self.`extension` = `extension`
		self.facility = facility
		self.fundsReserve = fundsReserve
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.originalPrescription = originalPrescription
		self.patient = patient
		self.patientPaid = patientPaid
		self.payee = payee
		self.prescription = prescription
		self.priority = priority
		self.procedure = procedure
		self.provider = provider
		self.referral = referral
		self.related = related
		self.status = status
		self.subType = subType
		self.supportingInfo = supportingInfo
		self.text = text
		self.total = total
		self.traceNumber = traceNumber
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accident
		case billablePeriod
		case careTeam
		case contained
		case created; case _created
		case diagnosis
		case diagnosisRelatedGroup
		case encounter
		case enterer
		case event
		case `extension` = "extension"
		case facility
		case fundsReserve
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
		case originalPrescription
		case patient
		case patientPaid
		case payee
		case prescription
		case priority
		case procedure
		case provider
		case referral
		case related
		case status; case _status
		case subType
		case supportingInfo
		case text
		case total
		case traceNumber
		case type
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accident = try ClaimAccident(from: _container, forKeyIfPresent: .accident)
		self.billablePeriod = try Period(from: _container, forKeyIfPresent: .billablePeriod)
		self.careTeam = try [ClaimCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.diagnosisRelatedGroup = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisRelatedGroup)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.event = try [ClaimEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [ClaimInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.payee = try ClaimPayee(from: _container, forKeyIfPresent: .payee)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.procedure = try [ClaimProcedure](from: _container, forKeyIfPresent: .procedure)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.related = try [ClaimRelated](from: _container, forKeyIfPresent: .related)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.supportingInfo = try [ClaimSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.total = try Money(from: _container, forKeyIfPresent: .total)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKey: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accident?.encode(on: &_container, forKey: .accident)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try diagnosisRelatedGroup?.encode(on: &_container, forKey: .diagnosisRelatedGroup)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try patient.encode(on: &_container, forKey: .patient)
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try payee?.encode(on: &_container, forKey: .payee)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try priority?.encode(on: &_container, forKey: .priority)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try provider?.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try related?.encode(on: &_container, forKey: .related)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
		try total?.encode(on: &_container, forKey: .total)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try type.encode(on: &_container, forKey: .type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 Details of the event.
 
 Details of an accident which resulted in injuries which required the products and services listed in the claim.
 */
public struct ClaimAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case reference(Reference)
	}
	
	/// When the incident occurred
	public var date: FHIRPrimitive<FHIRDate>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Where the event occurred
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The nature of the accident
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<FHIRDate>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: LocationX? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case locationAddress
		case locationReference
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Self._decodeLocation(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = location {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .locationAddress)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .locationReference)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeLocation(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> LocationX? {
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		return _t_location
	}
}

/**
 Members of the care team.
 
 The members of the team who provided the products and services.
 */
public struct ClaimCareTeam: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Practitioner or organization
	public var provider: Reference
	
	/// Indicator of the lead practitioner
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Function within the team
	public var role: CodeableConcept?
	
	/// Order of care team
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Practitioner or provider specialization
	public var specialty: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference,
		responsible: FHIRPrimitive<FHIRBool>? = nil,
		role: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		specialty: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.provider = provider
		self.responsible = responsible
		self.role = role
		self.sequence = sequence
		self.specialty = specialty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case provider
		case responsible; case _responsible
		case role
		case sequence; case _sequence
		case specialty
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.provider = try Reference(from: _container, forKey: .provider)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try provider.encode(on: &_container, forKey: .provider)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try specialty?.encode(on: &_container, forKey: .specialty)
	}
}

/**
 Pertinent diagnosis information.
 
 Information about diagnoses relevant to the claim items.
 */
public struct ClaimDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Nature of illness or problem
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Present on admission
	public var onAdmission: CodeableConcept?
	
	/// Diagnosis instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		diagnosis: DiagnosisX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onAdmission: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onAdmission = onAdmission
		self.sequence = sequence
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onAdmission
		case sequence; case _sequence
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.diagnosis = try Self._decodeDiagnosis(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .onAdmission)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch diagnosis {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .diagnosisCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .diagnosisReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onAdmission?.encode(on: &_container, forKey: .onAdmission)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDiagnosis(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DiagnosisX {
		var _t_diagnosis: DiagnosisX? = nil
		if let diagnosisCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisCodeableConcept) {
			_t_diagnosis = .codeableConcept(diagnosisCodeableConcept)
		}
		if let diagnosisReference = try Reference(from: _container, forKeyIfPresent: .diagnosisReference) {
			if _t_diagnosis != nil {
				throw DecodingError.dataCorruptedError(forKey: .diagnosisReference, in: _container, debugDescription: "More than one value provided for \"diagnosis\"")
			}
			_t_diagnosis = .reference(diagnosisReference)
		}
		guard let _t_diagnosis else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.diagnosisReference)
			throw DecodingError.valueNotFound(DiagnosisX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"diagnosis\" but have none"))
		}
		return _t_diagnosis
	}
}

/**
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
public struct ClaimEvent: BackboneElement {
	
	/// All possible types for "when[x]"
	public enum WhenX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specific event
	public var type: CodeableConcept
	
	/// Occurance date or period
	/// One of `when[x]`
	public var when: WhenX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		when: WhenX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.when = when
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case whenDateTime; case _whenDateTime
		case whenPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.when = try Self._decodeWhen(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch when {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .whenDateTime, auxiliaryKey: ._whenDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .whenPeriod)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeWhen(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> WhenX {
		var _t_when: WhenX? = nil
		if let whenDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenDateTime, auxiliaryKey: ._whenDateTime) {
			_t_when = .dateTime(whenDateTime)
		}
		if let whenPeriod = try Period(from: _container, forKeyIfPresent: .whenPeriod) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenPeriod, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .period(whenPeriod)
		}
		guard let _t_when else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.whenPeriod)
			throw DecodingError.valueNotFound(WhenX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"when\" but have none"))
		}
		return _t_when
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services specified on the claim.
 */
public struct ClaimInsurance: BackboneElement {
	
	/// Additional provider contract number
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Coverage to be used for adjudication
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Pre-assigned Claim number
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Prior authorization reference number
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Insurance instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		businessArrangement: FHIRPrimitive<FHIRString>? = nil,
		claimResponse: Reference? = nil,
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case `extension` = "extension"
		case focal; case _focal
		case id; case _id
		case identifier
		case modifierExtension
		case preAuthRef; case _preAuthRef
		case sequence; case _sequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .focal, auxiliaryKey: ._focal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try coverage.encode(on: &_container, forKey: .coverage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focal.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Product or service provided.
 
 A claim line. Either a simple  product or service or a 'group' of details which can each be a simple items or groups of
 sub-details.
 */
public struct ClaimItem: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Anatomical location
	public var bodySite: [ClaimItemBodySite]?
	
	/// Applicable careTeam members
	public var careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Product or service provided
	public var detail: [ClaimItemDetail]?
	
	/// Applicable diagnoses
	public var diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Place of service or where product was supplied
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Applicable procedures
	public var procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Request or Referral for Service
	public var request: [Reference]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		bodySite: [ClaimItemBodySite]? = nil,
		careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		category: CodeableConcept? = nil,
		detail: [ClaimItemDetail]? = nil,
		diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		encounter: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		location: LocationX? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		patientPaid: Money? = nil,
		procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		request: [Reference]? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		serviced: ServicedX? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.bodySite = bodySite
		self.careTeamSequence = careTeamSequence
		self.category = category
		self.detail = detail
		self.diagnosisSequence = diagnosisSequence
		self.encounter = encounter
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.informationSequence = informationSequence
		self.location = location
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.patientPaid = patientPaid
		self.procedureSequence = procedureSequence
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.quantity = quantity
		self.request = request
		self.revenue = revenue
		self.sequence = sequence
		self.serviced = serviced
		self.tax = tax
		self.traceNumber = traceNumber
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case careTeamSequence; case _careTeamSequence
		case category
		case detail
		case diagnosisSequence; case _diagnosisSequence
		case encounter
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case informationSequence; case _informationSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case modifierExtension
		case net
		case patientPaid
		case procedureSequence; case _procedureSequence
		case productOrService
		case productOrServiceEnd
		case programCode
		case quantity
		case request
		case revenue
		case sequence; case _sequence
		case servicedDate; case _servicedDate
		case servicedPeriod
		case tax
		case traceNumber
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try [ClaimItemBodySite](from: _container, forKeyIfPresent: .bodySite)
		self.careTeamSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
		self.location = try Self._decodeLocation(from: _container)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.procedureSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureSequence, auxiliaryKey: ._procedureSequence)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.serviced = try Self._decodeServiced(from: _container)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try careTeamSequence?.encode(on: &_container, forKey: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisSequence?.encode(on: &_container, forKey: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
		if let _enum = location {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .locationAddress)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .locationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .locationReference)
		}
		}
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try procedureSequence?.encode(on: &_container, forKey: .procedureSequence, auxiliaryKey: ._procedureSequence)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try request?.encode(on: &_container, forKey: .request)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeLocation(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> LocationX? {
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			_t_location = .address(locationAddress)
		}
		if let locationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .locationCodeableConcept) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .codeableConcept(locationCodeableConcept)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		return _t_location
	}
	
	private static func _decodeServiced(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ServicedX? {
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		return _t_serviced
	}
}

/**
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
public struct ClaimItemBodySite: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Location
	public var site: [CodeableReference]
	
	/// Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		site: [CodeableReference],
		subSite: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.site = site
		self.subSite = subSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case site
		case subSite
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.site = try [CodeableReference](from: _container, forKey: .site)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try site.encode(on: &_container, forKey: .site)
		try subSite?.encode(on: &_container, forKey: .subSite)
	}
}

/**
 Product or service provided.
 
 A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
public struct ClaimItemDetail: BackboneElement {
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Product or service provided
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		subDetail: [ClaimItemDetailSubDetail]? = nil,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.subDetail = subDetail
		self.tax = tax
		self.traceNumber = traceNumber
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
		case net
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case subDetail
		case tax
		case traceNumber
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.subDetail = try [ClaimItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Product or service provided.
 
 A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
public struct ClaimItemDetailSubDetail: BackboneElement {
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Total tax
	public var tax: Money?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		patientPaid: Money? = nil,
		productOrService: CodeableConcept? = nil,
		productOrServiceEnd: CodeableConcept? = nil,
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		tax: Money? = nil,
		traceNumber: [Identifier]? = nil,
		udi: [Reference]? = nil,
		unitPrice: Money? = nil
	) {
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.patientPaid = patientPaid
		self.productOrService = productOrService
		self.productOrServiceEnd = productOrServiceEnd
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.tax = tax
		self.traceNumber = traceNumber
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
		case net
		case patientPaid
		case productOrService
		case productOrServiceEnd
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case tax
		case traceNumber
		case udi
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.patientPaid = try Money(from: _container, forKeyIfPresent: .patientPaid)
		self.productOrService = try CodeableConcept(from: _container, forKeyIfPresent: .productOrService)
		self.productOrServiceEnd = try CodeableConcept(from: _container, forKeyIfPresent: .productOrServiceEnd)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try patientPaid?.encode(on: &_container, forKey: .patientPaid)
		try productOrService?.encode(on: &_container, forKey: .productOrService)
		try productOrServiceEnd?.encode(on: &_container, forKey: .productOrServiceEnd)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try tax?.encode(on: &_container, forKey: .tax)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Recipient of benefits payable.
 
 The party to be reimbursed for cost of the products and services according to the terms of the policy.
 */
public struct ClaimPayee: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Recipient reference
	public var party: Reference?
	
	/// Category of recipient
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case party
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try party?.encode(on: &_container, forKey: .party)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Clinical procedures performed.
 
 Procedures performed on the patient relevant to the billing items with the claim.
 */
public struct ClaimProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specific clinical procedure
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
	/// Procedure instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Category of Procedure
	public var type: [CodeableConcept]?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: ProcedureX,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil,
		udi: [Reference]? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.sequence = sequence
		self.type = type
		self.udi = udi
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case procedureCodeableConcept
		case procedureReference
		case sequence; case _sequence
		case type
		case udi
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.procedure = try Self._decodeProcedure(from: _container)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch procedure {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .procedureCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .procedureReference)
		}
		
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeProcedure(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ProcedureX {
		var _t_procedure: ProcedureX? = nil
		if let procedureCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .procedureCodeableConcept) {
			_t_procedure = .codeableConcept(procedureCodeableConcept)
		}
		if let procedureReference = try Reference(from: _container, forKeyIfPresent: .procedureReference) {
			if _t_procedure != nil {
				throw DecodingError.dataCorruptedError(forKey: .procedureReference, in: _container, debugDescription: "More than one value provided for \"procedure\"")
			}
			_t_procedure = .reference(procedureReference)
		}
		guard let _t_procedure else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.procedureReference)
			throw DecodingError.valueNotFound(ProcedureX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"procedure\" but have none"))
		}
		return _t_procedure
	}
}

/**
 Prior or corollary claims.
 
 Other claims which are related to this claim such as prior submissions or claims for related services or for the same
 event.
 */
public struct ClaimRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// File or case reference
	public var reference: Identifier?
	
	/// How the reference claim is related
	public var relationship: CodeableConcept?
	
	/// Designated initializer
	public init(
		claim: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Identifier? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.claim = claim
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case claim
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference
		case relationship
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try Identifier(from: _container, forKeyIfPresent: .reference)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try claim?.encode(on: &_container, forKey: .claim)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference?.encode(on: &_container, forKey: .reference)
		try relationship?.encode(on: &_container, forKey: .relationship)
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
public struct ClaimSupportingInfo: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case identifier(Identifier)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Classification of the supplied information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Explanation for the information
	public var reason: CodeableConcept?
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Data to be provided
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		category: CodeableConcept,
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		timing: TimingX? = nil,
		value: ValueX? = nil
	) {
		self.category = category
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.sequence = sequence
		self.timing = timing
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case sequence; case _sequence
		case timingDate; case _timingDate
		case timingPeriod
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueIdentifier
		case valueQuantity
		case valueReference
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.timing = try Self._decodeTiming(from: _container)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		if let _enum = timing {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .timingDate, auxiliaryKey: ._timingDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timingPeriod)
		}
		}
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .valueIdentifier)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimingX? {
		var _t_timing: TimingX? = nil
		if let timingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .timingDate, auxiliaryKey: ._timingDate) {
			_t_timing = .date(timingDate)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		return _t_timing
	}
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		return _t_value
	}
}
