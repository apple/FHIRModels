//
//  Requirements.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Requirements)
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
 A set of requirements - features of systems that are necessary.
 
 A set of requirements - a list of features or behaviors of designed systems that are necessary to achieve
 organizational or regulatory goals.
 */
public struct Requirements: DomainResource {
	
	public static let resourceType: ResourceType = .requirements
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Actor for these requirements
	public var actor: [FHIRPrimitive<Canonical>]?
	
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
	
	/// Other set of Requirements this builds on
	public var derivedFrom: [FHIRPrimitive<Canonical>]?
	
	/// Natural language description of the requirements
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the Requirements (business identifier)
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for Requirements (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this Requirements (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this Requirements is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// External artifact (rule/document etc. that) created this set of requirements
	public var reference: [FHIRPrimitive<FHIRURI>]?
	
	/// Actual statement as markdown
	public var statement: [RequirementsStatement]?
	
	/// The status of this Requirements. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this Requirements (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this Requirements, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the Requirements
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		actor: [FHIRPrimitive<Canonical>]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFrom: [FHIRPrimitive<Canonical>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		reference: [FHIRPrimitive<FHIRURI>]? = nil,
		statement: [RequirementsStatement]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.actor = actor
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFrom = derivedFrom
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.reference = reference
		self.statement = statement
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
		case actor; case _actor
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case reference; case _reference
		case statement
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
		self.actor = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .actor, auxiliaryKey: ._actor)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.reference = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.statement = try [RequirementsStatement](from: _container, forKeyIfPresent: .statement)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
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
		try actor?.encode(on: &_container, forKey: .actor, auxiliaryKey: ._actor)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try statement?.encode(on: &_container, forKey: .statement)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
 Actual statement as markdown.
 
 The actual statement of requirement, in markdown format.
 */
public struct RequirementsStatement: BackboneElement {
	
	/// Set to true if requirements statement is conditional
	public var conditionality: FHIRPrimitive<FHIRBool>?
	
	/// SHALL | SHOULD | MAY | SHOULD-NOT
	public var conformance: [FHIRPrimitive<FHIRString>]?
	
	/// Another statement this clarifies/restricts ([url#]key)
	public var derivedFrom: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Key that identifies this statement
	public var key: FHIRPrimitive<FHIRString>
	
	/// Short Human label for this statement
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A larger requirement that this requirement helps to refine and enable
	public var parent: FHIRPrimitive<FHIRString>?
	
	/// External artifact (rule/document etc. that) created this requirement
	public var reference: [FHIRPrimitive<FHIRURI>]?
	
	/// The actual requirement
	public var requirement: FHIRPrimitive<FHIRString>
	
	/// Design artifact that satisfies this requirement
	public var satisfiedBy: [FHIRPrimitive<FHIRURI>]?
	
	/// Who asked for this statement
	public var source: [Reference]?
	
	/// Designated initializer
	public init(
		conditionality: FHIRPrimitive<FHIRBool>? = nil,
		conformance: [FHIRPrimitive<FHIRString>]? = nil,
		derivedFrom: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		label: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		parent: FHIRPrimitive<FHIRString>? = nil,
		reference: [FHIRPrimitive<FHIRURI>]? = nil,
		requirement: FHIRPrimitive<FHIRString>,
		satisfiedBy: [FHIRPrimitive<FHIRURI>]? = nil,
		source: [Reference]? = nil
	) {
		self.conditionality = conditionality
		self.conformance = conformance
		self.derivedFrom = derivedFrom
		self.`extension` = `extension`
		self.id = id
		self.key = key
		self.label = label
		self.modifierExtension = modifierExtension
		self.parent = parent
		self.reference = reference
		self.requirement = requirement
		self.satisfiedBy = satisfiedBy
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conditionality; case _conditionality
		case conformance; case _conformance
		case derivedFrom; case _derivedFrom
		case `extension` = "extension"
		case id; case _id
		case key; case _key
		case label; case _label
		case modifierExtension
		case parent; case _parent
		case reference; case _reference
		case requirement; case _requirement
		case satisfiedBy; case _satisfiedBy
		case source
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.conditionality = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionality, auxiliaryKey: ._conditionality)
		self.conformance = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .conformance, auxiliaryKey: ._conformance)
		self.derivedFrom = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.parent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .parent, auxiliaryKey: ._parent)
		self.reference = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKey: .requirement, auxiliaryKey: ._requirement)
		self.satisfiedBy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .satisfiedBy, auxiliaryKey: ._satisfiedBy)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try conditionality?.encode(on: &_container, forKey: .conditionality, auxiliaryKey: ._conditionality)
		try conformance?.encode(on: &_container, forKey: .conformance, auxiliaryKey: ._conformance)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try parent?.encode(on: &_container, forKey: .parent, auxiliaryKey: ._parent)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try requirement.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try satisfiedBy?.encode(on: &_container, forKey: .satisfiedBy, auxiliaryKey: ._satisfiedBy)
		try source?.encode(on: &_container, forKey: .source)
	}
}
