//
//  ConceptMap.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ConceptMap)
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
 A map from one set of concepts to one or more other concepts.
 
 A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems,
 or data element/data element concepts, or classes in class models.
 */
public struct ConceptMap: DomainResource {
	
	public static let resourceType: ResourceType = .conceptMap
	
	/// All possible types for "sourceScope[x]"
	public enum SourceScopeX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "targetScope[x]"
	public enum TargetScopeX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Definition of an additional attribute to act as a data source or target
	public var additionalAttribute: [ConceptMapAdditionalAttribute]?
	
	/// When the ConceptMap was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the ConceptMap
	public var author: [ContactDetail]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the concept map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the ConceptMap
	public var editor: [ContactDetail]?
	
	/// When the ConceptMap is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the ConceptMap
	public var endorser: [ContactDetail]?
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Same source and target systems
	public var group: [ConceptMapGroup]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the concept map
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Jurisdiction of the authority that maintains the concept map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the ConceptMap was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this concept map (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Additional properties of the mapping
	public var property: [ConceptMapProperty]?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this concept map is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the ConceptMap
	public var reviewer: [ContactDetail]?
	
	/// The source value set that contains the concepts that are being mapped
	/// One of `sourceScope[x]`
	public var sourceScope: SourceScopeX?
	
	/// The status of this concept map. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The target value set which provides context for the mappings
	/// One of `targetScope[x]`
	public var targetScope: TargetScopeX?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this concept map (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Canonical identifier for this concept map, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the concept map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
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
		self.status = status
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
		case resourceType
		case additionalAttribute
		case approvalDate; case _approvalDate
		case author
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
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
		self.additionalAttribute = try [ConceptMapAdditionalAttribute](from: _container, forKeyIfPresent: .additionalAttribute)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [ConceptMapGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.property = try [ConceptMapProperty](from: _container, forKeyIfPresent: .property)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.sourceScope = try Self._decodeSourceScope(from: _container)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.targetScope = try Self._decodeTargetScope(from: _container)
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
		try additionalAttribute?.encode(on: &_container, forKey: .additionalAttribute)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try property?.encode(on: &_container, forKey: .property)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		if let _enum = sourceScope {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .sourceScopeCanonical, auxiliaryKey: ._sourceScopeCanonical)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .sourceScopeUri, auxiliaryKey: ._sourceScopeUri)
		}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = targetScope {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .targetScopeCanonical, auxiliaryKey: ._targetScopeCanonical)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetScopeUri, auxiliaryKey: ._targetScopeUri)
		}
		}
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
	
	private static func _decodeSourceScope(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceScopeX? {
		var _t_sourceScope: SourceScopeX? = nil
		if let sourceScopeCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .sourceScopeCanonical, auxiliaryKey: ._sourceScopeCanonical) {
			_t_sourceScope = .canonical(sourceScopeCanonical)
		}
		if let sourceScopeUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceScopeUri, auxiliaryKey: ._sourceScopeUri) {
			if _t_sourceScope != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceScopeUri, in: _container, debugDescription: "More than one value provided for \"sourceScope\"")
			}
			_t_sourceScope = .uri(sourceScopeUri)
		}
		return _t_sourceScope
	}
	
	private static func _decodeTargetScope(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetScopeX? {
		var _t_targetScope: TargetScopeX? = nil
		if let targetScopeCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetScopeCanonical, auxiliaryKey: ._targetScopeCanonical) {
			_t_targetScope = .canonical(targetScopeCanonical)
		}
		if let targetScopeUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetScopeUri, auxiliaryKey: ._targetScopeUri) {
			if _t_targetScope != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetScopeUri, in: _container, debugDescription: "More than one value provided for \"targetScope\"")
			}
			_t_targetScope = .uri(targetScopeUri)
		}
		return _t_targetScope
	}
	
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
 Definition of an additional attribute to act as a data source or target.
 
 An additionalAttribute defines an additional data element found in the source or target data model where the data will
 come from or be mapped to. Some mappings are based on data in addition to the source data element, where codes in
 multiple fields are combined to a single field (or vice versa).
 */
