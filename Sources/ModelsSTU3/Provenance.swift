//
//  Provenance.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Provenance)
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
	public var activity: Coding?
	
	/// Actor involved
	public var agent: [ProvenanceAgent]
	
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
	public var reason: [Coding]?
	
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
		self.activity = try Coding(from: _container, forKeyIfPresent: .activity)
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
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .policy, auxiliaryKey: ._policy)
		self.reason = try [Coding](from: _container, forKeyIfPresent: .reason)
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
 Actor involved.
 
 An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
public struct ProvenanceAgent: BackboneElement {
	
	/// All possible types for "onBehalfOf[x]"
	public enum OnBehalfOfX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "who[x]"
	public enum WhoX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who the agent is representing
	/// One of `onBehalfOf[x]`
	public var onBehalfOf: OnBehalfOfX?
	
	/// Type of relationship between agents
	public var relatedAgentType: CodeableConcept?
	
	/// What the agents role was
	public var role: [CodeableConcept]?
	
	/// Who participated
	/// One of `who[x]`
	public var who: WhoX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: OnBehalfOfX? = nil,
		relatedAgentType: CodeableConcept? = nil,
		role: [CodeableConcept]? = nil,
		who: WhoX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.relatedAgentType = relatedAgentType
		self.role = role
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onBehalfOfReference
		case onBehalfOfUri; case _onBehalfOfUri
		case relatedAgentType
		case role
		case whoReference
		case whoUri; case _whoUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Self._decodeOnBehalfOf(from: _container)
		self.relatedAgentType = try CodeableConcept(from: _container, forKeyIfPresent: .relatedAgentType)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.who = try Self._decodeWho(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = onBehalfOf {
		switch _enum {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .onBehalfOfReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .onBehalfOfUri, auxiliaryKey: ._onBehalfOfUri)
		}
		}
		try relatedAgentType?.encode(on: &_container, forKey: .relatedAgentType)
		try role?.encode(on: &_container, forKey: .role)
		
		switch who {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .whoReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .whoUri, auxiliaryKey: ._whoUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOnBehalfOf(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OnBehalfOfX? {
		var _t_onBehalfOf: OnBehalfOfX? = nil
		if let onBehalfOfReference = try Reference(from: _container, forKeyIfPresent: .onBehalfOfReference) {
			_t_onBehalfOf = .reference(onBehalfOfReference)
		}
		if let onBehalfOfUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .onBehalfOfUri, auxiliaryKey: ._onBehalfOfUri) {
			if _t_onBehalfOf != nil {
				throw DecodingError.dataCorruptedError(forKey: .onBehalfOfUri, in: _container, debugDescription: "More than one value provided for \"onBehalfOf\"")
			}
			_t_onBehalfOf = .uri(onBehalfOfUri)
		}
		return _t_onBehalfOf
	}
	
	private static func _decodeWho(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> WhoX {
		var _t_who: WhoX? = nil
		if let whoReference = try Reference(from: _container, forKeyIfPresent: .whoReference) {
			_t_who = .reference(whoReference)
		}
		if let whoUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .whoUri, auxiliaryKey: ._whoUri) {
			if _t_who != nil {
				throw DecodingError.dataCorruptedError(forKey: .whoUri, in: _container, debugDescription: "More than one value provided for \"who\"")
			}
			_t_who = .uri(whoUri)
		}
		guard let _t_who else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.whoUri)
			throw DecodingError.valueNotFound(WhoX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"who\" but have none"))
		}
		return _t_who
	}
}

/**
 An entity used in this activity.
 */
public struct ProvenanceEntity: BackboneElement {
	
	/// All possible types for "what[x]"
	public enum WhatX: Equatable, Hashable, Sendable {
		indirect case identifier(Identifier)
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Entity is attributed to this agent
	public var agent: [ProvenanceAgent]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// How the entity was used during the activity.
	public var role: FHIRPrimitive<ProvenanceEntityRole>
	
	/// Identity of entity
	/// One of `what[x]`
	public var what: WhatX
	
	/// Designated initializer
	public init(
		agent: [ProvenanceAgent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: FHIRPrimitive<ProvenanceEntityRole>,
		what: WhatX
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
		case whatIdentifier
		case whatReference
		case whatUri; case _whatUri
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
		self.what = try Self._decodeWhat(from: _container)
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
		
		switch what {
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .whatIdentifier)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .whatReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .whatUri, auxiliaryKey: ._whatUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeWhat(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> WhatX {
		var _t_what: WhatX? = nil
		if let whatIdentifier = try Identifier(from: _container, forKeyIfPresent: .whatIdentifier) {
			_t_what = .identifier(whatIdentifier)
		}
		if let whatReference = try Reference(from: _container, forKeyIfPresent: .whatReference) {
			if _t_what != nil {
				throw DecodingError.dataCorruptedError(forKey: .whatReference, in: _container, debugDescription: "More than one value provided for \"what\"")
			}
			_t_what = .reference(whatReference)
		}
		if let whatUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .whatUri, auxiliaryKey: ._whatUri) {
			if _t_what != nil {
				throw DecodingError.dataCorruptedError(forKey: .whatUri, in: _container, debugDescription: "More than one value provided for \"what\"")
			}
			_t_what = .uri(whatUri)
		}
		guard let _t_what else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.whatUri)
			throw DecodingError.valueNotFound(WhatX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"what\" but have none"))
		}
		return _t_what
	}
}
