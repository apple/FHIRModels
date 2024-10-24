//
//  Endpoint.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Endpoint)
//  Copyright 2024 Apple Inc.
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
open class Endpoint: DomainResource {
	
	override open class var resourceType: ResourceType { return .endpoint }
	
	/// Identifies this endpoint across multiple systems
	public var identifier: [Identifier]?
	
	/// The endpoint status represents whether the endpoint can currently be used for connections or why it can't be
	/// used.
	public var status: FHIRPrimitive<EndpointStatus>
	
	/// Protocol/Profile/Standard to be used with this endpoint connection
	public var connectionType: [CodeableConcept]
	
	/// A name that this endpoint can be identified by
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Additional details about the endpoint that could be displayed as further information to identify the description
	/// beyond its name
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The type of environment(s) exposed at this endpoint
	public var environmentType: [CodeableConcept]?
	
	/// Organization that manages this endpoint (might not be the organization that exposes the endpoint)
	public var managingOrganization: Reference?
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Interval the endpoint is expected to be operational
	public var period: Period?
	
	/// Times the endpoint is expected to be available (including exceptions)
	public var availability: Availability?
	
	/// Set of payloads that are provided by this endpoint
	public var payload: [EndpointPayload]?
	
	/// The technical base address for connecting to this endpoint
	public var address: FHIRPrimitive<FHIRURI>
	
	/// Usage depends on the channel type
	public var header: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(address: FHIRPrimitive<FHIRURI>, connectionType: [CodeableConcept], status: FHIRPrimitive<EndpointStatus>) {
		self.address = address
		self.connectionType = connectionType
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(address: address, connectionType: connectionType, status: status)
		self.availability = availability
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
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case availability
		case connectionType
		case contact
		case description_fhir = "description"; case _description_fhir = "_description"
		case environmentType
		case header; case _header
		case identifier
		case managingOrganization
		case name; case _name
		case payload
		case period
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .address, auxiliaryKey: ._address)
		self.availability = try Availability(from: _container, forKeyIfPresent: .availability)
		self.connectionType = try [CodeableConcept](from: _container, forKey: .connectionType)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.environmentType = try [CodeableConcept](from: _container, forKeyIfPresent: .environmentType)
		self.header = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .header, auxiliaryKey: ._header)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.payload = try [EndpointPayload](from: _container, forKeyIfPresent: .payload)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<EndpointStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try availability?.encode(on: &_container, forKey: .availability)
		try connectionType.encode(on: &_container, forKey: .connectionType)
		try contact?.encode(on: &_container, forKey: .contact)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try environmentType?.encode(on: &_container, forKey: .environmentType)
		try header?.encode(on: &_container, forKey: .header, auxiliaryKey: ._header)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try payload?.encode(on: &_container, forKey: .payload)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Endpoint else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && availability == _other.availability
		    && connectionType == _other.connectionType
		    && contact == _other.contact
		    && description_fhir == _other.description_fhir
		    && environmentType == _other.environmentType
		    && header == _other.header
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && name == _other.name
		    && payload == _other.payload
		    && period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(availability)
		hasher.combine(connectionType)
		hasher.combine(contact)
		hasher.combine(description_fhir)
		hasher.combine(environmentType)
		hasher.combine(header)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(name)
		hasher.combine(payload)
		hasher.combine(period)
		hasher.combine(status)
	}
}

/**
 Set of payloads that are provided by this endpoint.
 
 The set of payloads that are provided/available at this endpoint.
 */
open class EndpointPayload: BackboneElement {
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)
	public var type: [CodeableConcept]?
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType
	/// defined this)
	public var mimeType: [FHIRPrimitive<FHIRString>]?
	
	/// The profile that is expected at this endpoint
	public var profileCanonical: [FHIRPrimitive<Canonical>]?
	
	/// The non-fhir based profile that is expected at this endpoint
	public var profileUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mimeType: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		profileCanonical: [FHIRPrimitive<Canonical>]? = nil,
		profileUri: [FHIRPrimitive<FHIRURI>]? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
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
		case mimeType; case _mimeType
		case profileCanonical; case _profileCanonical
		case profileUri; case _profileUri
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.mimeType = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .mimeType, auxiliaryKey: ._mimeType)
		self.profileCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profileCanonical, auxiliaryKey: ._profileCanonical)
		self.profileUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .profileUri, auxiliaryKey: ._profileUri)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try mimeType?.encode(on: &_container, forKey: .mimeType, auxiliaryKey: ._mimeType)
		try profileCanonical?.encode(on: &_container, forKey: .profileCanonical, auxiliaryKey: ._profileCanonical)
		try profileUri?.encode(on: &_container, forKey: .profileUri, auxiliaryKey: ._profileUri)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EndpointPayload else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return mimeType == _other.mimeType
		    && profileCanonical == _other.profileCanonical
		    && profileUri == _other.profileUri
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(mimeType)
		hasher.combine(profileCanonical)
		hasher.combine(profileUri)
		hasher.combine(type)
	}
}
