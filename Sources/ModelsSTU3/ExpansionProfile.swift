//
//  ExpansionProfile.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ExpansionProfile)
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
 Defines behaviour and contraints on the ValueSet Expansion operation.
 
 Resource to define constraints on the Expansion of a FHIR ValueSet.
 */
open class ExpansionProfile: DomainResource {
	
	override open class var resourceType: ResourceType { return .expansionProfile }
	
	/// Logical URI to reference this expansion profile (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the expansion profile
	public var identifier: Identifier?
	
	/// Business version of the expansion profile
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this expansion profile (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of this expansion profile. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the expansion profile
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for expansion profile (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Fix use of a code system to a particular version
	public var fixedVersion: [ExpansionProfileFixedVersion]?
	
	/// Systems/Versions to be exclude
	public var excludedSystem: ExpansionProfileExcludedSystem?
	
	/// Whether the expansion should include concept designations
	public var includeDesignations: FHIRPrimitive<FHIRBool>?
	
	/// When the expansion profile imposes designation contraints
	public var designation: ExpansionProfileDesignation?
	
	/// Include or exclude the value set definition in the expansion
	public var includeDefinition: FHIRPrimitive<FHIRBool>?
	
	/// Include or exclude inactive concepts in the expansion
	public var activeOnly: FHIRPrimitive<FHIRBool>?
	
	/// Nested codes in the expansion or not
	public var excludeNested: FHIRPrimitive<FHIRBool>?
	
	/// Include or exclude codes which cannot be rendered in user interfaces in the value set expansion
	public var excludeNotForUI: FHIRPrimitive<FHIRBool>?
	
	/// Include or exclude codes which are post coordinated expressions in the value set expansion
	public var excludePostCoordinated: FHIRPrimitive<FHIRBool>?
	
	/// Specify the language for the display element of codes in the value set expansion
	public var displayLanguage: FHIRPrimitive<FHIRString>?
	
	/// Controls behaviour of the value set expand operation when value sets are too large to be completely expanded
	public var limitedExpansion: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
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
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activeOnly; case _activeOnly
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case designation
		case displayLanguage; case _displayLanguage
		case excludeNested; case _excludeNested
		case excludeNotForUI; case _excludeNotForUI
		case excludePostCoordinated; case _excludePostCoordinated
		case excludedSystem
		case experimental; case _experimental
		case fixedVersion
		case identifier
		case includeDefinition; case _includeDefinition
		case includeDesignations; case _includeDesignations
		case jurisdiction
		case limitedExpansion; case _limitedExpansion
		case name; case _name
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
		self.activeOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .activeOnly, auxiliaryKey: ._activeOnly)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.designation = try ExpansionProfileDesignation(from: _container, forKeyIfPresent: .designation)
		self.displayLanguage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .displayLanguage, auxiliaryKey: ._displayLanguage)
		self.excludeNested = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excludeNested, auxiliaryKey: ._excludeNested)
		self.excludeNotForUI = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excludeNotForUI, auxiliaryKey: ._excludeNotForUI)
		self.excludePostCoordinated = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .excludePostCoordinated, auxiliaryKey: ._excludePostCoordinated)
		self.excludedSystem = try ExpansionProfileExcludedSystem(from: _container, forKeyIfPresent: .excludedSystem)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fixedVersion = try [ExpansionProfileFixedVersion](from: _container, forKeyIfPresent: .fixedVersion)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.includeDefinition = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .includeDefinition, auxiliaryKey: ._includeDefinition)
		self.includeDesignations = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .includeDesignations, auxiliaryKey: ._includeDesignations)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.limitedExpansion = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .limitedExpansion, auxiliaryKey: ._limitedExpansion)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
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
		try activeOnly?.encode(on: &_container, forKey: .activeOnly, auxiliaryKey: ._activeOnly)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try designation?.encode(on: &_container, forKey: .designation)
		try displayLanguage?.encode(on: &_container, forKey: .displayLanguage, auxiliaryKey: ._displayLanguage)
		try excludeNested?.encode(on: &_container, forKey: .excludeNested, auxiliaryKey: ._excludeNested)
		try excludeNotForUI?.encode(on: &_container, forKey: .excludeNotForUI, auxiliaryKey: ._excludeNotForUI)
		try excludePostCoordinated?.encode(on: &_container, forKey: .excludePostCoordinated, auxiliaryKey: ._excludePostCoordinated)
		try excludedSystem?.encode(on: &_container, forKey: .excludedSystem)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fixedVersion?.encode(on: &_container, forKey: .fixedVersion)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try includeDefinition?.encode(on: &_container, forKey: .includeDefinition, auxiliaryKey: ._includeDefinition)
		try includeDesignations?.encode(on: &_container, forKey: .includeDesignations, auxiliaryKey: ._includeDesignations)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try limitedExpansion?.encode(on: &_container, forKey: .limitedExpansion, auxiliaryKey: ._limitedExpansion)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfile else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activeOnly == _other.activeOnly
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && designation == _other.designation
		    && displayLanguage == _other.displayLanguage
		    && excludeNested == _other.excludeNested
		    && excludeNotForUI == _other.excludeNotForUI
		    && excludePostCoordinated == _other.excludePostCoordinated
		    && excludedSystem == _other.excludedSystem
		    && experimental == _other.experimental
		    && fixedVersion == _other.fixedVersion
		    && identifier == _other.identifier
		    && includeDefinition == _other.includeDefinition
		    && includeDesignations == _other.includeDesignations
		    && jurisdiction == _other.jurisdiction
		    && limitedExpansion == _other.limitedExpansion
		    && name == _other.name
		    && publisher == _other.publisher
		    && status == _other.status
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activeOnly)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(designation)
		hasher.combine(displayLanguage)
		hasher.combine(excludeNested)
		hasher.combine(excludeNotForUI)
		hasher.combine(excludePostCoordinated)
		hasher.combine(excludedSystem)
		hasher.combine(experimental)
		hasher.combine(fixedVersion)
		hasher.combine(identifier)
		hasher.combine(includeDefinition)
		hasher.combine(includeDesignations)
		hasher.combine(jurisdiction)
		hasher.combine(limitedExpansion)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(status)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 When the expansion profile imposes designation contraints.
 
 A set of criteria that provide the constraints imposed on the value set expansion by including or excluding
 designations.
 */
