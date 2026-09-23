//
//  TerminologyCapabilities.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities)
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
 
 A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be
 used as a statement of actual server functionality or a statement of required or desired server implementation.
 */
public struct TerminologyCapabilities: DomainResource {
	
	public static let resourceType: ResourceType = .terminologyCapabilities
	
	/// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation
	public var closure: TerminologyCapabilitiesClosure?
	
	/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
	public var codeSearch: FHIRPrimitive<CodeSearchSupport>?
	
	/// A code system supported by the server
	public var codeSystem: [TerminologyCapabilitiesCodeSystem]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Natural language description of the terminology capabilities
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation
	public var expansion: TerminologyCapabilitiesExpansion?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If this describes a specific instance
	public var implementation: TerminologyCapabilitiesImplementation?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for terminology capabilities (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: FHIRPrimitive<CapabilityStatementKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Whether lockedDate is supported
	public var lockedDate: FHIRPrimitive<FHIRBool>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this terminology capabilities (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this terminology capabilities is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Software that is covered by this terminology capability statement
	public var software: TerminologyCapabilitiesSoftware?
	
	/// The status of this terminology capabilities. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this terminology capabilities (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation
	public var translation: TerminologyCapabilitiesTranslation?
	
	/// Canonical identifier for this terminology capabilities, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation
	public var validateCode: TerminologyCapabilitiesValidateCode?
	
	/// Business version of the terminology capabilities
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		closure: TerminologyCapabilitiesClosure? = nil,
		codeSearch: FHIRPrimitive<CodeSearchSupport>? = nil,
		codeSystem: [TerminologyCapabilitiesCodeSystem]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expansion: TerminologyCapabilitiesExpansion? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implementation: TerminologyCapabilitiesImplementation? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		kind: FHIRPrimitive<CapabilityStatementKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		lockedDate: FHIRPrimitive<FHIRBool>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		software: TerminologyCapabilitiesSoftware? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		translation: TerminologyCapabilitiesTranslation? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		validateCode: TerminologyCapabilitiesValidateCode? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.closure = closure
		self.codeSearch = codeSearch
		self.codeSystem = codeSystem
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.expansion = expansion
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implementation = implementation
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.kind = kind
		self.language = language
		self.lockedDate = lockedDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.software = software
		self.status = status
		self.text = text
		self.title = title
		self.translation = translation
		self.url = url
		self.useContext = useContext
		self.validateCode = validateCode
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case closure
		case codeSearch; case _codeSearch
		case codeSystem
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case expansion
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case implementation
		case implicitRules; case _implicitRules
		case jurisdiction
		case kind; case _kind
		case language; case _language
		case lockedDate; case _lockedDate
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case software
		case status; case _status
		case text
		case title; case _title
		case translation
		case url; case _url
		case useContext
		case validateCode
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.closure = try TerminologyCapabilitiesClosure(from: _container, forKeyIfPresent: .closure)
		self.codeSearch = try FHIRPrimitive<CodeSearchSupport>(from: _container, forKeyIfPresent: .codeSearch, auxiliaryKey: ._codeSearch)
		self.codeSystem = try [TerminologyCapabilitiesCodeSystem](from: _container, forKeyIfPresent: .codeSystem)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expansion = try TerminologyCapabilitiesExpansion(from: _container, forKeyIfPresent: .expansion)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implementation = try TerminologyCapabilitiesImplementation(from: _container, forKeyIfPresent: .implementation)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<CapabilityStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lockedDate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .lockedDate, auxiliaryKey: ._lockedDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.software = try TerminologyCapabilitiesSoftware(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.translation = try TerminologyCapabilitiesTranslation(from: _container, forKeyIfPresent: .translation)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.validateCode = try TerminologyCapabilitiesValidateCode(from: _container, forKeyIfPresent: .validateCode)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try closure?.encode(on: &_container, forKey: .closure)
		try codeSearch?.encode(on: &_container, forKey: .codeSearch, auxiliaryKey: ._codeSearch)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expansion?.encode(on: &_container, forKey: .expansion)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lockedDate?.encode(on: &_container, forKey: .lockedDate, auxiliaryKey: ._lockedDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try software?.encode(on: &_container, forKey: .software)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try translation?.encode(on: &_container, forKey: .translation)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try validateCode?.encode(on: &_container, forKey: .validateCode)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation.
 
 Whether the $closure operation is supported.
 */
public struct TerminologyCapabilitiesClosure: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// If cross-system closure is supported
	public var translation: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		translation: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.translation = translation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case translation; case _translation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.translation = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .translation, auxiliaryKey: ._translation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try translation?.encode(on: &_container, forKey: .translation, auxiliaryKey: ._translation)
	}
}

/**
 A code system supported by the server.
 
 Identifies a code system that is supported by the server. If there is a no code system URL, then this declares the
 general assumptions a client can make about support for any CodeSystem resource.
 */
public struct TerminologyCapabilitiesCodeSystem: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Whether subsumption is supported
	public var subsumption: FHIRPrimitive<FHIRBool>?
	
	/// URI for the Code System
	public var uri: FHIRPrimitive<Canonical>?
	
	/// Version of Code System supported
	public var version: [TerminologyCapabilitiesCodeSystemVersion]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subsumption: FHIRPrimitive<FHIRBool>? = nil,
		uri: FHIRPrimitive<Canonical>? = nil,
		version: [TerminologyCapabilitiesCodeSystemVersion]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subsumption = subsumption
		self.uri = uri
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case subsumption; case _subsumption
		case uri; case _uri
		case version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subsumption = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .subsumption, auxiliaryKey: ._subsumption)
		self.uri = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		self.version = try [TerminologyCapabilitiesCodeSystemVersion](from: _container, forKeyIfPresent: .version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subsumption?.encode(on: &_container, forKey: .subsumption, auxiliaryKey: ._subsumption)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try version?.encode(on: &_container, forKey: .version)
	}
}

/**
 Version of Code System supported.
 
 For the code system, a list of versions that are supported by the server.
 */
public struct TerminologyCapabilitiesCodeSystemVersion: BackboneElement {
	
