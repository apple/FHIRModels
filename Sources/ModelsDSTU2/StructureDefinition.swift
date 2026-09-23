//
//  StructureDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/StructureDefinition)
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
 Structural Definition.
 
 A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
 FHIR, and also for describing extensions, and constraints on resources and data types.
 */
public struct StructureDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .structureDefinition
	
	/// Whether the structure is abstract
	public var abstract: FHIRPrimitive<FHIRBool>
	
	/// Structure that this set of constraints applies to
	public var base: FHIRPrimitive<FHIRURI>?
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Any datatype or resource, including abstract ones
	public var constrainedType: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [StructureDefinitionContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Where the extension can be used in instances
	public var context: [FHIRPrimitive<FHIRString>]?
	
	/// If this is an extension, Identifies the context within FHIR resources where the extension can be used.
	/// Restricted to: ['resource', 'datatype', 'mapping', 'extension']
	public var contextType: FHIRPrimitive<ExtensionContext>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date for this version of the StructureDefinition
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the StructureDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Differential view of the structure
	public var differential: StructureDefinitionDifferential?
	
	/// Use this name when displaying the value
	public var display: FHIRPrimitive<FHIRString>?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version this StructureDefinition targets
	public var fhirVersion: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Other identifiers for the StructureDefinition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Defines the kind of structure that this definition is describing.
	/// Restricted to: ['datatype', 'resource', 'logical']
	public var kind: FHIRPrimitive<StructureDefinitionKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// External specification that the content is mapped to
	public var mapping: [StructureDefinitionMapping]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this StructureDefinition
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Scope and Usage this structure definition is for
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Snapshot view of the structure
	public var snapshot: StructureDefinitionSnapshot?
	
	/// The status of the StructureDefinition.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Absolute URL used to reference this StructureDefinition
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the StructureDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		abstract: FHIRPrimitive<FHIRBool>,
		base: FHIRPrimitive<FHIRURI>? = nil,
		code: [Coding]? = nil,
		constrainedType: FHIRPrimitive<FHIRString>? = nil,
		contact: [StructureDefinitionContact]? = nil,
		contained: [ResourceProxy]? = nil,
		context: [FHIRPrimitive<FHIRString>]? = nil,
		contextType: FHIRPrimitive<ExtensionContext>? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		differential: StructureDefinitionDifferential? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		kind: FHIRPrimitive<StructureDefinitionKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		mapping: [StructureDefinitionMapping]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		snapshot: StructureDefinitionSnapshot? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [CodeableConcept]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.abstract = abstract
		self.base = base
		self.code = code
		self.constrainedType = constrainedType
		self.contact = contact
		self.contained = contained
		self.context = context
		self.contextType = contextType
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.differential = differential
		self.display = display
		self.experimental = experimental
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.kind = kind
		self.language = language
		self.mapping = mapping
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.requirements = requirements
		self.snapshot = snapshot
		self.status = status
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case abstract; case _abstract
		case base; case _base
		case code
		case constrainedType; case _constrainedType
		case contact
		case contained
		case context; case _context
		case contextType; case _contextType
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case differential
		case display; case _display
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case kind; case _kind
		case language; case _language
		case mapping
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case requirements; case _requirements
		case snapshot
		case status; case _status
		case text
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .abstract, auxiliaryKey: ._abstract)
		self.base = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.constrainedType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .constrainedType, auxiliaryKey: ._constrainedType)
		self.contact = try [StructureDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .context, auxiliaryKey: ._context)
		self.contextType = try FHIRPrimitive<ExtensionContext>(from: _container, forKeyIfPresent: .contextType, auxiliaryKey: ._contextType)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.differential = try StructureDefinitionDifferential(from: _container, forKeyIfPresent: .differential)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.kind = try FHIRPrimitive<StructureDefinitionKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.mapping = try [StructureDefinitionMapping](from: _container, forKeyIfPresent: .mapping)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.snapshot = try StructureDefinitionSnapshot(from: _container, forKeyIfPresent: .snapshot)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try abstract.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try code?.encode(on: &_container, forKey: .code)
		try constrainedType?.encode(on: &_container, forKey: .constrainedType, auxiliaryKey: ._constrainedType)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		try contextType?.encode(on: &_container, forKey: .contextType, auxiliaryKey: ._contextType)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try differential?.encode(on: &_container, forKey: .differential)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try mapping?.encode(on: &_container, forKey: .mapping)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try snapshot?.encode(on: &_container, forKey: .snapshot)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public struct StructureDefinitionContact: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case telecom
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
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}

/**
 Differential view of the structure.
 
 A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
 */
public struct StructureDefinitionDifferential: BackboneElement {
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		element: [ElementDefinition],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.element = try [ElementDefinition](from: _container, forKey: .element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try element.encode(on: &_container, forKey: .element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 External specification that the content is mapped to.
 
 An external specification that the content is mapped to.
 */
public struct StructureDefinitionMapping: BackboneElement {
	
	/// Versions, Issues, Scope limitations etc.
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Internal id when this mapping is used
	public var identity: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Names what this mapping refers to
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Identifies what this mapping refers to
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		comments: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identity: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.comments = comments
		self.`extension` = `extension`
		self.id = id
		self.identity = identity
		self.modifierExtension = modifierExtension
		self.name = name
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comments; case _comments
		case `extension` = "extension"
		case id; case _id
		case identity; case _identity
		case modifierExtension
		case name; case _name
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identity = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identity, auxiliaryKey: ._identity)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identity.encode(on: &_container, forKey: .identity, auxiliaryKey: ._identity)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}

/**
 Snapshot view of the structure.
 
 A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
 StructureDefinition.
 */
public struct StructureDefinitionSnapshot: BackboneElement {
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		element: [ElementDefinition],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.element = try [ElementDefinition](from: _container, forKey: .element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try element.encode(on: &_container, forKey: .element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
