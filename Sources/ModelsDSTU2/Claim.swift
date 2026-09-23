//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Claim)
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
	
	/// Accident Date
	public var accident: FHIRPrimitive<FHIRDate>?
	
	/// Accident Type
	public var accidentType: Coding?
	
	/// Additional materials, documents, etc.
	public var additionalMaterials: [Coding]?
	
	/// List of presenting Conditions
	public var condition: [Coding]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimCoverage]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Diagnosis
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Author
	public var enterer: Reference?
	
	/// Eligibility exceptions
	public var exception: [Coding]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Funds requested to be reserved
	public var fundsReserve: Coding?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Claim number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intervention and exception code (Pharma)
	public var interventionException: [Coding]?
	
	/// Goods and Services
	public var item: [ClaimItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Only if type = oral
	public var missingTeeth: [ClaimMissingTeeth]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original Prescription
	public var originalPrescription: Reference?
	
	/// Original specification followed
	public var originalRuleset: Coding?
	
	/// The subject of the Products and Services
	public var patient: Reference
	
	/// Payee
	public var payee: ClaimPayee?
	
	/// Prescription
	public var prescription: Reference?
	
	/// Desired processing priority
	public var priority: Coding?
	
	/// Responsible provider
	public var provider: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Current specification followed
	public var ruleset: Coding?
	
	/// Name of School
	public var school: FHIRPrimitive<FHIRString>?
	
	/// Insurer
	public var target: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The category of claim this is.
	/// Restricted to: ['institutional', 'oral', 'pharmacy', 'professional', 'vision']
	public var type: FHIRPrimitive<ClaimType>
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	/// Restricted to: ['complete', 'proposed', 'exploratory', 'other']
	public var use: FHIRPrimitive<Use>?
	
	/// Designated initializer
	public init(
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
		use: FHIRPrimitive<Use>? = nil
	) {
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
		self.patient = patient
		self.payee = payee
		self.prescription = prescription
		self.priority = priority
		self.provider = provider
		self.referral = referral
		self.ruleset = ruleset
		self.school = school
		self.target = target
		self.text = text
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accident; case _accident
		case accidentType
		case additionalMaterials
		case condition
		case contained
		case coverage
		case created; case _created
		case diagnosis
		case enterer
		case exception
		case `extension` = "extension"
		case facility
		case fundsReserve
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case interventionException
		case item
		case language; case _language
		case meta
		case missingTeeth
		case modifierExtension
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
		case text
		case type; case _type
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accident = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .accident, auxiliaryKey: ._accident)
		self.accidentType = try Coding(from: _container, forKeyIfPresent: .accidentType)
		self.additionalMaterials = try [Coding](from: _container, forKeyIfPresent: .additionalMaterials)
		self.condition = try [Coding](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [ClaimCoverage](from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.exception = try [Coding](from: _container, forKeyIfPresent: .exception)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try Coding(from: _container, forKeyIfPresent: .fundsReserve)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.interventionException = try [Coding](from: _container, forKeyIfPresent: .interventionException)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.missingTeeth = try [ClaimMissingTeeth](from: _container, forKeyIfPresent: .missingTeeth)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<ClaimType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accident?.encode(on: &_container, forKey: .accident, auxiliaryKey: ._accident)
		try accidentType?.encode(on: &_container, forKey: .accidentType)
		try additionalMaterials?.encode(on: &_container, forKey: .additionalMaterials)
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try exception?.encode(on: &_container, forKey: .exception)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try interventionException?.encode(on: &_container, forKey: .interventionException)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try missingTeeth?.encode(on: &_container, forKey: .missingTeeth)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public struct ClaimCoverage: BackboneElement {
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Insurance information
	public var coverage: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// The focal Coverage
	public var focal: FHIRPrimitive<FHIRBool>
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [FHIRPrimitive<FHIRString>]?
	
	/// Patient relationship to subscriber
	public var relationship: Coding
	
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
		originalRuleset: Coding? = nil,
		preAuthRef: [FHIRPrimitive<FHIRString>]? = nil,
		relationship: Coding,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.businessArrangement = businessArrangement
		self.claimResponse = claimResponse
		self.coverage = coverage
		self.`extension` = `extension`
		self.focal = focal
		self.id = id
		self.modifierExtension = modifierExtension
		self.originalRuleset = originalRuleset
		self.preAuthRef = preAuthRef
		self.relationship = relationship
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
		case originalRuleset
		case preAuthRef; case _preAuthRef
		case relationship
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
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.preAuthRef = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .preAuthRef, auxiliaryKey: ._preAuthRef)
		self.relationship = try Coding(from: _container, forKey: .relationship)
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
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try preAuthRef?.encode(on: &_container, forKey: .preAuthRef, auxiliaryKey: ._preAuthRef)
		try relationship.encode(on: &_container, forKey: .relationship)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Diagnosis.
 
 Ordered list of patient diagnosis for which care is sought.
 */
public struct ClaimDiagnosis: BackboneElement {
	
	/// Patient's list of diagnosis
	public var diagnosis: Coding
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Sequence of diagnosis
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Designated initializer
	public init(
		diagnosis: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequence: FHIRPrimitive<FHIRPositiveInteger>
	) {
		self.diagnosis = diagnosis
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequence = sequence
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case diagnosis
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case sequence; case _sequence
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.diagnosis = try Coding(from: _container, forKey: .diagnosis)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try diagnosis.encode(on: &_container, forKey: .diagnosis)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
	}
}

/**
 Goods and Services.
 
 First tier of goods and services.
 */
public struct ClaimItem: BackboneElement {
	
	/// Service Location
	public var bodySite: Coding?
	
	/// Additional items
	public var detail: [ClaimItemDetail]?
	
	/// Diagnosis Link
	public var diagnosisLinkId: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Service/Product billing modifiers
	public var modifier: [Coding]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total item cost
	public var net: Quantity?
	
	/// Difficulty scaling factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Prosthetic details
	public var prosthesis: ClaimItemProsthesis?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Item Code
	public var service: Coding
	
	/// Date of Service
	public var serviceDate: FHIRPrimitive<FHIRDate>?
	
	/// Service Sub-location
	public var subSite: [Coding]?
	
	/// Group or type of product or service
	public var type: Coding
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Quantity?
	
	/// Designated initializer
	public init(
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
		unitPrice: Quantity? = nil
	) {
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
		self.sequence = sequence
		self.service = service
		self.serviceDate = serviceDate
		self.subSite = subSite
		self.type = type
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case detail
		case diagnosisLinkId; case _diagnosisLinkId
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifier
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try Coding(from: _container, forKeyIfPresent: .bodySite)
		self.detail = try [ClaimItemDetail](from: _container, forKeyIfPresent: .detail)
		self.diagnosisLinkId = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [Coding](from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try detail?.encode(on: &_container, forKey: .detail)
		try diagnosisLinkId?.encode(on: &_container, forKey: .diagnosisLinkId, auxiliaryKey: ._diagnosisLinkId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
	}
}

/**
 Additional items.
 
 Second tier of goods and services.
 */
public struct ClaimItemDetail: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total additional item cost
	public var net: Quantity?
	
	/// Difficulty scaling factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Additional item codes
	public var service: Coding
	
	/// Additional items
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Group or type of product or service
	public var type: Coding
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Quantity?
	
	/// Designated initializer
	public init(
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
		unitPrice: Quantity? = nil
	) {
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.quantity = quantity
		self.sequence = sequence
		self.service = service
		self.subDetail = subDetail
		self.type = type
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try Coding(from: _container, forKey: .service)
		self.subDetail = try [ClaimItemDetailSubDetail](from: _container, forKeyIfPresent: .subDetail)
		self.type = try Coding(from: _container, forKey: .type)
		self.udi = try Coding(from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service.encode(on: &_container, forKey: .service)
		try subDetail?.encode(on: &_container, forKey: .subDetail)
		try type.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Additional items.
 
 Third tier of goods and services.
 */
public struct ClaimItemDetailSubDetail: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Price scaling factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Net additional item cost
	public var net: Quantity?
	
	/// Difficulty scaling factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>
	
	/// Additional item codes
	public var service: Coding
	
	/// Type of product or service
	public var type: Coding
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Quantity?
	
	/// Designated initializer
	public init(
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
		unitPrice: Quantity? = nil
	) {
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.quantity = quantity
		self.sequence = sequence
		self.service = service
		self.type = type
		self.udi = udi
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKey: .sequence, auxiliaryKey: ._sequence)
		self.service = try Coding(from: _container, forKey: .service)
		self.type = try Coding(from: _container, forKey: .type)
		self.udi = try Coding(from: _container, forKeyIfPresent: .udi)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try sequence.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try service.encode(on: &_container, forKey: .service)
		try type.encode(on: &_container, forKey: .type)
		try udi?.encode(on: &_container, forKey: .udi)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
}

/**
 Prosthetic details.
 
 The materials and placement date of prior fixed prosthesis.
 */
public struct ClaimItemProsthesis: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Is this the initial service
	public var initial: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Initial service Date
	public var priorDate: FHIRPrimitive<FHIRDate>?
	
	/// Prosthetic Material
	public var priorMaterial: Coding?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initial: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		priorDate: FHIRPrimitive<FHIRDate>? = nil,
		priorMaterial: Coding? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.initial = initial
		self.modifierExtension = modifierExtension
		self.priorDate = priorDate
		self.priorMaterial = priorMaterial
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case initial; case _initial
		case modifierExtension
		case priorDate; case _priorDate
		case priorMaterial
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initial = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initial, auxiliaryKey: ._initial)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.priorDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .priorDate, auxiliaryKey: ._priorDate)
		self.priorMaterial = try Coding(from: _container, forKeyIfPresent: .priorMaterial)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try initial?.encode(on: &_container, forKey: .initial, auxiliaryKey: ._initial)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try priorDate?.encode(on: &_container, forKey: .priorDate, auxiliaryKey: ._priorDate)
		try priorMaterial?.encode(on: &_container, forKey: .priorMaterial)
	}
}

/**
 Only if type = oral.
 
 A list of teeth which would be expected but are not found due to having been previously  extracted or for other
 reasons.
 */
public struct ClaimMissingTeeth: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Date of Extraction
	public var extractionDate: FHIRPrimitive<FHIRDate>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reason for missing
	public var reason: Coding?
	
	/// Tooth Code
	public var tooth: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		extractionDate: FHIRPrimitive<FHIRDate>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: Coding? = nil,
		tooth: Coding
	) {
		self.`extension` = `extension`
		self.extractionDate = extractionDate
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.tooth = tooth
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case extractionDate; case _extractionDate
		case id; case _id
		case modifierExtension
		case reason
		case tooth
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.extractionDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .extractionDate, auxiliaryKey: ._extractionDate)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try Coding(from: _container, forKeyIfPresent: .reason)
		self.tooth = try Coding(from: _container, forKey: .tooth)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try extractionDate?.encode(on: &_container, forKey: .extractionDate, auxiliaryKey: ._extractionDate)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try tooth.encode(on: &_container, forKey: .tooth)
	}
}

/**
 Payee.
 
 The party to be reimbursed for the services.
 */
public struct ClaimPayee: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Organization who is the payee
	public var organization: Reference?
	
	/// Other person who is the payee
	public var person: Reference?
	
	/// Provider who is the payee
	public var provider: Reference?
	
	/// Party to be paid any benefits payable
	public var type: Coding?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference? = nil,
		person: Reference? = nil,
		provider: Reference? = nil,
		type: Coding? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case organization
		case person
		case provider
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
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.person = try Reference(from: _container, forKeyIfPresent: .person)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization?.encode(on: &_container, forKey: .organization)
		try person?.encode(on: &_container, forKey: .person)
		try provider?.encode(on: &_container, forKey: .provider)
		try type?.encode(on: &_container, forKey: .type)
	}
}
