//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
//  Copyright 2023 Apple Inc.
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
 
 A scientific study of nature that sometimes includes processes involved in health and disease. For example, clinical
 trials are research studies that involve people. These studies may be related to new ways to screen, prevent, diagnose,
 and treat disease. They may also study certain outcomes and certain groups of people by looking at data collected in
 the past or future.
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
	
	/// References, URLs, and attachments
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Date the resource last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The publication state of the resource (not of the study).
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science |
	/// device-feasibility
	public var primaryPurposeType: CodeableConcept?
	
	/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
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
	
	/// A variable measured during the study
	public var outcomeMeasure: [ResearchStudyOutcomeMeasure]?
	
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
		outcomeMeasure: [ResearchStudyOutcomeMeasure]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
		phase: CodeableConcept? = nil,
		primaryPurposeType: CodeableConcept? = nil,
		progressStatus: [ResearchStudyProgressStatus]? = nil,
		`protocol`: [Reference]? = nil,
		recruitment: ResearchStudyRecruitment? = nil,
		region: [CodeableConcept]? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
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
		self.outcomeMeasure = outcomeMeasure
		self.partOf = partOf
		self.period = period
		self.phase = phase
		self.primaryPurposeType = primaryPurposeType
		self.progressStatus = progressStatus
		self.`protocol` = `protocol`
		self.recruitment = recruitment
		self.region = region
		self.relatedArtifact = relatedArtifact
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
		case outcomeMeasure
		case partOf
		case period
		case phase
		case primaryPurposeType
		case progressStatus
		case `protocol` = "protocol"
		case recruitment
		case region
		case relatedArtifact
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
		self.outcomeMeasure = try [ResearchStudyOutcomeMeasure](from: _container, forKeyIfPresent: .outcomeMeasure)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.phase = try CodeableConcept(from: _container, forKeyIfPresent: .phase)
		self.primaryPurposeType = try CodeableConcept(from: _container, forKeyIfPresent: .primaryPurposeType)
		self.progressStatus = try [ResearchStudyProgressStatus](from: _container, forKeyIfPresent: .progressStatus)
		self.`protocol` = try [Reference](from: _container, forKeyIfPresent: .`protocol`)
		self.recruitment = try ResearchStudyRecruitment(from: _container, forKeyIfPresent: .recruitment)
		self.region = try [CodeableConcept](from: _container, forKeyIfPresent: .region)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
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
		try outcomeMeasure?.encode(on: &_container, forKey: .outcomeMeasure)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
		try phase?.encode(on: &_container, forKey: .phase)
		try primaryPurposeType?.encode(on: &_container, forKey: .primaryPurposeType)
		try progressStatus?.encode(on: &_container, forKey: .progressStatus)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`)
		try recruitment?.encode(on: &_container, forKey: .recruitment)
		try region?.encode(on: &_container, forKey: .region)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
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
		    && outcomeMeasure == _other.outcomeMeasure
		    && partOf == _other.partOf
		    && period == _other.period
		    && phase == _other.phase
		    && primaryPurposeType == _other.primaryPurposeType
		    && progressStatus == _other.progressStatus
		    && `protocol` == _other.`protocol`
		    && recruitment == _other.recruitment
		    && region == _other.region
		    && relatedArtifact == _other.relatedArtifact
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
		hasher.combine(outcomeMeasure)
		hasher.combine(partOf)
		hasher.combine(period)
		hasher.combine(phase)
		hasher.combine(primaryPurposeType)
		hasher.combine(progressStatus)
		hasher.combine(`protocol`)
		hasher.combine(recruitment)
		hasher.combine(region)
		hasher.combine(relatedArtifact)
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
	/// contact | recruitment-contact | sub-investigator | study-director | study-chair
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
	
	/// Allows the comparisonGroup for the study and the comparisonGroup for the subject to be linked easily
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Label for study comparisonGroup
	public var name: FHIRPrimitive<FHIRString>
	
	/// Categorization of study comparisonGroup
	public var type: CodeableConcept?
	
	/// Short explanation of study path
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Interventions or exposures in this comparisonGroup or cohort
	public var intendedExposure: [Reference]?
	
	/// Group of participants who were enrolled in study comparisonGroup
	public var observedGroup: Reference?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intendedExposure: [Reference]? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		observedGroup: Reference? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(name: name)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.intendedExposure = intendedExposure
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.observedGroup = observedGroup
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case intendedExposure
		case linkId; case _linkId
		case name; case _name
		case observedGroup
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.intendedExposure = try [Reference](from: _container, forKeyIfPresent: .intendedExposure)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.observedGroup = try Reference(from: _container, forKeyIfPresent: .observedGroup)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try intendedExposure?.encode(on: &_container, forKey: .intendedExposure)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try observedGroup?.encode(on: &_container, forKey: .observedGroup)
		try type?.encode(on: &_container, forKey: .type)
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
		return description_fhir == _other.description_fhir
		    && intendedExposure == _other.intendedExposure
		    && linkId == _other.linkId
		    && name == _other.name
		    && observedGroup == _other.observedGroup
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(intendedExposure)
		hasher.combine(linkId)
		hasher.combine(name)
		hasher.combine(observedGroup)
		hasher.combine(type)
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
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
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
		type: CodeableConcept? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
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
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(name)
		hasher.combine(type)
	}
}

/**
 A variable measured during the study.
 
 An "outcome measure", "endpoint", "effect measure" or "measure of effect" is a specific measurement or observation used
 to quantify the effect of experimental variables on the participants in a study, or for observational studies, to
 describe patterns of diseases or traits or associations with exposures, risk factors or treatment.
 */
open class ResearchStudyOutcomeMeasure: BackboneElement {
	
	/// Label for the outcome
	public var name: FHIRPrimitive<FHIRString>?
	
	/// primary | secondary | exploratory
	public var type: [CodeableConcept]?
	
	/// Description of the outcome
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Structured outcome definition
	public var reference: Reference?
	
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
		reference: Reference? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.reference = reference
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
		case reference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try reference?.encode(on: &_container, forKey: .reference)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyOutcomeMeasure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && name == _other.name
		    && reference == _other.reference
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(name)
		hasher.combine(reference)
		hasher.combine(type)
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
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actualGroup: Reference? = nil,
		actualNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		eligibility: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		targetNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
		self.init()
		self.actualGroup = actualGroup
		self.actualNumber = actualNumber
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
		case eligibility
		case targetNumber; case _targetNumber
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actualGroup = try Reference(from: _container, forKeyIfPresent: .actualGroup)
		self.actualNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .actualNumber, auxiliaryKey: ._actualNumber)
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
		    && eligibility == _other.eligibility
		    && targetNumber == _other.targetNumber
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualGroup)
		hasher.combine(actualNumber)
		hasher.combine(eligibility)
		hasher.combine(targetNumber)
	}
}
