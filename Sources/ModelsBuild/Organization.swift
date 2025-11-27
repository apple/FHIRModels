//
//  Organization.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/Organization)
//  Copyright 2025 Apple Inc.
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
 A grouping of people or organizations with a common purpose.
 
 A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form
 of collective action.
 */
open class Organization: DomainResource {
	
	override open class var resourceType: ResourceType { return .organization }
	
	/// Identifies this organization  across multiple systems
	public var identifier: [Identifier]?
	
	/// Whether the organization's record is still in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Kind of organization
	public var type: [CodeableConcept]?
	
	/// Name used for the organization
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A list of alternate names that the organization is known as, or was known as in the past
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Additional details about the Organization that could be displayed as further information to identify the
	/// Organization beyond its name
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Official contact details for the Organization
	public var contact: [ExtendedContactDetail]?
	
	/// The organization of which this organization forms a part
	public var partOf: Reference?
	
	/// Technical endpoints providing access to services operated for the organization
	public var endpoint: [Reference]?
	
	/// Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care
	public var qualification: [OrganizationQualification]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		alias: [FHIRPrimitive<FHIRString>]? = nil,
		contact: [ExtendedContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		partOf: Reference? = nil,
		qualification: [OrganizationQualification]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.active = active
		self.alias = alias
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.partOf = partOf
		self.qualification = qualification
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case alias; case _alias
		case contact
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case identifier
		case name; case _name
		case partOf
		case qualification
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.qualification = try [OrganizationQualification](from: _container, forKeyIfPresent: .qualification)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try contact?.encode(on: &_container, forKey: .contact)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Organization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && alias == _other.alias
		    && contact == _other.contact
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && identifier == _other.identifier
		    && name == _other.name
		    && partOf == _other.partOf
		    && qualification == _other.qualification
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(alias)
		hasher.combine(contact)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(partOf)
		hasher.combine(qualification)
		hasher.combine(type)
	}
}

/**
 Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care.
 
 The official certifications, accreditations, training, designations and licenses that authorize and/or otherwise
 endorse the provision of care by the organization.
 
 For example, an approval to provide a type of services issued by a certifying body (such as the US Joint Commission) to
 an organization.
 */
open class OrganizationQualification: BackboneElement {
	
	/// An identifier for this qualification for the organization
	public var identifier: [Identifier]?
	
	/// Coded representation of the qualification
	public var code: CodeableConcept
	
	/// Status/progress of the qualification
	public var status: CodeableConcept?
	
	/// Period during which the qualification is valid
	public var period: Period?
	
	/// Organization that regulates and issues the qualification
	public var issuer: Reference?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		issuer: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		status: CodeableConcept? = nil
	) {
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.issuer = issuer
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case identifier
		case issuer
		case period
		case status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try period?.encode(on: &_container, forKey: .period)
		try status?.encode(on: &_container, forKey: .status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OrganizationQualification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && identifier == _other.identifier
		    && issuer == _other.issuer
		    && period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(identifier)
		hasher.combine(issuer)
		hasher.combine(period)
		hasher.combine(status)
	}
}
