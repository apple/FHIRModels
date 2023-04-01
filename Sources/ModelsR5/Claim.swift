//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Claim)
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
 Claim, Pre-determination or Pre-authorization.
 
 A provider issued list of professional services and products which have been provided, or are to be provided, to a
 patient which is sent to an insurer for reimbursement.
 */
open class Claim: DomainResource {
	
	override open class var resourceType: ResourceType { return .claim }
	
	/// Business Identifier for claim
	public var identifier: [Identifier]?
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Category or discipline
	public var type: CodeableConcept
	
	/// More granular claim type
	public var subType: CodeableConcept?
	
	/// A code to indicate whether the nature of the request is: Claim - A request to an Insurer to adjudicate the
	/// supplied charges for health care goods and services under the identified policy and to pay the determined
	/// Benefit amount, if any; Preauthorization - A request to an Insurer to adjudicate the supplied proposed future
	/// charges for health care goods and services under the identified policy and to approve the services and provide
	/// the expected benefit amounts and potentially to reserve funds to pay the benefits when Claims for the indicated
	/// services are later submitted; or, Pre-determination - A request to an Insurer to adjudicate the supplied 'what
	/// if' charges for health care goods and services under the identified policy and report back what the Benefit
	/// payable would be had the services actually been provided.
	public var use: FHIRPrimitive<Use>
	
	/// The recipient of the products and services
	public var patient: Reference
	
	/// Relevant time frame for the claim
	public var billablePeriod: Period?
	
	/// Resource creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Author of the claim
	public var enterer: Reference?
	
	/// Target
	public var insurer: Reference?
	
	/// Party responsible for the claim
	public var provider: Reference?
	
	/// Desired processing urgency
	public var priority: CodeableConcept?
	
	/// For whom to reserve funds
	public var fundsReserve: CodeableConcept?
	
	/// Prior or corollary claims
	public var related: [ClaimRelated]?
	
	/// Prescription authorizing services and products
	public var prescription: Reference?
	
	/// Original prescription if superseded by fulfiller
	public var originalPrescription: Reference?
	
	/// Recipient of benefits payable
	public var payee: ClaimPayee?
	
	/// Treatment referral
	public var referral: Reference?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Servicing facility
	public var facility: Reference?
	
	/// Package billing code
	public var diagnosisRelatedGroup: CodeableConcept?
	
	/// Event information
	public var event: [ClaimEvent]?
	
	/// Members of the care team
	public var careTeam: [ClaimCareTeam]?
	
	/// Supporting information
	public var supportingInfo: [ClaimSupportingInfo]?
	
	/// Pertinent diagnosis information
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Clinical procedures performed
	public var procedure: [ClaimProcedure]?
	
	/// Patient insurance information
	public var insurance: [ClaimInsurance]?
	
	/// Details of the event
	public var accident: ClaimAccident?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Product or service provided
	public var item: [ClaimItem]?
	
