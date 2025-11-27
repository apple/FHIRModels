//
//  ExampleScenario.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/ExampleScenario)
//  Copyright 2025 Apple Inc.
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
open class ExampleScenario: DomainResource {
	
	override open class var resourceType: ResourceType { return .exampleScenario }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this example scenario, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the example scenario
	public var identifier: [Identifier]?
	
	/// Business version of the example scenario
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this example scenario (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this example scenario (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this example scenario. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the ExampleScenario
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Jurisdiction of the authority that maintains the example scenario (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// The purpose of the example, e.g. to illustrate a scenario
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Individual involved in exchange
	public var actor: [ExampleScenarioActor]?
	
	/// Data used in the scenario
	public var instance: [ExampleScenarioInstance]?
	
	/// Major process within scenario
	public var process: [ExampleScenarioProcess]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case identifier
		case instance
		case jurisdiction
		case name; case _name
		case process
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try [ExampleScenarioActor](from: _container, forKeyIfPresent: .actor)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instance = try [ExampleScenarioInstance](from: _container, forKeyIfPresent: .instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.process = try [ExampleScenarioProcess](from: _container, forKeyIfPresent: .process)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instance?.encode(on: &_container, forKey: .instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try process?.encode(on: &_container, forKey: .process)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenario else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && instance == _other.instance
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && process == _other.process
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(instance)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(process)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Individual involved in exchange.
 
 A system or person who shares or receives an instance within the scenario.
 */
open class ExampleScenarioActor: BackboneElement {
	
	/// ID or acronym of the actor
	public var key: FHIRPrimitive<FHIRString>
	
	/// The category of actor - person or system.
	public var type: FHIRPrimitive<ActorDefinitionActorType>?
	
	/// Label for actor when rendering
	public var title: FHIRPrimitive<FHIRString>
	
	/// Details about actor
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Formal definition of actor
	public var definition: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	public init(key: FHIRPrimitive<FHIRString>, title: FHIRPrimitive<FHIRString>) {
		self.key = key
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		definition: FHIRPrimitive<Canonical>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		title: FHIRPrimitive<FHIRString>,
		type: FHIRPrimitive<ActorDefinitionActorType>? = nil
	) {
		self.init(key: key, title: title)
		self.definition = definition
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case key; case _key
		case title; case _title
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<ActorDefinitionActorType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioActor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && key == _other.key
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(key)
		hasher.combine(title)
		hasher.combine(type)
	}
}

/**
 Data used in the scenario.
 
 A single data collection that is shared as part of the scenario.
 */
open class ExampleScenarioInstance: BackboneElement {
	
	/// All possible types for "structureProfile[x]"
	public enum StructureProfileX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// ID or acronym of the instance
	public var key: FHIRPrimitive<FHIRString>
	
	/// Data structure for example
	public var structureType: Coding
	
	/// E.g. 4.0.1
	public var structureVersion: FHIRPrimitive<FHIRString>?
	
	/// Rules instance adheres to
	/// One of `structureProfile[x]`
	public var structureProfile: StructureProfileX?
	
	/// Label for instance
	public var title: FHIRPrimitive<FHIRString>
	
	/// Human-friendly description of the instance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Example instance data
	public var content: Reference?
	
	/// Snapshot of instance that changes
	public var version: [ExampleScenarioInstanceVersion]?
	
	/// Resources contained in the instance
	public var containedInstance: [ExampleScenarioInstanceContainedInstance]?
	
	/// Designated initializer taking all required properties
	public init(key: FHIRPrimitive<FHIRString>, structureType: Coding, title: FHIRPrimitive<FHIRString>) {
		self.key = key
		self.structureType = structureType
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(key: key, structureType: structureType, title: title)
		self.containedInstance = containedInstance
		self.content = content
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.structureProfile = structureProfile
		self.structureVersion = structureVersion
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case containedInstance
		case content
		case description_fhir = "description"; case _description_fhir = "_description"
		case key; case _key
		case structureProfileCanonical; case _structureProfileCanonical
		case structureProfileUri; case _structureProfileUri
		case structureType
		case structureVersion; case _structureVersion
		case title; case _title
		case version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.containedInstance = try [ExampleScenarioInstanceContainedInstance](from: _container, forKeyIfPresent: .containedInstance)
		self.content = try Reference(from: _container, forKeyIfPresent: .content)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		var _t_structureProfile: StructureProfileX? = nil
		if let structureProfileCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .structureProfileCanonical, auxiliaryKey: ._structureProfileCanonical) {
			if _t_structureProfile != nil {
				throw DecodingError.dataCorruptedError(forKey: .structureProfileCanonical, in: _container, debugDescription: "More than one value provided for \"structureProfile\"")
			}
			_t_structureProfile = .canonical(structureProfileCanonical)
		}
		if let structureProfileUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .structureProfileUri, auxiliaryKey: ._structureProfileUri) {
			if _t_structureProfile != nil {
				throw DecodingError.dataCorruptedError(forKey: .structureProfileUri, in: _container, debugDescription: "More than one value provided for \"structureProfile\"")
			}
			_t_structureProfile = .uri(structureProfileUri)
		}
		self.structureProfile = _t_structureProfile
		self.structureType = try Coding(from: _container, forKey: .structureType)
		self.structureVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .structureVersion, auxiliaryKey: ._structureVersion)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.version = try [ExampleScenarioInstanceVersion](from: _container, forKeyIfPresent: .version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try containedInstance?.encode(on: &_container, forKey: .containedInstance)
		try content?.encode(on: &_container, forKey: .content)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return containedInstance == _other.containedInstance
		    && content == _other.content
		    && description_fhir == _other.description_fhir
		    && key == _other.key
		    && structureProfile == _other.structureProfile
		    && structureType == _other.structureType
		    && structureVersion == _other.structureVersion
		    && title == _other.title
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(containedInstance)
		hasher.combine(content)
		hasher.combine(description_fhir)
		hasher.combine(key)
		hasher.combine(structureProfile)
		hasher.combine(structureType)
		hasher.combine(structureVersion)
		hasher.combine(title)
		hasher.combine(version)
	}
}

/**
 Resources contained in the instance.
 
 References to other instances that can be found within this instance (e.g. the observations contained in a bundle).
 */
open class ExampleScenarioInstanceContainedInstance: BackboneElement {
	
	/// Key of contained instance
	public var instanceReference: FHIRPrimitive<FHIRString>
	
	/// Key of contained instance version
	public var versionReference: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(instanceReference: FHIRPrimitive<FHIRString>) {
		self.instanceReference = instanceReference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instanceReference: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		versionReference: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(instanceReference: instanceReference)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.versionReference = versionReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case instanceReference; case _instanceReference
		case versionReference; case _versionReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.instanceReference = try FHIRPrimitive<FHIRString>(from: _container, forKey: .instanceReference, auxiliaryKey: ._instanceReference)
		self.versionReference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionReference, auxiliaryKey: ._versionReference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try instanceReference.encode(on: &_container, forKey: .instanceReference, auxiliaryKey: ._instanceReference)
		try versionReference?.encode(on: &_container, forKey: .versionReference, auxiliaryKey: ._versionReference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioInstanceContainedInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return instanceReference == _other.instanceReference
		    && versionReference == _other.versionReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(instanceReference)
		hasher.combine(versionReference)
	}
}

/**
 Snapshot of instance that changes.
 
 Represents the instance as it was at a specific time-point.
 */
open class ExampleScenarioInstanceVersion: BackboneElement {
	
	/// ID or acronym of the version
	public var key: FHIRPrimitive<FHIRString>
	
	/// Label for instance version
	public var title: FHIRPrimitive<FHIRString>
	
	/// Details about version
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Example instance version data
	public var content: Reference?
	
	/// Designated initializer taking all required properties
	public init(key: FHIRPrimitive<FHIRString>, title: FHIRPrimitive<FHIRString>) {
		self.key = key
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		content: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.init(key: key, title: title)
		self.content = content
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case content
		case description_fhir = "description"; case _description_fhir = "_description"
		case key; case _key
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.content = try Reference(from: _container, forKeyIfPresent: .content)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try content?.encode(on: &_container, forKey: .content)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioInstanceVersion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
		    && description_fhir == _other.description_fhir
		    && key == _other.key
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
		hasher.combine(description_fhir)
		hasher.combine(key)
		hasher.combine(title)
	}
}

/**
 Major process within scenario.
 
 A group of operations that represents a significant step within a scenario.
 */
open class ExampleScenarioProcess: BackboneElement {
	
	/// Label for procss
	public var title: FHIRPrimitive<FHIRString>
	
	/// Human-friendly description of the process
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Status before process starts
	public var preConditions: FHIRPrimitive<FHIRString>?
	
	/// Status after successful completion
	public var postConditions: FHIRPrimitive<FHIRString>?
	
	/// Event within of the process
	public var step: [ExampleScenarioProcessStep]?
	
	/// Designated initializer taking all required properties
	public init(title: FHIRPrimitive<FHIRString>) {
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		postConditions: FHIRPrimitive<FHIRString>? = nil,
		preConditions: FHIRPrimitive<FHIRString>? = nil,
		step: [ExampleScenarioProcessStep]? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.init(title: title)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.postConditions = postConditions
		self.preConditions = preConditions
		self.step = step
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case postConditions; case _postConditions
		case preConditions; case _preConditions
		case step
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.postConditions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .postConditions, auxiliaryKey: ._postConditions)
		self.preConditions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preConditions, auxiliaryKey: ._preConditions)
		self.step = try [ExampleScenarioProcessStep](from: _container, forKeyIfPresent: .step)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try postConditions?.encode(on: &_container, forKey: .postConditions, auxiliaryKey: ._postConditions)
		try preConditions?.encode(on: &_container, forKey: .preConditions, auxiliaryKey: ._preConditions)
		try step?.encode(on: &_container, forKey: .step)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioProcess else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && postConditions == _other.postConditions
		    && preConditions == _other.preConditions
		    && step == _other.step
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(postConditions)
		hasher.combine(preConditions)
		hasher.combine(step)
		hasher.combine(title)
	}
}

/**
 Event within of the process.
 
 A significant action that occurs as part of the process.
 */
open class ExampleScenarioProcessStep: BackboneElement {
	
	/// Sequential number of the step
	public var number: FHIRPrimitive<FHIRString>?
	
	/// Step is nested process
	public var process: ExampleScenarioProcess?
	
	/// Step is nested workflow
	public var workflow: FHIRPrimitive<Canonical>?
	
	/// Step is simple action
	public var operation: ExampleScenarioProcessStepOperation?
	
	/// Alternate non-typical step action
	public var alternative: [ExampleScenarioProcessStepAlternative]?
	
	/// Pause in the flow?
	public var pause: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case number; case _number
		case operation
		case pause; case _pause
		case process
		case workflow; case _workflow
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alternative = try [ExampleScenarioProcessStepAlternative](from: _container, forKeyIfPresent: .alternative)
		self.number = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.operation = try ExampleScenarioProcessStepOperation(from: _container, forKeyIfPresent: .operation)
		self.pause = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .pause, auxiliaryKey: ._pause)
		self.process = try ExampleScenarioProcess(from: _container, forKeyIfPresent: .process)
		self.workflow = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .workflow, auxiliaryKey: ._workflow)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alternative?.encode(on: &_container, forKey: .alternative)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try operation?.encode(on: &_container, forKey: .operation)
		try pause?.encode(on: &_container, forKey: .pause, auxiliaryKey: ._pause)
		try process?.encode(on: &_container, forKey: .process)
		try workflow?.encode(on: &_container, forKey: .workflow, auxiliaryKey: ._workflow)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioProcessStep else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alternative == _other.alternative
		    && number == _other.number
		    && operation == _other.operation
		    && pause == _other.pause
		    && process == _other.process
		    && workflow == _other.workflow
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alternative)
		hasher.combine(number)
		hasher.combine(operation)
		hasher.combine(pause)
		hasher.combine(process)
		hasher.combine(workflow)
	}
}

