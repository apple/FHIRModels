//
//  EnrollmentResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/EnrollmentResponse)
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
 EnrollmentResponse resource.
 
 This resource provides enrollment and plan details from the processing of an Enrollment resource.
 */
open class EnrollmentResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .enrollmentResponse }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Claim reference
	public var request: Reference?
	
	/// complete | error | partial
	public var outcome: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer
	public var organization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							outcome: CodeableConcept? = nil,
							request: Reference? = nil,
							requestOrganization: Reference? = nil,
							requestProvider: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.contained = contained
		self.created = created
		self.disposition = disposition
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.outcome = outcome
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case disposition; case _disposition
		case identifier
		case organization
		case outcome
		case request
		case requestOrganization
		case requestProvider
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EnrollmentResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return created == _other.created
		    && disposition == _other.disposition
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && outcome == _other.outcome
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(outcome)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(status)
	}
}
