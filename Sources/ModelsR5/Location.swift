//
//  Location.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Location)
//  Copyright 2023 Apple Inc.
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
open class Location: DomainResource {
	
	override open class var resourceType: ResourceType { return .location }
	
	/// Unique code or number identifying the location to its users
	public var identifier: [Identifier]?
	
	/// The status property covers the general availability of the resource, not the current value which may be covered
	/// by the operationStatus, or by a schedule/slots if they are configured for the location.
	public var status: FHIRPrimitive<LocationStatus>?
	
	/// The operational status of the location (typically only for a bed/room)
	public var operationalStatus: Coding?
	
	/// Name of the location as used by humans
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A list of alternate names that the location is known as, or was known as, in the past
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Additional details about the location that could be displayed as further information to identify the location
	/// beyond its name
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Indicates whether a resource instance represents a specific location or a class of locations.
	public var mode: FHIRPrimitive<LocationMode>?
	
	/// Type of function performed
	public var type: [CodeableConcept]?
	
	/// Official contact details for the location
	public var contact: [ExtendedContactDetail]?
	
	/// Physical location
	public var address: Address?
	
	/// Physical form of the location
	public var form: CodeableConcept?
	
	/// The absolute geographic location
	public var position: LocationPosition?
	
	/// Organization responsible for provisioning and upkeep
	public var managingOrganization: Reference?
	
	/// Another Location this one is physically a part of
	public var partOf: Reference?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// What days/times during a week is this location usually open (including exceptions)
	public var hoursOfOperation: [Availability]?
	
	/// Connection details of a virtual service (e.g. conference call)
	public var virtualService: [VirtualServiceDetail]?
	
	/// Technical endpoints providing access to services operated for the location
	public var endpoint: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		address: Address? = nil,
		alias: [FHIRPrimitive<FHIRString>]? = nil,
		characteristic: [CodeableConcept]? = nil,
		contact: [ExtendedContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		hoursOfOperation: [Availability]? = nil,
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
		self.init()
		self.address = address
		self.alias = alias
		self.characteristic = characteristic
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
		case address
		case alias; case _alias
		case characteristic
		case contact
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case form
		case hoursOfOperation
		case identifier
		case managingOrganization
		case mode; case _mode
		case name; case _name
		case operationalStatus
		case partOf
		case position
		case status; case _status
		case type
		case virtualService
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.contact = try [ExtendedContactDetail](from: _container, forKeyIfPresent: .contact)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.hoursOfOperation = try [Availability](from: _container, forKeyIfPresent: .hoursOfOperation)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.mode = try FHIRPrimitive<LocationMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.operationalStatus = try Coding(from: _container, forKeyIfPresent: .operationalStatus)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.position = try LocationPosition(from: _container, forKeyIfPresent: .position)
		self.status = try FHIRPrimitive<LocationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.virtualService = try [VirtualServiceDetail](from: _container, forKeyIfPresent: .virtualService)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try contact?.encode(on: &_container, forKey: .contact)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try form?.encode(on: &_container, forKey: .form)
		try hoursOfOperation?.encode(on: &_container, forKey: .hoursOfOperation)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try position?.encode(on: &_container, forKey: .position)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try virtualService?.encode(on: &_container, forKey: .virtualService)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Location else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && alias == _other.alias
		    && characteristic == _other.characteristic
		    && contact == _other.contact
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && form == _other.form
		    && hoursOfOperation == _other.hoursOfOperation
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && mode == _other.mode
		    && name == _other.name
		    && operationalStatus == _other.operationalStatus
		    && partOf == _other.partOf
		    && position == _other.position
		    && status == _other.status
		    && type == _other.type
		    && virtualService == _other.virtualService
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(alias)
		hasher.combine(characteristic)
		hasher.combine(contact)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(form)
		hasher.combine(hoursOfOperation)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(mode)
		hasher.combine(name)
		hasher.combine(operationalStatus)
		hasher.combine(partOf)
		hasher.combine(position)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(virtualService)
	}
}

/**
 The absolute geographic location.
 
 The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system
 used in KML).
 */
open class LocationPosition: BackboneElement {
	
	/// Longitude with WGS84 datum
	public var longitude: FHIRPrimitive<FHIRDecimal>
	
	/// Latitude with WGS84 datum
	public var latitude: FHIRPrimitive<FHIRDecimal>
	
	/// Altitude with WGS84 datum
	public var altitude: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	public init(latitude: FHIRPrimitive<FHIRDecimal>, longitude: FHIRPrimitive<FHIRDecimal>) {
		self.latitude = latitude
		self.longitude = longitude
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		altitude: FHIRPrimitive<FHIRDecimal>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		latitude: FHIRPrimitive<FHIRDecimal>,
		longitude: FHIRPrimitive<FHIRDecimal>,
		modifierExtension: [Extension]? = nil
	) {
		self.init(latitude: latitude, longitude: longitude)
		self.altitude = altitude
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case altitude; case _altitude
		case latitude; case _latitude
		case longitude; case _longitude
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.altitude = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .altitude, auxiliaryKey: ._altitude)
		self.latitude = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .latitude, auxiliaryKey: ._latitude)
		self.longitude = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .longitude, auxiliaryKey: ._longitude)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try altitude?.encode(on: &_container, forKey: .altitude, auxiliaryKey: ._altitude)
		try latitude.encode(on: &_container, forKey: .latitude, auxiliaryKey: ._latitude)
		try longitude.encode(on: &_container, forKey: .longitude, auxiliaryKey: ._longitude)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? LocationPosition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return altitude == _other.altitude
		    && latitude == _other.latitude
		    && longitude == _other.longitude
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(altitude)
		hasher.combine(latitude)
		hasher.combine(longitude)
	}
}
