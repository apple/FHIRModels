//
//  ExampleScenario.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ExampleScenario)
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
 A computable description of a set of actors and the interactions between those actors.
 
 A computable description of the actors, interactions between those actors that would occur, and concrete examples of
 the data that would be exchanged in a specific hypothetical exchange, typically used to help demonstrate the
 interoperability expectations of a specification.  This resource is used to illustrate a specific time-based exchange,
 not to define in general terms how exchanges can/should occur.
 */
public struct ExampleScenario: DomainResource {
	
	public static let resourceType: ResourceType = .exampleScenario
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Individual involved in exchange
	public var actor: [ExampleScenarioActor]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the ExampleScenario
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the example scenario
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Data used in the scenario
	public var instance: [ExampleScenarioInstance]?
	
	/// Jurisdiction of the authority that maintains the example scenario (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this example scenario (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Major process within scenario
	public var process: [ExampleScenarioProcess]?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// The purpose of the example, e.g. to illustrate a scenario
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this example scenario. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this example scenario (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this example scenario, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the example scenario
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		actor: [ExampleScenarioActor]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instance: [ExampleScenarioInstance]? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		process: [ExampleScenarioProcess]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.actor = actor
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instance = instance
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.process = process
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actor
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instance
		case jurisdiction
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case process
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try [ExampleScenarioActor](from: _container, forKeyIfPresent: .actor)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instance = try [ExampleScenarioInstance](from: _container, forKeyIfPresent: .instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.process = try [ExampleScenarioProcess](from: _container, forKeyIfPresent: .process)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instance?.encode(on: &_container, forKey: .instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try process?.encode(on: &_container, forKey: .process)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
		switch _enum {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeVersionAlgorithm(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> VersionAlgorithmX? {
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		return _t_versionAlgorithm
	}
}

/**
 Individual involved in exchange.
 
 A system or person who shares or receives an instance within the scenario.
 */
public struct ExampleScenarioActor: BackboneElement {
	
	/// Formal definition of actor
	public var definition: FHIRPrimitive<Canonical>?
	
	/// Details about actor
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// ID or acronym of the actor
	public var key: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for actor when rendering
	public var title: FHIRPrimitive<FHIRString>
	
	/// The category of actor - person or system.
	public var type: FHIRPrimitive<ActorDefinitionActorType>?
	
	/// Designated initializer
	public init(
		definition: FHIRPrimitive<Canonical>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		title: FHIRPrimitive<FHIRString>,
		type: FHIRPrimitive<ActorDefinitionActorType>? = nil
	) {
		self.definition = definition
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.key = key
		self.modifierExtension = modifierExtension
		self.title = title
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case key; case _key
		case modifierExtension
		case title; case _title
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<ActorDefinitionActorType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Data used in the scenario.
 
 A single data collection that is shared as part of the scenario.
 */
public struct ExampleScenarioInstance: BackboneElement {
	
	/// All possible types for "structureProfile[x]"
	public enum StructureProfileX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Resources contained in the instance
	public var containedInstance: [ExampleScenarioInstanceContainedInstance]?
	
	/// Example instance data
	public var content: Reference?
	
	/// Human-friendly description of the instance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// ID or acronym of the instance
	public var key: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Rules instance adheres to
	/// One of `structureProfile[x]`
	public var structureProfile: StructureProfileX?
	
	/// Data structure for example
	public var structureType: Coding
	
	/// E.g. 4.0.1
	public var structureVersion: FHIRPrimitive<FHIRString>?
	
	/// Label for instance
	public var title: FHIRPrimitive<FHIRString>
	
	/// Snapshot of instance that changes
	public var version: [ExampleScenarioInstanceVersion]?
	
	/// Designated initializer
	public init(
		containedInstance: [ExampleScenarioInstanceContainedInstance]? = nil,
		content: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		structureProfile: StructureProfileX? = nil,
		structureType: Coding,
		structureVersion: FHIRPrimitive<FHIRString>? = nil,
		title: FHIRPrimitive<FHIRString>,
		version: [ExampleScenarioInstanceVersion]? = nil
	) {
		self.containedInstance = containedInstance
		self.content = content
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.key = key
		self.modifierExtension = modifierExtension
		self.structureProfile = structureProfile
		self.structureType = structureType
		self.structureVersion = structureVersion
		self.title = title
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case containedInstance
		case content
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case key; case _key
		case modifierExtension
		case structureProfileCanonical; case _structureProfileCanonical
		case structureProfileUri; case _structureProfileUri
		case structureType
		case structureVersion; case _structureVersion
		case title; case _title
		case version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.containedInstance = try [ExampleScenarioInstanceContainedInstance](from: _container, forKeyIfPresent: .containedInstance)
		self.content = try Reference(from: _container, forKeyIfPresent: .content)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.structureProfile = try Self._decodeStructureProfile(from: _container)
		self.structureType = try Coding(from: _container, forKey: .structureType)
		self.structureVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .structureVersion, auxiliaryKey: ._structureVersion)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.version = try [ExampleScenarioInstanceVersion](from: _container, forKeyIfPresent: .version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try containedInstance?.encode(on: &_container, forKey: .containedInstance)
		try content?.encode(on: &_container, forKey: .content)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = structureProfile {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .structureProfileCanonical, auxiliaryKey: ._structureProfileCanonical)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .structureProfileUri, auxiliaryKey: ._structureProfileUri)
		}
		}
		try structureType.encode(on: &_container, forKey: .structureType)
		try structureVersion?.encode(on: &_container, forKey: .structureVersion, auxiliaryKey: ._structureVersion)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try version?.encode(on: &_container, forKey: .version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeStructureProfile(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StructureProfileX? {
		var _t_structureProfile: StructureProfileX? = nil
		if let structureProfileCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .structureProfileCanonical, auxiliaryKey: ._structureProfileCanonical) {
			_t_structureProfile = .canonical(structureProfileCanonical)
		}
		if let structureProfileUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .structureProfileUri, auxiliaryKey: ._structureProfileUri) {
			if _t_structureProfile != nil {
				throw DecodingError.dataCorruptedError(forKey: .structureProfileUri, in: _container, debugDescription: "More than one value provided for \"structureProfile\"")
			}
			_t_structureProfile = .uri(structureProfileUri)
		}
		return _t_structureProfile
	}
}

/**
 Resources contained in the instance.
 
 References to other instances that can be found within this instance (e.g. the observations contained in a bundle).
 */
public struct ExampleScenarioInstanceContainedInstance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Key of contained instance
	public var instanceReference: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Key of contained instance version
	public var versionReference: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instanceReference: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		versionReference: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.instanceReference = instanceReference
		self.modifierExtension = modifierExtension
		self.versionReference = versionReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case instanceReference; case _instanceReference
		case modifierExtension
		case versionReference; case _versionReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instanceReference = try FHIRPrimitive<FHIRString>(from: _container, forKey: .instanceReference, auxiliaryKey: ._instanceReference)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.versionReference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionReference, auxiliaryKey: ._versionReference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instanceReference.encode(on: &_container, forKey: .instanceReference, auxiliaryKey: ._instanceReference)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try versionReference?.encode(on: &_container, forKey: .versionReference, auxiliaryKey: ._versionReference)
	}
}

/**
 Snapshot of instance that changes.
 
 Represents the instance as it was at a specific time-point.
 */
public struct ExampleScenarioInstanceVersion: BackboneElement {
	
	/// Example instance version data
	public var content: Reference?
	
	/// Details about version
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// ID or acronym of the version
	public var key: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for instance version
	public var title: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		content: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.content = content
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.key = key
		self.modifierExtension = modifierExtension
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case content
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case key; case _key
		case modifierExtension
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.content = try Reference(from: _container, forKeyIfPresent: .content)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try content?.encode(on: &_container, forKey: .content)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Major process within scenario.
 
 A group of operations that represents a significant step within a scenario.
 */
public struct ExampleScenarioProcess: BackboneElement {
	
	/// Human-friendly description of the process
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Status after successful completion
	public var postConditions: FHIRPrimitive<FHIRString>?
	
	/// Status before process starts
	public var preConditions: FHIRPrimitive<FHIRString>?
	
	/// Event within of the process
	public var step: [ExampleScenarioProcessStep]?
	
	/// Label for procss
	public var title: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		postConditions: FHIRPrimitive<FHIRString>? = nil,
		preConditions: FHIRPrimitive<FHIRString>? = nil,
		step: [ExampleScenarioProcessStep]? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.postConditions = postConditions
		self.preConditions = preConditions
		self.step = step
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case postConditions; case _postConditions
		case preConditions; case _preConditions
		case step
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.postConditions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .postConditions, auxiliaryKey: ._postConditions)
		self.preConditions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preConditions, auxiliaryKey: ._preConditions)
		self.step = try [ExampleScenarioProcessStep](from: _container, forKeyIfPresent: .step)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try postConditions?.encode(on: &_container, forKey: .postConditions, auxiliaryKey: ._postConditions)
		try preConditions?.encode(on: &_container, forKey: .preConditions, auxiliaryKey: ._preConditions)
		try step?.encode(on: &_container, forKey: .step)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Event within of the process.
 
 A significant action that occurs as part of the process.
 */
public struct ExampleScenarioProcessStep: BackboneElement {
	
	/// Alternate non-typical step action
	public var alternative: [ExampleScenarioProcessStepAlternative]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Sequential number of the step
	public var number: FHIRPrimitive<FHIRString>?
	
	/// Step is simple action
	public var operation: ExampleScenarioProcessStepOperation?
	
	/// Pause in the flow?
	public var pause: FHIRPrimitive<FHIRBool>?
	
	/// Step is nested process
	public var process: ExampleScenarioProcess?
	
	/// Step is nested workflow
	public var workflow: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		alternative: [ExampleScenarioProcessStepAlternative]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRString>? = nil,
		operation: ExampleScenarioProcessStepOperation? = nil,
		pause: FHIRPrimitive<FHIRBool>? = nil,
		process: ExampleScenarioProcess? = nil,
		workflow: FHIRPrimitive<Canonical>? = nil
	) {
		self.alternative = alternative
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
		self.operation = operation
		self.pause = pause
		self.process = process
		self.workflow = workflow
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alternative
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case number; case _number
		case operation
		case pause; case _pause
		case process
		case workflow; case _workflow
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.alternative = try [ExampleScenarioProcessStepAlternative](from: _container, forKeyIfPresent: .alternative)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.operation = try ExampleScenarioProcessStepOperation(from: _container, forKeyIfPresent: .operation)
		self.pause = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .pause, auxiliaryKey: ._pause)
		self.process = try ExampleScenarioProcess(from: _container, forKeyIfPresent: .process)
		self.workflow = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .workflow, auxiliaryKey: ._workflow)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try alternative?.encode(on: &_container, forKey: .alternative)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try operation?.encode(on: &_container, forKey: .operation)
		try pause?.encode(on: &_container, forKey: .pause, auxiliaryKey: ._pause)
		try process?.encode(on: &_container, forKey: .process)
		try workflow?.encode(on: &_container, forKey: .workflow, auxiliaryKey: ._workflow)
	}
}

