//
//  ExampleScenario.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ExampleScenario)
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
 Example of workflow instance.
 */
public struct ExampleScenario: DomainResource {
	
	public static let resourceType: ResourceType = .exampleScenario
	
	/// Actor participating in the resource
	public var actor: [ExampleScenarioActor]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the example scenario
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Each resource and each version that is present in the workflow
	public var instance: [ExampleScenarioInstance]?
	
	/// Intended jurisdiction for example scenario (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this example scenario (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Each major process - a group of operations
	public var process: [ExampleScenarioProcess]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// The purpose of the example, e.g. to illustrate a scenario
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this example scenario. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Canonical identifier for this example scenario, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the example scenario
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Another nested workflow
	public var workflow: [FHIRPrimitive<Canonical>]?
	
	/// Designated initializer
	public init(
		actor: [ExampleScenarioActor]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
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
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		workflow: [FHIRPrimitive<Canonical>]? = nil
	) {
		self.actor = actor
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
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
		self.url = url
		self.useContext = useContext
		self.version = version
		self.workflow = workflow
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actor
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
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
		case url; case _url
		case useContext
		case version; case _version
		case workflow; case _workflow
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
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
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
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.workflow = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .workflow, auxiliaryKey: ._workflow)
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
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
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
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try workflow?.encode(on: &_container, forKey: .workflow, auxiliaryKey: ._workflow)
	}
}

/**
 Actor participating in the resource.
 */
public struct ExampleScenarioActor: BackboneElement {
	
	/// ID or acronym of the actor
	public var actorId: FHIRPrimitive<FHIRString>
	
	/// The description of the actor
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The name of the actor as shown in the page
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The type of actor - person or system.
	public var type: FHIRPrimitive<ExampleScenarioActorType>
	
	/// Designated initializer
	public init(
		actorId: FHIRPrimitive<FHIRString>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<ExampleScenarioActorType>
	) {
		self.actorId = actorId
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actorId; case _actorId
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actorId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .actorId, auxiliaryKey: ._actorId)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<ExampleScenarioActorType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actorId.encode(on: &_container, forKey: .actorId, auxiliaryKey: ._actorId)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Each resource and each version that is present in the workflow.
 */
public struct ExampleScenarioInstance: BackboneElement {
	
	/// Resources contained in the instance
	public var containedInstance: [ExampleScenarioInstanceContainedInstance]?
	
	/// Human-friendly description of the resource instance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A short name for the resource instance
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The id of the resource for referencing
	public var resourceId: FHIRPrimitive<FHIRString>
	
	/// None
	public var resourceType: FHIRPrimitive<ResourceType>
	
	/// A specific version of the resource
	public var version: [ExampleScenarioInstanceVersion]?
	
	/// Designated initializer
	public init(
		containedInstance: [ExampleScenarioInstanceContainedInstance]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		resourceId: FHIRPrimitive<FHIRString>,
		resourceType: FHIRPrimitive<ResourceType>,
		version: [ExampleScenarioInstanceVersion]? = nil
	) {
		self.containedInstance = containedInstance
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.resourceId = resourceId
		self.resourceType = resourceType
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case containedInstance
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case resourceId; case _resourceId
		case resourceType; case _resourceType
		case version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.containedInstance = try [ExampleScenarioInstanceContainedInstance](from: _container, forKeyIfPresent: .containedInstance)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.resourceId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		self.resourceType = try FHIRPrimitive<ResourceType>(from: _container, forKey: .resourceType, auxiliaryKey: ._resourceType)
		self.version = try [ExampleScenarioInstanceVersion](from: _container, forKeyIfPresent: .version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try containedInstance?.encode(on: &_container, forKey: .containedInstance)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try resourceId.encode(on: &_container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		try resourceType.encode(on: &_container, forKey: .resourceType, auxiliaryKey: ._resourceType)
		try version?.encode(on: &_container, forKey: .version)
	}
}

/**
 Resources contained in the instance.
 
 Resources contained in the instance (e.g. the observations contained in a bundle).
 */
public struct ExampleScenarioInstanceContainedInstance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Each resource contained in the instance
	public var resourceId: FHIRPrimitive<FHIRString>
	
	/// A specific version of a resource contained in the instance
	public var versionId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		resourceId: FHIRPrimitive<FHIRString>,
		versionId: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.resourceId = resourceId
		self.versionId = versionId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case resourceId; case _resourceId
		case versionId; case _versionId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.resourceId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		self.versionId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionId, auxiliaryKey: ._versionId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try resourceId.encode(on: &_container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		try versionId?.encode(on: &_container, forKey: .versionId, auxiliaryKey: ._versionId)
	}
}

/**
 A specific version of the resource.
 */
public struct ExampleScenarioInstanceVersion: BackboneElement {
	
