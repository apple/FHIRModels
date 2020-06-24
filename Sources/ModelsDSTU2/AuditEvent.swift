//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
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
 Event record kept for security purposes.
 
 A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 attempts and monitoring for inappropriate usage.
 */
open class AuditEvent: DomainResource {
	
	override open class var resourceType: ResourceType { return .auditEvent }
	
	/// What was done
	public var event: AuditEventEvent
	
	/// A person, a hardware device or software process
	public var participant: [AuditEventParticipant]
	
	/// Application systems and processes
	public var source: AuditEventSource
	
	/// Specific instances of data or objects that have been accessed
	public var object: [AuditEventObject]?
	
	/// Designated initializer taking all required properties
	public init(event: AuditEventEvent, participant: [AuditEventParticipant], source: AuditEventSource) {
		self.event = event
		self.participant = participant
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							event: AuditEventEvent,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							object: [AuditEventObject]? = nil,
							participant: [AuditEventParticipant],
							source: AuditEventSource,
							text: Narrative? = nil)
	{
		self.init(event: event, participant: participant, source: source)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.object = object
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case event
		case object
		case participant
		case source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.event = try AuditEventEvent(from: _container, forKey: .event)
		self.object = try [AuditEventObject](from: _container, forKeyIfPresent: .object)
		self.participant = try [AuditEventParticipant](from: _container, forKey: .participant)
		self.source = try AuditEventSource(from: _container, forKey: .source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try event.encode(on: &_container, forKey: .event)
		try object?.encode(on: &_container, forKey: .object)
		try participant.encode(on: &_container, forKey: .participant)
		try source.encode(on: &_container, forKey: .source)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return event == _other.event
		    && object == _other.object
		    && participant == _other.participant
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(event)
		hasher.combine(object)
		hasher.combine(participant)
		hasher.combine(source)
	}
}

/**
 What was done.
 
 Identifies the name, action type, time, and disposition of the audited event.
 */
open class AuditEventEvent: BackboneElement {
	
	/// Type/identifier of event
	public var type: Coding
	
	/// More specific type/id for the event
	public var subtype: [Coding]?
	
	/// Indicator for type of action performed during the event that generated the audit.
	/// Restricted to: ['C', 'R', 'U', 'D', 'E']
	public var action: FHIRPrimitive<AuditEventAction>?
	
	/// Time when the event occurred on source
	public var dateTime: FHIRPrimitive<Instant>
	
	/// Whether the event succeeded or failed
	public var outcome: FHIRPrimitive<FHIRString>?
	
	/// Description of the event outcome
	public var outcomeDesc: FHIRPrimitive<FHIRString>?
	
	/// The purposeOfUse of the event
	public var purposeOfEvent: [Coding]?
	
	/// Designated initializer taking all required properties
	public init(dateTime: FHIRPrimitive<Instant>, type: Coding) {
		self.dateTime = dateTime
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: FHIRPrimitive<AuditEventAction>? = nil,
							dateTime: FHIRPrimitive<Instant>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: FHIRPrimitive<FHIRString>? = nil,
							outcomeDesc: FHIRPrimitive<FHIRString>? = nil,
							purposeOfEvent: [Coding]? = nil,
							subtype: [Coding]? = nil,
							type: Coding)
	{
		self.init(dateTime: dateTime, type: type)
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.outcomeDesc = outcomeDesc
		self.purposeOfEvent = purposeOfEvent
		self.subtype = subtype
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action; case _action
		case dateTime; case _dateTime
		case outcome; case _outcome
		case outcomeDesc; case _outcomeDesc
		case purposeOfEvent
		case subtype
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try FHIRPrimitive<AuditEventAction>(from: _container, forKeyIfPresent: .action, auxiliaryKey: ._action)
		self.dateTime = try FHIRPrimitive<Instant>(from: _container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		self.outcome = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.outcomeDesc = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcomeDesc, auxiliaryKey: ._outcomeDesc)
		self.purposeOfEvent = try [Coding](from: _container, forKeyIfPresent: .purposeOfEvent)
		self.subtype = try [Coding](from: _container, forKeyIfPresent: .subtype)
		self.type = try Coding(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try dateTime.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try outcomeDesc?.encode(on: &_container, forKey: .outcomeDesc, auxiliaryKey: ._outcomeDesc)
		try purposeOfEvent?.encode(on: &_container, forKey: .purposeOfEvent)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && dateTime == _other.dateTime
		    && outcome == _other.outcome
		    && outcomeDesc == _other.outcomeDesc
		    && purposeOfEvent == _other.purposeOfEvent
		    && subtype == _other.subtype
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(dateTime)
		hasher.combine(outcome)
		hasher.combine(outcomeDesc)
		hasher.combine(purposeOfEvent)
		hasher.combine(subtype)
		hasher.combine(type)
	}
}

/**
 Specific instances of data or objects that have been accessed.
 */
open class AuditEventObject: BackboneElement {
	
