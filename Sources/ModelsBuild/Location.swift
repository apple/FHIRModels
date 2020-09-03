//
//  Location.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Location)
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
 Details and position information for a physical place.
 
 Details and position information for a physical place where services are provided and resources and participants may be
 stored, found, contained, or accommodated.
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
	
	/// Contact details of the location
	public var telecom: [ContactPoint]?
	
	/// Physical location
	public var address: Address?
	
	/// Physical form of the location
	public var physicalType: CodeableConcept?
	
	/// The absolute geographic location
	public var position: LocationPosition?
	
	/// Organization responsible for provisioning and upkeep
	public var managingOrganization: Reference?
	
	/// Another Location this one is physically a part of
	public var partOf: Reference?
	
	/// What days/times during a week is this location usually open
	public var hoursOfOperation: [LocationHoursOfOperation]?
	
	/// Description of availability exceptions
	public var availabilityExceptions: FHIRPrimitive<FHIRString>?
	
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
							availabilityExceptions: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							endpoint: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							hoursOfOperation: [LocationHoursOfOperation]? = nil,
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
							physicalType: CodeableConcept? = nil,
							position: LocationPosition? = nil,
							status: FHIRPrimitive<LocationStatus>? = nil,
							telecom: [ContactPoint]? = nil,
							text: Narrative? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init()
		self.address = address
		self.alias = alias
		self.availabilityExceptions = availabilityExceptions
		self.contained = contained
		self.description_fhir = description_fhir
		self.endpoint = endpoint
		self.`extension` = `extension`
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
		self.physicalType = physicalType
		self.position = position
		self.status = status
		self.telecom = telecom
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address
		case alias; case _alias
		case availabilityExceptions; case _availabilityExceptions
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case hoursOfOperation
		case identifier
		case managingOrganization
		case mode; case _mode
		case name; case _name
		case operationalStatus
		case partOf
		case physicalType
		case position
		case status; case _status
		case telecom
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try Address(from: _container, forKeyIfPresent: .address)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.availabilityExceptions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.hoursOfOperation = try [LocationHoursOfOperation](from: _container, forKeyIfPresent: .hoursOfOperation)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try Reference(from: _container, forKeyIfPresent: .managingOrganization)
		self.mode = try FHIRPrimitive<LocationMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.operationalStatus = try Coding(from: _container, forKeyIfPresent: .operationalStatus)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.physicalType = try CodeableConcept(from: _container, forKeyIfPresent: .physicalType)
		self.position = try LocationPosition(from: _container, forKeyIfPresent: .position)
		self.status = try FHIRPrimitive<LocationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try availabilityExceptions?.encode(on: &_container, forKey: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try hoursOfOperation?.encode(on: &_container, forKey: .hoursOfOperation)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try physicalType?.encode(on: &_container, forKey: .physicalType)
		try position?.encode(on: &_container, forKey: .position)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try type?.encode(on: &_container, forKey: .type)
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
		    && availabilityExceptions == _other.availabilityExceptions
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && hoursOfOperation == _other.hoursOfOperation
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && mode == _other.mode
		    && name == _other.name
		    && operationalStatus == _other.operationalStatus
		    && partOf == _other.partOf
		    && physicalType == _other.physicalType
		    && position == _other.position
		    && status == _other.status
		    && telecom == _other.telecom
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(alias)
		hasher.combine(availabilityExceptions)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(hoursOfOperation)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(mode)
		hasher.combine(name)
		hasher.combine(operationalStatus)
		hasher.combine(partOf)
		hasher.combine(physicalType)
		hasher.combine(position)
		hasher.combine(status)
		hasher.combine(telecom)
		hasher.combine(type)
	}
}

/**
 What days/times during a week is this location usually open.
 */
open class LocationHoursOfOperation: BackboneElement {
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [FHIRPrimitive<DaysOfWeek>]?
	
	/// The Location is open all day
	public var allDay: FHIRPrimitive<FHIRBool>?
	
	/// Time that the Location opens
	public var openingTime: FHIRPrimitive<FHIRTime>?
	
	/// Time that the Location closes
	public var closingTime: FHIRPrimitive<FHIRTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allDay: FHIRPrimitive<FHIRBool>? = nil,
							closingTime: FHIRPrimitive<FHIRTime>? = nil,
							daysOfWeek: [FHIRPrimitive<DaysOfWeek>]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							openingTime: FHIRPrimitive<FHIRTime>? = nil)
	{
		self.init()
		self.allDay = allDay
		self.closingTime = closingTime
		self.daysOfWeek = daysOfWeek
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.openingTime = openingTime
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allDay; case _allDay
		case closingTime; case _closingTime
		case daysOfWeek; case _daysOfWeek
		case openingTime; case _openingTime
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allDay = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allDay, auxiliaryKey: ._allDay)
		self.closingTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .closingTime, auxiliaryKey: ._closingTime)
		self.daysOfWeek = try [FHIRPrimitive<DaysOfWeek>](from: _container, forKeyIfPresent: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		self.openingTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .openingTime, auxiliaryKey: ._openingTime)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allDay?.encode(on: &_container, forKey: .allDay, auxiliaryKey: ._allDay)
		try closingTime?.encode(on: &_container, forKey: .closingTime, auxiliaryKey: ._closingTime)
		try daysOfWeek?.encode(on: &_container, forKey: .daysOfWeek, auxiliaryKey: ._daysOfWeek)
		try openingTime?.encode(on: &_container, forKey: .openingTime, auxiliaryKey: ._openingTime)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? LocationHoursOfOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allDay == _other.allDay
		    && closingTime == _other.closingTime
		    && daysOfWeek == _other.daysOfWeek
		    && openingTime == _other.openingTime
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allDay)
		hasher.combine(closingTime)
		hasher.combine(daysOfWeek)
		hasher.combine(openingTime)
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
							modifierExtension: [Extension]? = nil)
	{
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