public struct ConceptMapAdditionalAttribute: BackboneElement {
	
	/// Identifies this additional attribute through this resource
	public var code: FHIRPrimitive<FHIRString>
	
	/// Why the additional attribute is defined, and/or what the data element it refers to is
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of the source data contained in this concept map for this data element.
	public var type: FHIRPrimitive<ConceptMapAttributeType>
	
	/// Formal identifier for the data element referred to in this attribute
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<ConceptMapAttributeType>,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type; case _type
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<ConceptMapAttributeType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}

/**
 Same source and target systems.
 
 A group of mappings that all have the same source and target system.
 */
public struct ConceptMapGroup: BackboneElement {
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapGroupElement]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Source system where concepts to be mapped are defined
	public var source: FHIRPrimitive<Canonical>?
	
	/// Target system that the concepts are to be mapped to
	public var target: FHIRPrimitive<Canonical>?
	
	/// What to do when there is no mapping target for the source concept and ConceptMap.group.element.noMap is not true
	public var unmapped: ConceptMapGroupUnmapped?
	
	/// Designated initializer
	public init(
		element: [ConceptMapGroupElement],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<Canonical>? = nil,
		target: FHIRPrimitive<Canonical>? = nil,
		unmapped: ConceptMapGroupUnmapped? = nil
	) {
		self.element = element
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source; case _source
		case target; case _target
		case unmapped
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.element = try [ConceptMapGroupElement](from: _container, forKey: .element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.target = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.unmapped = try ConceptMapGroupUnmapped(from: _container, forKeyIfPresent: .unmapped)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try element.encode(on: &_container, forKey: .element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try unmapped?.encode(on: &_container, forKey: .unmapped)
	}
}

/**
 Mappings for a concept from the source set.
 
 Mappings for an individual concept in the source to one or more concepts in the target.
 */
public struct ConceptMapGroupElement: BackboneElement {
	
	/// Identifies element being mapped
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Comments related to the mapping of the source element
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// No mapping to a target concept for this source concept
	public var noMap: FHIRPrimitive<FHIRBool>?
	
	/// Concept in target system for element
	public var target: [ConceptMapGroupElementTarget]?
	
	/// Identifies the set of concepts being mapped
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		noMap: FHIRPrimitive<FHIRBool>? = nil,
		target: [ConceptMapGroupElementTarget]? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.code = code
		self.comment = comment
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
		case comment; case _comment
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case noMap; case _noMap
		case target
		case valueSet; case _valueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.noMap = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .noMap, auxiliaryKey: ._noMap)
		self.target = try [ConceptMapGroupElementTarget](from: _container, forKeyIfPresent: .target)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try noMap?.encode(on: &_container, forKey: .noMap, auxiliaryKey: ._noMap)
		try target?.encode(on: &_container, forKey: .target)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
	}
}

/**
 Concept in target system for element.
 
 A concept from the target value set that this concept maps to.
 */
public struct ConceptMapGroupElementTarget: BackboneElement {
	
	/// Code that identifies the target element
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Comments related to the mapping to the target element
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Other properties required for this mapping
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Other data elements that this mapping also produces
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Property value for the source -> target mapping
	public var property: [ConceptMapGroupElementTargetProperty]?
	
	/// The relationship between the source and target concepts. The relationship is read from source to target (e.g.
	/// source-is-narrower-than-target).
	public var relationship: FHIRPrimitive<ConceptMapRelationship>
	
	/// Identifies the set of target concepts
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
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
		self.code = code
		self.comment = comment
		self.dependsOn = dependsOn
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.product = product
		self.property = property
		self.relationship = relationship
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case comment; case _comment
		case dependsOn
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case product
		case property
		case relationship; case _relationship
		case valueSet; case _valueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.dependsOn = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.product = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
		self.property = try [ConceptMapGroupElementTargetProperty](from: _container, forKeyIfPresent: .property)
		self.relationship = try FHIRPrimitive<ConceptMapRelationship>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try product?.encode(on: &_container, forKey: .product)
		try property?.encode(on: &_container, forKey: .property)
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
	}
}

