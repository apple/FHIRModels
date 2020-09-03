//
//  Evidence.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Evidence)
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
 Single evidence bit.
 
 This represents statistics, certainty, both the intended and actual population, and evidence variables.
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class Evidence: DomainResource {
	
	override open class var resourceType: ResourceType { return .evidence }
	
	/// Canonical identifier for this evidence, represented as a globally unique URI
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the summary
	public var identifier: [Identifier]?
	
	/// Business version of this summary
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this summary (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this summary. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// When the summary was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the summary was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
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
	
	/// Link or citation to artifact associated with the summary
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Description of the particular summary
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Declarative description of the Evidence
	public var assertion: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Evidence variable such as population, exposure, or outcome
	public var variableDefinition: [EvidenceVariableDefinition]
	
	/// The particular type of synthesis if this is a synthesis summary
	public var synthesisType: CodeableConcept?
	
	/// The type of study that produced this summary
	public var studyType: CodeableConcept?
	
	/// Values and parameters for a single statistic
	public var statistic: [Statistic]?
	
	/// An ordered group of statistics
	public var distribution: [OrderedDistribution]?
	
	/// Level of certainty
	public var certainty: [EvidenceCertainty]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, variableDefinition: [EvidenceVariableDefinition]) {
		self.status = status
		self.variableDefinition = variableDefinition
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							assertion: FHIRPrimitive<FHIRString>? = nil,
							author: [ContactDetail]? = nil,
							certainty: [EvidenceCertainty]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							distribution: [OrderedDistribution]? = nil,
							editor: [ContactDetail]? = nil,
							endorser: [ContactDetail]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							reviewer: [ContactDetail]? = nil,
							statistic: [Statistic]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							studyType: CodeableConcept? = nil,
							synthesisType: CodeableConcept? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							variableDefinition: [EvidenceVariableDefinition],
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status, variableDefinition: variableDefinition)
		self.approvalDate = approvalDate
		self.assertion = assertion
		self.author = author
		self.certainty = certainty
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.distribution = distribution
		self.editor = editor
		self.endorser = endorser
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.publisher = publisher
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.statistic = statistic
		self.studyType = studyType
		self.synthesisType = synthesisType
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case assertion; case _assertion
		case author
		case certainty
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case distribution
		case editor
		case endorser
		case identifier
		case lastReviewDate; case _lastReviewDate
		case note
		case publisher; case _publisher
		case relatedArtifact
		case reviewer
		case statistic
		case status; case _status
		case studyType
		case synthesisType
		case title; case _title
		case url; case _url
		case useContext
		case variableDefinition
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.assertion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .assertion, auxiliaryKey: ._assertion)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.certainty = try [EvidenceCertainty](from: _container, forKeyIfPresent: .certainty)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.distribution = try [OrderedDistribution](from: _container, forKeyIfPresent: .distribution)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.statistic = try [Statistic](from: _container, forKeyIfPresent: .statistic)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyType = try CodeableConcept(from: _container, forKeyIfPresent: .studyType)
		self.synthesisType = try CodeableConcept(from: _container, forKeyIfPresent: .synthesisType)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variableDefinition = try [EvidenceVariableDefinition](from: _container, forKey: .variableDefinition)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try assertion?.encode(on: &_container, forKey: .assertion, auxiliaryKey: ._assertion)
		try author?.encode(on: &_container, forKey: .author)
		try certainty?.encode(on: &_container, forKey: .certainty)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try distribution?.encode(on: &_container, forKey: .distribution)
		try editor?.encode(on: &_container, forKey: .editor)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try note?.encode(on: &_container, forKey: .note)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try statistic?.encode(on: &_container, forKey: .statistic)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyType?.encode(on: &_container, forKey: .studyType)
		try synthesisType?.encode(on: &_container, forKey: .synthesisType)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variableDefinition.encode(on: &_container, forKey: .variableDefinition)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Evidence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && assertion == _other.assertion
		    && author == _other.author
		    && certainty == _other.certainty
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && distribution == _other.distribution
		    && editor == _other.editor
		    && endorser == _other.endorser
		    && identifier == _other.identifier
		    && lastReviewDate == _other.lastReviewDate
		    && note == _other.note
		    && publisher == _other.publisher
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && statistic == _other.statistic
		    && status == _other.status
		    && studyType == _other.studyType
		    && synthesisType == _other.synthesisType
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && variableDefinition == _other.variableDefinition
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(assertion)
		hasher.combine(author)
		hasher.combine(certainty)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(distribution)
		hasher.combine(editor)
		hasher.combine(endorser)
		hasher.combine(identifier)
		hasher.combine(lastReviewDate)
		hasher.combine(note)
		hasher.combine(publisher)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(statistic)
		hasher.combine(status)
		hasher.combine(studyType)
		hasher.combine(synthesisType)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(variableDefinition)
		hasher.combine(version)
	}
}

