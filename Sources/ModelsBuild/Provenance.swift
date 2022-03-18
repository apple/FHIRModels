//
//  Provenance.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/Provenance)
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
 Who, What, When for a set of resources.
 
 Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
 otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
 trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become
 important records with their own provenance. Provenance statement indicates clinical significance in terms of
 confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document
 Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust
 policies.
 */
open class Provenance: DomainResource {
	
	override open class var resourceType: ResourceType { return .provenance }
	
	/// All possible types for "occurred[x]"
	public enum OccurredX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Target Reference(s) (usually version specific)
	public var target: [Reference]
	
	/// When the activity occurred
	/// One of `occurred[x]`
	public var occurred: OccurredX?
	
	/// When the activity was recorded / updated
	public var recorded: FHIRPrimitive<Instant>?
	
	/// Policy or plan the activity was defined by
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// Authorization (purposeOfUse) related to the event
	public var authorization: [CodeableReference]?
	
	/// Activity that occurred
	public var activity: CodeableConcept?
	
	/// Workflow authorization within which this event occurred
	public var basedOn: [Reference]?
	
	/// The patient is the subject of the data created/updated (.target) by the activity
	public var patient: Reference?
	
	/// Encounter within which this event occurred or which the event is tightly associated
	public var encounter: Reference?
	
	/// Actor involved
	public var agent: [ProvenanceAgent]
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Signature on target
	public var signature: [Signature]?
	
	/// Designated initializer taking all required properties
	public init(agent: [ProvenanceAgent], target: [Reference]) {
		self.agent = agent
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activity: CodeableConcept? = nil,
		agent: [ProvenanceAgent],
		authorization: [CodeableReference]? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		entity: [ProvenanceEntity]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		occurred: OccurredX? = nil,
		patient: Reference? = nil,
		policy: [FHIRPrimitive<FHIRURI>]? = nil,
		recorded: FHIRPrimitive<Instant>? = nil,
		signature: [Signature]? = nil,
		target: [Reference],
		text: Narrative? = nil
	) {
		self.init(agent: agent, target: target)
		self.activity = activity
		self.authorization = authorization
		self.basedOn = basedOn
		self.contained = contained
		self.encounter = encounter
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.occurred = occurred
		self.patient = patient
		self.policy = policy
		self.recorded = recorded
		self.signature = signature
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case agent
		case authorization
		case basedOn
		case encounter
		case entity
		case location
		case occurredDateTime; case _occurredDateTime
		case occurredPeriod
		case patient
		case policy; case _policy
		case recorded; case _recorded
		case signature
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try CodeableConcept(from: _container, forKeyIfPresent: .activity)
		self.agent = try [ProvenanceAgent](from: _container, forKey: .agent)
		self.authorization = try [CodeableReference](from: _container, forKeyIfPresent: .authorization)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.entity = try [ProvenanceEntity](from: _container, forKeyIfPresent: .entity)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
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
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.signature = try [Signature](from: _container, forKeyIfPresent: .signature)
		self.target = try [Reference](from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity?.encode(on: &_container, forKey: .activity)
		try agent.encode(on: &_container, forKey: .agent)
		try authorization?.encode(on: &_container, forKey: .authorization)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try entity?.encode(on: &_container, forKey: .entity)
		try location?.encode(on: &_container, forKey: .location)
		if let _enum = occurred {
			switch _enum {
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurredPeriod)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurredDateTime, auxiliaryKey: ._occurredDateTime)
			}
		}
		try patient?.encode(on: &_container, forKey: .patient)
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try recorded?.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try signature?.encode(on: &_container, forKey: .signature)
		try target.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Provenance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activity == _other.activity
		    && agent == _other.agent
		    && authorization == _other.authorization
		    && basedOn == _other.basedOn
		    && encounter == _other.encounter
		    && entity == _other.entity
		    && location == _other.location
		    && occurred == _other.occurred
		    && patient == _other.patient
		    && policy == _other.policy
		    && recorded == _other.recorded
		    && signature == _other.signature
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(agent)
		hasher.combine(authorization)
		hasher.combine(basedOn)
		hasher.combine(encounter)
		hasher.combine(entity)
		hasher.combine(location)
		hasher.combine(occurred)
		hasher.combine(patient)
		hasher.combine(policy)
		hasher.combine(recorded)
		hasher.combine(signature)
		hasher.combine(target)
	}
}

/**
 Actor involved.
 
 An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
open class ProvenanceAgent: BackboneElement {
	
	/// How the agent participated
	public var type: CodeableConcept?
	
	/// What the agents role was
	public var role: [CodeableConcept]?
	
	/// The agent that participated in the event
	public var who: Reference
	
	/// The agent that delegated
	public var onBehalfOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(who: Reference) {
		self.who = who
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		role: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil,
		who: Reference
	) {
		self.init(who: who)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.role = role
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case onBehalfOf
		case role
		case type
		case who
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.who = try Reference(from: _container, forKey: .who)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type)
		try who.encode(on: &_container, forKey: .who)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProvenanceAgent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return onBehalfOf == _other.onBehalfOf
		    && role == _other.role
		    && type == _other.type
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(onBehalfOf)
		hasher.combine(role)
		hasher.combine(type)
		hasher.combine(who)
	}
}

/**
 An entity used in this activity.
 */
open class ProvenanceEntity: BackboneElement {
	
	/// How the entity was used during the activity.
	public var role: FHIRPrimitive<ProvenanceEntityRole>
	
	/// Identity of entity
	public var what: Reference
	
	/// Entity is attributed to this agent
	public var agent: [ProvenanceAgent]?
	
	/// Designated initializer taking all required properties
	public init(role: FHIRPrimitive<ProvenanceEntityRole>, what: Reference) {
		self.role = role
		self.what = what
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		agent: [ProvenanceAgent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: FHIRPrimitive<ProvenanceEntityRole>,
		what: Reference
	) {
		self.init(role: role, what: what)
		self.agent = agent
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case role; case _role
		case what
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.agent = try [ProvenanceAgent](from: _container, forKeyIfPresent: .agent)
		self.role = try FHIRPrimitive<ProvenanceEntityRole>(from: _container, forKey: .role, auxiliaryKey: ._role)
		self.what = try Reference(from: _container, forKey: .what)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent?.encode(on: &_container, forKey: .agent)
		try role.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try what.encode(on: &_container, forKey: .what)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProvenanceEntity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return agent == _other.agent
		    && role == _other.role
		    && what == _other.what
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(agent)
		hasher.combine(role)
		hasher.combine(what)
	}
}
