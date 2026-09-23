//
//  PaymentNotice.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/PaymentNotice)
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
 PaymentNotice request.
 
 This resource provides the status of the payment for goods and services rendered, and the request and response resource
 references.
 */
public struct PaymentNotice: DomainResource {
	
	public static let resourceType: ResourceType = .paymentNotice
	
	/// Monetary amount of the payment
	public var amount: Money
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for the payment notice
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Party being paid
	public var payee: Reference?
	
	/// Payment reference
	public var payment: Reference?
	
	/// Payment or clearing date
	public var paymentDate: FHIRPrimitive<FHIRDate>?
	
	/// Issued or cleared Status of the payment
	public var paymentStatus: CodeableConcept?
	
	/// Party being notified
	public var recipient: Reference
	
	/// Responsible practitioner
	public var reporter: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Reason for status change
	public var statusReason: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		amount: Money,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		payee: Reference? = nil,
		payment: Reference? = nil,
		paymentDate: FHIRPrimitive<FHIRDate>? = nil,
		paymentStatus: CodeableConcept? = nil,
		recipient: Reference,
		reporter: Reference? = nil,
		request: Reference? = nil,
		response: Reference? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		statusReason: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil
	) {
		self.amount = amount
		self.contained = contained
		self.created = created
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.payee = payee
		self.payment = payment
		self.paymentDate = paymentDate
		self.paymentStatus = paymentStatus
		self.recipient = recipient
		self.reporter = reporter
		self.request = request
		self.response = response
		self.status = status
		self.statusReason = statusReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case amount
		case contained
		case created; case _created
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case payee
		case payment
		case paymentDate; case _paymentDate
		case paymentStatus
		case recipient
		case reporter
		case request
		case response
		case status; case _status
		case statusReason; case _statusReason
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Money(from: _container, forKey: .amount)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.payee = try Reference(from: _container, forKeyIfPresent: .payee)
		self.payment = try Reference(from: _container, forKeyIfPresent: .payment)
		self.paymentDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .paymentDate, auxiliaryKey: ._paymentDate)
		self.paymentStatus = try CodeableConcept(from: _container, forKeyIfPresent: .paymentStatus)
		self.recipient = try Reference(from: _container, forKey: .recipient)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .statusReason, auxiliaryKey: ._statusReason)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try amount.encode(on: &_container, forKey: .amount)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try payee?.encode(on: &_container, forKey: .payee)
		try payment?.encode(on: &_container, forKey: .payment)
		try paymentDate?.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try paymentStatus?.encode(on: &_container, forKey: .paymentStatus)
		try recipient.encode(on: &_container, forKey: .recipient)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason, auxiliaryKey: ._statusReason)
		try text?.encode(on: &_container, forKey: .text)
	}
}
