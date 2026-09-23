//
//  ReferralRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ReferralRequest)
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
 A request for referral or transfer of care.
 
 Used to record and send details about a request for referral service or transfer of a patient to the care of another
 provider or provider organization.
 */
public struct ReferralRequest: DomainResource {
	
	public static let resourceType: ResourceType = .referralRequest
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date of creation/activation
	public var date: FHIRPrimitive<DateTime>?
	
	/// Date referral/transfer of care request is sent
	public var dateSent: FHIRPrimitive<DateTime>?
	
	/// A textual description of the referral
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Originating encounter
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Requested service(s) fulfillment time
	public var fulfillmentTime: Period?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient referred to care or transfer
	public var patient: Reference?
	
	/// Urgency of referral / transfer of care request
	public var priority: CodeableConcept?
	
	/// Reason for referral / transfer of care request
	public var reason: CodeableConcept?
	
	/// Receiver of referral / transfer of care request
	public var recipient: [Reference]?
	
	/// Requester of referral / transfer of care
	public var requester: Reference?
	
	/// Actions requested as part of the referral
	public var serviceRequested: [CodeableConcept]?
	
	/// The clinical specialty (discipline) that the referral is requested for
	public var specialty: CodeableConcept?
	
	/// The workflow status of the referral or transfer of care request.
	/// Restricted to: ['draft', 'requested', 'active', 'cancelled', 'accepted', 'rejected', 'completed']
	public var status: FHIRPrimitive<ReferralStatus>
	
	/// Additonal information to support referral or transfer of care request
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Referral/Transition of care request type
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		dateSent: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		fulfillmentTime: Period? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference? = nil,
		priority: CodeableConcept? = nil,
		reason: CodeableConcept? = nil,
		recipient: [Reference]? = nil,
		requester: Reference? = nil,
		serviceRequested: [CodeableConcept]? = nil,
		specialty: CodeableConcept? = nil,
		status: FHIRPrimitive<ReferralStatus>,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.contained = contained
		self.date = date
		self.dateSent = dateSent
		self.description_fhir = description_fhir
		self.encounter = encounter
		self.`extension` = `extension`
		self.fulfillmentTime = fulfillmentTime
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.priority = priority
		self.reason = reason
		self.recipient = recipient
		self.requester = requester
		self.serviceRequested = serviceRequested
		self.specialty = specialty
		self.status = status
		self.supportingInformation = supportingInformation
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case date; case _date
		case dateSent; case _dateSent
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case `extension` = "extension"
		case fulfillmentTime
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case priority
		case reason
		case recipient
		case requester
		case serviceRequested
		case specialty
		case status; case _status
		case supportingInformation
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.dateSent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateSent, auxiliaryKey: ._dateSent)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fulfillmentTime = try Period(from: _container, forKeyIfPresent: .fulfillmentTime)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.serviceRequested = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceRequested)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
		self.status = try FHIRPrimitive<ReferralStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dateSent?.encode(on: &_container, forKey: .dateSent, auxiliaryKey: ._dateSent)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fulfillmentTime?.encode(on: &_container, forKey: .fulfillmentTime)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient?.encode(on: &_container, forKey: .patient)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try requester?.encode(on: &_container, forKey: .requester)
		try serviceRequested?.encode(on: &_container, forKey: .serviceRequested)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}
