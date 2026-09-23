//
//  OperationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/OperationDefinition)
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
 Definition of an operation or a named query.
 
 A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 interaction).
 */
public struct OperationDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .operationDefinition
	
	/// Whether content is changed by the operation
	public var affectsState: FHIRPrimitive<FHIRBool>?
	
	/// Marks this as a profile of the base
	public var base: FHIRPrimitive<Canonical>?
	
	/// Name used to invoke the operation
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional information about use
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the operation definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Validation information for in parameters
	public var inputProfile: FHIRPrimitive<Canonical>?
	
	/// Invoke on an instance?
	public var instance: FHIRPrimitive<FHIRBool>
	
	/// Intended jurisdiction for operation definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Whether this is an operation or a named query.
	public var kind: FHIRPrimitive<OperationKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this operation definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Validation information for out parameters
	public var outputProfile: FHIRPrimitive<Canonical>?
	
	/// Define overloaded variants for when  generating code
	public var overload: [OperationDefinitionOverload]?
	
	/// Parameters for the operation/query
	public var parameter: [OperationDefinitionParameter]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this operation definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The types on which this operation can be executed.
	public var resource: [FHIRPrimitive<ResourceType>]?
	
	/// The status of this operation definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Invoke at the system level?
	public var system: FHIRPrimitive<FHIRBool>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this operation definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Invoke at the type level?
	public var type: FHIRPrimitive<FHIRBool>
	
	/// Canonical identifier for this operation definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the operation definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		affectsState: FHIRPrimitive<FHIRBool>? = nil,
		base: FHIRPrimitive<Canonical>? = nil,
		code: FHIRPrimitive<FHIRString>,
		comment: FHIRPrimitive<FHIRString>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		inputProfile: FHIRPrimitive<Canonical>? = nil,
		instance: FHIRPrimitive<FHIRBool>,
		jurisdiction: [CodeableConcept]? = nil,
		kind: FHIRPrimitive<OperationKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		outputProfile: FHIRPrimitive<Canonical>? = nil,
		overload: [OperationDefinitionOverload]? = nil,
		parameter: [OperationDefinitionParameter]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		resource: [FHIRPrimitive<ResourceType>]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		system: FHIRPrimitive<FHIRBool>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<FHIRBool>,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.affectsState = affectsState
		self.base = base
		self.code = code
		self.comment = comment
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.inputProfile = inputProfile
		self.instance = instance
		self.jurisdiction = jurisdiction
		self.kind = kind
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.outputProfile = outputProfile
		self.overload = overload
		self.parameter = parameter
		self.publisher = publisher
		self.purpose = purpose
		self.resource = resource
		self.status = status
		self.system = system
		self.text = text
		self.title = title
		self.type = type
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case affectsState; case _affectsState
		case base; case _base
		case code; case _code
		case comment; case _comment
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case inputProfile; case _inputProfile
		case instance; case _instance
		case jurisdiction
		case kind; case _kind
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case outputProfile; case _outputProfile
		case overload
		case parameter
		case publisher; case _publisher
		case purpose; case _purpose
		case resource; case _resource
		case status; case _status
		case system; case _system
		case text
		case title; case _title
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.affectsState = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .affectsState, auxiliaryKey: ._affectsState)
		self.base = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.inputProfile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .inputProfile, auxiliaryKey: ._inputProfile)
		self.instance = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .instance, auxiliaryKey: ._instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<OperationKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.outputProfile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .outputProfile, auxiliaryKey: ._outputProfile)
		self.overload = try [OperationDefinitionOverload](from: _container, forKeyIfPresent: .overload)
		self.parameter = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .parameter)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.resource = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.system = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .type, auxiliaryKey: ._type)
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
		try affectsState?.encode(on: &_container, forKey: .affectsState, auxiliaryKey: ._affectsState)
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try inputProfile?.encode(on: &_container, forKey: .inputProfile, auxiliaryKey: ._inputProfile)
		try instance.encode(on: &_container, forKey: .instance, auxiliaryKey: ._instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try outputProfile?.encode(on: &_container, forKey: .outputProfile, auxiliaryKey: ._outputProfile)
		try overload?.encode(on: &_container, forKey: .overload)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Define overloaded variants for when  generating code.
 
 Defines an appropriate combination of parameters to use when invoking this operation, to help code generators when
 generating overloaded parameter sets for this operation.
 */
public struct OperationDefinitionOverload: BackboneElement {
	
	/// Comments to go on overload
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of parameter to include in overload
	public var parameterName: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		parameterName: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameterName = parameterName
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case parameterName; case _parameterName
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parameterName = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .parameterName, auxiliaryKey: ._parameterName)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parameterName?.encode(on: &_container, forKey: .parameterName, auxiliaryKey: ._parameterName)
	}
}