	/// Version identifier for this version
	public var code: FHIRPrimitive<FHIRString>?
	
	/// If compositional grammar is supported
	public var compositional: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Filter Properties supported
	public var filter: [TerminologyCapabilitiesCodeSystemVersionFilter]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If this is the default version for this code system
	public var isDefault: FHIRPrimitive<FHIRBool>?
	
	/// Language Displays supported
	public var language: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Properties supported for $lookup
	public var property: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		compositional: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		filter: [TerminologyCapabilitiesCodeSystemVersionFilter]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDefault: FHIRPrimitive<FHIRBool>? = nil,
		language: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		property: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.code = code
		self.compositional = compositional
		self.`extension` = `extension`
		self.filter = filter
		self.id = id
		self.isDefault = isDefault
		self.language = language
		self.modifierExtension = modifierExtension
		self.property = property
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case compositional; case _compositional
		case `extension` = "extension"
		case filter
		case id; case _id
		case isDefault; case _isDefault
		case language; case _language
		case modifierExtension
		case property; case _property
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.compositional = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .compositional, auxiliaryKey: ._compositional)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.filter = try [TerminologyCapabilitiesCodeSystemVersionFilter](from: _container, forKeyIfPresent: .filter)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDefault = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefault, auxiliaryKey: ._isDefault)
		self.language = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.property = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .property, auxiliaryKey: ._property)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try compositional?.encode(on: &_container, forKey: .compositional, auxiliaryKey: ._compositional)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try filter?.encode(on: &_container, forKey: .filter)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isDefault?.encode(on: &_container, forKey: .isDefault, auxiliaryKey: ._isDefault)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try property?.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
	}
}

/**
 Filter Properties supported.
 */
public struct TerminologyCapabilitiesCodeSystemVersionFilter: BackboneElement {
	
