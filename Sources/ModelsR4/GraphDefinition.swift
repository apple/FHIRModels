//
//  GraphDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/GraphDefinition)
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
 Definition of a graph of resources.
 
 A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by
 following references. The Graph Definition resource defines a set and makes rules about the set.
 */
open class GraphDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .graphDefinition }
	
	/// Canonical identifier for this graph definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business version of the graph definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this graph definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// The status of this graph definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
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
	
	/// The type of FHIR resource at which instances of this graph start.
	public var start: FHIRPrimitive<ResourceType>
	
	/// Profile on base resource
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Links this graph makes rules about
	public var link: [GraphDefinitionLink]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, start: FHIRPrimitive<ResourceType>, status: FHIRPrimitive<PublicationStatus>) {
		self.name = name
		self.start = start
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							link: [GraphDefinitionLink]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							profile: FHIRPrimitive<Canonical>? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							start: FHIRPrimitive<ResourceType>,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name, start: start, status: status)
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.link = link
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.publisher = publisher
		self.purpose = purpose
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case jurisdiction
		case link
		case name; case _name
		case profile; case _profile
		case publisher; case _publisher
		case purpose; case _purpose
		case start; case _start
		case status; case _status
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.link = try [GraphDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.start = try FHIRPrimitive<ResourceType>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try link?.encode(on: &_container, forKey: .link)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
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
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && jurisdiction == _other.jurisdiction
		    && link == _other.link
		    && name == _other.name
		    && profile == _other.profile
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && start == _other.start
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(jurisdiction)
		hasher.combine(link)
		hasher.combine(name)
		hasher.combine(profile)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(start)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Links this graph makes rules about.
 */
open class GraphDefinitionLink: BackboneElement {
	
	/// Path in the resource that contains the link
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Which slice (if profiled)
	public var sliceName: FHIRPrimitive<FHIRString>?
	
	/// Minimum occurrences for this link
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Maximum occurrences for this link
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Why this link is specified
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Potential target for the link
	public var target: [GraphDefinitionLinkTarget]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							max: FHIRPrimitive<FHIRString>? = nil,
							min: FHIRPrimitive<FHIRInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							path: FHIRPrimitive<FHIRString>? = nil,
							sliceName: FHIRPrimitive<FHIRString>? = nil,
							target: [GraphDefinitionLinkTarget]? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.max = max
		self.min = min
		self.modifierExtension = modifierExtension
		self.path = path
		self.sliceName = sliceName
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case max; case _max
		case min; case _min
		case path; case _path
		case sliceName; case _sliceName
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.sliceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sliceName, auxiliaryKey: ._sliceName)
		self.target = try [GraphDefinitionLinkTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sliceName?.encode(on: &_container, forKey: .sliceName, auxiliaryKey: ._sliceName)
		try target?.encode(on: &_container, forKey: .target)
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
		return description_fhir == _other.description_fhir
		    && max == _other.max
		    && min == _other.min
		    && path == _other.path
		    && sliceName == _other.sliceName
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(path)
		hasher.combine(sliceName)
		hasher.combine(target)
	}
}

/**
 Potential target for the link.
 */
open class GraphDefinitionLinkTarget: BackboneElement {
	
	/// None
	public var type: FHIRPrimitive<ResourceType>
	
	/// Criteria for reverse lookup
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Profile for the target resource
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Compartment Consistency Rules
	public var compartment: [GraphDefinitionLinkTargetCompartment]?
	
	/// Additional links from target resource
	public var link: [GraphDefinitionLink]?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ResourceType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							compartment: [GraphDefinitionLinkTargetCompartment]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							link: [GraphDefinitionLink]? = nil,
							modifierExtension: [Extension]? = nil,
							params: FHIRPrimitive<FHIRString>? = nil,
							profile: FHIRPrimitive<Canonical>? = nil,
							type: FHIRPrimitive<ResourceType>)
	{
		self.init(type: type)
		self.compartment = compartment
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
		self.params = params
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compartment
		case link
		case params; case _params
		case profile; case _profile
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compartment = try [GraphDefinitionLinkTargetCompartment](from: _container, forKeyIfPresent: .compartment)
		self.link = try [GraphDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try compartment?.encode(on: &_container, forKey: .compartment)
		try link?.encode(on: &_container, forKey: .link)
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GraphDefinitionLinkTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return compartment == _other.compartment
		    && link == _other.link
		    && params == _other.params
		    && profile == _other.profile
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(compartment)
		hasher.combine(link)
		hasher.combine(params)
		hasher.combine(profile)
		hasher.combine(type)
	}
}

/**
 Compartment Consistency Rules.
 */
open class GraphDefinitionLinkTargetCompartment: BackboneElement {
	
	/// Defines how the compartment rule is used - whether it it is used to test whether resources are subject to the
	/// rule, or whether it is a rule that must be followed.
	public var use: FHIRPrimitive<GraphCompartmentUse>
	
	/// Identifies the compartment.
	public var code: FHIRPrimitive<CompartmentType>
	
	/// identical | matching | different | no-rule | custom.
	public var rule: FHIRPrimitive<GraphCompartmentRule>
	
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
							use: FHIRPrimitive<GraphCompartmentUse>)
	{
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
		guard let _other = _other as? GraphDefinitionLinkTargetCompartment else {
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
