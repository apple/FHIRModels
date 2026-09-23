//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
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
	
	/// Additional Content defined by implementations
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
	
	/// The purposeOfUse of the event
	public var purposeOfEvent: [CodeableConcept]?
	
	/// Time when the event occurred on source
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
	
	/// Alternative User id e.g. authentication
	public var altId: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Where
	public var location: Reference?
	
	/// Type of media
	public var media: Coding?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Human-meaningful name for the agent
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Logical network location for application activity
	public var network: AuditEventAgentNetwork?
	
	/// Policy that authorized event
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Reason given for this user
	public var purposeOfUse: [CodeableConcept]?
	
	/// Direct reference to resource
	public var reference: Reference?
	
	/// Whether user is initiator
	public var requestor: FHIRPrimitive<FHIRBool>
	
	/// Agent role in the event
	public var role: [CodeableConcept]?
	
	/// Unique identifier for the user
	public var userId: Identifier?
	
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
		reference: Reference? = nil,
		requestor: FHIRPrimitive<FHIRBool>,
		role: [CodeableConcept]? = nil,
		userId: Identifier? = nil
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
		self.reference = reference
		self.requestor = requestor
		self.role = role
		self.userId = userId
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
		case reference
		case requestor; case _requestor
		case role
		case userId
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
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.requestor = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .requestor, auxiliaryKey: ._requestor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.userId = try Identifier(from: _container, forKeyIfPresent: .userId)
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
		try reference?.encode(on: &_container, forKey: .reference)
		try requestor.encode(on: &_container, forKey: .requestor, auxiliaryKey: ._requestor)
		try role?.encode(on: &_container, forKey: .role)
		try userId?.encode(on: &_container, forKey: .userId)
	}
}

/**
 Logical network location for application activity.
 
 Logical network location for application activity, if the activity has a network location.
 */
public struct AuditEventAgentNetwork: BackboneElement {
	
	/// Identifier for the network access point of the user device
	public var address: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Specific instance of object
	public var identifier: Identifier?
	
	/// Life-cycle stage for the entity
	public var lifecycle: Coding?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Descriptor for entity
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Query parameters
	public var query: FHIRPrimitive<Base64Binary>?
	
	/// Specific instance of resource
	public var reference: Reference?
	
	/// What role the entity played
	public var role: Coding?
	
	/// Security labels on the entity
	public var securityLabel: [Coding]?
	
	/// Type of entity involved
	public var type: Coding?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		detail: [AuditEventEntityDetail]? = nil,
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
		type: Coding? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case lifecycle
		case modifierExtension
		case name; case _name
		case query; case _query
		case reference
		case role
		case securityLabel
		case type
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
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.lifecycle = try Coding(from: _container, forKeyIfPresent: .lifecycle)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.query = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .query, auxiliaryKey: ._query)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.role = try Coding(from: _container, forKeyIfPresent: .role)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lifecycle?.encode(on: &_container, forKey: .lifecycle)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try query?.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try reference?.encode(on: &_container, forKey: .reference)
		try role?.encode(on: &_container, forKey: .role)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Additional Information about the entity.
 
 Tagged value pairs for conveying additional information about the entity.
 */
public struct AuditEventEntityDetail: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of the property
	public var type: FHIRPrimitive<FHIRString>
	
	/// Property value
	public var value: FHIRPrimitive<Base64Binary>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<Base64Binary>
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
		case value; case _value
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
		self.value = try FHIRPrimitive<Base64Binary>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Audit Event Reporter.
 
 The system that is reporting the event.
 */
public struct AuditEventSource: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The identity of source detecting the event
	public var identifier: Identifier
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Logical source location within the enterprise
	public var site: FHIRPrimitive<FHIRString>?
	
	/// The type of source where event originated
	public var type: [Coding]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier,
		modifierExtension: [Extension]? = nil,
		site: FHIRPrimitive<FHIRString>? = nil,
		type: [Coding]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.site = site
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
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
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.site = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .site, auxiliaryKey: ._site)
		self.type = try [Coding](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try site?.encode(on: &_container, forKey: .site, auxiliaryKey: ._site)
		try type?.encode(on: &_container, forKey: .type)
	}
}
