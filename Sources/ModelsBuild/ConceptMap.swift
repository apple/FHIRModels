//
//  ConceptMap.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ConceptMap)
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
 A map from one set of concepts to one or more other concepts.
 
 A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems,
 or data element/data element concepts, or classes in class models.
 */
open class ConceptMap: DomainResource {
	
	override open class var resourceType: ResourceType { return .conceptMap }
	
	/// All possible types for "sourceScope[x]"
	public enum SourceScopeX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "targetScope[x]"
	public enum TargetScopeX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this concept map, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the concept map
	public var identifier: [Identifier]?
	
	/// Business version of the concept map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this concept map (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this concept map (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this concept map. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the concept map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for concept map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this concept map is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the ConceptMap was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the ConceptMap was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the ConceptMap is expected to be used
	public var effectivePeriod: Period?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Who authored the ConceptMap
	public var author: [ContactDetail]?
	
	/// Who edited the ConceptMap
	public var editor: [ContactDetail]?
	
	/// Who reviewed the ConceptMap
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the ConceptMap
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Additional properties of the mapping
	public var property: [ConceptMapProperty]?
	
	/// Definition of an additional attribute to act as a data source or target
	public var additionalAttribute: [ConceptMapAdditionalAttribute]?
	
	/// The source value set that contains the concepts that are being mapped
	/// One of `sourceScope[x]`
	public var sourceScope: SourceScopeX?
	
	/// The target value set which provides context for the mappings
	/// One of `targetScope[x]`
	public var targetScope: TargetScopeX?
	
	/// Same source and target systems
	public var group: [ConceptMapGroup]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additionalAttribute: [ConceptMapAdditionalAttribute]? = nil,
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		group: [ConceptMapGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		property: [ConceptMapProperty]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		sourceScope: SourceScopeX? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		targetScope: TargetScopeX? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(status: status)
		self.additionalAttribute = additionalAttribute
		self.approvalDate = approvalDate
		self.author = author
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.property = property
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.sourceScope = sourceScope
		self.targetScope = targetScope
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
		case additionalAttribute
		case approvalDate; case _approvalDate
		case author
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case group
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case property
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case sourceScopeCanonical; case _sourceScopeCanonical
		case sourceScopeUri; case _sourceScopeUri
		case status; case _status
		case targetScopeCanonical; case _targetScopeCanonical
		case targetScopeUri; case _targetScopeUri
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
		self.additionalAttribute = try [ConceptMapAdditionalAttribute](from: _container, forKeyIfPresent: .additionalAttribute)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.group = try [ConceptMapGroup](from: _container, forKeyIfPresent: .group)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.property = try [ConceptMapProperty](from: _container, forKeyIfPresent: .property)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		var _t_sourceScope: SourceScopeX? = nil
		if let sourceScopeUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceScopeUri, auxiliaryKey: ._sourceScopeUri) {
			if _t_sourceScope != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceScopeUri, in: _container, debugDescription: "More than one value provided for \"sourceScope\"")
			}
			_t_sourceScope = .uri(sourceScopeUri)
		}
		if let sourceScopeCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .sourceScopeCanonical, auxiliaryKey: ._sourceScopeCanonical) {
			if _t_sourceScope != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceScopeCanonical, in: _container, debugDescription: "More than one value provided for \"sourceScope\"")
			}
			_t_sourceScope = .canonical(sourceScopeCanonical)
		}
		self.sourceScope = _t_sourceScope
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		var _t_targetScope: TargetScopeX? = nil
		if let targetScopeUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetScopeUri, auxiliaryKey: ._targetScopeUri) {
			if _t_targetScope != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetScopeUri, in: _container, debugDescription: "More than one value provided for \"targetScope\"")
			}
			_t_targetScope = .uri(targetScopeUri)
		}
		if let targetScopeCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetScopeCanonical, auxiliaryKey: ._targetScopeCanonical) {
			if _t_targetScope != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetScopeCanonical, in: _container, debugDescription: "More than one value provided for \"targetScope\"")
			}
			_t_targetScope = .canonical(targetScopeCanonical)
		}
		self.targetScope = _t_targetScope
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
		try additionalAttribute?.encode(on: &_container, forKey: .additionalAttribute)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try property?.encode(on: &_container, forKey: .property)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		if let _enum = sourceScope {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .sourceScopeUri, auxiliaryKey: ._sourceScopeUri)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .sourceScopeCanonical, auxiliaryKey: ._sourceScopeCanonical)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = targetScope {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetScopeUri, auxiliaryKey: ._targetScopeUri)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .targetScopeCanonical, auxiliaryKey: ._targetScopeCanonical)
			}
		}
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
		guard let _other = _other as? ConceptMap else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalAttribute == _other.additionalAttribute
		    && approvalDate == _other.approvalDate
		    && author == _other.author
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && group == _other.group
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && property == _other.property
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && sourceScope == _other.sourceScope
		    && status == _other.status
		    && targetScope == _other.targetScope
		    && title == _other.title
		    && topic == _other.topic
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalAttribute)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(property)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(sourceScope)
		hasher.combine(status)
		hasher.combine(targetScope)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Definition of an additional attribute to act as a data source or target.
 
 An additionalAttribute defines an additional data element found in the source or target data model where the data will
 come from or be mapped to. Some mappings are based on data in addition to the source data element, where codes in
 multiple fields are combined to a single field (or vice versa).
 */
