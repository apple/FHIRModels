//
//  ValueSet.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ValueSet)
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
 A set of codes drawn from one or more code systems.
 
 A value set specifies a set of codes drawn from one or more code systems.
 */
open class ValueSet: DomainResource {
	
	override open class var resourceType: ResourceType { return .valueSet }
	
	/// Globally unique logical identifier for  value set
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the value set (e.g. HL7 v2 / CDA)
	public var identifier: Identifier?
	
	/// Logical identifier for this version of the value set
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Informal name for this value set
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of the value set.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [ValueSetContact]?
	
	/// Date for given status
	public var date: FHIRPrimitive<DateTime>?
	
	/// Fixed date for all referenced code systems and value sets
	public var lockedDate: FHIRPrimitive<FHIRDate>?
	
	/// Human language description of the value set
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: FHIRPrimitive<FHIRBool>?
	
	/// Why needed
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Whether this is intended to be used with an extensible binding
	public var extensible: FHIRPrimitive<FHIRBool>?
	
	/// An inline code system, which is part of this value set
	public var codeSystem: ValueSetCodeSystem?
	
	/// When value set includes codes from elsewhere
	public var compose: ValueSetCompose?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ConformanceResourceStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							codeSystem: ValueSetCodeSystem? = nil,
							compose: ValueSetCompose? = nil,
							contact: [ValueSetContact]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							expansion: ValueSetExpansion? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							extensible: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							immutable: FHIRPrimitive<FHIRBool>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							lockedDate: FHIRPrimitive<FHIRDate>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							requirements: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<ConformanceResourceStatus>,
							text: Narrative? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [CodeableConcept]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
		self.codeSystem = codeSystem
		self.compose = compose
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.expansion = expansion
		self.experimental = experimental
		self.extensible = extensible
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.immutable = immutable
		self.implicitRules = implicitRules
		self.language = language
		self.lockedDate = lockedDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.requirements = requirements
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeSystem
		case compose
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case expansion
		case experimental; case _experimental
		case extensible; case _extensible
		case identifier
		case immutable; case _immutable
		case lockedDate; case _lockedDate
		case name; case _name
		case publisher; case _publisher
		case requirements; case _requirements
		case status; case _status
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.codeSystem = try ValueSetCodeSystem(from: _container, forKeyIfPresent: .codeSystem)
		self.compose = try ValueSetCompose(from: _container, forKeyIfPresent: .compose)
		self.contact = try [ValueSetContact](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expansion = try ValueSetExpansion(from: _container, forKeyIfPresent: .expansion)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.extensible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .extensible, auxiliaryKey: ._extensible)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.immutable = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .immutable, auxiliaryKey: ._immutable)
		self.lockedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lockedDate, auxiliaryKey: ._lockedDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try codeSystem?.encode(on: &_container, forKey: .codeSystem)
		try compose?.encode(on: &_container, forKey: .compose)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expansion?.encode(on: &_container, forKey: .expansion)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try extensible?.encode(on: &_container, forKey: .extensible, auxiliaryKey: ._extensible)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try immutable?.encode(on: &_container, forKey: .immutable, auxiliaryKey: ._immutable)
		try lockedDate?.encode(on: &_container, forKey: .lockedDate, auxiliaryKey: ._lockedDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSet else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return codeSystem == _other.codeSystem
		    && compose == _other.compose
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && expansion == _other.expansion
		    && experimental == _other.experimental
		    && extensible == _other.extensible
		    && identifier == _other.identifier
		    && immutable == _other.immutable
		    && lockedDate == _other.lockedDate
		    && name == _other.name
		    && publisher == _other.publisher
		    && requirements == _other.requirements
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(codeSystem)
		hasher.combine(compose)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(expansion)
		hasher.combine(experimental)
		hasher.combine(extensible)
		hasher.combine(identifier)
		hasher.combine(immutable)
		hasher.combine(lockedDate)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(requirements)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 An inline code system, which is part of this value set.
 
 A definition of a code system, inlined into the value set (as a packaging convenience). Note that the inline code
 system may be used from other value sets by referring to its (codeSystem.system) directly.
 */
open class ValueSetCodeSystem: BackboneElement {
	
	/// URI to identify the code system (e.g. in Coding.system)
	public var system: FHIRPrimitive<FHIRURI>
	
	/// Version (for use in Coding.version)
	public var version: FHIRPrimitive<FHIRString>?
	
	/// If code comparison is case sensitive
	public var caseSensitive: FHIRPrimitive<FHIRBool>?
	
	/// Concepts in the code system
	public var concept: [ValueSetCodeSystemConcept]
	
	/// Designated initializer taking all required properties
	public init(concept: [ValueSetCodeSystemConcept], system: FHIRPrimitive<FHIRURI>) {
		self.concept = concept
		self.system = system
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							caseSensitive: FHIRPrimitive<FHIRBool>? = nil,
							concept: [ValueSetCodeSystemConcept],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							system: FHIRPrimitive<FHIRURI>,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(concept: concept, system: system)
		self.caseSensitive = caseSensitive
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case caseSensitive; case _caseSensitive
		case concept
		case system; case _system
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.caseSensitive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .caseSensitive, auxiliaryKey: ._caseSensitive)
		self.concept = try [ValueSetCodeSystemConcept](from: _container, forKey: .concept)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try caseSensitive?.encode(on: &_container, forKey: .caseSensitive, auxiliaryKey: ._caseSensitive)
		try concept.encode(on: &_container, forKey: .concept)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetCodeSystem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return caseSensitive == _other.caseSensitive
		    && concept == _other.concept
		    && system == _other.system
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(caseSensitive)
		hasher.combine(concept)
		hasher.combine(system)
		hasher.combine(version)
	}
}

