//
//  ImplementationGuide.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide)
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
 
 A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR
 resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish
 a computable definition of all the parts.
 */
public struct ImplementationGuide: DomainResource {
	
	public static let resourceType: ResourceType = .implementationGuide
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Information needed to build the IG
	public var definition: ImplementationGuideDefinition?
	
	/// Another Implementation guide this depends on
	public var dependsOn: [ImplementationGuideDependsOn]?
	
	/// Natural language description of the implementation guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version(s) this Implementation Guide targets
	public var fhirVersion: [FHIRPrimitive<FHIRString>]
	
	/// Profiles that apply globally
	public var global: [ImplementationGuideGlobal]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the implementation guide (business identifier)
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for implementation guide (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// SPDX license code for this IG (or not-open-source)
	public var license: FHIRPrimitive<FHIRString>?
	
	/// Information about an assembled IG
	public var manifest: ImplementationGuideManifest?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this implementation guide (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// NPM Package name for IG
	public var packageId: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this implementation guide is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this implementation guide (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this implementation guide, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the implementation guide
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
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
		self.fhirVersion = fhirVersion
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
		self.name = name
		self.packageId = packageId
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case definition
		case dependsOn
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case global
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case license; case _license
		case manifest
		case meta
		case modifierExtension
		case name; case _name
		case packageId; case _packageId
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.definition = try ImplementationGuideDefinition(from: _container, forKeyIfPresent: .definition)
		self.dependsOn = try [ImplementationGuideDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.global = try [ImplementationGuideGlobal](from: _container, forKeyIfPresent: .global)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.license = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .license, auxiliaryKey: ._license)
		self.manifest = try ImplementationGuideManifest(from: _container, forKeyIfPresent: .manifest)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.packageId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .packageId, auxiliaryKey: ._packageId)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try definition?.encode(on: &_container, forKey: .definition)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try global?.encode(on: &_container, forKey: .global)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try license?.encode(on: &_container, forKey: .license, auxiliaryKey: ._license)
		try manifest?.encode(on: &_container, forKey: .manifest)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try packageId.encode(on: &_container, forKey: .packageId, auxiliaryKey: ._packageId)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
		switch _enum {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeVersionAlgorithm(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> VersionAlgorithmX? {
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		return _t_versionAlgorithm
	}
}

/**
 Information needed to build the IG.
 
 The information needed by an IG publisher tool to publish the whole implementation guide.
 */
public struct ImplementationGuideDefinition: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Grouping used to present related resources in the IG
	public var grouping: [ImplementationGuideDefinitionGrouping]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Page/Section in the Guide
	public var page: ImplementationGuideDefinitionPage?
	
	/// Defines how IG is built by tools
	public var parameter: [ImplementationGuideDefinitionParameter]?
	
	/// Resource in the implementation guide
	public var resource: [ImplementationGuideDefinitionResource]?
	
	/// A template for building resources
	public var template: [ImplementationGuideDefinitionTemplate]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		grouping: [ImplementationGuideDefinitionGrouping]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		page: ImplementationGuideDefinitionPage? = nil,
		parameter: [ImplementationGuideDefinitionParameter]? = nil,
		resource: [ImplementationGuideDefinitionResource]? = nil,
		template: [ImplementationGuideDefinitionTemplate]? = nil
	) {
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
		case `extension` = "extension"
		case grouping
		case id; case _id
		case modifierExtension
		case page
		case parameter
		case resource
		case template
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.grouping = try [ImplementationGuideDefinitionGrouping](from: _container, forKeyIfPresent: .grouping)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.page = try ImplementationGuideDefinitionPage(from: _container, forKeyIfPresent: .page)
		self.parameter = try [ImplementationGuideDefinitionParameter](from: _container, forKeyIfPresent: .parameter)
		self.resource = try [ImplementationGuideDefinitionResource](from: _container, forKeyIfPresent: .resource)
		self.template = try [ImplementationGuideDefinitionTemplate](from: _container, forKeyIfPresent: .template)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try grouping?.encode(on: &_container, forKey: .grouping)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try page?.encode(on: &_container, forKey: .page)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try resource?.encode(on: &_container, forKey: .resource)
		try template?.encode(on: &_container, forKey: .template)
	}
}

/**
 Grouping used to present related resources in the IG.
 
 A logical group of resources. Logical groups can be used when building pages.
 */
public struct ImplementationGuideDefinitionGrouping: BackboneElement {
	
	/// Human readable text describing the package
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Descriptive name for the package
	public var name: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
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
	}
}

/**
 Page/Section in the Guide.
 
 A page / section in the implementation guide. The root page is the implementation guide home page.
 */
public struct ImplementationGuideDefinitionPage: BackboneElement {
	
	/// All possible types for "source[x]"
	public enum SourceX: Equatable, Hashable, Sendable {
		case markdown(FHIRPrimitive<FHIRString>)
		case string(FHIRPrimitive<FHIRString>)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// A code that indicates how the page is generated.
	public var generation: FHIRPrimitive<GuidePageGeneration>
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of the page when published
	public var name: FHIRPrimitive<FHIRURI>
	