	/// Code of the property supported
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Operations supported for the property
	public var op: [FHIRPrimitive<FHIRString>]
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		op: [FHIRPrimitive<FHIRString>]
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.op = op
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case op; case _op
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.op = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .op, auxiliaryKey: ._op)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try op.encode(on: &_container, forKey: .op, auxiliaryKey: ._op)
	}
}

/**
 Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
 */
public struct TerminologyCapabilitiesExpansion: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Whether the server can return nested value sets
	public var hierarchical: FHIRPrimitive<FHIRBool>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Allow request for incomplete expansions?
	public var incomplete: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Whether the server supports paging on expansion
	public var paging: FHIRPrimitive<FHIRBool>?
	
	/// Supported expansion parameter
	public var parameter: [TerminologyCapabilitiesExpansionParameter]?
	
	/// Documentation about text searching works
	public var textFilter: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		hierarchical: FHIRPrimitive<FHIRBool>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		incomplete: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		paging: FHIRPrimitive<FHIRBool>? = nil,
		parameter: [TerminologyCapabilitiesExpansionParameter]? = nil,
		textFilter: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.hierarchical = hierarchical
		self.id = id
		self.incomplete = incomplete
		self.modifierExtension = modifierExtension
		self.paging = paging
		self.parameter = parameter
		self.textFilter = textFilter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case hierarchical; case _hierarchical
		case id; case _id
		case incomplete; case _incomplete
		case modifierExtension
		case paging; case _paging
		case parameter
		case textFilter; case _textFilter
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hierarchical = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .hierarchical, auxiliaryKey: ._hierarchical)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.incomplete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .incomplete, auxiliaryKey: ._incomplete)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.paging = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .paging, auxiliaryKey: ._paging)
		self.parameter = try [TerminologyCapabilitiesExpansionParameter](from: _container, forKeyIfPresent: .parameter)
		self.textFilter = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textFilter, auxiliaryKey: ._textFilter)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hierarchical?.encode(on: &_container, forKey: .hierarchical, auxiliaryKey: ._hierarchical)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try incomplete?.encode(on: &_container, forKey: .incomplete, auxiliaryKey: ._incomplete)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try paging?.encode(on: &_container, forKey: .paging, auxiliaryKey: ._paging)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try textFilter?.encode(on: &_container, forKey: .textFilter, auxiliaryKey: ._textFilter)
	}
}

/**
 Supported expansion parameter.
 */
public struct TerminologyCapabilitiesExpansionParameter: BackboneElement {
	
	/// Description of support for parameter
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Expansion Parameter name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>
	) {
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the terminology capability statement - i.e. a
 particular installation, rather than the capabilities of a software program.
 */
public struct TerminologyCapabilitiesImplementation: BackboneElement {
	
	/// Describes this specific instance
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Base URL for the implementation
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
 Software that is covered by this terminology capability statement.
 
 Software that is covered by this terminology capability statement.  It is used when the statement describes the
 capabilities of a particular software version, independent of an installation.
 */
public struct TerminologyCapabilitiesSoftware: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A name the software is known by
	public var name: FHIRPrimitive<FHIRString>
	
	/// Version covered by this statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
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
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
 */
public struct TerminologyCapabilitiesTranslation: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Whether the client must identify the map
	public var needsMap: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		needsMap: FHIRPrimitive<FHIRBool>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.needsMap = needsMap
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case needsMap; case _needsMap
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.needsMap = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .needsMap, auxiliaryKey: ._needsMap)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try needsMap.encode(on: &_container, forKey: .needsMap, auxiliaryKey: ._needsMap)
	}
}

/**
 Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
 */
public struct TerminologyCapabilitiesValidateCode: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Whether translations are validated
	public var translations: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		translations: FHIRPrimitive<FHIRBool>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.translations = translations
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case translations; case _translations
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.translations = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .translations, auxiliaryKey: ._translations)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try translations.encode(on: &_container, forKey: .translations, auxiliaryKey: ._translations)
	}
}
