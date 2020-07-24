//
//  SearchParameter.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/SearchParameter)
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
 Search Parameter for a resource.
 
 A search parameter that defines a named search item that can be used to search/filter on a resource.
 */
open class SearchParameter: DomainResource {
	
	override open class var resourceType: ResourceType { return .searchParameter }
	
	/// Logical URI to reference this search parameter (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Business version of the search parameter
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this search parameter (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for search parameter (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this search parameter is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Code used in URL
	public var code: FHIRPrimitive<FHIRString>
	
	/// The base resource type(s) that this search parameter can be used against.
	public var base: [FHIRPrimitive<ResourceType>]
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Original Definition for the search parameter
	public var derivedFrom: FHIRPrimitive<FHIRURI>?
	
	/// Natural language description of the search parameter
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// FHIRPath expression that extracts the values
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// XPath that extracts the values
	public var xpath: FHIRPrimitive<FHIRString>?
	
	/// How the search parameter relates to the set of elements returned by evaluating the xpath query.
	public var xpathUsage: FHIRPrimitive<XPathUsageType>?
	
	/// Types of resource (if a resource is referenced).
	public var target: [FHIRPrimitive<ResourceType>]?
	
	/// Comparators supported for the search parameter.
	public var comparator: [FHIRPrimitive<SearchComparator>]?
	
	/// A modifier supported for the search parameter.
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Chained names supported
	public var chain: [FHIRPrimitive<FHIRString>]?
	
	/// For Composite resources to define the parts
	public var component: [SearchParameterComponent]?
	
	/// Designated initializer taking all required properties
	public init(base: [FHIRPrimitive<ResourceType>], code: FHIRPrimitive<FHIRString>, description_fhir: FHIRPrimitive<FHIRString>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, type: FHIRPrimitive<SearchParamType>, url: FHIRPrimitive<FHIRURI>) {
		self.base = base
		self.code = code
		self.description_fhir = description_fhir
		self.name = name
		self.status = status
		self.type = type
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							base: [FHIRPrimitive<ResourceType>],
							chain: [FHIRPrimitive<FHIRString>]? = nil,
							code: FHIRPrimitive<FHIRString>,
							comparator: [FHIRPrimitive<SearchComparator>]? = nil,
							component: [SearchParameterComponent]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							derivedFrom: FHIRPrimitive<FHIRURI>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							expression: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifier: [FHIRPrimitive<SearchModifierCode>]? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							target: [FHIRPrimitive<ResourceType>]? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<SearchParamType>,
							url: FHIRPrimitive<FHIRURI>,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil,
							xpath: FHIRPrimitive<FHIRString>? = nil,
							xpathUsage: FHIRPrimitive<XPathUsageType>? = nil)
	{
		self.init(base: base, code: code, description_fhir: description_fhir, name: name, status: status, type: type, url: url)
		self.chain = chain
		self.comparator = comparator
		self.component = component
		self.contact = contact
		self.contained = contained
		self.date = date
		self.derivedFrom = derivedFrom
		self.experimental = experimental
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.purpose = purpose
		self.target = target
		self.text = text
		self.useContext = useContext
		self.version = version
		self.xpath = xpath
		self.xpathUsage = xpathUsage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case base; case _base
		case chain; case _chain
		case code; case _code
		case comparator; case _comparator
		case component
		case contact
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case expression; case _expression
		case jurisdiction
		case modifier; case _modifier
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case target; case _target
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
		case xpath; case _xpath
		case xpathUsage; case _xpathUsage
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.base = try [FHIRPrimitive<ResourceType>](from: _container, forKey: .base, auxiliaryKey: ._base)
		self.chain = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .chain, auxiliaryKey: ._chain)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.comparator = try [FHIRPrimitive<SearchComparator>](from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.component = try [SearchParameterComponent](from: _container, forKeyIfPresent: .component)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.target = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.xpath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .xpath, auxiliaryKey: ._xpath)
		self.xpathUsage = try FHIRPrimitive<XPathUsageType>(from: _container, forKeyIfPresent: .xpathUsage, auxiliaryKey: ._xpathUsage)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try base.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try chain?.encode(on: &_container, forKey: .chain, auxiliaryKey: ._chain)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try component?.encode(on: &_container, forKey: .component)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try xpath?.encode(on: &_container, forKey: .xpath, auxiliaryKey: ._xpath)
		try xpathUsage?.encode(on: &_container, forKey: .xpathUsage, auxiliaryKey: ._xpathUsage)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SearchParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return base == _other.base
		    && chain == _other.chain
		    && code == _other.code
		    && comparator == _other.comparator
		    && component == _other.component
		    && contact == _other.contact
		    && date == _other.date
		    && derivedFrom == _other.derivedFrom
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && expression == _other.expression
		    && jurisdiction == _other.jurisdiction
		    && modifier == _other.modifier
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && target == _other.target
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && xpath == _other.xpath
		    && xpathUsage == _other.xpathUsage
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(base)
		hasher.combine(chain)
		hasher.combine(code)
		hasher.combine(comparator)
		hasher.combine(component)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(derivedFrom)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(expression)
		hasher.combine(jurisdiction)
		hasher.combine(modifier)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(target)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(xpath)
		hasher.combine(xpathUsage)
	}
}

/**
 For Composite resources to define the parts.
 
 Used to define the parts of a composite search parameter.
 */
open class SearchParameterComponent: BackboneElement {
	
	/// Defines how the part works
	public var definition: Reference
	
	/// Subexpression relative to main expression
	public var expression: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(definition: Reference, expression: FHIRPrimitive<FHIRString>) {
		self.definition = definition
		self.expression = expression
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: Reference,
							expression: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(definition: definition, expression: expression)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition
		case expression; case _expression
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try Reference(from: _container, forKey: .definition)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKey: .expression, auxiliaryKey: ._expression)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition.encode(on: &_container, forKey: .definition)
		try expression.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SearchParameterComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && expression == _other.expression
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(expression)
	}
}