/**
 Alternate non-typical step action.
 
 Indicates an alternative step that can be taken instead of the sub-process, scenario or operation.  E.g. to represent
 non-happy-path/exceptional/atypical circumstances.
 */
public struct ExampleScenarioProcessStepAlternative: BackboneElement {
	
	/// Human-readable description of option
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Alternative action(s)
	public var step: [ExampleScenarioProcessStep]?
	
	/// Label for alternative
	public var title: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		step: [ExampleScenarioProcessStep]? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.step = step
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case step
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.step = try [ExampleScenarioProcessStep](from: _container, forKeyIfPresent: .step)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try step?.encode(on: &_container, forKey: .step)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Step is simple action.
 
 The step represents a single operation invoked on receiver by sender.
 */
public struct ExampleScenarioProcessStepOperation: BackboneElement {
	
	/// Human-friendly description of the operation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Who starts the operation
	public var initiator: FHIRPrimitive<FHIRString>?
	
	/// Initiator stays active?
	public var initiatorActive: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Who receives the operation
	public var receiver: FHIRPrimitive<FHIRString>?
	
	/// Receiver stays active?
	public var receiverActive: FHIRPrimitive<FHIRBool>?
	
	/// Instance transmitted on invocation
	public var request: ExampleScenarioInstanceContainedInstance?
	