	/// Specific instance of object (e.g. versioned)
	public var identifier: Identifier?
	
	/// Specific instance of resource (e.g. versioned)
	public var reference: Reference?
	
	/// Type of object involved
	public var type: Coding?
	
	/// What role the Object played
	public var role: Coding?
	
	/// Life-cycle stage for the object
	public var lifecycle: Coding?
	
	/// Security labels applied to the object
	public var securityLabel: [Coding]?
	
	/// Instance-specific descriptor for Object
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Descriptive text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Actual query for object
	public var query: FHIRPrimitive<Base64Binary>?
	
	/// Additional Information about the Object
	public var detail: [AuditEventObjectDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							detail: [AuditEventObjectDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							lifecycle: Coding? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							query: FHIRPrimitive<Base64Binary>? = nil,
							reference: Reference? = nil,
							role: Coding? = nil,
							securityLabel: [Coding]? = nil,
							type: Coding? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.lifecycle = lifecycle
		self.modifierExtension = modifierExtension
		self.name = name
		self.query = query
		self.reference = reference
		self.role = role
		self.securityLabel = securityLabel
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case detail
		case identifier
		case lifecycle
		case name; case _name
		case query; case _query
		case reference
		case role
		case securityLabel
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.detail = try [AuditEventObjectDetail](from: _container, forKeyIfPresent: .detail)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.lifecycle = try Coding(from: _container, forKeyIfPresent: .lifecycle)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.query = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .query, auxiliaryKey: ._query)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.role = try Coding(from: _container, forKeyIfPresent: .role)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try detail?.encode(on: &_container, forKey: .detail)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lifecycle?.encode(on: &_container, forKey: .lifecycle)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try query?.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try reference?.encode(on: &_container, forKey: .reference)
		try role?.encode(on: &_container, forKey: .role)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventObject else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && detail == _other.detail
		    && identifier == _other.identifier
		    && lifecycle == _other.lifecycle
		    && name == _other.name
		    && query == _other.query
		    && reference == _other.reference
		    && role == _other.role
		    && securityLabel == _other.securityLabel
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(detail)
		hasher.combine(identifier)
		hasher.combine(lifecycle)
		hasher.combine(name)
		hasher.combine(query)
		hasher.combine(reference)
		hasher.combine(role)
		hasher.combine(securityLabel)
		hasher.combine(type)
	}
}

/**
 Additional Information about the Object.
 */
open class AuditEventObjectDetail: BackboneElement {
	
	/// Name of the property
	public var type: FHIRPrimitive<FHIRString>
	
