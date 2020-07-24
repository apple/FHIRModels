//
//  StructureMap.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/StructureMap)
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
 A Map of relationships between 2 structures that can be used to transform data.
 */
open class StructureMap: DomainResource {
	
	override open class var resourceType: ResourceType { return .structureMap }
	
	/// Logical URI to reference this structure map (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Additional identifier for the structure map
	public var identifier: [Identifier]?
	
	/// Business version of the structure map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this structure map (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this structure map (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this structure map. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the structure map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for structure map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this structure map is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Structure Definition used by this map
	public var structure: [StructureMapStructure]?
	
	/// Other maps used by this map (canonical URLs)
	public var `import`: [FHIRPrimitive<FHIRURI>]?
	
	/// Named sections for reader convenience
	public var group: [StructureMapGroup]
	
	/// Designated initializer taking all required properties
	public init(group: [StructureMapGroup], name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.group = group
		self.name = name
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							`import`: [FHIRPrimitive<FHIRURI>]? = nil,
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(group: group, name: name, status: status, url: url)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.`import` = `import`
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.purpose = purpose
		self.structure = structure
		self.text = text
		self.title = title
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case group
		case identifier
		case `import` = "import"; case _import = "_import"
		case jurisdiction
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case structure
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.group = try [StructureMapGroup](from: _container, forKey: .group)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.`import` = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .`import`, auxiliaryKey: ._import)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.structure = try [StructureMapStructure](from: _container, forKeyIfPresent: .structure)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try group.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try `import`?.encode(on: &_container, forKey: .`import`, auxiliaryKey: ._import)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try structure?.encode(on: &_container, forKey: .structure)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMap else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && group == _other.group
		    && identifier == _other.identifier
		    && `import` == _other.`import`
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && structure == _other.structure
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(`import`)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(structure)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Named sections for reader convenience.
 
 Organizes the mapping into managable chunks for human review/ease of maintenance.
 */
open class StructureMapGroup: BackboneElement {
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>
	
	/// Another group that this group adds rules to
	public var extends: FHIRPrimitive<FHIRString>?
	
	/// If this is the default rule set to apply for thie source type, or this combination of types.
	public var typeMode: FHIRPrimitive<StructureMapGroupTypeMode>
	
	/// Additional description/explaination for group
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Named instance provided when invoking the map
	public var input: [StructureMapGroupInput]
	
	/// Transform Rule from source to target
	public var rule: [StructureMapGroupRule]
	
	/// Designated initializer taking all required properties
	public init(input: [StructureMapGroupInput], name: FHIRPrimitive<FHIRString>, rule: [StructureMapGroupRule], typeMode: FHIRPrimitive<StructureMapGroupTypeMode>) {
		self.input = input
		self.name = name
		self.rule = rule
		self.typeMode = typeMode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							extends: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							input: [StructureMapGroupInput],
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							rule: [StructureMapGroupRule],
							typeMode: FHIRPrimitive<StructureMapGroupTypeMode>)
	{
		self.init(input: input, name: name, rule: rule, typeMode: typeMode)
		self.documentation = documentation
		self.extends = extends
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case extends; case _extends
		case input
		case name; case _name
		case rule
		case typeMode; case _typeMode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.extends = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .extends, auxiliaryKey: ._extends)
		self.input = try [StructureMapGroupInput](from: _container, forKey: .input)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.rule = try [StructureMapGroupRule](from: _container, forKey: .rule)
		self.typeMode = try FHIRPrimitive<StructureMapGroupTypeMode>(from: _container, forKey: .typeMode, auxiliaryKey: ._typeMode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try extends?.encode(on: &_container, forKey: .extends, auxiliaryKey: ._extends)
		try input.encode(on: &_container, forKey: .input)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try rule.encode(on: &_container, forKey: .rule)
		try typeMode.encode(on: &_container, forKey: .typeMode, auxiliaryKey: ._typeMode)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && extends == _other.extends
		    && input == _other.input
		    && name == _other.name
		    && rule == _other.rule
		    && typeMode == _other.typeMode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(extends)
		hasher.combine(input)
		hasher.combine(name)
		hasher.combine(rule)
		hasher.combine(typeMode)
	}
}

/**
 Named instance provided when invoking the map.
 
 A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
 */
open class StructureMapGroupInput: BackboneElement {
	
	/// Name for this instance of data
	public var name: FHIRPrimitive<FHIRString>
	
