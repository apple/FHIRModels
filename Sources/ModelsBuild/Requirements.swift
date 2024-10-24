//
//  Requirements.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Requirements)
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
 A set of requirements - features of systems that are necessary.
 
 A set of requirements - a list of features or behaviors of designed systems that are necessary to achieve
 organizational or regulatory goals.
 */
open class Requirements: DomainResource {
	
	override open class var resourceType: ResourceType { return .requirements }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this Requirements, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the Requirements (business identifier)
	public var identifier: [Identifier]?
	
	/// Business version of the Requirements
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this Requirements (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this Requirements (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this Requirements. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the requirements
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for Requirements (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this Requirements is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Other set of Requirements this builds on
	public var derivedFrom: [FHIRPrimitive<Canonical>]?
	
	/// External artifact (rule/document etc. that) created this set of requirements
	public var reference: [FHIRPrimitive<FHIRURI>]?
	
	/// Actor for these requirements
	public var actor: [FHIRPrimitive<Canonical>]?
	
	/// Actual statement as markdown
	public var statement: [RequirementsStatement]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor; case _actor
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case reference; case _reference
		case statement
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
		self.actor = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .actor, auxiliaryKey: ._actor)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.reference = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.statement = try [RequirementsStatement](from: _container, forKeyIfPresent: .statement)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try actor?.encode(on: &_container, forKey: .actor, auxiliaryKey: ._actor)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try statement?.encode(on: &_container, forKey: .statement)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
		guard let _other = _other as? Requirements else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && derivedFrom == _other.derivedFrom
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && reference == _other.reference
		    && statement == _other.statement
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(derivedFrom)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(reference)
		hasher.combine(statement)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Actual statement as markdown.
 
 The actual statement of requirement, in markdown format.
 */
open class RequirementsStatement: BackboneElement {
	
	/// Key that identifies this statement
	public var key: FHIRPrimitive<FHIRString>
	
	/// Short Human label for this statement
	public var label: FHIRPrimitive<FHIRString>?
	
	/// SHALL | SHOULD | MAY | SHOULD-NOT
	public var conformance: [FHIRPrimitive<FHIRString>]?
	
	/// Set to true if requirements statement is conditional
	public var conditionality: FHIRPrimitive<FHIRBool>?
	
	/// The actual requirement
	public var requirement: FHIRPrimitive<FHIRString>
	
	/// Another statement this clarifies/restricts ([url#]key)
	public var derivedFrom: FHIRPrimitive<FHIRString>?
	
	/// A larger requirement that this requirement helps to refine and enable
	public var parent: FHIRPrimitive<FHIRString>?
	
	/// Design artifact that satisfies this requirement
	public var satisfiedBy: [FHIRPrimitive<FHIRURI>]?
	
	/// External artifact (rule/document etc. that) created this requirement
	public var reference: [FHIRPrimitive<FHIRURI>]?
	
	/// Who asked for this statement
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(key: FHIRPrimitive<FHIRString>, requirement: FHIRPrimitive<FHIRString>) {
		self.key = key
		self.requirement = requirement
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(key: key, requirement: requirement)
		self.conditionality = conditionality
		self.conformance = conformance
		self.derivedFrom = derivedFrom
		self.`extension` = `extension`
		self.id = id
		self.label = label
		self.modifierExtension = modifierExtension
		self.parent = parent
		self.reference = reference
		self.satisfiedBy = satisfiedBy
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conditionality; case _conditionality
		case conformance; case _conformance
		case derivedFrom; case _derivedFrom
		case key; case _key
		case label; case _label
		case parent; case _parent
		case reference; case _reference
		case requirement; case _requirement
		case satisfiedBy; case _satisfiedBy
		case source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.conditionality = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .conditionality, auxiliaryKey: ._conditionality)
		self.conformance = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .conformance, auxiliaryKey: ._conformance)
		self.derivedFrom = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.parent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .parent, auxiliaryKey: ._parent)
		self.reference = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKey: .requirement, auxiliaryKey: ._requirement)
		self.satisfiedBy = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .satisfiedBy, auxiliaryKey: ._satisfiedBy)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try conditionality?.encode(on: &_container, forKey: .conditionality, auxiliaryKey: ._conditionality)
		try conformance?.encode(on: &_container, forKey: .conformance, auxiliaryKey: ._conformance)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try parent?.encode(on: &_container, forKey: .parent, auxiliaryKey: ._parent)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try requirement.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try satisfiedBy?.encode(on: &_container, forKey: .satisfiedBy, auxiliaryKey: ._satisfiedBy)
		try source?.encode(on: &_container, forKey: .source)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequirementsStatement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return conditionality == _other.conditionality
		    && conformance == _other.conformance
		    && derivedFrom == _other.derivedFrom
		    && key == _other.key
		    && label == _other.label
		    && parent == _other.parent
		    && reference == _other.reference
		    && requirement == _other.requirement
		    && satisfiedBy == _other.satisfiedBy
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(conditionality)
		hasher.combine(conformance)
		hasher.combine(derivedFrom)
		hasher.combine(key)
		hasher.combine(label)
		hasher.combine(parent)
		hasher.combine(reference)
		hasher.combine(requirement)
		hasher.combine(satisfiedBy)
		hasher.combine(source)
	}
}
