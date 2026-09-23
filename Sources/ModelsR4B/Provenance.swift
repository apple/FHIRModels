//
//  Provenance.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Provenance)
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
	
	/// All possible types for "occurred[x]"
	public enum OccurredX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Activity that occurred
	public var activity: CodeableConcept?
	
	/// Actor involved
	public var agent: [ProvenanceAgent]
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Additional content defined by implementations
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
	/// One of `occurred[x]`
	public var occurred: OccurredX?
	
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
		occurred: OccurredX? = nil,
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
		self.occurred = occurred
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
		case occurredDateTime; case _occurredDateTime
		case occurredPeriod
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
		self.agent = try [ProvenanceAgent](from: _container, forKey: .agent)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.entity = try [ProvenanceEntity](from: _container, forKeyIfPresent: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.occurred = try Self._decodeOccurred(from: _container)
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
		try agent.encode(on: &_container, forKey: .agent)
		try contained?.encode(on: &_container, forKey: .contained)
		try entity?.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
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
		try policy?.encode(on: &_container, forKey: .policy, auxiliaryKey: ._policy)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try signature?.encode(on: &_container, forKey: .signature)
		try target.encode(on: &_container, forKey: .target)
		try text?.encode(on: &_container, forKey: .text)
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
 Actor involved.
 
 An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
public struct ProvenanceAgent: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Who the agent is representing
	public var onBehalfOf: Reference?
	
	/// What the agents role was
	public var role: [CodeableConcept]?
	
	/// How the agent participated
	public var type: CodeableConcept?
	
	/// Who participated
	public var who: Reference
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		role: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil,
		who: Reference
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.role = role
		self.type = type
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onBehalfOf
		case role
		case type
		case who
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.who = try Reference(from: _container, forKey: .who)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type)
		try who.encode(on: &_container, forKey: .who)
	}
}

/**
 An entity used in this activity.
 */
public struct ProvenanceEntity: BackboneElement {
	
	/// Entity is attributed to this agent
	public var agent: [ProvenanceAgent]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// How the entity was used during the activity.
	public var role: FHIRPrimitive<ProvenanceEntityRole>
	
	/// Identity of entity
	public var what: Reference
	
	/// Designated initializer
	public init(
		agent: [ProvenanceAgent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: FHIRPrimitive<ProvenanceEntityRole>,
		what: Reference
	) {
		self.agent = agent
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
		self.what = what
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case role; case _role
		case what
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.agent = try [ProvenanceAgent](from: _container, forKeyIfPresent: .agent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try FHIRPrimitive<ProvenanceEntityRole>(from: _container, forKey: .role, auxiliaryKey: ._role)
		self.what = try Reference(from: _container, forKey: .what)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try agent?.encode(on: &_container, forKey: .agent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role.encode(on: &_container, forKey: .role, auxiliaryKey: ._role)
		try what.encode(on: &_container, forKey: .what)
	}
}