	/// Type for this instance of data
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Mode for this instance of data.
	public var mode: FHIRPrimitive<StructureMapInputMode>
	
	/// Documentation for this instance of data
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<StructureMapInputMode>, name: FHIRPrimitive<FHIRString>) {
		self.mode = mode
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<StructureMapInputMode>,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							type: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(mode: mode, name: name)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case mode; case _mode
		case name; case _name
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.mode = try FHIRPrimitive<StructureMapInputMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroupInput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && mode == _other.mode
		    && name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(mode)
		hasher.combine(name)
		hasher.combine(type)
	}
}

/**
 Transform Rule from source to target.
 */
open class StructureMapGroupRule: BackboneElement {
	
	/// Name of the rule for internal references
	public var name: FHIRPrimitive<FHIRString>
	
	/// Source inputs to the mapping
	public var source: [StructureMapGroupRuleSource]
	
	/// Content to create because of this mapping rule
	public var target: [StructureMapGroupRuleTarget]?
	
	/// Rules contained in this rule
	public var rule: [StructureMapGroupRule]?
	
	/// Which other rules to apply in the context of this rule
	public var dependent: [StructureMapGroupRuleDependent]?
	
	/// Documentation for this instance of data
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, source: [StructureMapGroupRuleSource]) {
		self.name = name
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dependent: [StructureMapGroupRuleDependent]? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							rule: [StructureMapGroupRule]? = nil,
							source: [StructureMapGroupRuleSource],
							target: [StructureMapGroupRuleTarget]? = nil)
	{
		self.init(name: name, source: source)
		self.dependent = dependent
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rule = rule
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dependent
		case documentation; case _documentation
		case name; case _name
		case rule
		case source
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dependent = try [StructureMapGroupRuleDependent](from: _container, forKeyIfPresent: .dependent)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.rule = try [StructureMapGroupRule](from: _container, forKeyIfPresent: .rule)
		self.source = try [StructureMapGroupRuleSource](from: _container, forKey: .source)
		self.target = try [StructureMapGroupRuleTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dependent?.encode(on: &_container, forKey: .dependent)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try rule?.encode(on: &_container, forKey: .rule)
		try source.encode(on: &_container, forKey: .source)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroupRule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dependent == _other.dependent
		    && documentation == _other.documentation
		    && name == _other.name
		    && rule == _other.rule
		    && source == _other.source
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dependent)
		hasher.combine(documentation)
		hasher.combine(name)
		hasher.combine(rule)
		hasher.combine(source)
		hasher.combine(target)
	}
}

/**
 Which other rules to apply in the context of this rule.
 */
open class StructureMapGroupRuleDependent: BackboneElement {
	
	/// Name of a rule or group to apply
	public var name: FHIRPrimitive<FHIRString>
	
	/// Variable to pass to the rule or group
	public var variable: [FHIRPrimitive<FHIRString>]
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, variable: [FHIRPrimitive<FHIRString>]) {
		self.name = name
		self.variable = variable
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							variable: [FHIRPrimitive<FHIRString>])
	{
		self.init(name: name, variable: variable)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case variable; case _variable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.variable = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .variable, auxiliaryKey: ._variable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try variable.encode(on: &_container, forKey: .variable, auxiliaryKey: ._variable)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroupRuleDependent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && variable == _other.variable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(variable)
	}
}

/**
 Source inputs to the mapping.
 */
open class StructureMapGroupRuleSource: BackboneElement {
	
