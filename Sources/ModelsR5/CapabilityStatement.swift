//
//  CapabilityStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement)
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
 
 A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version
 of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server
 implementation.
 */
public struct CapabilityStatement: DomainResource {
	
	public static let resourceType: ResourceType = .capabilityStatement
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Languages supported
	public var acceptLanguage: [FHIRPrimitive<FHIRString>]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Natural language description of the capability statement
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Document definition
	public var document: [CapabilityStatementDocument]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version the system supports
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// formats supported (xml | json | ttl | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the CapabilityStatement (business identifier)
	public var identifier: [Identifier]?
	
	/// If this describes a specific instance
	public var implementation: CapabilityStatementImplementation?
	
	/// Implementation guides supported
	public var implementationGuide: [FHIRPrimitive<Canonical>]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Canonical URL of another capability statement this adds to
	public var imports: [FHIRPrimitive<Canonical>]?
	
	/// Canonical URL of another capability statement this implements
	public var instantiates: [FHIRPrimitive<Canonical>]?
	
	/// Intended jurisdiction for capability statement (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
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
	
	/// Name of the publisher/steward (organization or individual)
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
	
	/// Canonical identifier for this capability statement, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the capability statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		acceptLanguage: [FHIRPrimitive<FHIRString>]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		document: [CapabilityStatementDocument]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: FHIRPrimitive<FHIRString>,
		format: [FHIRPrimitive<FHIRString>],
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implementation: CapabilityStatementImplementation? = nil,
		implementationGuide: [FHIRPrimitive<Canonical>]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		imports: [FHIRPrimitive<Canonical>]? = nil,
		instantiates: [FHIRPrimitive<Canonical>]? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		kind: FHIRPrimitive<CapabilityStatementKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		messaging: [CapabilityStatementMessaging]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		patchFormat: [FHIRPrimitive<FHIRString>]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		rest: [CapabilityStatementRest]? = nil,
		software: CapabilityStatementSoftware? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.acceptLanguage = acceptLanguage
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.document = document
		self.experimental = experimental
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.format = format
		self.id = id
		self.identifier = identifier
		self.implementation = implementation
		self.implementationGuide = implementationGuide
		self.implicitRules = implicitRules
		self.imports = imports
		self.instantiates = instantiates
		self.jurisdiction = jurisdiction
		self.kind = kind
		self.language = language
		self.messaging = messaging
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.patchFormat = patchFormat
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
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case acceptLanguage; case _acceptLanguage
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case document
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case format; case _format
		case id; case _id
		case identifier
		case implementation
		case implementationGuide; case _implementationGuide
		case implicitRules; case _implicitRules
		case imports; case _imports
		case instantiates; case _instantiates
		case jurisdiction
		case kind; case _kind
		case language; case _language
		case messaging
		case meta
		case modifierExtension
		case name; case _name
		case patchFormat; case _patchFormat
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
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.acceptLanguage = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .acceptLanguage, auxiliaryKey: ._acceptLanguage)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.document = try [CapabilityStatementDocument](from: _container, forKeyIfPresent: .document)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implementation = try CapabilityStatementImplementation(from: _container, forKeyIfPresent: .implementation)
		self.implementationGuide = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .implementationGuide, auxiliaryKey: ._implementationGuide)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.imports = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .imports, auxiliaryKey: ._imports)
		self.instantiates = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiates, auxiliaryKey: ._instantiates)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<CapabilityStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.messaging = try [CapabilityStatementMessaging](from: _container, forKeyIfPresent: .messaging)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.patchFormat = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .patchFormat, auxiliaryKey: ._patchFormat)
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
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try acceptLanguage?.encode(on: &_container, forKey: .acceptLanguage, auxiliaryKey: ._acceptLanguage)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try document?.encode(on: &_container, forKey: .document)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try format.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try implementationGuide?.encode(on: &_container, forKey: .implementationGuide, auxiliaryKey: ._implementationGuide)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try imports?.encode(on: &_container, forKey: .imports, auxiliaryKey: ._imports)
		try instantiates?.encode(on: &_container, forKey: .instantiates, auxiliaryKey: ._instantiates)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try messaging?.encode(on: &_container, forKey: .messaging)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try patchFormat?.encode(on: &_container, forKey: .patchFormat, auxiliaryKey: ._patchFormat)
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
 Document definition.
 
 A document definition.
 */
