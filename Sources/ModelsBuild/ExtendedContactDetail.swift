//
//  ExtendedContactDetail.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/ExtendedContactDetail)
//  Copyright 2022 Apple Inc.
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
open class ExtendedContactDetail: DataType {
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Name of an individual to contact
	public var name: HumanName?
	
	/// Contact details (e.g.phone/fax/url)
	public var telecom: [ContactPoint]?
	
	/// Address for the contact
	public var address: Address?
	
	/// Organization
	public var organization: Reference?
	
	/// Period that this contact was valid for usage
	public var period: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		address: Address? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		name: HumanName? = nil,
		organization: Reference? = nil,
		period: Period? = nil,
		purpose: CodeableConcept? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.init()
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
		case name
		case organization
		case period
		case purpose
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.name = try HumanName(from: _container, forKeyIfPresent: .name)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.purpose = try CodeableConcept(from: _container, forKeyIfPresent: .purpose)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try name?.encode(on: &_container, forKey: .name)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExtendedContactDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && name == _other.name
		    && organization == _other.organization
		    && period == _other.period
		    && purpose == _other.purpose
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(name)
		hasher.combine(organization)
		hasher.combine(period)
		hasher.combine(purpose)
		hasher.combine(telecom)
	}
}
