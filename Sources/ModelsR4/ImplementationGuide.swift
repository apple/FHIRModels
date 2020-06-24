//
//  ImplementationGuide.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide)
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
 
 A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR
 resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish
 a computable definition of all the parts.
 */
open class ImplementationGuide: DomainResource {
	
	override open class var resourceType: ResourceType { return .implementationGuide }
	
	/// Canonical identifier for this implementation guide, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Business version of the implementation guide
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this implementation guide (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this implementation guide (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the implementation guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for implementation guide (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// NPM Package name for IG
	public var packageId: FHIRPrimitive<FHIRString>
	
	/// SPDX license code for this IG (or not-open-source)
	public var license: FHIRPrimitive<FHIRString>?
	
	/// FHIR Version(s) this Implementation Guide targets
	public var fhirVersion: [FHIRPrimitive<FHIRString>]
	
	/// Another Implementation guide this depends on
	public var dependsOn: [ImplementationGuideDependsOn]?
	
	/// Profiles that apply globally
	public var global: [ImplementationGuideGlobal]?
	
	/// Information needed to build the IG
	public var definition: ImplementationGuideDefinition?
	
	/// Information about an assembled IG
	public var manifest: ImplementationGuideManifest?
	
	/// Designated initializer taking all required properties
	public init(fhirVersion: [FHIRPrimitive<FHIRString>], name: FHIRPrimitive<FHIRString>, packageId: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.fhirVersion = fhirVersion
		self.name = name
		self.packageId = packageId
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							definition: ImplementationGuideDefinition? = nil,
							dependsOn: [ImplementationGuideDependsOn]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							fhirVersion: [FHIRPrimitive<FHIRString>],
							global: [ImplementationGuideGlobal]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							license: FHIRPrimitive<FHIRString>? = nil,
							manifest: ImplementationGuideManifest? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							packageId: FHIRPrimitive<FHIRString>,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(fhirVersion: fhirVersion, name: name, packageId: packageId, status: status, url: url)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.definition = definition
		self.dependsOn = dependsOn
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.global = global
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.license = license
		self.manifest = manifest
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.text = text
		self.title = title
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case copyright; case _copyright
		case date; case _date
		case definition
		case dependsOn
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case fhirVersion; case _fhirVersion
		case global
		case jurisdiction
		case license; case _license
		case manifest
		case name; case _name
		case packageId; case _packageId
		case publisher; case _publisher
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.definition = try ImplementationGuideDefinition(from: _container, forKeyIfPresent: .definition)
		self.dependsOn = try [ImplementationGuideDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.global = try [ImplementationGuideGlobal](from: _container, forKeyIfPresent: .global)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.license = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .license, auxiliaryKey: ._license)
		self.manifest = try ImplementationGuideManifest(from: _container, forKeyIfPresent: .manifest)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.packageId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .packageId, auxiliaryKey: ._packageId)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try definition?.encode(on: &_container, forKey: .definition)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try global?.encode(on: &_container, forKey: .global)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try license?.encode(on: &_container, forKey: .license, auxiliaryKey: ._license)
		try manifest?.encode(on: &_container, forKey: .manifest)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try packageId.encode(on: &_container, forKey: .packageId, auxiliaryKey: ._packageId)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
		return contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && definition == _other.definition
		    && dependsOn == _other.dependsOn
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && fhirVersion == _other.fhirVersion
		    && global == _other.global
		    && jurisdiction == _other.jurisdiction
		    && license == _other.license
		    && manifest == _other.manifest
		    && name == _other.name
		    && packageId == _other.packageId
		    && publisher == _other.publisher
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(definition)
		hasher.combine(dependsOn)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(fhirVersion)
		hasher.combine(global)
		hasher.combine(jurisdiction)
		hasher.combine(license)
		hasher.combine(manifest)
		hasher.combine(name)
		hasher.combine(packageId)
		hasher.combine(publisher)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Information needed to build the IG.
 
 The information needed by an IG publisher tool to publish the whole implementation guide.
 */
open class ImplementationGuideDefinition: BackboneElement {
	
	/// Grouping used to present related resources in the IG
	public var grouping: [ImplementationGuideDefinitionGrouping]?
	
	/// Resource in the implementation guide
	public var resource: [ImplementationGuideDefinitionResource]
	
	/// Page/Section in the Guide
	public var page: ImplementationGuideDefinitionPage?
	
	/// Defines how IG is built by tools
	public var parameter: [ImplementationGuideDefinitionParameter]?
	
	/// A template for building resources
	public var template: [ImplementationGuideDefinitionTemplate]?
	
	/// Designated initializer taking all required properties
	public init(resource: [ImplementationGuideDefinitionResource]) {
		self.resource = resource
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							grouping: [ImplementationGuideDefinitionGrouping]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							page: ImplementationGuideDefinitionPage? = nil,
							parameter: [ImplementationGuideDefinitionParameter]? = nil,
							resource: [ImplementationGuideDefinitionResource],
							template: [ImplementationGuideDefinitionTemplate]? = nil)
	{
		self.init(resource: resource)
		self.`extension` = `extension`
		self.grouping = grouping
		self.id = id
		self.modifierExtension = modifierExtension
		self.page = page
		self.parameter = parameter
		self.template = template
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case grouping
		case page
		case parameter
		case resource
		case template
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.grouping = try [ImplementationGuideDefinitionGrouping](from: _container, forKeyIfPresent: .grouping)
		self.page = try ImplementationGuideDefinitionPage(from: _container, forKeyIfPresent: .page)
		self.parameter = try [ImplementationGuideDefinitionParameter](from: _container, forKeyIfPresent: .parameter)
		self.resource = try [ImplementationGuideDefinitionResource](from: _container, forKey: .resource)
		self.template = try [ImplementationGuideDefinitionTemplate](from: _container, forKeyIfPresent: .template)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try grouping?.encode(on: &_container, forKey: .grouping)
		try page?.encode(on: &_container, forKey: .page)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try resource.encode(on: &_container, forKey: .resource)
		try template?.encode(on: &_container, forKey: .template)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return grouping == _other.grouping
		    && page == _other.page
		    && parameter == _other.parameter
		    && resource == _other.resource
		    && template == _other.template
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(grouping)
		hasher.combine(page)
		hasher.combine(parameter)
		hasher.combine(resource)
		hasher.combine(template)
	}
}

/**
 Grouping used to present related resources in the IG.
 
 A logical group of resources. Logical groups can be used when building pages.
 */
open class ImplementationGuideDefinitionGrouping: BackboneElement {
	
	/// Descriptive name for the package
	public var name: FHIRPrimitive<FHIRString>
	
	/// Human readable text describing the package
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>)
	{
		self.init(name: name)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDefinitionGrouping else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(name)
	}
}

/**
 Page/Section in the Guide.
 
 A page / section in the implementation guide. The root page is the implementation guide home page.
 */
open class ImplementationGuideDefinitionPage: BackboneElement {
	
	/// All possible types for "name[x]"
	public enum NameX: Hashable {
		case reference(Reference)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// Where to find that page
	/// One of `name[x]`
	public var name: NameX
	
	/// Short title shown for navigational assistance
	public var title: FHIRPrimitive<FHIRString>
	
	/// A code that indicates how the page is generated.
	public var generation: FHIRPrimitive<GuidePageGeneration>
	
	/// Nested Pages / Sections
	public var page: [ImplementationGuideDefinitionPage]?
	
	/// Designated initializer taking all required properties
	public init(generation: FHIRPrimitive<GuidePageGeneration>, name: NameX, title: FHIRPrimitive<FHIRString>) {
		self.generation = generation
		self.name = name
		self.title = title
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							generation: FHIRPrimitive<GuidePageGeneration>,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: NameX,
							page: [ImplementationGuideDefinitionPage]? = nil,
							title: FHIRPrimitive<FHIRString>)
	{
		self.init(generation: generation, name: name, title: title)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.page = page
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case generation; case _generation
		case nameReference
		case nameUrl; case _nameUrl
		case page
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.nameReference) || _container.contains(CodingKeys.nameUrl) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.nameReference, CodingKeys.nameUrl], debugDescription: "Must have at least one value for \"name\" but have none"))
		}
		
