//
//  TerminologyCapabilities.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities)
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
 
 A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be
 used as a statement of actual server functionality or a statement of required or desired server implementation.
 */
open class TerminologyCapabilities: DomainResource {
	
	override open class var resourceType: ResourceType { return .terminologyCapabilities }
	
	/// Canonical identifier for this terminology capabilities, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business version of the terminology capabilities
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this terminology capabilities (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this terminology capabilities (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this terminology capabilities. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the terminology capabilities
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for terminology capabilities (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this terminology capabilities is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: FHIRPrimitive<CapabilityStatementKind>
	
	/// Software that is covered by this terminology capability statement
	public var software: TerminologyCapabilitiesSoftware?
	
	/// If this describes a specific instance
	public var implementation: TerminologyCapabilitiesImplementation?
	
	/// Whether lockedDate is supported
	public var lockedDate: FHIRPrimitive<FHIRBool>?
	
	/// A code system supported by the server
	public var codeSystem: [TerminologyCapabilitiesCodeSystem]?
	
	/// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation
	public var expansion: TerminologyCapabilitiesExpansion?
	
	/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
	public var codeSearch: FHIRPrimitive<CodeSearchSupport>?
	
	/// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation
	public var validateCode: TerminologyCapabilitiesValidateCode?
	
	/// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation
	public var translation: TerminologyCapabilitiesTranslation?
	
	/// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation
	public var closure: TerminologyCapabilitiesClosure?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, kind: FHIRPrimitive<CapabilityStatementKind>, status: FHIRPrimitive<PublicationStatus>) {
		self.date = date
		self.kind = kind
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(date: date, kind: kind, status: status)
		self.closure = closure
		self.codeSearch = codeSearch
		self.codeSystem = codeSystem
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.description_fhir = description_fhir
		self.expansion = expansion
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implementation = implementation
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lockedDate = lockedDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.software = software
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
		case closure
		case codeSearch; case _codeSearch
		case codeSystem
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case expansion
		case experimental; case _experimental
		case implementation
		case jurisdiction
		case kind; case _kind
		case lockedDate; case _lockedDate
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case software
		case status; case _status
		case title; case _title
		case translation
		case url; case _url
		case useContext
		case validateCode
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.closure = try TerminologyCapabilitiesClosure(from: _container, forKeyIfPresent: .closure)
		self.codeSearch = try FHIRPrimitive<CodeSearchSupport>(from: _container, forKeyIfPresent: .codeSearch, auxiliaryKey: ._codeSearch)
		self.codeSystem = try [TerminologyCapabilitiesCodeSystem](from: _container, forKeyIfPresent: .codeSystem)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expansion = try TerminologyCapabilitiesExpansion(from: _container, forKeyIfPresent: .expansion)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.implementation = try TerminologyCapabilitiesImplementation(from: _container, forKeyIfPresent: .implementation)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<CapabilityStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.lockedDate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .lockedDate, auxiliaryKey: ._lockedDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.software = try TerminologyCapabilitiesSoftware(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.translation = try TerminologyCapabilitiesTranslation(from: _container, forKeyIfPresent: .translation)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.validateCode = try TerminologyCapabilitiesValidateCode(from: _container, forKeyIfPresent: .validateCode)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try closure?.encode(on: &_container, forKey: .closure)
		try codeSearch?.encode(on: &_container, forKey: .codeSearch, auxiliaryKey: ._codeSearch)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expansion?.encode(on: &_container, forKey: .expansion)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try lockedDate?.encode(on: &_container, forKey: .lockedDate, auxiliaryKey: ._lockedDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try software?.encode(on: &_container, forKey: .software)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try translation?.encode(on: &_container, forKey: .translation)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try validateCode?.encode(on: &_container, forKey: .validateCode)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilities else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return closure == _other.closure
		    && codeSearch == _other.codeSearch
		    && codeSystem == _other.codeSystem
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && expansion == _other.expansion
		    && experimental == _other.experimental
		    && implementation == _other.implementation
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && lockedDate == _other.lockedDate
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && software == _other.software
		    && status == _other.status
		    && title == _other.title
		    && translation == _other.translation
		    && url == _other.url
		    && useContext == _other.useContext
		    && validateCode == _other.validateCode
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(closure)
		hasher.combine(codeSearch)
		hasher.combine(codeSystem)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(expansion)
		hasher.combine(experimental)
		hasher.combine(implementation)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(lockedDate)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(software)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(translation)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(validateCode)
		hasher.combine(version)
	}
}

/**
 Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation.
 
 Whether the $closure operation is supported.
 */
open class TerminologyCapabilitiesClosure: BackboneElement {
	
	/// If cross-system closure is supported
	public var translation: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							translation: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.translation = translation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case translation; case _translation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.translation = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .translation, auxiliaryKey: ._translation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try translation?.encode(on: &_container, forKey: .translation, auxiliaryKey: ._translation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesClosure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return translation == _other.translation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(translation)
	}
}

/**
 A code system supported by the server.
 
 Identifies a code system that is supported by the server. If there is a no code system URL, then this declares the
 general assumptions a client can make about support for any CodeSystem resource.
 */
open class TerminologyCapabilitiesCodeSystem: BackboneElement {
	
	/// URI for the Code System
	public var uri: FHIRPrimitive<Canonical>?
	
	/// Version of Code System supported
	public var version: [TerminologyCapabilitiesCodeSystemVersion]?
	
	/// Whether subsumption is supported
	public var subsumption: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							subsumption: FHIRPrimitive<FHIRBool>? = nil,
							uri: FHIRPrimitive<Canonical>? = nil,
							version: [TerminologyCapabilitiesCodeSystemVersion]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subsumption = subsumption
		self.uri = uri
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case subsumption; case _subsumption
		case uri; case _uri
		case version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.subsumption = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .subsumption, auxiliaryKey: ._subsumption)
		self.uri = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		self.version = try [TerminologyCapabilitiesCodeSystemVersion](from: _container, forKeyIfPresent: .version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try subsumption?.encode(on: &_container, forKey: .subsumption, auxiliaryKey: ._subsumption)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try version?.encode(on: &_container, forKey: .version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesCodeSystem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return subsumption == _other.subsumption
		    && uri == _other.uri
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(subsumption)
		hasher.combine(uri)
		hasher.combine(version)
	}
}

/**
 Version of Code System supported.
 
 For the code system, a list of versions that are supported by the server.
 */
open class TerminologyCapabilitiesCodeSystemVersion: BackboneElement {
	
	/// Version identifier for this version
	public var code: FHIRPrimitive<FHIRString>?
	
	/// If this is the default version for this code system
	public var isDefault: FHIRPrimitive<FHIRBool>?
	
	/// If compositional grammar is supported
	public var compositional: FHIRPrimitive<FHIRBool>?
	
	/// Language Displays supported
	public var language: [FHIRPrimitive<FHIRString>]?
	
	/// Filter Properties supported
	public var filter: [TerminologyCapabilitiesCodeSystemVersionFilter]?
	
	/// Properties supported for $lookup
	public var property: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>? = nil,
							compositional: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							filter: [TerminologyCapabilitiesCodeSystemVersionFilter]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isDefault: FHIRPrimitive<FHIRBool>? = nil,
							language: [FHIRPrimitive<FHIRString>]? = nil,
							modifierExtension: [Extension]? = nil,
							property: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init()
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
		case filter
		case isDefault; case _isDefault
		case language; case _language
		case property; case _property
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.compositional = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .compositional, auxiliaryKey: ._compositional)
		self.filter = try [TerminologyCapabilitiesCodeSystemVersionFilter](from: _container, forKeyIfPresent: .filter)
		self.isDefault = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefault, auxiliaryKey: ._isDefault)
		self.language = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.property = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .property, auxiliaryKey: ._property)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try compositional?.encode(on: &_container, forKey: .compositional, auxiliaryKey: ._compositional)
		try filter?.encode(on: &_container, forKey: .filter)
		try isDefault?.encode(on: &_container, forKey: .isDefault, auxiliaryKey: ._isDefault)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try property?.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesCodeSystemVersion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && compositional == _other.compositional
		    && filter == _other.filter
		    && isDefault == _other.isDefault
		    && language == _other.language
		    && property == _other.property
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(compositional)
		hasher.combine(filter)
		hasher.combine(isDefault)
		hasher.combine(language)
		hasher.combine(property)
	}
}