	/// Total claim cost
	public var total: Money?
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, patient: Reference, status: FHIRPrimitive<FinancialResourceStatusCodes>, type: CodeableConcept, use: FHIRPrimitive<Use>) {
		self.created = created
		self.patient = patient
		self.status = status
		self.type = type
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(created: created, patient: patient, status: status, type: type, use: use)
		self.accident = accident
		self.billablePeriod = billablePeriod
		self.careTeam = careTeam
		self.contained = contained
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
		self.patientPaid = patientPaid
		self.payee = payee
		self.prescription = prescription
		self.priority = priority
		self.procedure = procedure
		self.provider = provider
		self.referral = referral
		self.related = related
		self.subType = subType
		self.supportingInfo = supportingInfo
		self.text = text
		self.total = total
		self.traceNumber = traceNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accident
		case billablePeriod
		case careTeam
		case created; case _created
		case diagnosis
		case diagnosisRelatedGroup
		case encounter
		case enterer
		case event
		case facility
		case fundsReserve
		case identifier
		case insurance
		case insurer
		case item
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
		case total
		case traceNumber
		case type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accident = try ClaimAccident(from: _container, forKeyIfPresent: .accident)
		self.billablePeriod = try Period(from: _container, forKeyIfPresent: .billablePeriod)
		self.careTeam = try [ClaimCareTeam](from: _container, forKeyIfPresent: .careTeam)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.diagnosisRelatedGroup = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisRelatedGroup)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.event = try [ClaimEvent](from: _container, forKeyIfPresent: .event)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurance = try [ClaimInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
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
		self.total = try Money(from: _container, forKeyIfPresent: .total)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accident?.encode(on: &_container, forKey: .accident)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try diagnosisRelatedGroup?.encode(on: &_container, forKey: .diagnosisRelatedGroup)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try event?.encode(on: &_container, forKey: .event)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
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
		try total?.encode(on: &_container, forKey: .total)
		try traceNumber?.encode(on: &_container, forKey: .traceNumber)
		try type.encode(on: &_container, forKey: .type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Claim else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accident == _other.accident
		    && billablePeriod == _other.billablePeriod
		    && careTeam == _other.careTeam
		    && created == _other.created
		    && diagnosis == _other.diagnosis
		    && diagnosisRelatedGroup == _other.diagnosisRelatedGroup
		    && encounter == _other.encounter
		    && enterer == _other.enterer
		    && event == _other.event
		    && facility == _other.facility
		    && fundsReserve == _other.fundsReserve
		    && identifier == _other.identifier
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && originalPrescription == _other.originalPrescription
		    && patient == _other.patient
		    && patientPaid == _other.patientPaid
		    && payee == _other.payee
		    && prescription == _other.prescription
		    && priority == _other.priority
		    && procedure == _other.procedure
		    && provider == _other.provider
		    && referral == _other.referral
		    && related == _other.related
		    && status == _other.status
		    && subType == _other.subType
		    && supportingInfo == _other.supportingInfo
		    && total == _other.total
		    && traceNumber == _other.traceNumber
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accident)
		hasher.combine(billablePeriod)
		hasher.combine(careTeam)
		hasher.combine(created)
		hasher.combine(diagnosis)
		hasher.combine(diagnosisRelatedGroup)
		hasher.combine(encounter)
		hasher.combine(enterer)
		hasher.combine(event)
		hasher.combine(facility)
		hasher.combine(fundsReserve)
		hasher.combine(identifier)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(originalPrescription)
		hasher.combine(patient)
		hasher.combine(patientPaid)
		hasher.combine(payee)
		hasher.combine(prescription)
		hasher.combine(priority)
		hasher.combine(procedure)
		hasher.combine(provider)
		hasher.combine(referral)
		hasher.combine(related)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(supportingInfo)
		hasher.combine(total)
		hasher.combine(traceNumber)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 Details of the event.
 
 Details of an accident which resulted in injuries which required the products and services listed in the claim.
 */
open class ClaimAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case reference(Reference)
	}
	
	/// When the incident occurred
	public var date: FHIRPrimitive<FHIRDate>
	
	/// The nature of the accident
	public var type: CodeableConcept?
	
	/// Where the event occurred
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<FHIRDate>) {
		self.date = date
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		date: FHIRPrimitive<FHIRDate>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: LocationX? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(date: date)
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case locationAddress
		case locationReference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKey: .date, auxiliaryKey: ._date)
		var _t_location: LocationX? = nil
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationAddress, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		self.location = _t_location
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		if let _enum = location {
			switch _enum {
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .locationAddress)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .locationReference)
			}
		}
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimAccident else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && location == _other.location
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(location)
		hasher.combine(type)
	}
}

/**
 Members of the care team.
 
 The members of the team who provided the products and services.
 */
open class ClaimCareTeam: BackboneElement {
	
	/// Order of care team
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Practitioner or organization
	public var provider: Reference
	
	/// Indicator of the lead practitioner
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Function within the team
	public var role: CodeableConcept?
	
