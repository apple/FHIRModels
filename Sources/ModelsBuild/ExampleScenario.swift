//
//  ExampleScenario.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ExampleScenario)
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
 Example of workflow instance.
 
 Interfaces:
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class ExampleScenario: DomainResource {
	
	override open class var resourceType: ResourceType { return .exampleScenario }
	
	/// Canonical identifier for this example scenario, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the example scenario
	public var identifier: [Identifier]?
	
	/// Business version of the example scenario
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this example scenario (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of this example scenario. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for example scenario (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// The purpose of the example, e.g. to illustrate a scenario
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Actor participating in the resource
	public var actor: [ExampleScenarioActor]?
	
	/// Each resource and each version that is present in the workflow
	public var instance: [ExampleScenarioInstance]?
	
	/// Each major process - a group of operations
	public var process: [ExampleScenarioProcess]?
	
	/// Another nested workflow
	public var workflow: [FHIRPrimitive<Canonical>]?
	
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
							workflow: [FHIRPrimitive<Canonical>]? = nil)
	{
		self.init(status: status)
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
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
		self.workflow = workflow
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case contact
		case copyright; case _copyright
		case date; case _date
		case experimental; case _experimental
		case identifier
		case instance
		case jurisdiction
		case name; case _name
		case process
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case url; case _url
		case useContext
		case version; case _version
		case workflow; case _workflow
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try [ExampleScenarioActor](from: _container, forKeyIfPresent: .actor)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instance = try [ExampleScenarioInstance](from: _container, forKeyIfPresent: .instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.process = try [ExampleScenarioProcess](from: _container, forKeyIfPresent: .process)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.workflow = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .workflow, auxiliaryKey: ._workflow)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instance?.encode(on: &_container, forKey: .instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try process?.encode(on: &_container, forKey: .process)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try workflow?.encode(on: &_container, forKey: .workflow, auxiliaryKey: ._workflow)
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
		    && date == _other.date
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && instance == _other.instance
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && process == _other.process
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && workflow == _other.workflow
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(instance)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(process)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(workflow)
	}
}

/**
 Actor participating in the resource.
 */
open class ExampleScenarioActor: BackboneElement {
	
	/// ID or acronym of the actor
	public var actorId: FHIRPrimitive<FHIRString>
	
	/// The type of actor - person or system.
	public var type: FHIRPrimitive<ExampleScenarioActorType>
	
	/// The name of the actor as shown in the page
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The description of the actor
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(actorId: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<ExampleScenarioActorType>) {
		self.actorId = actorId
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actorId: FHIRPrimitive<FHIRString>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<ExampleScenarioActorType>)
	{
		self.init(actorId: actorId, type: type)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actorId; case _actorId
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actorId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .actorId, auxiliaryKey: ._actorId)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<ExampleScenarioActorType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actorId.encode(on: &_container, forKey: .actorId, auxiliaryKey: ._actorId)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		return actorId == _other.actorId
		    && description_fhir == _other.description_fhir
		    && name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actorId)
		hasher.combine(description_fhir)
		hasher.combine(name)
		hasher.combine(type)
	}
}

/**
 Each resource and each version that is present in the workflow.
 */
open class ExampleScenarioInstance: BackboneElement {
	
	/// The id of the resource for referencing
	public var resourceId: FHIRPrimitive<FHIRString>
	
	/// None
	public var resourceType: FHIRPrimitive<ResourceType>
	
	/// A short name for the resource instance
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Human-friendly description of the resource instance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A specific version of the resource
	public var version: [ExampleScenarioInstanceVersion]?
	
	/// Resources contained in the instance
	public var containedInstance: [ExampleScenarioInstanceContainedInstance]?
	
