//
//  CapabilityStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement)
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
 
 A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server that may be used as a statement of
 actual server functionality or a statement of required or desired server implementation.
 */
open class CapabilityStatement: DomainResource {
	
	override open class var resourceType: ResourceType { return .capabilityStatement }
	
	/// Logical URI to reference this capability statement (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business version of the capability statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this capability statement (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this capability statement (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this capability statement. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the capability statement
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for capability statement (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this capability statement is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: FHIRPrimitive<CapabilityStatementKind>
	
	/// Canonical URL of another capability statement this implements
	public var instantiates: [FHIRPrimitive<FHIRURI>]?
	
	/// Software that is covered by this capability statement
	public var software: CapabilityStatementSoftware?
	
	/// If this describes a specific instance
	public var implementation: CapabilityStatementImplementation?
	
	/// FHIR Version the system uses
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// A code that indicates whether the application accepts unknown elements or extensions when reading resources.
	public var acceptUnknown: FHIRPrimitive<UnknownContentCode>
	
	/// formats supported (xml | json | ttl | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Patch formats supported
	public var patchFormat: [FHIRPrimitive<FHIRString>]?
	
	/// Implementation guides supported
	public var implementationGuide: [FHIRPrimitive<FHIRURI>]?
	
	/// Profiles for use cases supported
	public var profile: [Reference]?
	
	/// If the endpoint is a RESTful one
	public var rest: [CapabilityStatementRest]?
	
	/// If messaging is supported
	public var messaging: [CapabilityStatementMessaging]?
	
	/// Document definition
	public var document: [CapabilityStatementDocument]?
	
	/// Designated initializer taking all required properties
	public init(acceptUnknown: FHIRPrimitive<UnknownContentCode>, date: FHIRPrimitive<DateTime>, fhirVersion: FHIRPrimitive<FHIRString>, format: [FHIRPrimitive<FHIRString>], kind: FHIRPrimitive<CapabilityStatementKind>, status: FHIRPrimitive<PublicationStatus>) {
		self.acceptUnknown = acceptUnknown
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							acceptUnknown: FHIRPrimitive<UnknownContentCode>,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							document: [CapabilityStatementDocument]? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							fhirVersion: FHIRPrimitive<FHIRString>,
							format: [FHIRPrimitive<FHIRString>],
							id: FHIRPrimitive<FHIRString>? = nil,
							implementation: CapabilityStatementImplementation? = nil,
							implementationGuide: [FHIRPrimitive<FHIRURI>]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							instantiates: [FHIRPrimitive<FHIRURI>]? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							kind: FHIRPrimitive<CapabilityStatementKind>,
							language: FHIRPrimitive<FHIRString>? = nil,
							messaging: [CapabilityStatementMessaging]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							patchFormat: [FHIRPrimitive<FHIRString>]? = nil,
							profile: [Reference]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							rest: [CapabilityStatementRest]? = nil,
							software: CapabilityStatementSoftware? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(acceptUnknown: acceptUnknown, date: date, fhirVersion: fhirVersion, format: format, kind: kind, status: status)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.description_fhir = description_fhir
		self.document = document
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implementation = implementation
		self.implementationGuide = implementationGuide
		self.implicitRules = implicitRules
		self.instantiates = instantiates
		self.jurisdiction = jurisdiction
		self.language = language
		self.messaging = messaging
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.patchFormat = patchFormat
		self.profile = profile
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
		case acceptUnknown; case _acceptUnknown
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case document
		case experimental; case _experimental
		case fhirVersion; case _fhirVersion
		case format; case _format
		case implementation
		case implementationGuide; case _implementationGuide
		case instantiates; case _instantiates
		case jurisdiction
		case kind; case _kind
		case messaging
		case name; case _name
		case patchFormat; case _patchFormat
		case profile
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
		self.acceptUnknown = try FHIRPrimitive<UnknownContentCode>(from: _container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.document = try [CapabilityStatementDocument](from: _container, forKeyIfPresent: .document)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.implementation = try CapabilityStatementImplementation(from: _container, forKeyIfPresent: .implementation)
		self.implementationGuide = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .implementationGuide, auxiliaryKey: ._implementationGuide)
		self.instantiates = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiates, auxiliaryKey: ._instantiates)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<CapabilityStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.messaging = try [CapabilityStatementMessaging](from: _container, forKeyIfPresent: .messaging)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.patchFormat = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .patchFormat, auxiliaryKey: ._patchFormat)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.rest = try [CapabilityStatementRest](from: _container, forKeyIfPresent: .rest)
		self.software = try CapabilityStatementSoftware(from: _container, forKeyIfPresent: .software)
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
		try acceptUnknown.encode(on: &_container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try document?.encode(on: &_container, forKey: .document)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try format.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try implementationGuide?.encode(on: &_container, forKey: .implementationGuide, auxiliaryKey: ._implementationGuide)
		try instantiates?.encode(on: &_container, forKey: .instantiates, auxiliaryKey: ._instantiates)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try messaging?.encode(on: &_container, forKey: .messaging)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try patchFormat?.encode(on: &_container, forKey: .patchFormat, auxiliaryKey: ._patchFormat)
		try profile?.encode(on: &_container, forKey: .profile)
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
		guard let _other = _other as? CapabilityStatement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return acceptUnknown == _other.acceptUnknown
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && document == _other.document
		    && experimental == _other.experimental
		    && fhirVersion == _other.fhirVersion
		    && format == _other.format
		    && implementation == _other.implementation
		    && implementationGuide == _other.implementationGuide
		    && instantiates == _other.instantiates
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && messaging == _other.messaging
		    && name == _other.name
		    && patchFormat == _other.patchFormat
		    && profile == _other.profile
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
		hasher.combine(acceptUnknown)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(document)
		hasher.combine(experimental)
		hasher.combine(fhirVersion)
		hasher.combine(format)
		hasher.combine(implementation)
		hasher.combine(implementationGuide)
		hasher.combine(instantiates)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(messaging)
		hasher.combine(name)
		hasher.combine(patchFormat)
		hasher.combine(profile)
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
 Document definition.
 
 A document definition.
 */
open class CapabilityStatementDocument: BackboneElement {
	
	/// Mode of this document declaration - whether an application is a producer or consumer.
	public var mode: FHIRPrimitive<DocumentMode>
	
	/// Description of document support
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Constraint on a resource used in the document
	public var profile: Reference
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<DocumentMode>, profile: Reference) {
		self.mode = mode
		self.profile = profile
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<DocumentMode>,
							modifierExtension: [Extension]? = nil,
							profile: Reference)
	{
		self.init(mode: mode, profile: profile)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case mode; case _mode
		case profile
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.mode = try FHIRPrimitive<DocumentMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.profile = try Reference(from: _container, forKey: .profile)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try profile.encode(on: &_container, forKey: .profile)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementDocument else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && mode == _other.mode
		    && profile == _other.profile
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(mode)
		hasher.combine(profile)
	}
}

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the capability statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
open class CapabilityStatementImplementation: BackboneElement {
	
