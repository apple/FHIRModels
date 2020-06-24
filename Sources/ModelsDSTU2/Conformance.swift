//
//  Conformance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Conformance)
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
 A conformance statement.
 
 A conformance statement is a set of capabilities of a FHIR Server that may be used as a statement of actual server
 functionality or a statement of required or desired server implementation.
 */
open class Conformance: DomainResource {
	
	override open class var resourceType: ResourceType { return .conformance }
	
	/// Logical uri to reference this statement
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Logical id for this version of the statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Informal name for this conformance statement
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of this conformance statement.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [ConformanceContact]?
	
	/// Publication Date(/time)
	public var date: FHIRPrimitive<DateTime>
	
	/// Human description of the conformance statement
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Why is this needed?
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind not instance of software) or a class of implementation (e.g. a desired purchase).
	/// Restricted to: ['instance', 'capability', 'requirements']
	public var kind: FHIRPrimitive<ConformanceStatementKind>
	
	/// Software that is covered by this conformance statement
	public var software: ConformanceSoftware?
	
	/// If this describes a specific instance
	public var implementation: ConformanceImplementation?
	
	/// FHIR Version the system uses
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// A code that indicates whether the application accepts unknown elements or extensions when reading resources.
	/// Restricted to: ['no', 'extensions', 'elements', 'both']
	public var acceptUnknown: FHIRPrimitive<UnknownContentCode>
	
	/// formats supported (xml | json | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Profiles for use cases supported
	public var profile: [Reference]?
	
	/// If the endpoint is a RESTful one
	public var rest: [ConformanceRest]?
	
	/// If messaging is supported
	public var messaging: [ConformanceMessaging]?
	
	/// Document definition
	public var document: [ConformanceDocument]?
	
	/// Designated initializer taking all required properties
	public init(acceptUnknown: FHIRPrimitive<UnknownContentCode>, date: FHIRPrimitive<DateTime>, fhirVersion: FHIRPrimitive<FHIRString>, format: [FHIRPrimitive<FHIRString>], kind: FHIRPrimitive<ConformanceStatementKind>) {
		self.acceptUnknown = acceptUnknown
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(acceptUnknown: acceptUnknown, date: date, fhirVersion: fhirVersion, format: format, kind: kind)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.description_fhir = description_fhir
		self.document = document
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implementation = implementation
		self.implicitRules = implicitRules
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
		case kind; case _kind
		case messaging
		case name; case _name
		case profile
		case publisher; case _publisher
		case requirements; case _requirements
		case rest
		case software
		case status; case _status
		case url; case _url
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.acceptUnknown = try FHIRPrimitive<UnknownContentCode>(from: _container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		self.contact = try [ConformanceContact](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.document = try [ConformanceDocument](from: _container, forKeyIfPresent: .document)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.implementation = try ConformanceImplementation(from: _container, forKeyIfPresent: .implementation)
		self.kind = try FHIRPrimitive<ConformanceStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.messaging = try [ConformanceMessaging](from: _container, forKeyIfPresent: .messaging)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.rest = try [ConformanceRest](from: _container, forKeyIfPresent: .rest)
		self.software = try ConformanceSoftware(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try messaging?.encode(on: &_container, forKey: .messaging)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try rest?.encode(on: &_container, forKey: .rest)
		try software?.encode(on: &_container, forKey: .software)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Conformance else {
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
		    && kind == _other.kind
		    && messaging == _other.messaging
		    && name == _other.name
		    && profile == _other.profile
		    && publisher == _other.publisher
		    && requirements == _other.requirements
		    && rest == _other.rest
		    && software == _other.software
		    && status == _other.status
		    && url == _other.url
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
		hasher.combine(kind)
		hasher.combine(messaging)
		hasher.combine(name)
		hasher.combine(profile)
		hasher.combine(publisher)
		hasher.combine(requirements)
		hasher.combine(rest)
		hasher.combine(software)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class ConformanceContact: BackboneElement {
	
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
		guard let _other = _other as? ConformanceContact else {
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
 Document definition.
 
 A document definition.
 */
open class ConformanceDocument: BackboneElement {
	
	/// Mode of this document declaration - whether application is producer or consumer.
	/// Restricted to: ['producer', 'consumer']
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
		guard let _other = _other as? ConformanceDocument else {
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
 
 Identifies a specific implementation instance that is described by the conformance statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
open class ConformanceImplementation: BackboneElement {
	
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
		guard let _other = _other as? ConformanceImplementation else {
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
open class ConformanceMessaging: BackboneElement {
	
	/// A messaging service end-point
	public var endpoint: [ConformanceMessagingEndpoint]?
	
	/// Reliable Message Cache Length (min)
	public var reliableCache: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Messaging interface behavior details
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Declare support for this event
	public var event: [ConformanceMessagingEvent]
	
	/// Designated initializer taking all required properties
	public init(event: [ConformanceMessagingEvent]) {
		self.event = event
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							endpoint: [ConformanceMessagingEndpoint]? = nil,
							event: [ConformanceMessagingEvent],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reliableCache: FHIRPrimitive<FHIRUnsignedInteger>? = nil)
	{
		self.init(event: event)
		self.documentation = documentation
		self.endpoint = endpoint
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
		case reliableCache; case _reliableCache
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.endpoint = try [ConformanceMessagingEndpoint](from: _container, forKeyIfPresent: .endpoint)
		self.event = try [ConformanceMessagingEvent](from: _container, forKey: .event)
		self.reliableCache = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .reliableCache, auxiliaryKey: ._reliableCache)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try event.encode(on: &_container, forKey: .event)
		try reliableCache?.encode(on: &_container, forKey: .reliableCache, auxiliaryKey: ._reliableCache)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConformanceMessaging else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && endpoint == _other.endpoint
		    && event == _other.event
		    && reliableCache == _other.reliableCache
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(endpoint)
		hasher.combine(event)
		hasher.combine(reliableCache)
	}
}

/**
 A messaging service end-point.
 
 An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
open class ConformanceMessagingEndpoint: BackboneElement {
	
	/// http | ftp | mllp +
	public var `protocol`: Coding
	
	/// Address of end-point
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
		guard let _other = _other as? ConformanceMessagingEndpoint else {
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
open class ConformanceMessagingEvent: BackboneElement {
	
	/// Event type
	public var code: Coding
	
	/// The impact of the content of the message.
	/// Restricted to: ['Consequence', 'Currency', 'Notification']
	public var category: FHIRPrimitive<MessageSignificanceCategory>?
	
	/// The mode of this event declaration - whether application is sender or receiver.
	/// Restricted to: ['sender', 'receiver']
	public var mode: FHIRPrimitive<ConformanceEventMode>
	
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
	
	/// Profile that describes the request
	public var request: Reference
	
	/// Profile that describes the response
	public var response: Reference
	
	/// Endpoint-specific event documentation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: Coding, focus: FHIRPrimitive<ResourceType>, mode: FHIRPrimitive<ConformanceEventMode>, request: Reference, response: Reference) {
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
							mode: FHIRPrimitive<ConformanceEventMode>,
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
		self.mode = try FHIRPrimitive<ConformanceEventMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
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
		guard let _other = _other as? ConformanceMessagingEvent else {
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
 If the endpoint is a RESTful one.
 
 A definition of the restful capabilities of the solution, if any.
 */
open class ConformanceRest: BackboneElement {
	
	/// Identifies whether this portion of the statement is describing ability to initiate or receive restful
	/// operations.
	/// Restricted to: ['client', 'server']
	public var mode: FHIRPrimitive<RestfulConformanceMode>
	
	/// General description of implementation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Information about security of implementation
	public var security: ConformanceRestSecurity?
	
	/// Resource served on the REST interface
	public var resource: [ConformanceRestResource]
	
	/// What operations are supported?
	public var interaction: [ConformanceRestInteraction]?
	
	/// A code that indicates how transactions are supported.
	/// Restricted to: ['not-supported', 'batch', 'transaction', 'both']
	public var transactionMode: FHIRPrimitive<TransactionMode>?
	
	/// Search params for searching all resources
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// Definition of an operation or a custom query
	public var operation: [ConformanceRestOperation]?
	
	/// Compartments served/used by system
	public var compartment: [FHIRPrimitive<FHIRURI>]?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<RestfulConformanceMode>, resource: [ConformanceRestResource]) {
		self.mode = mode
		self.resource = resource
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							transactionMode: FHIRPrimitive<TransactionMode>? = nil)
	{
		self.init(mode: mode, resource: resource)
		self.compartment = compartment
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.searchParam = searchParam
		self.security = security
		self.transactionMode = transactionMode
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
		case transactionMode; case _transactionMode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compartment = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .compartment, auxiliaryKey: ._compartment)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.interaction = try [ConformanceRestInteraction](from: _container, forKeyIfPresent: .interaction)
		self.mode = try FHIRPrimitive<RestfulConformanceMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.operation = try [ConformanceRestOperation](from: _container, forKeyIfPresent: .operation)
		self.resource = try [ConformanceRestResource](from: _container, forKey: .resource)
		self.searchParam = try [ConformanceRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.security = try ConformanceRestSecurity(from: _container, forKeyIfPresent: .security)
		self.transactionMode = try FHIRPrimitive<TransactionMode>(from: _container, forKeyIfPresent: .transactionMode, auxiliaryKey: ._transactionMode)
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
		try resource.encode(on: &_container, forKey: .resource)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try security?.encode(on: &_container, forKey: .security)
		try transactionMode?.encode(on: &_container, forKey: .transactionMode, auxiliaryKey: ._transactionMode)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConformanceRest else {
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
		    && transactionMode == _other.transactionMode
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
		hasher.combine(transactionMode)
	}
}

/**
 What operations are supported?.
 
 A specification of restful operations supported by the system.
 */
open class ConformanceRestInteraction: BackboneElement {
	
	/// A coded identifier of the operation, supported by the system.
	/// Restricted to: ['transaction', 'search-system', 'history-system']
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
		guard let _other = _other as? ConformanceRestInteraction else {
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
 
 Definition of an operation or a named query and with its parameters and their meaning and type.
 */
open class ConformanceRestOperation: BackboneElement {
	
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
		guard let _other = _other as? ConformanceRestOperation else {
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
open class ConformanceRestResource: BackboneElement {
	
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
	
	/// Base System profile for all uses of resource
	public var profile: Reference?
	
	/// What operations are supported?
	public var interaction: [ConformanceRestResourceInteraction]
	
	/// This field is set to no-version to specify that the system does not support (server) or use (client) versioning
	/// for this resource type. If this has some other value, the server must at least correctly track and populate the
	/// versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the
	/// versioning features, including using e-tags for version integrity in the API.
	/// Restricted to: ['no-version', 'versioned', 'versioned-update']
	public var versioning: FHIRPrimitive<ResourceVersionPolicy>?
	
	/// Whether vRead can return past versions
	public var readHistory: FHIRPrimitive<FHIRBool>?
	
	/// If update can commit to a new identity
	public var updateCreate: FHIRPrimitive<FHIRBool>?
	
	/// If allows/uses conditional create
	public var conditionalCreate: FHIRPrimitive<FHIRBool>?
	
	/// If allows/uses conditional update
	public var conditionalUpdate: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional delete.
	/// Restricted to: ['not-supported', 'single', 'multiple']
	public var conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>?
	
	/// _include values supported by the server
	public var searchInclude: [FHIRPrimitive<FHIRString>]?
	
	/// _revinclude values supported by the server
	public var searchRevInclude: [FHIRPrimitive<FHIRString>]?
	
	/// Search params supported by implementation
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// Designated initializer taking all required properties
	public init(interaction: [ConformanceRestResourceInteraction], type: FHIRPrimitive<ResourceType>) {
		self.interaction = interaction
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							versioning: FHIRPrimitive<ResourceVersionPolicy>? = nil)
	{
		self.init(interaction: interaction, type: type)
		self.conditionalCreate = conditionalCreate
		self.conditionalDelete = conditionalDelete
		self.conditionalUpdate = conditionalUpdate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.readHistory = readHistory
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
		case conditionalUpdate; case _conditionalUpdate
		case interaction
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.conditionalCreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalCreate, auxiliaryKey: ._conditionalCreate)
		self.conditionalDelete = try FHIRPrimitive<ConditionalDeleteStatus>(from: _container, forKeyIfPresent: .conditionalDelete, auxiliaryKey: ._conditionalDelete)
		self.conditionalUpdate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		self.interaction = try [ConformanceRestResourceInteraction](from: _container, forKey: .interaction)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.readHistory = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readHistory, auxiliaryKey: ._readHistory)
		self.searchInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchInclude, auxiliaryKey: ._searchInclude)
		self.searchParam = try [ConformanceRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
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
		try conditionalUpdate?.encode(on: &_container, forKey: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		try interaction.encode(on: &_container, forKey: .interaction)
		try profile?.encode(on: &_container, forKey: .profile)
		try readHistory?.encode(on: &_container, forKey: .readHistory, auxiliaryKey: ._readHistory)
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
		guard let _other = _other as? ConformanceRestResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return conditionalCreate == _other.conditionalCreate
		    && conditionalDelete == _other.conditionalDelete
		    && conditionalUpdate == _other.conditionalUpdate
		    && interaction == _other.interaction
		    && profile == _other.profile
		    && readHistory == _other.readHistory
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
		hasher.combine(conditionalUpdate)
		hasher.combine(interaction)
		hasher.combine(profile)
		hasher.combine(readHistory)
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
open class ConformanceRestResourceInteraction: BackboneElement {
	
	/// Coded identifier of the operation, supported by the system resource.
	/// Restricted to: ['read', 'vread', 'update', 'delete', 'history-instance', 'validate', 'history-type', 'create',
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
		guard let _other = _other as? ConformanceRestResourceInteraction else {
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
 Search params supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
open class ConformanceRestResourceSearchParam: BackboneElement {
	
	/// Name of search parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Source of definition for parameter
	public var definition: FHIRPrimitive<FHIRURI>?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	/// Restricted to: ['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri']
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Server-specific usage
	public var documentation: FHIRPrimitive<FHIRString>?
	
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
	
	/// A modifier supported for the search parameter.
	/// Restricted to: ['missing', 'exact', 'contains', 'not', 'text', 'in', 'not-in', 'below', 'above', 'type']
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Chained names supported
	public var chain: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<SearchParamType>) {
		self.name = name
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							chain: [FHIRPrimitive<FHIRString>]? = nil,
							definition: FHIRPrimitive<FHIRURI>? = nil,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifier: [FHIRPrimitive<SearchModifierCode>]? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							target: [FHIRPrimitive<ResourceType>]? = nil,
							type: FHIRPrimitive<SearchParamType>)
	{
		self.init(name: name, type: type)
		self.chain = chain
		self.definition = definition
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case chain; case _chain
		case definition; case _definition
		case documentation; case _documentation
		case modifier; case _modifier
		case name; case _name
		case target; case _target
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.chain = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .chain, auxiliaryKey: ._chain)
		self.definition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.target = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try chain?.encode(on: &_container, forKey: .chain, auxiliaryKey: ._chain)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConformanceRestResourceSearchParam else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return chain == _other.chain
		    && definition == _other.definition
		    && documentation == _other.documentation
		    && modifier == _other.modifier
		    && name == _other.name
		    && target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(chain)
		hasher.combine(definition)
		hasher.combine(documentation)
		hasher.combine(modifier)
		hasher.combine(name)
		hasher.combine(target)
		hasher.combine(type)
	}
}

/**
 Information about security of implementation.
 
 Information about security implementation from an interface perspective - what a client needs to know.
 */
open class ConformanceRestSecurity: BackboneElement {
	
	/// Adds CORS Headers (http://enable-cors.org/)
	public var cors: FHIRPrimitive<FHIRBool>?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates
	public var service: [CodeableConcept]?
	
	/// General description of how security works
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Certificates associated with security profiles
	public var certificate: [ConformanceRestSecurityCertificate]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							certificate: [ConformanceRestSecurityCertificate]? = nil,
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
		self.certificate = try [ConformanceRestSecurityCertificate](from: _container, forKeyIfPresent: .certificate)
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
		guard let _other = _other as? ConformanceRestSecurity else {
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
open class ConformanceRestSecurityCertificate: BackboneElement {
	
	/// Mime type for certificate
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
		guard let _other = _other as? ConformanceRestSecurityCertificate else {
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
 Software that is covered by this conformance statement.
 
 Software that is covered by this conformance statement.  It is used when the conformance statement describes the
 capabilities of a particular software version, independent of an installation.
 */
open class ConformanceSoftware: BackboneElement {
	
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
		guard let _other = _other as? ConformanceSoftware else {
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
