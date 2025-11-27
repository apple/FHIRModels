//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
//  Copyright 2025 Apple Inc.
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
 Investigation to increase healthcare-related patient-independent knowledge.
 
 A research study is a scientific investigation designed to generate health-related knowledge. This can include clinical
 trials involving human participants (or animals in the case of veterinary clinical trials). These studies may be
 related to new ways to screen, prevent, diagnose, and treat disease. Research studies may also analyze data collected
 from individuals in the past (retrospective studies) or future (prospective studies) to understand specific outcomes or
 trends in particular populations.
 */
open class ResearchStudy: DomainResource {
	
	override open class var resourceType: ResourceType { return .researchStudy }
	
	/// Canonical identifier for this study resource
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business Identifier for study
	public var identifier: [Identifier]?
	
	/// The business version for the study record
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this study (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Human readable name of the study
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Additional names for the study
	public var label: [ResearchStudyLabel]?
	
	/// Steps followed in executing study
	public var `protocol`: [Reference]?
	
	/// Part of larger study
	public var partOf: [Reference]?
	
	/// How to cite this ResearchStudy
	public var citeAs: FHIRPrimitive<FHIRString>?
	
	/// Relationships to other Resources
	public var relatesTo: [ResearchStudyRelatesTo]?
	
	/// Date the resource last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The publication state of the resource (not of the study).
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science |
	/// device-feasibility
	public var primaryPurposeType: CodeableConcept?
	
	/// Classifier used for clinical trials
	public var phase: CodeableConcept?
	
	/// Classifications of the study design characteristics
	public var studyDesign: [CodeableConcept]?
	
	/// Drugs, devices, etc. under study
	public var focus: [CodeableReference]?
	
	/// Condition being studied
	public var condition: [CodeableConcept]?
	
	/// Used to search for the study
	public var keyword: [CodeableConcept]?
	
	/// Geographic area for the study
	public var region: [CodeableConcept]?
	
	/// Brief text explaining the study
	public var descriptionSummary: FHIRPrimitive<FHIRString>?
	
	/// Detailed narrative of the study
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When the study began and ended
	public var period: Period?
	
	/// Facility where study activities are conducted
	public var site: [Reference]?
	
	/// Comments made about the study
	public var note: [Annotation]?
	
	/// Classification for the study
	public var classifier: [CodeableConcept]?
	
	/// Sponsors, collaborators, and other parties
	public var associatedParty: [ResearchStudyAssociatedParty]?
	
	/// Status of study with time for that status
	public var progressStatus: [ResearchStudyProgressStatus]?
	
	/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-
	/// design
	public var whyStopped: CodeableConcept?
	
	/// Target or actual group of participants enrolled in study
	public var recruitment: ResearchStudyRecruitment?
	
	/// Defined path through the study for a subject
	public var comparisonGroup: [ResearchStudyComparisonGroup]?
	
	/// A goal for the study
	public var objective: [ResearchStudyObjective]?
	
	/// Link to results generated during the study
	public var result: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		associatedParty: [ResearchStudyAssociatedParty]? = nil,
		citeAs: FHIRPrimitive<FHIRString>? = nil,
		classifier: [CodeableConcept]? = nil,
		comparisonGroup: [ResearchStudyComparisonGroup]? = nil,
		condition: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		descriptionSummary: FHIRPrimitive<FHIRString>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		focus: [CodeableReference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		keyword: [CodeableConcept]? = nil,
		label: [ResearchStudyLabel]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		objective: [ResearchStudyObjective]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
		phase: CodeableConcept? = nil,
		primaryPurposeType: CodeableConcept? = nil,
		progressStatus: [ResearchStudyProgressStatus]? = nil,
		`protocol`: [Reference]? = nil,
		recruitment: ResearchStudyRecruitment? = nil,
		region: [CodeableConcept]? = nil,
		relatesTo: [ResearchStudyRelatesTo]? = nil,
		result: [Reference]? = nil,
		site: [Reference]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		studyDesign: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		whyStopped: CodeableConcept? = nil
	) {
		self.init(status: status)
		self.associatedParty = associatedParty
		self.citeAs = citeAs
		self.classifier = classifier
		self.comparisonGroup = comparisonGroup
		self.condition = condition
		self.contained = contained
		self.date = date
		self.descriptionSummary = descriptionSummary
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.keyword = keyword
		self.label = label
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.objective = objective
		self.partOf = partOf
		self.period = period
		self.phase = phase
		self.primaryPurposeType = primaryPurposeType
		self.progressStatus = progressStatus
		self.`protocol` = `protocol`
		self.recruitment = recruitment
		self.region = region
		self.relatesTo = relatesTo
		self.result = result
		self.site = site
		self.studyDesign = studyDesign
		self.text = text
		self.title = title
		self.url = url
		self.version = version
		self.whyStopped = whyStopped
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case associatedParty
		case citeAs; case _citeAs
		case classifier
		case comparisonGroup
		case condition
		case date; case _date
		case descriptionSummary; case _descriptionSummary
		case description_fhir = "description"; case _description_fhir = "_description"
		case focus
		case identifier
		case keyword
		case label
		case name; case _name
		case note
		case objective
		case partOf
		case period
		case phase
		case primaryPurposeType
		case progressStatus
		case `protocol` = "protocol"
		case recruitment
		case region
		case relatesTo
		case result
		case site
		case status; case _status
		case studyDesign
		case title; case _title
		case url; case _url
		case version; case _version
		case whyStopped
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associatedParty = try [ResearchStudyAssociatedParty](from: _container, forKeyIfPresent: .associatedParty)
		self.citeAs = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .citeAs, auxiliaryKey: ._citeAs)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.comparisonGroup = try [ResearchStudyComparisonGroup](from: _container, forKeyIfPresent: .comparisonGroup)
		self.condition = try [CodeableConcept](from: _container, forKeyIfPresent: .condition)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.descriptionSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .descriptionSummary, auxiliaryKey: ._descriptionSummary)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.focus = try [CodeableReference](from: _container, forKeyIfPresent: .focus)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.keyword = try [CodeableConcept](from: _container, forKeyIfPresent: .keyword)
		self.label = try [ResearchStudyLabel](from: _container, forKeyIfPresent: .label)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.objective = try [ResearchStudyObjective](from: _container, forKeyIfPresent: .objective)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.phase = try CodeableConcept(from: _container, forKeyIfPresent: .phase)
		self.primaryPurposeType = try CodeableConcept(from: _container, forKeyIfPresent: .primaryPurposeType)
		self.progressStatus = try [ResearchStudyProgressStatus](from: _container, forKeyIfPresent: .progressStatus)
		self.`protocol` = try [Reference](from: _container, forKeyIfPresent: .`protocol`)
		self.recruitment = try ResearchStudyRecruitment(from: _container, forKeyIfPresent: .recruitment)
		self.region = try [CodeableConcept](from: _container, forKeyIfPresent: .region)
		self.relatesTo = try [ResearchStudyRelatesTo](from: _container, forKeyIfPresent: .relatesTo)
		self.result = try [Reference](from: _container, forKeyIfPresent: .result)
		self.site = try [Reference](from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyDesign = try [CodeableConcept](from: _container, forKeyIfPresent: .studyDesign)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.whyStopped = try CodeableConcept(from: _container, forKeyIfPresent: .whyStopped)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try associatedParty?.encode(on: &_container, forKey: .associatedParty)
		try citeAs?.encode(on: &_container, forKey: .citeAs, auxiliaryKey: ._citeAs)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try comparisonGroup?.encode(on: &_container, forKey: .comparisonGroup)
		try condition?.encode(on: &_container, forKey: .condition)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try descriptionSummary?.encode(on: &_container, forKey: .descriptionSummary, auxiliaryKey: ._descriptionSummary)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try focus?.encode(on: &_container, forKey: .focus)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try label?.encode(on: &_container, forKey: .label)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try objective?.encode(on: &_container, forKey: .objective)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
		try phase?.encode(on: &_container, forKey: .phase)
		try primaryPurposeType?.encode(on: &_container, forKey: .primaryPurposeType)
		try progressStatus?.encode(on: &_container, forKey: .progressStatus)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`)
		try recruitment?.encode(on: &_container, forKey: .recruitment)
		try region?.encode(on: &_container, forKey: .region)
		try relatesTo?.encode(on: &_container, forKey: .relatesTo)
		try result?.encode(on: &_container, forKey: .result)
		try site?.encode(on: &_container, forKey: .site)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyDesign?.encode(on: &_container, forKey: .studyDesign)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try whyStopped?.encode(on: &_container, forKey: .whyStopped)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return associatedParty == _other.associatedParty
		    && citeAs == _other.citeAs
		    && classifier == _other.classifier
		    && comparisonGroup == _other.comparisonGroup
		    && condition == _other.condition
		    && date == _other.date
		    && descriptionSummary == _other.descriptionSummary
		    && description_fhir == _other.description_fhir
		    && focus == _other.focus
		    && identifier == _other.identifier
		    && keyword == _other.keyword
		    && label == _other.label
		    && name == _other.name
		    && note == _other.note
		    && objective == _other.objective
		    && partOf == _other.partOf
		    && period == _other.period
		    && phase == _other.phase
		    && primaryPurposeType == _other.primaryPurposeType
		    && progressStatus == _other.progressStatus
		    && `protocol` == _other.`protocol`
		    && recruitment == _other.recruitment
		    && region == _other.region
		    && relatesTo == _other.relatesTo
		    && result == _other.result
		    && site == _other.site
		    && status == _other.status
		    && studyDesign == _other.studyDesign
		    && title == _other.title
		    && url == _other.url
		    && version == _other.version
		    && whyStopped == _other.whyStopped
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associatedParty)
		hasher.combine(citeAs)
		hasher.combine(classifier)
		hasher.combine(comparisonGroup)
		hasher.combine(condition)
		hasher.combine(date)
		hasher.combine(descriptionSummary)
		hasher.combine(description_fhir)
		hasher.combine(focus)
		hasher.combine(identifier)
		hasher.combine(keyword)
		hasher.combine(label)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(objective)
		hasher.combine(partOf)
		hasher.combine(period)
		hasher.combine(phase)
		hasher.combine(primaryPurposeType)
		hasher.combine(progressStatus)
		hasher.combine(`protocol`)
		hasher.combine(recruitment)
		hasher.combine(region)
		hasher.combine(relatesTo)
		hasher.combine(result)
		hasher.combine(site)
		hasher.combine(status)
		hasher.combine(studyDesign)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(version)
		hasher.combine(whyStopped)
	}
}

/**
 Sponsors, collaborators, and other parties.
 */
open class ResearchStudyAssociatedParty: BackboneElement {
	
	/// Name of associated party
	public var name: FHIRPrimitive<FHIRString>?
	
	/// sponsor | lead-sponsor | sponsor-investigator | primary-investigator | collaborator | funding-source | general-
	/// contact | recruitment-contact | sub-investigator | study-chair | irb | data-monitoring
	public var role: CodeableConcept
	
	/// When active in the role
	public var period: [Period]?
	
	/// nih | fda | government | nonprofit | academic | industry
	public var classifier: [CodeableConcept]?
	
	/// Individual or organization associated with study (use practitionerRole to specify their organisation)
	public var party: Reference?
	
	/// Designated initializer taking all required properties
	public init(role: CodeableConcept) {
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		party: Reference? = nil,
		period: [Period]? = nil,
		role: CodeableConcept
	) {
		self.init(role: role)
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.party = party
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case name; case _name
		case party
		case period
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.period = try [Period](from: _container, forKeyIfPresent: .period)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classifier?.encode(on: &_container, forKey: .classifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try party?.encode(on: &_container, forKey: .party)
		try period?.encode(on: &_container, forKey: .period)
		try role.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyAssociatedParty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classifier == _other.classifier
		    && name == _other.name
		    && party == _other.party
		    && period == _other.period
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classifier)
		hasher.combine(name)
		hasher.combine(party)
		hasher.combine(period)
		hasher.combine(role)
	}
}

/**
 Defined path through the study for a subject.
 
 Describes an expected event or sequence of events for one of the subjects of a study. E.g. for a living subject:
 exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability study: {store sample from
 lot A at 25 degrees for 1 month}, {store sample from lot A at 40 degrees for 1 month}.
 */
open class ResearchStudyComparisonGroup: BackboneElement {
	
	/// Estimated total number of participants to be enrolled in the comparison group
	public var targetNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Actual total number of participants enrolled in the comparison group
	public var actualNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Inclusion and exclusion criteria for the comparison group
	public var eligibility: Reference?
	
	/// Group of participants who were enrolled in the comparison group
	public var observedGroup: Reference?
	
	/// Description of the comparison Group
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actualNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		eligibility: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		observedGroup: Reference? = nil,
		targetNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
		self.init()
		self.actualNumber = actualNumber
		self.description_fhir = description_fhir
		self.eligibility = eligibility
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.observedGroup = observedGroup
		self.targetNumber = targetNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actualNumber; case _actualNumber
		case description_fhir = "description"; case _description_fhir = "_description"
		case eligibility
		case observedGroup
		case targetNumber; case _targetNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actualNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .actualNumber, auxiliaryKey: ._actualNumber)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.eligibility = try Reference(from: _container, forKeyIfPresent: .eligibility)
		self.observedGroup = try Reference(from: _container, forKeyIfPresent: .observedGroup)
		self.targetNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .targetNumber, auxiliaryKey: ._targetNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actualNumber?.encode(on: &_container, forKey: .actualNumber, auxiliaryKey: ._actualNumber)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try observedGroup?.encode(on: &_container, forKey: .observedGroup)
		try targetNumber?.encode(on: &_container, forKey: .targetNumber, auxiliaryKey: ._targetNumber)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyComparisonGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actualNumber == _other.actualNumber
		    && description_fhir == _other.description_fhir
		    && eligibility == _other.eligibility
		    && observedGroup == _other.observedGroup
		    && targetNumber == _other.targetNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualNumber)
		hasher.combine(description_fhir)
		hasher.combine(eligibility)
		hasher.combine(observedGroup)
		hasher.combine(targetNumber)
	}
}

/**
 Additional names for the study.
 */
open class ResearchStudyLabel: BackboneElement {
	
	/// primary | official | scientific | plain-language | subtitle | short-title | acronym | earlier-title | language |
	/// auto-translated | human-use | machine-use | duplicate-uid
	public var type: CodeableConcept?
	
	/// The name
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Used to express the specific language
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language; case _language
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try type?.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyLabel else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 A goal for the study.
 
 A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data
 collected during the study.
 */
open class ResearchStudyObjective: BackboneElement {
	
	/// Label for the objective
	public var name: FHIRPrimitive<FHIRString>?
	
	/// primary | secondary | exploratory
	public var type: CodeableConcept?
	
	/// Description of the objective
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A variable measured during the study
	public var outcomeMeasure: [ResearchStudyObjectiveOutcomeMeasure]?
	
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
		name: FHIRPrimitive<FHIRString>? = nil,
		outcomeMeasure: [ResearchStudyObjectiveOutcomeMeasure]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.outcomeMeasure = outcomeMeasure
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
		case outcomeMeasure
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.outcomeMeasure = try [ResearchStudyObjectiveOutcomeMeasure](from: _container, forKeyIfPresent: .outcomeMeasure)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try outcomeMeasure?.encode(on: &_container, forKey: .outcomeMeasure)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyObjective else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && name == _other.name
		    && outcomeMeasure == _other.outcomeMeasure
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(name)
		hasher.combine(outcomeMeasure)
		hasher.combine(type)
	}
}

/**
 A variable measured during the study.
 
 An "outcome measure", "endpoint", "effect measure" or "measure of effect" is a specific measurement or observation used
 to quantify the effect of experimental variables on the participants in a study, or for observational studies, to
 describe patterns of diseases or traits or associations with exposures, risk factors or treatment.
 */
open class ResearchStudyObjectiveOutcomeMeasure: BackboneElement {
	
	/// Label for the outcome measure
	public var name: FHIRPrimitive<FHIRString>?
	
	/// primary | secondary | exploratory
	public var type: CodeableConcept?
	
	/// Description of the outcome measure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Definition of the outcome measure
	public var endpoint: Reference
	
	/// Population for this estimand
	public var population: Reference?
	
	/// Comparison group of interest
	public var intervention: Reference?
	
	/// Comparison group for comparison
	public var comparator: Reference?
	
	/// Statistical measure for treatment effect estimate
	public var summaryMeasure: CodeableConcept?
	
	/// Statistical analysis plan for a single endpoint
	public var endpointAnalysisPlan: Reference?
	
	/// Handling of intercurrent event
	public var eventHandling: [ResearchStudyObjectiveOutcomeMeasureEventHandling]?
	
	/// Designated initializer taking all required properties
	public init(endpoint: Reference) {
		self.endpoint = endpoint
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		comparator: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		endpoint: Reference,
		endpointAnalysisPlan: Reference? = nil,
		eventHandling: [ResearchStudyObjectiveOutcomeMeasureEventHandling]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intervention: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		population: Reference? = nil,
		summaryMeasure: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(endpoint: endpoint)
		self.comparator = comparator
		self.description_fhir = description_fhir
		self.endpointAnalysisPlan = endpointAnalysisPlan
		self.eventHandling = eventHandling
		self.`extension` = `extension`
		self.id = id
		self.intervention = intervention
		self.modifierExtension = modifierExtension
		self.name = name
		self.population = population
		self.summaryMeasure = summaryMeasure
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comparator
		case description_fhir = "description"; case _description_fhir = "_description"
		case endpoint
		case endpointAnalysisPlan
		case eventHandling
		case intervention
		case name; case _name
		case population
		case summaryMeasure
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comparator = try Reference(from: _container, forKeyIfPresent: .comparator)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.endpoint = try Reference(from: _container, forKey: .endpoint)
		self.endpointAnalysisPlan = try Reference(from: _container, forKeyIfPresent: .endpointAnalysisPlan)
		self.eventHandling = try [ResearchStudyObjectiveOutcomeMeasureEventHandling](from: _container, forKeyIfPresent: .eventHandling)
		self.intervention = try Reference(from: _container, forKeyIfPresent: .intervention)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.population = try Reference(from: _container, forKeyIfPresent: .population)
		self.summaryMeasure = try CodeableConcept(from: _container, forKeyIfPresent: .summaryMeasure)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comparator?.encode(on: &_container, forKey: .comparator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try endpoint.encode(on: &_container, forKey: .endpoint)
		try endpointAnalysisPlan?.encode(on: &_container, forKey: .endpointAnalysisPlan)
		try eventHandling?.encode(on: &_container, forKey: .eventHandling)
		try intervention?.encode(on: &_container, forKey: .intervention)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try population?.encode(on: &_container, forKey: .population)
		try summaryMeasure?.encode(on: &_container, forKey: .summaryMeasure)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyObjectiveOutcomeMeasure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comparator == _other.comparator
		    && description_fhir == _other.description_fhir
		    && endpoint == _other.endpoint
		    && endpointAnalysisPlan == _other.endpointAnalysisPlan
		    && eventHandling == _other.eventHandling
		    && intervention == _other.intervention
		    && name == _other.name
		    && population == _other.population
		    && summaryMeasure == _other.summaryMeasure
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comparator)
		hasher.combine(description_fhir)
		hasher.combine(endpoint)
		hasher.combine(endpointAnalysisPlan)
		hasher.combine(eventHandling)
		hasher.combine(intervention)
		hasher.combine(name)
		hasher.combine(population)
		hasher.combine(summaryMeasure)
		hasher.combine(type)
	}
}

/**
 Handling of intercurrent event.
 */
open class ResearchStudyObjectiveOutcomeMeasureEventHandling: BackboneElement {
	
	/// The event
	public var event: CodeableConcept?
	
	/// The group that is affected by this event handling
	public var group: CodeableConcept?
	
	/// How the data is handled
	public var handling: CodeableConcept?
	
	/// Text summary of event handling
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		event: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		group: CodeableConcept? = nil,
		handling: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.event = event
		self.`extension` = `extension`
		self.group = group
		self.handling = handling
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case event
		case group
		case handling
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.event = try CodeableConcept(from: _container, forKeyIfPresent: .event)
		self.group = try CodeableConcept(from: _container, forKeyIfPresent: .group)
		self.handling = try CodeableConcept(from: _container, forKeyIfPresent: .handling)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try event?.encode(on: &_container, forKey: .event)
		try group?.encode(on: &_container, forKey: .group)
		try handling?.encode(on: &_container, forKey: .handling)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyObjectiveOutcomeMeasureEventHandling else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && event == _other.event
		    && group == _other.group
		    && handling == _other.handling
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(event)
		hasher.combine(group)
		hasher.combine(handling)
	}
}

/**
 Status of study with time for that status.
 */
open class ResearchStudyProgressStatus: BackboneElement {
	
	/// Label for status or state (e.g. recruitment status)
	public var state: CodeableConcept
	
	/// Actual if true else anticipated
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Date range
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(state: CodeableConcept) {
		self.state = state
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		state: CodeableConcept
	) {
		self.init(state: state)
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actual; case _actual
		case period
		case state
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.state = try CodeableConcept(from: _container, forKey: .state)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try period?.encode(on: &_container, forKey: .period)
		try state.encode(on: &_container, forKey: .state)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyProgressStatus else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actual == _other.actual
		    && period == _other.period
		    && state == _other.state
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actual)
		hasher.combine(period)
		hasher.combine(state)
	}
}

/**
 Target or actual group of participants enrolled in study.
 */
open class ResearchStudyRecruitment: BackboneElement {
	
	/// Estimated total number of participants to be enrolled
	public var targetNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Actual total number of participants enrolled in study
	public var actualNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Inclusion and exclusion criteria
	public var eligibility: Reference?
	
	/// Group of participants who were enrolled in study
	public var actualGroup: Reference?
	
	/// Description of the recruitment
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actualGroup: Reference? = nil,
		actualNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		eligibility: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		targetNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
		self.init()
		self.actualGroup = actualGroup
		self.actualNumber = actualNumber
		self.description_fhir = description_fhir
		self.eligibility = eligibility
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.targetNumber = targetNumber
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actualGroup
		case actualNumber; case _actualNumber
		case description_fhir = "description"; case _description_fhir = "_description"
		case eligibility
		case targetNumber; case _targetNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actualGroup = try Reference(from: _container, forKeyIfPresent: .actualGroup)
		self.actualNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .actualNumber, auxiliaryKey: ._actualNumber)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.eligibility = try Reference(from: _container, forKeyIfPresent: .eligibility)
		self.targetNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .targetNumber, auxiliaryKey: ._targetNumber)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actualGroup?.encode(on: &_container, forKey: .actualGroup)
		try actualNumber?.encode(on: &_container, forKey: .actualNumber, auxiliaryKey: ._actualNumber)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try targetNumber?.encode(on: &_container, forKey: .targetNumber, auxiliaryKey: ._targetNumber)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyRecruitment else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actualGroup == _other.actualGroup
		    && actualNumber == _other.actualNumber
		    && description_fhir == _other.description_fhir
		    && eligibility == _other.eligibility
		    && targetNumber == _other.targetNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualGroup)
		hasher.combine(actualNumber)
		hasher.combine(description_fhir)
		hasher.combine(eligibility)
		hasher.combine(targetNumber)
	}
}

/**
 Relationships to other Resources.
 
 Relationships that this ResearchStudy has with other FHIR or non-FHIR resources that already exist.
 */
open class ResearchStudyRelatesTo: BackboneElement {
	
	/// All possible types for "target[x]"
	public enum TargetX: Hashable {
		case attachment(Attachment)
		case canonical(FHIRPrimitive<Canonical>)
		case markdown(FHIRPrimitive<FHIRString>)
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of |
	/// part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in |
	/// contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs
	/// | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents |
	/// specification-of | created-with | cite-as | reprint | reprint-of | summarizes
	public var type: CodeableConcept
	
	/// The artifact that is related to this ResearchStudy
	/// One of `target[x]`
	public var target: TargetX
	
	/// Designated initializer taking all required properties
	public init(target: TargetX, type: CodeableConcept) {
		self.target = target
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		target: TargetX,
		type: CodeableConcept
	) {
		self.init(target: target, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case targetAttachment
		case targetCanonical; case _targetCanonical
		case targetMarkdown; case _targetMarkdown
		case targetReference
		case targetUri; case _targetUri
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.targetAttachment) || _container.contains(CodingKeys.targetCanonical) || _container.contains(CodingKeys.targetMarkdown) || _container.contains(CodingKeys.targetReference) || _container.contains(CodingKeys.targetUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.targetAttachment, CodingKeys.targetCanonical, CodingKeys.targetMarkdown, CodingKeys.targetReference, CodingKeys.targetUri], debugDescription: "Must have at least one value for \"target\" but have none"))
		}
		
		// Decode all our properties
		var _t_target: TargetX? = nil
		if let targetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .targetUri, auxiliaryKey: ._targetUri) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetUri, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .uri(targetUri)
		}
		if let targetAttachment = try Attachment(from: _container, forKeyIfPresent: .targetAttachment) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetAttachment, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .attachment(targetAttachment)
		}
		if let targetCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .targetCanonical, auxiliaryKey: ._targetCanonical) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetCanonical, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .canonical(targetCanonical)
		}
		if let targetReference = try Reference(from: _container, forKeyIfPresent: .targetReference) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetReference, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .reference(targetReference)
		}
		if let targetMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetMarkdown, auxiliaryKey: ._targetMarkdown) {
			if _t_target != nil {
				throw DecodingError.dataCorruptedError(forKey: .targetMarkdown, in: _container, debugDescription: "More than one value provided for \"target\"")
			}
			_t_target = .markdown(targetMarkdown)
		}
		self.target = _t_target!
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch target {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .targetUri, auxiliaryKey: ._targetUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .targetAttachment)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .targetCanonical, auxiliaryKey: ._targetCanonical)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .targetReference)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .targetMarkdown, auxiliaryKey: ._targetMarkdown)
			}
		
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyRelatesTo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return target == _other.target
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(target)
		hasher.combine(type)
	}
}
