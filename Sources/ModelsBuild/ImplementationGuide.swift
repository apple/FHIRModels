//
//  ImplementationGuide.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide)
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
 A set of rules about how FHIR is used.
 
 A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR
 resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish
 a computable definition of all the parts.
 */
open class ImplementationGuide: DomainResource {
	
	override open class var resourceType: ResourceType { return .implementationGuide }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this implementation guide, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Additional identifier for the implementation guide (business identifier)
	public var identifier: [Identifier]?
	
	/// Business version of the implementation guide
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
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
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the implementation guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for implementation guide (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this implementation guide is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
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
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		definition: ImplementationGuideDefinition? = nil,
		dependsOn: [ImplementationGuideDependsOn]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: [FHIRPrimitive<FHIRString>],
		global: [ImplementationGuideGlobal]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
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
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(fhirVersion: fhirVersion, name: name, packageId: packageId, status: status, url: url)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.definition = definition
		self.dependsOn = dependsOn
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.global = global
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.license = license
		self.manifest = manifest
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.purpose = purpose
		self.text = text
		self.title = title
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
		case definition
		case dependsOn
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case fhirVersion; case _fhirVersion
		case global
		case identifier
		case jurisdiction
		case license; case _license
		case manifest
		case name; case _name
		case packageId; case _packageId
		case publisher; case _publisher
		case purpose; case _purpose
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
		self.definition = try ImplementationGuideDefinition(from: _container, forKeyIfPresent: .definition)
		self.dependsOn = try [ImplementationGuideDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fhirVersion = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.global = try [ImplementationGuideGlobal](from: _container, forKeyIfPresent: .global)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.license = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .license, auxiliaryKey: ._license)
		self.manifest = try ImplementationGuideManifest(from: _container, forKeyIfPresent: .manifest)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.packageId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .packageId, auxiliaryKey: ._packageId)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
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
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try definition?.encode(on: &_container, forKey: .definition)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try global?.encode(on: &_container, forKey: .global)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try license?.encode(on: &_container, forKey: .license, auxiliaryKey: ._license)
		try manifest?.encode(on: &_container, forKey: .manifest)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try packageId.encode(on: &_container, forKey: .packageId, auxiliaryKey: ._packageId)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
		guard let _other = _other as? ImplementationGuide else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && definition == _other.definition
		    && dependsOn == _other.dependsOn
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && fhirVersion == _other.fhirVersion
		    && global == _other.global
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && license == _other.license
		    && manifest == _other.manifest
		    && name == _other.name
		    && packageId == _other.packageId
		    && publisher == _other.publisher
		    && purpose == _other.purpose
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
		hasher.combine(definition)
		hasher.combine(dependsOn)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(fhirVersion)
		hasher.combine(global)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(license)
		hasher.combine(manifest)
		hasher.combine(name)
		hasher.combine(packageId)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
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
	public var resource: [ImplementationGuideDefinitionResource]?
	
	/// Page/Section in the Guide
	public var page: ImplementationGuideDefinitionPage?
	
	/// Defines how IG is built by tools
	public var parameter: [ImplementationGuideDefinitionParameter]?
	
	/// A template for building resources
	public var template: [ImplementationGuideDefinitionTemplate]?
	
