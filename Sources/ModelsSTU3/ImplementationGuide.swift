//
//  ImplementationGuide.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide)
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
 A set of rules about how FHIR is used.
 
 A set of rules of how FHIR is used to solve a particular problem. This resource is used to gather all the parts of an
 implementation guide into a logical whole and to publish a computable definition of all the parts.
 */
public struct ImplementationGuide: DomainResource {
	
	public static let resourceType: ResourceType = .implementationGuide
	
	/// Image, css, script, etc.
	public var binary: [FHIRPrimitive<FHIRURI>]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Another Implementation guide this depends on
	public var dependency: [ImplementationGuideDependency]?
	
	/// Natural language description of the implementation guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version this Implementation Guide targets
	public var fhirVersion: FHIRPrimitive<FHIRString>?
	
	/// Profiles that apply globally
	public var global: [ImplementationGuideGlobal]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for implementation guide (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this implementation guide (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Group of resources as used in .page.package
	public var package: [ImplementationGuidePackage]?
	
	/// Page/Section in the Guide
	public var page: ImplementationGuidePage?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical URI to reference this implementation guide (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the implementation guide
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		binary: [FHIRPrimitive<FHIRURI>]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		dependency: [ImplementationGuideDependency]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: FHIRPrimitive<FHIRString>? = nil,
		global: [ImplementationGuideGlobal]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		package: [ImplementationGuidePackage]? = nil,
		page: ImplementationGuidePage? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.binary = binary
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.dependency = dependency
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.global = global
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.package = package
		self.page = page
		self.publisher = publisher
		self.status = status
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case binary; case _binary
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case dependency
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case global
		case id; case _id
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case package
		case page
		case publisher; case _publisher
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
		self.binary = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .binary, auxiliaryKey: ._binary)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.dependency = try [ImplementationGuideDependency](from: _container, forKeyIfPresent: .dependency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.global = try [ImplementationGuideGlobal](from: _container, forKeyIfPresent: .global)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.package = try [ImplementationGuidePackage](from: _container, forKeyIfPresent: .package)
		self.page = try ImplementationGuidePage(from: _container, forKeyIfPresent: .page)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try binary?.encode(on: &_container, forKey: .binary, auxiliaryKey: ._binary)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dependency?.encode(on: &_container, forKey: .dependency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try global?.encode(on: &_container, forKey: .global)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try package?.encode(on: &_container, forKey: .package)
		try page?.encode(on: &_container, forKey: .page)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Another Implementation guide this depends on.
 
 Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
 profiles etc.defined in other implementation guides.
 */
public struct ImplementationGuideDependency: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// How the dependency is represented when the guide is published.
	public var type: FHIRPrimitive<GuideDependencyType>
	
	/// Where to find dependency
	public var uri: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<GuideDependencyType>,
		uri: FHIRPrimitive<FHIRURI>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type; case _type
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<GuideDependencyType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}

/**
 Profiles that apply globally.
 
 A set of profiles that all resources covered by this implementation guide must conform to.
 */
public struct ImplementationGuideGlobal: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Profile that all resources must conform to
	public var profile: Reference
	
	/// The type of resource that all instances must conform to.
	public var type: FHIRPrimitive<ResourceType>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		profile: Reference,
		type: FHIRPrimitive<ResourceType>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case profile
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try Reference(from: _container, forKey: .profile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile.encode(on: &_container, forKey: .profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Group of resources as used in .page.package.
 
 A logical group of resources. Logical groups can be used when building pages.
 */
public struct ImplementationGuidePackage: BackboneElement {
	
	/// Human readable text describing the package
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name used .page.package
	public var name: FHIRPrimitive<FHIRString>
	
	/// Resource in the implementation guide
	public var resource: [ImplementationGuidePackageResource]
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		resource: [ImplementationGuidePackageResource]
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case resource
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.resource = try [ImplementationGuidePackageResource](from: _container, forKey: .resource)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try resource.encode(on: &_container, forKey: .resource)
	}
}

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
 statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
 */
public struct ImplementationGuidePackageResource: BackboneElement {
	
	/// All possible types for "source[x]"
	public enum SourceX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Short code to identify the resource
	public var acronym: FHIRPrimitive<FHIRString>?
	
	/// Reason why included in guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If not an example, has its normal meaning
	public var example: FHIRPrimitive<FHIRBool>
	
	/// Resource this is an example of (if applicable)
	public var exampleFor: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Human Name for the resource
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Location of the resource
	/// One of `source[x]`
	public var source: SourceX
	
	/// Designated initializer
	public init(
		acronym: FHIRPrimitive<FHIRString>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		example: FHIRPrimitive<FHIRBool>,
		exampleFor: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		source: SourceX
	) {
		self.acronym = acronym
		self.description_fhir = description_fhir
		self.example = example
		self.exampleFor = exampleFor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case acronym; case _acronym
		case description_fhir = "description"; case _description_fhir = "_description"
		case example; case _example
		case exampleFor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case sourceReference
		case sourceUri; case _sourceUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.acronym = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .acronym, auxiliaryKey: ._acronym)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.example = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .example, auxiliaryKey: ._example)
		self.exampleFor = try Reference(from: _container, forKeyIfPresent: .exampleFor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.source = try Self._decodeSource(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try acronym?.encode(on: &_container, forKey: .acronym, auxiliaryKey: ._acronym)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try example.encode(on: &_container, forKey: .example, auxiliaryKey: ._example)
		try exampleFor?.encode(on: &_container, forKey: .exampleFor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		
		switch source {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .sourceReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSource(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceX {
		var _t_source: SourceX? = nil
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			_t_source = .reference(sourceReference)
		}
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		guard let _t_source else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.sourceUri)
			throw DecodingError.valueNotFound(SourceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"source\" but have none"))
		}
		return _t_source
	}
}

/**
 Page/Section in the Guide.
 
 A page / section in the implementation guide. The root page is the implementation guide home page.
 */
public struct ImplementationGuidePage: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Format of the page (e.g. html, markdown, etc.)
	public var format: FHIRPrimitive<FHIRString>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The kind of page that this is. Some pages are autogenerated (list, example), and other kinds are of interest so
	/// that tools can navigate the user to the page of interest.
	public var kind: FHIRPrimitive<GuidePageKind>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of package to include
	public var package: [FHIRPrimitive<FHIRString>]?
	
	/// Nested Pages / Sections
	public var page: [ImplementationGuidePage]?
	
	/// Where to find that page
	public var source: FHIRPrimitive<FHIRURI>
	
	/// Short title shown for navigational assistance
	public var title: FHIRPrimitive<FHIRString>
	
	/// For constructed pages, what kind of resources to include in the list.
	public var type: [FHIRPrimitive<ResourceType>]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		format: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		kind: FHIRPrimitive<GuidePageKind>,
		modifierExtension: [Extension]? = nil,
		package: [FHIRPrimitive<FHIRString>]? = nil,
		page: [ImplementationGuidePage]? = nil,
		source: FHIRPrimitive<FHIRURI>,
		title: FHIRPrimitive<FHIRString>,
		type: [FHIRPrimitive<ResourceType>]? = nil
	) {
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.kind = kind
		self.modifierExtension = modifierExtension
		self.package = package
		self.page = page
		self.source = source
		self.title = title
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case format; case _format
		case id; case _id
		case kind; case _kind
		case modifierExtension
		case package; case _package
		case page
		case source; case _source
		case title; case _title
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.format = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .format, auxiliaryKey: ._format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.kind = try FHIRPrimitive<GuidePageKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.package = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .package, auxiliaryKey: ._package)
		self.page = try [ImplementationGuidePage](from: _container, forKeyIfPresent: .page)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .source, auxiliaryKey: ._source)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try format?.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try package?.encode(on: &_container, forKey: .package, auxiliaryKey: ._package)
		try page?.encode(on: &_container, forKey: .page)
		try source.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
