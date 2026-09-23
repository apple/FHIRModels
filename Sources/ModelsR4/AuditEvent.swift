//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
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
 Event record kept for security purposes.
 
 A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 attempts and monitoring for inappropriate usage.
 */
public struct AuditEvent: DomainResource {
	
	public static let resourceType: ResourceType = .auditEvent
	
	/// Indicator for type of action performed during the event that generated the audit.
	public var action: FHIRPrimitive<AuditEventAction>?
	
	/// Actor involved in the event
	public var agent: [AuditEventAgent]
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Data or objects used
	public var entity: [AuditEventEntity]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Whether the event succeeded or failed
	public var outcome: FHIRPrimitive<FHIRString>?
	
	/// Description of the event outcome
	public var outcomeDesc: FHIRPrimitive<FHIRString>?
	
	/// When the activity occurred
	public var period: Period?
	
	/// The purposeOfUse of the event
	public var purposeOfEvent: [CodeableConcept]?
	
	/// Time when the event was recorded
	public var recorded: FHIRPrimitive<Instant>
	
	/// Audit Event Reporter
	public var source: AuditEventSource
	
	/// More specific type/id for the event
	public var subtype: [Coding]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type/identifier of event
	public var type: Coding
	
	/// Designated initializer
	public init(
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
		type: Coding
	) {
		self.action = action
		self.agent = agent
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
		self.recorded = recorded
		self.source = source
		self.subtype = subtype
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action; case _action
		case agent
		case contained
		case entity
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case outcome; case _outcome
		case outcomeDesc; case _outcomeDesc
		case period
		case purposeOfEvent
		case recorded; case _recorded
		case source
		case subtype
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try FHIRPrimitive<AuditEventAction>(from: _container, forKeyIfPresent: .action, auxiliaryKey: ._action)
		self.agent = try [AuditEventAgent](from: _container, forKey: .agent)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.entity = try [AuditEventEntity](from: _container, forKeyIfPresent: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.outcomeDesc = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .outcomeDesc, auxiliaryKey: ._outcomeDesc)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.purposeOfEvent = try [CodeableConcept](from: _container, forKeyIfPresent: .purposeOfEvent)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKey: .recorded, auxiliaryKey: ._recorded)
		self.source = try AuditEventSource(from: _container, forKey: .source)
		self.subtype = try [Coding](from: _container, forKeyIfPresent: .subtype)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try Coding(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try agent.encode(on: &_container, forKey: .agent)
		try contained?.encode(on: &_container, forKey: .contained)
		try entity?.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try outcomeDesc?.encode(on: &_container, forKey: .outcomeDesc, auxiliaryKey: ._outcomeDesc)
		try period?.encode(on: &_container, forKey: .period)
		try purposeOfEvent?.encode(on: &_container, forKey: .purposeOfEvent)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try source.encode(on: &_container, forKey: .source)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Actor involved in the event.
 
 An actor taking an active role in the event or activity that is logged.
 */
public struct AuditEventAgent: BackboneElement {
	
	/// Alternative User identity
	public var altId: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Where
	public var location: Reference?
	
	/// Type of media
	public var media: Coding?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Human friendly name for the agent
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Logical network location for application activity
	public var network: AuditEventAgentNetwork?
	
	/// Policy that authorized event
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Reason given for this user
	public var purposeOfUse: [CodeableConcept]?
	
	/// Whether user is initiator
	public var requestor: FHIRPrimitive<FHIRBool>
	
	/// Agent role in the event
	public var role: [CodeableConcept]?
	
	/// How agent participated
	public var type: CodeableConcept?
	
	/// Identifier of who
	public var who: Reference?
	
	/// Designated initializer
	public init(
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
		who: Reference? = nil
	) {
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
		self.requestor = requestor
		self.role = role
		self.type = type
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case altId; case _altId
		case `extension` = "extension"
		case id; case _id
		case location
		case media
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.altId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .altId, auxiliaryKey: ._altId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.media = try Coding(from: _container, forKeyIfPresent: .media)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.network = try AuditEventAgentNetwork(from: _container, forKeyIfPresent: .network)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.purposeOfUse = try [CodeableConcept](from: _container, forKeyIfPresent: .purposeOfUse)
		self.requestor = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .requestor, auxiliaryKey: ._requestor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try altId?.encode(on: &_container, forKey: .altId, auxiliaryKey: ._altId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location?.encode(on: &_container, forKey: .location)
		try media?.encode(on: &_container, forKey: .media)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try network?.encode(on: &_container, forKey: .network)
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try purposeOfUse?.encode(on: &_container, forKey: .purposeOfUse)
		try requestor.encode(on: &_container, forKey: .requestor, auxiliaryKey: ._requestor)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type)
		try who?.encode(on: &_container, forKey: .who)
	}
}

/**
 Logical network location for application activity.
 
 Logical network location for application activity, if the activity has a network location.
 */
public struct AuditEventAgentNetwork: BackboneElement {
	
	/// Identifier for the network access point of the user device
	public var address: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of network access point
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		address: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<FHIRString>? = nil
	) {
		self.address = address
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .address, auxiliaryKey: ._address)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try address?.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Data or objects used.
 
 Specific instances of data or objects that have been accessed.
 */
public struct AuditEventEntity: BackboneElement {
	
	/// Descriptive text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Information about the entity
	public var detail: [AuditEventEntityDetail]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Life-cycle stage for the entity
	public var lifecycle: Coding?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Descriptor for entity
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Query parameters
	public var query: FHIRPrimitive<Base64Binary>?
	
	/// What role the entity played
	public var role: Coding?
	
	/// Security labels on the entity
	public var securityLabel: [Coding]?
	
	/// Type of entity involved
	public var type: Coding?
	
	/// Specific instance of resource
	public var what: Reference?
	
	/// Designated initializer
	public init(
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
		what: Reference? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case lifecycle
		case modifierExtension
		case name; case _name
		case query; case _query
		case role
		case securityLabel
		case type
		case what
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.detail = try [AuditEventEntityDetail](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lifecycle = try Coding(from: _container, forKeyIfPresent: .lifecycle)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.query = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .query, auxiliaryKey: ._query)
		self.role = try Coding(from: _container, forKeyIfPresent: .role)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		self.what = try Reference(from: _container, forKeyIfPresent: .what)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lifecycle?.encode(on: &_container, forKey: .lifecycle)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try query?.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try role?.encode(on: &_container, forKey: .role)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type?.encode(on: &_container, forKey: .type)
		try what?.encode(on: &_container, forKey: .what)
	}
}

/**
 Additional Information about the entity.
 
 Tagged value pairs for conveying additional information about the entity.
 */
public struct AuditEventEntityDetail: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of the property
	public var type: FHIRPrimitive<FHIRString>
	
	/// Property value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<FHIRString>,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type; case _type
		case valueBase64Binary; case _valueBase64Binary
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		
		switch value {
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Audit Event Reporter.
 
 The system that is reporting the event.
 */
public struct AuditEventSource: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The identity of source detecting the event
	public var observer: Reference
	
	/// Logical source location within the enterprise
	public var site: FHIRPrimitive<FHIRString>?
	
	/// The type of source where event originated
	public var type: [Coding]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		observer: Reference,
		site: FHIRPrimitive<FHIRString>? = nil,
		type: [Coding]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.observer = observer
		self.site = site
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case observer
		case site; case _site
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.observer = try Reference(from: _container, forKey: .observer)
		self.site = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .site, auxiliaryKey: ._site)
		self.type = try [Coding](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try observer.encode(on: &_container, forKey: .observer)
		try site?.encode(on: &_container, forKey: .site, auxiliaryKey: ._site)
		try type?.encode(on: &_container, forKey: .type)
	}
}
