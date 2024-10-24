//
//  ValueSet.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ValueSet)
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
 A set of codes drawn from one or more code systems.
 
 A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a
 particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded
 elements](terminologies.html).
 */
open class ValueSet: DomainResource {
	
	override open class var resourceType: ResourceType { return .valueSet }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this value set, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the value set (business identifier)
	public var identifier: [Identifier]?
	
	/// Business version of the value set
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this value set (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this value set (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this value set. Enables tracking the life-cycle of the content. The status of the value set
	/// applies to the value set definition (ValueSet.compose) and the associated ValueSet metadata. Expansions do not
	/// have a state.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the value set
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for value set (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: FHIRPrimitive<FHIRBool>?
	
	/// Why this value set is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the ValueSet was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the ValueSet was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the ValueSet is expected to be used
	public var effectivePeriod: Period?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Who authored the ValueSet
	public var author: [ContactDetail]?
	
	/// Who edited the ValueSet
	public var editor: [ContactDetail]?
	
	/// Who reviewed the ValueSet
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the ValueSet
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Content logical definition of the value set (CLD)
	public var compose: ValueSetCompose?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// Description of the semantic space the Value Set Expansion is intended to cover and should further clarify the
	/// text in ValueSet.description
	public var scope: ValueSetScope?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		case approvalDate; case _approvalDate
		case author
		case compose
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case expansion
		case experimental; case _experimental
		case identifier
		case immutable; case _immutable
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case scope
		case status; case _status
		case title; case _title
		case topic
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
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.compose = try ValueSetCompose(from: _container, forKeyIfPresent: .compose)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.expansion = try ValueSetExpansion(from: _container, forKeyIfPresent: .expansion)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.immutable = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .immutable, auxiliaryKey: ._immutable)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.scope = try ValueSetScope(from: _container, forKeyIfPresent: .scope)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
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
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try compose?.encode(on: &_container, forKey: .compose)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try expansion?.encode(on: &_container, forKey: .expansion)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try immutable?.encode(on: &_container, forKey: .immutable, auxiliaryKey: ._immutable)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try scope?.encode(on: &_container, forKey: .scope)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
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
		guard let _other = _other as? ValueSet else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && author == _other.author
		    && compose == _other.compose
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && expansion == _other.expansion
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && immutable == _other.immutable
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && scope == _other.scope
		    && status == _other.status
		    && title == _other.title
		    && topic == _other.topic
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(compose)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(expansion)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(immutable)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(scope)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Content logical definition of the value set (CLD).
 
 A set of criteria that define the contents of the value set by including or excluding codes selected from the specified
 code system(s) that the value set draws from. This is also known as the Content Logical Definition (CLD).
 */
open class ValueSetCompose: BackboneElement {
	
	/// Fixed date for references with no specified version (transitive)
	public var lockedDate: FHIRPrimitive<FHIRDate>?
	
	/// Whether inactive codes are in the value set
	public var inactive: FHIRPrimitive<FHIRBool>?
	
	/// Include one or more codes from a code system or other value set(s)
	public var include: [ValueSetComposeInclude]
	
	/// Explicitly exclude codes from a code system or other value sets
	public var exclude: [ValueSetComposeInclude]?
	
	/// Property to return if client doesn't override
	public var property: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(include: [ValueSetComposeInclude]) {
		self.include = include
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		exclude: [ValueSetComposeInclude]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inactive: FHIRPrimitive<FHIRBool>? = nil,
		include: [ValueSetComposeInclude],
		lockedDate: FHIRPrimitive<FHIRDate>? = nil,
		modifierExtension: [Extension]? = nil,
		property: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.init(include: include)
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.inactive = inactive
		self.lockedDate = lockedDate
		self.modifierExtension = modifierExtension
		self.property = property
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclude
		case inactive; case _inactive
		case include
		case lockedDate; case _lockedDate
		case property; case _property
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.exclude = try [ValueSetComposeInclude](from: _container, forKeyIfPresent: .exclude)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.include = try [ValueSetComposeInclude](from: _container, forKey: .include)
		self.lockedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lockedDate, auxiliaryKey: ._lockedDate)
		self.property = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .property, auxiliaryKey: ._property)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try exclude?.encode(on: &_container, forKey: .exclude)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try include.encode(on: &_container, forKey: .include)
		try lockedDate?.encode(on: &_container, forKey: .lockedDate, auxiliaryKey: ._lockedDate)
		try property?.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetCompose else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return exclude == _other.exclude
		    && inactive == _other.inactive
		    && include == _other.include
		    && lockedDate == _other.lockedDate
		    && property == _other.property
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(exclude)
		hasher.combine(inactive)
		hasher.combine(include)
		hasher.combine(lockedDate)
		hasher.combine(property)
	}
}

/**
 Include one or more codes from a code system or other value set(s).
 */
open class ValueSetComposeInclude: BackboneElement {
	
