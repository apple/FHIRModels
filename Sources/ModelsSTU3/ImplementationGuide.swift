//
//  ImplementationGuide.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide)
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
 A set of rules about how FHIR is used.
 
 A set of rules of how FHIR is used to solve a particular problem. This resource is used to gather all the parts of an
 implementation guide into a logical whole and to publish a computable definition of all the parts.
 */
open class ImplementationGuide: DomainResource {
	
	override open class var resourceType: ResourceType { return .implementationGuide }
	
	/// Logical URI to reference this implementation guide (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Business version of the implementation guide
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this implementation guide (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the implementation guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for implementation guide (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// FHIR Version this Implementation Guide targets
	public var fhirVersion: FHIRPrimitive<FHIRString>?
	
	/// Another Implementation guide this depends on
	public var dependency: [ImplementationGuideDependency]?
	
	/// Group of resources as used in .page.package
	public var package: [ImplementationGuidePackage]?
	
	/// Profiles that apply globally
	public var global: [ImplementationGuideGlobal]?
	
	/// Image, css, script, etc.
	public var binary: [FHIRPrimitive<FHIRURI>]?
	
	/// Page/Section in the Guide
	public var page: ImplementationGuidePage?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.name = name
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name, status: status, url: url)
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
		self.package = package
		self.page = page
		self.publisher = publisher
		self.text = text
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case binary; case _binary
		case contact
		case copyright; case _copyright
		case date; case _date
		case dependency
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case fhirVersion; case _fhirVersion
		case global
		case jurisdiction
		case name; case _name
		case package
		case page
		case publisher; case _publisher
		case status; case _status
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.binary = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .binary, auxiliaryKey: ._binary)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.dependency = try [ImplementationGuideDependency](from: _container, forKeyIfPresent: .dependency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.global = try [ImplementationGuideGlobal](from: _container, forKeyIfPresent: .global)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.package = try [ImplementationGuidePackage](from: _container, forKeyIfPresent: .package)
		self.page = try ImplementationGuidePage(from: _container, forKeyIfPresent: .page)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try binary?.encode(on: &_container, forKey: .binary, auxiliaryKey: ._binary)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dependency?.encode(on: &_container, forKey: .dependency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try global?.encode(on: &_container, forKey: .global)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try package?.encode(on: &_container, forKey: .package)
		try page?.encode(on: &_container, forKey: .page)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuide else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return binary == _other.binary
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && dependency == _other.dependency
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && fhirVersion == _other.fhirVersion
		    && global == _other.global
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && package == _other.package
		    && page == _other.page
		    && publisher == _other.publisher
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(binary)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(dependency)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(fhirVersion)
		hasher.combine(global)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(package)
		hasher.combine(page)
		hasher.combine(publisher)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Another Implementation guide this depends on.
 
 Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
 profiles etc.defined in other implementation guides.
 */
open class ImplementationGuideDependency: BackboneElement {
	
	/// How the dependency is represented when the guide is published.
	public var type: FHIRPrimitive<GuideDependencyType>
	
	/// Where to find dependency
	public var uri: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<GuideDependencyType>, uri: FHIRPrimitive<FHIRURI>) {
		self.type = type
		self.uri = uri
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<GuideDependencyType>,
							uri: FHIRPrimitive<FHIRURI>)
	{
		self.init(type: type, uri: uri)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type; case _type
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try FHIRPrimitive<GuideDependencyType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDependency else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(uri)
	}
}

/**
 Profiles that apply globally.
 
 A set of profiles that all resources covered by this implementation guide must conform to.
 */
open class ImplementationGuideGlobal: BackboneElement {
	
	/// The type of resource that all instances must conform to.
	public var type: FHIRPrimitive<ResourceType>
	
	/// Profile that all resources must conform to
	public var profile: Reference
	
	/// Designated initializer taking all required properties
	public init(profile: Reference, type: FHIRPrimitive<ResourceType>) {
		self.profile = profile
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							profile: Reference,
							type: FHIRPrimitive<ResourceType>)
	{
		self.init(profile: profile, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case profile
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.profile = try Reference(from: _container, forKey: .profile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try profile.encode(on: &_container, forKey: .profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideGlobal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return profile == _other.profile
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(profile)
		hasher.combine(type)
	}
}

/**
 Group of resources as used in .page.package.
 
 A logical group of resources. Logical groups can be used when building pages.
 */
open class ImplementationGuidePackage: BackboneElement {
	
	/// Name used .page.package
	public var name: FHIRPrimitive<FHIRString>
	
	/// Human readable text describing the package
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Resource in the implementation guide
	public var resource: [ImplementationGuidePackageResource]
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, resource: [ImplementationGuidePackageResource]) {
		self.name = name
		self.resource = resource
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							resource: [ImplementationGuidePackageResource])
	{
		self.init(name: name, resource: resource)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
		case resource
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.resource = try [ImplementationGuidePackageResource](from: _container, forKey: .resource)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try resource.encode(on: &_container, forKey: .resource)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuidePackage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && name == _other.name
		    && resource == _other.resource
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(name)
		hasher.combine(resource)
	}
}

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
 statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
 */
open class ImplementationGuidePackageResource: BackboneElement {
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// If not an example, has its normal meaning
	public var example: FHIRPrimitive<FHIRBool>
	
	/// Human Name for the resource
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Reason why included in guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Short code to identify the resource
	public var acronym: FHIRPrimitive<FHIRString>?
	
	/// Location of the resource
	/// One of `source[x]`
	public var source: SourceX
	
	/// Resource this is an example of (if applicable)
	public var exampleFor: Reference?
	
	/// Designated initializer taking all required properties
	public init(example: FHIRPrimitive<FHIRBool>, source: SourceX) {
		self.example = example
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							acronym: FHIRPrimitive<FHIRString>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							example: FHIRPrimitive<FHIRBool>,
							exampleFor: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							source: SourceX)
	{
		self.init(example: example, source: source)
		self.acronym = acronym
		self.description_fhir = description_fhir
		self.exampleFor = exampleFor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case acronym; case _acronym
		case description_fhir = "description"; case _description_fhir = "_description"
		case example; case _example
		case exampleFor
		case name; case _name
		case sourceReference
		case sourceUri; case _sourceUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.sourceReference) || _container.contains(CodingKeys.sourceUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.sourceReference, CodingKeys.sourceUri], debugDescription: "Must have at least one value for \"source\" but have none"))
		}
		
		// Decode all our properties
		self.acronym = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .acronym, auxiliaryKey: ._acronym)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.example = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .example, auxiliaryKey: ._example)
		self.exampleFor = try Reference(from: _container, forKeyIfPresent: .exampleFor)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		var _t_source: SourceX? = nil
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
		}
		self.source = _t_source!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try acronym?.encode(on: &_container, forKey: .acronym, auxiliaryKey: ._acronym)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try example.encode(on: &_container, forKey: .example, auxiliaryKey: ._example)
		try exampleFor?.encode(on: &_container, forKey: .exampleFor)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		
			switch source {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuidePackageResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return acronym == _other.acronym
		    && description_fhir == _other.description_fhir
		    && example == _other.example
		    && exampleFor == _other.exampleFor
		    && name == _other.name
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(acronym)
		hasher.combine(description_fhir)
		hasher.combine(example)
		hasher.combine(exampleFor)
		hasher.combine(name)
		hasher.combine(source)
	}
}