/**
 Filter Properties supported.
 */
open class TerminologyCapabilitiesCodeSystemVersionFilter: BackboneElement {
	
	/// Code of the property supported
	public var code: FHIRPrimitive<FHIRString>
	
	/// Operations supported for the property
	public var op: [FHIRPrimitive<FHIRString>]
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, op: [FHIRPrimitive<FHIRString>]) {
		self.code = code
		self.op = op
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							op: [FHIRPrimitive<FHIRString>])
	{
		self.init(code: code, op: op)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case op; case _op
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.op = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .op, auxiliaryKey: ._op)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try op.encode(on: &_container, forKey: .op, auxiliaryKey: ._op)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesCodeSystemVersionFilter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && op == _other.op
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(op)
	}
}

/**
 Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
 */
open class TerminologyCapabilitiesExpansion: BackboneElement {
	
	/// Whether the server can return nested value sets
	public var hierarchical: FHIRPrimitive<FHIRBool>?
	
	/// Whether the server supports paging on expansion
	public var paging: FHIRPrimitive<FHIRBool>?
	
	/// Allow request for incomplete expansions?
	public var incomplete: FHIRPrimitive<FHIRBool>?
	
	/// Supported expansion parameter
	public var parameter: [TerminologyCapabilitiesExpansionParameter]?
	