	/// Describes this specific instance
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Base URL for the installation
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: FHIRPrimitive<FHIRString>) {
		self.description_fhir = description_fhir
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(description_fhir: description_fhir)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementImplementation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(url)
	}
}

/**
 If messaging is supported.
 
 A description of the messaging capabilities of the solution.
 */
open class CapabilityStatementMessaging: BackboneElement {
	
	/// Where messages should be sent
	public var endpoint: [CapabilityStatementMessagingEndpoint]?
	
	/// Reliable Message Cache Length (min)
	public var reliableCache: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Messaging interface behavior details
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Messages supported by this system
	public var supportedMessage: [CapabilityStatementMessagingSupportedMessage]?
	
	/// Declare support for this event
	public var event: [CapabilityStatementMessagingEvent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							endpoint: [CapabilityStatementMessagingEndpoint]? = nil,
							event: [CapabilityStatementMessagingEvent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reliableCache: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							supportedMessage: [CapabilityStatementMessagingSupportedMessage]? = nil)
	{
		self.init()
		self.documentation = documentation
		self.endpoint = endpoint
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reliableCache = reliableCache
		self.supportedMessage = supportedMessage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case endpoint
		case event
		case reliableCache; case _reliableCache
		case supportedMessage
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.endpoint = try [CapabilityStatementMessagingEndpoint](from: _container, forKeyIfPresent: .endpoint)
		self.event = try [CapabilityStatementMessagingEvent](from: _container, forKeyIfPresent: .event)
		self.reliableCache = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .reliableCache, auxiliaryKey: ._reliableCache)
		self.supportedMessage = try [CapabilityStatementMessagingSupportedMessage](from: _container, forKeyIfPresent: .supportedMessage)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try event?.encode(on: &_container, forKey: .event)
		try reliableCache?.encode(on: &_container, forKey: .reliableCache, auxiliaryKey: ._reliableCache)
		try supportedMessage?.encode(on: &_container, forKey: .supportedMessage)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementMessaging else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && endpoint == _other.endpoint
		    && event == _other.event
		    && reliableCache == _other.reliableCache
		    && supportedMessage == _other.supportedMessage
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(endpoint)
		hasher.combine(event)
		hasher.combine(reliableCache)
		hasher.combine(supportedMessage)
	}
}

