//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Claim)
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
	
	/// The category of claim this is.
	/// Restricted to: ['institutional', 'oral', 'pharmacy', 'professional', 'vision']
	public var type: FHIRPrimitive<ClaimType>
	
	/// Claim number
	public var identifier: [Identifier]?
	
	/// Current specification followed
	public var ruleset: Coding?
	
	/// Original specification followed
	public var originalRuleset: Coding?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer
	public var target: Reference?
	
	/// Responsible provider
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	/// Restricted to: ['complete', 'proposed', 'exploratory', 'other']
	public var use: FHIRPrimitive<Use>?
	
	/// Desired processing priority
	public var priority: Coding?
	
	/// Funds requested to be reserved
	public var fundsReserve: Coding?
	
	/// Author
	public var enterer: Reference?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Prescription
	public var prescription: Reference?
	
	/// Original Prescription
	public var originalPrescription: Reference?
	
	/// Payee
	public var payee: ClaimPayee?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Diagnosis
	public var diagnosis: [ClaimDiagnosis]?
	
	/// List of presenting Conditions
	public var condition: [Coding]?
	
	/// The subject of the Products and Services
	public var patient: Reference
	
	/// Insurance or medical plan
	public var coverage: [ClaimCoverage]?
	
	/// Eligibility exceptions
	public var exception: [Coding]?
	
	/// Name of School
	public var school: FHIRPrimitive<FHIRString>?
	
	/// Accident Date
	public var accident: FHIRPrimitive<FHIRDate>?
	
	/// Accident Type
	public var accidentType: Coding?
	
	/// Intervention and exception code (Pharma)
	public var interventionException: [Coding]?
	
	/// Goods and Services
	public var item: [ClaimItem]?
	
	/// Additional materials, documents, etc.
	public var additionalMaterials: [Coding]?
	
	/// Only if type = oral
	public var missingTeeth: [ClaimMissingTeeth]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, type: FHIRPrimitive<ClaimType>) {
		self.patient = patient
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							accident: FHIRPrimitive<FHIRDate>? = nil,
							accidentType: Coding? = nil,
							additionalMaterials: [Coding]? = nil,
							condition: [Coding]? = nil,
							contained: [ResourceProxy]? = nil,
							coverage: [ClaimCoverage]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							diagnosis: [ClaimDiagnosis]? = nil,
							enterer: Reference? = nil,
							exception: [Coding]? = nil,
							`extension`: [Extension]? = nil,
							facility: Reference? = nil,
							fundsReserve: Coding? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							interventionException: [Coding]? = nil,
							item: [ClaimItem]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							missingTeeth: [ClaimMissingTeeth]? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							originalPrescription: Reference? = nil,
							originalRuleset: Coding? = nil,
							patient: Reference,
							payee: ClaimPayee? = nil,
							prescription: Reference? = nil,
							priority: Coding? = nil,
							provider: Reference? = nil,
							referral: Reference? = nil,
							ruleset: Coding? = nil,
							school: FHIRPrimitive<FHIRString>? = nil,
							target: Reference? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<ClaimType>,
							use: FHIRPrimitive<Use>? = nil)
	{
		self.init(patient: patient, type: type)
		self.accident = accident
		self.accidentType = accidentType
		self.additionalMaterials = additionalMaterials
		self.condition = condition
		self.contained = contained
		self.coverage = coverage
		self.created = created
		self.diagnosis = diagnosis
		self.enterer = enterer
		self.exception = exception
		self.`extension` = `extension`
		self.facility = facility
		self.fundsReserve = fundsReserve
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.interventionException = interventionException
		self.item = item
		self.language = language
		self.meta = meta
		self.missingTeeth = missingTeeth
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.originalPrescription = originalPrescription
		self.originalRuleset = originalRuleset
		self.payee = payee
		self.prescription = prescription
		self.priority = priority
		self.provider = provider
		self.referral = referral
		self.ruleset = ruleset
		self.school = school
		self.target = target
		self.text = text
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accident; case _accident
		case accidentType
		case additionalMaterials
		case condition
		case coverage
		case created; case _created
		case diagnosis
		case enterer
		case exception
		case facility
		case fundsReserve
		case identifier
		case interventionException
		case item
		case missingTeeth
		case organization
		case originalPrescription
		case originalRuleset
		case patient
		case payee
		case prescription
		case priority
		case provider
		case referral
		case ruleset
		case school; case _school
		case target
		case type; case _type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accident = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .accident, auxiliaryKey: ._accident)
		self.accidentType = try Coding(from: _container, forKeyIfPresent: .accidentType)
		self.additionalMaterials = try [Coding](from: _container, forKeyIfPresent: .additionalMaterials)
		self.condition = try [Coding](from: _container, forKeyIfPresent: .condition)
		self.coverage = try [ClaimCoverage](from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.exception = try [Coding](from: _container, forKeyIfPresent: .exception)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try Coding(from: _container, forKeyIfPresent: .fundsReserve)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.interventionException = try [Coding](from: _container, forKeyIfPresent: .interventionException)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
		self.missingTeeth = try [ClaimMissingTeeth](from: _container, forKeyIfPresent: .missingTeeth)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.payee = try ClaimPayee(from: _container, forKeyIfPresent: .payee)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.priority = try Coding(from: _container, forKeyIfPresent: .priority)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		self.school = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .school, auxiliaryKey: ._school)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		self.type = try FHIRPrimitive<ClaimType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accident?.encode(on: &_container, forKey: .accident, auxiliaryKey: ._accident)
		try accidentType?.encode(on: &_container, forKey: .accidentType)
		try additionalMaterials?.encode(on: &_container, forKey: .additionalMaterials)
		try condition?.encode(on: &_container, forKey: .condition)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try exception?.encode(on: &_container, forKey: .exception)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try interventionException?.encode(on: &_container, forKey: .interventionException)
		try item?.encode(on: &_container, forKey: .item)
		try missingTeeth?.encode(on: &_container, forKey: .missingTeeth)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try patient.encode(on: &_container, forKey: .patient)
		try payee?.encode(on: &_container, forKey: .payee)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try priority?.encode(on: &_container, forKey: .priority)
		try provider?.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try school?.encode(on: &_container, forKey: .school, auxiliaryKey: ._school)
		try target?.encode(on: &_container, forKey: .target)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		    && accidentType == _other.accidentType
		    && additionalMaterials == _other.additionalMaterials
		    && condition == _other.condition
		    && coverage == _other.coverage
		    && created == _other.created
		    && diagnosis == _other.diagnosis
		    && enterer == _other.enterer
		    && exception == _other.exception
		    && facility == _other.facility
		    && fundsReserve == _other.fundsReserve
		    && identifier == _other.identifier
		    && interventionException == _other.interventionException
		    && item == _other.item
		    && missingTeeth == _other.missingTeeth
		    && organization == _other.organization
		    && originalPrescription == _other.originalPrescription
		    && originalRuleset == _other.originalRuleset
		    && patient == _other.patient
		    && payee == _other.payee
		    && prescription == _other.prescription
		    && priority == _other.priority
		    && provider == _other.provider
		    && referral == _other.referral
		    && ruleset == _other.ruleset
		    && school == _other.school
		    && target == _other.target
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accident)
		hasher.combine(accidentType)
		hasher.combine(additionalMaterials)
		hasher.combine(condition)
		hasher.combine(coverage)
		hasher.combine(created)
		hasher.combine(diagnosis)
		hasher.combine(enterer)
		hasher.combine(exception)
		hasher.combine(facility)
		hasher.combine(fundsReserve)
		hasher.combine(identifier)
		hasher.combine(interventionException)
		hasher.combine(item)
		hasher.combine(missingTeeth)
		hasher.combine(organization)
		hasher.combine(originalPrescription)
		hasher.combine(originalRuleset)
		hasher.combine(patient)
		hasher.combine(payee)
		hasher.combine(prescription)
		hasher.combine(priority)
		hasher.combine(provider)
		hasher.combine(referral)
		hasher.combine(ruleset)
		hasher.combine(school)
		hasher.combine(target)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