	/// Property value
	public var value: FHIRPrimitive<Base64Binary>
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<Base64Binary>) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<FHIRString>,
							value: FHIRPrimitive<Base64Binary>)
	{
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type; case _type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.value = try FHIRPrimitive<Base64Binary>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventObjectDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 A person, a hardware device or software process.
 */
open class AuditEventParticipant: BackboneElement {
	
	/// User roles (e.g. local RBAC codes)
	public var role: [CodeableConcept]?
	
	/// Direct reference to resource
	public var reference: Reference?
	
	/// Unique identifier for the user
	public var userId: Identifier?
	
	/// Alternative User id e.g. authentication
	public var altId: FHIRPrimitive<FHIRString>?
	
	/// Human-meaningful name for the user
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Whether user is initiator
	public var requestor: FHIRPrimitive<FHIRBool>
	
	/// Where
	public var location: Reference?
	
	/// Policy that authorized event
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Type of media
	public var media: Coding?
	
	/// Logical network location for application activity
	public var network: AuditEventParticipantNetwork?
	
	/// Reason given for this user
	public var purposeOfUse: [Coding]?
	
	/// Designated initializer taking all required properties
	public init(requestor: FHIRPrimitive<FHIRBool>) {
		self.requestor = requestor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							altId: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							media: Coding? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							network: AuditEventParticipantNetwork? = nil,
							policy: [FHIRPrimitive<FHIRURI>]? = nil,
							purposeOfUse: [Coding]? = nil,
							reference: Reference? = nil,
							requestor: FHIRPrimitive<FHIRBool>,
							role: [CodeableConcept]? = nil,
							userId: Identifier? = nil)
	{
		self.init(requestor: requestor)
		self.altId = altId
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.media = media
		self.modifierExtension = modifierExtension
		self.name = name
		self.network = network
		self.policy = policy
		self.purposeOfUse = purposeOfUse
		self.reference = reference
		self.role = role
		self.userId = userId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case altId; case _altId
		case location
		case media
		case name; case _name
		case network
		case policy; case _policy
		case purposeOfUse
		case reference
		case requestor; case _requestor
		case role
		case userId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.altId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .altId, auxiliaryKey: ._altId)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.media = try Coding(from: _container, forKeyIfPresent: .media)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try AuditEventParticipantNetwork(from: _container, forKeyIfPresent: .network)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.purposeOfUse = try [Coding](from: _container, forKeyIfPresent: .purposeOfUse)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.requestor = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .requestor, auxiliaryKey: ._requestor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.userId = try Identifier(from: _container, forKeyIfPresent: .userId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try altId?.encode(on: &_container, forKey: .altId, auxiliaryKey: ._altId)
		try location?.encode(on: &_container, forKey: .location)
		try media?.encode(on: &_container, forKey: .media)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try purposeOfUse?.encode(on: &_container, forKey: .purposeOfUse)
		try reference?.encode(on: &_container, forKey: .reference)
		try requestor.encode(on: &_container, forKey: .requestor, auxiliaryKey: ._requestor)
		try role?.encode(on: &_container, forKey: .role)
		try userId?.encode(on: &_container, forKey: .userId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return altId == _other.altId
		    && location == _other.location
		    && media == _other.media
		    && name == _other.name
		    && network == _other.network
		    && policy == _other.policy
		    && purposeOfUse == _other.purposeOfUse
		    && reference == _other.reference
		    && requestor == _other.requestor
		    && role == _other.role
		    && userId == _other.userId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(altId)
		hasher.combine(location)
		hasher.combine(media)
		hasher.combine(name)
		hasher.combine(network)
		hasher.combine(policy)
		hasher.combine(purposeOfUse)
		hasher.combine(reference)
		hasher.combine(requestor)
		hasher.combine(role)
		hasher.combine(userId)
	}
}

/**
 Logical network location for application activity.
 
 Logical network location for application activity, if the activity has a network location.
 */
open class AuditEventParticipantNetwork: BackboneElement {
	
	/// Identifier for the network access point of the user device
	public var address: FHIRPrimitive<FHIRString>?
	
	/// The type of network access point
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							address: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.address = address
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .address, auxiliaryKey: ._address)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address?.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventParticipantNetwork else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(type)
	}
}

/**
 Application systems and processes.
 */
open class AuditEventSource: BackboneElement {
	
	/// Logical source location within the enterprise
	public var site: FHIRPrimitive<FHIRString>?
	
	/// The identity of source detecting the event
	public var identifier: Identifier
	
	/// The type of source where event originated
	public var type: [Coding]?
	
	/// Designated initializer taking all required properties
	public init(identifier: Identifier) {
		self.identifier = identifier
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier,
							modifierExtension: [Extension]? = nil,
							site: FHIRPrimitive<FHIRString>? = nil,
							type: [Coding]? = nil)
	{
		self.init(identifier: identifier)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.site = site
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case site; case _site
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.site = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .site, auxiliaryKey: ._site)
		self.type = try [Coding](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier.encode(on: &_container, forKey: .identifier)
		try site?.encode(on: &_container, forKey: .site, auxiliaryKey: ._site)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventSource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && site == _other.site
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(site)
		hasher.combine(type)
	}
}
