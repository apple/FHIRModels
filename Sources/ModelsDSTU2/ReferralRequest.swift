//
//  ReferralRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ReferralRequest)
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
 A request for referral or transfer of care.
 
 Used to record and send details about a request for referral service or transfer of a patient to the care of another
 provider or provider organization.
 */
open class ReferralRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .referralRequest }
	
	/// The workflow status of the referral or transfer of care request.
	/// Restricted to: ['draft', 'requested', 'active', 'cancelled', 'accepted', 'rejected', 'completed']
	public var status: FHIRPrimitive<ReferralStatus>
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Date of creation/activation
	public var date: FHIRPrimitive<DateTime>?
	
	/// Referral/Transition of care request type
	public var type: CodeableConcept?
	
	/// The clinical specialty (discipline) that the referral is requested for
	public var specialty: CodeableConcept?
	
	/// Urgency of referral / transfer of care request
	public var priority: CodeableConcept?
	
	/// Patient referred to care or transfer
	public var patient: Reference?
	
	/// Requester of referral / transfer of care
	public var requester: Reference?
	
	/// Receiver of referral / transfer of care request
	public var recipient: [Reference]?
	
	/// Originating encounter
	public var encounter: Reference?
	
	/// Date referral/transfer of care request is sent
	public var dateSent: FHIRPrimitive<DateTime>?
	
	/// Reason for referral / transfer of care request
	public var reason: CodeableConcept?
	
	/// A textual description of the referral
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Actions requested as part of the referral
	public var serviceRequested: [CodeableConcept]?
	
	/// Additonal information to support referral or transfer of care request
	public var supportingInformation: [Reference]?
	
	/// Requested service(s) fulfillment time
	public var fulfillmentTime: Period?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ReferralStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(status: status)
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
		self.supportingInformation = supportingInformation
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case dateSent; case _dateSent
		case description_fhir = "description"; case _description_fhir = "_description"
		case encounter
		case fulfillmentTime
		case identifier
		case patient
		case priority
		case reason
		case recipient
		case requester
		case serviceRequested
		case specialty
		case status; case _status
		case supportingInformation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.dateSent = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateSent, auxiliaryKey: ._dateSent)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.fulfillmentTime = try Period(from: _container, forKeyIfPresent: .fulfillmentTime)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.recipient = try [Reference](from: _container, forKeyIfPresent: .recipient)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.serviceRequested = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceRequested)
		self.specialty = try CodeableConcept(from: _container, forKeyIfPresent: .specialty)
		self.status = try FHIRPrimitive<ReferralStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dateSent?.encode(on: &_container, forKey: .dateSent, auxiliaryKey: ._dateSent)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try fulfillmentTime?.encode(on: &_container, forKey: .fulfillmentTime)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patient?.encode(on: &_container, forKey: .patient)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try requester?.encode(on: &_container, forKey: .requester)
		try serviceRequested?.encode(on: &_container, forKey: .serviceRequested)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ReferralRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && dateSent == _other.dateSent
		    && description_fhir == _other.description_fhir
		    && encounter == _other.encounter
		    && fulfillmentTime == _other.fulfillmentTime
		    && identifier == _other.identifier
		    && patient == _other.patient
		    && priority == _other.priority
		    && reason == _other.reason
		    && recipient == _other.recipient
		    && requester == _other.requester
		    && serviceRequested == _other.serviceRequested
		    && specialty == _other.specialty
		    && status == _other.status
		    && supportingInformation == _other.supportingInformation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(dateSent)
		hasher.combine(description_fhir)
		hasher.combine(encounter)
		hasher.combine(fulfillmentTime)
		hasher.combine(identifier)
		hasher.combine(patient)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(recipient)
		hasher.combine(requester)
		hasher.combine(serviceRequested)
		hasher.combine(specialty)
		hasher.combine(status)
		hasher.combine(supportingInformation)
		hasher.combine(type)
	}
}
