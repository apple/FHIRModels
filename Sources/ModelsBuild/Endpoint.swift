//
//  Endpoint.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Endpoint)
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
 The technical details of an endpoint that can be used for electronic services.
 
 The technical details of an endpoint that can be used for electronic services, such as for web services providing
 XDS.b, a REST endpoint for another FHIR server, or a s/Mime email address. This may include any security context
 information.
 */
public struct Endpoint: DomainResource {
	
	public static let resourceType: ResourceType = .endpoint
	
	/// The technical base address for connecting to this endpoint
	public var address: FHIRPrimitive<FHIRURI>
	
	/// Times the endpoint is expected to be available (including exceptions)
	public var availability: Availability?
	
	/// Protocol/Profile/Standard to be used with this endpoint connection
	public var connectionType: [CodeableConcept]
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional details about the endpoint that could be displayed as further information to identify the description
	/// beyond its name
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The type of environment(s) exposed at this endpoint
	public var environmentType: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Usage depends on the channel type
	public var header: [FHIRPrimitive<FHIRString>]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifies this endpoint across multiple systems
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Organization that manages this endpoint (might not be the organization that exposes the endpoint)
	public var managingOrganization: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name that this endpoint can be identified by
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Set of payloads that are provided by this endpoint
	public var payload: [EndpointPayload]?
	
	/// Interval the endpoint is expected to be operational
	public var period: Period?
	
	/// The endpoint status represents whether the endpoint can currently be used for connections or why it can't be
	/// used.
	public var status: FHIRPrimitive<EndpointStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		address: FHIRPrimitive<FHIRURI>,
		availability: Availability? = nil,
		connectionType: [CodeableConcept],
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		environmentType: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		header: [FHIRPrimitive<FHIRString>]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managingOrganization: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		payload: [EndpointPayload]? = nil,
		period: Period? = nil,
		status: FHIRPrimitive<EndpointStatus>,
		text: Narrative? = nil
	) {
		self.address = address
		self.availability = availability
		self.connectionType = connectionType
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.environmentType = environmentType
		self.`extension` = `extension`
		self.header = header
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingOrganization = managingOrganization
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.payload = payload
		self.period = period
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case address; case _address
		case availability
		case connectionType
		case contact
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case environmentType
		case `extension` = "extension"
		case header; case _header
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case managingOrganization
		case meta
		case modifierExtension
		case name; case _name
		case payload
		case period
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .address, auxiliaryKey: ._address)
		self.availability = try Availability(from: _container, forKeyIfPresent: .availability)
		self.connectionType = try [CodeableConcept](from: _container, forKey: .connectionType)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.environmentType = try [CodeableConcept](from: _container, forKeyIfPresent: .environmentType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.header = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .header, auxiliaryKey: ._header)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.payload = try [EndpointPayload](from: _container, forKeyIfPresent: .payload)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<EndpointStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try address.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try availability?.encode(on: &_container, forKey: .availability)
		try connectionType.encode(on: &_container, forKey: .connectionType)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try environmentType?.encode(on: &_container, forKey: .environmentType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try header?.encode(on: &_container, forKey: .header, auxiliaryKey: ._header)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try payload?.encode(on: &_container, forKey: .payload)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Set of payloads that are provided by this endpoint.
 
 The set of payloads that are provided/available at this endpoint.
 */
public struct EndpointPayload: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType
	/// defined this)
	public var mimeType: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The profile that is expected at this endpoint
	public var profileCanonical: [FHIRPrimitive<Canonical>]?
	
	/// The non-fhir based profile that is expected at this endpoint
	public var profileUri: [FHIRPrimitive<FHIRURI>]?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mimeType: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		profileCanonical: [FHIRPrimitive<Canonical>]? = nil,
		profileUri: [FHIRPrimitive<FHIRURI>]? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.mimeType = mimeType
		self.modifierExtension = modifierExtension
		self.profileCanonical = profileCanonical
		self.profileUri = profileUri
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case mimeType; case _mimeType
		case modifierExtension
		case profileCanonical; case _profileCanonical
		case profileUri; case _profileUri
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mimeType = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .mimeType, auxiliaryKey: ._mimeType)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profileCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profileCanonical, auxiliaryKey: ._profileCanonical)
		self.profileUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .profileUri, auxiliaryKey: ._profileUri)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mimeType?.encode(on: &_container, forKey: .mimeType, auxiliaryKey: ._mimeType)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profileCanonical?.encode(on: &_container, forKey: .profileCanonical, auxiliaryKey: ._profileCanonical)
		try profileUri?.encode(on: &_container, forKey: .profileUri, auxiliaryKey: ._profileUri)
		try type?.encode(on: &_container, forKey: .type)
	}
}
