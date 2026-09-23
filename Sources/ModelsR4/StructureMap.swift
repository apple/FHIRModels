//
//  StructureMap.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/StructureMap)
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
 A Map of relationships between 2 structures that can be used to transform data.
 */
public struct StructureMap: DomainResource {
	
	public static let resourceType: ResourceType = .structureMap
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the structure map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Named sections for reader convenience
	public var group: [StructureMapGroup]
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the structure map
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Other maps used by this map (canonical URLs)
	public var `import`: [FHIRPrimitive<Canonical>]?
	
	/// Intended jurisdiction for structure map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this structure map (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this structure map is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this structure map. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Structure Definition used by this map
	public var structure: [StructureMapStructure]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this structure map (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this structure map, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the structure map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		group: [StructureMapGroup],
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		`import`: [FHIRPrimitive<Canonical>]? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		structure: [StructureMapStructure]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.`import` = `import`
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.structure = structure
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case `import` = "import"; case _import = "_import"
		case jurisdiction
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case structure
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [StructureMapGroup](from: _container, forKey: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.`import` = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .`import`, auxiliaryKey: ._import)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.structure = try [StructureMapStructure](from: _container, forKeyIfPresent: .structure)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try `import`?.encode(on: &_container, forKey: .`import`, auxiliaryKey: ._import)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try structure?.encode(on: &_container, forKey: .structure)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Named sections for reader convenience.
 
 Organizes the mapping into manageable chunks for human review/ease of maintenance.
 */
public struct StructureMapGroup: BackboneElement {
	
	/// Additional description/explanation for group
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Another group that this group adds rules to
	public var extends: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Named instance provided when invoking the map
	public var input: [StructureMapGroupInput]
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>
	
	/// Transform Rule from source to target
	public var rule: [StructureMapGroupRule]
	
	/// If this is the default rule set to apply for the source type or this combination of types.
	public var typeMode: FHIRPrimitive<StructureMapGroupTypeMode>
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		extends: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		input: [StructureMapGroupInput],
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		rule: [StructureMapGroupRule],
		typeMode: FHIRPrimitive<StructureMapGroupTypeMode>
	) {
		self.documentation = documentation
		self.extends = extends
		self.`extension` = `extension`
		self.id = id
		self.input = input
		self.modifierExtension = modifierExtension
		self.name = name
		self.rule = rule
		self.typeMode = typeMode
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case extends; case _extends
		case `extension` = "extension"
		case id; case _id
		case input
		case modifierExtension
		case name; case _name
		case rule
		case typeMode; case _typeMode
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.extends = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .extends, auxiliaryKey: ._extends)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.input = try [StructureMapGroupInput](from: _container, forKey: .input)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.rule = try [StructureMapGroupRule](from: _container, forKey: .rule)
		self.typeMode = try FHIRPrimitive<StructureMapGroupTypeMode>(from: _container, forKey: .typeMode, auxiliaryKey: ._typeMode)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try extends?.encode(on: &_container, forKey: .extends, auxiliaryKey: ._extends)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try input.encode(on: &_container, forKey: .input)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try rule.encode(on: &_container, forKey: .rule)
		try typeMode.encode(on: &_container, forKey: .typeMode, auxiliaryKey: ._typeMode)
	}
}

/**
 Named instance provided when invoking the map.
 
 A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
 */
public struct StructureMapGroupInput: BackboneElement {
	
	/// Documentation for this instance of data
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Mode for this instance of data.
	public var mode: FHIRPrimitive<StructureMapInputMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name for this instance of data
	public var name: FHIRPrimitive<FHIRString>
	
