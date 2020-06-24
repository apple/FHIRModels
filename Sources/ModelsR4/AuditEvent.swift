//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
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
	
	/// Type/identifier of event
	public var type: Coding
	
	/// More specific type/id for the event
	public var subtype: [Coding]?
	
	/// Indicator for type of action performed during the event that generated the audit.
	public var action: FHIRPrimitive<AuditEventAction>?
	
	/// When the activity occurred
	public var period: Period?
	
	/// Time when the event was recorded
	public var recorded: FHIRPrimitive<Instant>
	
	/// Whether the event succeeded or failed
	public var outcome: FHIRPrimitive<FHIRString>?
	
	/// Description of the event outcome
	public var outcomeDesc: FHIRPrimitive<FHIRString>?
	
	/// The purposeOfUse of the event
	public var purposeOfEvent: [CodeableConcept]?
	
	/// Actor involved in the event
	public var agent: [AuditEventAgent]
	
	/// Audit Event Reporter
	public var source: AuditEventSource
	
	/// Data or objects used
	public var entity: [AuditEventEntity]?
	
	/// Designated initializer taking all required properties
	public init(agent: [AuditEventAgent], recorded: FHIRPrimitive<Instant>, source: AuditEventSource, type: Coding) {
		self.agent = agent
		self.recorded = recorded
		self.source = source
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: FHIRPrimitive<AuditEventAction>? = nil,
							agent: [AuditEventAgent],
							contained: [ResourceProxy]? = nil,
							entity: [AuditEventEntity]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: FHIRPrimitive<FHIRString>? = nil,
							outcomeDesc: FHIRPrimitive<FHIRString>? = nil,
							period: Period? = nil,
							purposeOfEvent: [CodeableConcept]? = nil,
							recorded: FHIRPrimitive<Instant>,
							source: AuditEventSource,
							subtype: [Coding]? = nil,
							text: Narrative? = nil,
							type: Coding)
	{
		self.init(agent: agent, recorded: recorded, source: source, type: type)
		self.action = action
		self.contained = contained
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.outcomeDesc = outcomeDesc
		self.period = period
		self.purposeOfEvent = purposeOfEvent
		self.subtype = subtype
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action; case _action
		case agent
		case entity
		case outcome; case _outcome
		case outcomeDesc; case _outcomeDesc
		case period
		case purposeOfEvent
		case recorded; case _recorded
		case source
		case subtype
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try FHIRPrimitive<AuditEventAction>(from: _container, forKeyIfPresent: .action, auxiliaryKey: ._action)
		self.agent = try [AuditEventAgent](from: _container, forKey: .agent)
		self.entity = try [AuditEventEntity](from: _container, forKeyIfPresent: .entity)
		self.outcome = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.outcomeDesc = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcomeDesc, auxiliaryKey: ._outcomeDesc)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.purposeOfEvent = try [CodeableConcept](from: _container, forKeyIfPresent: .purposeOfEvent)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKey: .recorded, auxiliaryKey: ._recorded)
		self.source = try AuditEventSource(from: _container, forKey: .source)
		self.subtype = try [Coding](from: _container, forKeyIfPresent: .subtype)
		self.type = try Coding(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try agent.encode(on: &_container, forKey: .agent)
		try entity?.encode(on: &_container, forKey: .entity)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try outcomeDesc?.encode(on: &_container, forKey: .outcomeDesc, auxiliaryKey: ._outcomeDesc)
		try period?.encode(on: &_container, forKey: .period)
		try purposeOfEvent?.encode(on: &_container, forKey: .purposeOfEvent)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try source.encode(on: &_container, forKey: .source)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try type.encode(on: &_container, forKey: .type)
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
		return action == _other.action
		    && agent == _other.agent
		    && entity == _other.entity
		    && outcome == _other.outcome
		    && outcomeDesc == _other.outcomeDesc
		    && period == _other.period
		    && purposeOfEvent == _other.purposeOfEvent
		    && recorded == _other.recorded
		    && source == _other.source
		    && subtype == _other.subtype
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(agent)
		hasher.combine(entity)
		hasher.combine(outcome)
		hasher.combine(outcomeDesc)
		hasher.combine(period)
		hasher.combine(purposeOfEvent)
		hasher.combine(recorded)
		hasher.combine(source)
		hasher.combine(subtype)
		hasher.combine(type)
	}
}

/**
 Actor involved in the event.
 
 An actor taking an active role in the event or activity that is logged.
 */
open class AuditEventAgent: BackboneElement {
	
	/// How agent participated
	public var type: CodeableConcept?
	
	/// Agent role in the event
	public var role: [CodeableConcept]?
	
	/// Identifier of who
	public var who: Reference?
	
	/// Alternative User identity
	public var altId: FHIRPrimitive<FHIRString>?
	
	/// Human friendly name for the agent
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
	public var network: AuditEventAgentNetwork?
	