	/// The system the codes come from
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// Specific version of the code system referred to
	public var version: FHIRPrimitive<FHIRString>?
	
	/// A concept defined in the system
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// Select codes/concepts by their properties (including relationships)
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// Select the contents included in this value set
	public var valueSet: [FHIRPrimitive<Canonical>]?
	
	/// A copyright statement for the specific code system included in the value set
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case filter
		case system; case _system
		case valueSet; case _valueSet
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.concept = try [ValueSetComposeIncludeConcept](from: _container, forKeyIfPresent: .concept)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.filter = try [ValueSetComposeIncludeFilter](from: _container, forKeyIfPresent: .filter)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.valueSet = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try concept?.encode(on: &_container, forKey: .concept)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try filter?.encode(on: &_container, forKey: .filter)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeInclude else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return concept == _other.concept
		    && copyright == _other.copyright
		    && filter == _other.filter
		    && system == _other.system
		    && valueSet == _other.valueSet
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(concept)
		hasher.combine(copyright)
		hasher.combine(filter)
		hasher.combine(system)
		hasher.combine(valueSet)
		hasher.combine(version)
	}
}

/**
 A concept defined in the system.
 
 Specifies a concept to be included or excluded.
 */
open class ValueSetComposeIncludeConcept: BackboneElement {
	
	/// Code or expression from system
	public var code: FHIRPrimitive<FHIRString>
	
	/// Text to display for this code for this value set in this valueset
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional representations for this concept
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>,
		designation: [ValueSetComposeIncludeConceptDesignation]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(code: code)
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.designation = try [ValueSetComposeIncludeConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeIncludeConcept else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && designation == _other.designation
		    && display == _other.display
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(designation)
		hasher.combine(display)
	}
}

/**
 Additional representations for this concept.
 
 Additional representations for this concept when used in this value set - other languages, aliases, specialized
 purposes, used for particular purposes, etc.
 */
open class ValueSetComposeIncludeConceptDesignation: BackboneElement {
	
	/// Human language of the designation
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Types of uses of designations
	public var use: Coding?
	
	/// Additional ways how this designation would be used
	public var additionalUse: [Coding]?
	
	/// The text value for this designation
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(value: FHIRPrimitive<FHIRString>) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additionalUse: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		use: Coding? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(value: value)
		self.additionalUse = additionalUse
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalUse
		case language; case _language
		case use
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalUse = try [Coding](from: _container, forKeyIfPresent: .additionalUse)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.use = try Coding(from: _container, forKeyIfPresent: .use)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalUse?.encode(on: &_container, forKey: .additionalUse)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try use?.encode(on: &_container, forKey: .use)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeIncludeConceptDesignation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalUse == _other.additionalUse
		    && language == _other.language
		    && use == _other.use
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalUse)
		hasher.combine(language)
		hasher.combine(use)
		hasher.combine(value)
	}
}

/**
 Select codes/concepts by their properties (including relationships).
 
 Select concepts by specifying a matching criterion based on the properties (including relationships) defined by the
 system, or on filters defined by the system. If multiple filters are specified within the include, they SHALL all be
 true.
 */
open class ValueSetComposeIncludeFilter: BackboneElement {
	
	/// A property/filter defined by the code system
	public var property: FHIRPrimitive<FHIRString>
	
	/// The kind of operation to perform as a part of the filter criteria.
	public var op: FHIRPrimitive<FilterOperator>
	
