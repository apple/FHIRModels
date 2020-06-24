//
//  StructureDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/StructureDefinition)
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
 Structural Definition.
 
 A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
 FHIR, and also for describing extensions, and constraints on resources and data types.
 */
open class StructureDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .structureDefinition }
	
	/// Absolute URL used to reference this StructureDefinition
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Other identifiers for the StructureDefinition
	public var identifier: [Identifier]?
	
	/// Logical id for this version of the StructureDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Informal name for this StructureDefinition
	public var name: FHIRPrimitive<FHIRString>
	
	/// Use this name when displaying the value
	public var display: FHIRPrimitive<FHIRString>?
	
	/// The status of the StructureDefinition.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [StructureDefinitionContact]?
	
	/// Date for this version of the StructureDefinition
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the StructureDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Scope and Usage this structure definition is for
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// FHIR Version this StructureDefinition targets
	public var fhirVersion: FHIRPrimitive<FHIRString>?
	
	/// External specification that the content is mapped to
	public var mapping: [StructureDefinitionMapping]?
	
	/// Defines the kind of structure that this definition is describing.
	/// Restricted to: ['datatype', 'resource', 'logical']
	public var kind: FHIRPrimitive<StructureDefinitionKind>
	
	/// Any datatype or resource, including abstract ones
	public var constrainedType: FHIRPrimitive<FHIRString>?
	
	/// Whether the structure is abstract
	public var abstract: FHIRPrimitive<FHIRBool>
	
	/// If this is an extension, Identifies the context within FHIR resources where the extension can be used.
	/// Restricted to: ['resource', 'datatype', 'mapping', 'extension']
	public var contextType: FHIRPrimitive<ExtensionContext>?
	
	/// Where the extension can be used in instances
	public var context: [FHIRPrimitive<FHIRString>]?
	
	/// Structure that this set of constraints applies to
	public var base: FHIRPrimitive<FHIRURI>?
	
	/// Snapshot view of the structure
	public var snapshot: StructureDefinitionSnapshot?
	
	/// Differential view of the structure
	public var differential: StructureDefinitionDifferential?
	
	/// Designated initializer taking all required properties
	public init(abstract: FHIRPrimitive<FHIRBool>, kind: FHIRPrimitive<StructureDefinitionKind>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<ConformanceResourceStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.abstract = abstract
		self.kind = kind
		self.name = name
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(abstract: abstract, kind: kind, name: name, status: status, url: url)
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
		self.language = language
		self.mapping = mapping
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.requirements = requirements
		self.snapshot = snapshot
		self.text = text
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case base; case _base
		case code
		case constrainedType; case _constrainedType
		case contact
		case context; case _context
		case contextType; case _contextType
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case differential
		case display; case _display
		case experimental; case _experimental
		case fhirVersion; case _fhirVersion
		case identifier
		case kind; case _kind
		case mapping
		case name; case _name
		case publisher; case _publisher
		case requirements; case _requirements
		case snapshot
		case status; case _status
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .abstract, auxiliaryKey: ._abstract)
		self.base = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.constrainedType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .constrainedType, auxiliaryKey: ._constrainedType)
		self.contact = try [StructureDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.context = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .context, auxiliaryKey: ._context)
		self.contextType = try FHIRPrimitive<ExtensionContext>(from: _container, forKeyIfPresent: .contextType, auxiliaryKey: ._contextType)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.differential = try StructureDefinitionDifferential(from: _container, forKeyIfPresent: .differential)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.kind = try FHIRPrimitive<StructureDefinitionKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.mapping = try [StructureDefinitionMapping](from: _container, forKeyIfPresent: .mapping)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.snapshot = try StructureDefinitionSnapshot(from: _container, forKeyIfPresent: .snapshot)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try code?.encode(on: &_container, forKey: .code)
		try constrainedType?.encode(on: &_container, forKey: .constrainedType, auxiliaryKey: ._constrainedType)
		try contact?.encode(on: &_container, forKey: .contact)
		try context?.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		try contextType?.encode(on: &_container, forKey: .contextType, auxiliaryKey: ._contextType)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try differential?.encode(on: &_container, forKey: .differential)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try mapping?.encode(on: &_container, forKey: .mapping)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try snapshot?.encode(on: &_container, forKey: .snapshot)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abstract == _other.abstract
		    && base == _other.base
		    && code == _other.code
		    && constrainedType == _other.constrainedType
		    && contact == _other.contact
		    && context == _other.context
		    && contextType == _other.contextType
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && differential == _other.differential
		    && display == _other.display
		    && experimental == _other.experimental
		    && fhirVersion == _other.fhirVersion
		    && identifier == _other.identifier
		    && kind == _other.kind
		    && mapping == _other.mapping
		    && name == _other.name
		    && publisher == _other.publisher
		    && requirements == _other.requirements
		    && snapshot == _other.snapshot
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(base)
		hasher.combine(code)
		hasher.combine(constrainedType)
		hasher.combine(contact)
		hasher.combine(context)
		hasher.combine(contextType)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(differential)
		hasher.combine(display)
		hasher.combine(experimental)
		hasher.combine(fhirVersion)
		hasher.combine(identifier)
		hasher.combine(kind)
		hasher.combine(mapping)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(requirements)
		hasher.combine(snapshot)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class StructureDefinitionContact: BackboneElement {
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureDefinitionContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(telecom)
	}
}

/**
 Differential view of the structure.
 
 A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
 */
open class StructureDefinitionDifferential: BackboneElement {
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]
	
	/// Designated initializer taking all required properties
	public init(element: [ElementDefinition]) {
		self.element = element
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							element: [ElementDefinition],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(element: element)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.element = try [ElementDefinition](from: _container, forKey: .element)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try element.encode(on: &_container, forKey: .element)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureDefinitionDifferential else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return element == _other.element
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(element)
	}
}

/**
 External specification that the content is mapped to.
 
 An external specification that the content is mapped to.
 */
open class StructureDefinitionMapping: BackboneElement {
	
	/// Internal id when this mapping is used
	public var identity: FHIRPrimitive<FHIRString>
	
	/// Identifies what this mapping refers to
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Names what this mapping refers to
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Versions, Issues, Scope limitations etc.
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(identity: FHIRPrimitive<FHIRString>) {
		self.identity = identity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comments: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identity: FHIRPrimitive<FHIRString>,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							uri: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(identity: identity)
		self.comments = comments
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comments; case _comments
		case identity; case _identity
		case name; case _name
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.identity = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identity, auxiliaryKey: ._identity)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try identity.encode(on: &_container, forKey: .identity, auxiliaryKey: ._identity)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureDefinitionMapping else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comments == _other.comments
		    && identity == _other.identity
		    && name == _other.name
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comments)
		hasher.combine(identity)
		hasher.combine(name)
		hasher.combine(uri)
	}
}

/**
 Snapshot view of the structure.
 
 A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
 StructureDefinition.
 */
open class StructureDefinitionSnapshot: BackboneElement {
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]
	
	/// Designated initializer taking all required properties
	public init(element: [ElementDefinition]) {
		self.element = element
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							element: [ElementDefinition],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(element: element)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.element = try [ElementDefinition](from: _container, forKey: .element)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try element.encode(on: &_container, forKey: .element)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? StructureDefinitionSnapshot else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return element == _other.element
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(element)
	}
}