	/// Designated initializer taking all required properties
	public init(resourceId: FHIRPrimitive<FHIRString>, resourceType: FHIRPrimitive<ResourceType>) {
		self.resourceId = resourceId
		self.resourceType = resourceType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							containedInstance: [ExampleScenarioInstanceContainedInstance]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							resourceId: FHIRPrimitive<FHIRString>,
							resourceType: FHIRPrimitive<ResourceType>,
							version: [ExampleScenarioInstanceVersion]? = nil)
	{
		self.init(resourceId: resourceId, resourceType: resourceType)
		self.containedInstance = containedInstance
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case containedInstance
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
		case resourceId; case _resourceId
		case resourceType; case _resourceType
		case version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.containedInstance = try [ExampleScenarioInstanceContainedInstance](from: _container, forKeyIfPresent: .containedInstance)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.resourceId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		self.resourceType = try FHIRPrimitive<ResourceType>(from: _container, forKey: .resourceType, auxiliaryKey: ._resourceType)
		self.version = try [ExampleScenarioInstanceVersion](from: _container, forKeyIfPresent: .version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try containedInstance?.encode(on: &_container, forKey: .containedInstance)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try resourceId.encode(on: &_container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		try resourceType.encode(on: &_container, forKey: .resourceType, auxiliaryKey: ._resourceType)
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
		    && description_fhir == _other.description_fhir
		    && name == _other.name
		    && resourceId == _other.resourceId
		    && resourceType == _other.resourceType
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(containedInstance)
		hasher.combine(description_fhir)
		hasher.combine(name)
		hasher.combine(resourceId)
		hasher.combine(resourceType)
		hasher.combine(version)
	}
}

/**
 Resources contained in the instance.
 
 Resources contained in the instance (e.g. the observations contained in a bundle).
 */
open class ExampleScenarioInstanceContainedInstance: BackboneElement {
	
	/// Each resource contained in the instance
	public var resourceId: FHIRPrimitive<FHIRString>
	
	/// A specific version of a resource contained in the instance
	public var versionId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(resourceId: FHIRPrimitive<FHIRString>) {
		self.resourceId = resourceId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							resourceId: FHIRPrimitive<FHIRString>,
							versionId: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(resourceId: resourceId)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.versionId = versionId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceId; case _resourceId
		case versionId; case _versionId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.resourceId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		self.versionId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionId, auxiliaryKey: ._versionId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try resourceId.encode(on: &_container, forKey: .resourceId, auxiliaryKey: ._resourceId)
		try versionId?.encode(on: &_container, forKey: .versionId, auxiliaryKey: ._versionId)
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
		return resourceId == _other.resourceId
		    && versionId == _other.versionId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(resourceId)
		hasher.combine(versionId)
	}
}

/**
 A specific version of the resource.
 */
open class ExampleScenarioInstanceVersion: BackboneElement {
	
	/// The identifier of a specific version of a resource
	public var versionId: FHIRPrimitive<FHIRString>
	
	/// The description of the resource version
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(description_fhir: FHIRPrimitive<FHIRString>, versionId: FHIRPrimitive<FHIRString>) {
		self.description_fhir = description_fhir
		self.versionId = versionId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							versionId: FHIRPrimitive<FHIRString>)
	{
		self.init(description_fhir: description_fhir, versionId: versionId)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case versionId; case _versionId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.versionId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .versionId, auxiliaryKey: ._versionId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try versionId.encode(on: &_container, forKey: .versionId, auxiliaryKey: ._versionId)
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
		return description_fhir == _other.description_fhir
		    && versionId == _other.versionId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(versionId)
	}
}

/**
 Each major process - a group of operations.
 */
open class ExampleScenarioProcess: BackboneElement {
	
	/// The diagram title of the group of operations
	public var title: FHIRPrimitive<FHIRString>
	
	/// A longer description of the group of operations
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Description of initial status before the process starts
	public var preConditions: FHIRPrimitive<FHIRString>?
	
	/// Description of final status after the process ends
	public var postConditions: FHIRPrimitive<FHIRString>?
	
	/// Each step of the process
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
							title: FHIRPrimitive<FHIRString>)
	{
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
 Each step of the process.
 */
open class ExampleScenarioProcessStep: BackboneElement {
	
	/// Nested process
	public var process: [ExampleScenarioProcess]?
	
	/// If there is a pause in the flow
	public var pause: FHIRPrimitive<FHIRBool>?
	
	/// Each interaction or action
	public var operation: ExampleScenarioProcessStepOperation?
	
	/// Alternate non-typical step action
	public var alternative: [ExampleScenarioProcessStepAlternative]?
	
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
							operation: ExampleScenarioProcessStepOperation? = nil,
							pause: FHIRPrimitive<FHIRBool>? = nil,
							process: [ExampleScenarioProcess]? = nil)
	{
		self.init()
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
		case operation
		case pause; case _pause
		case process
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alternative = try [ExampleScenarioProcessStepAlternative](from: _container, forKeyIfPresent: .alternative)
		self.operation = try ExampleScenarioProcessStepOperation(from: _container, forKeyIfPresent: .operation)
		self.pause = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .pause, auxiliaryKey: ._pause)
		self.process = try [ExampleScenarioProcess](from: _container, forKeyIfPresent: .process)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alternative?.encode(on: &_container, forKey: .alternative)
		try operation?.encode(on: &_container, forKey: .operation)
		try pause?.encode(on: &_container, forKey: .pause, auxiliaryKey: ._pause)
		try process?.encode(on: &_container, forKey: .process)
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
		    && operation == _other.operation
		    && pause == _other.pause
		    && process == _other.process
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alternative)
		hasher.combine(operation)
		hasher.combine(pause)
		hasher.combine(process)
	}
}