/**
 Where messages should be sent.
 
 An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
open class CapabilityStatementMessagingEndpoint: BackboneElement {
	
	/// http | ftp | mllp +
	public var `protocol`: Coding
	
	/// Network address or identifier of the end-point
	public var address: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(address: FHIRPrimitive<FHIRURI>, `protocol`: Coding) {
		self.address = address
		self.`protocol` = `protocol`
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							address: FHIRPrimitive<FHIRURI>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							`protocol`: Coding)
	{
		self.init(address: address, protocol: `protocol`)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case `protocol` = "protocol"
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.address = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .address, auxiliaryKey: ._address)
		self.`protocol` = try Coding(from: _container, forKey: .`protocol`)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try address.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try `protocol`.encode(on: &_container, forKey: .`protocol`)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementMessagingEndpoint else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return address == _other.address
		    && `protocol` == _other.`protocol`
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(address)
		hasher.combine(`protocol`)
	}
}

/**
 Declare support for this event.
 
 A description of the solution's support for an event at this end-point.
 */
open class CapabilityStatementMessagingEvent: BackboneElement {
	
	/// Event type
	public var code: Coding
	
	/// The impact of the content of the message.
	public var category: FHIRPrimitive<MessageSignificanceCategory>?
	
	/// The mode of this event declaration - whether an application is a sender or receiver.
	public var mode: FHIRPrimitive<EventCapabilityMode>
	
	/// A resource associated with the event.  This is the resource that defines the event.
	public var focus: FHIRPrimitive<ResourceType>
	
	/// Profile that describes the request
	public var request: Reference
	
	/// Profile that describes the response
	public var response: Reference
	