	/// All possible types for "defaultValue[x]"
	public enum DefaultValueX: Hashable {
		case address(Address)
		case age(Age)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case count(Count)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case distance(Distance)
		case duration(Duration)
		case humanName(HumanName)
		case id(FHIRPrimitive<FHIRString>)
		case identifier(Identifier)
		case instant(FHIRPrimitive<Instant>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case meta(Meta)
		case money(Money)
		case oid(FHIRPrimitive<FHIRURI>)
		case period(Period)
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case timing(Timing)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Type or variable this rule applies to
	public var context: FHIRPrimitive<FHIRString>
	
	/// Specified minimum cardinality
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Specified maximum cardinality (number or *)
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Rule only applies if source has this type
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Default value if no value exists
	/// One of `defaultValue[x]`
	public var defaultValue: DefaultValueX?
	
	/// Optional field for this source
	public var element: FHIRPrimitive<FHIRString>?
	
	/// How to handle the list mode for this element.
	public var listMode: FHIRPrimitive<StructureMapSourceListMode>?
	
	/// Named context for field, if a field is specified
	public var variable: FHIRPrimitive<FHIRString>?
	
	/// FHIRPath expression  - must be true or the rule does not apply
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing
	public var check: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(context: FHIRPrimitive<FHIRString>) {
		self.context = context
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							check: FHIRPrimitive<FHIRString>? = nil,
							condition: FHIRPrimitive<FHIRString>? = nil,
							context: FHIRPrimitive<FHIRString>,
							defaultValue: DefaultValueX? = nil,
							element: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							listMode: FHIRPrimitive<StructureMapSourceListMode>? = nil,
							max: FHIRPrimitive<FHIRString>? = nil,
							min: FHIRPrimitive<FHIRInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<FHIRString>? = nil,
							variable: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(context: context)
		self.check = check
		self.condition = condition
		self.defaultValue = defaultValue
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.listMode = listMode
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
		case defaultValueCode; case _defaultValueCode
		case defaultValueCodeableConcept
		case defaultValueCoding
		case defaultValueContactPoint
		case defaultValueCount
		case defaultValueDate; case _defaultValueDate
		case defaultValueDateTime; case _defaultValueDateTime
		case defaultValueDecimal; case _defaultValueDecimal
		case defaultValueDistance
		case defaultValueDuration
		case defaultValueHumanName
		case defaultValueId; case _defaultValueId
		case defaultValueIdentifier
		case defaultValueInstant; case _defaultValueInstant
		case defaultValueInteger; case _defaultValueInteger
		case defaultValueMarkdown; case _defaultValueMarkdown
		case defaultValueMeta
		case defaultValueMoney
		case defaultValueOid; case _defaultValueOid
		case defaultValuePeriod
		case defaultValuePositiveInt; case _defaultValuePositiveInt
		case defaultValueQuantity
		case defaultValueRange
		case defaultValueRatio
		case defaultValueReference
		case defaultValueSampledData
		case defaultValueSignature
		case defaultValueString; case _defaultValueString
		case defaultValueTime; case _defaultValueTime
		case defaultValueTiming
		case defaultValueUnsignedInt; case _defaultValueUnsignedInt
		case defaultValueUri; case _defaultValueUri
		case element; case _element
		case listMode; case _listMode
		case max; case _max
		case min; case _min
		case type; case _type
		case variable; case _variable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.check = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .check, auxiliaryKey: ._check)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try FHIRPrimitive<FHIRString>(from: _container, forKey: .context, auxiliaryKey: ._context)
		var _t_defaultValue: DefaultValueX? = nil
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
		if let defaultValueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueCode, auxiliaryKey: ._defaultValueCode) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCode, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .code(defaultValueCode)
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
		if let defaultValueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValueId, auxiliaryKey: ._defaultValueId) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueId, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .id(defaultValueId)
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
		if let defaultValueOid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .defaultValueOid, auxiliaryKey: ._defaultValueOid) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueOid, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .oid(defaultValueOid)
		}
		if let defaultValuePositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePositiveInt, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .positiveInt(defaultValuePositiveInt)
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
		if let defaultValueAddress = try Address(from: _container, forKeyIfPresent: .defaultValueAddress) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueAddress, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
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
		if let defaultValueContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .defaultValueContactPoint) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueContactPoint, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .contactPoint(defaultValueContactPoint)
		}
		if let defaultValueCount = try Count(from: _container, forKeyIfPresent: .defaultValueCount) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueCount, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .count(defaultValueCount)
		}
		if let defaultValueDistance = try Distance(from: _container, forKeyIfPresent: .defaultValueDistance) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDistance, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .distance(defaultValueDistance)
		}
		if let defaultValueDuration = try Duration(from: _container, forKeyIfPresent: .defaultValueDuration) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueDuration, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .duration(defaultValueDuration)
		}
		if let defaultValueHumanName = try HumanName(from: _container, forKeyIfPresent: .defaultValueHumanName) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueHumanName, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .humanName(defaultValueHumanName)
		}
		if let defaultValueIdentifier = try Identifier(from: _container, forKeyIfPresent: .defaultValueIdentifier) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueIdentifier, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .identifier(defaultValueIdentifier)
		}
		if let defaultValueMoney = try Money(from: _container, forKeyIfPresent: .defaultValueMoney) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMoney, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .money(defaultValueMoney)
		}
		if let defaultValuePeriod = try Period(from: _container, forKeyIfPresent: .defaultValuePeriod) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValuePeriod, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .period(defaultValuePeriod)
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
		if let defaultValueTiming = try Timing(from: _container, forKeyIfPresent: .defaultValueTiming) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueTiming, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .timing(defaultValueTiming)
		}
		if let defaultValueMeta = try Meta(from: _container, forKeyIfPresent: .defaultValueMeta) {
			if _t_defaultValue != nil {
				throw DecodingError.dataCorruptedError(forKey: .defaultValueMeta, in: _container, debugDescription: "More than one value provided for \"defaultValue\"")
			}
			_t_defaultValue = .meta(defaultValueMeta)
		}
		self.defaultValue = _t_defaultValue
		self.element = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .element, auxiliaryKey: ._element)
		self.listMode = try FHIRPrimitive<StructureMapSourceListMode>(from: _container, forKeyIfPresent: .listMode, auxiliaryKey: ._listMode)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.variable = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .variable, auxiliaryKey: ._variable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try check?.encode(on: &_container, forKey: .check, auxiliaryKey: ._check)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		if let _enum = defaultValue {
			switch _enum {
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueBase64Binary, auxiliaryKey: ._defaultValueBase64Binary)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueBoolean, auxiliaryKey: ._defaultValueBoolean)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCode, auxiliaryKey: ._defaultValueCode)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDate, auxiliaryKey: ._defaultValueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDateTime, auxiliaryKey: ._defaultValueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDecimal, auxiliaryKey: ._defaultValueDecimal)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueId, auxiliaryKey: ._defaultValueId)
			case .instant(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueInstant, auxiliaryKey: ._defaultValueInstant)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueInteger, auxiliaryKey: ._defaultValueInteger)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMarkdown, auxiliaryKey: ._defaultValueMarkdown)
			case .oid(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueOid, auxiliaryKey: ._defaultValueOid)
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .defaultValuePositiveInt, auxiliaryKey: ._defaultValuePositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueString, auxiliaryKey: ._defaultValueString)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueTime, auxiliaryKey: ._defaultValueTime)
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueUnsignedInt, auxiliaryKey: ._defaultValueUnsignedInt)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueUri, auxiliaryKey: ._defaultValueUri)
			case .address(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAddress)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAge)
			case .annotation(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAnnotation)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueAttachment)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCodeableConcept)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCoding)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueContactPoint)
			case .count(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueCount)
			case .distance(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDistance)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueDuration)
			case .humanName(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueHumanName)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueIdentifier)
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMoney)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .defaultValuePeriod)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueRatio)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueReference)
			case .sampledData(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueSampledData)
			case .signature(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueSignature)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueTiming)
			case .meta(let _value):
				try _value.encode(on: &_container, forKey: .defaultValueMeta)
			}
		}
		try element?.encode(on: &_container, forKey: .element, auxiliaryKey: ._element)
		try listMode?.encode(on: &_container, forKey: .listMode, auxiliaryKey: ._listMode)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try variable?.encode(on: &_container, forKey: .variable, auxiliaryKey: ._variable)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroupRuleSource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return check == _other.check
		    && condition == _other.condition
		    && context == _other.context
		    && defaultValue == _other.defaultValue
		    && element == _other.element
		    && listMode == _other.listMode
		    && max == _other.max
		    && min == _other.min
		    && type == _other.type
		    && variable == _other.variable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(check)
		hasher.combine(condition)
		hasher.combine(context)
		hasher.combine(defaultValue)
		hasher.combine(element)
		hasher.combine(listMode)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(type)
		hasher.combine(variable)
	}
}

