//
//  Location.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Location)
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
 Details and position information for a place.
 
 Details and position information for a place where services are provided and resources and participants may be stored,
 found, contained, or accommodated.
 */
public struct Location: DomainResource {
	
	public static let resourceType: ResourceType = .location
	
	/// Physical location
	public var address: Address?
	
	/// A list of alternate names that the location is known as, or was known as, in the past
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Codes that identify this location
	public var code: [CodeableConcept]?
	
	/// Official contact details for the location
	public var contact: [ExtendedContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional details about the location that could be displayed as further information to identify the location
	/// beyond its name
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Technical endpoints providing access to services operated for the location
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Physical form of the location
	public var form: CodeableConcept?
	
	/// What days/times during a week is this location usually open (including exceptions)
	public var hoursOfOperation: Availability?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique code or number identifying the location to its users
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Organization responsible for provisioning and upkeep
	public var managingOrganization: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Indicates whether a resource instance represents a specific location or a class of locations.
	public var mode: FHIRPrimitive<LocationMode>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of the location as used by humans
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The operational status of the location (typically only for a bed/room)
	public var operationalStatus: Coding?
	
	/// Another Location this one is physically a part of
	public var partOf: Reference?
	
	/// The absolute geographic location
	public var position: LocationPosition?
	
	/// The status property covers the general availability of the resource, not the current value which may be covered
	/// by the operationalStatus, or by a schedule/slots if they are configured for the location.
	public var status: FHIRPrimitive<LocationStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Types of services available at this location
	public var type: [CodeableConcept]?
	
	/// Connection details of a virtual service (e.g. conference call)
	public var virtualService: [VirtualServiceDetail]?
	
	/// Designated initializer
	public init(
		address: Address? = nil,
		alias: [FHIRPrimitive<FHIRString>]? = nil,
		characteristic: [CodeableConcept]? = nil,
		code: [CodeableConcept]? = nil,
		contact: [ExtendedContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		hoursOfOperation: Availability? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managingOrganization: Reference? = nil,
		meta: Meta? = nil,
		mode: FHIRPrimitive<LocationMode>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		operationalStatus: Coding? = nil,
		partOf: Reference? = nil,
		position: LocationPosition? = nil,
		status: FHIRPrimitive<LocationStatus>? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil,
		virtualService: [VirtualServiceDetail]? = nil
	) {
		self.address = address
		self.alias = alias
		self.characteristic = characteristic
		self.code = code
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.form = form
		self.hoursOfOperation = hoursOfOperation
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingOrganization = managingOrganization
		self.meta = meta
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.name = name
		self.operationalStatus = operationalStatus
		self.partOf = partOf
		self.position = position
		self.status = status
		self.text = text
		self.type = type
		self.virtualService = virtualService
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case address
		case alias; case _alias
		case characteristic
		case code
		case contact
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case `extension` = "extension"
		case form
		case hoursOfOperation
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case managingOrganization
		case meta
		case mode; case _mode
		case modifierExtension
		case name; case _name
		case operationalStatus
		case partOf
		case position
		case status; case _status
		case text
		case type
		case virtualService
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.hoursOfOperation = try Availability(from: _container, forKeyIfPresent: .hoursOfOperation)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.mode = try FHIRPrimitive<LocationMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.operationalStatus = try Coding(from: _container, forKeyIfPresent: .operationalStatus)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.position = try LocationPosition(from: _container, forKeyIfPresent: .position)
		self.status = try FHIRPrimitive<LocationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.virtualService = try [VirtualServiceDetail](from: _container, forKeyIfPresent: .virtualService)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try address?.encode(on: &_container, forKey: .address)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try hoursOfOperation?.encode(on: &_container, forKey: .hoursOfOperation)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try meta?.encode(on: &_container, forKey: .meta)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try position?.encode(on: &_container, forKey: .position)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try virtualService?.encode(on: &_container, forKey: .virtualService)
	}
}

/**
 The absolute geographic location.
 
 The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system
 used in KML).
 */
public struct LocationPosition: BackboneElement {
	
	/// Altitude with WGS84 datum
	public var altitude: FHIRPrimitive<FHIRDecimal>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Latitude with WGS84 datum
	public var latitude: FHIRPrimitive<FHIRDecimal>
	
	/// Longitude with WGS84 datum
	public var longitude: FHIRPrimitive<FHIRDecimal>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		altitude: FHIRPrimitive<FHIRDecimal>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		latitude: FHIRPrimitive<FHIRDecimal>,
		longitude: FHIRPrimitive<FHIRDecimal>,
		modifierExtension: [Extension]? = nil
	) {
		self.altitude = altitude
		self.`extension` = `extension`
		self.id = id
		self.latitude = latitude
		self.longitude = longitude
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case altitude; case _altitude
		case `extension` = "extension"
		case id; case _id
		case latitude; case _latitude
		case longitude; case _longitude
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.altitude = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .altitude, auxiliaryKey: ._altitude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.latitude = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .latitude, auxiliaryKey: ._latitude)
		self.longitude = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .longitude, auxiliaryKey: ._longitude)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try altitude?.encode(on: &_container, forKey: .altitude, auxiliaryKey: ._altitude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try latitude.encode(on: &_container, forKey: .latitude, auxiliaryKey: ._latitude)
		try longitude.encode(on: &_container, forKey: .longitude, auxiliaryKey: ._longitude)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