open class ConceptMapAdditionalAttribute: BackboneElement {
	
	/// Identifies this additional attribute through this resource
	public var code: FHIRPrimitive<FHIRString>
	
	/// Formal identifier for the data element referred to in this attribte
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Why the additional attribute is defined, and/or what the data element it refers to is
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The type of the source data contained in this concept map for this data element.
	public var type: FHIRPrimitive<ConceptMapAttributeType>
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<ConceptMapAttributeType>) {
		self.code = code
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<ConceptMapAttributeType>,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(code: code, type: type)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case type; case _type
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.type = try FHIRPrimitive<ConceptMapAttributeType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapAdditionalAttribute else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && type == _other.type
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(type)
		hasher.combine(uri)
	}
}

/**
 Same source and target systems.
 
 A group of mappings that all have the same source and target system.
 */
open class ConceptMapGroup: BackboneElement {
	
	/// Source system where concepts to be mapped are defined
	public var source: FHIRPrimitive<Canonical>?
	
	/// Target system that the concepts are to be mapped to
	public var target: FHIRPrimitive<Canonical>?
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapGroupElement]
	
	/// What to do when there is no mapping target for the source concept and ConceptMap.group.element.noMap is not true
	public var unmapped: ConceptMapGroupUnmapped?
	
	/// Designated initializer taking all required properties
	public init(element: [ConceptMapGroupElement]) {
		self.element = element
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		element: [ConceptMapGroupElement],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<Canonical>? = nil,
		target: FHIRPrimitive<Canonical>? = nil,
		unmapped: ConceptMapGroupUnmapped? = nil
	) {
		self.init(element: element)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.target = target
		self.unmapped = unmapped
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
		case source; case _source
		case target; case _target
		case unmapped
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.element = try [ConceptMapGroupElement](from: _container, forKey: .element)
		self.source = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.target = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.unmapped = try ConceptMapGroupUnmapped(from: _container, forKeyIfPresent: .unmapped)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try element.encode(on: &_container, forKey: .element)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try unmapped?.encode(on: &_container, forKey: .unmapped)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return element == _other.element
		    && source == _other.source
		    && target == _other.target
		    && unmapped == _other.unmapped
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(element)
		hasher.combine(source)
		hasher.combine(target)
		hasher.combine(unmapped)
	}
}

/**
 Mappings for a concept from the source set.
 
 Mappings for an individual concept in the source to one or more concepts in the target.
 */
open class ConceptMapGroupElement: BackboneElement {
	
