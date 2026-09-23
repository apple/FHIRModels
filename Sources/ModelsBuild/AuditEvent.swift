//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
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
 Record of an event.
 
 A record of an event relevant for purposes such as operations, privacy, security, maintenance, and performance
 analysis.
 */
public struct AuditEvent: DomainResource {
	
	public static let resourceType: ResourceType = .auditEvent
	
	/// All possible types for "occurred[x]"
	public enum OccurredX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Indicator for type of action performed during the event that generated the audit.
	public var action: FHIRPrimitive<AuditEventAction>?
	
	/// Actor involved in the event
	public var agent: [AuditEventAgent]
	
	/// Authorization related to the event
	public var authorization: [CodeableConcept]?
	
	/// Workflow authorization within which this event occurred
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter within which this event occurred or which the event is tightly associated
	public var encounter: Reference?
	
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
	
	/// When the activity occurred
	/// One of `occurred[x]`
	public var occurred: OccurredX?
	
	/// Whether the event succeeded or failed
	public var outcome: AuditEventOutcome?
	
	/// The patient is the subject of the data used/created/updated/deleted during the activity
	public var patient: Reference?
	
	/// Time when the event was recorded
	public var recorded: FHIRPrimitive<Instant>
	
	/// Indicates and enables segmentation of various severity including debugging from critical.
	public var severity: FHIRPrimitive<AuditEventSeverity>?
	
	/// Audit Event Reporter
	public var source: AuditEventSource
	
	/// Specific type of event
	public var subtype: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// High level categorization of audit event
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		action: FHIRPrimitive<AuditEventAction>? = nil,
		agent: [AuditEventAgent],
		authorization: [CodeableConcept]? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		entity: [AuditEventEntity]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		occurred: OccurredX? = nil,
		outcome: AuditEventOutcome? = nil,
		patient: Reference? = nil,
		recorded: FHIRPrimitive<Instant>,
		severity: FHIRPrimitive<AuditEventSeverity>? = nil,
		source: AuditEventSource,
		subtype: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept
	) {
		self.action = action
		self.agent = agent
		self.authorization = authorization
		self.basedOn = basedOn
		self.contained = contained
		self.encounter = encounter
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.occurred = occurred
		self.outcome = outcome
		self.patient = patient
		self.recorded = recorded
		self.severity = severity
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
		case authorization
		case basedOn
		case contained
		case encounter
		case entity
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case occurredDateTime; case _occurredDateTime
		case occurredPeriod
		case outcome
		case patient
		case recorded; case _recorded
		case severity; case _severity
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
		self.authorization = try [CodeableConcept](from: _container, forKeyIfPresent: .authorization)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.entity = try [AuditEventEntity](from: _container, forKeyIfPresent: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.occurred = try Self._decodeOccurred(from: _container)
		self.outcome = try AuditEventOutcome(from: _container, forKeyIfPresent: .outcome)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKey: .recorded, auxiliaryKey: ._recorded)
		self.severity = try FHIRPrimitive<AuditEventSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.source = try AuditEventSource(from: _container, forKey: .source)
		self.subtype = try [CodeableConcept](from: _container, forKeyIfPresent: .subtype)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try agent.encode(on: &_container, forKey: .agent)
		try authorization?.encode(on: &_container, forKey: .authorization)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try entity?.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = occurred {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurredDateTime, auxiliaryKey: ._occurredDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurredPeriod)
		}
		}
		try outcome?.encode(on: &_container, forKey: .outcome)
		try patient?.encode(on: &_container, forKey: .patient)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try source.encode(on: &_container, forKey: .source)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurred(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurredX? {
		var _t_occurred: OccurredX? = nil
		if let occurredDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurredDateTime, auxiliaryKey: ._occurredDateTime) {
			_t_occurred = .dateTime(occurredDateTime)
		}
		if let occurredPeriod = try Period(from: _container, forKeyIfPresent: .occurredPeriod) {
			if _t_occurred != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurredPeriod, in: _container, debugDescription: "More than one value provided for \"occurred\"")
			}
			_t_occurred = .period(occurredPeriod)
		}
		return _t_occurred
	}
}

/**
 Actor involved in the event.
 
 An actor taking an active role in the event or activity that is logged.
 */
public struct AuditEventAgent: BackboneElement {
	
	/// All possible types for "network[x]"
	public enum NetworkX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Allowable authorization for this agent
	public var authorization: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The agent location when the event occurred
	public var location: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// This agent network location for the activity
	/// One of `network[x]`
	public var network: NetworkX?
	
	/// Policy that authorized the agent participation in the event
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Whether user is initiator
	public var requestor: FHIRPrimitive<FHIRBool>?
	
	/// Agent role in the event
	public var role: [CodeableConcept]?
	
	/// How agent participated
	public var type: CodeableConcept?
	
	/// Identifier of who
	public var who: Reference
	