public struct CapabilityStatementDocument: BackboneElement {
	
	/// Description of document support
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Mode of this document declaration - whether an application is a producer or consumer.
	public var mode: FHIRPrimitive<DocumentMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Constraint on the resources used in the document
	public var profile: FHIRPrimitive<Canonical>
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<DocumentMode>,
		modifierExtension: [Extension]? = nil,
		profile: FHIRPrimitive<Canonical>
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
		case profile; case _profile
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
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKey: .profile, auxiliaryKey: ._profile)
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
		try profile.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
	}
}

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the capability statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
public struct CapabilityStatementImplementation: BackboneElement {
	
	/// Organization that manages the data
	public var custodian: Reference?
	
	/// Describes this specific instance
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Base URL for the installation
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		custodian: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.custodian = custodian
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case custodian
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
		self.custodian = try Reference(from: _container, forKeyIfPresent: .custodian)
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
		try custodian?.encode(on: &_container, forKey: .custodian)
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Reliable Message Cache Length (min)
	public var reliableCache: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Messages supported by this system
	public var supportedMessage: [CapabilityStatementMessagingSupportedMessage]?
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		endpoint: [CapabilityStatementMessagingEndpoint]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reliableCache: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		supportedMessage: [CapabilityStatementMessagingSupportedMessage]? = nil
	) {
		self.documentation = documentation
		self.endpoint = endpoint
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
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
 Messages supported by this system.
 
 References to message definitions for messages this system can send or receive.
 */
public struct CapabilityStatementMessagingSupportedMessage: BackboneElement {
	
	/// Message supported by this system
	public var definition: FHIRPrimitive<Canonical>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The mode of this event declaration - whether application is sender or receiver.
	public var mode: FHIRPrimitive<EventCapabilityMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		definition: FHIRPrimitive<Canonical>,
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
		case definition; case _definition
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
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKey: .definition, auxiliaryKey: ._definition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<EventCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
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
	public var compartment: [FHIRPrimitive<Canonical>]?
	
	/// General description of implementation
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatementRestInteraction]?
	
	/// Identifies whether this portion of the statement is describing the ability to initiate or receive restful
	/// operations.
	public var mode: FHIRPrimitive<RestfulCapabilityMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Definition of a system level operation
	public var operation: [CapabilityStatementRestResourceOperation]?
	
	/// Resource served on the REST interface
	public var resource: [CapabilityStatementRestResource]?
	
	/// Search parameters for searching all resources
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Information about security of implementation
	public var security: CapabilityStatementRestSecurity?
	
	/// Designated initializer
	public init(
		compartment: [FHIRPrimitive<Canonical>]? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		interaction: [CapabilityStatementRestInteraction]? = nil,
		mode: FHIRPrimitive<RestfulCapabilityMode>,
		modifierExtension: [Extension]? = nil,
		operation: [CapabilityStatementRestResourceOperation]? = nil,
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
		self.compartment = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .compartment, auxiliaryKey: ._compartment)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interaction = try [CapabilityStatementRestInteraction](from: _container, forKeyIfPresent: .interaction)
		self.mode = try FHIRPrimitive<RestfulCapabilityMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try [CapabilityStatementRestResourceOperation](from: _container, forKeyIfPresent: .operation)
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
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
 Resource served on the REST interface.
 
 A specification of the restful capabilities of the solution for a specific resource type.
 */
public struct CapabilityStatementRestResource: BackboneElement {
	
	/// If allows/uses conditional create
	public var conditionalCreate: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional delete.
	public var conditionalDelete: FHIRPrimitive<ConditionalDeleteStatus>?
	
	/// If allows/uses conditional patch
	public var conditionalPatch: FHIRPrimitive<FHIRBool>?
	
	/// A code that indicates how the server supports conditional read.
	public var conditionalRead: FHIRPrimitive<ConditionalReadStatus>?
	
	/// If allows/uses conditional update
	public var conditionalUpdate: FHIRPrimitive<FHIRBool>?
	
	/// Additional information about the use of the resource type
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What operations are supported?
	public var interaction: [CapabilityStatementRestResourceInteraction]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Definition of a resource operation
	public var operation: [CapabilityStatementRestResourceOperation]?
	
	/// System-wide profile
	public var profile: FHIRPrimitive<Canonical>?
	
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
	
	/// Use-case specific profiles
	public var supportedProfile: [FHIRPrimitive<Canonical>]?
	
	/// A type of resource exposed via the restful interface.
	/// Restricted to: ['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition',
	/// 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent',
	/// 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure',
	/// 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation',
	/// 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication',
	/// 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition',
	/// 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest',
	/// 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAssociation', 'DeviceDefinition',
	/// 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport', 'DocumentReference',
	/// 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare',
	/// 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit',
	/// 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal', 'GraphDefinition', 'Group',
	/// 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy', 'Immunization',
	/// 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan',
	/// 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage', 'List', 'Location',
	/// 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement',
	/// 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem',
	/// 'NutritionIntake', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition',
	/// 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation',
	/// 'PackagedProductDefinition', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Permission',
	/// 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements',
	/// 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot',
	/// 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus',
	/// 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer',
	/// 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery',
	/// 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport',
	/// 'ValueSet', 'VerificationResult', 'VisionPrescription']
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
		conditionalPatch: FHIRPrimitive<FHIRBool>? = nil,
		conditionalRead: FHIRPrimitive<ConditionalReadStatus>? = nil,
		conditionalUpdate: FHIRPrimitive<FHIRBool>? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		interaction: [CapabilityStatementRestResourceInteraction]? = nil,
		modifierExtension: [Extension]? = nil,
		operation: [CapabilityStatementRestResourceOperation]? = nil,
		profile: FHIRPrimitive<Canonical>? = nil,
		readHistory: FHIRPrimitive<FHIRBool>? = nil,
		referencePolicy: [FHIRPrimitive<ReferenceHandlingPolicy>]? = nil,
		searchInclude: [FHIRPrimitive<FHIRString>]? = nil,
		searchParam: [CapabilityStatementRestResourceSearchParam]? = nil,
		searchRevInclude: [FHIRPrimitive<FHIRString>]? = nil,
		supportedProfile: [FHIRPrimitive<Canonical>]? = nil,
		type: FHIRPrimitive<ResourceType>,
		updateCreate: FHIRPrimitive<FHIRBool>? = nil,
		versioning: FHIRPrimitive<ResourceVersionPolicy>? = nil
	) {
		self.conditionalCreate = conditionalCreate
		self.conditionalDelete = conditionalDelete
		self.conditionalPatch = conditionalPatch
		self.conditionalRead = conditionalRead
		self.conditionalUpdate = conditionalUpdate
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.interaction = interaction
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.profile = profile
		self.readHistory = readHistory
		self.referencePolicy = referencePolicy
		self.searchInclude = searchInclude
		self.searchParam = searchParam
		self.searchRevInclude = searchRevInclude
		self.supportedProfile = supportedProfile
		self.type = type
		self.updateCreate = updateCreate
		self.versioning = versioning
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conditionalCreate; case _conditionalCreate
		case conditionalDelete; case _conditionalDelete
		case conditionalPatch; case _conditionalPatch
		case conditionalRead; case _conditionalRead
		case conditionalUpdate; case _conditionalUpdate
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case interaction
		case modifierExtension
		case operation
		case profile; case _profile
		case readHistory; case _readHistory
		case referencePolicy; case _referencePolicy
		case searchInclude; case _searchInclude
		case searchParam
		case searchRevInclude; case _searchRevInclude
		case supportedProfile; case _supportedProfile
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
		self.conditionalPatch = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalPatch, auxiliaryKey: ._conditionalPatch)
		self.conditionalRead = try FHIRPrimitive<ConditionalReadStatus>(from: _container, forKeyIfPresent: .conditionalRead, auxiliaryKey: ._conditionalRead)
		self.conditionalUpdate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.interaction = try [CapabilityStatementRestResourceInteraction](from: _container, forKeyIfPresent: .interaction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try [CapabilityStatementRestResourceOperation](from: _container, forKeyIfPresent: .operation)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.readHistory = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readHistory, auxiliaryKey: ._readHistory)
		self.referencePolicy = try [FHIRPrimitive<ReferenceHandlingPolicy>](from: _container, forKeyIfPresent: .referencePolicy, auxiliaryKey: ._referencePolicy)
		self.searchInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchInclude, auxiliaryKey: ._searchInclude)
		self.searchParam = try [CapabilityStatementRestResourceSearchParam](from: _container, forKeyIfPresent: .searchParam)
		self.searchRevInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .searchRevInclude, auxiliaryKey: ._searchRevInclude)
		self.supportedProfile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .supportedProfile, auxiliaryKey: ._supportedProfile)
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
		try conditionalPatch?.encode(on: &_container, forKey: .conditionalPatch, auxiliaryKey: ._conditionalPatch)
		try conditionalRead?.encode(on: &_container, forKey: .conditionalRead, auxiliaryKey: ._conditionalRead)
		try conditionalUpdate?.encode(on: &_container, forKey: .conditionalUpdate, auxiliaryKey: ._conditionalUpdate)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation?.encode(on: &_container, forKey: .operation)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try readHistory?.encode(on: &_container, forKey: .readHistory, auxiliaryKey: ._readHistory)
		try referencePolicy?.encode(on: &_container, forKey: .referencePolicy, auxiliaryKey: ._referencePolicy)
		try searchInclude?.encode(on: &_container, forKey: .searchInclude, auxiliaryKey: ._searchInclude)
		try searchParam?.encode(on: &_container, forKey: .searchParam)
		try searchRevInclude?.encode(on: &_container, forKey: .searchRevInclude, auxiliaryKey: ._searchRevInclude)
		try supportedProfile?.encode(on: &_container, forKey: .supportedProfile, auxiliaryKey: ._supportedProfile)
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
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
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
 Definition of a resource operation.
 
 Definition of an operation or a named query together with its parameters and their meaning and type. Consult the
 definition of the operation for details about how to invoke the operation, and the parameters.
 */
