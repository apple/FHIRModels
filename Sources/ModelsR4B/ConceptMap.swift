//
//  ConceptMap.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ConceptMap)
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
	
	/// All possible types for "source[x]"
	public enum SourceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the concept map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Same source and target systems
	public var group: [ConceptMapGroup]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the concept map
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for concept map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this concept map (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this concept map is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The source value set that contains the concepts that are being mapped
	/// One of `source[x]`
	public var source: SourceX?
	
	/// The status of this concept map. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The target value set which provides context for the mappings
	/// One of `target[x]`
	public var target: TargetX?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this concept map (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this concept map, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the concept map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		group: [ConceptMapGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		source: SourceX? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		target: TargetX? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.group = group
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
		self.source = source
		self.status = status
		self.target = target
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case group
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
		case sourceCanonical; case _sourceCanonical
		case sourceUri; case _sourceUri
		case status; case _status
		case targetCanonical; case _targetCanonical
		case targetUri; case _targetUri
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [ConceptMapGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.source = try Self._decodeSource(from: _container)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.target = try Self._decodeTarget(from: _container)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
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
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
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
		if let _enum = source {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .sourceCanonical, auxiliaryKey: ._sourceCanonical)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
		}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = target {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
		}
		}
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSource(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceX? {
		var _t_source: SourceX? = nil
		if let sourceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .sourceCanonical, auxiliaryKey: ._sourceCanonical) {
			_t_source = .canonical(sourceCanonical)
		}
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		return _t_source
	}
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX? {
		var _t_target: TargetX? = nil
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			_t_target = .canonical(targetCanonical)
		}
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		return _t_target
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
	public var source: FHIRPrimitive<FHIRURI>?
	
	/// Specific version of the  code system
	public var sourceVersion: FHIRPrimitive<FHIRString>?
	
	/// Target system that the concepts are to be mapped to
	public var target: FHIRPrimitive<FHIRURI>?
	
	/// Specific version of the  code system
	public var targetVersion: FHIRPrimitive<FHIRString>?
	
	/// What to do when there is no mapping for the source concept
	public var unmapped: ConceptMapGroupUnmapped?
	
	/// Designated initializer
	public init(
		element: [ConceptMapGroupElement],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<FHIRURI>? = nil,
		sourceVersion: FHIRPrimitive<FHIRString>? = nil,
		target: FHIRPrimitive<FHIRURI>? = nil,
		targetVersion: FHIRPrimitive<FHIRString>? = nil,
		unmapped: ConceptMapGroupUnmapped? = nil
	) {
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.sourceVersion = sourceVersion
		self.target = target
		self.targetVersion = targetVersion
		self.unmapped = unmapped
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case element
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source; case _source
		case sourceVersion; case _sourceVersion
		case target; case _target
		case targetVersion; case _targetVersion
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
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.sourceVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceVersion, auxiliaryKey: ._sourceVersion)
		self.target = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.targetVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetVersion, auxiliaryKey: ._targetVersion)
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
		try sourceVersion?.encode(on: &_container, forKey: .sourceVersion, auxiliaryKey: ._sourceVersion)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try targetVersion?.encode(on: &_container, forKey: .targetVersion, auxiliaryKey: ._targetVersion)
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
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Concept in target system for element
	public var target: [ConceptMapGroupElementTarget]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: [ConceptMapGroupElementTarget]? = nil
	) {
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try [ConceptMapGroupElementTarget](from: _container, forKeyIfPresent: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try target?.encode(on: &_container, forKey: .target)
	}
}

/**
 Concept in target system for element.
 
 A concept from the target value set that this concept maps to.
 */
public struct ConceptMapGroupElementTarget: BackboneElement {
	
	/// Code that identifies the target element
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Description of status/issues in mapping
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// The equivalence between the source and target concepts (counting for the dependencies and products). The
	/// equivalence is read from target to source (e.g. the target is 'wider' than the source).
	public var equivalence: FHIRPrimitive<ConceptMapEquivalence>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		dependsOn: [ConceptMapGroupElementTargetDependsOn]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		equivalence: FHIRPrimitive<ConceptMapEquivalence>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		product: [ConceptMapGroupElementTargetDependsOn]? = nil
	) {
		self.code = code
		self.comment = comment
		self.dependsOn = dependsOn
		self.display = display
		self.equivalence = equivalence
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.product = product
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case comment; case _comment
		case dependsOn
		case display; case _display
		case equivalence; case _equivalence
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case product
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
		self.equivalence = try FHIRPrimitive<ConceptMapEquivalence>(from: _container, forKey: .equivalence, auxiliaryKey: ._equivalence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.product = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try equivalence.encode(on: &_container, forKey: .equivalence, auxiliaryKey: ._equivalence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try product?.encode(on: &_container, forKey: .product)
	}
}

/**
 Other elements required for this mapping (from context).
 
 A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can
 be resolved, and it has the specified value.
 */
public struct ConceptMapGroupElementTargetDependsOn: BackboneElement {
	
	/// Display for the code (if value is a code)
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Reference to property mapping depends on
	public var property: FHIRPrimitive<FHIRURI>
	
	/// Code System (if necessary)
	public var system: FHIRPrimitive<Canonical>?
	
	/// Value of the referenced element
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		property: FHIRPrimitive<FHIRURI>,
		system: FHIRPrimitive<Canonical>? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.property = property
		self.system = system
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case property; case _property
		case system; case _system
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.property = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .property, auxiliaryKey: ._property)
		self.system = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try property.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 What to do when there is no mapping for the source concept.
 
 What to do when there is no mapping for the source concept. "Unmapped" does not include codes that are unmatched, and
 the unmapped element is ignored in a code is specified to have equivalence = unmatched.
 */
public struct ConceptMapGroupUnmapped: BackboneElement {
	
	/// Fixed code when mode = fixed
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Defines which action to take if there is no match for the source concept in the target system designated for the
	/// group. One of 3 actions are possible: use the unmapped code (this is useful when doing a mapping between
	/// versions, and only a few codes have changed), use a fixed code (a default code), or alternatively, a reference
	/// to a different concept map can be provided (by canonical URL).
	public var mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped
	public var url: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<Canonical>? = nil
	) {
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<ConceptMapGroupUnmappedMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.url = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}