	/// Endpoint-specific event documentation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding, focus: FHIRPrimitive<ResourceType>, mode: FHIRPrimitive<EventCapabilityMode>, request: Reference, response: Reference) {
		self.code = code
		self.focus = focus
		self.mode = mode
		self.request = request
		self.response = response
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: FHIRPrimitive<MessageSignificanceCategory>? = nil,
							code: Coding,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							focus: FHIRPrimitive<ResourceType>,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<EventCapabilityMode>,
							modifierExtension: [Extension]? = nil,
							request: Reference,
							response: Reference)
	{
		self.init(code: code, focus: focus, mode: mode, request: request, response: response)
		self.category = category
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category; case _category
		case code
		case documentation; case _documentation
		case focus; case _focus
		case mode; case _mode
		case request
		case response
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try FHIRPrimitive<MessageSignificanceCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.code = try Coding(from: _container, forKey: .code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.focus = try FHIRPrimitive<ResourceType>(from: _container, forKey: .focus, auxiliaryKey: ._focus)
		self.mode = try FHIRPrimitive<EventCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.request = try Reference(from: _container, forKey: .request)
		self.response = try Reference(from: _container, forKey: .response)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try code.encode(on: &_container, forKey: .code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try focus.encode(on: &_container, forKey: .focus, auxiliaryKey: ._focus)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try request.encode(on: &_container, forKey: .request)
		try response.encode(on: &_container, forKey: .response)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementMessagingEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
		    && documentation == _other.documentation
		    && focus == _other.focus
		    && mode == _other.mode
		    && request == _other.request
		    && response == _other.response
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(documentation)
		hasher.combine(focus)
		hasher.combine(mode)
		hasher.combine(request)
		hasher.combine(response)
	}
}

/**
 Messages supported by this system.
 
 References to message definitions for messages this system can send or receive.
 */
open class CapabilityStatementMessagingSupportedMessage: BackboneElement {
	
	/// The mode of this event declaration - whether application is sender or receiver.
	public var mode: FHIRPrimitive<EventCapabilityMode>
	
	/// Message supported by this system
	public var definition: Reference
	
	/// Designated initializer taking all required properties
	public init(definition: Reference, mode: FHIRPrimitive<EventCapabilityMode>) {
		self.definition = definition
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<EventCapabilityMode>,
							modifierExtension: [Extension]? = nil)
	{
		self.init(definition: definition, mode: mode)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition
		case mode; case _mode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try Reference(from: _container, forKey: .definition)
		self.mode = try FHIRPrimitive<EventCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition.encode(on: &_container, forKey: .definition)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementMessagingSupportedMessage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && mode == _other.mode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(mode)
	}
}

/**
 If the endpoint is a RESTful one.
 
 A definition of the restful capabilities of the solution, if any.
 */
open class CapabilityStatementRest: BackboneElement {
	
	/// Identifies whether this portion of the statement is describing the ability to initiate or receive restful
	/// operations.
	public var mode: FHIRPrimitive<RestfulCapabilityMode>
	
	/// General description of implementation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Information about security of implementation
	public var security: CapabilityStatementRestSecurity?
	
	/// Resource served on the REST interface
	public var resource: [CapabilityStatementRestResource]?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatementRestInteraction]?
	
	/// Search parameters for searching all resources
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Definition of an operation or a custom query
	public var operation: [CapabilityStatementRestOperation]?
	
	/// Compartments served/used by system
	public var compartment: [FHIRPrimitive<FHIRURI>]?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<RestfulCapabilityMode>) {
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							compartment: [FHIRPrimitive<FHIRURI>]? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							interaction: [CapabilityStatementRestInteraction]? = nil,
							mode: FHIRPrimitive<RestfulCapabilityMode>,
							modifierExtension: [Extension]? = nil,
							operation: [CapabilityStatementRestOperation]? = nil,
							resource: [CapabilityStatementRestResource]? = nil,
							searchParam: [CapabilityStatementRestResourceSearchParam]? = nil,
							security: CapabilityStatementRestSecurity? = nil)
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
		self.security = security
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
		case security
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compartment = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .compartment, auxiliaryKey: ._compartment)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.interaction = try [CapabilityStatementRestInteraction](from: _container, forKeyIfPresent: .interaction)
		self.mode = try FHIRPrimitive<RestfulCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.operation = try [CapabilityStatementRestOperation](from: _container, forKeyIfPresent: .operation)
		self.resource = try [CapabilityStatementRestResource](from: _container, forKeyIfPresent: .resource)
		self.searchParam = try [CapabilityStatementRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.security = try CapabilityStatementRestSecurity(from: _container, forKeyIfPresent: .security)
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
		try security?.encode(on: &_container, forKey: .security)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementRest else {
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
		    && security == _other.security
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
		hasher.combine(security)
	}
}

/**
 What operations are supported?.
 
 A specification of restful operations supported by the system.
 */