public struct CapabilityStatementRestResourceOperation: BackboneElement {
	
	/// The defined operation/query
	public var definition: FHIRPrimitive<Canonical>
	
	/// Specific details about operation behavior
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name by which the operation/query is invoked
	public var name: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		definition: FHIRPrimitive<Canonical>,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>
	) {
		self.definition = definition
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case documentation; case _documentation
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
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKey: .definition, auxiliaryKey: ._definition)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}

/**
 Search parameters supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
public struct CapabilityStatementRestResourceSearchParam: BackboneElement {
	
	/// Source of definition for parameter
	public var definition: FHIRPrimitive<Canonical>?
	
	/// Server-specific usage
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name for parameter in search url
	public var name: FHIRPrimitive<FHIRString>
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Designated initializer
	public init(
		definition: FHIRPrimitive<Canonical>? = nil,
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
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
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
	
	/// Adds CORS Headers (http://enable-cors.org/)
	public var cors: FHIRPrimitive<FHIRBool>?
	
	/// General description of how security works
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates
	public var service: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		cors: FHIRPrimitive<FHIRBool>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		service: [CodeableConcept]? = nil
	) {
		self.cors = cors
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.service = service
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
		try cors?.encode(on: &_container, forKey: .cors, auxiliaryKey: ._cors)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try service?.encode(on: &_container, forKey: .service)
	}
}

/**
 Software that is covered by this capability statement.
 
 Software that is covered by this capability statement.  It is used when the capability statement describes the
 capabilities of a particular software version, independent of an installation.
 */
public struct CapabilityStatementSoftware: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A name the software is known by
	public var name: FHIRPrimitive<FHIRString>
	
	/// Date this version was released
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
