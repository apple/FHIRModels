//
//  OperationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/OperationDefinition)
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
 Definition of an operation or a named query.
 
 A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 interaction).
 */
open class OperationDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .operationDefinition }
	
	/// Canonical identifier for this operation definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business version of the operation definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this operation definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this operation definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this operation definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Whether this is an operation or a named query.
	public var kind: FHIRPrimitive<OperationKind>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the operation definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for operation definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this operation definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Whether content is changed by the operation
	public var affectsState: FHIRPrimitive<FHIRBool>?
	
	/// Name used to invoke the operation
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional information about use
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Marks this as a profile of the base
	public var base: FHIRPrimitive<Canonical>?
	
	/// The types on which this operation can be executed.
	public var resource: [FHIRPrimitive<ResourceType>]?
	
	/// Invoke at the system level?
	public var system: FHIRPrimitive<FHIRBool>
	
	/// Invoke at the type level?
	public var type: FHIRPrimitive<FHIRBool>
	
	/// Invoke on an instance?
	public var instance: FHIRPrimitive<FHIRBool>
	
	/// Validation information for in parameters
	public var inputProfile: FHIRPrimitive<Canonical>?
	
	/// Validation information for out parameters
	public var outputProfile: FHIRPrimitive<Canonical>?
	
	/// Parameters for the operation/query
	public var parameter: [OperationDefinitionParameter]?
	
	/// Define overloaded variants for when  generating code
	public var overload: [OperationDefinitionOverload]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, instance: FHIRPrimitive<FHIRBool>, kind: FHIRPrimitive<OperationKind>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, system: FHIRPrimitive<FHIRBool>, type: FHIRPrimitive<FHIRBool>) {
		self.code = code
		self.instance = instance
		self.kind = kind
		self.name = name
		self.status = status
		self.system = system
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(code: code, instance: instance, kind: kind, name: name, status: status, system: system, type: type)
		self.affectsState = affectsState
		self.base = base
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
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outputProfile = outputProfile
		self.overload = overload
		self.parameter = parameter
		self.publisher = publisher
		self.purpose = purpose
		self.resource = resource
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case affectsState; case _affectsState
		case base; case _base
		case code; case _code
		case comment; case _comment
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case inputProfile; case _inputProfile
		case instance; case _instance
		case jurisdiction
		case kind; case _kind
		case name; case _name
		case outputProfile; case _outputProfile
		case overload
		case parameter
		case publisher; case _publisher
		case purpose; case _purpose
		case resource; case _resource
		case status; case _status
		case system; case _system
		case title; case _title
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.affectsState = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .affectsState, auxiliaryKey: ._affectsState)
		self.base = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.inputProfile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .inputProfile, auxiliaryKey: ._inputProfile)
		self.instance = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .instance, auxiliaryKey: ._instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<OperationKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.outputProfile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .outputProfile, auxiliaryKey: ._outputProfile)
		self.overload = try [OperationDefinitionOverload](from: _container, forKeyIfPresent: .overload)
		self.parameter = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .parameter)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.resource = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.system = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try affectsState?.encode(on: &_container, forKey: .affectsState, auxiliaryKey: ._affectsState)
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try inputProfile?.encode(on: &_container, forKey: .inputProfile, auxiliaryKey: ._inputProfile)
		try instance.encode(on: &_container, forKey: .instance, auxiliaryKey: ._instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try outputProfile?.encode(on: &_container, forKey: .outputProfile, auxiliaryKey: ._outputProfile)
		try overload?.encode(on: &_container, forKey: .overload)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return affectsState == _other.affectsState
		    && base == _other.base
		    && code == _other.code
		    && comment == _other.comment
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && inputProfile == _other.inputProfile
		    && instance == _other.instance
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && name == _other.name
		    && outputProfile == _other.outputProfile
		    && overload == _other.overload
		    && parameter == _other.parameter
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && resource == _other.resource
		    && status == _other.status
		    && system == _other.system
		    && title == _other.title
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(affectsState)
		hasher.combine(base)
		hasher.combine(code)
		hasher.combine(comment)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(inputProfile)
		hasher.combine(instance)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(name)
		hasher.combine(outputProfile)
		hasher.combine(overload)
		hasher.combine(parameter)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(resource)
		hasher.combine(status)
		hasher.combine(system)
		hasher.combine(title)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Define overloaded variants for when  generating code.
 
 Defines an appropriate combination of parameters to use when invoking this operation, to help code generators when
 generating overloaded parameter sets for this operation.
 */
open class OperationDefinitionOverload: BackboneElement {
	
	/// Name of parameter to include in overload
	public var parameterName: [FHIRPrimitive<FHIRString>]?
	
	/// Comments to go on overload
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comment: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							parameterName: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init()
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameterName = parameterName
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case parameterName; case _parameterName
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.parameterName = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .parameterName, auxiliaryKey: ._parameterName)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try parameterName?.encode(on: &_container, forKey: .parameterName, auxiliaryKey: ._parameterName)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionOverload else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comment == _other.comment
		    && parameterName == _other.parameterName
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(parameterName)
	}
}

/**
 Parameters for the operation/query.
 
 The parameters for the operation/query.
 */
