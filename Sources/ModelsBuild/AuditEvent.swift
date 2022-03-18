//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
//  Copyright 2022 Apple Inc.
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
open class AuditEvent: DomainResource {
	
	override open class var resourceType: ResourceType { return .auditEvent }
	
	/// All possible types for "occurred[x]"
	public enum OccurredX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Type/identifier of event
	public var category: [CodeableConcept]?
	
	/// Specific type of event
	public var code: CodeableConcept
	
	/// Indicator for type of action performed during the event that generated the audit.
	public var action: FHIRPrimitive<AuditEventAction>?
	
	/// Indicates and enables segmentation of various severity including debugging from critical.
	public var severity: FHIRPrimitive<AuditEventSeverity>?
	
	/// When the activity occurred
	/// One of `occurred[x]`
	public var occurred: OccurredX?
	
	/// Time when the event was recorded
	public var recorded: FHIRPrimitive<Instant>
	
	/// Whether the event succeeded or failed
	public var outcome: AuditEventOutcome?
	
	/// Authorization related to the event
	public var authorization: [CodeableConcept]?
	
	/// Workflow authorization within which this event occurred
	public var basedOn: [Reference]?
	
	/// The patient is the subject of the data used/created/updated/deleted during the activity
	public var patient: Reference?
	
	/// Encounter within which this event occurred or which the event is tightly associated
	public var encounter: Reference?
	
	/// Actor involved in the event
	public var agent: [AuditEventAgent]
	
	/// Audit Event Reporter
	public var source: AuditEventSource
	
	/// Data or objects used
	public var entity: [AuditEventEntity]?
	
	/// Designated initializer taking all required properties
	public init(agent: [AuditEventAgent], code: CodeableConcept, recorded: FHIRPrimitive<Instant>, source: AuditEventSource) {
		self.agent = agent
		self.code = code
		self.recorded = recorded
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: FHIRPrimitive<AuditEventAction>? = nil,
		agent: [AuditEventAgent],
		authorization: [CodeableConcept]? = nil,
		basedOn: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
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
		text: Narrative? = nil
	) {
		self.init(agent: agent, code: code, recorded: recorded, source: source)
		self.action = action
		self.authorization = authorization
		self.basedOn = basedOn
		self.category = category
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
		self.severity = severity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action; case _action
		case agent
		case authorization
		case basedOn
		case category
		case code
		case encounter
		case entity
		case occurredDateTime; case _occurredDateTime
		case occurredPeriod
		case outcome
		case patient
		case recorded; case _recorded
		case severity; case _severity
		case source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try FHIRPrimitive<AuditEventAction>(from: _container, forKeyIfPresent: .action, auxiliaryKey: ._action)
		self.agent = try [AuditEventAgent](from: _container, forKey: .agent)
		self.authorization = try [CodeableConcept](from: _container, forKeyIfPresent: .authorization)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.entity = try [AuditEventEntity](from: _container, forKeyIfPresent: .entity)
		var _t_occurred: OccurredX? = nil
		if let occurredPeriod = try Period(from: _container, forKeyIfPresent: .occurredPeriod) {
			if _t_occurred != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurredPeriod, in: _container, debugDescription: "More than one value provided for \"occurred\"")
			}
			_t_occurred = .period(occurredPeriod)
		}
		if let occurredDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurredDateTime, auxiliaryKey: ._occurredDateTime) {
			if _t_occurred != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurredDateTime, in: _container, debugDescription: "More than one value provided for \"occurred\"")
			}
			_t_occurred = .dateTime(occurredDateTime)
		}
		self.occurred = _t_occurred
		self.outcome = try AuditEventOutcome(from: _container, forKeyIfPresent: .outcome)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKey: .recorded, auxiliaryKey: ._recorded)
		self.severity = try FHIRPrimitive<AuditEventSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.source = try AuditEventSource(from: _container, forKey: .source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try agent.encode(on: &_container, forKey: .agent)
		try authorization?.encode(on: &_container, forKey: .authorization)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try entity?.encode(on: &_container, forKey: .entity)
		if let _enum = occurred {
			switch _enum {
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurredPeriod)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurredDateTime, auxiliaryKey: ._occurredDateTime)
			}
		}
		try outcome?.encode(on: &_container, forKey: .outcome)
		try patient?.encode(on: &_container, forKey: .patient)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
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
		return action == _other.action
		    && agent == _other.agent
		    && authorization == _other.authorization
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && code == _other.code
		    && encounter == _other.encounter
		    && entity == _other.entity
		    && occurred == _other.occurred
		    && outcome == _other.outcome
		    && patient == _other.patient
		    && recorded == _other.recorded
		    && severity == _other.severity
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(agent)
		hasher.combine(authorization)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(encounter)
		hasher.combine(entity)
		hasher.combine(occurred)
		hasher.combine(outcome)
		hasher.combine(patient)
		hasher.combine(recorded)
		hasher.combine(severity)
		hasher.combine(source)
	}
}

/**
 Actor involved in the event.
 
 An actor taking an active role in the event or activity that is logged.
 */
open class AuditEventAgent: BackboneElement {
	
	/// All possible types for "network[x]"
	public enum NetworkX: Hashable {
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// How agent participated
	public var type: CodeableConcept?
	
	/// Agent role in the event
	public var role: [CodeableConcept]?
	
	/// Identifier of who
	public var who: Reference
	
	/// Whether user is initiator
	public var requestor: FHIRPrimitive<FHIRBool>?
	
	/// The agent location when the event occurred
	public var location: Reference?
	
	/// Policy that authorized the agent participation in the event
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// This agent network location for the activity
	/// One of `network[x]`
	public var network: NetworkX?
	
