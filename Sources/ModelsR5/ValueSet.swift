//
//  ValueSet.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ValueSet)
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
 A set of codes drawn from one or more code systems.
 
 A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a
 particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded
 elements](terminologies.html).
 */
public struct ValueSet: DomainResource {
	
	public static let resourceType: ResourceType = .valueSet
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When the ValueSet was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the ValueSet
	public var author: [ContactDetail]?
	
	/// Content logical definition of the value set (CLD)
	public var compose: ValueSetCompose?
	
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
	
	/// Natural language description of the value set
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the ValueSet
	public var editor: [ContactDetail]?
	
	/// When the ValueSet is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the ValueSet
	public var endorser: [ContactDetail]?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the value set (business identifier)
	public var identifier: [Identifier]?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: FHIRPrimitive<FHIRBool>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for value set (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the ValueSet was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this value set (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this value set is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the ValueSet
	public var reviewer: [ContactDetail]?
	
	/// Description of the semantic space the Value Set Expansion is intended to cover and should further clarify the
	/// text in ValueSet.description
	public var scope: ValueSetScope?
	
	/// The status of this value set. Enables tracking the life-cycle of the content. The status of the value set
	/// applies to the value set definition (ValueSet.compose) and the associated ValueSet metadata. Expansions do not
	/// have a state.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this value set (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Canonical identifier for this value set, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the value set
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		compose: ValueSetCompose? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		expansion: ValueSetExpansion? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		immutable: FHIRPrimitive<FHIRBool>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		scope: ValueSetScope? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.author = author
		self.compose = compose
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.expansion = expansion
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.immutable = immutable
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.scope = scope
		self.status = status
		self.text = text
		self.title = title
		self.topic = topic
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case author
		case compose
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case expansion
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case immutable; case _immutable
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case scope
		case status; case _status
		case text
		case title; case _title
		case topic
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
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.compose = try ValueSetCompose(from: _container, forKeyIfPresent: .compose)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.expansion = try ValueSetExpansion(from: _container, forKeyIfPresent: .expansion)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.immutable = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .immutable, auxiliaryKey: ._immutable)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.scope = try ValueSetScope(from: _container, forKeyIfPresent: .scope)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try compose?.encode(on: &_container, forKey: .compose)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try expansion?.encode(on: &_container, forKey: .expansion)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try immutable?.encode(on: &_container, forKey: .immutable, auxiliaryKey: ._immutable)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try scope?.encode(on: &_container, forKey: .scope)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
 Content logical definition of the value set (CLD).
 
 A set of criteria that define the contents of the value set by including or excluding codes selected from the specified
 code system(s) that the value set draws from. This is also known as the Content Logical Definition (CLD).
 */
public struct ValueSetCompose: BackboneElement {
	
	/// Explicitly exclude codes from a code system or other value sets
	public var exclude: [ValueSetComposeInclude]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Whether inactive codes are in the value set
	public var inactive: FHIRPrimitive<FHIRBool>?
	
	/// Include one or more codes from a code system or other value set(s)
	public var include: [ValueSetComposeInclude]
	
	/// Fixed date for references with no specified version (transitive)
	public var lockedDate: FHIRPrimitive<FHIRDate>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Property to return if client doesn't override
	public var property: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		exclude: [ValueSetComposeInclude]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inactive: FHIRPrimitive<FHIRBool>? = nil,
		include: [ValueSetComposeInclude],
		lockedDate: FHIRPrimitive<FHIRDate>? = nil,
		modifierExtension: [Extension]? = nil,
		property: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.inactive = inactive
		self.include = include
		self.lockedDate = lockedDate
		self.modifierExtension = modifierExtension
		self.property = property
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclude
		case `extension` = "extension"
		case id; case _id
		case inactive; case _inactive
		case include
		case lockedDate; case _lockedDate
		case modifierExtension
		case property; case _property
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.exclude = try [ValueSetComposeInclude](from: _container, forKeyIfPresent: .exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.include = try [ValueSetComposeInclude](from: _container, forKey: .include)
		self.lockedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lockedDate, auxiliaryKey: ._lockedDate)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.property = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .property, auxiliaryKey: ._property)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try exclude?.encode(on: &_container, forKey: .exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try include.encode(on: &_container, forKey: .include)
		try lockedDate?.encode(on: &_container, forKey: .lockedDate, auxiliaryKey: ._lockedDate)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try property?.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
	}
}

/**
 Include one or more codes from a code system or other value set(s).
 */
public struct ValueSetComposeInclude: BackboneElement {
	