/**
 Alternate non-typical step action.
 
 Indicates an alternative step that can be taken instead of the sub-process, scenario or operation.  E.g. to represent
 non-happy-path/exceptional/atypical circumstances.
 */
open class ExampleScenarioProcessStepAlternative: BackboneElement {
	
	/// Label for alternative
	public var title: FHIRPrimitive<FHIRString>
	
	/// Human-readable description of option
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Alternative action(s)
	public var step: [ExampleScenarioProcessStep]?
	
	/// Designated initializer taking all required properties
	public init(title: FHIRPrimitive<FHIRString>) {
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		step: [ExampleScenarioProcessStep]? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.init(title: title)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.step = step
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case step
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.step = try [ExampleScenarioProcessStep](from: _container, forKeyIfPresent: .step)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try step?.encode(on: &_container, forKey: .step)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioProcessStepAlternative else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && step == _other.step
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(step)
		hasher.combine(title)
	}
}

/**
 Step is simple action.
 
 The step represents a single operation invoked on receiver by sender.
 */
open class ExampleScenarioProcessStepOperation: BackboneElement {
	
	/// Kind of action
	public var type: Coding?
	
	/// Label for step
	public var title: FHIRPrimitive<FHIRString>
	
	/// Who starts the operation
	public var initiator: FHIRPrimitive<FHIRString>?
	