/**
 Concepts in the code system.
 
 Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be
 consulted to determine what the meaning of the hierarchical relationships are.
 */
open class ValueSetCodeSystemConcept: BackboneElement {
	
	/// Code that identifies concept
	public var code: FHIRPrimitive<FHIRString>
	
	/// If this code is not for use as a real concept
	public var abstract: FHIRPrimitive<FHIRBool>?
	
	/// Text to display to the user
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Formal definition
	public var definition: FHIRPrimitive<FHIRString>?
	
	/// Additional representations for the concept
	public var designation: [ValueSetCodeSystemConceptDesignation]?
	
	/// Child Concepts (is-a/contains/categorizes)
	public var concept: [ValueSetCodeSystemConcept]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abstract: FHIRPrimitive<FHIRBool>? = nil,
							code: FHIRPrimitive<FHIRString>,
							concept: [ValueSetCodeSystemConcept]? = nil,
							definition: FHIRPrimitive<FHIRString>? = nil,
							designation: [ValueSetCodeSystemConceptDesignation]? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code)
		self.abstract = abstract
		self.concept = concept
		self.definition = definition
		self.designation = designation
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case code; case _code
		case concept
		case definition; case _definition
		case designation
		case display; case _display
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .abstract, auxiliaryKey: ._abstract)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.concept = try [ValueSetCodeSystemConcept](from: _container, forKeyIfPresent: .concept)
		self.definition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.designation = try [ValueSetCodeSystemConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract?.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try concept?.encode(on: &_container, forKey: .concept)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetCodeSystemConcept else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abstract == _other.abstract
		    && code == _other.code
		    && concept == _other.concept
		    && definition == _other.definition
		    && designation == _other.designation
		    && display == _other.display
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(code)
		hasher.combine(concept)
		hasher.combine(definition)
		hasher.combine(designation)
		hasher.combine(display)
	}
}

/**
 Additional representations for the concept.
 
 Additional representations for the concept - other languages, aliases, specialized purposes, used for particular
 purposes, etc.
 */
open class ValueSetCodeSystemConceptDesignation: BackboneElement {
	
	/// Human language of the designation
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Details how this designation would be used
	public var use: Coding?
	
	/// The text value for this designation
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							use: Coding? = nil,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language; case _language
		case use
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try use?.encode(on: &_container, forKey: .use)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetCodeSystemConceptDesignation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && use == _other.use
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(use)
		hasher.combine(value)
	}
}

/**
 When value set includes codes from elsewhere.
 
 A set of criteria that provide the content logical definition of the value set by including or excluding codes from
 outside this value set.
 */
open class ValueSetCompose: BackboneElement {
	
	/// Import the contents of another value set
	public var `import`: [FHIRPrimitive<FHIRURI>]?
	
	/// Include one or more codes from a code system
	public var include: [ValueSetComposeInclude]?
	
