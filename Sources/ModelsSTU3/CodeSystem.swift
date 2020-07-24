//
//  CodeSystem.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CodeSystem)
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
 
 A code system resource specifies a set of codes drawn from one or more code systems.
 */
open class CodeSystem: DomainResource {
	
	override open class var resourceType: ResourceType { return .codeSystem }
	
	/// Logical URI to reference this code system (globally unique) (Coding.system)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the code system
	public var identifier: Identifier?
	
	/// Business version of the code system (Coding.version)
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this code system (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this code system (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this code system. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the code system
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for code system (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this code system is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// If code comparison is case sensitive
	public var caseSensitive: FHIRPrimitive<FHIRBool>?
	
	/// Canonical URL for value set with entire code system
	public var valueSet: FHIRPrimitive<FHIRURI>?
	
	/// The meaning of the hierarchy of concepts.
	public var hierarchyMeaning: FHIRPrimitive<CodeSystemHierarchyMeaning>?
	
	/// If code system defines a post-composition grammar
	public var compositional: FHIRPrimitive<FHIRBool>?
	
	/// If definitions are not stable
	public var versionNeeded: FHIRPrimitive<FHIRBool>?
	
	/// How much of the content of the code system - the concepts and codes it defines - are represented in this
	/// resource.
	public var content: FHIRPrimitive<CodeSystemContentMode>
	
	/// Total concepts in the code system
	public var count: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Filter that can be used in a value set
	public var filter: [CodeSystemFilter]?
	
	/// Additional information supplied about each concept
	public var property: [CodeSystemProperty]?
	
	/// Concepts in the code system
	public var concept: [CodeSystemConcept]?
	
	/// Designated initializer taking all required properties
	public init(content: FHIRPrimitive<CodeSystemContentMode>, status: FHIRPrimitive<PublicationStatus>) {
		self.content = content
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							caseSensitive: FHIRPrimitive<FHIRBool>? = nil,
							compositional: FHIRPrimitive<FHIRBool>? = nil,
							concept: [CodeSystemConcept]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							content: FHIRPrimitive<CodeSystemContentMode>,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							count: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							filter: [CodeSystemFilter]? = nil,
							hierarchyMeaning: FHIRPrimitive<CodeSystemHierarchyMeaning>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							property: [CodeSystemProperty]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							valueSet: FHIRPrimitive<FHIRURI>? = nil,
							version: FHIRPrimitive<FHIRString>? = nil,
							versionNeeded: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init(content: content, status: status)
		self.caseSensitive = caseSensitive
		self.compositional = compositional
		self.concept = concept
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.count = count
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.filter = filter
		self.hierarchyMeaning = hierarchyMeaning
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.property = property
		self.publisher = publisher
		self.purpose = purpose
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.valueSet = valueSet
		self.version = version
		self.versionNeeded = versionNeeded
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case caseSensitive; case _caseSensitive
		case compositional; case _compositional
		case concept
		case contact
		case content; case _content
		case copyright; case _copyright
		case count; case _count
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case filter
		case hierarchyMeaning; case _hierarchyMeaning
		case identifier
		case jurisdiction
		case name; case _name
		case property
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case valueSet; case _valueSet
		case version; case _version
		case versionNeeded; case _versionNeeded
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.caseSensitive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .caseSensitive, auxiliaryKey: ._caseSensitive)
		self.compositional = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .compositional, auxiliaryKey: ._compositional)
		self.concept = try [CodeSystemConcept](from: _container, forKeyIfPresent: .concept)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.content = try FHIRPrimitive<CodeSystemContentMode>(from: _container, forKey: .content, auxiliaryKey: ._content)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.count = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.filter = try [CodeSystemFilter](from: _container, forKeyIfPresent: .filter)
		self.hierarchyMeaning = try FHIRPrimitive<CodeSystemHierarchyMeaning>(from: _container, forKeyIfPresent: .hierarchyMeaning, auxiliaryKey: ._hierarchyMeaning)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.property = try [CodeSystemProperty](from: _container, forKeyIfPresent: .property)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.valueSet = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.versionNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .versionNeeded, auxiliaryKey: ._versionNeeded)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try caseSensitive?.encode(on: &_container, forKey: .caseSensitive, auxiliaryKey: ._caseSensitive)
		try compositional?.encode(on: &_container, forKey: .compositional, auxiliaryKey: ._compositional)
		try concept?.encode(on: &_container, forKey: .concept)
		try contact?.encode(on: &_container, forKey: .contact)
		try content.encode(on: &_container, forKey: .content, auxiliaryKey: ._content)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try filter?.encode(on: &_container, forKey: .filter)
		try hierarchyMeaning?.encode(on: &_container, forKey: .hierarchyMeaning, auxiliaryKey: ._hierarchyMeaning)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try property?.encode(on: &_container, forKey: .property)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try versionNeeded?.encode(on: &_container, forKey: .versionNeeded, auxiliaryKey: ._versionNeeded)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CodeSystem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return caseSensitive == _other.caseSensitive
		    && compositional == _other.compositional
		    && concept == _other.concept
		    && contact == _other.contact
		    && content == _other.content
		    && copyright == _other.copyright
		    && count == _other.count
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && filter == _other.filter
		    && hierarchyMeaning == _other.hierarchyMeaning
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && property == _other.property
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && valueSet == _other.valueSet
		    && version == _other.version
		    && versionNeeded == _other.versionNeeded
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(caseSensitive)
		hasher.combine(compositional)
		hasher.combine(concept)
		hasher.combine(contact)
		hasher.combine(content)
		hasher.combine(copyright)
		hasher.combine(count)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(filter)
		hasher.combine(hierarchyMeaning)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(property)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(valueSet)
		hasher.combine(version)
		hasher.combine(versionNeeded)
	}
}

