//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Claim)
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
 Claim, Pre-determination or Pre-authorization.
 
 A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
 insurer for payment recovery.
 */
open class Claim: DomainResource {
	
	override open class var resourceType: ResourceType { return .claim }
	
	/// Claim number
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Type or discipline
	public var type: CodeableConcept?
	
	/// Finer grained claim type information
	public var subType: [CodeableConcept]?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	public var use: FHIRPrimitive<Use>?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Period for charge submission
	public var billablePeriod: Period?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Author
	public var enterer: Reference?
	
	/// Target
	public var insurer: Reference?
	
	/// Responsible provider
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Desired processing priority
	public var priority: CodeableConcept?
	
	/// Funds requested to be reserved
	public var fundsReserve: CodeableConcept?
	
	/// Related Claims which may be revelant to processing this claimn
	public var related: [ClaimRelated]?
	
	/// Prescription authorizing services or products
	public var prescription: Reference?
	
	/// Original prescription if superceded by fulfiller
	public var originalPrescription: Reference?
	
	/// Party to be paid any benefits payable
	public var payee: ClaimPayee?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Members of the care team
	public var careTeam: [ClaimCareTeam]?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues
	public var information: [ClaimInformation]?
	
	/// List of Diagnosis
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Procedures performed
	public var procedure: [ClaimProcedure]?
	
	/// Insurance or medical plan
	public var insurance: [ClaimInsurance]?
	
	/// Details about an accident
	public var accident: ClaimAccident?
	
	/// Period unable to work
	public var employmentImpacted: Period?
	
	/// Period in hospital
	public var hospitalization: Period?
	
	/// Goods and Services
	public var item: [ClaimItem]?
	