open class OperationDefinitionParameter: BackboneElement {
	
	/// Name in Parameters.parameter.name or in URL
	public var name: FHIRPrimitive<FHIRString>
	
	/// Whether this is an input or an output parameter.
	public var use: FHIRPrimitive<OperationParameterUse>
	
	/// Minimum Cardinality
	public var min: FHIRPrimitive<FHIRInteger>
	
	/// Maximum Cardinality (a number or *)
	public var max: FHIRPrimitive<FHIRString>
	
	/// Description of meaning/use
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// What type this parameter has
	public var type: FHIRPrimitive<FHIRString>?
	
	/// If type is Reference | canonical, allowed targets
	public var targetProfile: [FHIRPrimitive<Canonical>]?
	
	/// How the parameter is understood as a search parameter. This is only used if the parameter type is 'string'.
	public var searchType: FHIRPrimitive<SearchParamType>?
	
	/// ValueSet details if this is coded
	public var binding: OperationDefinitionParameterBinding?
	
	/// References to this parameter
	public var referencedFrom: [OperationDefinitionParameterReferencedFrom]?
	
	/// Parts of a nested Parameter
	public var part: [OperationDefinitionParameter]?
	
	/// Designated initializer taking all required properties
	public init(max: FHIRPrimitive<FHIRString>, min: FHIRPrimitive<FHIRInteger>, name: FHIRPrimitive<FHIRString>, use: FHIRPrimitive<OperationParameterUse>) {
		self.max = max
		self.min = min
		self.name = name
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							use: FHIRPrimitive<OperationParameterUse>)
	{
		self.init(max: max, min: min, name: name, use: use)
		self.binding = binding
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.referencedFrom = referencedFrom
		self.searchType = searchType
		self.targetProfile = targetProfile
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case binding
		case documentation; case _documentation
		case max; case _max
		case min; case _min
		case name; case _name
		case part
		case referencedFrom
		case searchType; case _searchType
		case targetProfile; case _targetProfile
		case type; case _type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.binding = try OperationDefinitionParameterBinding(from: _container, forKeyIfPresent: .binding)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKey: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.part = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .part)
		self.referencedFrom = try [OperationDefinitionParameterReferencedFrom](from: _container, forKeyIfPresent: .referencedFrom)
		self.searchType = try FHIRPrimitive<SearchParamType>(from: _container, forKeyIfPresent: .searchType, auxiliaryKey: ._searchType)
		self.targetProfile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .targetProfile, auxiliaryKey: ._targetProfile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<OperationParameterUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try binding?.encode(on: &_container, forKey: .binding)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try max.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try part?.encode(on: &_container, forKey: .part)
		try referencedFrom?.encode(on: &_container, forKey: .referencedFrom)
		try searchType?.encode(on: &_container, forKey: .searchType, auxiliaryKey: ._searchType)
		try targetProfile?.encode(on: &_container, forKey: .targetProfile, auxiliaryKey: ._targetProfile)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return binding == _other.binding
		    && documentation == _other.documentation
		    && max == _other.max
		    && min == _other.min
		    && name == _other.name
		    && part == _other.part
		    && referencedFrom == _other.referencedFrom
		    && searchType == _other.searchType
		    && targetProfile == _other.targetProfile
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(binding)
		hasher.combine(documentation)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(name)
		hasher.combine(part)
		hasher.combine(referencedFrom)
		hasher.combine(searchType)
		hasher.combine(targetProfile)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 ValueSet details if this is coded.
 
 Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
 */
open class OperationDefinitionParameterBinding: BackboneElement {
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: FHIRPrimitive<BindingStrength>
	
	/// Source of value set
	public var valueSet: FHIRPrimitive<Canonical>
	
	/// Designated initializer taking all required properties
	public init(strength: FHIRPrimitive<BindingStrength>, valueSet: FHIRPrimitive<Canonical>) {
		self.strength = strength
		self.valueSet = valueSet
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: FHIRPrimitive<BindingStrength>,
							valueSet: FHIRPrimitive<Canonical>)
	{
		self.init(strength: strength, valueSet: valueSet)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case strength; case _strength
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.strength = try FHIRPrimitive<BindingStrength>(from: _container, forKey: .strength, auxiliaryKey: ._strength)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try strength.encode(on: &_container, forKey: .strength, auxiliaryKey: ._strength)
		try valueSet.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionParameterBinding else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return strength == _other.strength
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(strength)
		hasher.combine(valueSet)
	}
}

/**
 References to this parameter.
 
 Identifies other resource parameters within the operation invocation that are expected to resolve to this resource.
 */
open class OperationDefinitionParameterReferencedFrom: BackboneElement {
	
	/// Referencing parameter
	public var source: FHIRPrimitive<FHIRString>
	
	/// Element id of reference
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(source: FHIRPrimitive<FHIRString>) {
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: FHIRPrimitive<FHIRString>,
							sourceId: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(source: source)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.sourceId = sourceId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case source; case _source
		case sourceId; case _sourceId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKey: .source, auxiliaryKey: ._source)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try source.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionParameterReferencedFrom else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return source == _other.source
		    && sourceId == _other.sourceId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(source)
		hasher.combine(sourceId)
	}
}