	/// Instance transmitted on invocation response
	public var response: ExampleScenarioInstanceContainedInstance?
	
	/// Label for step
	public var title: FHIRPrimitive<FHIRString>
	
	/// Kind of action
	public var type: Coding?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initiator: FHIRPrimitive<FHIRString>? = nil,
		initiatorActive: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		receiver: FHIRPrimitive<FHIRString>? = nil,
		receiverActive: FHIRPrimitive<FHIRBool>? = nil,
		request: ExampleScenarioInstanceContainedInstance? = nil,
		response: ExampleScenarioInstanceContainedInstance? = nil,
		title: FHIRPrimitive<FHIRString>,
		type: Coding? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.initiator = initiator
		self.initiatorActive = initiatorActive
		self.modifierExtension = modifierExtension
		self.receiver = receiver
		self.receiverActive = receiverActive
		self.request = request
		self.response = response
		self.title = title
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case initiator; case _initiator
		case initiatorActive; case _initiatorActive
		case modifierExtension
		case receiver; case _receiver
		case receiverActive; case _receiverActive
		case request
		case response
		case title; case _title
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initiator = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initiator, auxiliaryKey: ._initiator)
		self.initiatorActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initiatorActive, auxiliaryKey: ._initiatorActive)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.receiver = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .receiver, auxiliaryKey: ._receiver)
		self.receiverActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .receiverActive, auxiliaryKey: ._receiverActive)
		self.request = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .request)
		self.response = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .response)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try initiator?.encode(on: &_container, forKey: .initiator, auxiliaryKey: ._initiator)
		try initiatorActive?.encode(on: &_container, forKey: .initiatorActive, auxiliaryKey: ._initiatorActive)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try receiver?.encode(on: &_container, forKey: .receiver, auxiliaryKey: ._receiver)
		try receiverActive?.encode(on: &_container, forKey: .receiverActive, auxiliaryKey: ._receiverActive)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
	}
}