open class CapabilityStatementRestInteraction: BackboneElement {
	
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
		guard let _other = _other as? CapabilityStatementRestInteraction else {
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
 Definition of an operation or a custom query.
 
 Definition of an operation or a named query together with its parameters and their meaning and type.
 */
open class CapabilityStatementRestOperation: BackboneElement {
	
	/// Name by which the operation/query is invoked
	public var name: FHIRPrimitive<FHIRString>
	
	/// The defined operation/query
	public var definition: Reference
	
	/// Designated initializer taking all required properties
	public init(definition: Reference, name: FHIRPrimitive<FHIRString>) {
		self.definition = definition
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>)
	{
		self.init(definition: definition, name: name)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try Reference(from: _container, forKey: .definition)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition.encode(on: &_container, forKey: .definition)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementRestOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(name)
	}
}

/**
 Resource served on the REST interface.
 
 A specification of the restful capabilities of the solution for a specific resource type.
 */
open class CapabilityStatementRestResource: BackboneElement {
	
	/// A type of resource exposed via the restful interface.
	public var type: FHIRPrimitive<ResourceType>
	
	/// Base System profile for all uses of resource
	public var profile: Reference?
	
	/// Additional information about the use of the resource type
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatementRestResourceInteraction]
	
	/// This field is set to no-version to specify that the system does not support (server) or use (client) versioning
	/// for this resource type. If this has some other value, the server must at least correctly track and populate the
	/// versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the
	/// versioning features, including using e-tags for version integrity in the API.
	public var versioning: FHIRPrimitive<ResourceVersionPolicy>?
	
	/// Whether vRead can return past versions
	public var readHistory: FHIRPrimitive<FHIRBool>?
	
	/// If update can commit to a new identity
	public var updateCreate: FHIRPrimitive<FHIRBool>?
	
	/// If allows/uses conditional create
	public var conditionalCreate: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional read.
	public var conditionalRead: FHIRPrimitive<ConditionalReadStatus>?
	
	/// If allows/uses conditional update
	public var conditionalUpdate: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional delete.
	public var conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>?
	
	/// A set of flags that defines how references are supported.
	public var referencePolicy: [FHIRPrimitive<ReferenceHandlingPolicy>]?
	
	/// _include values supported by the server
	public var searchInclude: [FHIRPrimitive<FHIRString>]?
	
	/// _revinclude values supported by the server
	public var searchRevInclude: [FHIRPrimitive<FHIRString>]?
	
	/// Search parameters supported by implementation
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Designated initializer taking all required properties
	public init(interaction: [CapabilityStatementRestResourceInteraction], type: FHIRPrimitive<ResourceType>) {
		self.interaction = interaction
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							conditionalCreate: FHIRPrimitive<FHIRBool>? = nil,
							conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>? = nil,
							conditionalRead: FHIRPrimitive<ConditionalReadStatus>? = nil,
							conditionalUpdate: FHIRPrimitive<FHIRBool>? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							interaction: [CapabilityStatementRestResourceInteraction],
							modifierExtension: [Extension]? = nil,
							profile: Reference? = nil,
							readHistory: FHIRPrimitive<FHIRBool>? = nil,
							referencePolicy: [FHIRPrimitive<ReferenceHandlingPolicy>]? = nil,
							searchInclude: [FHIRPrimitive<FHIRString>]? = nil,
							searchParam: [CapabilityStatementRestResourceSearchParam]? = nil,
							searchRevInclude: [FHIRPrimitive<FHIRString>]? = nil,
							type: FHIRPrimitive<ResourceType>,
							updateCreate: FHIRPrimitive<FHIRBool>? = nil,
							versioning: FHIRPrimitive<ResourceVersionPolicy>? = nil)
	{
		self.init(interaction: interaction, type: type)
		self.conditionalCreate = conditionalCreate
		self.conditionalDelete = conditionalDelete
		self.conditionalRead = conditionalRead
		self.conditionalUpdate = conditionalUpdate
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.readHistory = readHistory
		self.referencePolicy = referencePolicy
		self.searchInclude = searchInclude
		self.searchParam = searchParam
		self.searchRevInclude = searchRevInclude
		self.updateCreate = updateCreate
		self.versioning = versioning
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conditionalCreate; case _conditionalCreate
		case conditionalDelete; case _conditionalDelete
		case conditionalRead; case _conditionalRead
		case conditionalUpdate; case _conditionalUpdate
		case documentation; case _documentation
		case interaction
		case profile
		case readHistory; case _readHistory
		case referencePolicy; case _referencePolicy
		case searchInclude; case _searchInclude
		case searchParam
		case searchRevInclude; case _searchRevInclude
		case type; case _type
		case updateCreate; case _updateCreate
		case versioning; case _versioning
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.conditionalCreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalCreate, auxiliaryKey: ._conditionalCreate)
		self.conditionalDelete = try FHIRPrimitive<ConditionalDeleteStatus>(from: _container, forKeyIfPresent: .conditionalDelete, auxiliaryKey: ._conditionalDelete)
		self.conditionalRead = try FHIRPrimitive<ConditionalReadStatus>(from: _container, forKeyIfPresent: .conditionalRead, auxiliaryKey: ._conditionalRead)
		self.conditionalUpdate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.interaction = try [CapabilityStatementRestResourceInteraction](from: _container, forKey: .interaction)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.readHistory = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readHistory, auxiliaryKey: ._readHistory)
		self.referencePolicy = try [FHIRPrimitive<ReferenceHandlingPolicy>](from: _container, forKeyIfPresent: .referencePolicy, auxiliaryKey: ._referencePolicy)
		self.searchInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchInclude, auxiliaryKey: ._searchInclude)
		self.searchParam = try [CapabilityStatementRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.searchRevInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchRevInclude, auxiliaryKey: ._searchRevInclude)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.updateCreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .updateCreate, auxiliaryKey: ._updateCreate)
		self.versioning = try FHIRPrimitive<ResourceVersionPolicy>(from: _container, forKeyIfPresent: .versioning, auxiliaryKey: ._versioning)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try conditionalCreate?.encode(on: &_container, forKey: .conditionalCreate, auxiliaryKey: ._conditionalCreate)
		try conditionalDelete?.encode(on: &_container, forKey: .conditionalDelete, auxiliaryKey: ._conditionalDelete)
		try conditionalRead?.encode(on: &_container, forKey: .conditionalRead, auxiliaryKey: ._conditionalRead)
		try conditionalUpdate?.encode(on: &_container, forKey: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try interaction.encode(on: &_container, forKey: .interaction)
		try profile?.encode(on: &_container, forKey: .profile)
		try readHistory?.encode(on: &_container, forKey: .readHistory, auxiliaryKey: ._readHistory)
		try referencePolicy?.encode(on: &_container, forKey: .referencePolicy, auxiliaryKey: ._referencePolicy)
		try searchInclude?.encode(on: &_container, forKey: .searchInclude, auxiliaryKey: ._searchInclude)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try searchRevInclude?.encode(on: &_container, forKey: .searchRevInclude, auxiliaryKey: ._searchRevInclude)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try updateCreate?.encode(on: &_container, forKey: .updateCreate, auxiliaryKey: ._updateCreate)
		try versioning?.encode(on: &_container, forKey: .versioning, auxiliaryKey: ._versioning)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementRestResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return conditionalCreate == _other.conditionalCreate
		    && conditionalDelete == _other.conditionalDelete
		    && conditionalRead == _other.conditionalRead
		    && conditionalUpdate == _other.conditionalUpdate
		    && documentation == _other.documentation
		    && interaction == _other.interaction
		    && profile == _other.profile
		    && readHistory == _other.readHistory
		    && referencePolicy == _other.referencePolicy
		    && searchInclude == _other.searchInclude
		    && searchParam == _other.searchParam
		    && searchRevInclude == _other.searchRevInclude
		    && type == _other.type
		    && updateCreate == _other.updateCreate
		    && versioning == _other.versioning
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(conditionalCreate)
		hasher.combine(conditionalDelete)
		hasher.combine(conditionalRead)
		hasher.combine(conditionalUpdate)
		hasher.combine(documentation)
		hasher.combine(interaction)
		hasher.combine(profile)
		hasher.combine(readHistory)
		hasher.combine(referencePolicy)
		hasher.combine(searchInclude)
		hasher.combine(searchParam)
		hasher.combine(searchRevInclude)
		hasher.combine(type)
		hasher.combine(updateCreate)
		hasher.combine(versioning)
	}
}