/**
 Parameters for the operation/query.
 
 The parameters for the operation/query.
 */
public struct OperationDefinitionParameter: BackboneElement {
	
	/// ValueSet details if this is coded
	public var binding: OperationDefinitionParameterBinding?
	
	/// Description of meaning/use
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Maximum Cardinality (a number or *)
	public var max: FHIRPrimitive<FHIRString>
	
	/// Minimum Cardinality
	public var min: FHIRPrimitive<FHIRInteger>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name in Parameters.parameter.name or in URL
	public var name: FHIRPrimitive<FHIRString>
	
	/// Parts of a nested Parameter
	public var part: [OperationDefinitionParameter]?
	
	/// References to this parameter
	public var referencedFrom: [OperationDefinitionParameterReferencedFrom]?
	
	/// How the parameter is understood as a search parameter. This is only used if the parameter type is 'string'.
	public var searchType: FHIRPrimitive<SearchParamType>?
	
	/// If type is Reference | canonical, allowed targets
	public var targetProfile: [FHIRPrimitive<Canonical>]?
	
	/// What type this parameter has
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Whether this is an input or an output parameter.
	public var use: FHIRPrimitive<OperationParameterUse>
	
	/// Designated initializer
	public init(
		binding: OperationDefinitionParameterBinding? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>,
		min: FHIRPrimitive<FHIRInteger>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		part: [OperationDefinitionParameter]? = nil,
		referencedFrom: [OperationDefinitionParameterReferencedFrom]? = nil,
		searchType: FHIRPrimitive<SearchParamType>? = nil,
		targetProfile: [FHIRPrimitive<Canonical>]? = nil,
		type: FHIRPrimitive<FHIRString>? = nil,
		use: FHIRPrimitive<OperationParameterUse>
	) {
		self.binding = binding
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.max = max
		self.min = min
		self.modifierExtension = modifierExtension
		self.name = name
		self.part = part
		self.referencedFrom = referencedFrom
		self.searchType = searchType
		self.targetProfile = targetProfile
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case binding
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case max; case _max
		case min; case _min
		case modifierExtension
		case name; case _name
		case part
		case referencedFrom
		case searchType; case _searchType
		case targetProfile; case _targetProfile
		case type; case _type
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.binding = try OperationDefinitionParameterBinding(from: _container, forKeyIfPresent: .binding)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKey: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.part = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .part)
		self.referencedFrom = try [OperationDefinitionParameterReferencedFrom](from: _container, forKeyIfPresent: .referencedFrom)
		self.searchType = try FHIRPrimitive<SearchParamType>(from: _container, forKeyIfPresent: .searchType, auxiliaryKey: ._searchType)
		self.targetProfile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .targetProfile, auxiliaryKey: ._targetProfile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<OperationParameterUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try binding?.encode(on: &_container, forKey: .binding)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try max.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try part?.encode(on: &_container, forKey: .part)
		try referencedFrom?.encode(on: &_container, forKey: .referencedFrom)
		try searchType?.encode(on: &_container, forKey: .searchType, auxiliaryKey: ._searchType)
		try targetProfile?.encode(on: &_container, forKey: .targetProfile, auxiliaryKey: ._targetProfile)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 ValueSet details if this is coded.
 
 Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
 */
public struct OperationDefinitionParameterBinding: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: FHIRPrimitive<BindingStrength>
	
	/// Source of value set
	public var valueSet: FHIRPrimitive<Canonical>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: FHIRPrimitive<BindingStrength>,
		valueSet: FHIRPrimitive<Canonical>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case strength; case _strength
		case valueSet; case _valueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try FHIRPrimitive<BindingStrength>(from: _container, forKey: .strength, auxiliaryKey: ._strength)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKey: .valueSet, auxiliaryKey: ._valueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try strength.encode(on: &_container, forKey: .strength, auxiliaryKey: ._strength)
		try valueSet.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
	}
}

/**
 References to this parameter.
 
 Identifies other resource parameters within the operation invocation that are expected to resolve to this resource.
 */
public struct OperationDefinitionParameterReferencedFrom: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Referencing parameter
	public var source: FHIRPrimitive<FHIRString>
	
	/// Element id of reference
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<FHIRString>,
		sourceId: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.sourceId = sourceId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source; case _source
		case sourceId; case _sourceId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKey: .source, auxiliaryKey: ._source)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
	}
}