		// Decode all our properties
		self.generation = try FHIRPrimitive<GuidePageGeneration>(from: _container, forKey: .generation, auxiliaryKey: ._generation)
		var _t_name: NameX? = nil
		if let nameUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .nameUrl, auxiliaryKey: ._nameUrl) {
			if _t_name != nil {
				throw DecodingError.dataCorruptedError(forKey: .nameUrl, in: _container, debugDescription: "More than one value provided for \"name\"")
			}
			_t_name = .url(nameUrl)
		}
		if let nameReference = try Reference(from: _container, forKeyIfPresent: .nameReference) {
			if _t_name != nil {
				throw DecodingError.dataCorruptedError(forKey: .nameReference, in: _container, debugDescription: "More than one value provided for \"name\"")
			}
			_t_name = .reference(nameReference)
		}
		self.name = _t_name!
		self.page = try [ImplementationGuideDefinitionPage](from: _container, forKeyIfPresent: .page)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try generation.encode(on: &_container, forKey: .generation, auxiliaryKey: ._generation)
		
			switch name {
			case .url(let _value):
				try _value.encode(on: &_container, forKey: .nameUrl, auxiliaryKey: ._nameUrl)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .nameReference)
			}
		
		try page?.encode(on: &_container, forKey: .page)
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDefinitionPage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return generation == _other.generation
		    && name == _other.name
		    && page == _other.page
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(generation)
		hasher.combine(name)
		hasher.combine(page)
		hasher.combine(title)
	}
}