	/// Identifies element being mapped
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Identifies the set of concepts being mapped
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// No mapping to a target concept for this source concept
	public var noMap: FHIRPrimitive<FHIRBool>?
	
	/// Concept in target system for element
	public var target: [ConceptMapGroupElementTarget]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noMap: FHIRPrimitive<FHIRBool>? = nil,
		target: [ConceptMapGroupElementTarget]? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.init()
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.noMap = noMap
		self.target = target
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case noMap; case _noMap
		case target
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.noMap = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .noMap, auxiliaryKey: ._noMap)
		self.target = try [ConceptMapGroupElementTarget](from: _container, forKeyIfPresent: .target)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try noMap?.encode(on: &_container, forKey: .noMap, auxiliaryKey: ._noMap)
		try target?.encode(on: &_container, forKey: .target)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapGroupElement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && display == _other.display
		    && noMap == _other.noMap
		    && target == _other.target
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(noMap)
		hasher.combine(target)
		hasher.combine(valueSet)
	}
}

/**
 Concept in target system for element.
 
 A concept from the target value set that this concept maps to.
 */
open class ConceptMapGroupElementTarget: BackboneElement {
	
	/// Code that identifies the target element
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Identifies the set of target concepts
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// The relationship between the source and target concepts. The relationship is read from source to target (e.g.
	/// source-is-narrower-than-target).
	public var relationship: FHIRPrimitive<ConceptMapRelationship>
	
	/// Description of status/issues in mapping
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Property value for the source -> target mapping
	public var property: [ConceptMapGroupElementTargetProperty]?
	
	/// Other properties required for this mapping
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Other data elements that this mapping also produces
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Designated initializer taking all required properties
	public init(relationship: FHIRPrimitive<ConceptMapRelationship>) {
		self.relationship = relationship
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		dependsOn: [ConceptMapGroupElementTargetDependsOn]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		product: [ConceptMapGroupElementTargetDependsOn]? = nil,
		property: [ConceptMapGroupElementTargetProperty]? = nil,
		relationship: FHIRPrimitive<ConceptMapRelationship>,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.init(relationship: relationship)
		self.code = code
		self.comment = comment
		self.dependsOn = dependsOn
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.product = product
		self.property = property
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case comment; case _comment
		case dependsOn
		case display; case _display
		case product
		case property
		case relationship; case _relationship
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.dependsOn = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.product = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
		self.property = try [ConceptMapGroupElementTargetProperty](from: _container, forKeyIfPresent: .property)
		self.relationship = try FHIRPrimitive<ConceptMapRelationship>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try product?.encode(on: &_container, forKey: .product)
		try property?.encode(on: &_container, forKey: .property)
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapGroupElementTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && comment == _other.comment
		    && dependsOn == _other.dependsOn
		    && display == _other.display
		    && product == _other.product
		    && property == _other.property
		    && relationship == _other.relationship
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(comment)
		hasher.combine(dependsOn)
		hasher.combine(display)
		hasher.combine(product)
		hasher.combine(property)
		hasher.combine(relationship)
		hasher.combine(valueSet)
	}
}

/**
 Other properties required for this mapping.
 
 A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified data
 attribute can be resolved, and it has the specified value.
 */
open class ConceptMapGroupElementTargetDependsOn: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case coding(Coding)
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// A reference to a mapping attribute defined in ConceptMap.additionalAttribute
	public var attribute: FHIRPrimitive<FHIRString>
	
	/// Value of the referenced data element
	/// One of `value[x]`
	public var value: ValueX?
	
	/// The mapping depends on a data element with a value from this value set
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	public init(attribute: FHIRPrimitive<FHIRString>) {
		self.attribute = attribute
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attribute: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.init(attribute: attribute)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attribute; case _attribute
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueQuantity
		case valueSet; case _valueSet
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attribute = try FHIRPrimitive<FHIRString>(from: _container, forKey: .attribute, auxiliaryKey: ._attribute)
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
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		self.value = _t_value
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attribute.encode(on: &_container, forKey: .attribute, auxiliaryKey: ._attribute)
		if let _enum = value {
			switch _enum {
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			}
		}
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapGroupElementTargetDependsOn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attribute == _other.attribute
		    && value == _other.value
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attribute)
		hasher.combine(value)
		hasher.combine(valueSet)
	}
}