	/// The description of the resource version
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The identifier of a specific version of a resource
	public var versionId: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		versionId: FHIRPrimitive<FHIRString>
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.versionId = versionId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case versionId; case _versionId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.versionId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .versionId, auxiliaryKey: ._versionId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try versionId.encode(on: &_container, forKey: .versionId, auxiliaryKey: ._versionId)
	}
}

/**
 Each major process - a group of operations.
 */
public struct ExampleScenarioProcess: BackboneElement {
	
	/// A longer description of the group of operations
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Description of final status after the process ends
	public var postConditions: FHIRPrimitive<FHIRString>?
	
	/// Description of initial status before the process starts
	public var preConditions: FHIRPrimitive<FHIRString>?
	
	/// Each step of the process
	public var step: [ExampleScenarioProcessStep]?
	
	/// The diagram title of the group of operations
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
 Each step of the process.
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
	
	/// Each interaction or action
	public var operation: ExampleScenarioProcessStepOperation?
	
	/// If there is a pause in the flow
	public var pause: FHIRPrimitive<FHIRBool>?
	
	/// Nested process
	public var process: [ExampleScenarioProcess]?
	
	/// Designated initializer
	public init(
		alternative: [ExampleScenarioProcessStepAlternative]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: ExampleScenarioProcessStepOperation? = nil,
		pause: FHIRPrimitive<FHIRBool>? = nil,
		process: [ExampleScenarioProcess]? = nil
	) {
		self.alternative = alternative
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.pause = pause
		self.process = process
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alternative
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case operation
		case pause; case _pause
		case process
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
		self.operation = try ExampleScenarioProcessStepOperation(from: _container, forKeyIfPresent: .operation)
		self.pause = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .pause, auxiliaryKey: ._pause)
		self.process = try [ExampleScenarioProcess](from: _container, forKeyIfPresent: .process)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try alternative?.encode(on: &_container, forKey: .alternative)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation?.encode(on: &_container, forKey: .operation)
		try pause?.encode(on: &_container, forKey: .pause, auxiliaryKey: ._pause)
		try process?.encode(on: &_container, forKey: .process)
	}
}

/**
 Alternate non-typical step action.
 
 Indicates an alternative step that can be taken instead of the operations on the base step in exceptional/atypical
 circumstances.
 */
public struct ExampleScenarioProcessStepAlternative: BackboneElement {
	
	/// A human-readable description of each option
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What happens in each alternative option
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
 Each interaction or action.
 */
public struct ExampleScenarioProcessStepOperation: BackboneElement {
	
	/// A comment to be inserted in the diagram
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Who starts the transaction
	public var initiator: FHIRPrimitive<FHIRString>?
	
	/// Whether the initiator is deactivated right after the transaction
	public var initiatorActive: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The human-friendly name of the interaction
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The sequential number of the interaction
	public var number: FHIRPrimitive<FHIRString>
	
	/// Who receives the transaction
	public var receiver: FHIRPrimitive<FHIRString>?
	
	/// Whether the receiver is deactivated right after the transaction
	public var receiverActive: FHIRPrimitive<FHIRBool>?
	
	/// Each resource instance used by the initiator
	public var request: ExampleScenarioInstanceContainedInstance?
	
	/// Each resource instance used by the responder
	public var response: ExampleScenarioInstanceContainedInstance?
	
	/// The type of operation - CRUD
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initiator: FHIRPrimitive<FHIRString>? = nil,
		initiatorActive: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		number: FHIRPrimitive<FHIRString>,
		receiver: FHIRPrimitive<FHIRString>? = nil,
		receiverActive: FHIRPrimitive<FHIRBool>? = nil,
		request: ExampleScenarioInstanceContainedInstance? = nil,
		response: ExampleScenarioInstanceContainedInstance? = nil,
		type: FHIRPrimitive<FHIRString>? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.initiator = initiator
		self.initiatorActive = initiatorActive
		self.modifierExtension = modifierExtension
		self.name = name
		self.number = number
		self.receiver = receiver
		self.receiverActive = receiverActive
		self.request = request
		self.response = response
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
		case name; case _name
		case number; case _number
		case receiver; case _receiver
		case receiverActive; case _receiverActive
		case request
		case response
		case type; case _type
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.number = try FHIRPrimitive<FHIRString>(from: _container, forKey: .number, auxiliaryKey: ._number)
		self.receiver = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .receiver, auxiliaryKey: ._receiver)
		self.receiverActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .receiverActive, auxiliaryKey: ._receiverActive)
		self.request = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .request)
		self.response = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .response)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
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
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try number.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try receiver?.encode(on: &_container, forKey: .receiver, auxiliaryKey: ._receiver)
		try receiverActive?.encode(on: &_container, forKey: .receiverActive, auxiliaryKey: ._receiverActive)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