	/// Nested Pages / Sections
	public var page: [ImplementationGuideDefinitionPage]?
	
	/// Source for page
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Short title shown for navigational assistance
	public var title: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		generation: FHIRPrimitive<GuidePageGeneration>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRURI>,
		page: [ImplementationGuideDefinitionPage]? = nil,
		source: SourceX? = nil,
		title: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.generation = generation
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.page = page
		self.source = source
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case generation; case _generation
		case id; case _id
		case modifierExtension
		case name; case _name
		case page
		case sourceMarkdown; case _sourceMarkdown
		case sourceString; case _sourceString
		case sourceUrl; case _sourceUrl
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.generation = try FHIRPrimitive<GuidePageGeneration>(from: _container, forKey: .generation, auxiliaryKey: ._generation)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.page = try [ImplementationGuideDefinitionPage](from: _container, forKeyIfPresent: .page)
		self.source = try Self._decodeSource(from: _container)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKey: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try generation.encode(on: &_container, forKey: .generation, auxiliaryKey: ._generation)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try page?.encode(on: &_container, forKey: .page)
		if let _enum = source {
		switch _enum {
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .sourceMarkdown, auxiliaryKey: ._sourceMarkdown)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .sourceString, auxiliaryKey: ._sourceString)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .sourceUrl, auxiliaryKey: ._sourceUrl)
		}
		}
		try title.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSource(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceX? {
		var _t_source: SourceX? = nil
		if let sourceMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceMarkdown, auxiliaryKey: ._sourceMarkdown) {
			_t_source = .markdown(sourceMarkdown)
		}
		if let sourceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceString, auxiliaryKey: ._sourceString) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceString, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .string(sourceString)
		}
		if let sourceUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUrl, auxiliaryKey: ._sourceUrl) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUrl, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .url(sourceUrl)
		}
		return _t_source
	}
}

/**
 Defines how IG is built by tools.
 
 A set of parameters that defines how the implementation guide is built. The parameters are defined by the relevant
 tools that build the implementation guides.
 */
public struct ImplementationGuideDefinitionParameter: BackboneElement {
	
	/// Code that identifies parameter
	public var code: Coding
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value for named type
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		code: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try Coding(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
 statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
 */
public struct ImplementationGuideDefinitionResource: BackboneElement {
	
	/// Reason why included in guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Versions this applies to (if different to IG)
	public var fhirVersion: [FHIRPrimitive<FHIRString>]?
	
	/// Grouping this is part of
	public var groupingId: FHIRPrimitive<FHIRString>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Is this an example
	public var isExample: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Human readable name for the resource
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Profile(s) this is an example of
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// Location of the resource
	public var reference: Reference
	
	/// Designated initializer
	public init(
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
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.groupingId = groupingId
		self.id = id
		self.isExample = isExample
		self.modifierExtension = modifierExtension
		self.name = name
		self.profile = profile
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case groupingId; case _groupingId
		case id; case _id
		case isExample; case _isExample
		case modifierExtension
		case name; case _name
		case profile; case _profile
		case reference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.groupingId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .groupingId, auxiliaryKey: ._groupingId)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isExample = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isExample, auxiliaryKey: ._isExample)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.reference = try Reference(from: _container, forKey: .reference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try groupingId?.encode(on: &_container, forKey: .groupingId, auxiliaryKey: ._groupingId)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isExample?.encode(on: &_container, forKey: .isExample, auxiliaryKey: ._isExample)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try reference.encode(on: &_container, forKey: .reference)
	}
}

/**
 A template for building resources.
 */
public struct ImplementationGuideDefinitionTemplate: BackboneElement {
	
	/// Type of template specified
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The scope in which the template applies
	public var scope: FHIRPrimitive<FHIRString>?
	
	/// The source location for the template
	public var source: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		scope: FHIRPrimitive<FHIRString>? = nil,
		source: FHIRPrimitive<FHIRString>
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.scope = scope
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case scope; case _scope
		case source; case _source
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.scope = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .scope, auxiliaryKey: ._scope)
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKey: .source, auxiliaryKey: ._source)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try scope?.encode(on: &_container, forKey: .scope, auxiliaryKey: ._scope)
		try source.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
	}
}

/**
 Another Implementation guide this depends on.
 
 Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
 profiles etc.defined in other implementation guides.
 */
public struct ImplementationGuideDependsOn: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// NPM Package name for IG this depends on
	public var packageId: FHIRPrimitive<FHIRString>?
	
	/// Why dependency exists
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// Identity of the IG that this depends on
	public var uri: FHIRPrimitive<Canonical>
	
	/// Version of the IG
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		packageId: FHIRPrimitive<FHIRString>? = nil,
		reason: FHIRPrimitive<FHIRString>? = nil,
		uri: FHIRPrimitive<Canonical>,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packageId = packageId
		self.reason = reason
		self.uri = uri
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case packageId; case _packageId
		case reason; case _reason
		case uri; case _uri
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.packageId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .packageId, auxiliaryKey: ._packageId)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.uri = try FHIRPrimitive<Canonical>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try packageId?.encode(on: &_container, forKey: .packageId, auxiliaryKey: ._packageId)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try uri.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Profiles that apply globally.
 
 A set of profiles that all resources covered by this implementation guide must conform to.
 */
