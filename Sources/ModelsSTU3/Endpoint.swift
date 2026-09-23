//
//  Endpoint.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Endpoint)
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
 
 The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b
 or a REST endpoint for another FHIR server. This may include any security context information.
 */
public struct Endpoint: DomainResource {
	
	public static let resourceType: ResourceType = .endpoint
	
	/// The technical base address for connecting to this endpoint
	public var address: FHIRPrimitive<FHIRURI>
	
	/// Protocol/Profile/Standard to be used with this endpoint connection
	public var connectionType: Coding
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
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
	
	/// Organization that manages this endpoint (may not be the organization that exposes the endpoint)
	public var managingOrganization: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name that this endpoint can be identified by
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType
	/// defined this)
	public var payloadMimeType: [FHIRPrimitive<FHIRString>]?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)
	public var payloadType: [CodeableConcept]
	
	/// Interval the endpoint is expected to be operational
	public var period: Period?
	
	/// active | suspended | error | off | test.
	public var status: FHIRPrimitive<EndpointStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		address: FHIRPrimitive<FHIRURI>,
		connectionType: Coding,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
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
		payloadMimeType: [FHIRPrimitive<FHIRString>]? = nil,
		payloadType: [CodeableConcept],
		period: Period? = nil,
		status: FHIRPrimitive<EndpointStatus>,
		text: Narrative? = nil
	) {
		self.address = address
		self.connectionType = connectionType
		self.contact = contact
		self.contained = contained
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
		self.payloadMimeType = payloadMimeType
		self.payloadType = payloadType
		self.period = period
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case address; case _address
		case connectionType
		case contact
		case contained
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
		case payloadMimeType; case _payloadMimeType
		case payloadType
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
		self.connectionType = try Coding(from: _container, forKey: .connectionType)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
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
		self.payloadMimeType = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .payloadMimeType, auxiliaryKey: ._payloadMimeType)
		self.payloadType = try [CodeableConcept](from: _container, forKey: .payloadType)
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
		try connectionType.encode(on: &_container, forKey: .connectionType)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
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
		try payloadMimeType?.encode(on: &_container, forKey: .payloadMimeType, auxiliaryKey: ._payloadMimeType)
		try payloadType.encode(on: &_container, forKey: .payloadType)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}
