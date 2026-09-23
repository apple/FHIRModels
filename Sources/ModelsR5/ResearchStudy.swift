//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
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
 Investigation to increase healthcare-related patient-independent knowledge.
 
 A scientific study of nature that sometimes includes processes involved in health and disease. For example, clinical
 trials are research studies that involve people. These studies may be related to new ways to screen, prevent, diagnose,
 and treat disease. They may also study certain outcomes and certain groups of people by looking at data collected in
 the past or future.
 */
public struct ResearchStudy: DomainResource {
	
	public static let resourceType: ResourceType = .researchStudy
	
	/// Sponsors, collaborators, and other parties
	public var associatedParty: [ResearchStudyAssociatedParty]?
	
	/// Classification for the study
	public var classifier: [CodeableConcept]?
	
	/// Defined path through the study for a subject
	public var comparisonGroup: [ResearchStudyComparisonGroup]?
	
	/// Condition being studied
	public var condition: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date the resource last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Brief text explaining the study
	public var descriptionSummary: FHIRPrimitive<FHIRString>?
	
	/// Detailed narrative of the study
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Drugs, devices, etc. under study
	public var focus: [CodeableReference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Used to search for the study
	public var keyword: [CodeableConcept]?
	
	/// Additional names for the study
	public var label: [ResearchStudyLabel]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this study (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Comments made about the study
	public var note: [Annotation]?
	
	/// A goal for the study
	public var objective: [ResearchStudyObjective]?
	
	/// A variable measured during the study
	public var outcomeMeasure: [ResearchStudyOutcomeMeasure]?
	
	/// Part of larger study
	public var partOf: [Reference]?
	
	/// When the study began and ended
	public var period: Period?
	
	/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
	public var phase: CodeableConcept?
	
	/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science |
	/// device-feasibility
	public var primaryPurposeType: CodeableConcept?
	
	/// Status of study with time for that status
	public var progressStatus: [ResearchStudyProgressStatus]?
	
	/// Steps followed in executing study
	public var `protocol`: [Reference]?
	
	/// Target or actual group of participants enrolled in study
	public var recruitment: ResearchStudyRecruitment?
	
	/// Geographic area for the study
	public var region: [CodeableConcept]?
	
	/// References, URLs, and attachments
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Link to results generated during the study
	public var result: [Reference]?
	
	/// Facility where study activities are conducted
	public var site: [Reference]?
	
	/// The publication state of the resource (not of the study).
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Classifications of the study design characteristics
	public var studyDesign: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Human readable name of the study
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this study resource
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The business version for the study record
	public var version: FHIRPrimitive<FHIRString>?
	
	/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-
	/// design
	public var whyStopped: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		self.status = status
		self.studyDesign = studyDesign
		self.text = text
		self.title = title
		self.url = url
		self.version = version
		self.whyStopped = whyStopped
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case associatedParty
		case classifier
		case comparisonGroup
		case condition
		case contained
		case date; case _date
		case descriptionSummary; case _descriptionSummary
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case focus
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case keyword
		case label
		case language; case _language
		case meta
		case modifierExtension
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
		case text
		case title; case _title
		case url; case _url
		case version; case _version
		case whyStopped
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.associatedParty = try [ResearchStudyAssociatedParty](from: _container, forKeyIfPresent: .associatedParty)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.comparisonGroup = try [ResearchStudyComparisonGroup](from: _container, forKeyIfPresent: .comparisonGroup)
		self.condition = try [CodeableConcept](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.descriptionSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .descriptionSummary, auxiliaryKey: ._descriptionSummary)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [CodeableReference](from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.keyword = try [CodeableConcept](from: _container, forKeyIfPresent: .keyword)
		self.label = try [ResearchStudyLabel](from: _container, forKeyIfPresent: .label)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.whyStopped = try CodeableConcept(from: _container, forKeyIfPresent: .whyStopped)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try associatedParty?.encode(on: &_container, forKey: .associatedParty)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try comparisonGroup?.encode(on: &_container, forKey: .comparisonGroup)
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try descriptionSummary?.encode(on: &_container, forKey: .descriptionSummary, auxiliaryKey: ._descriptionSummary)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try label?.encode(on: &_container, forKey: .label)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try whyStopped?.encode(on: &_container, forKey: .whyStopped)
	}
}

/**
 Sponsors, collaborators, and other parties.
 */
public struct ResearchStudyAssociatedParty: BackboneElement {
	
	/// nih | fda | government | nonprofit | academic | industry
	public var classifier: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of associated party
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Individual or organization associated with study (use practitionerRole to specify their organisation)
	public var party: Reference?
	
	/// When active in the role
	public var period: [Period]?
	
	/// sponsor | lead-sponsor | sponsor-investigator | primary-investigator | collaborator | funding-source | general-
	/// contact | recruitment-contact | sub-investigator | study-director | study-chair
	public var role: CodeableConcept
	
	/// Designated initializer
	public init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		party: Reference? = nil,
		period: [Period]? = nil,
		role: CodeableConcept
	) {
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.party = party
		self.period = period
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case party
		case period
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
		self.period = try [Period](from: _container, forKeyIfPresent: .period)
		self.role = try CodeableConcept(from: _container, forKey: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classifier?.encode(on: &_container, forKey: .classifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try party?.encode(on: &_container, forKey: .party)
		try period?.encode(on: &_container, forKey: .period)
		try role.encode(on: &_container, forKey: .role)
	}
}

/**
 Defined path through the study for a subject.
 
 Describes an expected event or sequence of events for one of the subjects of a study. E.g. for a living subject:
 exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability study: {store sample from
 lot A at 25 degrees for 1 month}, {store sample from lot A at 40 degrees for 1 month}.
 */
public struct ResearchStudyComparisonGroup: BackboneElement {
	
	/// Short explanation of study path
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Interventions or exposures in this comparisonGroup or cohort
	public var intendedExposure: [Reference]?
	
	/// Allows the comparisonGroup for the study and the comparisonGroup for the subject to be linked easily
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for study comparisonGroup
	public var name: FHIRPrimitive<FHIRString>
	
	/// Group of participants who were enrolled in study comparisonGroup
	public var observedGroup: Reference?
	
	/// Categorization of study comparisonGroup
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.intendedExposure = intendedExposure
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.name = name
		self.observedGroup = observedGroup
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case intendedExposure
		case linkId; case _linkId
		case modifierExtension
		case name; case _name
		case observedGroup
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.intendedExposure = try [Reference](from: _container, forKeyIfPresent: .intendedExposure)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.observedGroup = try Reference(from: _container, forKeyIfPresent: .observedGroup)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try intendedExposure?.encode(on: &_container, forKey: .intendedExposure)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try observedGroup?.encode(on: &_container, forKey: .observedGroup)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Additional names for the study.
 */
public struct ResearchStudyLabel: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// primary | official | scientific | plain-language | subtitle | short-title | acronym | earlier-title | language |
	/// auto-translated | human-use | machine-use | duplicate-uid
	public var type: CodeableConcept?
	
	/// The name
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 A goal for the study.
 
 A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data
 collected during the study.
 */
public struct ResearchStudyObjective: BackboneElement {
	
	/// Description of the objective
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for the objective
	public var name: FHIRPrimitive<FHIRString>?
	
	/// primary | secondary | exploratory
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 A variable measured during the study.
 
 An "outcome measure", "endpoint", "effect measure" or "measure of effect" is a specific measurement or observation used
 to quantify the effect of experimental variables on the participants in a study, or for observational studies, to
 describe patterns of diseases or traits or associations with exposures, risk factors or treatment.
 */
public struct ResearchStudyOutcomeMeasure: BackboneElement {
	
	/// Description of the outcome
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for the outcome
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Structured outcome definition
	public var reference: Reference?
	
	/// primary | secondary | exploratory
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		reference: Reference? = nil,
		type: [CodeableConcept]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case reference
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try reference?.encode(on: &_container, forKey: .reference)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Status of study with time for that status.
 */
public struct ResearchStudyProgressStatus: BackboneElement {
	
	/// Actual if true else anticipated
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Date range
	public var period: Period?
	
	/// Label for status or state (e.g. recruitment status)
	public var state: CodeableConcept
	
	/// Designated initializer
	public init(
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		state: CodeableConcept
	) {
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.state = state
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actual; case _actual
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case state
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.state = try CodeableConcept(from: _container, forKey: .state)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try state.encode(on: &_container, forKey: .state)
	}
}

/**
 Target or actual group of participants enrolled in study.
 */
public struct ResearchStudyRecruitment: BackboneElement {
	
	/// Group of participants who were enrolled in study
	public var actualGroup: Reference?
	
	/// Actual total number of participants enrolled in study
	public var actualNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Inclusion and exclusion criteria
	public var eligibility: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Estimated total number of participants to be enrolled
	public var targetNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Designated initializer
	public init(
		actualGroup: Reference? = nil,
		actualNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		eligibility: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		targetNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case targetNumber; case _targetNumber
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actualGroup = try Reference(from: _container, forKeyIfPresent: .actualGroup)
		self.actualNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .actualNumber, auxiliaryKey: ._actualNumber)
		self.eligibility = try Reference(from: _container, forKeyIfPresent: .eligibility)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.targetNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .targetNumber, auxiliaryKey: ._targetNumber)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actualGroup?.encode(on: &_container, forKey: .actualGroup)
		try actualNumber?.encode(on: &_container, forKey: .actualNumber, auxiliaryKey: ._actualNumber)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try targetNumber?.encode(on: &_container, forKey: .targetNumber, auxiliaryKey: ._targetNumber)
	}
}
