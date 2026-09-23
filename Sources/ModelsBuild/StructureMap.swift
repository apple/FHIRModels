//
//  StructureMap.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/StructureMap)
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
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Definition of the constant value used in the map rules
	public var const: [StructureMapConst]?
	
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
	
	/// Natural language description of the structure map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing only - never for real usage
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
	
	/// Jurisdiction of the authority that maintains the structure map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this structure map (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher/steward (organization or individual)
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
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		const: [StructureMapConst]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
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
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.const = const
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
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
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case const
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
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
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.const = try [StructureMapConst](from: _container, forKeyIfPresent: .const)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
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
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try const?.encode(on: &_container, forKey: .const)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
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
 Definition of the constant value used in the map rules.
 
 Definition of a constant value used in the map rules.
 */
public struct StructureMapConst: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Constant name
	public var name: FHIRPrimitive<FHIRString>?
	
	/// FHIRPath exression - value of the constant
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Named sections for reader convenience.
 
 Organizes the mapping into managable chunks for human review/ease of maintenance.
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
	public var rule: [StructureMapGroupRule]?
	
	/// If this is the default rule set to apply for the source type or this combination of types.
	public var typeMode: FHIRPrimitive<StructureMapGroupTypeMode>?
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		extends: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		input: [StructureMapGroupInput],
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		rule: [StructureMapGroupRule]? = nil,
		typeMode: FHIRPrimitive<StructureMapGroupTypeMode>? = nil
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
		self.rule = try [StructureMapGroupRule](from: _container, forKeyIfPresent: .rule)
		self.typeMode = try FHIRPrimitive<StructureMapGroupTypeMode>(from: _container, forKeyIfPresent: .typeMode, auxiliaryKey: ._typeMode)
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
		try rule?.encode(on: &_container, forKey: .rule)
		try typeMode?.encode(on: &_container, forKey: .typeMode, auxiliaryKey: ._typeMode)
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
	public var name: FHIRPrimitive<FHIRString>?
	
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
		name: FHIRPrimitive<FHIRString>? = nil,
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
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
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
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
	
	/// Parameter to pass to the rule or group
	public var parameter: [StructureMapGroupRuleTargetParameter]
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		parameter: [StructureMapGroupRuleTargetParameter]
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.parameter = parameter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case parameter
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
		self.parameter = try [StructureMapGroupRuleTargetParameter](from: _container, forKey: .parameter)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parameter.encode(on: &_container, forKey: .parameter)
	}
}

/**
 Source inputs to the mapping.
 */
public struct StructureMapGroupRuleSource: BackboneElement {
	
	/// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing
	public var check: FHIRPrimitive<FHIRString>?
	
	/// FHIRPath expression  - must be true or the rule does not apply
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Type or variable this rule applies to
	public var context: FHIRPrimitive<FHIRString>
	
	/// Default value if no value exists
	public var defaultValue: FHIRPrimitive<FHIRString>?
	
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
	public var min: FHIRPrimitive<FHIRUnsignedInteger>?
	
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
		defaultValue: FHIRPrimitive<FHIRString>? = nil,
		element: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		listMode: FHIRPrimitive<StructureMapSourceListMode>? = nil,
		logMessage: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>? = nil,
		min: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
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
		case defaultValue; case _defaultValue
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
		self.defaultValue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValue, auxiliaryKey: ._defaultValue)
		self.element = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .element, auxiliaryKey: ._element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.listMode = try FHIRPrimitive<StructureMapSourceListMode>(from: _container, forKeyIfPresent: .listMode, auxiliaryKey: ._listMode)
		self.logMessage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .logMessage, auxiliaryKey: ._logMessage)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
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
		try defaultValue?.encode(on: &_container, forKey: .defaultValue, auxiliaryKey: ._defaultValue)
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
}

/**
 Content to create because of this mapping rule.
 */
public struct StructureMapGroupRuleTarget: BackboneElement {
	
	/// Variable this rule applies to
	public var context: FHIRPrimitive<FHIRString>?
	
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
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case id(FHIRPrimitive<FHIRString>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
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
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueId; case _valueId
		case valueInteger; case _valueInteger
		case valueString; case _valueString
		case valueTime; case _valueTime
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
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .id(let _value):
			try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
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
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
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
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueTime)
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
