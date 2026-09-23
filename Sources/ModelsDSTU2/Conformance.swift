//
//  Conformance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Conformance)
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
 A conformance statement.
 
 A conformance statement is a set of capabilities of a FHIR Server that may be used as a statement of actual server
 functionality or a statement of required or desired server implementation.
 */
public struct Conformance: DomainResource {
	
	public static let resourceType: ResourceType = .conformance
	
	/// A code that indicates whether the application accepts unknown elements or extensions when reading resources.
	/// Restricted to: ['no', 'extensions', 'elements', 'both']
	public var acceptUnknown: FHIRPrimitive<UnknownContentCode>
	
	/// Contact details of the publisher
	public var contact: [ConformanceContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Publication Date(/time)
	public var date: FHIRPrimitive<DateTime>
	
	/// Human description of the conformance statement
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Document definition
	public var document: [ConformanceDocument]?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version the system uses
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// formats supported (xml | json | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If this describes a specific instance
	public var implementation: ConformanceImplementation?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind not instance of software) or a class of implementation (e.g. a desired purchase).
	/// Restricted to: ['instance', 'capability', 'requirements']
	public var kind: FHIRPrimitive<ConformanceStatementKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// If messaging is supported
	public var messaging: [ConformanceMessaging]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this conformance statement
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Profiles for use cases supported
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why is this needed?
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// If the endpoint is a RESTful one
	public var rest: [ConformanceRest]?
	
	/// Software that is covered by this conformance statement
	public var software: ConformanceSoftware?
	