	/// Total claim cost
	public var total: Money?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							accident: ClaimAccident? = nil,
							billablePeriod: Period? = nil,
							careTeam: [ClaimCareTeam]? = nil,
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							diagnosis: [ClaimDiagnosis]? = nil,
							employmentImpacted: Period? = nil,
							enterer: Reference? = nil,
							`extension`: [Extension]? = nil,
							facility: Reference? = nil,
							fundsReserve: CodeableConcept? = nil,
							hospitalization: Period? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							information: [ClaimInformation]? = nil,
							insurance: [ClaimInsurance]? = nil,
							insurer: Reference? = nil,
							item: [ClaimItem]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							originalPrescription: Reference? = nil,
							patient: Reference? = nil,
							payee: ClaimPayee? = nil,
							prescription: Reference? = nil,
							priority: CodeableConcept? = nil,
							procedure: [ClaimProcedure]? = nil,
							provider: Reference? = nil,
							referral: Reference? = nil,
							related: [ClaimRelated]? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							subType: [CodeableConcept]? = nil,
							text: Narrative? = nil,
							total: Money? = nil,
							type: CodeableConcept? = nil,
							use: FHIRPrimitive<Use>? = nil)
	{
		self.init()
		self.accident = accident
		self.billablePeriod = billablePeriod
		self.careTeam = careTeam
		self.contained = contained
		self.created = created
		self.diagnosis = diagnosis
		self.employmentImpacted = employmentImpacted
		self.enterer = enterer
		self.`extension` = `extension`
		self.facility = facility
		self.fundsReserve = fundsReserve
		self.hospitalization = hospitalization
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.information = information
		self.insurance = insurance
		self.insurer = insurer
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.originalPrescription = originalPrescription
		self.patient = patient
		self.payee = payee
		self.prescription = prescription
		self.priority = priority
		self.procedure = procedure
		self.provider = provider
		self.referral = referral
		self.related = related
		self.status = status
		self.subType = subType
		self.text = text
		self.total = total
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accident
		case billablePeriod
		case careTeam
		case created; case _created
		case diagnosis
		case employmentImpacted
		case enterer
		case facility
		case fundsReserve
		case hospitalization
		case identifier
		case information
		case insurance
		case insurer
		case item
		case organization
		case originalPrescription
		case patient
		case payee
		case prescription
		case priority
		case procedure
		case provider
		case referral
		case related
		case status; case _status
		case subType
		case total
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
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.employmentImpacted = try Period(from: _container, forKeyIfPresent: .employmentImpacted)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.hospitalization = try Period(from: _container, forKeyIfPresent: .hospitalization)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.information = try [ClaimInformation](from: _container, forKeyIfPresent: .information)
		self.insurance = try [ClaimInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.payee = try ClaimPayee(from: _container, forKeyIfPresent: .payee)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.procedure = try [ClaimProcedure](from: _container, forKeyIfPresent: .procedure)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.related = try [ClaimRelated](from: _container, forKeyIfPresent: .related)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subType = try [CodeableConcept](from: _container, forKeyIfPresent: .subType)
		self.total = try Money(from: _container, forKeyIfPresent: .total)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accident?.encode(on: &_container, forKey: .accident)
		try billablePeriod?.encode(on: &_container, forKey: .billablePeriod)
		try careTeam?.encode(on: &_container, forKey: .careTeam)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try employmentImpacted?.encode(on: &_container, forKey: .employmentImpacted)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try information?.encode(on: &_container, forKey: .information)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try patient?.encode(on: &_container, forKey: .patient)
		try payee?.encode(on: &_container, forKey: .payee)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try priority?.encode(on: &_container, forKey: .priority)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try provider?.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try related?.encode(on: &_container, forKey: .related)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try total?.encode(on: &_container, forKey: .total)
		try type?.encode(on: &_container, forKey: .type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
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
		    && employmentImpacted == _other.employmentImpacted
		    && enterer == _other.enterer
		    && facility == _other.facility
		    && fundsReserve == _other.fundsReserve
		    && hospitalization == _other.hospitalization
		    && identifier == _other.identifier
		    && information == _other.information
		    && insurance == _other.insurance
		    && insurer == _other.insurer
		    && item == _other.item
		    && organization == _other.organization
		    && originalPrescription == _other.originalPrescription
		    && patient == _other.patient
		    && payee == _other.payee
		    && prescription == _other.prescription
		    && priority == _other.priority
		    && procedure == _other.procedure
		    && provider == _other.provider
		    && referral == _other.referral
		    && related == _other.related
		    && status == _other.status
		    && subType == _other.subType
		    && total == _other.total
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
		hasher.combine(employmentImpacted)
		hasher.combine(enterer)
		hasher.combine(facility)
		hasher.combine(fundsReserve)
		hasher.combine(hospitalization)
		hasher.combine(identifier)
		hasher.combine(information)
		hasher.combine(insurance)
		hasher.combine(insurer)
		hasher.combine(item)
		hasher.combine(organization)
		hasher.combine(originalPrescription)
		hasher.combine(patient)
		hasher.combine(payee)
		hasher.combine(prescription)
		hasher.combine(priority)
		hasher.combine(procedure)
		hasher.combine(provider)
		hasher.combine(referral)
		hasher.combine(related)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(total)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 Details about an accident.
 
 An accident which resulted in the need for healthcare services.
 */
open class ClaimAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Hashable {
		case address(Address)
		case reference(Reference)
	}
	
	/// When the accident occurred
	/// see information codes
	/// see information codes
	public var date: FHIRPrimitive<FHIRDate>
	
	/// The nature of the accident
	public var type: CodeableConcept?
	
	/// Accident Place
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
							type: CodeableConcept? = nil)
	{
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
 
 The members of the team who provided the overall service as well as their role and whether responsible and
 qualifications.
 */
open class ClaimCareTeam: BackboneElement {
	
	/// Number to covey order of careTeam
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Provider individual or organization
	public var provider: Reference
	
	/// Billing provider
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Role on the team
	public var role: CodeableConcept?
	
	/// Type, classification or Specialization
	public var qualification: CodeableConcept?
	
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
							qualification: CodeableConcept? = nil,
							responsible: FHIRPrimitive<FHIRBool>? = nil,
							role: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(provider: provider, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.qualification = qualification
		self.responsible = responsible
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case provider
		case qualification
		case responsible; case _responsible
		case role
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.provider = try Reference(from: _container, forKey: .provider)
		self.qualification = try CodeableConcept(from: _container, forKeyIfPresent: .qualification)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try provider.encode(on: &_container, forKey: .provider)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
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
		    && qualification == _other.qualification
		    && responsible == _other.responsible
		    && role == _other.role
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(provider)
		hasher.combine(qualification)
		hasher.combine(responsible)
		hasher.combine(role)
		hasher.combine(sequence)
	}
}

/**
 List of Diagnosis.
 
 List of patient diagnosis for which care is sought.
 */
open class ClaimDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Number to covey order of diagnosis
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Patient's diagnosis
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Package billing code
	public var packageCode: CodeableConcept?
	
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
							packageCode: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							type: [CodeableConcept]? = nil)
	{
		self.init(diagnosis: diagnosis, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageCode = packageCode
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosisCodeableConcept
		case diagnosisReference
		case packageCode
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
		self.packageCode = try CodeableConcept(from: _container, forKeyIfPresent: .packageCode)
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
		
		try packageCode?.encode(on: &_container, forKey: .packageCode)
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
		    && packageCode == _other.packageCode
		    && sequence == _other.sequence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(diagnosis)
		hasher.combine(packageCode)
		hasher.combine(sequence)
		hasher.combine(type)
	}
}

/**
 Exceptions, special considerations, the condition, situation, prior or concurrent issues.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues. Often there are mutiple jurisdiction specific valuesets which are required.
 */
open class ClaimInformation: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// General class of information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Additional Data or supporting information
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Reason associated with the information
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
							value: ValueX? = nil)
	{
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
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimInformation else {
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

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
open class ClaimInsurance: BackboneElement {
	
	/// Service instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Is the focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Insurance information
	public var coverage: Reference
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Pre-Authorization/Determination Reference
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
							modifierExtension: [Extension]? = nil,
							preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(coverage: coverage, focal: focal, sequence: sequence)
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case focal; case _focal
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
		    && preAuthRef == _other.preAuthRef
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(claimResponse)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(preAuthRef)
		hasher.combine(sequence)
	}
}

/**
 Goods and Services.
 
 First tier of goods and services.
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
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Applicable careTeam members
	public var careTeamLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable diagnoses
	public var diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable procedures
	public var procedureLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Applicable exception and supporting information
	public var informationLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Date or dates of Service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Place of service
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total item cost
	public var net: Money?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Service Location
	public var bodySite: CodeableConcept?
	
	/// Service Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Encounters related to this billed item
	public var encounter: [Reference]?
	
	/// Additional items
	public var detail: [ClaimItemDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: CodeableConcept? = nil,
							careTeamLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							category: CodeableConcept? = nil,
							detail: [ClaimItemDetail]? = nil,
							diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							encounter: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							informationLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							location: LocationX? = nil,
							modifier: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							net: Money? = nil,
							procedureLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							programCode: [CodeableConcept]? = nil,
							quantity: Quantity? = nil,
							revenue: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: CodeableConcept? = nil,
							serviced: ServicedX? = nil,
							subSite: [CodeableConcept]? = nil,
							udi: [Reference]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(sequence: sequence)
		self.bodySite = bodySite
		self.careTeamLinkId = careTeamLinkId
		self.category = category
		self.detail = detail
		self.diagnosisLinkId = diagnosisLinkId
		self.encounter = encounter
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.informationLinkId = informationLinkId
		self.location = location
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.procedureLinkId = procedureLinkId
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.service = service
		self.serviced = serviced
		self.subSite = subSite
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case careTeamLinkId; case _careTeamLinkId
		case category
		case detail
		case diagnosisLinkId; case _diagnosisLinkId
		case encounter
		case factor; case _factor
		case informationLinkId; case _informationLinkId
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case net
		case procedureLinkId; case _procedureLinkId
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
		case servicedDate; case _servicedDate
		case servicedPeriod
		case subSite
		case udi
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.careTeamLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.informationLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationLinkId, auxiliaryKey: ._informationLinkId)
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
		self.procedureLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureLinkId, auxiliaryKey: ._procedureLinkId)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
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
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try careTeamLinkId?.encode(on: &_container, forKey: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisLinkId?.encode(on: &_container, forKey: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try informationLinkId?.encode(on: &_container, forKey: .informationLinkId, auxiliaryKey: ._informationLinkId)
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
		try procedureLinkId?.encode(on: &_container, forKey: .procedureLinkId, auxiliaryKey: ._procedureLinkId)
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		if let _enum = serviced {
			switch _enum {
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .servicedPeriod)
			}
		}
		try subSite?.encode(on: &_container, forKey: .subSite)
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
		    && careTeamLinkId == _other.careTeamLinkId
		    && category == _other.category
		    && detail == _other.detail
		    && diagnosisLinkId == _other.diagnosisLinkId
		    && encounter == _other.encounter
		    && factor == _other.factor
		    && informationLinkId == _other.informationLinkId
		    && location == _other.location
		    && modifier == _other.modifier
		    && net == _other.net
		    && procedureLinkId == _other.procedureLinkId
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && service == _other.service
		    && serviced == _other.serviced
		    && subSite == _other.subSite
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(careTeamLinkId)
		hasher.combine(category)
		hasher.combine(detail)
		hasher.combine(diagnosisLinkId)
		hasher.combine(encounter)
		hasher.combine(factor)
		hasher.combine(informationLinkId)
		hasher.combine(location)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(procedureLinkId)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(serviced)
		hasher.combine(subSite)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Additional items.
 
 Second tier of goods and services.
 */
open class ClaimItemDetail: BackboneElement {
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Total additional item cost
	public var net: Money?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Additional items
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
							programCode: [CodeableConcept]? = nil,
							quantity: Quantity? = nil,
							revenue: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: CodeableConcept? = nil,
							subDetail: [ClaimItemDetailSubDetail]? = nil,
							udi: [Reference]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(sequence: sequence)
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.service = service
		self.subDetail = subDetail
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case factor; case _factor
		case modifier
		case net
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
		case subDetail
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.subDetail = try [ClaimItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
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
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && service == _other.service
		    && subDetail == _other.subDetail
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(subDetail)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Additional items.
 
 Third tier of goods and services.
 */
open class ClaimItemDetailSubDetail: BackboneElement {
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Net additional item cost
	public var net: Money?
	
	/// Unique Device Identifier
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
							programCode: [CodeableConcept]? = nil,
							quantity: Quantity? = nil,
							revenue: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: CodeableConcept? = nil,
							udi: [Reference]? = nil,
							unitPrice: Money? = nil)
	{
		self.init(sequence: sequence)
		self.category = category
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.service = service
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case factor; case _factor
		case modifier
		case net
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
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
		    && programCode == _other.programCode
		    && quantity == _other.quantity
		    && revenue == _other.revenue
		    && sequence == _other.sequence
		    && service == _other.service
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(programCode)
		hasher.combine(quantity)
		hasher.combine(revenue)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Party to be paid any benefits payable.
 
 The party to be reimbursed for the services.
 */
open class ClaimPayee: BackboneElement {
	
	/// Type of party: Subscriber, Provider, other
	public var type: CodeableConcept
	
	/// organization | patient | practitioner | relatedperson
	public var resourceType: Coding?
	
	/// Party to receive the payable
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
							resourceType: Coding? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.resourceType = resourceType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case party
		case resourceType
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.resourceType = try Coding(from: _container, forKeyIfPresent: .resourceType)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try party?.encode(on: &_container, forKey: .party)
		try resourceType?.encode(on: &_container, forKey: .resourceType)
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
		    && resourceType == _other.resourceType
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(party)
		hasher.combine(resourceType)
		hasher.combine(type)
	}
}

/**
 Procedures performed.
 
 Ordered list of patient procedures performed to support the adjudication.
 */
open class ClaimProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Procedure sequence for reference
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Patient's list of procedures performed
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
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
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(procedure: procedure, sequence: sequence)
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case procedureCodeableConcept
		case procedureReference
		case sequence; case _sequence
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
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(procedure)
		hasher.combine(sequence)
	}
}

/**
 Related Claims which may be revelant to processing this claimn.
 
 Other claims which are related to this claim such as prior claim versions or for related services.
 */
open class ClaimRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// How the reference claim is related
	public var relationship: CodeableConcept?
	
	/// Related file or case reference
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
							relationship: CodeableConcept? = nil)
	{
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