	/// Reason given for this user
	public var purposeOfUse: [CodeableConcept]?
	
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
							network: AuditEventAgentNetwork? = nil,
							policy: [FHIRPrimitive<FHIRURI>]? = nil,
							purposeOfUse: [CodeableConcept]? = nil,
							requestor: FHIRPrimitive<FHIRBool>,
							role: [CodeableConcept]? = nil,
							type: CodeableConcept? = nil,
							who: Reference? = nil)
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
		self.role = role
		self.type = type
		self.who = who
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
		case requestor; case _requestor
		case role
		case type
		case who
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.altId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .altId, auxiliaryKey: ._altId)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.media = try Coding(from: _container, forKeyIfPresent: .media)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try AuditEventAgentNetwork(from: _container, forKeyIfPresent: .network)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.purposeOfUse = try [CodeableConcept](from: _container, forKeyIfPresent: .purposeOfUse)
		self.requestor = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .requestor, auxiliaryKey: ._requestor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
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
		try requestor.encode(on: &_container, forKey: .requestor, auxiliaryKey: ._requestor)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type)
		try who?.encode(on: &_container, forKey: .who)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventAgent else {
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
		    && requestor == _other.requestor
		    && role == _other.role
		    && type == _other.type
		    && who == _other.who
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
		hasher.combine(requestor)
		hasher.combine(role)
		hasher.combine(type)
		hasher.combine(who)
	}
}

/**
 Logical network location for application activity.
 
 Logical network location for application activity, if the activity has a network location.
 */
open class AuditEventAgentNetwork: BackboneElement {
	
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
		guard let _other = _other as? AuditEventAgentNetwork else {
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
 Data or objects used.
 
 Specific instances of data or objects that have been accessed.
 */
open class AuditEventEntity: BackboneElement {
	
	/// Specific instance of resource
	public var what: Reference?
	
	/// Type of entity involved
	public var type: Coding?
	
	/// What role the entity played
	public var role: Coding?
	
	/// Life-cycle stage for the entity
	public var lifecycle: Coding?
	
	/// Security labels on the entity
	public var securityLabel: [Coding]?
	
	/// Descriptor for entity
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Descriptive text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Query parameters
	public var query: FHIRPrimitive<Base64Binary>?
	
	/// Additional Information about the entity
	public var detail: [AuditEventEntityDetail]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							detail: [AuditEventEntityDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lifecycle: Coding? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							query: FHIRPrimitive<Base64Binary>? = nil,
							role: Coding? = nil,
							securityLabel: [Coding]? = nil,
							type: Coding? = nil,
							what: Reference? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.lifecycle = lifecycle
		self.modifierExtension = modifierExtension
		self.name = name
		self.query = query
		self.role = role
		self.securityLabel = securityLabel
		self.type = type
		self.what = what
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case detail
		case lifecycle
		case name; case _name
		case query; case _query
		case role
		case securityLabel
		case type
		case what
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.detail = try [AuditEventEntityDetail](from: _container, forKeyIfPresent: .detail)
		self.lifecycle = try Coding(from: _container, forKeyIfPresent: .lifecycle)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.query = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .query, auxiliaryKey: ._query)
		self.role = try Coding(from: _container, forKeyIfPresent: .role)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		self.what = try Reference(from: _container, forKeyIfPresent: .what)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try detail?.encode(on: &_container, forKey: .detail)
		try lifecycle?.encode(on: &_container, forKey: .lifecycle)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try query?.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try role?.encode(on: &_container, forKey: .role)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type?.encode(on: &_container, forKey: .type)
		try what?.encode(on: &_container, forKey: .what)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventEntity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && detail == _other.detail
		    && lifecycle == _other.lifecycle
		    && name == _other.name
		    && query == _other.query
		    && role == _other.role
		    && securityLabel == _other.securityLabel
		    && type == _other.type
		    && what == _other.what
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(detail)
		hasher.combine(lifecycle)
		hasher.combine(name)
		hasher.combine(query)
		hasher.combine(role)
		hasher.combine(securityLabel)
		hasher.combine(type)
		hasher.combine(what)
	}
}

/**
 Additional Information about the entity.
 
 Tagged value pairs for conveying additional information about the entity.
 */
open class AuditEventEntityDetail: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Name of the property
	public var type: FHIRPrimitive<FHIRString>
	
	/// Property value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<FHIRString>, value: ValueX) {
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
							value: ValueX)
	{
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type; case _type
		case valueBase64Binary; case _valueBase64Binary
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBase64Binary) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBase64Binary, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		var _t_value: ValueX? = nil
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		
			switch value {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventEntityDetail else {
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
 Audit Event Reporter.
 
 The system that is reporting the event.
 */
open class AuditEventSource: BackboneElement {
	
	/// Logical source location within the enterprise
	public var site: FHIRPrimitive<FHIRString>?
	
	/// The identity of source detecting the event
	public var observer: Reference
	
	/// The type of source where event originated
	public var type: [Coding]?
	
	/// Designated initializer taking all required properties
	public init(observer: Reference) {
		self.observer = observer
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							observer: Reference,
							site: FHIRPrimitive<FHIRString>? = nil,
							type: [Coding]? = nil)
	{
		self.init(observer: observer)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.site = site
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case observer
		case site; case _site
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.observer = try Reference(from: _container, forKey: .observer)
		self.site = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .site, auxiliaryKey: ._site)
		self.type = try [Coding](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try observer.encode(on: &_container, forKey: .observer)
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
		return observer == _other.observer
		    && site == _other.site
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(observer)
		hasher.combine(site)
		hasher.combine(type)
	}
}
