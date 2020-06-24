//
//  Provenance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Provenance)
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
	
	/// Target Reference(s) (usually version specific)
	public var target: [Reference]
	
	/// When the activity occurred
	public var period: Period?
	
	/// When the activity was recorded / updated
	public var recorded: FHIRPrimitive<Instant>
	
	/// Reason the activity is occurring
	public var reason: [CodeableConcept]?
	
	/// Activity that occurred
	public var activity: CodeableConcept?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// Policy or plan the activity was defined by
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Agents involved in creating resource
	public var agent: [ProvenanceAgent]?
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Signature on target
	public var signature: [Signature]?
	
	/// Designated initializer taking all required properties
	public init(recorded: FHIRPrimitive<Instant>, target: [Reference]) {
		self.recorded = recorded
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							activity: CodeableConcept? = nil,
							agent: [ProvenanceAgent]? = nil,
							contained: [ResourceProxy]? = nil,
							entity: [ProvenanceEntity]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							policy: [FHIRPrimitive<FHIRURI>]? = nil,
							reason: [CodeableConcept]? = nil,
							recorded: FHIRPrimitive<Instant>,
							signature: [Signature]? = nil,
							target: [Reference],
							text: Narrative? = nil)
	{
		self.init(recorded: recorded, target: target)
		self.activity = activity
		self.agent = agent
		self.contained = contained
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.policy = policy
		self.reason = reason
		self.signature = signature
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case agent
		case entity
		case location
		case period
		case policy; case _policy
		case reason
		case recorded; case _recorded
		case signature
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try CodeableConcept(from: _container, forKeyIfPresent: .activity)
		self.agent = try [ProvenanceAgent](from: _container, forKeyIfPresent: .agent)
		self.entity = try [ProvenanceEntity](from: _container, forKeyIfPresent: .entity)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKey: .recorded, auxiliaryKey: ._recorded)
		self.signature = try [Signature](from: _container, forKeyIfPresent: .signature)
		self.target = try [Reference](from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity?.encode(on: &_container, forKey: .activity)
		try agent?.encode(on: &_container, forKey: .agent)
		try entity?.encode(on: &_container, forKey: .entity)
		try location?.encode(on: &_container, forKey: .location)
		try period?.encode(on: &_container, forKey: .period)
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
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
		    && entity == _other.entity
		    && location == _other.location
		    && period == _other.period
		    && policy == _other.policy
		    && reason == _other.reason
		    && recorded == _other.recorded
		    && signature == _other.signature
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(agent)
		hasher.combine(entity)
		hasher.combine(location)
		hasher.combine(period)
		hasher.combine(policy)
		hasher.combine(reason)
		hasher.combine(recorded)
		hasher.combine(signature)
		hasher.combine(target)
	}
}

/**
 Agents involved in creating resource.
 
 An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the activity
 taking place. An agent can be a person, an organization, software, or other entities that may be ascribed
 responsibility.
 */
open class ProvenanceAgent: BackboneElement {
	
	/// What the agents involvement was
	public var role: Coding
	
	/// Individual, device or organization playing role
	public var actor: Reference?
	
	/// Authorization-system identifier for the agent
	public var userId: Identifier?
	
	/// Track delegation between agents
	public var relatedAgent: [ProvenanceAgentRelatedAgent]?
	
	/// Designated initializer taking all required properties
	public init(role: Coding) {
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							relatedAgent: [ProvenanceAgentRelatedAgent]? = nil,
							role: Coding,
							userId: Identifier? = nil)
	{
		self.init(role: role)
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedAgent = relatedAgent
		self.userId = userId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case relatedAgent
		case role
		case userId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.relatedAgent = try [ProvenanceAgentRelatedAgent](from: _container, forKeyIfPresent: .relatedAgent)
		self.role = try Coding(from: _container, forKey: .role)
		self.userId = try Identifier(from: _container, forKeyIfPresent: .userId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try relatedAgent?.encode(on: &_container, forKey: .relatedAgent)
		try role.encode(on: &_container, forKey: .role)
		try userId?.encode(on: &_container, forKey: .userId)
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
		return actor == _other.actor
		    && relatedAgent == _other.relatedAgent
		    && role == _other.role
		    && userId == _other.userId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(relatedAgent)
		hasher.combine(role)
		hasher.combine(userId)
	}
}

/**
 Track delegation between agents.
 
 A relationship between two the agents referenced in this resource. This is defined to allow for explicit description of
 the delegation between agents.  For example, this human author used this device, or one person acted on another's
 behest.
 */
open class ProvenanceAgentRelatedAgent: BackboneElement {
	
	/// Type of relationship between agents
	public var type: CodeableConcept
	
	/// Reference to other agent in this resource by identifier
	public var target: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(target: FHIRPrimitive<FHIRURI>, type: CodeableConcept) {
		self.target = target
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							target: FHIRPrimitive<FHIRURI>,
							type: CodeableConcept)
	{
		self.init(target: target, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case target; case _target
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.target = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .target, auxiliaryKey: ._target)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try target.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProvenanceAgentRelatedAgent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(target)
		hasher.combine(type)
	}
}

/**
 An entity used in this activity.
 */
open class ProvenanceEntity: BackboneElement {
	
	/// How the entity was used during the activity.
	/// Restricted to: ['derivation']
	public var role: FHIRPrimitive<ProvenanceEntityRole>
	
	/// The type of resource in this entity
	public var type: Coding
	
	/// Identity of entity
	public var reference: FHIRPrimitive<FHIRURI>
	
	/// Human description of entity
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Entity is attributed to this agent
	public var agent: ProvenanceAgent?
	
	/// Designated initializer taking all required properties
	public init(reference: FHIRPrimitive<FHIRURI>, role: FHIRPrimitive<ProvenanceEntityRole>, type: Coding) {
		self.reference = reference
		self.role = role
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							agent: ProvenanceAgent? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: FHIRPrimitive<FHIRURI>,
							role: FHIRPrimitive<ProvenanceEntityRole>,
							type: Coding)
	{
		self.init(reference: reference, role: role, type: type)
		self.agent = agent
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case display; case _display
		case reference; case _reference
		case role; case _role
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.agent = try ProvenanceAgent(from: _container, forKeyIfPresent: .agent)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .reference, auxiliaryKey: ._reference)
		self.role = try FHIRPrimitive<ProvenanceEntityRole>(from: _container, forKey: .role, auxiliaryKey: ._role)
		self.type = try Coding(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent?.encode(on: &_container, forKey: .agent)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try reference.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try role.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try type.encode(on: &_container, forKey: .type)
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
		    && display == _other.display
		    && reference == _other.reference
		    && role == _other.role
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(agent)
		hasher.combine(display)
		hasher.combine(reference)
		hasher.combine(role)
		hasher.combine(type)
	}
}
