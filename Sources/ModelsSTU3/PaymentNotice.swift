//
//  PaymentNotice.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/PaymentNotice)
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
 PaymentNotice request.
 
 This resource provides the status of the payment for goods and services rendered, and the request and response resource
 references.
 */
open class PaymentNotice: DomainResource {
	
	override open class var resourceType: ResourceType { return .paymentNotice }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Payment or clearing date
	public var statusDate: FHIRPrimitive<FHIRDate>?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer or Regulatory body
	public var target: Reference?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Whether payment has been sent or cleared
	public var paymentStatus: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							paymentStatus: CodeableConcept? = nil,
							provider: Reference? = nil,
							request: Reference? = nil,
							response: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							statusDate: FHIRPrimitive<FHIRDate>? = nil,
							target: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.contained = contained
		self.created = created
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.paymentStatus = paymentStatus
		self.provider = provider
		self.request = request
		self.response = response
		self.status = status
		self.statusDate = statusDate
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case identifier
		case organization
		case paymentStatus
		case provider
		case request
		case response
		case status; case _status
		case statusDate; case _statusDate
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.paymentStatus = try CodeableConcept(from: _container, forKeyIfPresent: .paymentStatus)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.statusDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try paymentStatus?.encode(on: &_container, forKey: .paymentStatus)
		try provider?.encode(on: &_container, forKey: .provider)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PaymentNotice else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return created == _other.created
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && paymentStatus == _other.paymentStatus
		    && provider == _other.provider
		    && request == _other.request
		    && response == _other.response
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(paymentStatus)
		hasher.combine(provider)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(target)
	}
}