/**
 Defines how IG is built by tools.
 */
open class ImplementationGuideDefinitionParameter: BackboneElement {
	
	/// None
	public var code: FHIRPrimitive<GuideParameterCode>
	
	/// Value for named type
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<GuideParameterCode>, value: FHIRPrimitive<FHIRString>) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<GuideParameterCode>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<GuideParameterCode>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDefinitionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(value)
	}
}

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
 statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
 */
open class ImplementationGuideDefinitionResource: BackboneElement {
	
	/// All possible types for "example[x]"
	public enum ExampleX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
	}
	
	/// Location of the resource
	public var reference: Reference
	
	/// Versions this applies to (if different to IG)
	public var fhirVersion: [FHIRPrimitive<FHIRString>]?
	
	/// Human Name for the resource
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Reason why included in guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Is an example/What is this an example of?
	/// One of `example[x]`
	public var example: ExampleX?
	
	/// Grouping this is part of
	public var groupingId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(reference: Reference) {
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							example: ExampleX? = nil,
							`extension`: [Extension]? = nil,
							fhirVersion: [FHIRPrimitive<FHIRString>]? = nil,
							groupingId: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							reference: Reference)
	{
		self.init(reference: reference)
		self.description_fhir = description_fhir
		self.example = example
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.groupingId = groupingId
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case exampleBoolean; case _exampleBoolean
		case exampleCanonical; case _exampleCanonical
		case fhirVersion; case _fhirVersion
		case groupingId; case _groupingId
		case name; case _name
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_example: ExampleX? = nil
		if let exampleBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exampleBoolean, auxiliaryKey: ._exampleBoolean) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleBoolean, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .boolean(exampleBoolean)
		}
		if let exampleCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .exampleCanonical, auxiliaryKey: ._exampleCanonical) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleCanonical, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .canonical(exampleCanonical)
		}
		self.example = _t_example
		self.fhirVersion = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.groupingId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .groupingId, auxiliaryKey: ._groupingId)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.reference = try Reference(from: _container, forKey: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = example {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .exampleBoolean, auxiliaryKey: ._exampleBoolean)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .exampleCanonical, auxiliaryKey: ._exampleCanonical)
			}
		}
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try groupingId?.encode(on: &_container, forKey: .groupingId, auxiliaryKey: ._groupingId)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try reference.encode(on: &_container, forKey: .reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDefinitionResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && example == _other.example
		    && fhirVersion == _other.fhirVersion
		    && groupingId == _other.groupingId
		    && name == _other.name
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(example)
		hasher.combine(fhirVersion)
		hasher.combine(groupingId)
		hasher.combine(name)
		hasher.combine(reference)
	}
}