	/// Code from the system, or regex criteria, or boolean value for exists
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(op: FHIRPrimitive<FilterOperator>, property: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.op = op
		self.property = property
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		op: FHIRPrimitive<FilterOperator>,
		property: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(op: op, property: property, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case op; case _op
		case property; case _property
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.op = try FHIRPrimitive<FilterOperator>(from: _container, forKey: .op, auxiliaryKey: ._op)
		self.property = try FHIRPrimitive<FHIRString>(from: _container, forKey: .property, auxiliaryKey: ._property)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try op.encode(on: &_container, forKey: .op, auxiliaryKey: ._op)
		try property.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetComposeIncludeFilter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return op == _other.op
		    && property == _other.property
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(op)
		hasher.combine(property)
		hasher.combine(value)
	}
}

/**
 Used when the value set is "expanded".
 
 A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 element holds the expansion, if it has been performed.
 */
open class ValueSetExpansion: BackboneElement {
	
	/// Identifies the value set expansion (business identifier)
	public var identifier: FHIRPrimitive<FHIRURI>?
	
	/// Opaque urls for paging through expansion results
	public var next: FHIRPrimitive<FHIRURI>?
	
	/// Time ValueSet expansion happened
	public var timestamp: FHIRPrimitive<DateTime>
	
	/// Total number of codes in the expansion
	public var total: FHIRPrimitive<FHIRInteger>?
	
	/// Offset at which this resource starts
	public var offset: FHIRPrimitive<FHIRInteger>?
	
	/// Parameter that controlled the expansion process
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Additional information supplied about each concept
	public var property: [ValueSetExpansionProperty]?
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// Designated initializer taking all required properties
	public init(timestamp: FHIRPrimitive<DateTime>) {
		self.timestamp = timestamp
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(timestamp: timestamp)
		self.contains = contains
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.next = next
		self.offset = offset
		self.parameter = parameter
		self.property = property
		self.total = total
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contains
		case identifier; case _identifier
		case next; case _next
		case offset; case _offset
		case parameter
		case property
		case timestamp; case _timestamp
		case total; case _total
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contains = try [ValueSetExpansionContains](from: _container, forKeyIfPresent: .contains)
		self.identifier = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .identifier, auxiliaryKey: ._identifier)
		self.next = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .next, auxiliaryKey: ._next)
		self.offset = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .offset, auxiliaryKey: ._offset)
		self.parameter = try [ValueSetExpansionParameter](from: _container, forKeyIfPresent: .parameter)
		self.property = try [ValueSetExpansionProperty](from: _container, forKeyIfPresent: .property)
		self.timestamp = try FHIRPrimitive<DateTime>(from: _container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		self.total = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .total, auxiliaryKey: ._total)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contains?.encode(on: &_container, forKey: .contains)
		try identifier?.encode(on: &_container, forKey: .identifier, auxiliaryKey: ._identifier)
		try next?.encode(on: &_container, forKey: .next, auxiliaryKey: ._next)
		try offset?.encode(on: &_container, forKey: .offset, auxiliaryKey: ._offset)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try property?.encode(on: &_container, forKey: .property)
		try timestamp.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try total?.encode(on: &_container, forKey: .total, auxiliaryKey: ._total)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contains == _other.contains
		    && identifier == _other.identifier
		    && next == _other.next
		    && offset == _other.offset
		    && parameter == _other.parameter
		    && property == _other.property
		    && timestamp == _other.timestamp
		    && total == _other.total
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contains)
		hasher.combine(identifier)
		hasher.combine(next)
		hasher.combine(offset)
		hasher.combine(parameter)
		hasher.combine(property)
		hasher.combine(timestamp)
		hasher.combine(total)
	}
}

/**
 Codes in the value set.
 
 The codes that are contained in the value set expansion.
 */
open class ValueSetExpansionContains: BackboneElement {
	
	/// System value for the code
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// If user cannot select this entry
	public var abstract: FHIRPrimitive<FHIRBool>?
	
	/// If concept is inactive in the code system
	public var inactive: FHIRPrimitive<FHIRBool>?
	
	/// Version in which this code/display is defined
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Code - if blank, this is not a selectable code
	public var code: FHIRPrimitive<FHIRString>?
	
	/// User display for the concept
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional representations for this item
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// Property value for the concept
	public var property: [ValueSetExpansionContainsProperty]?
	