	/// Designated initializer taking all required properties
	override public init() {
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
		resource: [ImplementationGuideDefinitionResource]? = nil,
		template: [ImplementationGuideDefinitionTemplate]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.grouping = grouping
		self.id = id
		self.modifierExtension = modifierExtension
		self.page = page
		self.parameter = parameter
		self.resource = resource
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
		self.resource = try [ImplementationGuideDefinitionResource](from: _container, forKeyIfPresent: .resource)
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
		try resource?.encode(on: &_container, forKey: .resource)
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
		name: FHIRPrimitive<FHIRString>
	) {
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
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case markdown(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// Source for page
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Name of the page when published
	public var name: FHIRPrimitive<FHIRURI>
	
	/// Short title shown for navigational assistance
	public var title: FHIRPrimitive<FHIRString>
	
	/// A code that indicates how the page is generated.
	public var generation: FHIRPrimitive<GuidePageGeneration>
	
	/// Nested Pages / Sections
	public var page: [ImplementationGuideDefinitionPage]?
	
	/// Designated initializer taking all required properties
	public init(generation: FHIRPrimitive<GuidePageGeneration>, name: FHIRPrimitive<FHIRURI>, title: FHIRPrimitive<FHIRString>) {
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
		name: FHIRPrimitive<FHIRURI>,
		page: [ImplementationGuideDefinitionPage]? = nil,
		source: SourceX? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.init(generation: generation, name: name, title: title)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.page = page
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case generation; case _generation
		case name; case _name
		case page
		case sourceMarkdown; case _sourceMarkdown
		case sourceString; case _sourceString
		case sourceUrl; case _sourceUrl
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.generation = try FHIRPrimitive<GuidePageGeneration>(from: _container, forKey: .generation, auxiliaryKey: ._generation)
		self.name = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.page = try [ImplementationGuideDefinitionPage](from: _container, forKeyIfPresent: .page)
		var _t_source: SourceX? = nil
		if let sourceUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUrl, auxiliaryKey: ._sourceUrl) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUrl, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .url(sourceUrl)
		}
		if let sourceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceString, auxiliaryKey: ._sourceString) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceString, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .string(sourceString)
		}
		if let sourceMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceMarkdown, auxiliaryKey: ._sourceMarkdown) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceMarkdown, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .markdown(sourceMarkdown)
		}
		self.source = _t_source
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try generation.encode(on: &_container, forKey: .generation, auxiliaryKey: ._generation)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try page?.encode(on: &_container, forKey: .page)
		if let _enum = source {
			switch _enum {
			case .url(let _value):
				try _value.encode(on: &_container, forKey: .sourceUrl, auxiliaryKey: ._sourceUrl)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .sourceString, auxiliaryKey: ._sourceString)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .sourceMarkdown, auxiliaryKey: ._sourceMarkdown)
			}
		}
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
		    && source == _other.source
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(generation)
		hasher.combine(name)
		hasher.combine(page)
		hasher.combine(source)
		hasher.combine(title)
	}
}

/**
 Defines how IG is built by tools.
 
 A set of parameters that defines how the implementation guide is built. The parameters are defined by the relevant
 tools that build the implementation guides.
 */
open class ImplementationGuideDefinitionParameter: BackboneElement {
	
	/// Code that identifies parameter
	public var code: Coding
	
	/// Value for named type
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(code: Coding, value: FHIRPrimitive<FHIRString>) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try Coding(from: _container, forKey: .code)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
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
	
	/// Location of the resource
	public var reference: Reference
	
	/// Versions this applies to (if different to IG)
	public var fhirVersion: [FHIRPrimitive<FHIRString>]?
	
	/// Human readable name for the resource
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Reason why included in guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Is this an example
	public var isExample: FHIRPrimitive<FHIRBool>?
	
