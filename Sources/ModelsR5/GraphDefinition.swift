//
//  GraphDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/GraphDefinition)
//  Copyright 2023 Apple Inc.
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
 Definition of a graph of resources.
 
 A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by
 following references. The Graph Definition resource defines a set and makes rules about the set.
 */
open class GraphDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .graphDefinition }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this graph definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the GraphDefinition (business identifier)
	public var identifier: [Identifier]?
	
	/// Business version of the graph definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this graph definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this graph definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this graph definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the graph definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for graph definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this graph definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Starting Node
	public var start: FHIRPrimitive<FHIRString>?
	
	/// Potential target for the link
	public var node: [GraphDefinitionNode]?
	
	/// Links this graph makes rules about
	public var link: [GraphDefinitionLink]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>) {
		self.name = name
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		link: [GraphDefinitionLink]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		node: [GraphDefinitionNode]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		start: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(name: name, status: status)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.link = link
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.node = node
		self.publisher = publisher
		self.purpose = purpose
		self.start = start
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case link
		case name; case _name
		case node
		case publisher; case _publisher
		case purpose; case _purpose
		case start; case _start
		case status; case _status
		case title; case _title
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
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.link = try [GraphDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.node = try [GraphDefinitionNode](from: _container, forKeyIfPresent: .node)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.start = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try link?.encode(on: &_container, forKey: .link)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try node?.encode(on: &_container, forKey: .node)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try start?.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
		guard let _other = _other as? GraphDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && link == _other.link
		    && name == _other.name
		    && node == _other.node
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && start == _other.start
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(link)
		hasher.combine(name)
		hasher.combine(node)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(start)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Links this graph makes rules about.
 */
open class GraphDefinitionLink: BackboneElement {
	
	/// Why this link is specified
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Minimum occurrences for this link
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Maximum occurrences for this link
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Source Node for this link
	public var sourceId: FHIRPrimitive<FHIRString>
	
	/// Path in the resource that contains the link
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Which slice (if profiled)
	public var sliceName: FHIRPrimitive<FHIRString>?
	
	/// Target Node for this link
	public var targetId: FHIRPrimitive<FHIRString>
	
	/// Criteria for reverse lookup
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Compartment Consistency Rules
	public var compartment: [GraphDefinitionLinkCompartment]?
	
	/// Designated initializer taking all required properties
	public init(sourceId: FHIRPrimitive<FHIRString>, targetId: FHIRPrimitive<FHIRString>) {
		self.sourceId = sourceId
		self.targetId = targetId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		compartment: [GraphDefinitionLinkCompartment]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>? = nil,
		min: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		params: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		sliceName: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>,
		targetId: FHIRPrimitive<FHIRString>
	) {
		self.init(sourceId: sourceId, targetId: targetId)
		self.compartment = compartment
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.max = max
		self.min = min
		self.modifierExtension = modifierExtension
		self.params = params
		self.path = path
		self.sliceName = sliceName
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compartment
		case description_fhir = "description"; case _description_fhir = "_description"
		case max; case _max
		case min; case _min
		case params; case _params
		case path; case _path
		case sliceName; case _sliceName
		case sourceId; case _sourceId
		case targetId; case _targetId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compartment = try [GraphDefinitionLinkCompartment](from: _container, forKeyIfPresent: .compartment)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.sliceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sliceName, auxiliaryKey: ._sliceName)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		self.targetId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .targetId, auxiliaryKey: ._targetId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try compartment?.encode(on: &_container, forKey: .compartment)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sliceName?.encode(on: &_container, forKey: .sliceName, auxiliaryKey: ._sliceName)
		try sourceId.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try targetId.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GraphDefinitionLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return compartment == _other.compartment
		    && description_fhir == _other.description_fhir
		    && max == _other.max
		    && min == _other.min
		    && params == _other.params
		    && path == _other.path
		    && sliceName == _other.sliceName
		    && sourceId == _other.sourceId
		    && targetId == _other.targetId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(compartment)
		hasher.combine(description_fhir)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(params)
		hasher.combine(path)
		hasher.combine(sliceName)
		hasher.combine(sourceId)
		hasher.combine(targetId)
	}
}

/**
 Compartment Consistency Rules.
 */
open class GraphDefinitionLinkCompartment: BackboneElement {
	
	/// Defines how the compartment rule is used - whether it it is used to test whether resources are subject to the
	/// rule, or whether it is a rule that must be followed.
	public var use: FHIRPrimitive<GraphCompartmentUse>
	
	/// identical | matching | different | no-rule | custom.
	public var rule: FHIRPrimitive<GraphCompartmentRule>
	
	/// Identifies the compartment.
	public var code: FHIRPrimitive<CompartmentType>
	
	/// Custom rule, as a FHIRPath expression
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Documentation for FHIRPath expression
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<CompartmentType>, rule: FHIRPrimitive<GraphCompartmentRule>, use: FHIRPrimitive<GraphCompartmentUse>) {
		self.code = code
		self.rule = rule
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<CompartmentType>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rule: FHIRPrimitive<GraphCompartmentRule>,
		use: FHIRPrimitive<GraphCompartmentUse>
	) {
		self.init(code: code, rule: rule, use: use)
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case rule; case _rule
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<CompartmentType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.rule = try FHIRPrimitive<GraphCompartmentRule>(from: _container, forKey: .rule, auxiliaryKey: ._rule)
		self.use = try FHIRPrimitive<GraphCompartmentUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try rule.encode(on: &_container, forKey: .rule, auxiliaryKey: ._rule)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GraphDefinitionLinkCompartment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && expression == _other.expression
		    && rule == _other.rule
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(expression)
		hasher.combine(rule)
		hasher.combine(use)
	}
}

/**
 Potential target for the link.
 */
open class GraphDefinitionNode: BackboneElement {
	
	/// Internal ID - target for link references
	public var nodeId: FHIRPrimitive<FHIRString>
	
	/// Why this node is specified
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Type of resource this link refers to
	public var type: FHIRPrimitive<FHIRString>
	
	/// Profile for the target resource
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	public init(nodeId: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<FHIRString>) {
		self.nodeId = nodeId
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		nodeId: FHIRPrimitive<FHIRString>,
		profile: FHIRPrimitive<Canonical>? = nil,
		type: FHIRPrimitive<FHIRString>
	) {
		self.init(nodeId: nodeId, type: type)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case nodeId; case _nodeId
		case profile; case _profile
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.nodeId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .nodeId, auxiliaryKey: ._nodeId)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try nodeId.encode(on: &_container, forKey: .nodeId, auxiliaryKey: ._nodeId)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GraphDefinitionNode else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && nodeId == _other.nodeId
		    && profile == _other.profile
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(nodeId)
		hasher.combine(profile)
		hasher.combine(type)
	}
}
