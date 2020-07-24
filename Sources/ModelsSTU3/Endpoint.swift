//
//  Endpoint.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Endpoint)
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
 The technical details of an endpoint that can be used for electronic services.
 
 The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b
 or a REST endpoint for another FHIR server. This may include any security context information.
 */
open class Endpoint: DomainResource {
	
	override open class var resourceType: ResourceType { return .endpoint }
	
	/// Identifies this endpoint across multiple systems
	public var identifier: [Identifier]?
	
	/// active | suspended | error | off | test.
	public var status: FHIRPrimitive<EndpointStatus>
	
	/// Protocol/Profile/Standard to be used with this endpoint connection
	public var connectionType: Coding
	
	/// A name that this endpoint can be identified by
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Organization that manages this endpoint (may not be the organization that exposes the endpoint)
	public var managingOrganization: Reference?
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Interval the endpoint is expected to be operational
	public var period: Period?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)
	public var payloadType: [CodeableConcept]
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType
	/// defined this)
	public var payloadMimeType: [FHIRPrimitive<FHIRString>]?
	
	/// The technical base address for connecting to this endpoint
	public var address: FHIRPrimitive<FHIRURI>
	
	/// Usage depends on the channel type
	public var header: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(address: FHIRPrimitive<FHIRURI>, connectionType: Coding, payloadType: [CodeableConcept], status: FHIRPrimitive<EndpointStatus>) {
		self.address = address
		self.connectionType = connectionType
		self.payloadType = payloadType
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(address: address, connectionType: connectionType, payloadType: payloadType, status: status)
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
		self.period = period
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case connectionType
		case contact
		case header; case _header
		case identifier
		case managingOrganization
		case name; case _name
		case payloadMimeType; case _payloadMimeType
		case payloadType
		case period
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .address, auxiliaryKey: ._address)
		self.connectionType = try Coding(from: _container, forKey: .connectionType)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.header = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .header, auxiliaryKey: ._header)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.payloadMimeType = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .payloadMimeType, auxiliaryKey: ._payloadMimeType)
		self.payloadType = try [CodeableConcept](from: _container, forKey: .payloadType)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<EndpointStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try connectionType.encode(on: &_container, forKey: .connectionType)
		try contact?.encode(on: &_container, forKey: .contact)
		try header?.encode(on: &_container, forKey: .header, auxiliaryKey: ._header)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try payloadMimeType?.encode(on: &_container, forKey: .payloadMimeType, auxiliaryKey: ._payloadMimeType)
		try payloadType.encode(on: &_container, forKey: .payloadType)
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
		    && connectionType == _other.connectionType
		    && contact == _other.contact
		    && header == _other.header
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && name == _other.name
		    && payloadMimeType == _other.payloadMimeType
		    && payloadType == _other.payloadType
		    && period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(connectionType)
		hasher.combine(contact)
		hasher.combine(header)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(name)
		hasher.combine(payloadMimeType)
		hasher.combine(payloadType)
		hasher.combine(period)
		hasher.combine(status)
	}
}
