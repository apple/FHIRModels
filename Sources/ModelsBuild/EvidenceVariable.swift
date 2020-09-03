//
//  EvidenceVariable.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
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
 A definition of an exposure, outcome, or other variable.
 
 The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class EvidenceVariable: DomainResource {
	
	override open class var resourceType: ResourceType { return .evidenceVariable }
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the evidence variable
	public var identifier: [Identifier]?
	
	/// Business version of the evidence variable
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this evidence variable (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this evidence variable (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Title for use in informal contexts
	public var shortTitle: FHIRPrimitive<FHIRString>?
	
	/// Subordinate title of the EvidenceVariable
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this evidence variable. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the evidence variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Actual or conceptual
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Used to specify if two or more characteristics are combined with OR or AND.
	public var characteristicCombination: FHIRPrimitive<CharacteristicCombination>?
	
	/// What defines the members of the evidence element
	public var characteristic: [EvidenceVariableCharacteristic]?
	
	/// Used for an outcome to classify.
	public var handling: FHIRPrimitive<EvidenceVariableHandling>?
	
	/// A grouping for ordinal or polychotomous variables
	public var category: [EvidenceVariableCategory]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actual: FHIRPrimitive<FHIRBool>? = nil,
							author: [ContactDetail]? = nil,
							category: [EvidenceVariableCategory]? = nil,
							characteristic: [EvidenceVariableCharacteristic]? = nil,
							characteristicCombination: FHIRPrimitive<CharacteristicCombination>? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							editor: [ContactDetail]? = nil,
							endorser: [ContactDetail]? = nil,
							`extension`: [Extension]? = nil,
							handling: FHIRPrimitive<EvidenceVariableHandling>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							note: [Annotation]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							reviewer: [ContactDetail]? = nil,
							shortTitle: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							subtitle: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
		self.actual = actual
		self.author = author
		self.category = category
		self.characteristic = characteristic
		self.characteristicCombination = characteristicCombination
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.endorser = endorser
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.shortTitle = shortTitle
		self.subtitle = subtitle
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actual; case _actual
		case author
		case category
		case characteristic
		case characteristicCombination; case _characteristicCombination
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case endorser
		case handling; case _handling
		case identifier
		case name; case _name
		case note
		case publisher; case _publisher
		case relatedArtifact
		case reviewer
		case shortTitle; case _shortTitle
		case status; case _status
		case subtitle; case _subtitle
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.category = try [EvidenceVariableCategory](from: _container, forKeyIfPresent: .category)
		self.characteristic = try [EvidenceVariableCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.characteristicCombination = try FHIRPrimitive<CharacteristicCombination>(from: _container, forKeyIfPresent: .characteristicCombination, auxiliaryKey: ._characteristicCombination)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.handling = try FHIRPrimitive<EvidenceVariableHandling>(from: _container, forKeyIfPresent: .handling, auxiliaryKey: ._handling)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.shortTitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .shortTitle, auxiliaryKey: ._shortTitle)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
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
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try characteristicCombination?.encode(on: &_container, forKey: .characteristicCombination, auxiliaryKey: ._characteristicCombination)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try handling?.encode(on: &_container, forKey: .handling, auxiliaryKey: ._handling)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try shortTitle?.encode(on: &_container, forKey: .shortTitle, auxiliaryKey: ._shortTitle)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actual == _other.actual
		    && author == _other.author
		    && category == _other.category
		    && characteristic == _other.characteristic
		    && characteristicCombination == _other.characteristicCombination
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && endorser == _other.endorser
		    && handling == _other.handling
		    && identifier == _other.identifier
		    && name == _other.name
		    && note == _other.note
		    && publisher == _other.publisher
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && shortTitle == _other.shortTitle
		    && status == _other.status
		    && subtitle == _other.subtitle
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actual)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(characteristic)
		hasher.combine(characteristicCombination)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(endorser)
		hasher.combine(handling)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(publisher)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(shortTitle)
		hasher.combine(status)
		hasher.combine(subtitle)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 A grouping for ordinal or polychotomous variables.
 
 A grouping (or set of values) described along with other groupings to specify the set of groupings allowed for the
 variable.
 */
open class EvidenceVariableCategory: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Description of the grouping
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Definition of the grouping
	/// One of `value[x]`
	public var value: ValueX?
	
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
							value: ValueX? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCategory else {
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
 What defines the members of the evidence element.
 
 A characteristic that defines the members of the evidence element. Multiple characteristics are applied with "and"
 semantics.
 */
open class EvidenceVariableCharacteristic: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case codeableConcept(CodeableConcept)
		case expression(Expression)
		case reference(Reference)
	}
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// What code or expression defines members?
	/// One of `definition[x]`
	public var definition: DefinitionX
	
	/// Method used for describing characteristic
	public var method: CodeableConcept?
	
	/// Device used for determining characteristic
	public var device: Reference?
	
	/// Whether the characteristic includes or excludes members
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Observation time from study start
	public var timeFromStart: EvidenceVariableCharacteristicTimeFromStart?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var groupMeasure: FHIRPrimitive<GroupMeasure>?
	
	/// Designated initializer taking all required properties
	public init(definition: DefinitionX) {
		self.definition = definition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							definition: DefinitionX,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							device: Reference? = nil,
							exclude: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							groupMeasure: FHIRPrimitive<GroupMeasure>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							timeFromStart: EvidenceVariableCharacteristicTimeFromStart? = nil)
	{
		self.init(definition: definition)
		self.description_fhir = description_fhir
		self.device = device
		self.exclude = exclude
		self.`extension` = `extension`
		self.groupMeasure = groupMeasure
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.timeFromStart = timeFromStart
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definitionCanonical; case _definitionCanonical
		case definitionCodeableConcept
		case definitionExpression
		case definitionReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case device
		case exclude; case _exclude
		case groupMeasure; case _groupMeasure
		case method
		case timeFromStart
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.definitionCanonical) || _container.contains(CodingKeys.definitionCodeableConcept) || _container.contains(CodingKeys.definitionExpression) || _container.contains(CodingKeys.definitionReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.definitionCanonical, CodingKeys.definitionCodeableConcept, CodingKeys.definitionExpression, CodingKeys.definitionReference], debugDescription: "Must have at least one value for \"definition\" but have none"))
		}
		
		// Decode all our properties
		var _t_definition: DefinitionX? = nil
		if let definitionReference = try Reference(from: _container, forKeyIfPresent: .definitionReference) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionReference, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .reference(definitionReference)
		}
		if let definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionCanonical, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .canonical(definitionCanonical)
		}
		if let definitionCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .definitionCodeableConcept) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionCodeableConcept, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .codeableConcept(definitionCodeableConcept)
		}
		if let definitionExpression = try Expression(from: _container, forKeyIfPresent: .definitionExpression) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionExpression, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .expression(definitionExpression)
		}
		self.definition = _t_definition!
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.groupMeasure = try FHIRPrimitive<GroupMeasure>(from: _container, forKeyIfPresent: .groupMeasure, auxiliaryKey: ._groupMeasure)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.timeFromStart = try EvidenceVariableCharacteristicTimeFromStart(from: _container, forKeyIfPresent: .timeFromStart)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch definition {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .definitionReference)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .definitionCodeableConcept)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .definitionExpression)
			}
		
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try device?.encode(on: &_container, forKey: .device)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try groupMeasure?.encode(on: &_container, forKey: .groupMeasure, auxiliaryKey: ._groupMeasure)
		try method?.encode(on: &_container, forKey: .method)
		try timeFromStart?.encode(on: &_container, forKey: .timeFromStart)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && device == _other.device
		    && exclude == _other.exclude
		    && groupMeasure == _other.groupMeasure
		    && method == _other.method
		    && timeFromStart == _other.timeFromStart
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(device)
		hasher.combine(exclude)
		hasher.combine(groupMeasure)
		hasher.combine(method)
		hasher.combine(timeFromStart)
	}
}

/**
 Observation time from study start.
 
 Indicates duration, period, or point of observation from the participant's study entry.
 */
open class EvidenceVariableCharacteristicTimeFromStart: BackboneElement {
	
	/// Human readable description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used to express the observation at a defined amount of time after the study start
	public var quantity: Quantity?
	
	/// Used to express the observation within a period after the study start
	public var range: Range?
	
	/// Used for footnotes or explanatory notes
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							quantity: Quantity? = nil,
							range: Range? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.quantity = quantity
		self.range = range
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case note
		case quantity
		case range
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try note?.encode(on: &_container, forKey: .note)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try range?.encode(on: &_container, forKey: .range)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableCharacteristicTimeFromStart else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && note == _other.note
		    && quantity == _other.quantity
		    && range == _other.range
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(note)
		hasher.combine(quantity)
		hasher.combine(range)
	}
}
