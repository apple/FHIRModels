//
//  GraphDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/GraphDefinition)
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
 Definition of a graph of resources.
 
 A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by
 following references. The Graph Definition resource defines a set and makes rules about the set.
 */
public struct GraphDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .graphDefinition
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the graph definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for graph definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Links this graph makes rules about
	public var link: [GraphDefinitionLink]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this graph definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Profile on base resource
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this graph definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The type of FHIR resource at which instances of this graph start.
	public var start: FHIRPrimitive<ResourceType>
	
	/// The status of this graph definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Canonical identifier for this graph definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the graph definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
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
		version: FHIRPrimitive<FHIRString>? = nil
	) {
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
		self.name = name
		self.profile = profile
		self.publisher = publisher
		self.purpose = purpose
		self.start = start
		self.status = status
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case link
		case meta
		case modifierExtension
		case name; case _name
		case profile; case _profile
		case publisher; case _publisher
		case purpose; case _purpose
		case start; case _start
		case status; case _status
		case text
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.link = try [GraphDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.start = try FHIRPrimitive<ResourceType>(from: _container, forKey: .start, auxiliaryKey: ._start)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try link?.encode(on: &_container, forKey: .link)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try start.encode(on: &_container, forKey: .start, auxiliaryKey: ._start)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Links this graph makes rules about.
 */
public struct GraphDefinitionLink: BackboneElement {
	
	/// Why this link is specified
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Maximum occurrences for this link
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Minimum occurrences for this link
	public var min: FHIRPrimitive<FHIRInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Path in the resource that contains the link
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Which slice (if profiled)
	public var sliceName: FHIRPrimitive<FHIRString>?
	
	/// Potential target for the link
	public var target: [GraphDefinitionLinkTarget]?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>? = nil,
		min: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		sliceName: FHIRPrimitive<FHIRString>? = nil,
		target: [GraphDefinitionLinkTarget]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case max; case _max
		case min; case _min
		case modifierExtension
		case path; case _path
		case sliceName; case _sliceName
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.sliceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sliceName, auxiliaryKey: ._sliceName)
		self.target = try [GraphDefinitionLinkTarget](from: _container, forKeyIfPresent: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sliceName?.encode(on: &_container, forKey: .sliceName, auxiliaryKey: ._sliceName)
		try target?.encode(on: &_container, forKey: .target)
	}
}

/**
 Potential target for the link.
 */
public struct GraphDefinitionLinkTarget: BackboneElement {
	
	/// Compartment Consistency Rules
	public var compartment: [GraphDefinitionLinkTargetCompartment]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional links from target resource
	public var link: [GraphDefinitionLink]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Criteria for reverse lookup
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Profile for the target resource
	public var profile: FHIRPrimitive<Canonical>?
	
	/// None
	public var type: FHIRPrimitive<ResourceType>
	
	/// Designated initializer
	public init(
		compartment: [GraphDefinitionLinkTargetCompartment]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [GraphDefinitionLink]? = nil,
		modifierExtension: [Extension]? = nil,
		params: FHIRPrimitive<FHIRString>? = nil,
		profile: FHIRPrimitive<Canonical>? = nil,
		type: FHIRPrimitive<ResourceType>
	) {
		self.compartment = compartment
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
		self.params = params
		self.profile = profile
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compartment
		case `extension` = "extension"
		case id; case _id
		case link
		case modifierExtension
		case params; case _params
		case profile; case _profile
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.compartment = try [GraphDefinitionLinkTargetCompartment](from: _container, forKeyIfPresent: .compartment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.link = try [GraphDefinitionLink](from: _container, forKeyIfPresent: .link)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try compartment?.encode(on: &_container, forKey: .compartment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try link?.encode(on: &_container, forKey: .link)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Compartment Consistency Rules.
 */
public struct GraphDefinitionLinkTargetCompartment: BackboneElement {
	
	/// Identifies the compartment.
	public var code: FHIRPrimitive<CompartmentType>
	
	/// Documentation for FHIRPath expression
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Custom rule, as a FHIRPath expression
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// identical | matching | different | no-rule | custom.
	public var rule: FHIRPrimitive<GraphCompartmentRule>
	
	/// Defines how the compartment rule is used - whether it it is used to test whether resources are subject to the
	/// rule, or whether it is a rule that must be followed.
	public var use: FHIRPrimitive<GraphCompartmentUse>
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<CompartmentType>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rule: FHIRPrimitive<GraphCompartmentRule>,
		use: FHIRPrimitive<GraphCompartmentUse>
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rule = rule
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case rule; case _rule
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<CompartmentType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rule = try FHIRPrimitive<GraphCompartmentRule>(from: _container, forKey: .rule, auxiliaryKey: ._rule)
		self.use = try FHIRPrimitive<GraphCompartmentUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rule.encode(on: &_container, forKey: .rule, auxiliaryKey: ._rule)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}