	/// Type for this instance of data
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<StructureMapInputMode>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		type: FHIRPrimitive<FHIRString>? = nil
	) {
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case name; case _name
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<StructureMapInputMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Transform Rule from source to target.
 */
public struct StructureMapGroupRule: BackboneElement {
	
	/// Which other rules to apply in the context of this rule
	public var dependent: [StructureMapGroupRuleDependent]?
	
	/// Documentation for this instance of data
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of the rule for internal references
	public var name: FHIRPrimitive<FHIRString>
	
	/// Rules contained in this rule
	public var rule: [StructureMapGroupRule]?
	
	/// Source inputs to the mapping
	public var source: [StructureMapGroupRuleSource]
	
	/// Content to create because of this mapping rule
	public var target: [StructureMapGroupRuleTarget]?
	
	/// Designated initializer
	public init(
		dependent: [StructureMapGroupRuleDependent]? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		rule: [StructureMapGroupRule]? = nil,
		source: [StructureMapGroupRuleSource],
		target: [StructureMapGroupRuleTarget]? = nil
	) {
		self.dependent = dependent
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.rule = rule
		self.source = source
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dependent
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case rule
		case source
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dependent = try [StructureMapGroupRuleDependent](from: _container, forKeyIfPresent: .dependent)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.rule = try [StructureMapGroupRule](from: _container, forKeyIfPresent: .rule)
		self.source = try [StructureMapGroupRuleSource](from: _container, forKey: .source)
		self.target = try [StructureMapGroupRuleTarget](from: _container, forKeyIfPresent: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dependent?.encode(on: &_container, forKey: .dependent)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try rule?.encode(on: &_container, forKey: .rule)
		try source.encode(on: &_container, forKey: .source)
		try target?.encode(on: &_container, forKey: .target)
	}
}

/**
 Which other rules to apply in the context of this rule.
 */
public struct StructureMapGroupRuleDependent: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of a rule or group to apply
	public var name: FHIRPrimitive<FHIRString>
	
	/// Variable to pass to the rule or group
	public var variable: [FHIRPrimitive<FHIRString>]
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		variable: [FHIRPrimitive<FHIRString>]
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.variable = variable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case variable; case _variable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.variable = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .variable, auxiliaryKey: ._variable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try variable.encode(on: &_container, forKey: .variable, auxiliaryKey: ._variable)
	}
}

/**
 Source inputs to the mapping.
 */
public struct StructureMapGroupRuleSource: BackboneElement {
	
	/// All possible types for "defaultValue[x]"
	public enum DefaultValueX: Equatable, Hashable, Sendable {
		indirect case address(Address)
		indirect case age(Age)
		indirect case annotation(Annotation)
		indirect case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case codeableConcept(CodeableConcept)
		indirect case coding(Coding)
		indirect case contactDetail(ContactDetail)
		indirect case contactPoint(ContactPoint)
		indirect case contributor(Contributor)
		indirect case count(Count)
		indirect case dataRequirement(DataRequirement)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		indirect case distance(Distance)
		indirect case dosage(Dosage)
		indirect case duration(Duration)
		indirect case expression(Expression)
		indirect case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		indirect case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case meta(Meta)
		indirect case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		indirect case parameterDefinition(ParameterDefinition)
		indirect case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
		indirect case reference(Reference)
		indirect case relatedArtifact(RelatedArtifact)
		indirect case sampledData(SampledData)
		indirect case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		indirect case timing(Timing)
		indirect case triggerDefinition(TriggerDefinition)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
		case url(FHIRPrimitive<FHIRURI>)
		indirect case usageContext(UsageContext)
		case uuid(FHIRPrimitive<FHIRURI>)
	}
	
	/// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing
	public var check: FHIRPrimitive<FHIRString>?
	
	/// FHIRPath expression  - must be true or the rule does not apply
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Type or variable this rule applies to
	public var context: FHIRPrimitive<FHIRString>
	
	/// Default value if no value exists
	/// One of `defaultValue[x]`
	public var defaultValue: DefaultValueX?
	
	/// Optional field for this source
	public var element: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How to handle the list mode for this element.
	public var listMode: FHIRPrimitive<StructureMapSourceListMode>?
	
	/// Message to put in log if source exists (FHIRPath)
	public var logMessage: FHIRPrimitive<FHIRString>?
	
