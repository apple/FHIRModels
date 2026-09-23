//
//  ExtendedContactDetail.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ExtendedContactDetail)
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
 Contact information.
 
 Specifies contact information for a specific purpose over a period of time, might be handled/monitored by a specific
 named person or organization.
 */
public struct ExtendedContactDetail: DataType {
	
	/// Address for the contact
	public var address: Address?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Name of an individual to contact
	public var name: [HumanName]?
	
	/// This contact detail is handled/monitored by a specific organization
	public var organization: Reference?
	
	/// Period that this contact was valid for usage
	public var period: Period?
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Contact details (e.g.phone/fax/url)
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		address: Address? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		name: [HumanName]? = nil,
		organization: Reference? = nil,
		period: Period? = nil,
		purpose: CodeableConcept? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.address = address
		self.`extension` = `extension`
		self.id = id
		self.name = name
		self.organization = organization
		self.period = period
		self.purpose = purpose
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case `extension` = "extension"
		case id; case _id
		case name
		case organization
		case period
		case purpose
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.name = try [HumanName](from: _container, forKeyIfPresent: .name)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.purpose = try CodeableConcept(from: _container, forKeyIfPresent: .purpose)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try address?.encode(on: &_container, forKey: .address)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try name?.encode(on: &_container, forKey: .name)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}
