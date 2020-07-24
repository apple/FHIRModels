//
//  ConceptMap.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ConceptMap)
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
	
	/// Logical URI to reference this concept map (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the concept map
	public var identifier: Identifier?
	
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
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the concept map
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for concept map (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this concept map is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Identifies the source of the concepts which are being mapped
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Provides context to the mappings
	/// One of `target[x]`
	public var target: TargetX?
	
	/// Same source and target systems
	public var group: [ConceptMapGroup]?
	
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
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
		case sourceReference
		case sourceUri; case _sourceUri
		case status; case _status
		case targetReference
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
		self.group = try [ConceptMapGroup](from: _container, forKeyIfPresent: .group)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
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
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
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
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
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
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = target {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
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
open class ConceptMapGroup: BackboneElement {
	
	/// Code System (if value set crosses code systems)
	public var source: FHIRPrimitive<FHIRURI>?
	
	/// Specific version of the  code system
	public var sourceVersion: FHIRPrimitive<FHIRString>?
	
	/// System of the target (if necessary)
	public var target: FHIRPrimitive<FHIRURI>?
	
	/// Specific version of the  code system
	public var targetVersion: FHIRPrimitive<FHIRString>?
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapGroupElement]
	
	/// When no match in the mappings
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
							source: FHIRPrimitive<FHIRURI>? = nil,
							sourceVersion: FHIRPrimitive<FHIRString>? = nil,
							target: FHIRPrimitive<FHIRURI>? = nil,
							targetVersion: FHIRPrimitive<FHIRString>? = nil,
							unmapped: ConceptMapGroupUnmapped? = nil)
	{
		self.init(element: element)
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
		case source; case _source
		case sourceVersion; case _sourceVersion
		case target; case _target
		case targetVersion; case _targetVersion
		case unmapped
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.element = try [ConceptMapGroupElement](from: _container, forKey: .element)
		self.source = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.sourceVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceVersion, auxiliaryKey: ._sourceVersion)
		self.target = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .target, auxiliaryKey: ._target)
		self.targetVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetVersion, auxiliaryKey: ._targetVersion)
		self.unmapped = try ConceptMapGroupUnmapped(from: _container, forKeyIfPresent: .unmapped)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try element.encode(on: &_container, forKey: .element)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try sourceVersion?.encode(on: &_container, forKey: .sourceVersion, auxiliaryKey: ._sourceVersion)
		try target?.encode(on: &_container, forKey: .target, auxiliaryKey: ._target)
		try targetVersion?.encode(on: &_container, forKey: .targetVersion, auxiliaryKey: ._targetVersion)
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
		    && sourceVersion == _other.sourceVersion
		    && target == _other.target
		    && targetVersion == _other.targetVersion
		    && unmapped == _other.unmapped
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(element)
		hasher.combine(source)
		hasher.combine(sourceVersion)
		hasher.combine(target)
		hasher.combine(targetVersion)
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
							target: [ConceptMapGroupElementTarget]? = nil)
	{
		self.init()
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
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.target = try [ConceptMapGroupElementTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try target?.encode(on: &_container, forKey: .target)
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
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(target)
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
	
	/// The equivalence between the source and target concepts (counting for the dependencies and products). The
	/// equivalence is read from target to source (e.g. the target is 'wider' than the source).
	public var equivalence: FHIRPrimitive<ConceptMapEquivalence>?
	
	/// Description of status/issues in mapping
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>? = nil,
							comment: FHIRPrimitive<FHIRString>? = nil,
							dependsOn: [ConceptMapGroupElementTargetDependsOn]? = nil,
							display: FHIRPrimitive<FHIRString>? = nil,
							equivalence: FHIRPrimitive<ConceptMapEquivalence>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							product: [ConceptMapGroupElementTargetDependsOn]? = nil)
	{
		self.init()
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
		case product
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.dependsOn = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .dependsOn)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.equivalence = try FHIRPrimitive<ConceptMapEquivalence>(from: _container, forKeyIfPresent: .equivalence, auxiliaryKey: ._equivalence)
		self.product = try [ConceptMapGroupElementTargetDependsOn](from: _container, forKeyIfPresent: .product)
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
		try equivalence?.encode(on: &_container, forKey: .equivalence, auxiliaryKey: ._equivalence)
		try product?.encode(on: &_container, forKey: .product)
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
		    && equivalence == _other.equivalence
		    && product == _other.product
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(comment)
		hasher.combine(dependsOn)
		hasher.combine(display)
		hasher.combine(equivalence)
		hasher.combine(product)
	}
}

/**
 Other elements required for this mapping (from context).
 
 A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can
 be resolved, and it has the specified value.
 */
open class ConceptMapGroupElementTargetDependsOn: BackboneElement {
	
	/// Reference to property mapping depends on
	public var property: FHIRPrimitive<FHIRURI>
	
	/// Code System (if necessary)
	public var system: FHIRPrimitive<FHIRURI>?
	
	/// Value of the referenced element
	public var code: FHIRPrimitive<FHIRString>
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, property: FHIRPrimitive<FHIRURI>) {
		self.code = code
		self.property = property
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<FHIRString>,
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							property: FHIRPrimitive<FHIRURI>,
							system: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(code: code, property: property)
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.system = system
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case property; case _property
		case system; case _system
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.property = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .property, auxiliaryKey: ._property)
		self.system = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .system, auxiliaryKey: ._system)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try property.encode(on: &_container, forKey: .property, auxiliaryKey: ._property)
		try system?.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
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
		return code == _other.code
		    && display == _other.display
		    && property == _other.property
		    && system == _other.system
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(property)
		hasher.combine(system)
	}
}

/**
 When no match in the mappings.
 
 What to do when there is no match in the mappings in the group.
 */
open class ConceptMapGroupUnmapped: BackboneElement {
	
	/// Defines which action to take if there is no match in the group. One of 3 actions is possible: use the unmapped
	/// code (this is useful when doing a mapping between versions, and only a few codes have changed), use a fixed code
	/// (a default code), or alternatively, a reference to a different concept map can be provided (by canonical URL).
	public var mode: FHIRPrimitive<ConceptMapGroupUnmappedMode>
	
	/// Fixed code when mode = fixed
	public var code: FHIRPrimitive<FHIRString>?
	
	/// Display for the code
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Canonical URL for other concept map
	public var url: FHIRPrimitive<FHIRURI>?
	
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
							url: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(mode: mode)
		self.code = code
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case display; case _display
		case mode; case _mode
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .code, auxiliaryKey: ._code)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.mode = try FHIRPrimitive<ConceptMapGroupUnmappedMode>(from: _container, forKey: .mode, auxiliaryKey: ._mode)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(display)
		hasher.combine(mode)
		hasher.combine(url)
	}
}