	/// Designated initializer
	public init(
		authorization: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		network: NetworkX? = nil,
		policy: [FHIRPrimitive<FHIRURI>]? = nil,
		requestor: FHIRPrimitive<FHIRBool>? = nil,
		role: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil,
		who: Reference
	) {
		self.authorization = authorization
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.network = network
		self.policy = policy
		self.requestor = requestor
		self.role = role
		self.type = type
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorization
		case `extension` = "extension"
		case id; case _id
		case location
		case modifierExtension
		case networkReference
		case networkString; case _networkString
		case networkUri; case _networkUri
		case policy; case _policy
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
		self.authorization = try [CodeableConcept](from: _container, forKeyIfPresent: .authorization)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try Self._decodeNetwork(from: _container)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.requestor = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .requestor, auxiliaryKey: ._requestor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.who = try Reference(from: _container, forKey: .who)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authorization?.encode(on: &_container, forKey: .authorization)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location?.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = network {
		switch _enum {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .networkReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .networkString, auxiliaryKey: ._networkString)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .networkUri, auxiliaryKey: ._networkUri)
		}
		}
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try requestor?.encode(on: &_container, forKey: .requestor, auxiliaryKey: ._requestor)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type)
		try who.encode(on: &_container, forKey: .who)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeNetwork(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> NetworkX? {
		var _t_network: NetworkX? = nil
		if let networkReference = try Reference(from: _container, forKeyIfPresent: .networkReference) {
			_t_network = .reference(networkReference)
		}
		if let networkString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .networkString, auxiliaryKey: ._networkString) {
			if _t_network != nil {
				throw DecodingError.dataCorruptedError(forKey: .networkString, in: _container, debugDescription: "More than one value provided for \"network\"")
			}
			_t_network = .string(networkString)
		}
		if let networkUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .networkUri, auxiliaryKey: ._networkUri) {
			if _t_network != nil {
				throw DecodingError.dataCorruptedError(forKey: .networkUri, in: _container, debugDescription: "More than one value provided for \"network\"")
			}
			_t_network = .uri(networkUri)
		}
		return _t_network
	}
}

/**
 Data or objects used.
 
 Specific instances of data or objects that have been accessed.
 */
public struct AuditEventEntity: BackboneElement {
	
	/// Entity is attributed to this agent
	public var agent: [AuditEventAgent]?
	
	/// Descriptive text
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Information about the entity
	public var detail: [AuditEventEntityDetail]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Query parameters
	public var query: FHIRPrimitive<Base64Binary>?
	
	/// What role the entity played
	public var role: CodeableConcept?
	
	/// Security labels on the entity
	public var securityLabel: [CodeableConcept]?
	
	/// Specific instance of resource
	public var what: Reference?
	
	/// Designated initializer
	public init(
		agent: [AuditEventAgent]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		detail: [AuditEventEntityDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		query: FHIRPrimitive<Base64Binary>? = nil,
		role: CodeableConcept? = nil,
		securityLabel: [CodeableConcept]? = nil,
		what: Reference? = nil
	) {
		self.agent = agent
		self.description_fhir = description_fhir
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.query = query
		self.role = role
		self.securityLabel = securityLabel
		self.what = what
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case description_fhir = "description"; case _description_fhir = "_description"
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case query; case _query
		case role
		case securityLabel
		case what
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.agent = try [AuditEventAgent](from: _container, forKeyIfPresent: .agent)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.detail = try [AuditEventEntityDetail](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.query = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .query, auxiliaryKey: ._query)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
		self.what = try Reference(from: _container, forKeyIfPresent: .what)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try agent?.encode(on: &_container, forKey: .agent)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try query?.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try role?.encode(on: &_container, forKey: .role)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
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
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name of the extra detail property
	public var type: CodeableConcept
	
	/// Property value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
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
		case type
		case valueBase64Binary; case _valueBase64Binary
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDateTime; case _valueDateTime
		case valueInteger; case _valueInteger
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueString; case _valueString
		case valueTime; case _valueTime
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch value {
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .valueRatio)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
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
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		if let valueRatio = try Ratio(from: _container, forKeyIfPresent: .valueRatio) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRatio, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .ratio(valueRatio)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueTime)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Whether the event succeeded or failed.
 
 Indicates whether the event succeeded or failed. A free text descripiton can be given in outcome.text.
 */
public struct AuditEventOutcome: BackboneElement {
	
	/// Whether the event succeeded or failed
	public var code: Coding
	
	/// Additional outcome detail
	public var detail: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: Coding,
		detail: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try Coding(from: _container, forKey: .code)
		self.detail = try [CodeableConcept](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Audit Event Reporter.
 
 The actor that is reporting the event.
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
	public var site: Reference?
	
	/// The type of source where event originated
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		observer: Reference,
		site: Reference? = nil,
		type: [CodeableConcept]? = nil
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
		case site
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
		self.site = try Reference(from: _container, forKeyIfPresent: .site)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try observer.encode(on: &_container, forKey: .observer)
		try site?.encode(on: &_container, forKey: .site)
		try type?.encode(on: &_container, forKey: .type)
	}
}
