//
//  CapabilityStatement2.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/CapabilityStatement2)
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
 A statement of system capabilities.
 
 A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR
 that may be used as a statement of actual server functionality or a statement of required or desired server
 implementation.
 
 Interfaces:
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class CapabilityStatement2: DomainResource {
	
	override open class var resourceType: ResourceType { return .capabilityStatement2 }
	
	/// Canonical identifier for this capability statement2, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business version of the capability statement2
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this capability statement2 (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this capability statement2 (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this capability statement2. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the capability statement2
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for capability statement2 (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this capability statement2 is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: FHIRPrimitive<CapabilityStatementKind>
	
	/// Canonical URL of another capability statement this implements
	public var instantiates: [FHIRPrimitive<Canonical>]?
	
	/// Canonical URL of another capability statement this adds to
	public var imports: [FHIRPrimitive<Canonical>]?
	
	/// Software that is covered by this capability statement
	public var software: CapabilityStatement2Software?
	
	/// If this describes a specific instance
	public var implementation: CapabilityStatement2Implementation?
	
	/// FHIR Version the system supports
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// formats supported (xml | json | ttl | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Patch formats supported
	public var patchFormat: [FHIRPrimitive<FHIRString>]?
	
	/// Implementation guides supported
	public var implementationGuide: [FHIRPrimitive<Canonical>]?
	
	/// If the endpoint is a RESTful one
	public var rest: [CapabilityStatement2Rest]?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, fhirVersion: FHIRPrimitive<FHIRString>, format: [FHIRPrimitive<FHIRString>], kind: FHIRPrimitive<CapabilityStatementKind>, status: FHIRPrimitive<PublicationStatus>) {
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							fhirVersion: FHIRPrimitive<FHIRString>,
							format: [FHIRPrimitive<FHIRString>],
							id: FHIRPrimitive<FHIRString>? = nil,
							implementation: CapabilityStatement2Implementation? = nil,
							implementationGuide: [FHIRPrimitive<Canonical>]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							imports: [FHIRPrimitive<Canonical>]? = nil,
							instantiates: [FHIRPrimitive<Canonical>]? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							kind: FHIRPrimitive<CapabilityStatementKind>,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							patchFormat: [FHIRPrimitive<FHIRString>]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							rest: [CapabilityStatement2Rest]? = nil,
							software: CapabilityStatement2Software? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(date: date, fhirVersion: fhirVersion, format: format, kind: kind, status: status)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implementation = implementation
		self.implementationGuide = implementationGuide
		self.implicitRules = implicitRules
		self.imports = imports
		self.instantiates = instantiates
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.patchFormat = patchFormat
		self.publisher = publisher
		self.purpose = purpose
		self.rest = rest
		self.software = software
		self.text = text
		self.title = title
		self.url = url
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
		case fhirVersion; case _fhirVersion
		case format; case _format
		case implementation
		case implementationGuide; case _implementationGuide
		case imports; case _imports
		case instantiates; case _instantiates
		case jurisdiction
		case kind; case _kind
		case name; case _name
		case patchFormat; case _patchFormat
		case publisher; case _publisher
		case purpose; case _purpose
		case rest
		case software
		case status; case _status
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
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.implementation = try CapabilityStatement2Implementation(from: _container, forKeyIfPresent: .implementation)
		self.implementationGuide = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .implementationGuide, auxiliaryKey: ._implementationGuide)
		self.imports = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .imports, auxiliaryKey: ._imports)
		self.instantiates = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiates, auxiliaryKey: ._instantiates)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<CapabilityStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.patchFormat = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .patchFormat, auxiliaryKey: ._patchFormat)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.rest = try [CapabilityStatement2Rest](from: _container, forKeyIfPresent: .rest)
		self.software = try CapabilityStatement2Software(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try format.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try implementationGuide?.encode(on: &_container, forKey: .implementationGuide, auxiliaryKey: ._implementationGuide)
		try imports?.encode(on: &_container, forKey: .imports, auxiliaryKey: ._imports)
		try instantiates?.encode(on: &_container, forKey: .instantiates, auxiliaryKey: ._instantiates)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try patchFormat?.encode(on: &_container, forKey: .patchFormat, auxiliaryKey: ._patchFormat)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try rest?.encode(on: &_container, forKey: .rest)
		try software?.encode(on: &_container, forKey: .software)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2 else {
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
		    && fhirVersion == _other.fhirVersion
		    && format == _other.format
		    && implementation == _other.implementation
		    && implementationGuide == _other.implementationGuide
		    && imports == _other.imports
		    && instantiates == _other.instantiates
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && name == _other.name
		    && patchFormat == _other.patchFormat
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && rest == _other.rest
		    && software == _other.software
		    && status == _other.status
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
		hasher.combine(fhirVersion)
		hasher.combine(format)
		hasher.combine(implementation)
		hasher.combine(implementationGuide)
		hasher.combine(imports)
		hasher.combine(instantiates)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(name)
		hasher.combine(patchFormat)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(rest)
		hasher.combine(software)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the capability statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
open class CapabilityStatement2Implementation: BackboneElement {
	
	/// Describes this specific instance
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Base URL for the installation
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Organization that manages the data
	public var custodian: Reference?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: FHIRPrimitive<FHIRString>) {
		self.description_fhir = description_fhir
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							custodian: Reference? = nil,
							description_fhir: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(description_fhir: description_fhir)
		self.custodian = custodian
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case custodian
		case description_fhir = "description"; case _description_fhir = "_description"
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try custodian?.encode(on: &_container, forKey: .custodian)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2Implementation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return custodian == _other.custodian
		    && description_fhir == _other.description_fhir
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(custodian)
		hasher.combine(description_fhir)
		hasher.combine(url)
	}
}

/**
 If the endpoint is a RESTful one.
 
 A definition of the restful capabilities of the solution, if any.
 */
open class CapabilityStatement2Rest: BackboneElement {
	
	/// Identifies whether this portion of the statement is describing the ability to initiate or receive restful
	/// operations.
	public var mode: FHIRPrimitive<RestfulCapabilityMode>
	
	/// General description of implementation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Resource served on the REST interface
	public var resource: [CapabilityStatement2RestResource]?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatement2RestInteraction]?
	
	/// Search parameters for searching all resources
	public var searchParam: [CapabilityStatement2RestResourceSearchParam]?
	
	/// Definition of a system level operation
	public var operation: [CapabilityStatement2RestResourceOperation]?
	
	/// Compartments served/used by system
	public var compartment: [FHIRPrimitive<Canonical>]?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<RestfulCapabilityMode>) {
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							compartment: [FHIRPrimitive<Canonical>]? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							interaction: [CapabilityStatement2RestInteraction]? = nil,
							mode: FHIRPrimitive<RestfulCapabilityMode>,
							modifierExtension: [Extension]? = nil,
							operation: [CapabilityStatement2RestResourceOperation]? = nil,
							resource: [CapabilityStatement2RestResource]? = nil,
							searchParam: [CapabilityStatement2RestResourceSearchParam]? = nil)
	{
		self.init(mode: mode)
		self.compartment = compartment
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.resource = resource
		self.searchParam = searchParam
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compartment; case _compartment
		case documentation; case _documentation
		case interaction
		case mode; case _mode
		case operation
		case resource
		case searchParam
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compartment = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .compartment, auxiliaryKey: ._compartment)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.interaction = try [CapabilityStatement2RestInteraction](from: _container, forKeyIfPresent: .interaction)
		self.mode = try FHIRPrimitive<RestfulCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.operation = try [CapabilityStatement2RestResourceOperation](from: _container, forKeyIfPresent: .operation)
		self.resource = try [CapabilityStatement2RestResource](from: _container, forKeyIfPresent: .resource)
		self.searchParam = try [CapabilityStatement2RestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try compartment?.encode(on: &_container, forKey: .compartment, auxiliaryKey: ._compartment)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try operation?.encode(on: &_container, forKey: .operation)
		try resource?.encode(on: &_container, forKey: .resource)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2Rest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return compartment == _other.compartment
		    && documentation == _other.documentation
		    && interaction == _other.interaction
		    && mode == _other.mode
		    && operation == _other.operation
		    && resource == _other.resource
		    && searchParam == _other.searchParam
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(compartment)
		hasher.combine(documentation)
		hasher.combine(interaction)
		hasher.combine(mode)
		hasher.combine(operation)
		hasher.combine(resource)
		hasher.combine(searchParam)
	}
}

