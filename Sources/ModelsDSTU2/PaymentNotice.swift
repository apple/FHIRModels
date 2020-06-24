//
//  PaymentNotice.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/PaymentNotice)
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
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer or Regulatory body
	public var target: Reference?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Status of the payment
	public var paymentStatus: Coding
	
	/// Designated initializer taking all required properties
	public init(paymentStatus: Coding) {
		self.paymentStatus = paymentStatus
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
							originalRuleset: Coding? = nil,
							paymentStatus: Coding,
							provider: Reference? = nil,
							request: Reference? = nil,
							response: Reference? = nil,
							ruleset: Coding? = nil,
							target: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init(paymentStatus: paymentStatus)
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
		self.originalRuleset = originalRuleset
		self.provider = provider
		self.request = request
		self.response = response
		self.ruleset = ruleset
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case identifier
		case organization
		case originalRuleset
		case paymentStatus
		case provider
		case request
		case response
		case ruleset
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.paymentStatus = try Coding(from: _container, forKey: .paymentStatus)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
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
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try paymentStatus.encode(on: &_container, forKey: .paymentStatus)
		try provider?.encode(on: &_container, forKey: .provider)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
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
		    && originalRuleset == _other.originalRuleset
		    && paymentStatus == _other.paymentStatus
		    && provider == _other.provider
		    && request == _other.request
		    && response == _other.response
		    && ruleset == _other.ruleset
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(originalRuleset)
		hasher.combine(paymentStatus)
		hasher.combine(provider)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(ruleset)
		hasher.combine(target)
	}
}