/**
 Level of certainty.
 */
open class EvidenceCertainty: BackboneElement {
	
	/// Textual description of certainty
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Quality or certainty of the Evidence
	public var rating: [CodeableConcept]?
	
	/// A domain or subdomain of certainty rating
	public var certaintySubcomponent: [EvidenceCertaintyCertaintySubcomponent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							certaintySubcomponent: [EvidenceCertaintyCertaintySubcomponent]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							rating: [CodeableConcept]? = nil)
	{
		self.init()
		self.certaintySubcomponent = certaintySubcomponent
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.rating = rating
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case certaintySubcomponent
		case description_fhir = "description"; case _description_fhir = "_description"
		case note
		case rating
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.certaintySubcomponent = try [EvidenceCertaintyCertaintySubcomponent](from: _container, forKeyIfPresent: .certaintySubcomponent)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rating = try [CodeableConcept](from: _container, forKeyIfPresent: .rating)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try certaintySubcomponent?.encode(on: &_container, forKey: .certaintySubcomponent)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try note?.encode(on: &_container, forKey: .note)
		try rating?.encode(on: &_container, forKey: .rating)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceCertainty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return certaintySubcomponent == _other.certaintySubcomponent
		    && description_fhir == _other.description_fhir
		    && note == _other.note
		    && rating == _other.rating
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(certaintySubcomponent)
		hasher.combine(description_fhir)
		hasher.combine(note)
		hasher.combine(rating)
	}
}

/**
 A domain or subdomain of certainty rating.
 */
open class EvidenceCertaintyCertaintySubcomponent: BackboneElement {
	
	/// Textual description of certainty subcomponent
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Aspect of quality or certainty being rated
	public var type: [CodeableConcept]?
	
	/// Quality or certainty of the aspect
	public var rating: [CodeableConcept]?
	
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
							rating: [CodeableConcept]? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.rating = rating
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case note
		case rating
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.rating = try [CodeableConcept](from: _container, forKeyIfPresent: .rating)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try note?.encode(on: &_container, forKey: .note)
		try rating?.encode(on: &_container, forKey: .rating)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceCertaintyCertaintySubcomponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && note == _other.note
		    && rating == _other.rating
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(note)
		hasher.combine(rating)
		hasher.combine(type)
	}
}

/**
 Evidence variable such as population, exposure, or outcome.
 */
open class EvidenceVariableDefinition: BackboneElement {
	
	/// A text description or summary of the variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// population | subpopulation | exposure | referenceExposure | measuredVariable | confounder
	public var variableRole: CodeableConcept
	
	/// Definition of the actual variable related to the statistic(s)
	public var observed: Reference?
	
	/// Definition of the intended variable related to the Evidence
	public var intended: Reference?
	
	/// low | moderate | high | exact
	public var directnessMatch: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(variableRole: CodeableConcept) {
		self.variableRole = variableRole
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							directnessMatch: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							intended: Reference? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							observed: Reference? = nil,
							variableRole: CodeableConcept)
	{
		self.init(variableRole: variableRole)
		self.description_fhir = description_fhir
		self.directnessMatch = directnessMatch
		self.`extension` = `extension`
		self.id = id
		self.intended = intended
		self.modifierExtension = modifierExtension
		self.note = note
		self.observed = observed
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case directnessMatch
		case intended
		case note
		case observed
		case variableRole
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.directnessMatch = try CodeableConcept(from: _container, forKeyIfPresent: .directnessMatch)
		self.intended = try Reference(from: _container, forKeyIfPresent: .intended)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.observed = try Reference(from: _container, forKeyIfPresent: .observed)
		self.variableRole = try CodeableConcept(from: _container, forKey: .variableRole)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try directnessMatch?.encode(on: &_container, forKey: .directnessMatch)
		try intended?.encode(on: &_container, forKey: .intended)
		try note?.encode(on: &_container, forKey: .note)
		try observed?.encode(on: &_container, forKey: .observed)
		try variableRole.encode(on: &_container, forKey: .variableRole)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EvidenceVariableDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && directnessMatch == _other.directnessMatch
		    && intended == _other.intended
		    && note == _other.note
		    && observed == _other.observed
		    && variableRole == _other.variableRole
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(directnessMatch)
		hasher.combine(intended)
		hasher.combine(note)
		hasher.combine(observed)
		hasher.combine(variableRole)
	}
}