/**
 What operations are supported?.
 
 A specification of restful operations supported by the system.
 */
open class CapabilityStatement2RestInteraction: BackboneElement {
	
	/// A coded identifier of the operation, supported by the system.
	/// Restricted to: ['transaction', 'batch', 'search-system', 'history-system']
	public var code: FHIRPrimitive<FHIRRestfulInteractions>
	
	/// Anything special about operation behavior
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRRestfulInteractions>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRRestfulInteractions>,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case documentation; case _documentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRRestfulInteractions>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2RestInteraction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && documentation == _other.documentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(documentation)
	}
}

/**
 Resource served on the REST interface.
 
 A specification of the restful capabilities of the solution for a specific resource type.
 */
open class CapabilityStatement2RestResource: BackboneElement {
	
	/// A type of resource exposed via the restful interface.
	public var type: FHIRPrimitive<ResourceType>
	
	/// Base System profile for all uses of resource
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Profiles for use cases supported
	public var supportedProfile: [FHIRPrimitive<Canonical>]?
	
	/// Additional information about the use of the resource type
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatement2RestResourceInteraction]?
	
	/// Search parameters supported by implementation
	public var searchParam: [CapabilityStatement2RestResourceSearchParam]?
	
	/// Definition of a resource operation
	public var operation: [CapabilityStatement2RestResourceOperation]?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ResourceType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							interaction: [CapabilityStatement2RestResourceInteraction]? = nil,
							modifierExtension: [Extension]? = nil,
							operation: [CapabilityStatement2RestResourceOperation]? = nil,
							profile: FHIRPrimitive<Canonical>? = nil,
							searchParam: [CapabilityStatement2RestResourceSearchParam]? = nil,
							supportedProfile: [FHIRPrimitive<Canonical>]? = nil,
							type: FHIRPrimitive<ResourceType>)
	{
		self.init(type: type)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.profile = profile
		self.searchParam = searchParam
		self.supportedProfile = supportedProfile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case interaction
		case operation
		case profile; case _profile
		case searchParam
		case supportedProfile; case _supportedProfile
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.interaction = try [CapabilityStatement2RestResourceInteraction](from: _container, forKeyIfPresent: .interaction)
		self.operation = try [CapabilityStatement2RestResourceOperation](from: _container, forKeyIfPresent: .operation)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.searchParam = try [CapabilityStatement2RestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.supportedProfile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .supportedProfile, auxiliaryKey: ._supportedProfile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try operation?.encode(on: &_container, forKey: .operation)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try supportedProfile?.encode(on: &_container, forKey: .supportedProfile, auxiliaryKey: ._supportedProfile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2RestResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && interaction == _other.interaction
		    && operation == _other.operation
		    && profile == _other.profile
		    && searchParam == _other.searchParam
		    && supportedProfile == _other.supportedProfile
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(interaction)
		hasher.combine(operation)
		hasher.combine(profile)
		hasher.combine(searchParam)
		hasher.combine(supportedProfile)
		hasher.combine(type)
	}
}

/**
 What operations are supported?.
 
 Identifies a restful operation supported by the solution.
 */
open class CapabilityStatement2RestResourceInteraction: BackboneElement {
	
	/// Coded identifier of the operation, supported by the system resource.
	/// Restricted to: ['read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create',
	/// 'search-type']
	public var code: FHIRPrimitive<FHIRRestfulInteractions>
	
	/// Anything special about operation behavior
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRRestfulInteractions>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRRestfulInteractions>,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case documentation; case _documentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRRestfulInteractions>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2RestResourceInteraction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && documentation == _other.documentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(documentation)
	}
}

