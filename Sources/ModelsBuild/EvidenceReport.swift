//
//  EvidenceReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/EvidenceReport)
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
 A EvidenceReport.
 
 The EvidenceReport.
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class EvidenceReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .evidenceReport }
	
	/// Canonical identifier for this EvidenceReport, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// May include DOI, PMID, PMCID, etc.
	public var identifier: [Identifier]?
	
	/// May include trial registry identifiers
	public var relatedIdentifier: [Identifier]?
	
	/// Citation for this report
	public var citeAs: Reference?
	
	/// Kind of report
	public var type: CodeableConcept?
	
	/// Used for footnotes and annotations
	public var note: [Annotation]?
	
	/// Link, description or reference to artifact associated with the report
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Focus of the report
	public var subject: EvidenceReportSubject
	
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
	
	/// Relationships to other compositions/documents
	public var relatesTo: [EvidenceReportRelatesTo]?
	
	/// Composition is broken into sections
	public var section: [EvidenceReportSection]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, subject: EvidenceReportSubject) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: [ContactDetail]? = nil,
							citeAs: Reference? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							editor: [ContactDetail]? = nil,
							endorser: [ContactDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							relatedIdentifier: [Identifier]? = nil,
							relatesTo: [EvidenceReportRelatesTo]? = nil,
							reviewer: [ContactDetail]? = nil,
							section: [EvidenceReportSection]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							subject: EvidenceReportSubject,
							text: Narrative? = nil,
							type: CodeableConcept? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil)
	{
		self.init(status: status, subject: subject)
		self.author = author
		self.citeAs = citeAs
		self.contact = contact
		self.contained = contained
		self.editor = editor
		self.endorser = endorser
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.relatedIdentifier = relatedIdentifier
		self.relatesTo = relatesTo
		self.reviewer = reviewer
		self.section = section
		self.text = text
		self.type = type
		self.url = url
		self.useContext = useContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case citeAs
		case contact
		case editor
		case endorser
		case identifier
		case note
		case publisher; case _publisher
		case relatedArtifact
		case relatedIdentifier
		case relatesTo
		case reviewer
		case section
		case status; case _status
		case subject
		case type
		case url; case _url
		case useContext
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.citeAs = try Reference(from: _container, forKeyIfPresent: .citeAs)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.relatedIdentifier = try [Identifier](from: _container, forKeyIfPresent: .relatedIdentifier)
		self.relatesTo = try [EvidenceReportRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.section = try [EvidenceReportSection](from: _container, forKeyIfPresent: .section)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try EvidenceReportSubject(from: _container, forKey: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try citeAs?.encode(on: &_container, forKey: .citeAs)
		try contact?.encode(on: &_container, forKey: .contact)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try relatedIdentifier?.encode(on: &_container, forKey: .relatedIdentifier)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try section?.encode(on: &_container, forKey: .section)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceReport else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && citeAs == _other.citeAs
		    && contact == _other.contact
		    && editor == _other.editor
		    && endorser == _other.endorser
		    && identifier == _other.identifier
		    && note == _other.note
		    && publisher == _other.publisher
		    && relatedArtifact == _other.relatedArtifact
		    && relatedIdentifier == _other.relatedIdentifier
		    && relatesTo == _other.relatesTo
		    && reviewer == _other.reviewer
		    && section == _other.section
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(citeAs)
		hasher.combine(contact)
		hasher.combine(editor)
		hasher.combine(endorser)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(publisher)
		hasher.combine(relatedArtifact)
		hasher.combine(relatedIdentifier)
		hasher.combine(relatesTo)
		hasher.combine(reviewer)
		hasher.combine(section)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
	}
}

/**
 Relationships to other compositions/documents.
 
 Relationships that this composition has with other compositions or documents that already exist.
 */
open class EvidenceReportRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case identifier(Identifier)
		case reference(Reference)
	}
	
	/// The type of relationship that this composition has with anther composition or document.
	public var code: FHIRPrimitive<ReportRelationshipType>
	
	/// Target of the relationship
	/// One of `target[x]`
	public var target: TargetX
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<ReportRelationshipType>, target: TargetX) {
		self.code = code
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<ReportRelationshipType>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							target: TargetX)
	{
		self.init(code: code, target: target)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case targetIdentifier
		case targetReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.targetIdentifier) || _container.contains(CodingKeys.targetReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.targetIdentifier, CodingKeys.targetReference], debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		
		// Decode all our properties
		self.code = try FHIRPrimitive<ReportRelationshipType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		var _t_target: TargetX? = nil
		if let targetIdentifier = try Identifier(from: _container, forKeyIfPresent: .targetIdentifier) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetIdentifier, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .identifier(targetIdentifier)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		self.target = _t_target!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		
			switch target {
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .targetIdentifier)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceReportRelatesTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(target)
	}
}

/**
 Composition is broken into sections.
 
 The root of the sections that make up the composition.
 */
open class EvidenceReportSection: BackboneElement {
	