/**
 A template for building resources.
 */
open class ImplementationGuideDefinitionTemplate: BackboneElement {
	
	/// Type of template specified
	public var code: FHIRPrimitive<FHIRString>
	
	/// The source location for the template
	public var source: FHIRPrimitive<FHIRString>
	
	/// The scope in which the template applies
	public var scope: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, source: FHIRPrimitive<FHIRString>) {
		self.code = code
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							scope: FHIRPrimitive<FHIRString>? = nil,
							source: FHIRPrimitive<FHIRString>)
	{
		self.init(code: code, source: source)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.scope = scope
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case scope; case _scope
		case source; case _source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.scope = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .scope, auxiliaryKey: ._scope)
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKey: .source, auxiliaryKey: ._source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try scope?.encode(on: &_container, forKey: .scope, auxiliaryKey: ._scope)
		try source.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDefinitionTemplate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && scope == _other.scope
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(scope)
		hasher.combine(source)
	}
}

/**
 Another Implementation guide this depends on.
 
 Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
 profiles etc.defined in other implementation guides.
 */
open class ImplementationGuideDependsOn: BackboneElement {
	
	/// Identity of the IG that this depends on
	public var uri: FHIRPrimitive<Canonical>
	
	/// NPM Package name for IG this depends on
	public var packageId: FHIRPrimitive<FHIRString>?
	
	/// Version of the IG
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(uri: FHIRPrimitive<Canonical>) {
		self.uri = uri
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							packageId: FHIRPrimitive<FHIRString>? = nil,
							uri: FHIRPrimitive<Canonical>,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(uri: uri)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageId = packageId
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case packageId; case _packageId
		case uri; case _uri
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.packageId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .packageId, auxiliaryKey: ._packageId)
		self.uri = try FHIRPrimitive<Canonical>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try packageId?.encode(on: &_container, forKey: .packageId, auxiliaryKey: ._packageId)
		try uri.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideDependsOn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return packageId == _other.packageId
		    && uri == _other.uri
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(packageId)
		hasher.combine(uri)
		hasher.combine(version)
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
	public var profile: FHIRPrimitive<Canonical>
	
	/// Designated initializer taking all required properties
	public init(profile: FHIRPrimitive<Canonical>, type: FHIRPrimitive<ResourceType>) {
		self.profile = profile
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							profile: FHIRPrimitive<Canonical>,
							type: FHIRPrimitive<ResourceType>)
	{
		self.init(profile: profile, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case profile; case _profile
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKey: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try profile.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
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
 Information about an assembled IG.
 
 Information about an assembled implementation guide, created by the publication tooling.
 */
open class ImplementationGuideManifest: BackboneElement {
	
	/// Location of rendered implementation guide
	public var rendering: FHIRPrimitive<FHIRURI>?
	
	/// Resource in the implementation guide
	public var resource: [ImplementationGuideManifestResource]
	
	/// HTML page within the parent IG
	public var page: [ImplementationGuideManifestPage]?
	
	/// Image within the IG
	public var image: [FHIRPrimitive<FHIRString>]?
	
	/// Additional linkable file in IG
	public var other: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(resource: [ImplementationGuideManifestResource]) {
		self.resource = resource
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							image: [FHIRPrimitive<FHIRString>]? = nil,
							modifierExtension: [Extension]? = nil,
							other: [FHIRPrimitive<FHIRString>]? = nil,
							page: [ImplementationGuideManifestPage]? = nil,
							rendering: FHIRPrimitive<FHIRURI>? = nil,
							resource: [ImplementationGuideManifestResource])
	{
		self.init(resource: resource)
		self.`extension` = `extension`
		self.id = id
		self.image = image
		self.modifierExtension = modifierExtension
		self.other = other
		self.page = page
		self.rendering = rendering
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case image; case _image
		case other; case _other
		case page
		case rendering; case _rendering
		case resource
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.image = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .image, auxiliaryKey: ._image)
		self.other = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .other, auxiliaryKey: ._other)
		self.page = try [ImplementationGuideManifestPage](from: _container, forKeyIfPresent: .page)
		self.rendering = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .rendering, auxiliaryKey: ._rendering)
		self.resource = try [ImplementationGuideManifestResource](from: _container, forKey: .resource)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try image?.encode(on: &_container, forKey: .image, auxiliaryKey: ._image)
		try other?.encode(on: &_container, forKey: .other, auxiliaryKey: ._other)
		try page?.encode(on: &_container, forKey: .page)
		try rendering?.encode(on: &_container, forKey: .rendering, auxiliaryKey: ._rendering)
		try resource.encode(on: &_container, forKey: .resource)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideManifest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return image == _other.image
		    && other == _other.other
		    && page == _other.page
		    && rendering == _other.rendering
		    && resource == _other.resource
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(image)
		hasher.combine(other)
		hasher.combine(page)
		hasher.combine(rendering)
		hasher.combine(resource)
	}
}