	/// Documentation about text searching works
	public var textFilter: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							hierarchical: FHIRPrimitive<FHIRBool>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							incomplete: FHIRPrimitive<FHIRBool>? = nil,
							modifierExtension: [Extension]? = nil,
							paging: FHIRPrimitive<FHIRBool>? = nil,
							parameter: [TerminologyCapabilitiesExpansionParameter]? = nil,
							textFilter: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case hierarchical; case _hierarchical
		case incomplete; case _incomplete
		case paging; case _paging
		case parameter
		case textFilter; case _textFilter
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.hierarchical = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .hierarchical, auxiliaryKey: ._hierarchical)
		self.incomplete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .incomplete, auxiliaryKey: ._incomplete)
		self.paging = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .paging, auxiliaryKey: ._paging)
		self.parameter = try [TerminologyCapabilitiesExpansionParameter](from: _container, forKeyIfPresent: .parameter)
		self.textFilter = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textFilter, auxiliaryKey: ._textFilter)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try hierarchical?.encode(on: &_container, forKey: .hierarchical, auxiliaryKey: ._hierarchical)
		try incomplete?.encode(on: &_container, forKey: .incomplete, auxiliaryKey: ._incomplete)
		try paging?.encode(on: &_container, forKey: .paging, auxiliaryKey: ._paging)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try textFilter?.encode(on: &_container, forKey: .textFilter, auxiliaryKey: ._textFilter)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesExpansion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return hierarchical == _other.hierarchical
		    && incomplete == _other.incomplete
		    && paging == _other.paging
		    && parameter == _other.parameter
		    && textFilter == _other.textFilter
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(hierarchical)
		hasher.combine(incomplete)
		hasher.combine(paging)
		hasher.combine(parameter)
		hasher.combine(textFilter)
	}
}

/**
 Supported expansion parameter.
 */
open class TerminologyCapabilitiesExpansionParameter: BackboneElement {
	
	/// Expansion Parameter name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Description of support for parameter
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>)
	{
		self.init(name: name)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesExpansionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(name)
	}
}

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the terminology capability statement - i.e. a
 particular installation, rather than the capabilities of a software program.
 */
open class TerminologyCapabilitiesImplementation: BackboneElement {
	
	/// Describes this specific instance
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Base URL for the implementation
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
		guard let _other = _other as? TerminologyCapabilitiesImplementation else {
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
 Software that is covered by this terminology capability statement.
 
 Software that is covered by this terminology capability statement.  It is used when the statement describes the
 capabilities of a particular software version, independent of an installation.
 */
open class TerminologyCapabilitiesSoftware: BackboneElement {
	
	/// A name the software is known by
	public var name: FHIRPrimitive<FHIRString>
	
	/// Version covered by this statement
	public var version: FHIRPrimitive<FHIRString>?
	
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesSoftware else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(version)
	}
}

/**
 Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
 */
open class TerminologyCapabilitiesTranslation: BackboneElement {
	
	/// Whether the client must identify the map
	public var needsMap: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer taking all required properties
	public init(needsMap: FHIRPrimitive<FHIRBool>) {
		self.needsMap = needsMap
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							needsMap: FHIRPrimitive<FHIRBool>)
	{
		self.init(needsMap: needsMap)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case needsMap; case _needsMap
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.needsMap = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .needsMap, auxiliaryKey: ._needsMap)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try needsMap.encode(on: &_container, forKey: .needsMap, auxiliaryKey: ._needsMap)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesTranslation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return needsMap == _other.needsMap
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(needsMap)
	}
}

/**
 Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
 */
open class TerminologyCapabilitiesValidateCode: BackboneElement {
	
	/// Whether translations are validated
	public var translations: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer taking all required properties
	public init(translations: FHIRPrimitive<FHIRBool>) {
		self.translations = translations
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							translations: FHIRPrimitive<FHIRBool>)
	{
		self.init(translations: translations)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case translations; case _translations
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.translations = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .translations, auxiliaryKey: ._translations)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try translations.encode(on: &_container, forKey: .translations, auxiliaryKey: ._translations)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TerminologyCapabilitiesValidateCode else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return translations == _other.translations
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(translations)
	}
}
