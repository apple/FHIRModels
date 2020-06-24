//
//  ConceptMap.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ConceptMap)
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
 A map from one set of concepts to one or more other concepts.
 
 A statement of relationships from one set of concepts to one or more other concepts - either code systems or data
 elements, or classes in class models.
 */
open class ConceptMap: DomainResource {
	
	override open class var resourceType: ResourceType { return .conceptMap }
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Globally unique logical id for concept map
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the concept map
	public var identifier: Identifier?
	
	/// Logical id for this version of the concept map
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Informal name for this concept map
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of the concept map.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [ConceptMapContact]?
	
	/// Date for given status
	public var date: FHIRPrimitive<DateTime>?
	
	/// Human language description of the concept map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Why needed
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Identifies the source of the concepts which are being mapped
	/// One of `source[x]`
	public var source: SourceX
	
	/// Provides context to the mappings
	/// One of `target[x]`
	public var target: TargetX
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapElement]?
	
	/// Designated initializer taking all required properties
	public init(source: SourceX, status: FHIRPrimitive<ConformanceResourceStatus>, target: TargetX) {
		self.source = source
		self.status = status
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(source: source, status: status, target: target)
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
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case element
		case experimental; case _experimental
		case identifier
		case name; case _name
		case publisher; case _publisher
		case requirements; case _requirements
		case sourceReference
		case sourceUri; case _sourceUri
		case status; case _status
		case targetReference
		case targetUri; case _targetUri
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.sourceReference) || _container.contains(CodingKeys.sourceUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.sourceReference, CodingKeys.sourceUri], debugDescription: "Must have at least one value for \"source\" but have none"))
		}
		guard _container.contains(CodingKeys.targetReference) || _container.contains(CodingKeys.targetUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.targetReference, CodingKeys.targetUri], debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		
		// Decode all our properties
		self.contact = try [ConceptMapContact](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.element = try [ConceptMapElement](from: _container, forKeyIfPresent: .element)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		var _t_source: SourceX? = nil
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
		}
		self.source = _t_source!
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		var _t_target: TargetX? = nil
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		self.target = _t_target!
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try element?.encode(on: &_container, forKey: .element)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		
			switch source {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		
			switch target {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
			}
		
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
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
		return contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && element == _other.element
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && name == _other.name
		    && publisher == _other.publisher
		    && requirements == _other.requirements
		    && source == _other.source
		    && status == _other.status
		    && target == _other.target
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(element)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(requirements)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(target)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class ConceptMapContact: BackboneElement {
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(telecom)
	}
}

/**
 Mappings for a concept from the source set.
 
 Mappings for an individual concept in the source to one or more concepts in the target.
 */
open class ConceptMapElement: BackboneElement {
	
	/// Code System (if value set crosses code systems)
	public var codeSystem: FHIRPrimitive<FHIRURI>?
	
	/// Identifies element being mapped
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Concept in target system for element
	public var target: [ConceptMapElementTarget]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>? = nil,
							codeSystem: FHIRPrimitive<FHIRURI>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							target: [ConceptMapElementTarget]? = nil)
	{
		self.init()
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
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.codeSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .codeSystem, auxiliaryKey: ._codeSystem)
		self.target = try [ConceptMapElementTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapElement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && codeSystem == _other.codeSystem
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(codeSystem)
		hasher.combine(target)
	}
}

/**
 Concept in target system for element.
 
 A concept from the target value set that this concept maps to.
 */
open class ConceptMapElementTarget: BackboneElement {
	
	/// System of the target (if necessary)
	public var codeSystem: FHIRPrimitive<FHIRURI>?
	
	/// Code that identifies the target element
	public var code: FHIRPrimitive<FHIRString>?
	
	/// The equivalence between the source and target concepts (counting for the dependencies and products). The
	/// equivalence is read from target to source (e.g. the target is 'wider' than the source).
	/// Restricted to: ['equivalent', 'wider', 'subsumes', 'narrower', 'specializes', 'inexact', 'unmatched']
	public var equivalence: FHIRPrimitive<ConceptMapEquivalence>
	
	/// Description of status/issues in mapping
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMapElementTargetDependsOn]?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMapElementTargetDependsOn]?
	
	/// Designated initializer taking all required properties
	public init(equivalence: FHIRPrimitive<ConceptMapEquivalence>) {
		self.equivalence = equivalence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>? = nil,
							codeSystem: FHIRPrimitive<FHIRURI>? = nil,
							comments: FHIRPrimitive<FHIRString>? = nil,
							dependsOn: [ConceptMapElementTargetDependsOn]? = nil,
							equivalence: FHIRPrimitive<ConceptMapEquivalence>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							product: [ConceptMapElementTargetDependsOn]? = nil)
	{
		self.init(equivalence: equivalence)
		self.code = code
		self.codeSystem = codeSystem
		self.comments = comments
		self.dependsOn = dependsOn
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
		case product
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.codeSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .codeSystem, auxiliaryKey: ._codeSystem)
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.dependsOn = try [ConceptMapElementTargetDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.equivalence = try FHIRPrimitive<ConceptMapEquivalence>(from: _container, forKey: .equivalence, auxiliaryKey: ._equivalence)
		self.product = try [ConceptMapElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try dependsOn?.encode(on: &_container, forKey: .dependsOn)
		try equivalence.encode(on: &_container, forKey: .equivalence, auxiliaryKey: ._equivalence)
		try product?.encode(on: &_container, forKey: .product)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapElementTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && codeSystem == _other.codeSystem
		    && comments == _other.comments
		    && dependsOn == _other.dependsOn
		    && equivalence == _other.equivalence
		    && product == _other.product
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(codeSystem)
		hasher.combine(comments)
		hasher.combine(dependsOn)
		hasher.combine(equivalence)
		hasher.combine(product)
	}
}

/**
 Other elements required for this mapping (from context).
 
 A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can
 be resolved, and it has the specified value.
 */
open class ConceptMapElementTargetDependsOn: BackboneElement {
	
	/// Reference to element/field/ValueSet mapping depends on
	public var element: FHIRPrimitive<FHIRURI>
	
	/// Code System (if necessary)
	public var codeSystem: FHIRPrimitive<FHIRURI>
	
	/// Value of the referenced element
	public var code: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, codeSystem: FHIRPrimitive<FHIRURI>, element: FHIRPrimitive<FHIRURI>) {
		self.code = code
		self.codeSystem = codeSystem
		self.element = element
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							codeSystem: FHIRPrimitive<FHIRURI>,
							element: FHIRPrimitive<FHIRURI>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code, codeSystem: codeSystem, element: element)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case codeSystem; case _codeSystem
		case element; case _element
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.codeSystem = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		self.element = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .element, auxiliaryKey: ._element)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try codeSystem.encode(on: &_container, forKey: .codeSystem, auxiliaryKey: ._codeSystem)
		try element.encode(on: &_container, forKey: .element, auxiliaryKey: ._element)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMapElementTargetDependsOn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && codeSystem == _other.codeSystem
		    && element == _other.element
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(codeSystem)
		hasher.combine(element)
	}
}