open class ClaimCoverage: BackboneElement {
	
	/// Service instance identifier
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// The focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// Insurance information
	public var coverage: Reference
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Patient relationship to subscriber
	public var relationship: Coding
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference, focal: FHIRPrimitive<FHIRBool>, relationship: Coding, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.coverage = coverage
		self.focal = focal
		self.relationship = relationship
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
							originalRuleset: Coding? = nil,
							preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
							relationship: Coding,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(coverage: coverage, focal: focal, relationship: relationship, sequence: sequence)
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.originalRuleset = originalRuleset
		self.preAuthRef = preAuthRef
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case businessArrangement; case _businessArrangement
		case claimResponse
		case coverage
		case focal; case _focal
		case originalRuleset
		case preAuthRef; case _preAuthRef
		case relationship
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
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.relationship = try Coding(from: _container, forKey: .relationship)
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
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try relationship.encode(on: &_container, forKey: .relationship)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimCoverage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return businessArrangement == _other.businessArrangement
		    && claimResponse == _other.claimResponse
		    && coverage == _other.coverage
		    && focal == _other.focal
		    && originalRuleset == _other.originalRuleset
		    && preAuthRef == _other.preAuthRef
		    && relationship == _other.relationship
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(businessArrangement)
		hasher.combine(claimResponse)
		hasher.combine(coverage)
		hasher.combine(focal)
		hasher.combine(originalRuleset)
		hasher.combine(preAuthRef)
		hasher.combine(relationship)
		hasher.combine(sequence)
	}
}