	/// Label for section (e.g. for ToC)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Classification of section (recommended)
	public var focus: CodeableConcept?
	
	/// Classification of section by Resource
	public var focusReference: Reference?
	
	/// Who and/or what authored the section
	public var author: [Reference]?
	
	/// Text summary of the section, for human interpretation
	public var text: Narrative?
	
	/// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an
	/// ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a
	/// prepared list where items may be marked as added, modified or deleted.
	public var mode: FHIRPrimitive<ListMode>?
	
	/// Order of section entries
	public var orderedBy: CodeableConcept?
	
	/// Extensible classifiers
	public var entryClassifier: [CodeableConcept]?
	
	/// A reference to data that supports this section
	public var entryReference: [Reference]?
	
	/// Why the section is empty
	public var emptyReason: CodeableConcept?
	
	/// Nested Section
	public var section: [EvidenceReportSection]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: [Reference]? = nil,
							emptyReason: CodeableConcept? = nil,
							entryClassifier: [CodeableConcept]? = nil,
							entryReference: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							focus: CodeableConcept? = nil,
							focusReference: Reference? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<ListMode>? = nil,
							modifierExtension: [Extension]? = nil,
							orderedBy: CodeableConcept? = nil,
							section: [EvidenceReportSection]? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.author = author
		self.emptyReason = emptyReason
		self.entryClassifier = entryClassifier
		self.entryReference = entryReference
		self.`extension` = `extension`
		self.focus = focus
		self.focusReference = focusReference
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.orderedBy = orderedBy
		self.section = section
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case emptyReason
		case entryClassifier
		case entryReference
		case focus
		case focusReference
		case mode; case _mode
		case orderedBy
		case section
		case text
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.emptyReason = try CodeableConcept(from: _container, forKeyIfPresent: .emptyReason)
		self.entryClassifier = try [CodeableConcept](from: _container, forKeyIfPresent: .entryClassifier)
		self.entryReference = try [Reference](from: _container, forKeyIfPresent: .entryReference)
		self.focus = try CodeableConcept(from: _container, forKeyIfPresent: .focus)
		self.focusReference = try Reference(from: _container, forKeyIfPresent: .focusReference)
		self.mode = try FHIRPrimitive<ListMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.orderedBy = try CodeableConcept(from: _container, forKeyIfPresent: .orderedBy)
		self.section = try [EvidenceReportSection](from: _container, forKeyIfPresent: .section)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try emptyReason?.encode(on: &_container, forKey: .emptyReason)
		try entryClassifier?.encode(on: &_container, forKey: .entryClassifier)
		try entryReference?.encode(on: &_container, forKey: .entryReference)
		try focus?.encode(on: &_container, forKey: .focus)
		try focusReference?.encode(on: &_container, forKey: .focusReference)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try orderedBy?.encode(on: &_container, forKey: .orderedBy)
		try section?.encode(on: &_container, forKey: .section)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceReportSection else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && emptyReason == _other.emptyReason
		    && entryClassifier == _other.entryClassifier
		    && entryReference == _other.entryReference
		    && focus == _other.focus
		    && focusReference == _other.focusReference
		    && mode == _other.mode
		    && orderedBy == _other.orderedBy
		    && section == _other.section
		    && text == _other.text
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(emptyReason)
		hasher.combine(entryClassifier)
		hasher.combine(entryReference)
		hasher.combine(focus)
		hasher.combine(focusReference)
		hasher.combine(mode)
		hasher.combine(orderedBy)
		hasher.combine(section)
		hasher.combine(text)
		hasher.combine(title)
	}
}

/**
 Focus of the report.
 
 Specifies the subject or focus of the report. Answers "What is this report about?".
 */
open class EvidenceReportSubject: BackboneElement {
	
	/// Characteristic
	public var characteristic: [EvidenceReportSubjectCharacteristic]?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							characteristic: [EvidenceReportSubjectCharacteristic]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil)
	{
		self.init()
		self.characteristic = characteristic
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristic
		case note
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.characteristic = try [EvidenceReportSubjectCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try note?.encode(on: &_container, forKey: .note)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceReportSubject else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return characteristic == _other.characteristic
		    && note == _other.note
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(characteristic)
		hasher.combine(note)
	}
}

/**
 Characteristic.
 */
open class EvidenceReportSubjectCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
	}
	
	/// Characteristic code
	public var code: CodeableConcept
	
	/// Characteristic value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Is used to express not the characteristic
	public var exclude: FHIRPrimitive<FHIRBool>?
	
	/// Timeframe for the characteristic
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, value: ValueX) {
		self.code = code
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							exclude: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							value: ValueX)
	{
		self.init(code: code, value: value)
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case exclude; case _exclude
		case period
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueReference], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		var _t_value: ValueX? = nil
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
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
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try period?.encode(on: &_container, forKey: .period)
		
			switch value {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceReportSubjectCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && exclude == _other.exclude
		    && period == _other.period
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(exclude)
		hasher.combine(period)
		hasher.combine(value)
	}
}