public struct ImplementationGuideGlobal: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Profile that all resources must conform to
	public var profile: FHIRPrimitive<Canonical>
	
	/// The type of resource that all instances must conform to.
	/// Restricted to: ['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition',
	/// 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent',
	/// 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure',
	/// 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation',
	/// 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication',
	/// 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition',
	/// 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest',
	/// 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAssociation', 'DeviceDefinition',
	/// 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport', 'DocumentReference',
	/// 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare',
	/// 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit',
	/// 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal', 'GraphDefinition', 'Group',
	/// 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy', 'Immunization',
	/// 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan',
	/// 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage', 'List', 'Location',
	/// 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement',
	/// 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem',
	/// 'NutritionIntake', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition',
	/// 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation',
	/// 'PackagedProductDefinition', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Permission',
	/// 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements',
	/// 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot',
	/// 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus',
	/// 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer',
	/// 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery',
	/// 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport',
	/// 'ValueSet', 'VerificationResult', 'VisionPrescription']
	public var type: FHIRPrimitive<ResourceType>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		profile: FHIRPrimitive<Canonical>,
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
		case profile; case _profile
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
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKey: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Information about an assembled IG.
 
 Information about an assembled implementation guide, created by the publication tooling.
 */
public struct ImplementationGuideManifest: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Image within the IG
	public var image: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Additional linkable file in IG
	public var other: [FHIRPrimitive<FHIRString>]?
	
	/// HTML page within the parent IG
	public var page: [ImplementationGuideManifestPage]?
	
	/// Location of rendered implementation guide
	public var rendering: FHIRPrimitive<FHIRURI>?
	
	/// Resource in the implementation guide
	public var resource: [ImplementationGuideManifestResource]
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		image: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		other: [FHIRPrimitive<FHIRString>]? = nil,
		page: [ImplementationGuideManifestPage]? = nil,
		rendering: FHIRPrimitive<FHIRURI>? = nil,
		resource: [ImplementationGuideManifestResource]
	) {
		self.`extension` = `extension`
		self.id = id
		self.image = image
		self.modifierExtension = modifierExtension
		self.other = other
		self.page = page
		self.rendering = rendering
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case image; case _image
		case modifierExtension
		case other; case _other
		case page
		case rendering; case _rendering
		case resource
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.image = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .image, auxiliaryKey: ._image)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.other = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .other, auxiliaryKey: ._other)
		self.page = try [ImplementationGuideManifestPage](from: _container, forKeyIfPresent: .page)
		self.rendering = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .rendering, auxiliaryKey: ._rendering)
		self.resource = try [ImplementationGuideManifestResource](from: _container, forKey: .resource)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try image?.encode(on: &_container, forKey: .image, auxiliaryKey: ._image)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try other?.encode(on: &_container, forKey: .other, auxiliaryKey: ._other)
		try page?.encode(on: &_container, forKey: .page)
		try rendering?.encode(on: &_container, forKey: .rendering, auxiliaryKey: ._rendering)
		try resource.encode(on: &_container, forKey: .resource)
	}
}

/**
 HTML page within the parent IG.
 
 Information about a page within the IG.
 */
public struct ImplementationGuideManifestPage: BackboneElement {
	
	/// Anchor available on the page
	public var anchor: [FHIRPrimitive<FHIRString>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// HTML page name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Title of the page, for references
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		anchor: [FHIRPrimitive<FHIRString>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.anchor = anchor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case anchor; case _anchor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.anchor = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .anchor, auxiliaryKey: ._anchor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try anchor?.encode(on: &_container, forKey: .anchor, auxiliaryKey: ._anchor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
 statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
 */
public struct ImplementationGuideManifestResource: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Is this an example
	public var isExample: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Profile(s) this is an example of
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// Location of the resource
	public var reference: Reference
	
	/// Relative path for page in IG
	public var relativePath: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isExample: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		profile: [FHIRPrimitive<Canonical>]? = nil,
		reference: Reference,
		relativePath: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.isExample = isExample
		self.modifierExtension = modifierExtension
		self.profile = profile
		self.reference = reference
		self.relativePath = relativePath
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case isExample; case _isExample
		case modifierExtension
		case profile; case _profile
		case reference
		case relativePath; case _relativePath
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isExample = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isExample, auxiliaryKey: ._isExample)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.reference = try Reference(from: _container, forKey: .reference)
		self.relativePath = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .relativePath, auxiliaryKey: ._relativePath)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isExample?.encode(on: &_container, forKey: .isExample, auxiliaryKey: ._isExample)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try reference.encode(on: &_container, forKey: .reference)
		try relativePath?.encode(on: &_container, forKey: .relativePath, auxiliaryKey: ._relativePath)
	}
}