	/// Practitioner or provider specialization
	public var specialty: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(provider: Reference, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.provider = provider
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference,
		responsible: FHIRPrimitive<FHIRBool>? = nil,
		role: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		specialty: CodeableConcept? = nil
	) {
		self.init(provider: provider, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.responsible = responsible
		self.role = role
		self.specialty = specialty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case provider
		case responsible; case _responsible
		case role
		case sequence; case _sequence
		case specialty
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.provider = try Reference(from: _container, forKey: .provider)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try provider.encode(on: &_container, forKey: .provider)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimCareTeam else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return provider == _other.provider
		    && responsible == _other.responsible
		    && role == _other.role
		    && sequence == _other.sequence
		    && specialty == _other.specialty
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(provider)
		hasher.combine(responsible)
		hasher.combine(role)
		hasher.combine(sequence)
		hasher.combine(specialty)
	}
}

/**
 Pertinent diagnosis information.
 
 Information about diagnoses relevant to the claim items.
 */
open class ClaimDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Diagnosis instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Nature of illness or problem
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Present on admission
	public var onAdmission: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(diagnosis: DiagnosisX, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.diagnosis = diagnosis
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		diagnosis: DiagnosisX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onAdmission: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.init(diagnosis: diagnosis, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onAdmission = onAdmission
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
		case onAdmission
		case sequence; case _sequence
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.diagnosisCodeableConcept) || _container.contains(CodingKeys.diagnosisReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.diagnosisCodeableConcept, CodingKeys.diagnosisReference], debugDescription: "Must have at least one value for \"diagnosis\" but have none"))
		}
		
		// Decode all our properties
		var _t_diagnosis: DiagnosisX? = nil
		if let diagnosisCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .diagnosisCodeableConcept) {
			if _t_diagnosis != nil {
				throw DecodingError.dataCorruptedError(forKey: .diagnosisCodeableConcept, in: _container, debugDescription: "More than one value provided for \"diagnosis\"")
			}
			_t_diagnosis = .codeableConcept(diagnosisCodeableConcept)
		}
		if let diagnosisReference = try Reference(from: _container, forKeyIfPresent: .diagnosisReference) {
			if _t_diagnosis != nil {
				throw DecodingError.dataCorruptedError(forKey: .diagnosisReference, in: _container, debugDescription: "More than one value provided for \"diagnosis\"")
			}
			_t_diagnosis = .reference(diagnosisReference)
		}
		self.diagnosis = _t_diagnosis!
		self.onAdmission = try CodeableConcept(from: _container, forKeyIfPresent: .onAdmission)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch diagnosis {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .diagnosisCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .diagnosisReference)
			}
		
		try onAdmission?.encode(on: &_container, forKey: .onAdmission)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimDiagnosis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return diagnosis == _other.diagnosis
		    && onAdmission == _other.onAdmission
		    && sequence == _other.sequence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(diagnosis)
		hasher.combine(onAdmission)
		hasher.combine(sequence)
		hasher.combine(type)
	}
}

/**
 Event information.
 
 Information code for an event with a corresponding date or period.
 */
open class ClaimEvent: BackboneElement {
	
	/// All possible types for "when[x]"
	public enum WhenX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Specific event
	public var type: CodeableConcept
	
	/// Occurance date or period
	/// One of `when[x]`
	public var when: WhenX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, when: WhenX) {
		self.type = type
		self.when = when
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		when: WhenX
	) {
		self.init(type: type, when: when)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case whenDateTime; case _whenDateTime
		case whenPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.whenDateTime) || _container.contains(CodingKeys.whenPeriod) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.whenDateTime, CodingKeys.whenPeriod], debugDescription: "Must have at least one value for \"when\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_when: WhenX? = nil
		if let whenDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenDateTime, auxiliaryKey: ._whenDateTime) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenDateTime, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .dateTime(whenDateTime)
		}
		if let whenPeriod = try Period(from: _container, forKeyIfPresent: .whenPeriod) {
			if _t_when != nil {
				throw DecodingError.dataCorruptedError(forKey: .whenPeriod, in: _container, debugDescription: "More than one value provided for \"when\"")
			}
			_t_when = .period(whenPeriod)
		}
		self.when = _t_when!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch when {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .whenDateTime, auxiliaryKey: ._whenDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .whenPeriod)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && when == _other.when
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(when)
	}
}

/**
 Patient insurance information.
 
 Financial instruments for reimbursement for the health care products and services specified on the claim.
 */
open class ClaimInsurance: BackboneElement {
	
	/// Insurance instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Coverage to be used for adjudication
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Pre-assigned Claim number
	public var identifier: Identifier?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional provider contract number
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Prior authorization reference number
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference, focal: FHIRPrimitive<FHIRBool>, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.coverage = coverage
		self.focal = focal
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(coverage: coverage, focal: focal, sequence: sequence)
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case focal; case _focal
		case identifier
		case preAuthRef; case _preAuthRef
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.claimResponse = try Reference(from: _container, forKeyIfPresent: .claimResponse)
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.focal = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .focal, auxiliaryKey: ._focal)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try claimResponse?.encode(on: &_container, forKey: .claimResponse)
		try coverage.encode(on: &_container, forKey: .coverage)
		try focal.encode(on: &_container, forKey: .focal, auxiliaryKey: ._focal)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimInsurance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return businessArrangement == _other.businessArrangement
		    && claimResponse == _other.claimResponse
		    && coverage == _other.coverage
		    && focal == _other.focal
		    && identifier == _other.identifier
		    && preAuthRef == _other.preAuthRef
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(claimResponse)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(identifier)
		hasher.combine(preAuthRef)
		hasher.combine(sequence)
	}
}

/**
 Product or service provided.
 
 A claim line. Either a simple  product or service or a 'group' of details which can each be a simple items or groups of
 sub-details.
 */