	/// Explicitly exclude codes
	public var exclude: [ValueSetComposeInclude]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							exclude: [ValueSetComposeInclude]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							`import`: [FHIRPrimitive<FHIRURI>]? = nil,
							include: [ValueSetComposeInclude]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.`import` = `import`
		self.include = include
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclude
		case `import` = "import"; case _import = "_import"
		case include
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.exclude = try [ValueSetComposeInclude](from: _container, forKeyIfPresent: .exclude)
		self.`import` = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .`import`, auxiliaryKey: ._import)
		self.include = try [ValueSetComposeInclude](from: _container, forKeyIfPresent: .include)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try exclude?.encode(on: &_container, forKey: .exclude)
		try `import`?.encode(on: &_container, forKey: .`import`, auxiliaryKey: ._import)
		try include?.encode(on: &_container, forKey: .include)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetCompose else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return exclude == _other.exclude
		    && `import` == _other.`import`
		    && include == _other.include
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(exclude)
		hasher.combine(`import`)
		hasher.combine(include)
	}
}

/**
 Include one or more codes from a code system.
 */
open class ValueSetComposeInclude: BackboneElement {
	
	/// The system the codes come from
	public var system: FHIRPrimitive<FHIRURI>
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>?
	
	/// A concept defined in the system
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// Select codes/concepts by their properties (including relationships)
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// Designated initializer taking all required properties
	public init(system: FHIRPrimitive<FHIRURI>) {
		self.system = system
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							concept: [ValueSetComposeIncludeConcept]? = nil,
							`extension`: [Extension]? = nil,
							filter: [ValueSetComposeIncludeFilter]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							system: FHIRPrimitive<FHIRURI>,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(system: system)
		self.concept = concept
		self.`extension` = `extension`
		self.filter = filter
		self.id = id
		self.modifierExtension = modifierExtension
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concept
		case filter
		case system; case _system
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.concept = try [ValueSetComposeIncludeConcept](from: _container, forKeyIfPresent: .concept)
		self.filter = try [ValueSetComposeIncludeFilter](from: _container, forKeyIfPresent: .filter)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try concept?.encode(on: &_container, forKey: .concept)
		try filter?.encode(on: &_container, forKey: .filter)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeInclude else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return concept == _other.concept
		    && filter == _other.filter
		    && system == _other.system
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(concept)
		hasher.combine(filter)
		hasher.combine(system)
		hasher.combine(version)
	}
}

/**
 A concept defined in the system.
 
 Specifies a concept to be included or excluded.
 */
open class ValueSetComposeIncludeConcept: BackboneElement {
	
	/// Code or expression from system
	public var code: FHIRPrimitive<FHIRString>
	
	/// Test to display for this code for this value set
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional representations for this valueset
	public var designation: [ValueSetCodeSystemConceptDesignation]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							designation: [ValueSetCodeSystemConceptDesignation]? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code)
		self.designation = designation
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case designation
		case display; case _display
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.designation = try [ValueSetCodeSystemConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeIncludeConcept else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && designation == _other.designation
		    && display == _other.display
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(designation)
		hasher.combine(display)
	}
}

/**
 Select codes/concepts by their properties (including relationships).
 
 Select concepts by specify a matching criteria based on the properties (including relationships) defined by the system.
 If multiple filters are specified, they SHALL all be true.
 */
open class ValueSetComposeIncludeFilter: BackboneElement {
	
	/// A property defined by the code system
	public var property: FHIRPrimitive<FHIRString>
	
	/// The kind of operation to perform as a part of the filter criteria.
	/// Restricted to: ['=', 'is-a', 'is-not-a', 'regex', 'in', 'not-in']
	public var op: FHIRPrimitive<FilterOperator>
	