/**
 Alternate non-typical step action.
 
 Indicates an alternative step that can be taken instead of the operations on the base step in exceptional/atypical
 circumstances.
 */
open class ExampleScenarioProcessStepAlternative: BackboneElement {
	
	/// Label for alternative
	public var title: FHIRPrimitive<FHIRString>
	
	/// A human-readable description of each option
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// What happens in each alternative option
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
							title: FHIRPrimitive<FHIRString>)
	{
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
 Each interaction or action.
 */
open class ExampleScenarioProcessStepOperation: BackboneElement {
	
	/// The sequential number of the interaction
	public var number: FHIRPrimitive<FHIRString>
	
	/// The type of operation - CRUD
	public var type: FHIRPrimitive<FHIRString>?
	
	/// The human-friendly name of the interaction
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Who starts the transaction
	public var initiator: FHIRPrimitive<FHIRString>?
	
	/// Who receives the transaction
	public var receiver: FHIRPrimitive<FHIRString>?
	
	/// A comment to be inserted in the diagram
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Whether the initiator is deactivated right after the transaction
	public var initiatorActive: FHIRPrimitive<FHIRBool>?
	
	/// Whether the receiver is deactivated right after the transaction
	public var receiverActive: FHIRPrimitive<FHIRBool>?
	
	/// Each resource instance used by the initiator
	public var request: ExampleScenarioInstanceContainedInstance?
	
	/// Each resource instance used by the responder
	public var response: ExampleScenarioInstanceContainedInstance?
	
	/// Designated initializer taking all required properties
	public init(number: FHIRPrimitive<FHIRString>) {
		self.number = number
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
							name: FHIRPrimitive<FHIRString>? = nil,
							number: FHIRPrimitive<FHIRString>,
							receiver: FHIRPrimitive<FHIRString>? = nil,
							receiverActive: FHIRPrimitive<FHIRBool>? = nil,
							request: ExampleScenarioInstanceContainedInstance? = nil,
							response: ExampleScenarioInstanceContainedInstance? = nil,
							type: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(number: number)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.initiator = initiator
		self.initiatorActive = initiatorActive
		self.modifierExtension = modifierExtension
		self.name = name
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
		case name; case _name
		case number; case _number
		case receiver; case _receiver
		case receiverActive; case _receiverActive
		case request
		case response
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.initiator = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .initiator, auxiliaryKey: ._initiator)
		self.initiatorActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initiatorActive, auxiliaryKey: ._initiatorActive)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.number = try FHIRPrimitive<FHIRString>(from: _container, forKey: .number, auxiliaryKey: ._number)
		self.receiver = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .receiver, auxiliaryKey: ._receiver)
		self.receiverActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .receiverActive, auxiliaryKey: ._receiverActive)
		self.request = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .request)
		self.response = try ExampleScenarioInstanceContainedInstance(from: _container, forKeyIfPresent: .response)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try initiator?.encode(on: &_container, forKey: .initiator, auxiliaryKey: ._initiator)
		try initiatorActive?.encode(on: &_container, forKey: .initiatorActive, auxiliaryKey: ._initiatorActive)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try number.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try receiver?.encode(on: &_container, forKey: .receiver, auxiliaryKey: ._receiver)
		try receiverActive?.encode(on: &_container, forKey: .receiverActive, auxiliaryKey: ._receiverActive)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		    && name == _other.name
		    && number == _other.number
		    && receiver == _other.receiver
		    && receiverActive == _other.receiverActive
		    && request == _other.request
		    && response == _other.response
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(initiator)
		hasher.combine(initiatorActive)
		hasher.combine(name)
		hasher.combine(number)
		hasher.combine(receiver)
		hasher.combine(receiverActive)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(type)
	}
}