	/// Profile(s) this is an example of
	public var profile: [FHIRPrimitive<Canonical>]?
	
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
		`extension`: [Extension]? = nil,
		fhirVersion: [FHIRPrimitive<FHIRString>]? = nil,
		groupingId: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isExample: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		profile: [FHIRPrimitive<Canonical>]? = nil,
		reference: Reference
	) {
		self.init(reference: reference)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.groupingId = groupingId
		self.id = id
		self.isExample = isExample
		self.modifierExtension = modifierExtension
		self.name = name
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case fhirVersion; case _fhirVersion
		case groupingId; case _groupingId
		case isExample; case _isExample
		case name; case _name
		case profile; case _profile
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.fhirVersion = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.groupingId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .groupingId, auxiliaryKey: ._groupingId)
		self.isExample = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isExample, auxiliaryKey: ._isExample)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.reference = try Reference(from: _container, forKey: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try groupingId?.encode(on: &_container, forKey: .groupingId, auxiliaryKey: ._groupingId)
		try isExample?.encode(on: &_container, forKey: .isExample, auxiliaryKey: ._isExample)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
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
		    && fhirVersion == _other.fhirVersion
		    && groupingId == _other.groupingId
		    && isExample == _other.isExample
		    && name == _other.name
		    && profile == _other.profile
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(fhirVersion)
		hasher.combine(groupingId)
		hasher.combine(isExample)
		hasher.combine(name)
		hasher.combine(profile)
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
		source: FHIRPrimitive<FHIRString>
	) {
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
	
	/// Why dependency exists
	public var reason: FHIRPrimitive<FHIRString>?
	
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
		reason: FHIRPrimitive<FHIRString>? = nil,
		uri: FHIRPrimitive<Canonical>,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(uri: uri)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageId = packageId
		self.reason = reason
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case packageId; case _packageId
		case reason; case _reason
		case uri; case _uri
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.packageId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .packageId, auxiliaryKey: ._packageId)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.uri = try FHIRPrimitive<Canonical>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try packageId?.encode(on: &_container, forKey: .packageId, auxiliaryKey: ._packageId)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
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
		    && reason == _other.reason
		    && uri == _other.uri
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(packageId)
		hasher.combine(reason)
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
	/// Restricted to: ['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition',
	/// 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent',
	/// 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure',
	/// 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation',
	/// 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication',
	/// 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition',
	/// 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest',
	/// 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAlert', 'DeviceAssociation',
	/// 'DeviceDefinition', 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport',
	/// 'DocumentReference', 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse',
	/// 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario',
	/// 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal',
	/// 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy',
	/// 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient',
	/// 'InsurancePlan', 'InsuranceProduct', 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage',
	/// 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication',
	/// 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest',
	/// 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader',
	/// 'MolecularDefinition', 'MolecularSequence', 'NamingSystem', 'NutritionIntake', 'NutritionOrder',
	/// 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome',
	/// 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Parameters', 'Patient',
	/// 'PaymentNotice', 'PaymentReconciliation', 'Permission', 'Person', 'PersonalRelationship', 'PlanDefinition',
	/// 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse',
	/// 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements', 'ResearchStudy',
	/// 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen',
	/// 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus',
	/// 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer',
	/// 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery',
	/// 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport',
	/// 'ValueSet', 'VerificationResult', 'VisionPrescription']
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
		type: FHIRPrimitive<ResourceType>
	) {
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
		resource: [ImplementationGuideManifestResource]
	) {
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
		title: FHIRPrimitive<FHIRString>? = nil
	) {
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
	
	/// Location of the resource
	public var reference: Reference
	
	/// Is this an example
	public var isExample: FHIRPrimitive<FHIRBool>?
	
	/// Profile(s) this is an example of
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// Relative path for page in IG
	public var relativePath: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(reference: Reference) {
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isExample: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		profile: [FHIRPrimitive<Canonical>]? = nil,
		reference: Reference,
		relativePath: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(reference: reference)
		self.`extension` = `extension`
		self.id = id
		self.isExample = isExample
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.relativePath = relativePath
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case isExample; case _isExample
		case profile; case _profile
		case reference
		case relativePath; case _relativePath
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.isExample = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isExample, auxiliaryKey: ._isExample)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.reference = try Reference(from: _container, forKey: .reference)
		self.relativePath = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .relativePath, auxiliaryKey: ._relativePath)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try isExample?.encode(on: &_container, forKey: .isExample, auxiliaryKey: ._isExample)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
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
		return isExample == _other.isExample
		    && profile == _other.profile
		    && reference == _other.reference
		    && relativePath == _other.relativePath
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(isExample)
		hasher.combine(profile)
		hasher.combine(reference)
		hasher.combine(relativePath)
	}
}