	/// Code from the system, or regex criteria
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(op: FHIRPrimitive<FilterOperator>, property: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.op = op
		self.property = property
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							op: FHIRPrimitive<FilterOperator>,
							property: FHIRPrimitive<FHIRString>,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(op: op, property: property, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case op; case _op
		case property; case _property
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.op = try FHIRPrimitive<FilterOperator>(from: _container, forKey: .op, auxiliaryKey: ._op)
		self.property = try FHIRPrimitive<FHIRString>(from: _container, forKey: .property, auxiliaryKey: ._property)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try op.encode(on: &_container, forKey: .op, auxiliaryKey: ._op)
		try property.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeIncludeFilter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return op == _other.op
		    && property == _other.property
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(op)
		hasher.combine(property)
		hasher.combine(value)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class ValueSetContact: BackboneElement {
	
	/// Name of an individual to contact
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
		guard let _other = _other as? ValueSetContact else {
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
 Used when the value set is "expanded".
 
 A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 element holds the expansion, if it has been performed.
 */
open class ValueSetExpansion: BackboneElement {
	
	/// Uniquely identifies this expansion
	public var identifier: FHIRPrimitive<FHIRURI>
	
	/// Time ValueSet expansion happened
	public var timestamp: FHIRPrimitive<DateTime>
	
	/// Total number of codes in the expansion
	public var total: FHIRPrimitive<FHIRInteger>?
	
	/// Offset at which this resource starts
	public var offset: FHIRPrimitive<FHIRInteger>?
	
	/// Parameter that controlled the expansion process
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// Designated initializer taking all required properties
	public init(identifier: FHIRPrimitive<FHIRURI>, timestamp: FHIRPrimitive<DateTime>) {
		self.identifier = identifier
		self.timestamp = timestamp
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contains: [ValueSetExpansionContains]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: FHIRPrimitive<FHIRURI>,
							modifierExtension: [Extension]? = nil,
							offset: FHIRPrimitive<FHIRInteger>? = nil,
							parameter: [ValueSetExpansionParameter]? = nil,
							timestamp: FHIRPrimitive<DateTime>,
							total: FHIRPrimitive<FHIRInteger>? = nil)
	{
		self.init(identifier: identifier, timestamp: timestamp)
		self.contains = contains
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.offset = offset
		self.parameter = parameter
		self.total = total
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contains
		case identifier; case _identifier
		case offset; case _offset
		case parameter
		case timestamp; case _timestamp
		case total; case _total
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contains = try [ValueSetExpansionContains](from: _container, forKeyIfPresent: .contains)
		self.identifier = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .identifier, auxiliaryKey: ._identifier)
		self.offset = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .offset, auxiliaryKey: ._offset)
		self.parameter = try [ValueSetExpansionParameter](from: _container, forKeyIfPresent: .parameter)
		self.timestamp = try FHIRPrimitive<DateTime>(from: _container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		self.total = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .total, auxiliaryKey: ._total)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contains?.encode(on: &_container, forKey: .contains)
		try identifier.encode(on: &_container, forKey: .identifier, auxiliaryKey: ._identifier)
		try offset?.encode(on: &_container, forKey: .offset, auxiliaryKey: ._offset)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try timestamp.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try total?.encode(on: &_container, forKey: .total, auxiliaryKey: ._total)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contains == _other.contains
		    && identifier == _other.identifier
		    && offset == _other.offset
		    && parameter == _other.parameter
		    && timestamp == _other.timestamp
		    && total == _other.total
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contains)
		hasher.combine(identifier)
		hasher.combine(offset)
		hasher.combine(parameter)
		hasher.combine(timestamp)
		hasher.combine(total)
	}
}

/**
 Codes in the value set.
 
 The codes that are contained in the value set expansion.
 */
open class ValueSetExpansionContains: BackboneElement {
	
	/// System value for the code
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// If user cannot select this entry
	public var abstract: FHIRPrimitive<FHIRBool>?
	
	/// Version in which this code/display is defined
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Code - if blank, this is not a selectable code
	public var code: FHIRPrimitive<FHIRString>?
	
	/// User display for the concept
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Codes contained under this entry
	public var contains: [ValueSetExpansionContains]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							abstract: FHIRPrimitive<FHIRBool>? = nil,
							code: FHIRPrimitive<FHIRString>? = nil,
							contains: [ValueSetExpansionContains]? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							system: FHIRPrimitive<FHIRURI>? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.abstract = abstract
		self.code = code
		self.contains = contains
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.system = system
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case code; case _code
		case contains
		case display; case _display
		case system; case _system
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .abstract, auxiliaryKey: ._abstract)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.contains = try [ValueSetExpansionContains](from: _container, forKeyIfPresent: .contains)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract?.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contains?.encode(on: &_container, forKey: .contains)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionContains else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abstract == _other.abstract
		    && code == _other.code
		    && contains == _other.contains
		    && display == _other.display
		    && system == _other.system
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(code)
		hasher.combine(contains)
		hasher.combine(display)
		hasher.combine(system)
		hasher.combine(version)
	}
}

/**
 Parameter that controlled the expansion process.
 
 A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to
 check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
open class ValueSetExpansionParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Name as assigned by the server
	public var name: FHIRPrimitive<FHIRString>
	
	/// Value of the named parameter
	/// One of `value[x]`
	public var value: ValueX?
	
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
							value: ValueX? = nil)
	{
		self.init(name: name)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueString; case _valueString
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		var _t_value: ValueX? = nil
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = value {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(value)
	}
}
