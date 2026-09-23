//
//  ExpansionProfile.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ExpansionProfile)
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
 Defines behaviour and contraints on the ValueSet Expansion operation.
 
 Resource to define constraints on the Expansion of a FHIR ValueSet.
 */
public struct ExpansionProfile: DomainResource {
	
	public static let resourceType: ResourceType = .expansionProfile
	
	/// Include or exclude inactive concepts in the expansion
	public var activeOnly: FHIRPrimitive<FHIRBool>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the expansion profile
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When the expansion profile imposes designation contraints
	public var designation: ExpansionProfileDesignation?
	
	/// Specify the language for the display element of codes in the value set expansion
	public var displayLanguage: FHIRPrimitive<FHIRString>?
	
	/// Nested codes in the expansion or not
	public var excludeNested: FHIRPrimitive<FHIRBool>?
	
	/// Include or exclude codes which cannot be rendered in user interfaces in the value set expansion
	public var excludeNotForUI: FHIRPrimitive<FHIRBool>?
	
	/// Include or exclude codes which are post coordinated expressions in the value set expansion
	public var excludePostCoordinated: FHIRPrimitive<FHIRBool>?
	
	/// Systems/Versions to be exclude
	public var excludedSystem: ExpansionProfileExcludedSystem?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Fix use of a code system to a particular version
	public var fixedVersion: [ExpansionProfileFixedVersion]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the expansion profile
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Include or exclude the value set definition in the expansion
	public var includeDefinition: FHIRPrimitive<FHIRBool>?
	
	/// Whether the expansion should include concept designations
	public var includeDesignations: FHIRPrimitive<FHIRBool>?
	
	/// Intended jurisdiction for expansion profile (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Controls behaviour of the value set expand operation when value sets are too large to be completely expanded
	public var limitedExpansion: FHIRPrimitive<FHIRBool>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this expansion profile (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// The status of this expansion profile. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical URI to reference this expansion profile (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the expansion profile
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		activeOnly: FHIRPrimitive<FHIRBool>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		designation: ExpansionProfileDesignation? = nil,
		displayLanguage: FHIRPrimitive<FHIRString>? = nil,
		excludeNested: FHIRPrimitive<FHIRBool>? = nil,
		excludeNotForUI: FHIRPrimitive<FHIRBool>? = nil,
		excludePostCoordinated: FHIRPrimitive<FHIRBool>? = nil,
		excludedSystem: ExpansionProfileExcludedSystem? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fixedVersion: [ExpansionProfileFixedVersion]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		includeDefinition: FHIRPrimitive<FHIRBool>? = nil,
		includeDesignations: FHIRPrimitive<FHIRBool>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		limitedExpansion: FHIRPrimitive<FHIRBool>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.activeOnly = activeOnly
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.designation = designation
		self.displayLanguage = displayLanguage
		self.excludeNested = excludeNested
		self.excludeNotForUI = excludeNotForUI
		self.excludePostCoordinated = excludePostCoordinated
		self.excludedSystem = excludedSystem
		self.experimental = experimental
		self.`extension` = `extension`
		self.fixedVersion = fixedVersion
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.includeDefinition = includeDefinition
		self.includeDesignations = includeDesignations
		self.jurisdiction = jurisdiction
		self.language = language
		self.limitedExpansion = limitedExpansion
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
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
		case activeOnly; case _activeOnly
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case designation
		case displayLanguage; case _displayLanguage
		case excludeNested; case _excludeNested
		case excludeNotForUI; case _excludeNotForUI
		case excludePostCoordinated; case _excludePostCoordinated
		case excludedSystem
		case experimental; case _experimental
		case `extension` = "extension"
		case fixedVersion
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case includeDefinition; case _includeDefinition
		case includeDesignations; case _includeDesignations
		case jurisdiction
		case language; case _language
		case limitedExpansion; case _limitedExpansion
		case meta
		case modifierExtension
		case name; case _name
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
		self.activeOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .activeOnly, auxiliaryKey: ._activeOnly)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.designation = try ExpansionProfileDesignation(from: _container, forKeyIfPresent: .designation)
		self.displayLanguage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .displayLanguage, auxiliaryKey: ._displayLanguage)
		self.excludeNested = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excludeNested, auxiliaryKey: ._excludeNested)
		self.excludeNotForUI = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excludeNotForUI, auxiliaryKey: ._excludeNotForUI)
		self.excludePostCoordinated = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excludePostCoordinated, auxiliaryKey: ._excludePostCoordinated)
		self.excludedSystem = try ExpansionProfileExcludedSystem(from: _container, forKeyIfPresent: .excludedSystem)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fixedVersion = try [ExpansionProfileFixedVersion](from: _container, forKeyIfPresent: .fixedVersion)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.includeDefinition = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .includeDefinition, auxiliaryKey: ._includeDefinition)
		self.includeDesignations = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .includeDesignations, auxiliaryKey: ._includeDesignations)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.limitedExpansion = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .limitedExpansion, auxiliaryKey: ._limitedExpansion)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
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
		try activeOnly?.encode(on: &_container, forKey: .activeOnly, auxiliaryKey: ._activeOnly)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try designation?.encode(on: &_container, forKey: .designation)
		try displayLanguage?.encode(on: &_container, forKey: .displayLanguage, auxiliaryKey: ._displayLanguage)
		try excludeNested?.encode(on: &_container, forKey: .excludeNested, auxiliaryKey: ._excludeNested)
		try excludeNotForUI?.encode(on: &_container, forKey: .excludeNotForUI, auxiliaryKey: ._excludeNotForUI)
		try excludePostCoordinated?.encode(on: &_container, forKey: .excludePostCoordinated, auxiliaryKey: ._excludePostCoordinated)
		try excludedSystem?.encode(on: &_container, forKey: .excludedSystem)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fixedVersion?.encode(on: &_container, forKey: .fixedVersion)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try includeDefinition?.encode(on: &_container, forKey: .includeDefinition, auxiliaryKey: ._includeDefinition)
		try includeDesignations?.encode(on: &_container, forKey: .includeDesignations, auxiliaryKey: ._includeDesignations)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try limitedExpansion?.encode(on: &_container, forKey: .limitedExpansion, auxiliaryKey: ._limitedExpansion)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 When the expansion profile imposes designation contraints.
 
 A set of criteria that provide the constraints imposed on the value set expansion by including or excluding
 designations.
 */
