//
//  ConceptMap2.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/ConceptMap2)
//  Copyright 2022 Apple Inc.
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
 
 Interfaces:
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class ConceptMap2: DomainResource {
	
	override open class var resourceType: ResourceType { return .conceptMap2 }
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Canonical identifier for this concept map, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the concept map
	public var identifier: [Identifier]?
	
	/// Business version of the concept map
	public var version: FHIRPrimitive<FHIRString>?
	
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
	
	/// Name of the publisher (organization or individual)
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
	
	/// The source value set that contains the concepts that are being mapped
	/// One of `source[x]`
	public var source: SourceX?
	
	/// The target value set which provides context for the mappings
	/// One of `target[x]`
	public var target: TargetX?
	
	/// Same source and target systems
	public var group: [ConceptMap2Group]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		group: [ConceptMap2Group]? = nil,
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
		source: SourceX? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		target: TargetX? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(status: status)
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
		self.target = target
		self.text = text
		self.title = title
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
		case experimental; case _experimental
		case group
		case identifier
		case jurisdiction
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case sourceCanonical; case _sourceCanonical
		case sourceUri; case _sourceUri
		case status; case _status
		case targetCanonical; case _targetCanonical
		case targetUri; case _targetUri
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.group = try [ConceptMap2Group](from: _container, forKeyIfPresent: .group)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		var _t_source: SourceX? = nil
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		if let sourceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .sourceCanonical, auxiliaryKey: ._sourceCanonical) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceCanonical, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .canonical(sourceCanonical)
		}
		self.source = _t_source
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		var _t_target: TargetX? = nil
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetCanonical, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .canonical(targetCanonical)
		}
		self.target = _t_target
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
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
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		if let _enum = source {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .sourceCanonical, auxiliaryKey: ._sourceCanonical)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = target {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
			}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMap2 else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && group == _other.group
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && source == _other.source
		    && status == _other.status
		    && target == _other.target
		    && title == _other.title
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
		hasher.combine(experimental)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(target)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Same source and target systems.
 
 A group of mappings that all have the same source and target system.
 */
open class ConceptMap2Group: BackboneElement {
	
	/// Source system where concepts to be mapped are defined
	public var source: FHIRPrimitive<Canonical>?
	
	/// Target system that the concepts are to be mapped to
	public var target: FHIRPrimitive<Canonical>?
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMap2GroupElement]
	
	/// What to do when there is no mapping target for the source concept
	public var unmapped: ConceptMap2GroupUnmapped?
	
	/// Designated initializer taking all required properties
	public init(element: [ConceptMap2GroupElement]) {
		self.element = element
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		element: [ConceptMap2GroupElement],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<Canonical>? = nil,
		target: FHIRPrimitive<Canonical>? = nil,
		unmapped: ConceptMap2GroupUnmapped? = nil
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
		self.element = try [ConceptMap2GroupElement](from: _container, forKey: .element)
		self.source = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.target = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.unmapped = try ConceptMap2GroupUnmapped(from: _container, forKeyIfPresent: .unmapped)
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
		guard let _other = _other as? ConceptMap2Group else {
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
open class ConceptMap2GroupElement: BackboneElement {
	
	/// Identifies element being mapped
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Identifies elements being mapped
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// No mapping to a target concept for this source concept
	public var noMap: FHIRPrimitive<FHIRBool>?
	
	/// Concept in target system for element
	public var target: [ConceptMap2GroupElementTarget]?
	
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
		target: [ConceptMap2GroupElementTarget]? = nil,
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
		self.target = try [ConceptMap2GroupElementTarget](from: _container, forKeyIfPresent: .target)
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
		guard let _other = _other as? ConceptMap2GroupElement else {
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
open class ConceptMap2GroupElementTarget: BackboneElement {
	
	/// Code that identifies the target element
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Identifies the set of target elements
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// related-to | equivalent | source-is-narrower-than-target | source-is-broader-than-target | not-related-to
	public var relationship: FHIRPrimitive<FHIRString>
	
	/// Description of status/issues in mapping
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMap2GroupElementTargetDependsOn]?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMap2GroupElementTargetDependsOn]?
	
	/// Designated initializer taking all required properties
	public init(relationship: FHIRPrimitive<FHIRString>) {
		self.relationship = relationship
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: FHIRPrimitive<FHIRString>? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		dependsOn: [ConceptMap2GroupElementTargetDependsOn]? = nil,
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		product: [ConceptMap2GroupElementTargetDependsOn]? = nil,
		relationship: FHIRPrimitive<FHIRString>,
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
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case comment; case _comment
		case dependsOn
		case display; case _display
		case product
		case relationship; case _relationship
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.dependsOn = try [ConceptMap2GroupElementTargetDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.product = try [ConceptMap2GroupElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
		self.relationship = try FHIRPrimitive<FHIRString>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
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
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMap2GroupElementTarget else {
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
		hasher.combine(relationship)
		hasher.combine(valueSet)
	}
}

/**
 Other elements required for this mapping (from context).
 
 A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can
 be resolved, and it has the specified value.
 */
open class ConceptMap2GroupElementTargetDependsOn: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case code(FHIRPrimitive<FHIRString>)
		case coding(Coding)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case id(FHIRPrimitive<FHIRString>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Reference to property mapping depends on
	public var property: FHIRPrimitive<FHIRURI>
	
	/// Value of the referenced property
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(property: FHIRPrimitive<FHIRURI>, value: ValueX) {
		self.property = property
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		property: FHIRPrimitive<FHIRURI>,
		value: ValueX
	) {
		self.init(property: property, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case property; case _property
		case valueBoolean; case _valueBoolean
		case valueCode; case _valueCode
		case valueCoding
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueId; case _valueId
		case valueInteger; case _valueInteger
		case valueString; case _valueString
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCode) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueId) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCode, CodingKeys.valueCoding, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueId, CodingKeys.valueInteger, CodingKeys.valueString, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.property = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .property, auxiliaryKey: ._property)
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
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueId, auxiliaryKey: ._valueId) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueId, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .id(valueId)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try property.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		
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
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .id(let _value):
				try _value.encode(on: &_container, forKey: .valueId, auxiliaryKey: ._valueId)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMap2GroupElementTargetDependsOn else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return property == _other.property
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(property)
		hasher.combine(value)
	}
}

/**
 What to do when there is no mapping target for the source concept.
 
 What to do when there is no mapping to a target concept from the source concept.  This provides the "default" to be
 applied when there is no target concept mapping specified.  The 'unmapped' element is ignored if a code is specified to
 have relationship = not-related-to.
 */
open class ConceptMap2GroupUnmapped: BackboneElement {
	
	/// Defines which action to take if there is no match for the source concept in the target system designated for the
	/// group. One of 3 actions are possible: use the unmapped code (this is useful when doing a mapping between
	/// versions, and only a few codes have changed), use a fixed code (a default code), or alternatively, a reference
	/// to a different concept map can be provided (by canonical URL).
	public var mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>
	
	/// Fixed code when mode = fixed
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Fixed code set when mode = fixed
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// canonical reference to an additional ConceptMap2 to use for mapping if the source concept is unmapped
	public var url: FHIRPrimitive<Canonical>?
	
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
		url: FHIRPrimitive<Canonical>? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.init(mode: mode)
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case mode; case _mode
		case url; case _url
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.mode = try FHIRPrimitive<ConceptMapGroupUnmappedMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.url = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConceptMap2GroupUnmapped else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && display == _other.display
		    && mode == _other.mode
		    && url == _other.url
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(mode)
		hasher.combine(url)
		hasher.combine(valueSet)
	}
}