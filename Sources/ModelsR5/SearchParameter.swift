//
//  SearchParameter.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SearchParameter)
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
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The resource type(s) this search parameter applies to
	public var base: [FHIRPrimitive<FHIRString>]
	
	/// Chained names supported
	public var chain: [FHIRPrimitive<FHIRString>]?
	
	/// Recommended name for parameter in search url
	public var code: FHIRPrimitive<FHIRString>
	
	/// Comparators supported for the search parameter.
	public var comparator: [FHIRPrimitive<SearchComparator>]?
	
	/// For Composite resources to define the parts
	public var component: [SearchParameterComponent]?
	
	/// FHIRPath expression that constraints the usage of this SearchParamete
	public var constraint: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
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
	
	/// Additional identifier for the search parameter (business identifier)
	public var identifier: [Identifier]?
	
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
	
	/// How the search parameter relates to the set of elements returned by evaluating the expression query.
	public var processingMode: FHIRPrimitive<SearchProcessingModeType>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this search parameter is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Types of resource (if a resource reference)
	public var target: [FHIRPrimitive<FHIRString>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this search parameter (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The type of value that a search parameter may contain, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// Canonical identifier for this search parameter, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the search parameter
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		base: [FHIRPrimitive<FHIRString>],
		chain: [FHIRPrimitive<FHIRString>]? = nil,
		code: FHIRPrimitive<FHIRString>,
		comparator: [FHIRPrimitive<SearchComparator>]? = nil,
		component: [SearchParameterComponent]? = nil,
		constraint: FHIRPrimitive<FHIRString>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFrom: FHIRPrimitive<Canonical>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifier: [FHIRPrimitive<SearchModifierCode>]? = nil,
		modifierExtension: [Extension]? = nil,
		multipleAnd: FHIRPrimitive<FHIRBool>? = nil,
		multipleOr: FHIRPrimitive<FHIRBool>? = nil,
		name: FHIRPrimitive<FHIRString>,
		processingMode: FHIRPrimitive<SearchProcessingModeType>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		target: [FHIRPrimitive<FHIRString>]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<SearchParamType>,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.base = base
		self.chain = chain
		self.code = code
		self.comparator = comparator
		self.component = component
		self.constraint = constraint
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFrom = derivedFrom
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.multipleAnd = multipleAnd
		self.multipleOr = multipleOr
		self.name = name
		self.processingMode = processingMode
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.target = target
		self.text = text
		self.title = title
		self.type = type
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case base; case _base
		case chain; case _chain
		case code; case _code
		case comparator; case _comparator
		case component
		case constraint; case _constraint
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case expression; case _expression
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case meta
		case modifier; case _modifier
		case modifierExtension
		case multipleAnd; case _multipleAnd
		case multipleOr; case _multipleOr
		case name; case _name
		case processingMode; case _processingMode
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case target; case _target
		case text
		case title; case _title
		case type; case _type
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
		self.base = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .base, auxiliaryKey: ._base)
		self.chain = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .chain, auxiliaryKey: ._chain)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.comparator = try [FHIRPrimitive<SearchComparator>](from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.component = try [SearchParameterComponent](from: _container, forKeyIfPresent: .component)
		self.constraint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .constraint, auxiliaryKey: ._constraint)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multipleAnd = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleAnd, auxiliaryKey: ._multipleAnd)
		self.multipleOr = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleOr, auxiliaryKey: ._multipleOr)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.processingMode = try FHIRPrimitive<SearchProcessingModeType>(from: _container, forKeyIfPresent: .processingMode, auxiliaryKey: ._processingMode)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.target = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
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
		try base.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try chain?.encode(on: &_container, forKey: .chain, auxiliaryKey: ._chain)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try component?.encode(on: &_container, forKey: .component)
		try constraint?.encode(on: &_container, forKey: .constraint, auxiliaryKey: ._constraint)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try multipleAnd?.encode(on: &_container, forKey: .multipleAnd, auxiliaryKey: ._multipleAnd)
		try multipleOr?.encode(on: &_container, forKey: .multipleOr, auxiliaryKey: ._multipleOr)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try processingMode?.encode(on: &_container, forKey: .processingMode, auxiliaryKey: ._processingMode)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