	/// Specified maximum cardinality (number or *)
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Specified minimum cardinality
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Rule only applies if source has this type
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Named context for field, if a field is specified
	public var variable: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		check: FHIRPrimitive<FHIRString>? = nil,
		condition: FHIRPrimitive<FHIRString>? = nil,
		context: FHIRPrimitive<FHIRString>,
		defaultValue: DefaultValueX? = nil,
		element: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		listMode: FHIRPrimitive<StructureMapSourceListMode>? = nil,
		logMessage: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>? = nil,
		min: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<FHIRString>? = nil,
		variable: FHIRPrimitive<FHIRString>? = nil
	) {
		self.check = check
		self.condition = condition
		self.context = context
		self.defaultValue = defaultValue
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.listMode = listMode
		self.logMessage = logMessage
		self.max = max
		self.min = min
		self.modifierExtension = modifierExtension
		self.type = type
		self.variable = variable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case check; case _check
		case condition; case _condition
		case context; case _context
		case defaultValueAddress
		case defaultValueAge
		case defaultValueAnnotation
		case defaultValueAttachment
		case defaultValueBase64Binary; case _defaultValueBase64Binary
		case defaultValueBoolean; case _defaultValueBoolean
		case defaultValueCanonical; case _defaultValueCanonical
		case defaultValueCode; case _defaultValueCode
		case defaultValueCodeableConcept
		case defaultValueCoding
		case defaultValueContactDetail
		case defaultValueContactPoint
		case defaultValueContributor
		case defaultValueCount
		case defaultValueDataRequirement
		case defaultValueDate; case _defaultValueDate
		case defaultValueDateTime; case _defaultValueDateTime
		case defaultValueDecimal; case _defaultValueDecimal
		case defaultValueDistance
		case defaultValueDosage
		case defaultValueDuration
		case defaultValueExpression
		case defaultValueHumanName
		case defaultValueId; case _defaultValueId
		case defaultValueIdentifier
		case defaultValueInstant; case _defaultValueInstant
		case defaultValueInteger; case _defaultValueInteger
		case defaultValueMarkdown; case _defaultValueMarkdown
		case defaultValueMeta
		case defaultValueMoney
		case defaultValueOid; case _defaultValueOid
		case defaultValueParameterDefinition
		case defaultValuePeriod
		case defaultValuePositiveInt; case _defaultValuePositiveInt
		case defaultValueQuantity
		case defaultValueRange
		case defaultValueRatio
		case defaultValueReference
		case defaultValueRelatedArtifact
		case defaultValueSampledData
		case defaultValueSignature
		case defaultValueString; case _defaultValueString
		case defaultValueTime; case _defaultValueTime
		case defaultValueTiming
		case defaultValueTriggerDefinition
		case defaultValueUnsignedInt; case _defaultValueUnsignedInt
		case defaultValueUri; case _defaultValueUri
		case defaultValueUrl; case _defaultValueUrl
		case defaultValueUsageContext
		case defaultValueUuid; case _defaultValueUuid
		case element; case _element
		case `extension` = "extension"
		case id; case _id
		case listMode; case _listMode
		case logMessage; case _logMessage
		case max; case _max
		case min; case _min
		case modifierExtension
		case type; case _type
		case variable; case _variable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.check = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .check, auxiliaryKey: ._check)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try FHIRPrimitive<FHIRString>(from: _container, forKey: .context, auxiliaryKey: ._context)
		self.defaultValue = try Self._decodeDefaultValue(from: _container)
		self.element = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .element, auxiliaryKey: ._element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.listMode = try FHIRPrimitive<StructureMapSourceListMode>(from: _container, forKeyIfPresent: .listMode, auxiliaryKey: ._listMode)
		self.logMessage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .logMessage, auxiliaryKey: ._logMessage)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.variable = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .variable, auxiliaryKey: ._variable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try check?.encode(on: &_container, forKey: .check, auxiliaryKey: ._check)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		if let _enum = defaultValue {
		switch _enum {
		case .address(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueAddress)
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueAge)
		case .annotation(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueAnnotation)
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueAttachment)
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean)
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueCanonical, auxiliaryKey: ._defaultValueCanonical)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueCode, auxiliaryKey: ._defaultValueCode)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueCodeableConcept)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueCoding)
		case .contactDetail(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueContactDetail)
		case .contactPoint(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueContactPoint)
		case .contributor(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueContributor)
		case .count(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueCount)
		case .dataRequirement(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDataRequirement)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDate, auxiliaryKey: ._defaultValueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDateTime, auxiliaryKey: ._defaultValueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal)
		case .distance(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDistance)
		case .dosage(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDosage)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueDuration)
		case .expression(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueExpression)
		case .humanName(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueHumanName)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueId, auxiliaryKey: ._defaultValueId)
		case .identifier(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueIdentifier)
		case .instant(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown)
		case .meta(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueMeta)
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueMoney)
		case .oid(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueOid, auxiliaryKey: ._defaultValueOid)
		case .parameterDefinition(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueParameterDefinition)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .defaultValuePeriod)
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueRatio)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueReference)
		case .relatedArtifact(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueRelatedArtifact)
		case .sampledData(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueSampledData)
		case .signature(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueSignature)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueString, auxiliaryKey: ._defaultValueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueTime, auxiliaryKey: ._defaultValueTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueTiming)
		case .triggerDefinition(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueTriggerDefinition)
		case .unsignedInt(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueUri, auxiliaryKey: ._defaultValueUri)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueUrl, auxiliaryKey: ._defaultValueUrl)
		case .usageContext(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueUsageContext)
		case .uuid(let _value):
			try _value.encode(on: &_container, forKey: .defaultValueUuid, auxiliaryKey: ._defaultValueUuid)
		}
		}
		try element?.encode(on: &_container, forKey: .element, auxiliaryKey: ._element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try listMode?.encode(on: &_container, forKey: .listMode, auxiliaryKey: ._listMode)
		try logMessage?.encode(on: &_container, forKey: .logMessage, auxiliaryKey: ._logMessage)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try variable?.encode(on: &_container, forKey: .variable, auxiliaryKey: ._variable)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDefaultValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DefaultValueX? {
		var _t_defaultValue: DefaultValueX? = nil
		if let defaultValueAddress = try Address(from: _container, forKeyIfPresent: .defaultValueAddress) {
			_t_defaultValue = .address(defaultValueAddress)
		}
		if let defaultValueAge = try Age(from: _container, forKeyIfPresent: .defaultValueAge) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAge, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .age(defaultValueAge)
		}
		if let defaultValueAnnotation = try Annotation(from: _container, forKeyIfPresent: .defaultValueAnnotation) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAnnotation, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .annotation(defaultValueAnnotation)
		}
		if let defaultValueAttachment = try Attachment(from: _container, forKeyIfPresent: .defaultValueAttachment) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAttachment, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .attachment(defaultValueAttachment)
		}
		if let defaultValueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueBase64Binary, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .base64Binary(defaultValueBase64Binary)
		}
		if let defaultValueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueBoolean, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .boolean(defaultValueBoolean)
		}
		if let defaultValueCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .defaultValueCanonical, auxiliaryKey: ._defaultValueCanonical) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCanonical, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .canonical(defaultValueCanonical)
		}
		if let defaultValueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueCode, auxiliaryKey: ._defaultValueCode) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCode, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .code(defaultValueCode)
		}
		if let defaultValueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .defaultValueCodeableConcept) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .codeableConcept(defaultValueCodeableConcept)
		}
		if let defaultValueCoding = try Coding(from: _container, forKeyIfPresent: .defaultValueCoding) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCoding, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .coding(defaultValueCoding)
		}
		if let defaultValueContactDetail = try ContactDetail(from: _container, forKeyIfPresent: .defaultValueContactDetail) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueContactDetail, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .contactDetail(defaultValueContactDetail)
		}
		if let defaultValueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .defaultValueContactPoint) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueContactPoint, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .contactPoint(defaultValueContactPoint)
		}
		if let defaultValueContributor = try Contributor(from: _container, forKeyIfPresent: .defaultValueContributor) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueContributor, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .contributor(defaultValueContributor)
		}
		if let defaultValueCount = try Count(from: _container, forKeyIfPresent: .defaultValueCount) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCount, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .count(defaultValueCount)
		}
		if let defaultValueDataRequirement = try DataRequirement(from: _container, forKeyIfPresent: .defaultValueDataRequirement) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDataRequirement, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .dataRequirement(defaultValueDataRequirement)
		}
		if let defaultValueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .defaultValueDate, auxiliaryKey: ._defaultValueDate) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDate, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .date(defaultValueDate)
		}
		if let defaultValueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .defaultValueDateTime, auxiliaryKey: ._defaultValueDateTime) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDateTime, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .dateTime(defaultValueDateTime)
		}
		if let defaultValueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDecimal, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .decimal(defaultValueDecimal)
		}
		if let defaultValueDistance = try Distance(from: _container, forKeyIfPresent: .defaultValueDistance) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDistance, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .distance(defaultValueDistance)
		}
		if let defaultValueDosage = try Dosage(from: _container, forKeyIfPresent: .defaultValueDosage) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDosage, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .dosage(defaultValueDosage)
		}
		if let defaultValueDuration = try Duration(from: _container, forKeyIfPresent: .defaultValueDuration) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDuration, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .duration(defaultValueDuration)
		}
		if let defaultValueExpression = try Expression(from: _container, forKeyIfPresent: .defaultValueExpression) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueExpression, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .expression(defaultValueExpression)
		}
		if let defaultValueHumanName = try HumanName(from: _container, forKeyIfPresent: .defaultValueHumanName) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueHumanName, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .humanName(defaultValueHumanName)
		}
		if let defaultValueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueId, auxiliaryKey: ._defaultValueId) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueId, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .id(defaultValueId)
		}
		if let defaultValueIdentifier = try Identifier(from: _container, forKeyIfPresent: .defaultValueIdentifier) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueIdentifier, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .identifier(defaultValueIdentifier)
		}
		if let defaultValueInstant = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueInstant, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .instant(defaultValueInstant)
		}
		if let defaultValueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueInteger, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .integer(defaultValueInteger)
		}
		if let defaultValueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMarkdown, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .markdown(defaultValueMarkdown)
		}
		if let defaultValueMeta = try Meta(from: _container, forKeyIfPresent: .defaultValueMeta) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMeta, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .meta(defaultValueMeta)
		}
		if let defaultValueMoney = try Money(from: _container, forKeyIfPresent: .defaultValueMoney) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMoney, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .money(defaultValueMoney)
		}
		if let defaultValueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueOid, auxiliaryKey: ._defaultValueOid) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueOid, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .oid(defaultValueOid)
		}
		if let defaultValueParameterDefinition = try ParameterDefinition(from: _container, forKeyIfPresent: .defaultValueParameterDefinition) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueParameterDefinition, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .parameterDefinition(defaultValueParameterDefinition)
		}
		if let defaultValuePeriod = try Period(from: _container, forKeyIfPresent: .defaultValuePeriod) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePeriod, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .period(defaultValuePeriod)
		}
		if let defaultValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .positiveInt(defaultValuePositiveInt)
		}
		if let defaultValueQuantity = try Quantity(from: _container, forKeyIfPresent: .defaultValueQuantity) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueQuantity, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .quantity(defaultValueQuantity)
		}
		if let defaultValueRange = try Range(from: _container, forKeyIfPresent: .defaultValueRange) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueRange, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .range(defaultValueRange)
		}
		if let defaultValueRatio = try Ratio(from: _container, forKeyIfPresent: .defaultValueRatio) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueRatio, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .ratio(defaultValueRatio)
		}
		if let defaultValueReference = try Reference(from: _container, forKeyIfPresent: .defaultValueReference) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueReference, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .reference(defaultValueReference)
		}
		if let defaultValueRelatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .defaultValueRelatedArtifact) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueRelatedArtifact, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .relatedArtifact(defaultValueRelatedArtifact)
		}
		if let defaultValueSampledData = try SampledData(from: _container, forKeyIfPresent: .defaultValueSampledData) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueSampledData, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .sampledData(defaultValueSampledData)
		}
		if let defaultValueSignature = try Signature(from: _container, forKeyIfPresent: .defaultValueSignature) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueSignature, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .signature(defaultValueSignature)
		}
		if let defaultValueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueString, auxiliaryKey: ._defaultValueString) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueString, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .string(defaultValueString)
		}
		if let defaultValueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .defaultValueTime, auxiliaryKey: ._defaultValueTime) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTime, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .time(defaultValueTime)
		}
		if let defaultValueTiming = try Timing(from: _container, forKeyIfPresent: .defaultValueTiming) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTiming, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .timing(defaultValueTiming)
		}
		if let defaultValueTriggerDefinition = try TriggerDefinition(from: _container, forKeyIfPresent: .defaultValueTriggerDefinition) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTriggerDefinition, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .triggerDefinition(defaultValueTriggerDefinition)
		}
		if let defaultValueUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUnsignedInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .unsignedInt(defaultValueUnsignedInt)
		}
		if let defaultValueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueUri, auxiliaryKey: ._defaultValueUri) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUri, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .uri(defaultValueUri)
		}
		if let defaultValueUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueUrl, auxiliaryKey: ._defaultValueUrl) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUrl, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .url(defaultValueUrl)
		}
		if let defaultValueUsageContext = try UsageContext(from: _container, forKeyIfPresent: .defaultValueUsageContext) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUsageContext, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .usageContext(defaultValueUsageContext)
		}
		if let defaultValueUuid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueUuid, auxiliaryKey: ._defaultValueUuid) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueUuid, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .uuid(defaultValueUuid)
		}
		return _t_defaultValue
	}
}