	/// Who receives the operation
	public var receiver: FHIRPrimitive<FHIRString>?
	
	/// Human-friendly description of the operation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Initiator stays active?
	public var initiatorActive: FHIRPrimitive<FHIRBool>?
	
	/// Receiver stays active?
	public var receiverActive: FHIRPrimitive<FHIRBool>?
	
	/// Instance transmitted on invocation
	public var request: ExampleScenarioInstanceContainedInstance?
	
	/// Instance transmitted on invocation response
	public var response: ExampleScenarioInstanceContainedInstance?
	
	/// Designated initializer taking all required properties
	public init(title: FHIRPrimitive<FHIRString>) {
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(title: title)
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
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case initiator; case _initiator
		case initiatorActive; case _initiatorActive
		case receiver; case _receiver
		case receiverActive; case _receiverActive
		case request
		case response
		case title; case _title
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.initiator = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initiator, auxiliaryKey: ._initiator)
		self.initiatorActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initiatorActive, auxiliaryKey: ._initiatorActive)
		self.receiver = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .receiver, auxiliaryKey: ._receiver)
		self.receiverActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .receiverActive, auxiliaryKey: ._receiverActive)
		self.request = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .request)
		self.response = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .response)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try initiator?.encode(on: &_container, forKey: .initiator, auxiliaryKey: ._initiator)
		try initiatorActive?.encode(on: &_container, forKey: .initiatorActive, auxiliaryKey: ._initiatorActive)
		try receiver?.encode(on: &_container, forKey: .receiver, auxiliaryKey: ._receiver)
		try receiverActive?.encode(on: &_container, forKey: .receiverActive, auxiliaryKey: ._receiverActive)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExampleScenarioProcessStepOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && initiator == _other.initiator
		    && initiatorActive == _other.initiatorActive
		    && receiver == _other.receiver
		    && receiverActive == _other.receiverActive
		    && request == _other.request
		    && response == _other.response
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(initiator)
		hasher.combine(initiatorActive)
		hasher.combine(receiver)
		hasher.combine(receiverActive)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(title)
		hasher.combine(type)
	}
}