open class ClaimItem: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Applicable careTeam members
	public var careTeamSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable diagnoses
	public var diagnosisSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable procedures
	public var procedureSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable exception and supporting information
	public var informationSequence: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Request or Referral for Service
	public var request: [Reference]?
	
	/// Product or service billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Date or dates of service or product delivery
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Place of service or where product was supplied
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Anatomical location
	public var bodySite: [ClaimItemBodySite]?
	
	/// Encounters associated with the listed treatments
	public var encounter: [Reference]?
	
	/// Product or service provided
	public var detail: [ClaimItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(sequence: sequence)
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
		case factor; case _factor
		case informationSequence; case _informationSequence
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try [ClaimItemBodySite](from: _container, forKeyIfPresent: .bodySite)
		self.careTeamSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.informationSequence = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationSequence, auxiliaryKey: ._informationSequence)
		var _t_location: LocationX? = nil
		if let locationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .locationCodeableConcept) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .codeableConcept(locationCodeableConcept)
		}
		if let locationAddress = try Address(from: _container, forKeyIfPresent: .locationAddress) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationAddress, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .address(locationAddress)
		}
		if let locationReference = try Reference(from: _container, forKeyIfPresent: .locationReference) {
			if _t_location != nil {
				throw DecodingError.dataCorruptedError(forKey: .locationReference, in: _container, debugDescription: "More than one value provided for \"location\"")
			}
			_t_location = .reference(locationReference)
		}
		self.location = _t_location
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedDate, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		self.serviced = _t_serviced
		self.tax = try Money(from: _container, forKeyIfPresent: .tax)
		self.traceNumber = try [Identifier](from: _container, forKeyIfPresent: .traceNumber)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try careTeamSequence?.encode(on: &_container, forKey: .careTeamSequence, auxiliaryKey: ._careTeamSequence)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisSequence?.encode(on: &_container, forKey: .diagnosisSequence, auxiliaryKey: ._diagnosisSequence)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try informationSequence?.encode(on: &_container, forKey: .informationSequence, auxiliaryKey: ._informationSequence)
		if let _enum = location {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .locationCodeableConcept)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .locationAddress)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .locationReference)
			}
		}
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && careTeamSequence == _other.careTeamSequence
		    && category == _other.category
		    && detail == _other.detail
		    && diagnosisSequence == _other.diagnosisSequence
		    && encounter == _other.encounter
		    && factor == _other.factor
		    && informationSequence == _other.informationSequence
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && patientPaid == _other.patientPaid
		    && procedureSequence == _other.procedureSequence
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && request == _other.request
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && serviced == _other.serviced
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(careTeamSequence)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(diagnosisSequence)
		hasher.combine(encounter)
		hasher.combine(factor)
		hasher.combine(informationSequence)
		hasher.combine(location)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(patientPaid)
		hasher.combine(procedureSequence)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(request)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(serviced)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Anatomical location.
 
 Physical location where the service is performed or applies.
 */
open class ClaimItemBodySite: BackboneElement {
	
	/// Location
	public var site: [CodeableReference]
	
	/// Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(site: [CodeableReference]) {
		self.site = site
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		site: [CodeableReference],
		subSite: [CodeableConcept]? = nil
	) {
		self.init(site: site)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subSite = subSite
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case site
		case subSite
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.site = try [CodeableReference](from: _container, forKey: .site)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try site.encode(on: &_container, forKey: .site)
		try subSite?.encode(on: &_container, forKey: .subSite)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimItemBodySite else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return site == _other.site
		    && subSite == _other.subSite
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(site)
		hasher.combine(subSite)
	}
}

/**
 Product or service provided.
 
 A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
open class ClaimItemDetail: BackboneElement {
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Product or service provided
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(sequence: sequence)
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
		self.subDetail = subDetail
		self.tax = tax
		self.traceNumber = traceNumber
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case factor; case _factor
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimItemDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && subDetail == _other.subDetail
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(subDetail)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Product or service provided.
 
 A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
 */
open class ClaimItemDetailSubDetail: BackboneElement {
	
	/// Item instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Number for tracking
	public var traceNumber: [Identifier]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Benefit classification
	public var category: CodeableConcept?
	
	/// Billing, service, product, or drug code
	public var productOrService: CodeableConcept?
	
	/// End of a range of codes
	public var productOrServiceEnd: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program the product or service is provided under
	public var programCode: [CodeableConcept]?
	
	/// Paid by the patient
	public var patientPaid: Money?
	