/**
 What operations are supported?.
 
 Identifies a restful operation supported by the solution.
 */
open class CapabilityStatementRestResourceInteraction: BackboneElement {
	
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
		guard let _other = _other as? CapabilityStatementRestResourceInteraction else {
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
 Search parameters supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
open class CapabilityStatementRestResourceSearchParam: BackboneElement {
	
	/// Name of search parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Source of definition for parameter
	public var definition: FHIRPrimitive<FHIRURI>?
	
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
							definition: FHIRPrimitive<FHIRURI>? = nil,
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
		self.definition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
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
		guard let _other = _other as? CapabilityStatementRestResourceSearchParam else {
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
 Information about security of implementation.
 
 Information about security implementation from an interface perspective - what a client needs to know.
 */
open class CapabilityStatementRestSecurity: BackboneElement {
	
	/// Adds CORS Headers (http://enable-cors.org/)
	public var cors: FHIRPrimitive<FHIRBool>?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates
	public var service: [CodeableConcept]?
	
	/// General description of how security works
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Certificates associated with security profiles
	public var certificate: [CapabilityStatementRestSecurityCertificate]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							certificate: [CapabilityStatementRestSecurityCertificate]? = nil,
							cors: FHIRPrimitive<FHIRBool>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							service: [CodeableConcept]? = nil)
	{
		self.init()
		self.certificate = certificate
		self.cors = cors
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.service = service
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case certificate
		case cors; case _cors
		case description_fhir = "description"; case _description_fhir = "_description"
		case service
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.certificate = try [CapabilityStatementRestSecurityCertificate](from: _container, forKeyIfPresent: .certificate)
		self.cors = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .cors, auxiliaryKey: ._cors)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.service = try [CodeableConcept](from: _container, forKeyIfPresent: .service)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try certificate?.encode(on: &_container, forKey: .certificate)
		try cors?.encode(on: &_container, forKey: .cors, auxiliaryKey: ._cors)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try service?.encode(on: &_container, forKey: .service)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementRestSecurity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return certificate == _other.certificate
		    && cors == _other.cors
		    && description_fhir == _other.description_fhir
		    && service == _other.service
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(certificate)
		hasher.combine(cors)
		hasher.combine(description_fhir)
		hasher.combine(service)
	}
}

/**
 Certificates associated with security profiles.
 */
open class CapabilityStatementRestSecurityCertificate: BackboneElement {
	
	/// Mime type for certificates
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Actual certificate
	public var blob: FHIRPrimitive<Base64Binary>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							blob: FHIRPrimitive<Base64Binary>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.blob = blob
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case blob; case _blob
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.blob = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .blob, auxiliaryKey: ._blob)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try blob?.encode(on: &_container, forKey: .blob, auxiliaryKey: ._blob)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CapabilityStatementRestSecurityCertificate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return blob == _other.blob
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(blob)
		hasher.combine(type)
	}
}

/**
 Software that is covered by this capability statement.
 
 Software that is covered by this capability statement.  It is used when the capability statement describes the
 capabilities of a particular software version, independent of an installation.
 */
open class CapabilityStatementSoftware: BackboneElement {
	
	/// A name the software is known by
	public var name: FHIRPrimitive<FHIRString>
	
	/// Version covered by this statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Date this version released
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
		guard let _other = _other as? CapabilityStatementSoftware else {
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