/**
 HTML page within the parent IG.
 
 Information about a page within the IG.
 */
open class ImplementationGuideManifestPage: BackboneElement {
	
	/// HTML page name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Title of the page, for references
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Anchor available on the page
	public var anchor: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							anchor: [FHIRPrimitive<FHIRString>]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name)
		self.anchor = anchor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case anchor; case _anchor
		case name; case _name
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.anchor = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .anchor, auxiliaryKey: ._anchor)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try anchor?.encode(on: &_container, forKey: .anchor, auxiliaryKey: ._anchor)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideManifestPage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return anchor == _other.anchor
		    && name == _other.name
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(anchor)
		hasher.combine(name)
		hasher.combine(title)
	}
}

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
 statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
 */
open class ImplementationGuideManifestResource: BackboneElement {
	
	/// All possible types for "example[x]"
	public enum ExampleX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case canonical(FHIRPrimitive<Canonical>)
	}
	
	/// Location of the resource
	public var reference: Reference
	
	/// Is an example/What is this an example of?
	/// One of `example[x]`
	public var example: ExampleX?
	
	/// Relative path for page in IG
	public var relativePath: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(reference: Reference) {
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							example: ExampleX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: Reference,
							relativePath: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(reference: reference)
		self.example = example
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relativePath = relativePath
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exampleBoolean; case _exampleBoolean
		case exampleCanonical; case _exampleCanonical
		case reference
		case relativePath; case _relativePath
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_example: ExampleX? = nil
		if let exampleBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exampleBoolean, auxiliaryKey: ._exampleBoolean) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleBoolean, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .boolean(exampleBoolean)
		}
		if let exampleCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .exampleCanonical, auxiliaryKey: ._exampleCanonical) {
			if _t_example != nil {
				throw DecodingError.dataCorruptedError(forKey: .exampleCanonical, in: _container, debugDescription: "More than one value provided for \"example\"")
			}
			_t_example = .canonical(exampleCanonical)
		}
		self.example = _t_example
		self.reference = try Reference(from: _container, forKey: .reference)
		self.relativePath = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .relativePath, auxiliaryKey: ._relativePath)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = example {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .exampleBoolean, auxiliaryKey: ._exampleBoolean)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .exampleCanonical, auxiliaryKey: ._exampleCanonical)
			}
		}
		try reference.encode(on: &_container, forKey: .reference)
		try relativePath?.encode(on: &_container, forKey: .relativePath, auxiliaryKey: ._relativePath)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImplementationGuideManifestResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return example == _other.example
		    && reference == _other.reference
		    && relativePath == _other.relativePath
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(example)
		hasher.combine(reference)
		hasher.combine(relativePath)
	}
}
