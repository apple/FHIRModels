//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Claim)
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
 
 A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
 insurer for payment recovery.
 */
public struct Claim: DomainResource {
	
	public static let resourceType: ResourceType = .claim
	
	/// Details about an accident
	public var accident: ClaimAccident?
	
	/// Period for charge submission
	public var billablePeriod: Period?
	
	/// Members of the care team
	public var careTeam: [ClaimCareTeam]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// List of Diagnosis
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Period unable to work
	public var employmentImpacted: Period?
	
	/// Author
	public var enterer: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Funds requested to be reserved
	public var fundsReserve: CodeableConcept?
	
	/// Period in hospital
	public var hospitalization: Period?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Claim number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues
	public var information: [ClaimInformation]?
	
	/// Insurance or medical plan
	public var insurance: [ClaimInsurance]?
	
	/// Target
	public var insurer: Reference?
	
	/// Goods and Services
	public var item: [ClaimItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original prescription if superceded by fulfiller
	public var originalPrescription: Reference?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Party to be paid any benefits payable
	public var payee: ClaimPayee?
	
	/// Prescription authorizing services or products
	public var prescription: Reference?
	
	/// Desired processing priority
	public var priority: CodeableConcept?
	
	/// Procedures performed
	public var procedure: [ClaimProcedure]?
	
	/// Responsible provider
	public var provider: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Related Claims which may be revelant to processing this claimn
	public var related: [ClaimRelated]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Finer grained claim type information
	public var subType: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Total claim cost
	public var total: Money?
	
	/// Type or discipline
	public var type: CodeableConcept?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	public var use: FHIRPrimitive<Use>?
	
	/// Designated initializer
	public init(
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
		use: FHIRPrimitive<Use>? = nil
	) {
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
		case resourceType
		case accident
		case billablePeriod
		case careTeam
		case contained
		case created; case _created
		case diagnosis
		case employmentImpacted
		case enterer
		case `extension` = "extension"
		case facility
		case fundsReserve
		case hospitalization
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case information
		case insurance
		case insurer
		case item
		case language; case _language
		case meta
		case modifierExtension
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
		case text
		case total
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
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.employmentImpacted = try Period(from: _container, forKeyIfPresent: .employmentImpacted)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try CodeableConcept(from: _container, forKeyIfPresent: .fundsReserve)
		self.hospitalization = try Period(from: _container, forKeyIfPresent: .hospitalization)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.information = try [ClaimInformation](from: _container, forKeyIfPresent: .information)
		self.insurance = try [ClaimInsurance](from: _container, forKeyIfPresent: .insurance)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.total = try Money(from: _container, forKeyIfPresent: .total)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
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
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try employmentImpacted?.encode(on: &_container, forKey: .employmentImpacted)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try information?.encode(on: &_container, forKey: .information)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try total?.encode(on: &_container, forKey: .total)
		try type?.encode(on: &_container, forKey: .type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 Details about an accident.
 
 An accident which resulted in the need for healthcare services.
 */
public struct ClaimAccident: BackboneElement {
	
	/// All possible types for "location[x]"
	public enum LocationX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case reference(Reference)
	}
	
	/// When the accident occurred
	/// see information codes
	/// see information codes
	public var date: FHIRPrimitive<FHIRDate>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Accident Place
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Extensions that cannot be ignored
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
 
 The members of the team who provided the overall service as well as their role and whether responsible and
 qualifications.
 */
public struct ClaimCareTeam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Provider individual or organization
	public var provider: Reference
	
	/// Type, classification or Specialization
	public var qualification: CodeableConcept?
	
	/// Billing provider
	public var responsible: FHIRPrimitive<FHIRBool>?
	
	/// Role on the team
	public var role: CodeableConcept?
	
	/// Number to covey order of careTeam
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference,
		qualification: CodeableConcept? = nil,
		responsible: FHIRPrimitive<FHIRBool>? = nil,
		role: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.provider = provider
		self.qualification = qualification
		self.responsible = responsible
		self.role = role
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case provider
		case qualification
		case responsible; case _responsible
		case role
		case sequence; case _sequence
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
		self.qualification = try CodeableConcept(from: _container, forKeyIfPresent: .qualification)
		self.responsible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try provider.encode(on: &_container, forKey: .provider)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try role?.encode(on: &_container, forKey: .role)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 List of Diagnosis.
 
 List of patient diagnosis for which care is sought.
 */
public struct ClaimDiagnosis: BackboneElement {
	
	/// All possible types for "diagnosis[x]"
	public enum DiagnosisX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Patient's diagnosis
	/// One of `diagnosis[x]`
	public var diagnosis: DiagnosisX
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Package billing code
	public var packageCode: CodeableConcept?
	
	/// Number to covey order of diagnosis
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Timing or nature of the diagnosis
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		diagnosis: DiagnosisX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		packageCode: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		type: [CodeableConcept]? = nil
	) {
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageCode = packageCode
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
		case packageCode
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
		self.packageCode = try CodeableConcept(from: _container, forKeyIfPresent: .packageCode)
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
		try packageCode?.encode(on: &_container, forKey: .packageCode)
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
 Exceptions, special considerations, the condition, situation, prior or concurrent issues.
 
 Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 concurrent issues. Often there are mutiple jurisdiction specific valuesets which are required.
 */
public struct ClaimInformation: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// General class of information
	public var category: CodeableConcept
	
	/// Type of information
	public var code: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reason associated with the information
	public var reason: CodeableConcept?
	
	/// Information instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// When it occurred
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Additional Data or supporting information
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

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public struct ClaimInsurance: BackboneElement {
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Is the focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Service instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		businessArrangement: FHIRPrimitive<FHIRString>? = nil,
		claimResponse: Reference? = nil,
		coverage: Reference,
		`extension`: [Extension]? = nil,
		focal: FHIRPrimitive<FHIRBool>,
		id: FHIRPrimitive<FHIRString>? = nil,
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
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Goods and Services.
 
 First tier of goods and services.
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
	
	/// Service Location
	public var bodySite: CodeableConcept?
	
	/// Applicable careTeam members
	public var careTeamLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional items
	public var detail: [ClaimItemDetail]?
	
	/// Applicable diagnoses
	public var diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Encounters related to this billed item
	public var encounter: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Applicable exception and supporting information
	public var informationLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Place of service
	/// One of `location[x]`
	public var location: LocationX?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Money?
	
	/// Applicable procedures
	public var procedureLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Date or dates of Service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Service Sub-location
	public var subSite: [CodeableConcept]?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
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
		unitPrice: Money? = nil
	) {
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
		self.sequence = sequence
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
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case informationLinkId; case _informationLinkId
		case locationAddress
		case locationCodeableConcept
		case locationReference
		case modifier
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.careTeamLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.detail = try [ClaimItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		self.encounter = try [Reference](from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.informationLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .informationLinkId, auxiliaryKey: ._informationLinkId)
		self.location = try Self._decodeLocation(from: _container)
		self.modifier = try [CodeableConcept](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.procedureLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .procedureLinkId, auxiliaryKey: ._procedureLinkId)
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.serviced = try Self._decodeServiced(from: _container)
		self.subSite = try [CodeableConcept](from: _container, forKeyIfPresent: .subSite)
		self.udi = try [Reference](from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try careTeamLinkId?.encode(on: &_container, forKey: .careTeamLinkId, auxiliaryKey: ._careTeamLinkId)
		try category?.encode(on: &_container, forKey: .category)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisLinkId?.encode(on: &_container, forKey: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try informationLinkId?.encode(on: &_container, forKey: .informationLinkId, auxiliaryKey: ._informationLinkId)
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
 Additional items.
 
 Second tier of goods and services.
 */
public struct ClaimItemDetail: BackboneElement {
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total additional item cost
	public var net: Money?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Additional items
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point
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
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		service: CodeableConcept? = nil,
		subDetail: [ClaimItemDetailSubDetail]? = nil,
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
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.service = service
		self.subDetail = subDetail
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
		self.subDetail = try [ClaimItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Additional items.
 
 Third tier of goods and services.
 */
public struct ClaimItemDetailSubDetail: BackboneElement {
	
	/// Type of service or product
	public var category: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [CodeableConcept]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Net additional item cost
	public var net: Money?
	
	/// Program specific reason for item inclusion
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Revenue or cost center code
	public var revenue: CodeableConcept?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Billing Code
	public var service: CodeableConcept?
	
	/// Unique Device Identifier
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point
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
		programCode: [CodeableConcept]? = nil,
		quantity: Quantity? = nil,
		revenue: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>,
		service: CodeableConcept? = nil,
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
		self.programCode = programCode
		self.quantity = quantity
		self.revenue = revenue
		self.sequence = sequence
		self.service = service
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
		case programCode
		case quantity
		case revenue
		case sequence; case _sequence
		case service
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
		self.programCode = try [CodeableConcept](from: _container, forKeyIfPresent: .programCode)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.revenue = try CodeableConcept(from: _container, forKeyIfPresent: .revenue)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try CodeableConcept(from: _container, forKeyIfPresent: .service)
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
		try programCode?.encode(on: &_container, forKey: .programCode)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try revenue?.encode(on: &_container, forKey: .revenue)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service?.encode(on: &_container, forKey: .service)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Party to be paid any benefits payable.
 
 The party to be reimbursed for the services.
 */
public struct ClaimPayee: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Party to receive the payable
	public var party: Reference?
	
	/// organization | patient | practitioner | relatedperson
	public var resourceType: Coding?
	
	/// Type of party: Subscriber, Provider, other
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference? = nil,
		resourceType: Coding? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.resourceType = resourceType
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case party
		case resourceType
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
		self.resourceType = try Coding(from: _container, forKeyIfPresent: .resourceType)
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
		try resourceType?.encode(on: &_container, forKey: .resourceType)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Procedures performed.
 
 Ordered list of patient procedures performed to support the adjudication.
 */
public struct ClaimProcedure: BackboneElement {
	
	/// All possible types for "procedure[x]"
	public enum ProcedureX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// When the procedure was performed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient's list of procedures performed
	/// One of `procedure[x]`
	public var procedure: ProcedureX
	
	/// Procedure sequence for reference
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: ProcedureX,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.sequence = sequence
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
 Related Claims which may be revelant to processing this claimn.
 
 Other claims which are related to this claim such as prior claim versions or for related services.
 */
public struct ClaimRelated: BackboneElement {
	
	/// Reference to the related claim
	public var claim: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Related file or case reference
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