/**
 Page/Section in the Guide.
 
 A page / section in the implementation guide. The root page is the implementation guide home page.
 */
open class ImplementationGuidePage: BackboneElement {
	
	/// Where to find that page
	public var source: FHIRPrimitive<FHIRURI>
	
	/// Short title shown for navigational assistance
	public var title: FHIRPrimitive<FHIRString>
	
	/// The kind of page that this is. Some pages are autogenerated (list, example), and other kinds are of interest so
	/// that tools can navigate the user to the page of interest.
	public var kind: FHIRPrimitive<GuidePageKind>
	
	/// For constructed pages, what kind of resources to include in the list.
	public var type: [FHIRPrimitive<ResourceType>]?
	
	/// Name of package to include
	public var package: [FHIRPrimitive<FHIRString>]?
	
	/// Format of the page (e.g. html, markdown, etc.)
	public var format: FHIRPrimitive<FHIRString>?
	
	/// Nested Pages / Sections
	public var page: [ImplementationGuidePage]?
	
	/// Designated initializer taking all required properties
	public init(kind: FHIRPrimitive<GuidePageKind>, source: FHIRPrimitive<FHIRURI>, title: FHIRPrimitive<FHIRString>) {
		self.kind = kind
		self.source = source
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							format: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							kind: FHIRPrimitive<GuidePageKind>,
							modifierExtension: [Extension]? = nil,
							package: [FHIRPrimitive<FHIRString>]? = nil,
							page: [ImplementationGuidePage]? = nil,
							source: FHIRPrimitive<FHIRURI>,
							title: FHIRPrimitive<FHIRString>,
							type: [FHIRPrimitive<ResourceType>]? = nil)
	{
		self.init(kind: kind, source: source, title: title)
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.modifierExtension = modifierExtension
		self.package = package
		self.page = page
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case format; case _format
		case kind; case _kind
		case package; case _package
		case page
		case source; case _source
		case title; case _title
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.format = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .format, auxiliaryKey: ._format)
		self.kind = try FHIRPrimitive<GuidePageKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.package = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .package, auxiliaryKey: ._package)
		self.page = try [ImplementationGuidePage](from: _container, forKeyIfPresent: .page)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .source, auxiliaryKey: ._source)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		self.type = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try format?.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try package?.encode(on: &_container, forKey: .package, auxiliaryKey: ._package)
		try page?.encode(on: &_container, forKey: .page)
		try source.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuidePage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return format == _other.format
		    && kind == _other.kind
		    && package == _other.package
		    && page == _other.page
		    && source == _other.source
		    && title == _other.title
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(format)
		hasher.combine(kind)
		hasher.combine(package)
		hasher.combine(page)
		hasher.combine(source)
		hasher.combine(title)
		hasher.combine(type)
	}
}