	/// A concept defined in the system
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// A copyright statement for the specific code system included in the value set
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Select codes/concepts by their properties (including relationships)
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The system the codes come from
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// Select the contents included in this value set
	public var valueSet: [FHIRPrimitive<Canonical>]?
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		concept: [ValueSetComposeIncludeConcept]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		filter: [ValueSetComposeIncludeFilter]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		system: FHIRPrimitive<FHIRURI>? = nil,
		valueSet: [FHIRPrimitive<Canonical>]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.concept = concept
		self.copyright = copyright
		self.`extension` = `extension`
		self.filter = filter
		self.id = id
		self.modifierExtension = modifierExtension
		self.system = system
		self.valueSet = valueSet
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concept
		case copyright; case _copyright
		case `extension` = "extension"
		case filter
		case id; case _id
		case modifierExtension
		case system; case _system
		case valueSet; case _valueSet
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.concept = try [ValueSetComposeIncludeConcept](from: _container, forKeyIfPresent: .concept)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.filter = try [ValueSetComposeIncludeFilter](from: _container, forKeyIfPresent: .filter)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.valueSet = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try concept?.encode(on: &_container, forKey: .concept)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try filter?.encode(on: &_container, forKey: .filter)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 A concept defined in the system.
 
 Specifies a concept to be included or excluded.
 */
public struct ValueSetComposeIncludeConcept: BackboneElement {
	
	/// Code or expression from system
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional representations for this concept
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// Text to display for this code for this value set in this valueset
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		designation: [ValueSetComposeIncludeConceptDesignation]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.designation = designation
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case designation
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.designation = try [ValueSetComposeIncludeConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Additional representations for this concept.
 
 Additional representations for this concept when used in this value set - other languages, aliases, specialized
 purposes, used for particular purposes, etc.
 */
public struct ValueSetComposeIncludeConceptDesignation: BackboneElement {
	
	/// Additional ways how this designation would be used
	public var additionalUse: [Coding]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Human language of the designation
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Types of uses of designations
	public var use: Coding?
	
	/// The text value for this designation
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		additionalUse: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: Coding? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.additionalUse = additionalUse
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalUse
		case `extension` = "extension"
		case id; case _id
		case language; case _language
		case modifierExtension
		case use
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalUse = try [Coding](from: _container, forKeyIfPresent: .additionalUse)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additionalUse?.encode(on: &_container, forKey: .additionalUse)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try use?.encode(on: &_container, forKey: .use)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Select codes/concepts by their properties (including relationships).
 
 Select concepts by specifying a matching criterion based on the properties (including relationships) defined by the
 system, or on filters defined by the system. If multiple filters are specified within the include, they SHALL all be
 true.
 */
public struct ValueSetComposeIncludeFilter: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The kind of operation to perform as a part of the filter criteria.
	public var op: FHIRPrimitive<FilterOperator>
	
	/// A property/filter defined by the code system
	public var property: FHIRPrimitive<FHIRString>
	
	/// Code from the system, or regex criteria, or boolean value for exists
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		op: FHIRPrimitive<FilterOperator>,
		property: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.op = op
		self.property = property
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case op; case _op
		case property; case _property
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.op = try FHIRPrimitive<FilterOperator>(from: _container, forKey: .op, auxiliaryKey: ._op)
		self.property = try FHIRPrimitive<FHIRString>(from: _container, forKey: .property, auxiliaryKey: ._property)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try op.encode(on: &_container, forKey: .op, auxiliaryKey: ._op)
		try property.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Used when the value set is "expanded".
 
 A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 element holds the expansion, if it has been performed.
 */
public struct ValueSetExpansion: BackboneElement {
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifies the value set expansion (business identifier)
	public var identifier: FHIRPrimitive<FHIRURI>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Opaque urls for paging through expansion results
	public var next: FHIRPrimitive<FHIRURI>?
	
	/// Offset at which this resource starts
	public var offset: FHIRPrimitive<FHIRInteger>?
	
	/// Parameter that controlled the expansion process
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Additional information supplied about each concept
	public var property: [ValueSetExpansionProperty]?
	
	/// Time ValueSet expansion happened
	public var timestamp: FHIRPrimitive<DateTime>
	
	/// Total number of codes in the expansion
	public var total: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer
	public init(
		contains: [ValueSetExpansionContains]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: FHIRPrimitive<FHIRURI>? = nil,
		modifierExtension: [Extension]? = nil,
		next: FHIRPrimitive<FHIRURI>? = nil,
		offset: FHIRPrimitive<FHIRInteger>? = nil,
		parameter: [ValueSetExpansionParameter]? = nil,
		property: [ValueSetExpansionProperty]? = nil,
		timestamp: FHIRPrimitive<DateTime>,
		total: FHIRPrimitive<FHIRInteger>? = nil
	) {
		self.contains = contains
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.next = next
		self.offset = offset
		self.parameter = parameter
		self.property = property
		self.timestamp = timestamp
		self.total = total
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contains
		case `extension` = "extension"
		case id; case _id
		case identifier; case _identifier
		case modifierExtension
		case next; case _next
		case offset; case _offset
		case parameter
		case property
		case timestamp; case _timestamp
		case total; case _total
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contains = try [ValueSetExpansionContains](from: _container, forKeyIfPresent: .contains)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .identifier, auxiliaryKey: ._identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.next = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .next, auxiliaryKey: ._next)
		self.offset = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .offset, auxiliaryKey: ._offset)
		self.parameter = try [ValueSetExpansionParameter](from: _container, forKeyIfPresent: .parameter)
		self.property = try [ValueSetExpansionProperty](from: _container, forKeyIfPresent: .property)
		self.timestamp = try FHIRPrimitive<DateTime>(from: _container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		self.total = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .total, auxiliaryKey: ._total)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contains?.encode(on: &_container, forKey: .contains)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier, auxiliaryKey: ._identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try next?.encode(on: &_container, forKey: .next, auxiliaryKey: ._next)
		try offset?.encode(on: &_container, forKey: .offset, auxiliaryKey: ._offset)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try property?.encode(on: &_container, forKey: .property)
		try timestamp.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try total?.encode(on: &_container, forKey: .total, auxiliaryKey: ._total)
	}
}

/**
 Codes in the value set.
 
 The codes that are contained in the value set expansion.
 */
public struct ValueSetExpansionContains: BackboneElement {
	