/**
 Diagnosis.
 
 Ordered list of patient diagnosis for which care is sought.
 */
open class ClaimDiagnosis: BackboneElement {
	
	/// Sequence of diagnosis
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Patient's list of diagnosis
	public var diagnosis: Coding
	
	/// Designated initializer taking all required properties
	public init(diagnosis: Coding, sequence: FHIRPrimitive<FHIRPositiveInteger>) {
		self.diagnosis = diagnosis
		self.sequence = sequence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							diagnosis: Coding,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>)
	{
		self.init(diagnosis: diagnosis, sequence: sequence)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosis
		case sequence; case _sequence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.diagnosis = try Coding(from: _container, forKey: .diagnosis)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try diagnosis.encode(on: &_container, forKey: .diagnosis)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
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
		    && sequence == _other.sequence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(diagnosis)
		hasher.combine(sequence)
	}
}

/**
 Goods and Services.
 
 First tier of goods and services.
 */
open class ClaimItem: BackboneElement {
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Group or type of product or service
	public var type: Coding
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Diagnosis Link
	public var diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Item Code
	public var service: Coding
	
	/// Date of Service
	public var serviceDate: FHIRPrimitive<FHIRDate>?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Quantity?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Difficulty scaling factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Total item cost
	public var net: Quantity?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Service Location
	public var bodySite: Coding?
	
	/// Service Sub-location
	public var subSite: [Coding]?
	
	/// Service/Product billing modifiers
	public var modifier: [Coding]?
	
	/// Additional items
	public var detail: [ClaimItemDetail]?
	