/**
 Other properties required for this mapping.
 
 A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified data
 attribute can be resolved, and it has the specified value.
 */
public struct ConceptMapGroupElementTargetDependsOn: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		indirect case coding(Coding)
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// A reference to a mapping attribute defined in ConceptMap.additionalAttribute
	public var attribute: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value of the referenced data element
	/// One of `value[x]`
	public var value: ValueX?
	
	/// The mapping depends on a data element with a value from this value set
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		attribute: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.attribute = attribute
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attribute; case _attribute
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueQuantity
		case valueSet; case _valueSet
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attribute = try FHIRPrimitive<FHIRString>(from: _container, forKey: .attribute, auxiliaryKey: ._attribute)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attribute.encode(on: &_container, forKey: .attribute, auxiliaryKey: ._attribute)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = value {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .code(let _value):
			try _value.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		}
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
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
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		return _t_value
	}
}

/**
 Property value for the source -> target mapping.
 
 A property value for this source -> target mapping.
 */
public struct ConceptMapGroupElementTargetProperty: BackboneElement {
	
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
	
	/// Reference to ConceptMap.property.code
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value of the property for this concept
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
 What to do when there is no mapping target for the source concept and ConceptMap.group.element.noMap is not true.
 
 What to do when there is no mapping to a target concept from the source concept and ConceptMap.group.element.noMap is
 not true. This provides the "default" to be applied when there is no target concept mapping specified or the expansion
 of ConceptMap.group.element.target.valueSet is empty.
 */
public struct ConceptMapGroupUnmapped: BackboneElement {
	
	/// Fixed code when mode = fixed
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Comments related to the choice of how to handle unmapped elements
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Defines which action to take if there is no match for the source concept in the target system designated for the
	/// group. One of 3 actions are possible: use the unmapped source code (this is useful when doing a mapping between
	/// versions, and only a few codes have changed), use a fixed code (a default code), or alternatively, a reference
	/// to a different concept map can be provided (by canonical URL).
	public var mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped
	public var otherMap: FHIRPrimitive<Canonical>?
	
	/// The default relationship value to apply between the source and target concepts when the source code is unmapped
	/// and the mode is 'fixed' or 'use-source-code'.
	public var relationship: FHIRPrimitive<ConceptMapRelationship>?
	
	/// Fixed code set when mode = fixed
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>,
		modifierExtension: [Extension]? = nil,
		otherMap: FHIRPrimitive<Canonical>? = nil,
		relationship: FHIRPrimitive<ConceptMapRelationship>? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.code = code
		self.comment = comment
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.otherMap = otherMap
		self.relationship = relationship
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case comment; case _comment
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case otherMap; case _otherMap
		case relationship; case _relationship
		case valueSet; case _valueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<ConceptMapGroupUnmappedMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.otherMap = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .otherMap, auxiliaryKey: ._otherMap)
		self.relationship = try FHIRPrimitive<ConceptMapRelationship>(from: _container, forKeyIfPresent: .relationship, auxiliaryKey: ._relationship)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try otherMap?.encode(on: &_container, forKey: .otherMap, auxiliaryKey: ._otherMap)
		try relationship?.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
	}
}

/**
 Additional properties of the mapping.
 
 A property defines a slot through which additional information can be provided about a map from source -> target.
 */
public struct ConceptMapProperty: BackboneElement {
	
	/// Identifies the property on the mappings, and when referred to in the $translate operation
	public var code: FHIRPrimitive<FHIRString>
	
	/// Why the property is defined, and/or what it conveys
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The CodeSystem from which code values come
	public var system: FHIRPrimitive<Canonical>?
	
	/// The type of the property value.
	public var type: FHIRPrimitive<ConceptMapPropertyType>
	
	/// Formal identifier for the property
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		system: FHIRPrimitive<Canonical>? = nil,
		type: FHIRPrimitive<ConceptMapPropertyType>,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.system = system
		self.type = type
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case system; case _system
		case type; case _type
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.system = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.type = try FHIRPrimitive<ConceptMapPropertyType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}