	/// Count of products or services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total tax
	public var tax: Money?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(sequence: sequence)
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
		self.tax = tax
		self.traceNumber = traceNumber
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case factor; case _factor
		case modifier
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimItemDetailSubDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && patientPaid == _other.patientPaid
		    && productOrService == _other.productOrService
		    && productOrServiceEnd == _other.productOrServiceEnd
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && tax == _other.tax
		    && traceNumber == _other.traceNumber
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(patientPaid)
		hasher.combine(productOrService)
		hasher.combine(productOrServiceEnd)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(tax)
		hasher.combine(traceNumber)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Recipient of benefits payable.
 
 The party to be reimbursed for cost of the products and services according to the terms of the policy.
 */
open class ClaimPayee: BackboneElement {
	
	/// Category of recipient
	public var type: CodeableConcept
	
	/// Recipient reference
	public var party: Reference?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		type: CodeableConcept
	) {
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case party
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try party?.encode(on: &_container, forKey: .party)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimPayee else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return party == _other.party
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(party)
		hasher.combine(type)
	}
}

/**
 Clinical procedures performed.
 
 Procedures performed on the patient relevant to the billing items with the claim.
 */
open class ClaimProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Procedure instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Category of Procedure
	public var type: [CodeableConcept]?
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Specific clinical procedure
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
	/// Unique device identifier
	public var udi: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(procedure: ProcedureX, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.procedure = procedure
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: ProcedureX,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil,
		udi: [Reference]? = nil
	) {
		self.init(procedure: procedure, sequence: sequence)
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.udi = udi
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case procedureCodeableConcept
		case procedureReference
		case sequence; case _sequence
		case type
		case udi
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.procedureCodeableConcept) || _container.contains(CodingKeys.procedureReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.procedureCodeableConcept, CodingKeys.procedureReference], debugDescription: "Must have at least one value for \"procedure\" but have none"))
		}
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		var _t_procedure: ProcedureX? = nil
		if let procedureCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .procedureCodeableConcept) {
			if _t_procedure != nil {
				throw DecodingError.dataCorruptedError(forKey: .procedureCodeableConcept, in: _container, debugDescription: "More than one value provided for \"procedure\"")
			}
			_t_procedure = .codeableConcept(procedureCodeableConcept)
		}
		if let procedureReference = try Reference(from: _container, forKeyIfPresent: .procedureReference) {
			if _t_procedure != nil {
				throw DecodingError.dataCorruptedError(forKey: .procedureReference, in: _container, debugDescription: "More than one value provided for \"procedure\"")
			}
			_t_procedure = .reference(procedureReference)
		}
		self.procedure = _t_procedure!
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		
			switch procedure {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .procedureCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .procedureReference)
			}
		
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try type?.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimProcedure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && procedure == _other.procedure
		    && sequence == _other.sequence
		    && type == _other.type
		    && udi == _other.udi
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(procedure)
		hasher.combine(sequence)
		hasher.combine(type)
		hasher.combine(udi)
	}
}

/**
 Prior or corollary claims.
 
 Other claims which are related to this claim such as prior submissions or claims for related services or for the same
 event.
 */
open class ClaimRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// How the reference claim is related
	public var relationship: CodeableConcept?
	
	/// File or case reference
	public var reference: Identifier?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		claim: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Identifier? = nil,
		relationship: CodeableConcept? = nil
	) {
		self.init()
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
		case reference
		case relationship
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.claim = try Reference(from: _container, forKeyIfPresent: .claim)
		self.reference = try Identifier(from: _container, forKeyIfPresent: .reference)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try claim?.encode(on: &_container, forKey: .claim)
		try reference?.encode(on: &_container, forKey: .reference)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimRelated else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return claim == _other.claim
		    && reference == _other.reference
		    && relationship == _other.relationship
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(claim)
		hasher.combine(reference)
		hasher.combine(relationship)
	}
}

/**
 Supporting information.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues.
 */
open class ClaimSupportingInfo: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case identifier(Identifier)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Classification of the supplied information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Data to be provided
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Explanation for the information
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.category = category
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(category: category, sequence: sequence)
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.timing = timing
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		var _t_timing: TimingX? = nil
		if let timingDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .timingDate, auxiliaryKey: ._timingDate) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDate, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .date(timingDate)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		self.timing = _t_timing
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueIdentifier = try Identifier(from: _container, forKeyIfPresent: .valueIdentifier) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueIdentifier, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .identifier(valueIdentifier)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
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
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .valueIdentifier)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimSupportingInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
		    && reason == _other.reason
		    && sequence == _other.sequence
		    && timing == _other.timing
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(reason)
		hasher.combine(sequence)
		hasher.combine(timing)
		hasher.combine(value)
	}
}