	/// Prosthetic details
	public var prosthesis: ClaimItemProsthesis?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>, service: Coding, type: Coding) {
		self.sequence = sequence
		self.service = service
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: Coding? = nil,
							detail: [ClaimItemDetail]? = nil,
							diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [Coding]? = nil,
							modifierExtension: [Extension]? = nil,
							net: Quantity? = nil,
							points: FHIRPrimitive<FHIRDecimal>? = nil,
							prosthesis: ClaimItemProsthesis? = nil,
							provider: Reference? = nil,
							quantity: Quantity? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: Coding,
							serviceDate: FHIRPrimitive<FHIRDate>? = nil,
							subSite: [Coding]? = nil,
							type: Coding,
							udi: Coding? = nil,
							unitPrice: Quantity? = nil)
	{
		self.init(sequence: sequence, service: service, type: type)
		self.bodySite = bodySite
		self.detail = detail
		self.diagnosisLinkId = diagnosisLinkId
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.prosthesis = prosthesis
		self.provider = provider
		self.quantity = quantity
		self.serviceDate = serviceDate
		self.subSite = subSite
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case detail
		case diagnosisLinkId; case _diagnosisLinkId
		case factor; case _factor
		case modifier
		case net
		case points; case _points
		case prosthesis
		case provider
		case quantity
		case sequence; case _sequence
		case service
		case serviceDate; case _serviceDate
		case subSite
		case type
		case udi
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try Coding(from: _container, forKeyIfPresent: .bodySite)
		self.detail = try [ClaimItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.modifier = try [Coding](from: _container, forKeyIfPresent: .modifier)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.prosthesis = try ClaimItemProsthesis(from: _container, forKeyIfPresent: .prosthesis)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try Coding(from: _container, forKey: .service)
		self.serviceDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .serviceDate, auxiliaryKey: ._serviceDate)
		self.subSite = try [Coding](from: _container, forKeyIfPresent: .subSite)
		self.type = try Coding(from: _container, forKey: .type)
		self.udi = try Coding(from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisLinkId?.encode(on: &_container, forKey: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try prosthesis?.encode(on: &_container, forKey: .prosthesis)
		try provider?.encode(on: &_container, forKey: .provider)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service.encode(on: &_container, forKey: .service)
		try serviceDate?.encode(on: &_container, forKey: .serviceDate, auxiliaryKey: ._serviceDate)
		try subSite?.encode(on: &_container, forKey: .subSite)
		try type.encode(on: &_container, forKey: .type)
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
		    && detail == _other.detail
		    && diagnosisLinkId == _other.diagnosisLinkId
		    && factor == _other.factor
		    && modifier == _other.modifier
		    && net == _other.net
		    && points == _other.points
		    && prosthesis == _other.prosthesis
		    && provider == _other.provider
		    && quantity == _other.quantity
		    && sequence == _other.sequence
		    && service == _other.service
		    && serviceDate == _other.serviceDate
		    && subSite == _other.subSite
		    && type == _other.type
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(detail)
		hasher.combine(diagnosisLinkId)
		hasher.combine(factor)
		hasher.combine(modifier)
		hasher.combine(net)
		hasher.combine(points)
		hasher.combine(prosthesis)
		hasher.combine(provider)
		hasher.combine(quantity)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(serviceDate)
		hasher.combine(subSite)
		hasher.combine(type)
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
	
	/// Group or type of product or service
	public var type: Coding
	
	/// Additional item codes
	public var service: Coding
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Quantity?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Difficulty scaling factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Total additional item cost
	public var net: Quantity?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Additional items
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>, service: Coding, type: Coding) {
		self.sequence = sequence
		self.service = service
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							net: Quantity? = nil,
							points: FHIRPrimitive<FHIRDecimal>? = nil,
							quantity: Quantity? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: Coding,
							subDetail: [ClaimItemDetailSubDetail]? = nil,
							type: Coding,
							udi: Coding? = nil,
							unitPrice: Quantity? = nil)
	{
		self.init(sequence: sequence, service: service, type: type)
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.quantity = quantity
		self.subDetail = subDetail
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case factor; case _factor
		case net
		case points; case _points
		case quantity
		case sequence; case _sequence
		case service
		case subDetail
		case type
		case udi
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try Coding(from: _container, forKey: .service)
		self.subDetail = try [ClaimItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.type = try Coding(from: _container, forKey: .type)
		self.udi = try Coding(from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service.encode(on: &_container, forKey: .service)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try type.encode(on: &_container, forKey: .type)
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
		return factor == _other.factor
		    && net == _other.net
		    && points == _other.points
		    && quantity == _other.quantity
		    && sequence == _other.sequence
		    && service == _other.service
		    && subDetail == _other.subDetail
		    && type == _other.type
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(factor)
		hasher.combine(net)
		hasher.combine(points)
		hasher.combine(quantity)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(subDetail)
		hasher.combine(type)
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
	
	/// Type of product or service
	public var type: Coding
	
	/// Additional item codes
	public var service: Coding
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Fee, charge or cost per point
	public var unitPrice: Quantity?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Difficulty scaling factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Net additional item cost
	public var net: Quantity?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Designated initializer taking all required properties
	public init(sequence: FHIRPrimitive<FHIRPositiveInteger>, service: Coding, type: Coding) {
		self.sequence = sequence
		self.service = service
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							net: Quantity? = nil,
							points: FHIRPrimitive<FHIRDecimal>? = nil,
							quantity: Quantity? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>,
							service: Coding,
							type: Coding,
							udi: Coding? = nil,
							unitPrice: Quantity? = nil)
	{
		self.init(sequence: sequence, service: service, type: type)
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.quantity = quantity
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case factor; case _factor
		case net
		case points; case _points
		case quantity
		case sequence; case _sequence
		case service
		case type
		case udi
		case unitPrice
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try Coding(from: _container, forKey: .service)
		self.type = try Coding(from: _container, forKey: .type)
		self.udi = try Coding(from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service.encode(on: &_container, forKey: .service)
		try type.encode(on: &_container, forKey: .type)
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
		return factor == _other.factor
		    && net == _other.net
		    && points == _other.points
		    && quantity == _other.quantity
		    && sequence == _other.sequence
		    && service == _other.service
		    && type == _other.type
		    && udi == _other.udi
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(factor)
		hasher.combine(net)
		hasher.combine(points)
		hasher.combine(quantity)
		hasher.combine(sequence)
		hasher.combine(service)
		hasher.combine(type)
		hasher.combine(udi)
		hasher.combine(unitPrice)
	}
}

/**
 Prosthetic details.
 
 The materials and placement date of prior fixed prosthesis.
 */
open class ClaimItemProsthesis: BackboneElement {
	
	/// Is this the initial service
	public var initial: FHIRPrimitive<FHIRBool>?
	
	/// Initial service Date
	public var priorDate: FHIRPrimitive<FHIRDate>?
	
	/// Prosthetic Material
	public var priorMaterial: Coding?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							initial: FHIRPrimitive<FHIRBool>? = nil,
							modifierExtension: [Extension]? = nil,
							priorDate: FHIRPrimitive<FHIRDate>? = nil,
							priorMaterial: Coding? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.initial = initial
		self.modifierExtension = modifierExtension
		self.priorDate = priorDate
		self.priorMaterial = priorMaterial
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case initial; case _initial
		case priorDate; case _priorDate
		case priorMaterial
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.initial = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initial, auxiliaryKey: ._initial)
		self.priorDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .priorDate, auxiliaryKey: ._priorDate)
		self.priorMaterial = try Coding(from: _container, forKeyIfPresent: .priorMaterial)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try initial?.encode(on: &_container, forKey: .initial, auxiliaryKey: ._initial)
		try priorDate?.encode(on: &_container, forKey: .priorDate, auxiliaryKey: ._priorDate)
		try priorMaterial?.encode(on: &_container, forKey: .priorMaterial)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimItemProsthesis else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return initial == _other.initial
		    && priorDate == _other.priorDate
		    && priorMaterial == _other.priorMaterial
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(initial)
		hasher.combine(priorDate)
		hasher.combine(priorMaterial)
	}
}

/**
 Only if type = oral.
 
 A list of teeth which would be expected but are not found due to having been previously  extracted or for other
 reasons.
 */
open class ClaimMissingTeeth: BackboneElement {
	
	/// Tooth Code
	public var tooth: Coding
	
	/// Reason for missing
	public var reason: Coding?
	
	/// Date of Extraction
	public var extractionDate: FHIRPrimitive<FHIRDate>?
	
	/// Designated initializer taking all required properties
	public init(tooth: Coding) {
		self.tooth = tooth
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							extractionDate: FHIRPrimitive<FHIRDate>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: Coding? = nil,
							tooth: Coding)
	{
		self.init(tooth: tooth)
		self.`extension` = `extension`
		self.extractionDate = extractionDate
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case extractionDate; case _extractionDate
		case reason
		case tooth
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.extractionDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .extractionDate, auxiliaryKey: ._extractionDate)
		self.reason = try Coding(from: _container, forKeyIfPresent: .reason)
		self.tooth = try Coding(from: _container, forKey: .tooth)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try extractionDate?.encode(on: &_container, forKey: .extractionDate, auxiliaryKey: ._extractionDate)
		try reason?.encode(on: &_container, forKey: .reason)
		try tooth.encode(on: &_container, forKey: .tooth)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClaimMissingTeeth else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return extractionDate == _other.extractionDate
		    && reason == _other.reason
		    && tooth == _other.tooth
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(extractionDate)
		hasher.combine(reason)
		hasher.combine(tooth)
	}
}

/**
 Payee.
 
 The party to be reimbursed for the services.
 */
open class ClaimPayee: BackboneElement {
	
	/// Party to be paid any benefits payable
	public var type: Coding?
	
	/// Provider who is the payee
	public var provider: Reference?
	
	/// Organization who is the payee
	public var organization: Reference?
	
	/// Other person who is the payee
	public var person: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							person: Reference? = nil,
							provider: Reference? = nil,
							type: Coding? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.person = person
		self.provider = provider
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case organization
		case person
		case provider
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.person = try Reference(from: _container, forKeyIfPresent: .person)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try organization?.encode(on: &_container, forKey: .organization)
		try person?.encode(on: &_container, forKey: .person)
		try provider?.encode(on: &_container, forKey: .provider)
		try type?.encode(on: &_container, forKey: .type)
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
		return organization == _other.organization
		    && person == _other.person
		    && provider == _other.provider
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(organization)
		hasher.combine(person)
		hasher.combine(provider)
		hasher.combine(type)
	}
}