	/// The status of this conformance statement.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical uri to reference this statement
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Logical id for this version of the statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		acceptUnknown: FHIRPrimitive<UnknownContentCode>,
		contact: [ConformanceContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		document: [ConformanceDocument]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: FHIRPrimitive<FHIRString>,
		format: [FHIRPrimitive<FHIRString>],
		id: FHIRPrimitive<FHIRString>? = nil,
		implementation: ConformanceImplementation? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		kind: FHIRPrimitive<ConformanceStatementKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		messaging: [ConformanceMessaging]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		profile: [Reference]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		rest: [ConformanceRest]? = nil,
		software: ConformanceSoftware? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>? = nil,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
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
		self.implicitRules = implicitRules
		self.kind = kind
		self.language = language
		self.messaging = messaging
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.profile = profile
		self.publisher = publisher
		self.requirements = requirements
		self.rest = rest
		self.software = software
		self.status = status
		self.text = text
		self.url = url
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
		case implicitRules; case _implicitRules
		case kind; case _kind
		case language; case _language
		case messaging
		case meta
		case modifierExtension
		case name; case _name
		case profile
		case publisher; case _publisher
		case requirements; case _requirements
		case rest
		case software
		case status; case _status
		case text
		case url; case _url
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.acceptUnknown = try FHIRPrimitive<UnknownContentCode>(from: _container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		self.contact = try [ConformanceContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.document = try [ConformanceDocument](from: _container, forKeyIfPresent: .document)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implementation = try ConformanceImplementation(from: _container, forKeyIfPresent: .implementation)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.kind = try FHIRPrimitive<ConformanceStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.messaging = try [ConformanceMessaging](from: _container, forKeyIfPresent: .messaging)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.rest = try [ConformanceRest](from: _container, forKeyIfPresent: .rest)
		self.software = try ConformanceSoftware(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try messaging?.encode(on: &_container, forKey: .messaging)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try rest?.encode(on: &_container, forKey: .rest)
		try software?.encode(on: &_container, forKey: .software)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public struct ConformanceContact: BackboneElement {
	
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
 Document definition.
 
 A document definition.
 */
public struct ConformanceDocument: BackboneElement {
	
	/// Description of document support
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Mode of this document declaration - whether application is producer or consumer.
	/// Restricted to: ['producer', 'consumer']
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
 
 Identifies a specific implementation instance that is described by the conformance statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
public struct ConformanceImplementation: BackboneElement {
	
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
public struct ConformanceMessaging: BackboneElement {
	
	/// Messaging interface behavior details
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// A messaging service end-point
	public var endpoint: [ConformanceMessagingEndpoint]?
	
	/// Declare support for this event
	public var event: [ConformanceMessagingEvent]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reliable Message Cache Length (min)
	public var reliableCache: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [ConformanceMessagingEndpoint]? = nil,
		event: [ConformanceMessagingEvent],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reliableCache: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
		self.documentation = documentation
		self.endpoint = endpoint
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reliableCache = reliableCache
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
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.endpoint = try [ConformanceMessagingEndpoint](from: _container, forKeyIfPresent: .endpoint)
		self.event = try [ConformanceMessagingEvent](from: _container, forKey: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reliableCache = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .reliableCache, auxiliaryKey: ._reliableCache)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try event.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reliableCache?.encode(on: &_container, forKey: .reliableCache, auxiliaryKey: ._reliableCache)
	}
}

/**
 A messaging service end-point.
 
 An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
public struct ConformanceMessagingEndpoint: BackboneElement {
	
	/// Address of end-point
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
public struct ConformanceMessagingEvent: BackboneElement {
	
	/// The impact of the content of the message.
	/// Restricted to: ['Consequence', 'Currency', 'Notification']
	public var category: FHIRPrimitive<MessageSignificanceCategory>?
	
	/// Event type
	public var code: Coding
	
	/// Endpoint-specific event documentation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// A resource associated with the event.  This is the resource that defines the event.
	/// Restricted to: ['Account', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic',
	/// 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'Communication',
	/// 'CommunicationRequest', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Contract', 'Coverage',
	/// 'DataElement', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest',
	/// 'DeviceUseStatement', 'DiagnosticOrder', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference',
	/// 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'EnrollmentRequest',
	/// 'EnrollmentResponse', 'EpisodeOfCare', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group',
	/// 'HealthcareService', 'ImagingObjectSelection', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation',
	/// 'ImplementationGuide', 'List', 'Location', 'Media', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'NamingSystem',
	/// 'NutritionOrder', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Order', 'OrderResponse',
	/// 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'Practitioner',
	/// 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'Resource', 'RiskAssessment', 'Schedule',
	/// 'SearchParameter', 'Slot', 'Specimen', 'StructureDefinition', 'Subscription', 'Substance', 'SupplyDelivery',
	/// 'SupplyRequest', 'TestScript', 'ValueSet', 'VisionPrescription']
	public var focus: FHIRPrimitive<ResourceType>
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The mode of this event declaration - whether application is sender or receiver.
	/// Restricted to: ['sender', 'receiver']
	public var mode: FHIRPrimitive<ConformanceEventMode>
	
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
		mode: FHIRPrimitive<ConformanceEventMode>,
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
		self.mode = try FHIRPrimitive<ConformanceEventMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
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
 If the endpoint is a RESTful one.
 
 A definition of the restful capabilities of the solution, if any.
 */
public struct ConformanceRest: BackboneElement {
	
	/// Compartments served/used by system
	public var compartment: [FHIRPrimitive<FHIRURI>]?
	
	/// General description of implementation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [ConformanceRestInteraction]?
	
	/// Identifies whether this portion of the statement is describing ability to initiate or receive restful
	/// operations.
	/// Restricted to: ['client', 'server']
	public var mode: FHIRPrimitive<RestfulConformanceMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Definition of an operation or a custom query
	public var operation: [ConformanceRestOperation]?
	
	/// Resource served on the REST interface
	public var resource: [ConformanceRestResource]
	
	/// Search params for searching all resources
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// Information about security of implementation
	public var security: ConformanceRestSecurity?
	
	/// A code that indicates how transactions are supported.
	/// Restricted to: ['not-supported', 'batch', 'transaction', 'both']
	public var transactionMode: FHIRPrimitive<TransactionMode>?
	
	/// Designated initializer
	public init(
		compartment: [FHIRPrimitive<FHIRURI>]? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		interaction: [ConformanceRestInteraction]? = nil,
		mode: FHIRPrimitive<RestfulConformanceMode>,
		modifierExtension: [Extension]? = nil,
		operation: [ConformanceRestOperation]? = nil,
		resource: [ConformanceRestResource],
		searchParam: [ConformanceRestResourceSearchParam]? = nil,
		security: ConformanceRestSecurity? = nil,
		transactionMode: FHIRPrimitive<TransactionMode>? = nil
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
		self.transactionMode = transactionMode
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
		case transactionMode; case _transactionMode
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
		self.interaction = try [ConformanceRestInteraction](from: _container, forKeyIfPresent: .interaction)
		self.mode = try FHIRPrimitive<RestfulConformanceMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try [ConformanceRestOperation](from: _container, forKeyIfPresent: .operation)
		self.resource = try [ConformanceRestResource](from: _container, forKey: .resource)
		self.searchParam = try [ConformanceRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.security = try ConformanceRestSecurity(from: _container, forKeyIfPresent: .security)
		self.transactionMode = try FHIRPrimitive<TransactionMode>(from: _container, forKeyIfPresent: .transactionMode, auxiliaryKey: ._transactionMode)
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
		try resource.encode(on: &_container, forKey: .resource)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try security?.encode(on: &_container, forKey: .security)
		try transactionMode?.encode(on: &_container, forKey: .transactionMode, auxiliaryKey: ._transactionMode)
	}
}

/**
 What operations are supported?.
 
 A specification of restful operations supported by the system.
 */
public struct ConformanceRestInteraction: BackboneElement {
	
	/// A coded identifier of the operation, supported by the system.
	/// Restricted to: ['transaction', 'search-system', 'history-system']
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
 
 Definition of an operation or a named query and with its parameters and their meaning and type.
 */
public struct ConformanceRestOperation: BackboneElement {
	
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
public struct ConformanceRestResource: BackboneElement {
	
	/// If allows/uses conditional create
	public var conditionalCreate: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional delete.
	/// Restricted to: ['not-supported', 'single', 'multiple']
	public var conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>?
	
	/// If allows/uses conditional update
	public var conditionalUpdate: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [ConformanceRestResourceInteraction]
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Base System profile for all uses of resource
	public var profile: Reference?
	
	/// Whether vRead can return past versions
	public var readHistory: FHIRPrimitive<FHIRBool>?
	
	/// _include values supported by the server
	public var searchInclude: [FHIRPrimitive<FHIRString>]?
	
	/// Search params supported by implementation
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// _revinclude values supported by the server
	public var searchRevInclude: [FHIRPrimitive<FHIRString>]?
	
	/// A type of resource exposed via the restful interface.
	/// Restricted to: ['Account', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic',
	/// 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'Communication',
	/// 'CommunicationRequest', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Contract', 'Coverage',
	/// 'DataElement', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest',
	/// 'DeviceUseStatement', 'DiagnosticOrder', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference',
	/// 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'EnrollmentRequest',
	/// 'EnrollmentResponse', 'EpisodeOfCare', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group',
	/// 'HealthcareService', 'ImagingObjectSelection', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation',
	/// 'ImplementationGuide', 'List', 'Location', 'Media', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'NamingSystem',
	/// 'NutritionOrder', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Order', 'OrderResponse',
	/// 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'Practitioner',
	/// 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'Resource', 'RiskAssessment', 'Schedule',
	/// 'SearchParameter', 'Slot', 'Specimen', 'StructureDefinition', 'Subscription', 'Substance', 'SupplyDelivery',
	/// 'SupplyRequest', 'TestScript', 'ValueSet', 'VisionPrescription']
	public var type: FHIRPrimitive<ResourceType>
	
	/// If update can commit to a new identity
	public var updateCreate: FHIRPrimitive<FHIRBool>?
	
	/// This field is set to no-version to specify that the system does not support (server) or use (client) versioning
	/// for this resource type. If this has some other value, the server must at least correctly track and populate the
	/// versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the
	/// versioning features, including using e-tags for version integrity in the API.
	/// Restricted to: ['no-version', 'versioned', 'versioned-update']
	public var versioning: FHIRPrimitive<ResourceVersionPolicy>?
	
	/// Designated initializer
	public init(
		conditionalCreate: FHIRPrimitive<FHIRBool>? = nil,
		conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>? = nil,
		conditionalUpdate: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		interaction: [ConformanceRestResourceInteraction],
		modifierExtension: [Extension]? = nil,
		profile: Reference? = nil,
		readHistory: FHIRPrimitive<FHIRBool>? = nil,
		searchInclude: [FHIRPrimitive<FHIRString>]? = nil,
		searchParam: [ConformanceRestResourceSearchParam]? = nil,
		searchRevInclude: [FHIRPrimitive<FHIRString>]? = nil,
		type: FHIRPrimitive<ResourceType>,
		updateCreate: FHIRPrimitive<FHIRBool>? = nil,
		versioning: FHIRPrimitive<ResourceVersionPolicy>? = nil
	) {
		self.conditionalCreate = conditionalCreate
		self.conditionalDelete = conditionalDelete
		self.conditionalUpdate = conditionalUpdate
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.readHistory = readHistory
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
		case conditionalUpdate; case _conditionalUpdate
		case `extension` = "extension"
		case id; case _id
		case interaction
		case modifierExtension
		case profile
		case readHistory; case _readHistory
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
		self.conditionalUpdate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interaction = try [ConformanceRestResourceInteraction](from: _container, forKey: .interaction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.readHistory = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readHistory, auxiliaryKey: ._readHistory)
		self.searchInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchInclude, auxiliaryKey: ._searchInclude)
		self.searchParam = try [ConformanceRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
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
		try conditionalUpdate?.encode(on: &_container, forKey: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try interaction.encode(on: &_container, forKey: .interaction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile?.encode(on: &_container, forKey: .profile)
		try readHistory?.encode(on: &_container, forKey: .readHistory, auxiliaryKey: ._readHistory)
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
public struct ConformanceRestResourceInteraction: BackboneElement {
	
	/// Coded identifier of the operation, supported by the system resource.
	/// Restricted to: ['read', 'vread', 'update', 'delete', 'history-instance', 'validate', 'history-type', 'create',
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
 Search params supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
public struct ConformanceRestResourceSearchParam: BackboneElement {
	
	/// Chained names supported
	public var chain: [FHIRPrimitive<FHIRString>]?
	
	/// Source of definition for parameter
	public var definition: FHIRPrimitive<FHIRURI>?
	
	/// Server-specific usage
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A modifier supported for the search parameter.
	/// Restricted to: ['missing', 'exact', 'contains', 'not', 'text', 'in', 'not-in', 'below', 'above', 'type']
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of search parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Types of resource (if a resource is referenced).
	/// Restricted to: ['Account', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic',
	/// 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'Communication',
	/// 'CommunicationRequest', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Contract', 'Coverage',
	/// 'DataElement', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest',
	/// 'DeviceUseStatement', 'DiagnosticOrder', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference',
	/// 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'EnrollmentRequest',
	/// 'EnrollmentResponse', 'EpisodeOfCare', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group',
	/// 'HealthcareService', 'ImagingObjectSelection', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation',
	/// 'ImplementationGuide', 'List', 'Location', 'Media', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'NamingSystem',
	/// 'NutritionOrder', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Order', 'OrderResponse',
	/// 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'Practitioner',
	/// 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'Resource', 'RiskAssessment', 'Schedule',
	/// 'SearchParameter', 'Slot', 'Specimen', 'StructureDefinition', 'Subscription', 'Substance', 'SupplyDelivery',
	/// 'SupplyRequest', 'TestScript', 'ValueSet', 'VisionPrescription']
	public var target: [FHIRPrimitive<ResourceType>]?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	/// Restricted to: ['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri']
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Designated initializer
	public init(
		chain: [FHIRPrimitive<FHIRString>]? = nil,
		definition: FHIRPrimitive<FHIRURI>? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [FHIRPrimitive<SearchModifierCode>]? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		target: [FHIRPrimitive<ResourceType>]? = nil,
		type: FHIRPrimitive<SearchParamType>
	) {
		self.chain = chain
		self.definition = definition
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.name = name
		self.target = target
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chain; case _chain
		case definition; case _definition
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case modifier; case _modifier
		case modifierExtension
		case name; case _name
		case target; case _target
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.chain = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .chain, auxiliaryKey: ._chain)
		self.definition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.target = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try chain?.encode(on: &_container, forKey: .chain, auxiliaryKey: ._chain)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Information about security of implementation.
 
 Information about security implementation from an interface perspective - what a client needs to know.
 */
public struct ConformanceRestSecurity: BackboneElement {
	
	/// Certificates associated with security profiles
	public var certificate: [ConformanceRestSecurityCertificate]?
	
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
		certificate: [ConformanceRestSecurityCertificate]? = nil,
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
		self.certificate = try [ConformanceRestSecurityCertificate](from: _container, forKeyIfPresent: .certificate)
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
public struct ConformanceRestSecurityCertificate: BackboneElement {
	
	/// Actual certificate
	public var blob: FHIRPrimitive<Base64Binary>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Mime type for certificate
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
 Software that is covered by this conformance statement.
 
 Software that is covered by this conformance statement.  It is used when the conformance statement describes the
 capabilities of a particular software version, independent of an installation.
 */
public struct ConformanceSoftware: BackboneElement {
	
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
