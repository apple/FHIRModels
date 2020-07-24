//
//  Provenance.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Provenance)
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
	
	/// Policy or plan the activity was defined by
	public var policy: [FHIRPrimitive<FHIRURI>]?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// Reason the activity is occurring
	public var reason: [Coding]?
	
	/// Activity that occurred
	public var activity: Coding?
	
	/// Actor involved
	public var agent: [ProvenanceAgent]
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Signature on target
	public var signature: [Signature]?
	
	/// Designated initializer taking all required properties
	public init(agent: [ProvenanceAgent], recorded: FHIRPrimitive<Instant>, target: [Reference]) {
		self.agent = agent
		self.recorded = recorded
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							activity: Coding? = nil,
							agent: [ProvenanceAgent],
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
							reason: [Coding]? = nil,
							recorded: FHIRPrimitive<Instant>,
							signature: [Signature]? = nil,
							target: [Reference],
							text: Narrative? = nil)
	{
		self.init(agent: agent, recorded: recorded, target: target)
		self.activity = activity
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
		self.activity = try Coding(from: _container, forKeyIfPresent: .activity)
		self.agent = try [ProvenanceAgent](from: _container, forKey: .agent)
		self.entity = try [ProvenanceEntity](from: _container, forKeyIfPresent: .entity)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.reason = try [Coding](from: _container, forKeyIfPresent: .reason)
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
		try agent.encode(on: &_container, forKey: .agent)
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
 Actor involved.
 
 An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
open class ProvenanceAgent: BackboneElement {
	
	/// All possible types for "onBehalfOf[x]"
	public enum OnBehalfOfX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "who[x]"
	public enum WhoX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// What the agents role was
	public var role: [CodeableConcept]?
	
	/// Who participated
	/// One of `who[x]`
	public var who: WhoX
	
	/// Who the agent is representing
	/// One of `onBehalfOf[x]`
	public var onBehalfOf: OnBehalfOfX?
	
	/// Type of relationship between agents
	public var relatedAgentType: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(who: WhoX) {
		self.who = who
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							onBehalfOf: OnBehalfOfX? = nil,
							relatedAgentType: CodeableConcept? = nil,
							role: [CodeableConcept]? = nil,
							who: WhoX)
	{
		self.init(who: who)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.relatedAgentType = relatedAgentType
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case onBehalfOfReference
		case onBehalfOfUri; case _onBehalfOfUri
		case relatedAgentType
		case role
		case whoReference
		case whoUri; case _whoUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.whoReference) || _container.contains(CodingKeys.whoUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.whoReference, CodingKeys.whoUri], debugDescription: "Must have at least one value for \"who\" but have none"))
		}
		
		// Decode all our properties
		var _t_onBehalfOf: OnBehalfOfX? = nil
		if let onBehalfOfUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .onBehalfOfUri, auxiliaryKey: ._onBehalfOfUri) {
			if _t_onBehalfOf != nil {
				throw DecodingError.dataCorruptedError(forKey: .onBehalfOfUri, in: _container, debugDescription: "More than one value provided for \"onBehalfOf\"")
			}
			_t_onBehalfOf = .uri(onBehalfOfUri)
		}
		if let onBehalfOfReference = try Reference(from: _container, forKeyIfPresent: .onBehalfOfReference) {
			if _t_onBehalfOf != nil {
				throw DecodingError.dataCorruptedError(forKey: .onBehalfOfReference, in: _container, debugDescription: "More than one value provided for \"onBehalfOf\"")
			}
			_t_onBehalfOf = .reference(onBehalfOfReference)
		}
		self.onBehalfOf = _t_onBehalfOf
		self.relatedAgentType = try CodeableConcept(from: _container, forKeyIfPresent: .relatedAgentType)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		var _t_who: WhoX? = nil
		if let whoUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .whoUri, auxiliaryKey: ._whoUri) {
			if _t_who != nil {
				throw DecodingError.dataCorruptedError(forKey: .whoUri, in: _container, debugDescription: "More than one value provided for \"who\"")
			}
			_t_who = .uri(whoUri)
		}
		if let whoReference = try Reference(from: _container, forKeyIfPresent: .whoReference) {
			if _t_who != nil {
				throw DecodingError.dataCorruptedError(forKey: .whoReference, in: _container, debugDescription: "More than one value provided for \"who\"")
			}
			_t_who = .reference(whoReference)
		}
		self.who = _t_who!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = onBehalfOf {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .onBehalfOfUri, auxiliaryKey: ._onBehalfOfUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .onBehalfOfReference)
			}
		}
		try relatedAgentType?.encode(on: &_container, forKey: .relatedAgentType)
		try role?.encode(on: &_container, forKey: .role)
		
			switch who {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .whoUri, auxiliaryKey: ._whoUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .whoReference)
			}
		
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
		    && relatedAgentType == _other.relatedAgentType
		    && role == _other.role
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(onBehalfOf)
		hasher.combine(relatedAgentType)
		hasher.combine(role)
		hasher.combine(who)
	}
}

/**
 An entity used in this activity.
 */
open class ProvenanceEntity: BackboneElement {
	
	/// All possible types for "what[x]"
	public enum WhatX: Hashable {
		case identifier(Identifier)
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// How the entity was used during the activity.
	public var role: FHIRPrimitive<ProvenanceEntityRole>
	
	/// Identity of entity
	/// One of `what[x]`
	public var what: WhatX
	
	/// Entity is attributed to this agent
	public var agent: [ProvenanceAgent]?
	
	/// Designated initializer taking all required properties
	public init(role: FHIRPrimitive<ProvenanceEntityRole>, what: WhatX) {
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
							what: WhatX)
	{
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
		case whatIdentifier
		case whatReference
		case whatUri; case _whatUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.whatIdentifier) || _container.contains(CodingKeys.whatReference) || _container.contains(CodingKeys.whatUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.whatIdentifier, CodingKeys.whatReference, CodingKeys.whatUri], debugDescription: "Must have at least one value for \"what\" but have none"))
		}
		
		// Decode all our properties
		self.agent = try [ProvenanceAgent](from: _container, forKeyIfPresent: .agent)
		self.role = try FHIRPrimitive<ProvenanceEntityRole>(from: _container, forKey: .role, auxiliaryKey: ._role)
		var _t_what: WhatX? = nil
		if let whatUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .whatUri, auxiliaryKey: ._whatUri) {
			if _t_what != nil {
				throw DecodingError.dataCorruptedError(forKey: .whatUri, in: _container, debugDescription: "More than one value provided for \"what\"")
			}
			_t_what = .uri(whatUri)
		}
		if let whatReference = try Reference(from: _container, forKeyIfPresent: .whatReference) {
			if _t_what != nil {
				throw DecodingError.dataCorruptedError(forKey: .whatReference, in: _container, debugDescription: "More than one value provided for \"what\"")
			}
			_t_what = .reference(whatReference)
		}
		if let whatIdentifier = try Identifier(from: _container, forKeyIfPresent: .whatIdentifier) {
			if _t_what != nil {
				throw DecodingError.dataCorruptedError(forKey: .whatIdentifier, in: _container, debugDescription: "More than one value provided for \"what\"")
			}
			_t_what = .identifier(whatIdentifier)
		}
		self.what = _t_what!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent?.encode(on: &_container, forKey: .agent)
		try role.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		
			switch what {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .whatUri, auxiliaryKey: ._whatUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .whatReference)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .whatIdentifier)
			}
		
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
