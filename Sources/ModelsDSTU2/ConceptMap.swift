//
//  ConceptMap.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ConceptMap)
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
 
 A statement of relationships from one set of concepts to one or more other concepts - either code systems or data
 elements, or classes in class models.
 */
public struct ConceptMap: DomainResource {
	
	public static let resourceType: ResourceType = .conceptMap
	
	/// All possible types for "source[x]"
	public enum SourceX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "target[x]"
	public enum TargetX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Contact details of the publisher
	public var contact: [ConceptMapContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date for given status
	public var date: FHIRPrimitive<DateTime>?
	
	/// Human language description of the concept map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapElement]?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the concept map
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this concept map
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why needed
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Identifies the source of the concepts which are being mapped
	/// One of `source[x]`
	public var source: SourceX
	
	/// The status of the concept map.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Provides context to the mappings
	/// One of `target[x]`
	public var target: TargetX
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Globally unique logical id for concept map
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the concept map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [ConceptMapContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		element: [ConceptMapElement]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		source: SourceX,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		target: TargetX,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [CodeableConcept]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.element = element
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.requirements = requirements
		self.source = source
		self.status = status
		self.target = target
		self.text = text
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
		case element
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case requirements; case _requirements
		case sourceReference
		case sourceUri; case _sourceUri
		case status; case _status
		case targetReference
		case targetUri; case _targetUri
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
		self.contact = try [ConceptMapContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.element = try [ConceptMapElement](from: _container, forKeyIfPresent: .element)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.source = try Self._decodeSource(from: _container)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.target = try Self._decodeTarget(from: _container)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
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
		try element?.encode(on: &_container, forKey: .element)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		
		switch source {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .sourceReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
		}
		
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		
		switch target {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .targetReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
		}
		
		try text?.encode(on: &_container, forKey: .text)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSource(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceX {
		var _t_source: SourceX? = nil
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			_t_source = .reference(sourceReference)
		}
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		guard let _t_source else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.sourceUri)
			throw DecodingError.valueNotFound(SourceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"source\" but have none"))
		}
		return _t_source
	}
	
	private static func _decodeTarget(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TargetX {
		var _t_target: TargetX? = nil
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			_t_target = .reference(targetReference)
		}
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		guard let _t_target else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.targetUri)
			throw DecodingError.valueNotFound(TargetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		return _t_target
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public struct ConceptMapContact: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}

/**
 Mappings for a concept from the source set.
 
 Mappings for an individual concept in the source to one or more concepts in the target.
 */
public struct ConceptMapElement: BackboneElement {
	
	/// Identifies element being mapped
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Code System (if value set crosses code systems)
	public var codeSystem: FHIRPrimitive<FHIRURI>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Concept in target system for element
	public var target: [ConceptMapElementTarget]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		codeSystem: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: [ConceptMapElementTarget]? = nil
	) {
		self.code = code
		self.codeSystem = codeSystem
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case codeSystem; case _codeSystem
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
		self.codeSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .codeSystem, auxiliaryKey: ._codeSystem)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.target = try [ConceptMapElementTarget](from: _container, forKeyIfPresent: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
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
public struct ConceptMapElementTarget: BackboneElement {
	
	/// Code that identifies the target element
	public var code: FHIRPrimitive<FHIRString>?
	
	/// System of the target (if necessary)
	public var codeSystem: FHIRPrimitive<FHIRURI>?
	
	/// Description of status/issues in mapping
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMapElementTargetDependsOn]?
	
	/// The equivalence between the source and target concepts (counting for the dependencies and products). The
	/// equivalence is read from target to source (e.g. the target is 'wider' than the source).
	/// Restricted to: ['equivalent', 'wider', 'subsumes', 'narrower', 'specializes', 'inexact', 'unmatched']
	public var equivalence: FHIRPrimitive<ConceptMapEquivalence>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMapElementTargetDependsOn]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>? = nil,
		codeSystem: FHIRPrimitive<FHIRURI>? = nil,
		comments: FHIRPrimitive<FHIRString>? = nil,
		dependsOn: [ConceptMapElementTargetDependsOn]? = nil,
		equivalence: FHIRPrimitive<ConceptMapEquivalence>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		product: [ConceptMapElementTargetDependsOn]? = nil
	) {
		self.code = code
		self.codeSystem = codeSystem
		self.comments = comments
		self.dependsOn = dependsOn
		self.equivalence = equivalence
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.product = product
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case codeSystem; case _codeSystem
		case comments; case _comments
		case dependsOn
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
		self.codeSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .codeSystem, auxiliaryKey: ._codeSystem)
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.dependsOn = try [ConceptMapElementTargetDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.equivalence = try FHIRPrimitive<ConceptMapEquivalence>(from: _container, forKey: .equivalence, auxiliaryKey: ._equivalence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.product = try [ConceptMapElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
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
public struct ConceptMapElementTargetDependsOn: BackboneElement {
	
	/// Value of the referenced element
	public var code: FHIRPrimitive<FHIRString>
	
	/// Code System (if necessary)
	public var codeSystem: FHIRPrimitive<FHIRURI>
	
	/// Reference to element/field/ValueSet mapping depends on
	public var element: FHIRPrimitive<FHIRURI>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<FHIRString>,
		codeSystem: FHIRPrimitive<FHIRURI>,
		element: FHIRPrimitive<FHIRURI>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.codeSystem = codeSystem
		self.element = element
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case codeSystem; case _codeSystem
		case element; case _element
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
		self.codeSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		self.element = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .element, auxiliaryKey: ._element)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try codeSystem.encode(on: &_container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		try element.encode(on: &_container, forKey: .element, auxiliaryKey: ._element)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