open class ExpansionProfileDesignation: BackboneElement {
	
	/// Designations to be included
	public var include: ExpansionProfileDesignationInclude?
	
	/// Designations to be excluded
	public var exclude: ExpansionProfileDesignationExclude?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							exclude: ExpansionProfileDesignationExclude? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							include: ExpansionProfileDesignationInclude? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.include = include
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclude
		case include
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.exclude = try ExpansionProfileDesignationExclude(from: _container, forKeyIfPresent: .exclude)
		self.include = try ExpansionProfileDesignationInclude(from: _container, forKeyIfPresent: .include)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try exclude?.encode(on: &_container, forKey: .exclude)
		try include?.encode(on: &_container, forKey: .include)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileDesignation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return exclude == _other.exclude
		    && include == _other.include
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(exclude)
		hasher.combine(include)
	}
}

/**
 Designations to be excluded.
 */
open class ExpansionProfileDesignationExclude: BackboneElement {
	
	/// The designation to be excluded
	public var designation: [ExpansionProfileDesignationExcludeDesignation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							designation: [ExpansionProfileDesignationExcludeDesignation]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.designation = designation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case designation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.designation = try [ExpansionProfileDesignationExcludeDesignation](from: _container, forKeyIfPresent: .designation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try designation?.encode(on: &_container, forKey: .designation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileDesignationExclude else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return designation == _other.designation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(designation)
	}
}

/**
 The designation to be excluded.
 
 A data group for each designation to be excluded.
 */
open class ExpansionProfileDesignationExcludeDesignation: BackboneElement {
	
	/// Human language of the designation to be excluded
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What kind of Designation to exclude
	public var use: Coding?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							use: Coding? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language; case _language
		case use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try use?.encode(on: &_container, forKey: .use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileDesignationExcludeDesignation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(use)
	}
}

/**
 Designations to be included.
 */
open class ExpansionProfileDesignationInclude: BackboneElement {
	
	/// The designation to be included
	public var designation: [ExpansionProfileDesignationIncludeDesignation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							designation: [ExpansionProfileDesignationIncludeDesignation]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.designation = designation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case designation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.designation = try [ExpansionProfileDesignationIncludeDesignation](from: _container, forKeyIfPresent: .designation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try designation?.encode(on: &_container, forKey: .designation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileDesignationInclude else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return designation == _other.designation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(designation)
	}
}

/**
 The designation to be included.
 
 A data group for each designation to be included.
 */
open class ExpansionProfileDesignationIncludeDesignation: BackboneElement {
	
	/// Human language of the designation to be included
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What kind of Designation to include
	public var use: Coding?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							use: Coding? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language; case _language
		case use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try use?.encode(on: &_container, forKey: .use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileDesignationIncludeDesignation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(use)
	}
}

/**
 Systems/Versions to be exclude.
 
 Code system, or a particular version of a code system to be excluded from value set expansions.
 */
open class ExpansionProfileExcludedSystem: BackboneElement {
	
	/// The specific code system to be excluded
	public var system: FHIRPrimitive<FHIRURI>
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(system: FHIRPrimitive<FHIRURI>) {
		self.system = system
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							system: FHIRPrimitive<FHIRURI>,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(system: system)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case system; case _system
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileExcludedSystem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return system == _other.system
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(system)
		hasher.combine(version)
	}
}

/**
 Fix use of a code system to a particular version.
 
 Fix use of a particular code system to a particular version.
 */
open class ExpansionProfileFixedVersion: BackboneElement {
	
	/// System to have its version fixed
	public var system: FHIRPrimitive<FHIRURI>
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>
	
	/// How to manage the intersection between a fixed version in a value set, and this fixed version of the system in
	/// the expansion profile.
	public var mode: FHIRPrimitive<SystemVersionProcessingMode>
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<SystemVersionProcessingMode>, system: FHIRPrimitive<FHIRURI>, version: FHIRPrimitive<FHIRString>) {
		self.mode = mode
		self.system = system
		self.version = version
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<SystemVersionProcessingMode>,
							modifierExtension: [Extension]? = nil,
							system: FHIRPrimitive<FHIRURI>,
							version: FHIRPrimitive<FHIRString>)
	{
		self.init(mode: mode, system: system, version: version)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case mode; case _mode
		case system; case _system
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.mode = try FHIRPrimitive<SystemVersionProcessingMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKey: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ExpansionProfileFixedVersion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return mode == _other.mode
		    && system == _other.system
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(mode)
		hasher.combine(system)
		hasher.combine(version)
	}
}
