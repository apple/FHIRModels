//
//  SearchParameter.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/SearchParameter)
//  Copyright 2024 Apple Inc.
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
open class SearchParameter: DomainResource {
	
	override open class var resourceType: ResourceType { return .searchParameter }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this search parameter, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Additional identifier for the search parameter (business identifier)
	public var identifier: [Identifier]?
	
	/// Business version of the search parameter
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this search parameter (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this search parameter (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Original definition for the search parameter
	public var derivedFrom: FHIRPrimitive<Canonical>?
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the search parameter
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for search parameter (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this search parameter is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Recommended name for parameter in search url
	public var code: FHIRPrimitive<FHIRString>
	
	/// The resource type(s) this search parameter applies to
	public var base: [FHIRPrimitive<FHIRString>]
	
	/// The type of value that a search parameter may contain, and how the content is interpreted.
	public var type: FHIRPrimitive<SearchParamType>
	
	/// FHIRPath expression that extracts the values
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// How the search parameter relates to the set of elements returned by evaluating the expression query.
	public var processingMode: FHIRPrimitive<SearchProcessingModeType>?
	
	/// FHIRPath expression that constraints the usage of this SearchParamete
	public var constraint: FHIRPrimitive<FHIRString>?
	
	/// Types of resource (if a resource reference)
	public var target: [FHIRPrimitive<FHIRString>]?
	
	/// Allow multiple values per parameter (or)
	public var multipleOr: FHIRPrimitive<FHIRBool>?
	
	/// Allow multiple parameters (and)
	public var multipleAnd: FHIRPrimitive<FHIRBool>?
	
	/// Comparators supported for the search parameter.
	public var comparator: [FHIRPrimitive<SearchComparator>]?
	
	/// A modifier supported for the search parameter.
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Chained names supported
	public var chain: [FHIRPrimitive<FHIRString>]?
	
	/// For Composite resources to define the parts
	public var component: [SearchParameterComponent]?
	
	/// Designated initializer taking all required properties
	public init(base: [FHIRPrimitive<FHIRString>], code: FHIRPrimitive<FHIRString>, description_fhir: FHIRPrimitive<FHIRString>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, type: FHIRPrimitive<SearchParamType>, url: FHIRPrimitive<FHIRURI>) {
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
		self.init(base: base, code: code, description_fhir: description_fhir, name: name, status: status, type: type, url: url)
		self.chain = chain
		self.comparator = comparator
		self.component = component
		self.constraint = constraint
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFrom = derivedFrom
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
		self.processingMode = processingMode
		self.publisher = publisher
		self.purpose = purpose
		self.target = target
		self.text = text
		self.title = title
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case base; case _base
		case chain; case _chain
		case code; case _code
		case comparator; case _comparator
		case component
		case constraint; case _constraint
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case expression; case _expression
		case identifier
		case jurisdiction
		case modifier; case _modifier
		case multipleAnd; case _multipleAnd
		case multipleOr; case _multipleOr
		case name; case _name
		case processingMode; case _processingMode
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case target; case _target
		case title; case _title
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.base = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .base, auxiliaryKey: ._base)
		self.chain = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .chain, auxiliaryKey: ._chain)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.comparator = try [FHIRPrimitive<SearchComparator>](from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.component = try [SearchParameterComponent](from: _container, forKeyIfPresent: .component)
		self.constraint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .constraint, auxiliaryKey: ._constraint)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.multipleAnd = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleAnd, auxiliaryKey: ._multipleAnd)
		self.multipleOr = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleOr, auxiliaryKey: ._multipleOr)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.processingMode = try FHIRPrimitive<SearchProcessingModeType>(from: _container, forKeyIfPresent: .processingMode, auxiliaryKey: ._processingMode)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.target = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<SearchParamType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
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
		try constraint?.encode(on: &_container, forKey: .constraint, auxiliaryKey: ._constraint)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try multipleAnd?.encode(on: &_container, forKey: .multipleAnd, auxiliaryKey: ._multipleAnd)
		try multipleOr?.encode(on: &_container, forKey: .multipleOr, auxiliaryKey: ._multipleOr)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try processingMode?.encode(on: &_container, forKey: .processingMode, auxiliaryKey: ._processingMode)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
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
		    && constraint == _other.constraint
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && derivedFrom == _other.derivedFrom
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && expression == _other.expression
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && modifier == _other.modifier
		    && multipleAnd == _other.multipleAnd
		    && multipleOr == _other.multipleOr
		    && name == _other.name
		    && processingMode == _other.processingMode
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && target == _other.target
		    && title == _other.title
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(base)
		hasher.combine(chain)
		hasher.combine(code)
		hasher.combine(comparator)
		hasher.combine(component)
		hasher.combine(constraint)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(derivedFrom)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(expression)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(modifier)
		hasher.combine(multipleAnd)
		hasher.combine(multipleOr)
		hasher.combine(name)
		hasher.combine(processingMode)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(target)
		hasher.combine(title)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 For Composite resources to define the parts.
 
 Used to define the parts of a composite search parameter.
 */
open class SearchParameterComponent: BackboneElement {
	
	/// Defines how the part works
	public var definition: FHIRPrimitive<Canonical>
	
	/// Subexpression relative to main expression
	public var expression: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(definition: FHIRPrimitive<Canonical>, expression: FHIRPrimitive<FHIRString>) {
		self.definition = definition
		self.expression = expression
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		definition: FHIRPrimitive<Canonical>,
		expression: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(definition: definition, expression: expression)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition; case _definition
		case expression; case _expression
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKey: .definition, auxiliaryKey: ._definition)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKey: .expression, auxiliaryKey: ._expression)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
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
