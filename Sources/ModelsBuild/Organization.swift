//
//  Organization.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Organization)
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
 A grouping of people or organizations with a common purpose.
 
 A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form
 of collective action.
 */
public struct Organization: DomainResource {
	
	public static let resourceType: ResourceType = .organization
	
	/// Whether the organization's record is still in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// A list of alternate names that the organization is known as, or was known as in the past
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Official contact details for the Organization
	public var contact: [ExtendedContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional details about the Organization that could be displayed as further information to identify the
	/// Organization beyond its name
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Technical endpoints providing access to services operated for the organization
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifies this organization  across multiple systems
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name used for the organization
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The organization of which this organization forms a part
	public var partOf: Reference?
	
	/// Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care
	public var qualification: [OrganizationQualification]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of organization
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		case resourceType
		case active; case _active
		case alias; case _alias
		case contact
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case partOf
		case qualification
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.qualification = try [OrganizationQualification](from: _container, forKeyIfPresent: .qualification)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try qualification?.encode(on: &_container, forKey: .qualification)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care.
 
 The official certifications, accreditations, training, designations and licenses that authorize and/or otherwise
 endorse the provision of care by the organization.
 
 For example, an approval to provide a type of services issued by a certifying body (such as the US Joint Commission) to
 an organization.
 */
public struct OrganizationQualification: BackboneElement {
	
	/// Coded representation of the qualification
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for this qualification for the organization
	public var identifier: [Identifier]?
	
	/// Organization that regulates and issues the qualification
	public var issuer: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Period during which the qualification is valid
	public var period: Period?
	
	/// Status/progress of the qualification
	public var status: CodeableConcept?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		issuer: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		status: CodeableConcept? = nil
	) {
		self.code = code
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case issuer
		case modifierExtension
		case period
		case status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try status?.encode(on: &_container, forKey: .status)
	}
}