	/// If user cannot select this entry
	public var abstract: FHIRPrimitive<FHIRBool>?
	
	/// Code - if blank, this is not a selectable code
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Codes contained under this entry
	public var contains: [ValueSetExpansionContains]?
	
	/// Additional representations for this item
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// User display for the concept
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If concept is inactive in the code system
	public var inactive: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Property value for the concept
	public var property: [ValueSetExpansionContainsProperty]?
	
	/// System value for the code
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// Version in which this code/display is defined
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		abstract: FHIRPrimitive<FHIRBool>? = nil,
		code: FHIRPrimitive<FHIRString>? = nil,
		contains: [ValueSetExpansionContains]? = nil,
		designation: [ValueSetComposeIncludeConceptDesignation]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inactive: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		property: [ValueSetExpansionContainsProperty]? = nil,
		system: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.abstract = abstract
		self.code = code
		self.contains = contains
		self.designation = designation
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.inactive = inactive
		self.modifierExtension = modifierExtension
		self.property = property
		self.system = system
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abstract; case _abstract
		case code; case _code
		case contains
		case designation
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case inactive; case _inactive
		case modifierExtension
		case property
		case system; case _system
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .abstract, auxiliaryKey: ._abstract)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.contains = try [ValueSetExpansionContains](from: _container, forKeyIfPresent: .contains)
		self.designation = try [ValueSetComposeIncludeConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.property = try [ValueSetExpansionContainsProperty](from: _container, forKeyIfPresent: .property)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try abstract?.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contains?.encode(on: &_container, forKey: .contains)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try property?.encode(on: &_container, forKey: .property)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Property value for the concept.
 
 A property value for this concept.
 */
public struct ValueSetExpansionContainsProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case coding(Coding)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Reference to ValueSet.expansion.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// SubProperty value for the concept
	public var subProperty: [ValueSetExpansionContainsPropertySubProperty]?
	
	/// Value of the property for this concept
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subProperty: [ValueSetExpansionContainsPropertySubProperty]? = nil,
		value: ValueX
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subProperty = subProperty
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case subProperty
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueString; case _valueString
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
		self.subProperty = try [ValueSetExpansionContainsPropertySubProperty](from: _container, forKeyIfPresent: .subProperty)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subProperty?.encode(on: &_container, forKey: .subProperty)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 SubProperty value for the concept.
 
 A subproperty value for this concept.
 */
public struct ValueSetExpansionContainsPropertySubProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case coding(Coding)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Reference to ValueSet.expansion.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value of the subproperty for this concept
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueString; case _valueString
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
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueString)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Parameter that controlled the expansion process.
 
 A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to
 check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
public struct ValueSetExpansionParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name as assigned by the client or server
	public var name: FHIRPrimitive<FHIRString>
	
	/// Value of the named parameter
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueString; case _valueString
		case valueUri; case _valueUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = value {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		return _t_value
	}
}

/**
 Additional information supplied about each concept.
 
 A property defines an additional slot through which additional information can be provided about a concept.
 */
public struct ValueSetExpansionProperty: BackboneElement {
	
	/// Identifies the property on the concepts, and when referred to in operations
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Formal identifier for the property
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case uri; case _uri
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
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}

/**
 Description of the semantic space the Value Set Expansion is intended to cover and should further clarify the text in
 ValueSet.description.
 */
public struct ValueSetScope: BackboneElement {
	
	/// Criteria describing which concepts or codes should be excluded and why
	public var exclusionCriteria: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Criteria describing which concepts or codes should be included and why
	public var inclusionCriteria: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		exclusionCriteria: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inclusionCriteria: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.exclusionCriteria = exclusionCriteria
		self.`extension` = `extension`
		self.id = id
		self.inclusionCriteria = inclusionCriteria
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclusionCriteria; case _exclusionCriteria
		case `extension` = "extension"
		case id; case _id
		case inclusionCriteria; case _inclusionCriteria
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.exclusionCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exclusionCriteria, auxiliaryKey: ._exclusionCriteria)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.inclusionCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .inclusionCriteria, auxiliaryKey: ._inclusionCriteria)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try exclusionCriteria?.encode(on: &_container, forKey: .exclusionCriteria, auxiliaryKey: ._exclusionCriteria)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try inclusionCriteria?.encode(on: &_container, forKey: .inclusionCriteria, auxiliaryKey: ._inclusionCriteria)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