/**
 Definition of a resource operation.
 
 Definition of an operation or a named query together with its parameters and their meaning and type. Consult the
 definition of the operation for details about how to invoke the operation, and the parameters.
 */
open class CapabilityStatement2RestResourceOperation: BackboneElement {
	
	/// Name by which the operation/query is invoked
	public var name: FHIRPrimitive<FHIRString>
	
	/// The defined operation/query
	public var definition: FHIRPrimitive<Canonical>
	
	/// Specific details about operation behavior
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(definition: FHIRPrimitive<Canonical>, name: FHIRPrimitive<FHIRString>) {
		self.definition = definition
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: FHIRPrimitive<Canonical>,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>)
	{
		self.init(definition: definition, name: name)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case documentation; case _documentation
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKey: .definition, auxiliaryKey: ._definition)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2RestResourceOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && documentation == _other.documentation
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(documentation)
		hasher.combine(name)
	}
}

/**
 Search parameters supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
open class CapabilityStatement2RestResourceSearchParam: BackboneElement {
	
	/// Name of search parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Source of definition for parameter
	public var definition: FHIRPrimitive<Canonical>?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Server-specific usage
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<SearchParamType>) {
		self.name = name
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: FHIRPrimitive<Canonical>? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							type: FHIRPrimitive<SearchParamType>)
	{
		self.init(name: name, type: type)
		self.definition = definition
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case documentation; case _documentation
		case name; case _name
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2RestResourceSearchParam else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && documentation == _other.documentation
		    && name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(documentation)
		hasher.combine(name)
		hasher.combine(type)
	}
}

/**
 Software that is covered by this capability statement.
 
 Software that is covered by this capability statement.  It is used when the capability statement describes the
 capabilities of a particular software version, independent of an installation.
 */
open class CapabilityStatement2Software: BackboneElement {
	
	/// A name the software is known by
	public var name: FHIRPrimitive<FHIRString>
	
	/// Version covered by this statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Date this version was released
	public var releaseDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							releaseDate: FHIRPrimitive<DateTime>? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.releaseDate = releaseDate
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case releaseDate; case _releaseDate
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.releaseDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .releaseDate, auxiliaryKey: ._releaseDate)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try releaseDate?.encode(on: &_container, forKey: .releaseDate, auxiliaryKey: ._releaseDate)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatement2Software else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && releaseDate == _other.releaseDate
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(releaseDate)
		hasher.combine(version)
	}
}
