//
//  StructureDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/StructureDefinition)
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
 FHIR, and also for describing extensions and constraints on resources and data types.
 */
open class StructureDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .structureDefinition }
	
	/// Logical URI to reference this structure definition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Additional identifier for the structure definition
	public var identifier: [Identifier]?
	
	/// Business version of the structure definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this structure definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this structure definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this structure definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the structure definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for structure definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this structure definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Assist with indexing and finding
	public var keyword: [Coding]?
	
	/// FHIR Version this StructureDefinition targets
	public var fhirVersion: FHIRPrimitive<FHIRString>?
	
	/// External specification that the content is mapped to
	public var mapping: [StructureDefinitionMapping]?
	
	/// Defines the kind of structure that this definition is describing.
	public var kind: FHIRPrimitive<StructureDefinitionKind>
	
	/// Whether the structure is abstract
	public var abstract: FHIRPrimitive<FHIRBool>
	
	/// If this is an extension, Identifies the context within FHIR resources where the extension can be used.
	public var contextType: FHIRPrimitive<ExtensionContext>?
	
	/// Where the extension can be used in instances
	public var context: [FHIRPrimitive<FHIRString>]?
	
	/// FHIRPath invariants - when the extension can be used
	public var contextInvariant: [FHIRPrimitive<FHIRString>]?
	
	/// Type defined or constrained by this structure
	public var type: FHIRPrimitive<FHIRString>
	
	/// Definition that this type is constrained/specialized from
	public var baseDefinition: FHIRPrimitive<FHIRURI>?
	
	/// How the type relates to the baseDefinition.
	public var derivation: FHIRPrimitive<TypeDerivationRule>?
	
	/// Snapshot view of the structure
	public var snapshot: StructureDefinitionSnapshot?
	
	/// Differential view of the structure
	public var differential: StructureDefinitionDifferential?
	
	/// Designated initializer taking all required properties
	public init(abstract: FHIRPrimitive<FHIRBool>, kind: FHIRPrimitive<StructureDefinitionKind>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, type: FHIRPrimitive<FHIRString>, url: FHIRPrimitive<FHIRURI>) {
		self.abstract = abstract
		self.kind = kind
		self.name = name
		self.status = status
		self.type = type
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abstract: FHIRPrimitive<FHIRBool>,
							baseDefinition: FHIRPrimitive<FHIRURI>? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							context: [FHIRPrimitive<FHIRString>]? = nil,
							contextInvariant: [FHIRPrimitive<FHIRString>]? = nil,
							contextType: FHIRPrimitive<ExtensionContext>? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							derivation: FHIRPrimitive<TypeDerivationRule>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							differential: StructureDefinitionDifferential? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							fhirVersion: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							keyword: [Coding]? = nil,
							kind: FHIRPrimitive<StructureDefinitionKind>,
							language: FHIRPrimitive<FHIRString>? = nil,
							mapping: [StructureDefinitionMapping]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							snapshot: StructureDefinitionSnapshot? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<FHIRString>,
							url: FHIRPrimitive<FHIRURI>,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(abstract: abstract, kind: kind, name: name, status: status, type: type, url: url)
		self.baseDefinition = baseDefinition
		self.contact = contact
		self.contained = contained
		self.context = context
		self.contextInvariant = contextInvariant
		self.contextType = contextType
		self.copyright = copyright
		self.date = date
		self.derivation = derivation
		self.description_fhir = description_fhir
		self.differential = differential
		self.experimental = experimental
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.keyword = keyword
		self.language = language
		self.mapping = mapping
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.purpose = purpose
		self.snapshot = snapshot
		self.text = text
		self.title = title
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case baseDefinition; case _baseDefinition
		case contact
		case context; case _context
		case contextInvariant; case _contextInvariant
		case contextType; case _contextType
		case copyright; case _copyright
		case date; case _date
		case derivation; case _derivation
		case description_fhir = "description"; case _description_fhir = "_description"
		case differential
		case experimental; case _experimental
		case fhirVersion; case _fhirVersion
		case identifier
		case jurisdiction
		case keyword
		case kind; case _kind
		case mapping
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case snapshot
		case status; case _status
		case title; case _title
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .abstract, auxiliaryKey: ._abstract)
		self.baseDefinition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .baseDefinition, auxiliaryKey: ._baseDefinition)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.context = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .context, auxiliaryKey: ._context)
		self.contextInvariant = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .contextInvariant, auxiliaryKey: ._contextInvariant)
		self.contextType = try FHIRPrimitive<ExtensionContext>(from: _container, forKeyIfPresent: .contextType, auxiliaryKey: ._contextType)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivation = try FHIRPrimitive<TypeDerivationRule>(from: _container, forKeyIfPresent: .derivation, auxiliaryKey: ._derivation)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.differential = try StructureDefinitionDifferential(from: _container, forKeyIfPresent: .differential)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.keyword = try [Coding](from: _container, forKeyIfPresent: .keyword)
		self.kind = try FHIRPrimitive<StructureDefinitionKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.mapping = try [StructureDefinitionMapping](from: _container, forKeyIfPresent: .mapping)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.snapshot = try StructureDefinitionSnapshot(from: _container, forKeyIfPresent: .snapshot)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try baseDefinition?.encode(on: &_container, forKey: .baseDefinition, auxiliaryKey: ._baseDefinition)
		try contact?.encode(on: &_container, forKey: .contact)
		try context?.encode(on: &_container, forKey: .context, auxiliaryKey: ._context)
		try contextInvariant?.encode(on: &_container, forKey: .contextInvariant, auxiliaryKey: ._contextInvariant)
		try contextType?.encode(on: &_container, forKey: .contextType, auxiliaryKey: ._contextType)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivation?.encode(on: &_container, forKey: .derivation, auxiliaryKey: ._derivation)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try differential?.encode(on: &_container, forKey: .differential)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try mapping?.encode(on: &_container, forKey: .mapping)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try snapshot?.encode(on: &_container, forKey: .snapshot)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
		    && baseDefinition == _other.baseDefinition
		    && contact == _other.contact
		    && context == _other.context
		    && contextInvariant == _other.contextInvariant
		    && contextType == _other.contextType
		    && copyright == _other.copyright
		    && date == _other.date
		    && derivation == _other.derivation
		    && description_fhir == _other.description_fhir
		    && differential == _other.differential
		    && experimental == _other.experimental
		    && fhirVersion == _other.fhirVersion
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && keyword == _other.keyword
		    && kind == _other.kind
		    && mapping == _other.mapping
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && snapshot == _other.snapshot
		    && status == _other.status
		    && title == _other.title
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(baseDefinition)
		hasher.combine(contact)
		hasher.combine(context)
		hasher.combine(contextInvariant)
		hasher.combine(contextType)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(derivation)
		hasher.combine(description_fhir)
		hasher.combine(differential)
		hasher.combine(experimental)
		hasher.combine(fhirVersion)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(keyword)
		hasher.combine(kind)
		hasher.combine(mapping)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(snapshot)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
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
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(identity: FHIRPrimitive<FHIRString>) {
		self.identity = identity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comment: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identity: FHIRPrimitive<FHIRString>,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							uri: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(identity: identity)
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case identity; case _identity
		case name; case _name
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.identity = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identity, auxiliaryKey: ._identity)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
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
		return comment == _other.comment
		    && identity == _other.identity
		    && name == _other.name
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
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