/**
 Content to create because of this mapping rule.
 */
open class StructureMapGroupRuleTarget: BackboneElement {
	
	/// Type or variable this rule applies to
	public var context: FHIRPrimitive<FHIRString>?
	
	/// How to interpret the context.
	public var contextType: FHIRPrimitive<StructureMapContextType>?
	
	/// Field to create in the context
	public var element: FHIRPrimitive<FHIRString>?
	
	/// Named context for field, if desired, and a field is specified
	public var variable: FHIRPrimitive<FHIRString>?
	
	/// If field is a list, how to manage the list.
	public var listMode: [FHIRPrimitive<StructureMapTargetListMode>]?
	
	/// Internal rule reference for shared list items
	public var listRuleId: FHIRPrimitive<FHIRString>?
	
	/// How the data is copied / created.
	public var transform: FHIRPrimitive<StructureMapTransform>?
	
	/// Parameters to the transform
	public var parameter: [StructureMapGroupRuleTargetParameter]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							variable: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case listMode; case _listMode
		case listRuleId; case _listRuleId
		case parameter
		case transform; case _transform
		case variable; case _variable
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.context = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .context, auxiliaryKey: ._context)
		self.contextType = try FHIRPrimitive<StructureMapContextType>(from: _container, forKeyIfPresent: .contextType, auxiliaryKey: ._contextType)
		self.element = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .element, auxiliaryKey: ._element)
		self.listMode = try [FHIRPrimitive<StructureMapTargetListMode>](from: _container, forKeyIfPresent: .listMode, auxiliaryKey: ._listMode)
		self.listRuleId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .listRuleId, auxiliaryKey: ._listRuleId)
		self.parameter = try [StructureMapGroupRuleTargetParameter](from: _container, forKeyIfPresent: .parameter)
		self.transform = try FHIRPrimitive<StructureMapTransform>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.variable = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .variable, auxiliaryKey: ._variable)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try context?.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		try contextType?.encode(on: &_container, forKey: .contextType, auxiliaryKey: ._contextType)
		try element?.encode(on: &_container, forKey: .element, auxiliaryKey: ._element)
		try listMode?.encode(on: &_container, forKey: .listMode, auxiliaryKey: ._listMode)
		try listRuleId?.encode(on: &_container, forKey: .listRuleId, auxiliaryKey: ._listRuleId)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try transform?.encode(on: &_container, forKey: .transform, auxiliaryKey: ._transform)
		try variable?.encode(on: &_container, forKey: .variable, auxiliaryKey: ._variable)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroupRuleTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return context == _other.context
		    && contextType == _other.contextType
		    && element == _other.element
		    && listMode == _other.listMode
		    && listRuleId == _other.listRuleId
		    && parameter == _other.parameter
		    && transform == _other.transform
		    && variable == _other.variable
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(context)
		hasher.combine(contextType)
		hasher.combine(element)
		hasher.combine(listMode)
		hasher.combine(listRuleId)
		hasher.combine(parameter)
		hasher.combine(transform)
		hasher.combine(variable)
	}
}