public struct ExpansionProfileDesignation: BackboneElement {
	
	/// Designations to be excluded
	public var exclude: ExpansionProfileDesignationExclude?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Designations to be included
	public var include: ExpansionProfileDesignationInclude?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		exclude: ExpansionProfileDesignationExclude? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		include: ExpansionProfileDesignationInclude? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.include = include
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclude
		case `extension` = "extension"
		case id; case _id
		case include
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.exclude = try ExpansionProfileDesignationExclude(from: _container, forKeyIfPresent: .exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.include = try ExpansionProfileDesignationInclude(from: _container, forKeyIfPresent: .include)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try exclude?.encode(on: &_container, forKey: .exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try include?.encode(on: &_container, forKey: .include)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Designations to be excluded.
 */
public struct ExpansionProfileDesignationExclude: BackboneElement {
	
	/// The designation to be excluded
	public var designation: [ExpansionProfileDesignationExcludeDesignation]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		designation: [ExpansionProfileDesignationExcludeDesignation]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.designation = designation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case designation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.designation = try [ExpansionProfileDesignationExcludeDesignation](from: _container, forKeyIfPresent: .designation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try designation?.encode(on: &_container, forKey: .designation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 The designation to be excluded.
 
 A data group for each designation to be excluded.
 */
public struct ExpansionProfileDesignationExcludeDesignation: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Human language of the designation to be excluded
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What kind of Designation to exclude
	public var use: Coding?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: Coding? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case language; case _language
		case modifierExtension
		case use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try use?.encode(on: &_container, forKey: .use)
	}
}

/**
 Designations to be included.
 */
public struct ExpansionProfileDesignationInclude: BackboneElement {
	
	/// The designation to be included
	public var designation: [ExpansionProfileDesignationIncludeDesignation]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		designation: [ExpansionProfileDesignationIncludeDesignation]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.designation = designation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case designation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.designation = try [ExpansionProfileDesignationIncludeDesignation](from: _container, forKeyIfPresent: .designation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try designation?.encode(on: &_container, forKey: .designation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 The designation to be included.
 
 A data group for each designation to be included.
 */
public struct ExpansionProfileDesignationIncludeDesignation: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Human language of the designation to be included
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What kind of Designation to include
	public var use: Coding?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: Coding? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case language; case _language
		case modifierExtension
		case use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try use?.encode(on: &_container, forKey: .use)
	}
}

/**
 Systems/Versions to be exclude.
 
 Code system, or a particular version of a code system to be excluded from value set expansions.
 */
public struct ExpansionProfileExcludedSystem: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The specific code system to be excluded
	public var system: FHIRPrimitive<FHIRURI>
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		system: FHIRPrimitive<FHIRURI>,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.system = system
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case system; case _system
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
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Fix use of a code system to a particular version.
 
 Fix use of a particular code system to a particular version.
 */
public struct ExpansionProfileFixedVersion: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How to manage the intersection between a fixed version in a value set, and this fixed version of the system in
	/// the expansion profile.
	public var mode: FHIRPrimitive<SystemVersionProcessingMode>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// System to have its version fixed
	public var system: FHIRPrimitive<FHIRURI>
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<SystemVersionProcessingMode>,
		modifierExtension: [Extension]? = nil,
		system: FHIRPrimitive<FHIRURI>,
		version: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.system = system
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case system; case _system
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<SystemVersionProcessingMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKey: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}