/**
 Property value for the source -> target mapping.
 
 A property value for this source -> target mapping.
 */
open class ConceptMapGroupElementTargetProperty: BackboneElement {
	
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
	
	/// Reference to ConceptMap.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Value of the property for this concept
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
		if let valueCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCode, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .code(valueCode)
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
			case .code(let _value):
				try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapGroupElementTargetProperty else {
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
 What to do when there is no mapping target for the source concept and ConceptMap.group.element.noMap is not true.
 
 What to do when there is no mapping to a target concept from the source concept and ConceptMap.group.element.noMap is
 not true. This provides the "default" to be applied when there is no target concept mapping specified or the expansion
 of ConceptMap.group.element.target.valueSet is empty.
 */
open class ConceptMapGroupUnmapped: BackboneElement {
	
	/// Defines which action to take if there is no match for the source concept in the target system designated for the
	/// group. One of 3 actions are possible: use the unmapped source code (this is useful when doing a mapping between
	/// versions, and only a few codes have changed), use a fixed code (a default code), or alternatively, a reference
	/// to a different concept map can be provided (by canonical URL).
	public var mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>
	
	/// Fixed code when mode = fixed
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Fixed code set when mode = fixed
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// The default relationship value to apply between the source and target concepts when the source code is unmapped
	/// and the mode is 'fixed' or 'use-source-code'.
	public var relationship: FHIRPrimitive<ConceptMapRelationship>?
	
	/// canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped
	public var otherMap: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	public init(mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>) {
		self.mode = mode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>,
		modifierExtension: [Extension]? = nil,
		otherMap: FHIRPrimitive<Canonical>? = nil,
		relationship: FHIRPrimitive<ConceptMapRelationship>? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.init(mode: mode)
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.otherMap = otherMap
		self.relationship = relationship
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case mode; case _mode
		case otherMap; case _otherMap
		case relationship; case _relationship
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.mode = try FHIRPrimitive<ConceptMapGroupUnmappedMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.otherMap = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .otherMap, auxiliaryKey: ._otherMap)
		self.relationship = try FHIRPrimitive<ConceptMapRelationship>(from: _container, forKeyIfPresent: .relationship, auxiliaryKey: ._relationship)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try otherMap?.encode(on: &_container, forKey: .otherMap, auxiliaryKey: ._otherMap)
		try relationship?.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapGroupUnmapped else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && display == _other.display
		    && mode == _other.mode
		    && otherMap == _other.otherMap
		    && relationship == _other.relationship
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(mode)
		hasher.combine(otherMap)
		hasher.combine(relationship)
		hasher.combine(valueSet)
	}
}

/**
 Additional properties of the mapping.
 
 A property defines a slot through which additional information can be provided about a map from source -> target.
 */
open class ConceptMapProperty: BackboneElement {
	
	/// Identifies the property on the mappings, and when referred to in the $translate operation
	public var code: FHIRPrimitive<FHIRString>
	
	/// Formal identifier for the property
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Why the property is defined, and/or what it conveys
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The type of the property value.
	public var type: FHIRPrimitive<ConceptMapPropertyType>
	
	/// The CodeSystem from which code values come
	public var system: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<ConceptMapPropertyType>) {
		self.code = code
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		system: FHIRPrimitive<Canonical>? = nil,
		type: FHIRPrimitive<ConceptMapPropertyType>,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(code: code, type: type)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.system = system
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case system; case _system
		case type; case _type
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.system = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.type = try FHIRPrimitive<ConceptMapPropertyType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
		    && system == _other.system
		    && type == _other.type
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(system)
		hasher.combine(type)
		hasher.combine(uri)
	}
}
