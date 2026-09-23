//
//  Provenance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Provenance)
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
 Who, What, When for a set of resources.
 
 Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
 otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
 trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become
 important records with their own provenance. Provenance statement indicates clinical significance in terms of
 confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document
 Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust
 policies.
 */
public struct Provenance: DomainResource {
	
	public static let resourceType: ResourceType = .provenance
	
	/// Activity that occurred
	public var activity: CodeableConcept?
	
	/// Agents involved in creating resource
	public var agent: [ProvenanceAgent]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// When the activity occurred
	public var period: Period?
	
	/// Policy or plan the activity was defined by
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Reason the activity is occurring
	public var reason: [CodeableConcept]?
	
	/// When the activity was recorded / updated
	public var recorded: FHIRPrimitive<Instant>
	
	/// Signature on target
	public var signature: [Signature]?
	
	/// Target Reference(s) (usually version specific)
	public var target: [Reference]
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		self.recorded = recorded
		self.signature = signature
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case activity
		case agent
		case contained
		case entity
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case period
		case policy; case _policy
		case reason
		case recorded; case _recorded
		case signature
		case target
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try CodeableConcept(from: _container, forKeyIfPresent: .activity)
		self.agent = try [ProvenanceAgent](from: _container, forKeyIfPresent: .agent)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.entity = try [ProvenanceEntity](from: _container, forKeyIfPresent: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<Instant>(from: _container, forKey: .recorded, auxiliaryKey: ._recorded)
		self.signature = try [Signature](from: _container, forKeyIfPresent: .signature)
		self.target = try [Reference](from: _container, forKey: .target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try activity?.encode(on: &_container, forKey: .activity)
		try agent?.encode(on: &_container, forKey: .agent)
		try contained?.encode(on: &_container, forKey: .contained)
		try entity?.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try signature?.encode(on: &_container, forKey: .signature)
		try target.encode(on: &_container, forKey: .target)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Agents involved in creating resource.
 
 An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the activity
 taking place. An agent can be a person, an organization, software, or other entities that may be ascribed
 responsibility.
 */
public struct ProvenanceAgent: BackboneElement {
	
	/// Individual, device or organization playing role
	public var actor: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Track delegation between agents
	public var relatedAgent: [ProvenanceAgentRelatedAgent]?
	
	/// What the agents involvement was
	public var role: Coding
	
	/// Authorization-system identifier for the agent
	public var userId: Identifier?
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedAgent: [ProvenanceAgentRelatedAgent]? = nil,
		role: Coding,
		userId: Identifier? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedAgent = relatedAgent
		self.role = role
		self.userId = userId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relatedAgent
		case role
		case userId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatedAgent = try [ProvenanceAgentRelatedAgent](from: _container, forKeyIfPresent: .relatedAgent)
		self.role = try Coding(from: _container, forKey: .role)
		self.userId = try Identifier(from: _container, forKeyIfPresent: .userId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatedAgent?.encode(on: &_container, forKey: .relatedAgent)
		try role.encode(on: &_container, forKey: .role)
		try userId?.encode(on: &_container, forKey: .userId)
	}
}

/**
 Track delegation between agents.
 
 A relationship between two the agents referenced in this resource. This is defined to allow for explicit description of
 the delegation between agents.  For example, this human author used this device, or one person acted on another's
 behest.
 */
public struct ProvenanceAgentRelatedAgent: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reference to other agent in this resource by identifier
	public var target: FHIRPrimitive<FHIRURI>
	
	/// Type of relationship between agents
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: FHIRPrimitive<FHIRURI>,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case target; case _target
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
		self.target = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .target, auxiliaryKey: ._target)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 An entity used in this activity.
 */
public struct ProvenanceEntity: BackboneElement {
	
	/// Entity is attributed to this agent
	public var agent: ProvenanceAgent?
	
	/// Human description of entity
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Identity of entity
	public var reference: FHIRPrimitive<FHIRURI>
	
	/// How the entity was used during the activity.
	/// Restricted to: ['derivation']
	public var role: FHIRPrimitive<ProvenanceEntityRole>
	
	/// The type of resource in this entity
	public var type: Coding
	
	/// Designated initializer
	public init(
		agent: ProvenanceAgent? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: FHIRPrimitive<FHIRURI>,
		role: FHIRPrimitive<ProvenanceEntityRole>,
		type: Coding
	) {
		self.agent = agent
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.role = role
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference; case _reference
		case role; case _role
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.agent = try ProvenanceAgent(from: _container, forKeyIfPresent: .agent)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .reference, auxiliaryKey: ._reference)
		self.role = try FHIRPrimitive<ProvenanceEntityRole>(from: _container, forKey: .role, auxiliaryKey: ._role)
		self.type = try Coding(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try agent?.encode(on: &_container, forKey: .agent)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try role.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try type.encode(on: &_container, forKey: .type)
	}
}