/**
 Parameters to the transform.
 */
open class StructureMapGroupRuleTargetParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case id(FHIRPrimitive<FHIRString>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Parameter value - variable or literal
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(value: ValueX) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: ValueX)
	{
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case valueBoolean; case _valueBoolean
		case valueDecimal; case _valueDecimal
		case valueId; case _valueId
		case valueInteger; case _valueInteger
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueId) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueDecimal, CodingKeys.valueId, CodingKeys.valueInteger, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		var _t_value: ValueX? = nil
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch value {
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapGroupRuleTargetParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(value)
	}
}

/**
 Structure Definition used by this map.
 
 A structure definition used by this map. The structure definition may describe instances that are converted, or the
 instances that are produced.
 */
open class StructureMapStructure: BackboneElement {
	
	/// Canonical URL for structure definition
	public var url: FHIRPrimitive<FHIRURI>
	
	/// How the referenced structure is used in this mapping.
	public var mode: FHIRPrimitive<StructureMapModelMode>
	
	/// Name for type in this map
	public var alias: FHIRPrimitive<FHIRString>?
	
	/// Documentation on use of structure
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<StructureMapModelMode>, url: FHIRPrimitive<FHIRURI>) {
		self.mode = mode
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							alias: FHIRPrimitive<FHIRString>? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<StructureMapModelMode>,
							modifierExtension: [Extension]? = nil,
							url: FHIRPrimitive<FHIRURI>)
	{
		self.init(mode: mode, url: url)
		self.alias = alias
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case alias; case _alias
		case documentation; case _documentation
		case mode; case _mode
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alias = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.mode = try FHIRPrimitive<StructureMapModelMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureMapStructure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alias == _other.alias
		    && documentation == _other.documentation
		    && mode == _other.mode
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alias)
		hasher.combine(documentation)
		hasher.combine(mode)
		hasher.combine(url)
	}
}