	/// Allowable authorization for this agent
	public var authorization: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(who: Reference) {
		self.who = who
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(who: who)
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
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorization
		case location
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorization = try [CodeableConcept](from: _container, forKeyIfPresent: .authorization)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		var _t_network: NetworkX? = nil
		if let networkReference = try Reference(from: _container, forKeyIfPresent: .networkReference) {
			if _t_network != nil {
				throw DecodingError.dataCorruptedError(forKey: .networkReference, in: _container, debugDescription: "More than one value provided for \"network\"")
			}
			_t_network = .reference(networkReference)
		}
		if let networkUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .networkUri, auxiliaryKey: ._networkUri) {
			if _t_network != nil {
				throw DecodingError.dataCorruptedError(forKey: .networkUri, in: _container, debugDescription: "More than one value provided for \"network\"")
			}
			_t_network = .uri(networkUri)
		}
		if let networkString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .networkString, auxiliaryKey: ._networkString) {
			if _t_network != nil {
				throw DecodingError.dataCorruptedError(forKey: .networkString, in: _container, debugDescription: "More than one value provided for \"network\"")
			}
			_t_network = .string(networkString)
		}
		self.network = _t_network
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.requestor = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .requestor, auxiliaryKey: ._requestor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.who = try Reference(from: _container, forKey: .who)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorization?.encode(on: &_container, forKey: .authorization)
		try location?.encode(on: &_container, forKey: .location)
		if let _enum = network {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .networkReference)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .networkUri, auxiliaryKey: ._networkUri)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .networkString, auxiliaryKey: ._networkString)
			}
		}
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try requestor?.encode(on: &_container, forKey: .requestor, auxiliaryKey: ._requestor)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type)
		try who.encode(on: &_container, forKey: .who)
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
		return authorization == _other.authorization
		    && location == _other.location
		    && network == _other.network
		    && policy == _other.policy
		    && requestor == _other.requestor
		    && role == _other.role
		    && type == _other.type
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorization)
		hasher.combine(location)
		hasher.combine(network)
		hasher.combine(policy)
		hasher.combine(requestor)
		hasher.combine(role)
		hasher.combine(type)
		hasher.combine(who)
	}
}

/**
 Data or objects used.
 
 Specific instances of data or objects that have been accessed.
 */
open class AuditEventEntity: BackboneElement {
	
	/// Specific instance of resource
	public var what: Reference?
	
	/// What role the entity played
	public var role: CodeableConcept?
	
	/// Security labels on the entity
	public var securityLabel: [CodeableConcept]?
	
	/// Query parameters
	public var query: FHIRPrimitive<Base64Binary>?
	
	/// Additional Information about the entity
	public var detail: [AuditEventEntityDetail]?
	
	/// Entity is attributed to this agent
	public var agent: [AuditEventAgent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		agent: [AuditEventAgent]? = nil,
		detail: [AuditEventEntityDetail]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		query: FHIRPrimitive<Base64Binary>? = nil,
		role: CodeableConcept? = nil,
		securityLabel: [CodeableConcept]? = nil,
		what: Reference? = nil
	) {
		self.init()
		self.agent = agent
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
		case detail
		case query; case _query
		case role
		case securityLabel
		case what
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.agent = try [AuditEventAgent](from: _container, forKeyIfPresent: .agent)
		self.detail = try [AuditEventEntityDetail](from: _container, forKeyIfPresent: .detail)
		self.query = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .query, auxiliaryKey: ._query)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.securityLabel = try [CodeableConcept](from: _container, forKeyIfPresent: .securityLabel)
		self.what = try Reference(from: _container, forKeyIfPresent: .what)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent?.encode(on: &_container, forKey: .agent)
		try detail?.encode(on: &_container, forKey: .detail)
		try query?.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try role?.encode(on: &_container, forKey: .role)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
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
		return agent == _other.agent
		    && detail == _other.detail
		    && query == _other.query
		    && role == _other.role
		    && securityLabel == _other.securityLabel
		    && what == _other.what
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(agent)
		hasher.combine(detail)
		hasher.combine(query)
		hasher.combine(role)
		hasher.combine(securityLabel)
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
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case dateTime(FHIRPrimitive<DateTime>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case period(Period)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Name of the property
	public var type: CodeableConcept
	
	/// Property value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBase64Binary) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valuePeriod) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueRatio) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBase64Binary, CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueDateTime, CodingKeys.valueInteger, CodingKeys.valuePeriod, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueRatio, CodingKeys.valueString, CodingKeys.valueTime], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
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
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
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
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .valueRatio)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
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
 Whether the event succeeded or failed.
 
 Indicates whether the event succeeded or failed. A free text descripiton can be given in outcome.text.
 */
open class AuditEventOutcome: BackboneElement {
	
	/// Whether the event succeeded or failed
	public var code: Coding
	
	/// Additional outcome detail
	public var detail: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(code: Coding) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: Coding,
		detail: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(code: code)
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detail
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try Coding(from: _container, forKey: .code)
		self.detail = try [CodeableConcept](from: _container, forKeyIfPresent: .detail)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AuditEventOutcome else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && detail == _other.detail
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detail)
	}
}

/**
 Audit Event Reporter.
 
 The actor that is reporting the event.
 */
open class AuditEventSource: BackboneElement {
	
	/// Logical source location within the enterprise
	public var site: Reference?
	
	/// The identity of source detecting the event
	public var observer: Reference
	
	/// The type of source where event originated
	public var type: [CodeableConcept]?
	
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
		site: Reference? = nil,
		type: [CodeableConcept]? = nil
	) {
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
		case site
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.observer = try Reference(from: _container, forKey: .observer)
		self.site = try Reference(from: _container, forKeyIfPresent: .site)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try observer.encode(on: &_container, forKey: .observer)
		try site?.encode(on: &_container, forKey: .site)
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