/**
 Concepts in the code system.
 
 Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be
 consulted to determine what the meaning of the hierarchical relationships are.
 */
open class CodeSystemConcept: BackboneElement {
	
	/// Code that identifies concept
	public var code: FHIRPrimitive<FHIRString>
	
	/// Text to display to the user
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Formal definition
	public var definition: FHIRPrimitive<FHIRString>?
	
	/// Additional representations for the concept
	public var designation: [CodeSystemConceptDesignation]?
	
	/// Property value for the concept
	public var property: [CodeSystemConceptProperty]?
	
	/// Child Concepts (is-a/contains/categorizes)
	public var concept: [CodeSystemConcept]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							concept: [CodeSystemConcept]? = nil,
							definition: FHIRPrimitive<FHIRString>? = nil,
							designation: [CodeSystemConceptDesignation]? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							property: [CodeSystemConceptProperty]? = nil)
	{
		self.init(code: code)
		self.concept = concept
		self.definition = definition
		self.designation = designation
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.property = property
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case concept
		case definition; case _definition
		case designation
		case display; case _display
		case property
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.concept = try [CodeSystemConcept](from: _container, forKeyIfPresent: .concept)
		self.definition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.designation = try [CodeSystemConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.property = try [CodeSystemConceptProperty](from: _container, forKeyIfPresent: .property)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try concept?.encode(on: &_container, forKey: .concept)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try property?.encode(on: &_container, forKey: .property)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CodeSystemConcept else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && concept == _other.concept
		    && definition == _other.definition
		    && designation == _other.designation
		    && display == _other.display
		    && property == _other.property
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(concept)
		hasher.combine(definition)
		hasher.combine(designation)
		hasher.combine(display)
		hasher.combine(property)
	}
}

/**
 Additional representations for the concept.
 
 Additional representations for the concept - other languages, aliases, specialized purposes, used for particular
 purposes, etc.
 */
open class CodeSystemConceptDesignation: BackboneElement {
	
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
		guard let _other = _other as? CodeSystemConceptDesignation else {
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
 Property value for the concept.
 
 A property value for this concept.
 */
open class CodeSystemConceptProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case coding(Coding)
		case dateTime(FHIRPrimitive<DateTime>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Reference to CodeSystem.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Value of the property for this concept
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: ValueX)
	{
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueDateTime; case _valueDateTime
		case valueInteger; case _valueInteger
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCoding, CodingKeys.valueDateTime, CodingKeys.valueInteger, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		var _t_value: ValueX? = nil
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		
			switch value {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CodeSystemConceptProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Filter that can be used in a value set.
 
 A filter that can be used in a value set compose statement when selecting concepts using a filter.
 */
open class CodeSystemFilter: BackboneElement {
	
	/// Code that identifies the filter
	public var code: FHIRPrimitive<FHIRString>
	
	/// How or why the filter is used
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A list of operators that can be used with the filter.
	public var `operator`: [FHIRPrimitive<FilterOperator>]
	
	/// What to use for the value
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, `operator`: [FHIRPrimitive<FilterOperator>], value: FHIRPrimitive<FHIRString>) {
		self.code = code
		self.`operator` = `operator`
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							`operator`: [FHIRPrimitive<FilterOperator>],
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(code: code, operator: `operator`, value: value)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `operator` = "operator"; case _operator = "_operator"
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`operator` = try [FHIRPrimitive<FilterOperator>](from: _container, forKey: .`operator`, auxiliaryKey: ._operator)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `operator`.encode(on: &_container, forKey: .`operator`, auxiliaryKey: ._operator)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CodeSystemFilter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && `operator` == _other.`operator`
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(`operator`)
		hasher.combine(value)
	}
}

/**
 Additional information supplied about each concept.
 
 A property defines an additional slot through which additional information can be provided about a concept.
 */
open class CodeSystemProperty: BackboneElement {
	
	/// Identifies the property on the concepts, and when referred to in operations
	public var code: FHIRPrimitive<FHIRString>
	
	/// Formal identifier for the property
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Why the property is defined, and/or what it conveys
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The type of the property value. Properties of type "code" contain a code defined by the code system (e.g. a
	/// reference to anotherr defined concept).
	public var type: FHIRPrimitive<PropertyType>
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<PropertyType>) {
		self.code = code
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<PropertyType>,
							uri: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(code: code, type: type)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case type; case _type
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.type = try FHIRPrimitive<PropertyType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CodeSystemProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && type == _other.type
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(type)
		hasher.combine(uri)
	}
}
