//
//  SearchParameter.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SearchParameter)
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
 Search parameter for a resource.
 
 A search parameter that defines a named search item that can be used to search/filter on a resource.
 */
public struct SearchParameter: DomainResource {
	
	public static let resourceType: ResourceType = .searchParameter
	
	/// The base resource type(s) that this search parameter can be used against.
	public var base: [FHIRPrimitive<ResourceType>]
	
	/// Chained names supported
	public var chain: [FHIRPrimitive<FHIRString>]?
	
	/// Code used in URL
	public var code: FHIRPrimitive<FHIRString>
	
	/// Comparators supported for the search parameter.
	public var comparator: [FHIRPrimitive<SearchComparator>]?
	
	/// For Composite resources to define the parts
	public var component: [SearchParameterComponent]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Original definition for the search parameter
	public var derivedFrom: FHIRPrimitive<Canonical>?
	
	/// Natural language description of the search parameter
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// FHIRPath expression that extracts the values
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for search parameter (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// A modifier supported for the search parameter.
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Allow multiple parameters (and)
	public var multipleAnd: FHIRPrimitive<FHIRBool>?
	
	/// Allow multiple values per parameter (or)
	public var multipleOr: FHIRPrimitive<FHIRBool>?
	
	/// Name for this search parameter (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this search parameter is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Types of resource (if a resource is referenced).
	public var target: [FHIRPrimitive<ResourceType>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The type of value that a search parameter may contain, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Canonical identifier for this search parameter, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the search parameter
	public var version: FHIRPrimitive<FHIRString>?
	
	/// XPath that extracts the values
	public var xpath: FHIRPrimitive<FHIRString>?
	
	/// How the search parameter relates to the set of elements returned by evaluating the xpath query.
	public var xpathUsage: FHIRPrimitive<XPathUsageType>?
	
	/// Designated initializer
	public init(
		base: [FHIRPrimitive<ResourceType>],
		chain: [FHIRPrimitive<FHIRString>]? = nil,
		code: FHIRPrimitive<FHIRString>,
		comparator: [FHIRPrimitive<SearchComparator>]? = nil,
		component: [SearchParameterComponent]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFrom: FHIRPrimitive<Canonical>? = nil,
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
		multipleAnd: FHIRPrimitive<FHIRBool>? = nil,
		multipleOr: FHIRPrimitive<FHIRBool>? = nil,
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
		xpathUsage: FHIRPrimitive<XPathUsageType>? = nil
	) {
		self.base = base
		self.chain = chain
		self.code = code
		self.comparator = comparator
		self.component = component
		self.contact = contact
		self.contained = contained
		self.date = date
		self.derivedFrom = derivedFrom
		self.description_fhir = description_fhir
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
		self.multipleAnd = multipleAnd
		self.multipleOr = multipleOr
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.target = target
		self.text = text
		self.type = type
		self.url = url
		self.useContext = useContext
		self.version = version
		self.xpath = xpath
		self.xpathUsage = xpathUsage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case base; case _base
		case chain; case _chain
		case code; case _code
		case comparator; case _comparator
		case component
		case contact
		case contained
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case expression; case _expression
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case meta
		case modifier; case _modifier
		case modifierExtension
		case multipleAnd; case _multipleAnd
		case multipleOr; case _multipleOr
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case target; case _target
		case text
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
		case xpath; case _xpath
		case xpathUsage; case _xpathUsage
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.base = try [FHIRPrimitive<ResourceType>](from: _container, forKey: .base, auxiliaryKey: ._base)
		self.chain = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .chain, auxiliaryKey: ._chain)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.comparator = try [FHIRPrimitive<SearchComparator>](from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.component = try [SearchParameterComponent](from: _container, forKeyIfPresent: .component)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multipleAnd = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleAnd, auxiliaryKey: ._multipleAnd)
		self.multipleOr = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleOr, auxiliaryKey: ._multipleOr)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.target = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.xpath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .xpath, auxiliaryKey: ._xpath)
		self.xpathUsage = try FHIRPrimitive<XPathUsageType>(from: _container, forKeyIfPresent: .xpathUsage, auxiliaryKey: ._xpathUsage)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try base.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try chain?.encode(on: &_container, forKey: .chain, auxiliaryKey: ._chain)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try component?.encode(on: &_container, forKey: .component)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try multipleAnd?.encode(on: &_container, forKey: .multipleAnd, auxiliaryKey: ._multipleAnd)
		try multipleOr?.encode(on: &_container, forKey: .multipleOr, auxiliaryKey: ._multipleOr)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try xpath?.encode(on: &_container, forKey: .xpath, auxiliaryKey: ._xpath)
		try xpathUsage?.encode(on: &_container, forKey: .xpathUsage, auxiliaryKey: ._xpathUsage)
	}
}

/**
 For Composite resources to define the parts.
 
 Used to define the parts of a composite search parameter.
 */
public struct SearchParameterComponent: BackboneElement {
	
	/// Defines how the part works
	public var definition: FHIRPrimitive<Canonical>
	
	/// Subexpression relative to main expression
	public var expression: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		definition: FHIRPrimitive<Canonical>,
		expression: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.definition = definition
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case expression; case _expression
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKey: .definition, auxiliaryKey: ._definition)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKey: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try expression.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