/**
 Content to create because of this mapping rule.
 */
public struct StructureMapGroupRuleTarget: BackboneElement {
	
	/// Type or variable this rule applies to
	public var context: FHIRPrimitive<FHIRString>?
	
	/// How to interpret the context.
	public var contextType: FHIRPrimitive<StructureMapContextType>?
	
	/// Field to create in the context
	public var element: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If field is a list, how to manage the list.
	public var listMode: [FHIRPrimitive<StructureMapTargetListMode>]?
	
	/// Internal rule reference for shared list items
	public var listRuleId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Parameters to the transform
	public var parameter: [StructureMapGroupRuleTargetParameter]?
	
	/// How the data is copied / created.
	public var transform: FHIRPrimitive<StructureMapTransform>?
	
	/// Named context for field, if desired, and a field is specified
	public var variable: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		context: FHIRPrimitive<FHIRString>? = nil,
		contextType: FHIRPrimitive<StructureMapContextType>? = nil,
		element: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		listMode: [FHIRPrimitive<StructureMapTargetListMode>]? = nil,
		listRuleId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		parameter: [StructureMapGroupRuleTargetParameter]? = nil,
		transform: FHIRPrimitive<StructureMapTransform>? = nil,
		variable: FHIRPrimitive<FHIRString>? = nil
	) {
		self.context = context
		self.contextType = contextType
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.listMode = listMode
		self.listRuleId = listRuleId
		self.modifierExtension = modifierExtension
		self.parameter = parameter
		self.transform = transform
		self.variable = variable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case context; case _context
		case contextType; case _contextType
		case element; case _element
		case `extension` = "extension"
		case id; case _id
		case listMode; case _listMode
		case listRuleId; case _listRuleId
		case modifierExtension
		case parameter
		case transform; case _transform
		case variable; case _variable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.context = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .context, auxiliaryKey: ._context)
		self.contextType = try FHIRPrimitive<StructureMapContextType>(from: _container, forKeyIfPresent: .contextType, auxiliaryKey: ._contextType)
		self.element = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .element, auxiliaryKey: ._element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.listMode = try [FHIRPrimitive<StructureMapTargetListMode>](from: _container, forKeyIfPresent: .listMode, auxiliaryKey: ._listMode)
		self.listRuleId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .listRuleId, auxiliaryKey: ._listRuleId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parameter = try [StructureMapGroupRuleTargetParameter](from: _container, forKeyIfPresent: .parameter)
		self.transform = try FHIRPrimitive<StructureMapTransform>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.variable = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .variable, auxiliaryKey: ._variable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try context?.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		try contextType?.encode(on: &_container, forKey: .contextType, auxiliaryKey: ._contextType)
		try element?.encode(on: &_container, forKey: .element, auxiliaryKey: ._element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try listMode?.encode(on: &_container, forKey: .listMode, auxiliaryKey: ._listMode)
		try listRuleId?.encode(on: &_container, forKey: .listRuleId, auxiliaryKey: ._listRuleId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try transform?.encode(on: &_container, forKey: .transform, auxiliaryKey: ._transform)
		try variable?.encode(on: &_container, forKey: .variable, auxiliaryKey: ._variable)
	}
}

/**
 Parameters to the transform.
 */
public struct StructureMapGroupRuleTargetParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case id(FHIRPrimitive<FHIRString>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Parameter value - variable or literal
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueDecimal; case _valueDecimal
		case valueId; case _valueId
		case valueInteger; case _valueInteger
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Structure Definition used by this map.
 
 A structure definition used by this map. The structure definition may describe instances that are converted, or the
 instances that are produced.
 */
public struct StructureMapStructure: BackboneElement {
	
	/// Name for type in this map
	public var alias: FHIRPrimitive<FHIRString>?
	
	/// Documentation on use of structure
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How the referenced structure is used in this mapping.
	public var mode: FHIRPrimitive<StructureMapModelMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Canonical reference to structure definition
	public var url: FHIRPrimitive<Canonical>
	
	/// Designated initializer
	public init(
		alias: FHIRPrimitive<FHIRString>? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<StructureMapModelMode>,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<Canonical>
	) {
		self.alias = alias
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alias; case _alias
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.alias = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<StructureMapModelMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.url = try FHIRPrimitive<Canonical>(from: _container, forKey: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}