	/// Codes contained under this entry
	public var contains: [ValueSetExpansionContains]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case inactive; case _inactive
		case property
		case system; case _system
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abstract = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .abstract, auxiliaryKey: ._abstract)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.contains = try [ValueSetExpansionContains](from: _container, forKeyIfPresent: .contains)
		self.designation = try [ValueSetComposeIncludeConceptDesignation](from: _container, forKeyIfPresent: .designation)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.property = try [ValueSetExpansionContainsProperty](from: _container, forKeyIfPresent: .property)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abstract?.encode(on: &_container, forKey: .abstract, auxiliaryKey: ._abstract)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contains?.encode(on: &_container, forKey: .contains)
		try designation?.encode(on: &_container, forKey: .designation)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try property?.encode(on: &_container, forKey: .property)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionContains else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abstract == _other.abstract
		    && code == _other.code
		    && contains == _other.contains
		    && designation == _other.designation
		    && display == _other.display
		    && inactive == _other.inactive
		    && property == _other.property
		    && system == _other.system
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abstract)
		hasher.combine(code)
		hasher.combine(contains)
		hasher.combine(designation)
		hasher.combine(display)
		hasher.combine(inactive)
		hasher.combine(property)
		hasher.combine(system)
		hasher.combine(version)
	}
}

/**
 Property value for the concept.
 
 A property value for this concept.
 */
open class ValueSetExpansionContainsProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case coding(Coding)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Reference to ValueSet.expansion.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Value of the property for this concept
	/// One of `value[x]`
	public var value: ValueX
	
	/// SubProperty value for the concept
	public var subProperty: [ValueSetExpansionContainsPropertySubProperty]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		subProperty: [ValueSetExpansionContainsPropertySubProperty]? = nil,
		value: ValueX
	) {
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.subProperty = subProperty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCoding, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueInteger, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.subProperty = try [ValueSetExpansionContainsPropertySubProperty](from: _container, forKeyIfPresent: .subProperty)
		var _t_value: ValueX? = nil
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
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try subProperty?.encode(on: &_container, forKey: .subProperty)
		
			switch value {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionContainsProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && subProperty == _other.subProperty
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(subProperty)
		hasher.combine(value)
	}
}

/**
 SubProperty value for the concept.
 
 A subproperty value for this concept.
 */
open class ValueSetExpansionContainsPropertySubProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case coding(Coding)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Reference to ValueSet.expansion.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Value of the subproperty for this concept
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(code: code, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCoding, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueInteger, CodingKeys.valueString], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		var _t_value: ValueX? = nil
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
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		
			switch value {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionContainsPropertySubProperty else {
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
 Parameter that controlled the expansion process.
 
 A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to
 check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
open class ValueSetExpansionParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Name as assigned by the client or server
	public var name: FHIRPrimitive<FHIRString>
	
	/// Value of the named parameter
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: ValueX? = nil
	) {
		self.init(name: name)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		var _t_value: ValueX? = nil
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
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
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = value {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(value)
	}
}

/**
 Additional information supplied about each concept.
 
 A property defines an additional slot through which additional information can be provided about a concept.
 */
open class ValueSetExpansionProperty: BackboneElement {
	
	/// Identifies the property on the concepts, and when referred to in operations
	public var code: FHIRPrimitive<FHIRString>
	
	/// Formal identifier for the property
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetExpansionProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(uri)
	}
}

/**
 Description of the semantic space the Value Set Expansion is intended to cover and should further clarify the text in
 ValueSet.description.
 */
open class ValueSetScope: BackboneElement {
	
	/// Criteria describing which concepts or codes should be included and why
	public var inclusionCriteria: FHIRPrimitive<FHIRString>?
	
	/// Criteria describing which concepts or codes should be excluded and why
	public var exclusionCriteria: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		exclusionCriteria: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inclusionCriteria: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.exclusionCriteria = exclusionCriteria
		self.`extension` = `extension`
		self.id = id
		self.inclusionCriteria = inclusionCriteria
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case exclusionCriteria; case _exclusionCriteria
		case inclusionCriteria; case _inclusionCriteria
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.exclusionCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exclusionCriteria, auxiliaryKey: ._exclusionCriteria)
		self.inclusionCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .inclusionCriteria, auxiliaryKey: ._inclusionCriteria)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try exclusionCriteria?.encode(on: &_container, forKey: .exclusionCriteria, auxiliaryKey: ._exclusionCriteria)
		try inclusionCriteria?.encode(on: &_container, forKey: .inclusionCriteria, auxiliaryKey: ._inclusionCriteria)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ValueSetScope else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return exclusionCriteria == _other.exclusionCriteria
		    && inclusionCriteria == _other.inclusionCriteria
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(exclusionCriteria)
		hasher.combine(inclusionCriteria)
	}
}
