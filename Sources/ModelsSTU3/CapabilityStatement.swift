//
//  CapabilityStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement)
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
 A statement of system capabilities.
 
 A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server that may be used as a statement of
 actual server functionality or a statement of required or desired server implementation.
 */
public struct CapabilityStatement: DomainResource {
	
	public static let resourceType: ResourceType = .capabilityStatement
	
	/// A code that indicates whether the application accepts unknown elements or extensions when reading resources.
	public var acceptUnknown: FHIRPrimitive<UnknownContentCode>
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Natural language description of the capability statement
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Document definition
	public var document: [CapabilityStatementDocument]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version the system uses
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// formats supported (xml | json | ttl | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If this describes a specific instance
	public var implementation: CapabilityStatementImplementation?
	
	/// Implementation guides supported
	public var implementationGuide: [FHIRPrimitive<FHIRURI>]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Canonical URL of another capability statement this implements
	public var instantiates: [FHIRPrimitive<FHIRURI>]?
	
	/// Intended jurisdiction for capability statement (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: FHIRPrimitive<CapabilityStatementKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// If messaging is supported
	public var messaging: [CapabilityStatementMessaging]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this capability statement (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Patch formats supported
	public var patchFormat: [FHIRPrimitive<FHIRString>]?
	
	/// Profiles for use cases supported
	public var profile: [Reference]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this capability statement is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// If the endpoint is a RESTful one
	public var rest: [CapabilityStatementRest]?
	
	/// Software that is covered by this capability statement
	public var software: CapabilityStatementSoftware?
	
	/// The status of this capability statement. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this capability statement (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Logical URI to reference this capability statement (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the capability statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
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
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.acceptUnknown = acceptUnknown
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.document = document
		self.experimental = experimental
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.format = format
		self.id = id
		self.implementation = implementation
		self.implementationGuide = implementationGuide
		self.implicitRules = implicitRules
		self.instantiates = instantiates
		self.jurisdiction = jurisdiction
		self.kind = kind
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
		self.status = status
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case acceptUnknown; case _acceptUnknown
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case document
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case format; case _format
		case id; case _id
		case implementation
		case implementationGuide; case _implementationGuide
		case implicitRules; case _implicitRules
		case instantiates; case _instantiates
		case jurisdiction
		case kind; case _kind
		case language; case _language
		case messaging
		case meta
		case modifierExtension
		case name; case _name
		case patchFormat; case _patchFormat
		case profile
		case publisher; case _publisher
		case purpose; case _purpose
		case rest
		case software
		case status; case _status
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
		self.acceptUnknown = try FHIRPrimitive<UnknownContentCode>(from: _container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.document = try [CapabilityStatementDocument](from: _container, forKeyIfPresent: .document)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implementation = try CapabilityStatementImplementation(from: _container, forKeyIfPresent: .implementation)
		self.implementationGuide = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .implementationGuide, auxiliaryKey: ._implementationGuide)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiates = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiates, auxiliaryKey: ._instantiates)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<CapabilityStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.messaging = try [CapabilityStatementMessaging](from: _container, forKeyIfPresent: .messaging)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.patchFormat = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .patchFormat, auxiliaryKey: ._patchFormat)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.rest = try [CapabilityStatementRest](from: _container, forKeyIfPresent: .rest)
		self.software = try CapabilityStatementSoftware(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try acceptUnknown.encode(on: &_container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try document?.encode(on: &_container, forKey: .document)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try format.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try implementationGuide?.encode(on: &_container, forKey: .implementationGuide, auxiliaryKey: ._implementationGuide)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiates?.encode(on: &_container, forKey: .instantiates, auxiliaryKey: ._instantiates)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try messaging?.encode(on: &_container, forKey: .messaging)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try patchFormat?.encode(on: &_container, forKey: .patchFormat, auxiliaryKey: ._patchFormat)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try rest?.encode(on: &_container, forKey: .rest)
		try software?.encode(on: &_container, forKey: .software)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Document definition.
 
 A document definition.
 */
public struct CapabilityStatementDocument: BackboneElement {
	
	/// Description of document support
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Mode of this document declaration - whether an application is a producer or consumer.
	public var mode: FHIRPrimitive<DocumentMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Constraint on a resource used in the document
	public var profile: Reference
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<DocumentMode>,
		modifierExtension: [Extension]? = nil,
		profile: Reference
	) {
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case profile
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<DocumentMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try Reference(from: _container, forKey: .profile)
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
		try profile.encode(on: &_container, forKey: .profile)
	}
}

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the capability statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
public struct CapabilityStatementImplementation: BackboneElement {
	
	/// Describes this specific instance
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Base URL for the installation
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case url; case _url
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
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 If messaging is supported.
 
 A description of the messaging capabilities of the solution.
 */
public struct CapabilityStatementMessaging: BackboneElement {
	
	/// Messaging interface behavior details
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Where messages should be sent
	public var endpoint: [CapabilityStatementMessagingEndpoint]?
	
	/// Declare support for this event
	public var event: [CapabilityStatementMessagingEvent]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reliable Message Cache Length (min)
	public var reliableCache: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Messages supported by this system
	public var supportedMessage: [CapabilityStatementMessagingSupportedMessage]?
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [CapabilityStatementMessagingEndpoint]? = nil,
		event: [CapabilityStatementMessagingEvent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reliableCache: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		supportedMessage: [CapabilityStatementMessagingSupportedMessage]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reliableCache; case _reliableCache
		case supportedMessage
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.endpoint = try [CapabilityStatementMessagingEndpoint](from: _container, forKeyIfPresent: .endpoint)
		self.event = try [CapabilityStatementMessagingEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reliableCache = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .reliableCache, auxiliaryKey: ._reliableCache)
		self.supportedMessage = try [CapabilityStatementMessagingSupportedMessage](from: _container, forKeyIfPresent: .supportedMessage)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reliableCache?.encode(on: &_container, forKey: .reliableCache, auxiliaryKey: ._reliableCache)
		try supportedMessage?.encode(on: &_container, forKey: .supportedMessage)
	}
}

/**
 Where messages should be sent.
 
 An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
public struct CapabilityStatementMessagingEndpoint: BackboneElement {
	
	/// Network address or identifier of the end-point
	public var address: FHIRPrimitive<FHIRURI>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// http | ftp | mllp +
	public var `protocol`: Coding
	
	/// Designated initializer
	public init(
		address: FHIRPrimitive<FHIRURI>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		`protocol`: Coding
	) {
		self.address = address
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.`protocol` = `protocol`
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case address; case _address
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case `protocol` = "protocol"
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.address = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .address, auxiliaryKey: ._address)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.`protocol` = try Coding(from: _container, forKey: .`protocol`)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try address.encode(on: &_container, forKey: .address, auxiliaryKey: ._address)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try `protocol`.encode(on: &_container, forKey: .`protocol`)
	}
}

/**
 Declare support for this event.
 
 A description of the solution's support for an event at this end-point.
 */
public struct CapabilityStatementMessagingEvent: BackboneElement {
	
	/// The impact of the content of the message.
	public var category: FHIRPrimitive<MessageSignificanceCategory>?
	
	/// Event type
	public var code: Coding
	
	/// Endpoint-specific event documentation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// A resource associated with the event.  This is the resource that defines the event.
	public var focus: FHIRPrimitive<ResourceType>
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The mode of this event declaration - whether an application is a sender or receiver.
	public var mode: FHIRPrimitive<EventCapabilityMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Profile that describes the request
	public var request: Reference
	
	/// Profile that describes the response
	public var response: Reference
	
	/// Designated initializer
	public init(
		category: FHIRPrimitive<MessageSignificanceCategory>? = nil,
		code: Coding,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		focus: FHIRPrimitive<ResourceType>,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<EventCapabilityMode>,
		modifierExtension: [Extension]? = nil,
		request: Reference,
		response: Reference
	) {
		self.category = category
		self.code = code
		self.documentation = documentation
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.request = request
		self.response = response
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category; case _category
		case code
		case documentation; case _documentation
		case `extension` = "extension"
		case focus; case _focus
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case request
		case response
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try FHIRPrimitive<MessageSignificanceCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.code = try Coding(from: _container, forKey: .code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try FHIRPrimitive<ResourceType>(from: _container, forKey: .focus, auxiliaryKey: ._focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<EventCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.request = try Reference(from: _container, forKey: .request)
		self.response = try Reference(from: _container, forKey: .response)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try code.encode(on: &_container, forKey: .code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus.encode(on: &_container, forKey: .focus, auxiliaryKey: ._focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try request.encode(on: &_container, forKey: .request)
		try response.encode(on: &_container, forKey: .response)
	}
}

/**
 Messages supported by this system.
 
 References to message definitions for messages this system can send or receive.
 */
public struct CapabilityStatementMessagingSupportedMessage: BackboneElement {
	
	/// Message supported by this system
	public var definition: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The mode of this event declaration - whether application is sender or receiver.
	public var mode: FHIRPrimitive<EventCapabilityMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		definition: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<EventCapabilityMode>,
		modifierExtension: [Extension]? = nil
	) {
		self.definition = definition
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try Reference(from: _container, forKey: .definition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<EventCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition.encode(on: &_container, forKey: .definition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 If the endpoint is a RESTful one.
 
 A definition of the restful capabilities of the solution, if any.
 */
public struct CapabilityStatementRest: BackboneElement {
	
	/// Compartments served/used by system
	public var compartment: [FHIRPrimitive<FHIRURI>]?
	
	/// General description of implementation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatementRestInteraction]?
	
	/// Identifies whether this portion of the statement is describing the ability to initiate or receive restful
	/// operations.
	public var mode: FHIRPrimitive<RestfulCapabilityMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Definition of an operation or a custom query
	public var operation: [CapabilityStatementRestOperation]?
	
	/// Resource served on the REST interface
	public var resource: [CapabilityStatementRestResource]?
	
	/// Search parameters for searching all resources
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Information about security of implementation
	public var security: CapabilityStatementRestSecurity?
	
	/// Designated initializer
	public init(
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
		security: CapabilityStatementRestSecurity? = nil
	) {
		self.compartment = compartment
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.mode = mode
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
		case `extension` = "extension"
		case id; case _id
		case interaction
		case mode; case _mode
		case modifierExtension
		case operation
		case resource
		case searchParam
		case security
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.compartment = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .compartment, auxiliaryKey: ._compartment)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interaction = try [CapabilityStatementRestInteraction](from: _container, forKeyIfPresent: .interaction)
		self.mode = try FHIRPrimitive<RestfulCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try [CapabilityStatementRestOperation](from: _container, forKeyIfPresent: .operation)
		self.resource = try [CapabilityStatementRestResource](from: _container, forKeyIfPresent: .resource)
		self.searchParam = try [CapabilityStatementRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.security = try CapabilityStatementRestSecurity(from: _container, forKeyIfPresent: .security)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try compartment?.encode(on: &_container, forKey: .compartment, auxiliaryKey: ._compartment)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation?.encode(on: &_container, forKey: .operation)
		try resource?.encode(on: &_container, forKey: .resource)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try security?.encode(on: &_container, forKey: .security)
	}
}

/**
 What operations are supported?.
 
 A specification of restful operations supported by the system.
 */
public struct CapabilityStatementRestInteraction: BackboneElement {
	
	/// A coded identifier of the operation, supported by the system.
	/// Restricted to: ['transaction', 'batch', 'search-system', 'history-system']
	public var code: FHIRPrimitive<FHIRRestfulInteractions>
	
	/// Anything special about operation behavior
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRRestfulInteractions>,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRRestfulInteractions>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Definition of an operation or a custom query.
 
 Definition of an operation or a named query together with its parameters and their meaning and type.
 */
public struct CapabilityStatementRestOperation: BackboneElement {
	
	/// The defined operation/query
	public var definition: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name by which the operation/query is invoked
	public var name: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		definition: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>
	) {
		self.definition = definition
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try Reference(from: _container, forKey: .definition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition.encode(on: &_container, forKey: .definition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}

/**
 Resource served on the REST interface.
 
 A specification of the restful capabilities of the solution for a specific resource type.
 */
public struct CapabilityStatementRestResource: BackboneElement {
	
	/// If allows/uses conditional create
	public var conditionalCreate: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional delete.
	public var conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>?
	
	/// A code that indicates how the server supports conditional read.
	public var conditionalRead: FHIRPrimitive<ConditionalReadStatus>?
	
	/// If allows/uses conditional update
	public var conditionalUpdate: FHIRPrimitive<FHIRBool>?
	
	/// Additional information about the use of the resource type
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatementRestResourceInteraction]
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Base System profile for all uses of resource
	public var profile: Reference?
	
	/// Whether vRead can return past versions
	public var readHistory: FHIRPrimitive<FHIRBool>?
	
	/// A set of flags that defines how references are supported.
	public var referencePolicy: [FHIRPrimitive<ReferenceHandlingPolicy>]?
	
	/// _include values supported by the server
	public var searchInclude: [FHIRPrimitive<FHIRString>]?
	
	/// Search parameters supported by implementation
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// _revinclude values supported by the server
	public var searchRevInclude: [FHIRPrimitive<FHIRString>]?
	
	/// A type of resource exposed via the restful interface.
	public var type: FHIRPrimitive<ResourceType>
	
	/// If update can commit to a new identity
	public var updateCreate: FHIRPrimitive<FHIRBool>?
	
	/// This field is set to no-version to specify that the system does not support (server) or use (client) versioning
	/// for this resource type. If this has some other value, the server must at least correctly track and populate the
	/// versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the
	/// versioning features, including using e-tags for version integrity in the API.
	public var versioning: FHIRPrimitive<ResourceVersionPolicy>?
	
	/// Designated initializer
	public init(
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
		versioning: FHIRPrimitive<ResourceVersionPolicy>? = nil
	) {
		self.conditionalCreate = conditionalCreate
		self.conditionalDelete = conditionalDelete
		self.conditionalRead = conditionalRead
		self.conditionalUpdate = conditionalUpdate
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.readHistory = readHistory
		self.referencePolicy = referencePolicy
		self.searchInclude = searchInclude
		self.searchParam = searchParam
		self.searchRevInclude = searchRevInclude
		self.type = type
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
		case `extension` = "extension"
		case id; case _id
		case interaction
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.conditionalCreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalCreate, auxiliaryKey: ._conditionalCreate)
		self.conditionalDelete = try FHIRPrimitive<ConditionalDeleteStatus>(from: _container, forKeyIfPresent: .conditionalDelete, auxiliaryKey: ._conditionalDelete)
		self.conditionalRead = try FHIRPrimitive<ConditionalReadStatus>(from: _container, forKeyIfPresent: .conditionalRead, auxiliaryKey: ._conditionalRead)
		self.conditionalUpdate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interaction = try [CapabilityStatementRestResourceInteraction](from: _container, forKey: .interaction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.readHistory = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readHistory, auxiliaryKey: ._readHistory)
		self.referencePolicy = try [FHIRPrimitive<ReferenceHandlingPolicy>](from: _container, forKeyIfPresent: .referencePolicy, auxiliaryKey: ._referencePolicy)
		self.searchInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchInclude, auxiliaryKey: ._searchInclude)
		self.searchParam = try [CapabilityStatementRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.searchRevInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchRevInclude, auxiliaryKey: ._searchRevInclude)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.updateCreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .updateCreate, auxiliaryKey: ._updateCreate)
		self.versioning = try FHIRPrimitive<ResourceVersionPolicy>(from: _container, forKeyIfPresent: .versioning, auxiliaryKey: ._versioning)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try conditionalCreate?.encode(on: &_container, forKey: .conditionalCreate, auxiliaryKey: ._conditionalCreate)
		try conditionalDelete?.encode(on: &_container, forKey: .conditionalDelete, auxiliaryKey: ._conditionalDelete)
		try conditionalRead?.encode(on: &_container, forKey: .conditionalRead, auxiliaryKey: ._conditionalRead)
		try conditionalUpdate?.encode(on: &_container, forKey: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try interaction.encode(on: &_container, forKey: .interaction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile?.encode(on: &_container, forKey: .profile)
		try readHistory?.encode(on: &_container, forKey: .readHistory, auxiliaryKey: ._readHistory)
		try referencePolicy?.encode(on: &_container, forKey: .referencePolicy, auxiliaryKey: ._referencePolicy)
		try searchInclude?.encode(on: &_container, forKey: .searchInclude, auxiliaryKey: ._searchInclude)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try searchRevInclude?.encode(on: &_container, forKey: .searchRevInclude, auxiliaryKey: ._searchRevInclude)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try updateCreate?.encode(on: &_container, forKey: .updateCreate, auxiliaryKey: ._updateCreate)
		try versioning?.encode(on: &_container, forKey: .versioning, auxiliaryKey: ._versioning)
	}
}

/**
 What operations are supported?.
 
 Identifies a restful operation supported by the solution.
 */
public struct CapabilityStatementRestResourceInteraction: BackboneElement {
	
	/// Coded identifier of the operation, supported by the system resource.
	/// Restricted to: ['read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create',
	/// 'search-type']
	public var code: FHIRPrimitive<FHIRRestfulInteractions>
	
	/// Anything special about operation behavior
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRRestfulInteractions>,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRRestfulInteractions>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Search parameters supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
public struct CapabilityStatementRestResourceSearchParam: BackboneElement {
	
	/// Source of definition for parameter
	public var definition: FHIRPrimitive<FHIRURI>?
	
	/// Server-specific usage
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of search parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Designated initializer
	public init(
		definition: FHIRPrimitive<FHIRURI>? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		type: FHIRPrimitive<SearchParamType>
	) {
		self.definition = definition
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case documentation; case _documentation
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
		self.definition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Information about security of implementation.
 
 Information about security implementation from an interface perspective - what a client needs to know.
 */
public struct CapabilityStatementRestSecurity: BackboneElement {
	
	/// Certificates associated with security profiles
	public var certificate: [CapabilityStatementRestSecurityCertificate]?
	
	/// Adds CORS Headers (http://enable-cors.org/)
	public var cors: FHIRPrimitive<FHIRBool>?
	
	/// General description of how security works
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates
	public var service: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		certificate: [CapabilityStatementRestSecurityCertificate]? = nil,
		cors: FHIRPrimitive<FHIRBool>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		service: [CodeableConcept]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case service
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.certificate = try [CapabilityStatementRestSecurityCertificate](from: _container, forKeyIfPresent: .certificate)
		self.cors = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .cors, auxiliaryKey: ._cors)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.service = try [CodeableConcept](from: _container, forKeyIfPresent: .service)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try certificate?.encode(on: &_container, forKey: .certificate)
		try cors?.encode(on: &_container, forKey: .cors, auxiliaryKey: ._cors)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try service?.encode(on: &_container, forKey: .service)
	}
}

/**
 Certificates associated with security profiles.
 */
public struct CapabilityStatementRestSecurityCertificate: BackboneElement {
	
	/// Actual certificate
	public var blob: FHIRPrimitive<Base64Binary>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Mime type for certificates
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		blob: FHIRPrimitive<Base64Binary>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<FHIRString>? = nil
	) {
		self.blob = blob
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case blob; case _blob
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.blob = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .blob, auxiliaryKey: ._blob)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try blob?.encode(on: &_container, forKey: .blob, auxiliaryKey: ._blob)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Software that is covered by this capability statement.
 
 Software that is covered by this capability statement.  It is used when the capability statement describes the
 capabilities of a particular software version, independent of an installation.
 */
public struct CapabilityStatementSoftware: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A name the software is known by
	public var name: FHIRPrimitive<FHIRString>
	
	/// Date this version released
	public var releaseDate: FHIRPrimitive<DateTime>?
	
	/// Version covered by this statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		releaseDate: FHIRPrimitive<DateTime>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.releaseDate = releaseDate
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case releaseDate; case _releaseDate
		case version; case _version
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
		self.releaseDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .releaseDate, auxiliaryKey: ._releaseDate)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try releaseDate?.encode(on: &_container, forKey: .releaseDate, auxiliaryKey: ._releaseDate)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}
