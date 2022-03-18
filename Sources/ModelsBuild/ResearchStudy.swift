//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
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
 Investigation to increase healthcare-related patient-independent knowledge.
 
 A process where a researcher or organization plans and then executes a series of steps intended to increase the field
 of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other
 information about medications, devices, therapies and other interventional and investigative techniques. A
 ResearchStudy involves the gathering of information about human or animal subjects or stability data about drug
 products or drug substances.
 */
open class ResearchStudy: DomainResource {
	
	override open class var resourceType: ResourceType { return .researchStudy }
	
	/// Canonical identifier for this study resource
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business Identifier for study
	public var identifier: [Identifier]?
	
	/// Business identifier for the study record
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this study (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this study (for computers)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Additional names for the study
	public var label: [ResearchStudyLabel]?
	
	/// Steps followed in executing study
	public var `protocol`: [Reference]?
	
	/// Part of larger study
	public var partOf: [Reference]?
	
	/// References and dependencies
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
	
	/// Classifications for the study
	public var category: [CodeableConcept]?
	
	/// Drugs, devices, etc. under study
	public var focus: [ResearchStudyFocus]?
	
	/// Condition being studied
	public var condition: [CodeableConcept]?
	
	/// Used to search for the study
	public var keyword: [CodeableConcept]?
	
	/// Geographic region(s) for study
	public var location: [CodeableConcept]?
	
	/// A brief summary of the study description
	public var descriptionSummary: FHIRPrimitive<FHIRString>?
	
	/// What this is study doing
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When the study began and ended
	public var period: Period?
	
	/// Contact details for the study
	public var contact: [ContactDetail]?
	
	/// Organization that initiates and is legally responsible for the study
	public var sponsor: Reference?
	
	/// Researcher who oversees multiple aspects of the study
	public var principalInvestigator: Reference?
	
	/// Facility where study activities are conducted
	public var site: [Reference]?
	
	/// Comments made about the study
	public var note: [Annotation]?
	
	/// Classification for the study
	public var classification: [ResearchStudyClassification]?
	
	/// Sponsors, collaborators, and other parties
	public var associatedParty: [ResearchStudyAssociatedParty]?
	
	/// active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention |
	/// completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-
	/// intervention | withdrawn
	public var currentState: [CodeableConcept]?
	
	/// Status of study with time for that status
	public var statusDate: [ResearchStudyStatusDate]?
	
	/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-
	/// design
	public var whyStopped: CodeableConcept?
	
	/// Target or actual group of participants enrolled in study
	public var recruitment: ResearchStudyRecruitment?
	
	/// Defined path through the study for a subject
	public var comparisonGroup: [ResearchStudyComparisonGroup]?
	
	/// A goal for the study
	public var objective: [ResearchStudyObjective]?
	
	/// An outcome or planned variable to measure during the study
	public var outcomeMeasure: [ResearchStudyOutcomeMeasure]?
	
	/// Link to results generated during the study
	public var result: [Reference]?
	
	/// Archive location for the study
	public var webLocation: [ResearchStudyWebLocation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		associatedParty: [ResearchStudyAssociatedParty]? = nil,
		category: [CodeableConcept]? = nil,
		classification: [ResearchStudyClassification]? = nil,
		comparisonGroup: [ResearchStudyComparisonGroup]? = nil,
		condition: [CodeableConcept]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		currentState: [CodeableConcept]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		descriptionSummary: FHIRPrimitive<FHIRString>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		focus: [ResearchStudyFocus]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		keyword: [CodeableConcept]? = nil,
		label: [ResearchStudyLabel]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [CodeableConcept]? = nil,
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
		principalInvestigator: Reference? = nil,
		`protocol`: [Reference]? = nil,
		recruitment: ResearchStudyRecruitment? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		result: [Reference]? = nil,
		site: [Reference]? = nil,
		sponsor: Reference? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		statusDate: [ResearchStudyStatusDate]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		webLocation: [ResearchStudyWebLocation]? = nil,
		whyStopped: CodeableConcept? = nil
	) {
		self.init(status: status)
		self.associatedParty = associatedParty
		self.category = category
		self.classification = classification
		self.comparisonGroup = comparisonGroup
		self.condition = condition
		self.contact = contact
		self.contained = contained
		self.currentState = currentState
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
		self.location = location
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
		self.principalInvestigator = principalInvestigator
		self.`protocol` = `protocol`
		self.recruitment = recruitment
		self.relatedArtifact = relatedArtifact
		self.result = result
		self.site = site
		self.sponsor = sponsor
		self.statusDate = statusDate
		self.text = text
		self.title = title
		self.url = url
		self.version = version
		self.webLocation = webLocation
		self.whyStopped = whyStopped
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case associatedParty
		case category
		case classification
		case comparisonGroup
		case condition
		case contact
		case currentState
		case date; case _date
		case descriptionSummary; case _descriptionSummary
		case description_fhir = "description"; case _description_fhir = "_description"
		case focus
		case identifier
		case keyword
		case label
		case location
		case name; case _name
		case note
		case objective
		case outcomeMeasure
		case partOf
		case period
		case phase
		case primaryPurposeType
		case principalInvestigator
		case `protocol` = "protocol"
		case recruitment
		case relatedArtifact
		case result
		case site
		case sponsor
		case status; case _status
		case statusDate
		case title; case _title
		case url; case _url
		case version; case _version
		case webLocation
		case whyStopped
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associatedParty = try [ResearchStudyAssociatedParty](from: _container, forKeyIfPresent: .associatedParty)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.classification = try [ResearchStudyClassification](from: _container, forKeyIfPresent: .classification)
		self.comparisonGroup = try [ResearchStudyComparisonGroup](from: _container, forKeyIfPresent: .comparisonGroup)
		self.condition = try [CodeableConcept](from: _container, forKeyIfPresent: .condition)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.currentState = try [CodeableConcept](from: _container, forKeyIfPresent: .currentState)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.descriptionSummary = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .descriptionSummary, auxiliaryKey: ._descriptionSummary)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.focus = try [ResearchStudyFocus](from: _container, forKeyIfPresent: .focus)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.keyword = try [CodeableConcept](from: _container, forKeyIfPresent: .keyword)
		self.label = try [ResearchStudyLabel](from: _container, forKeyIfPresent: .label)
		self.location = try [CodeableConcept](from: _container, forKeyIfPresent: .location)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.objective = try [ResearchStudyObjective](from: _container, forKeyIfPresent: .objective)
		self.outcomeMeasure = try [ResearchStudyOutcomeMeasure](from: _container, forKeyIfPresent: .outcomeMeasure)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.phase = try CodeableConcept(from: _container, forKeyIfPresent: .phase)
		self.primaryPurposeType = try CodeableConcept(from: _container, forKeyIfPresent: .primaryPurposeType)
		self.principalInvestigator = try Reference(from: _container, forKeyIfPresent: .principalInvestigator)
		self.`protocol` = try [Reference](from: _container, forKeyIfPresent: .`protocol`)
		self.recruitment = try ResearchStudyRecruitment(from: _container, forKeyIfPresent: .recruitment)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.result = try [Reference](from: _container, forKeyIfPresent: .result)
		self.site = try [Reference](from: _container, forKeyIfPresent: .site)
		self.sponsor = try Reference(from: _container, forKeyIfPresent: .sponsor)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try [ResearchStudyStatusDate](from: _container, forKeyIfPresent: .statusDate)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.webLocation = try [ResearchStudyWebLocation](from: _container, forKeyIfPresent: .webLocation)
		self.whyStopped = try CodeableConcept(from: _container, forKeyIfPresent: .whyStopped)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try associatedParty?.encode(on: &_container, forKey: .associatedParty)
		try category?.encode(on: &_container, forKey: .category)
		try classification?.encode(on: &_container, forKey: .classification)
		try comparisonGroup?.encode(on: &_container, forKey: .comparisonGroup)
		try condition?.encode(on: &_container, forKey: .condition)
		try contact?.encode(on: &_container, forKey: .contact)
		try currentState?.encode(on: &_container, forKey: .currentState)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try descriptionSummary?.encode(on: &_container, forKey: .descriptionSummary, auxiliaryKey: ._descriptionSummary)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try focus?.encode(on: &_container, forKey: .focus)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try label?.encode(on: &_container, forKey: .label)
		try location?.encode(on: &_container, forKey: .location)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try objective?.encode(on: &_container, forKey: .objective)
		try outcomeMeasure?.encode(on: &_container, forKey: .outcomeMeasure)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
		try phase?.encode(on: &_container, forKey: .phase)
		try primaryPurposeType?.encode(on: &_container, forKey: .primaryPurposeType)
		try principalInvestigator?.encode(on: &_container, forKey: .principalInvestigator)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`)
		try recruitment?.encode(on: &_container, forKey: .recruitment)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try result?.encode(on: &_container, forKey: .result)
		try site?.encode(on: &_container, forKey: .site)
		try sponsor?.encode(on: &_container, forKey: .sponsor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try webLocation?.encode(on: &_container, forKey: .webLocation)
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
		    && category == _other.category
		    && classification == _other.classification
		    && comparisonGroup == _other.comparisonGroup
		    && condition == _other.condition
		    && contact == _other.contact
		    && currentState == _other.currentState
		    && date == _other.date
		    && descriptionSummary == _other.descriptionSummary
		    && description_fhir == _other.description_fhir
		    && focus == _other.focus
		    && identifier == _other.identifier
		    && keyword == _other.keyword
		    && label == _other.label
		    && location == _other.location
		    && name == _other.name
		    && note == _other.note
		    && objective == _other.objective
		    && outcomeMeasure == _other.outcomeMeasure
		    && partOf == _other.partOf
		    && period == _other.period
		    && phase == _other.phase
		    && primaryPurposeType == _other.primaryPurposeType
		    && principalInvestigator == _other.principalInvestigator
		    && `protocol` == _other.`protocol`
		    && recruitment == _other.recruitment
		    && relatedArtifact == _other.relatedArtifact
		    && result == _other.result
		    && site == _other.site
		    && sponsor == _other.sponsor
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && title == _other.title
		    && url == _other.url
		    && version == _other.version
		    && webLocation == _other.webLocation
		    && whyStopped == _other.whyStopped
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associatedParty)
		hasher.combine(category)
		hasher.combine(classification)
		hasher.combine(comparisonGroup)
		hasher.combine(condition)
		hasher.combine(contact)
		hasher.combine(currentState)
		hasher.combine(date)
		hasher.combine(descriptionSummary)
		hasher.combine(description_fhir)
		hasher.combine(focus)
		hasher.combine(identifier)
		hasher.combine(keyword)
		hasher.combine(label)
		hasher.combine(location)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(objective)
		hasher.combine(outcomeMeasure)
		hasher.combine(partOf)
		hasher.combine(period)
		hasher.combine(phase)
		hasher.combine(primaryPurposeType)
		hasher.combine(principalInvestigator)
		hasher.combine(`protocol`)
		hasher.combine(recruitment)
		hasher.combine(relatedArtifact)
		hasher.combine(result)
		hasher.combine(site)
		hasher.combine(sponsor)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(version)
		hasher.combine(webLocation)
		hasher.combine(whyStopped)
	}
}

/**
 Sponsors, collaborators, and other parties.
 */
open class ResearchStudyAssociatedParty: BackboneElement {
	
	/// Name of associated party
	public var name: FHIRPrimitive<FHIRString>?
	
	/// sponsor | sponsor-investigator | primary-investigator | collaborator | funding-source | recruitment-contact |
	/// sub-investigator | study-director | study-chair
	public var role: CodeableConcept
	
	/// nih | fda
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
		role: CodeableConcept
	) {
		self.init(role: role)
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.party = party
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case name; case _name
		case party
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.party = try Reference(from: _container, forKeyIfPresent: .party)
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
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classifier)
		hasher.combine(name)
		hasher.combine(party)
		hasher.combine(role)
	}
}

/**
 Classification for the study.
 */
open class ResearchStudyClassification: BackboneElement {
	
	/// phase | category | keyword
	public var type: CodeableConcept?
	
	/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
	public var classifier: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		classifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classifier = try [CodeableConcept](from: _container, forKeyIfPresent: .classifier)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classifier?.encode(on: &_container, forKey: .classifier)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyClassification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classifier == _other.classifier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classifier)
		hasher.combine(type)
	}
}

/**
 Defined path through the study for a subject.
 
 Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out,
 exposure to drug B, wash-out, follow-up.
 */
open class ResearchStudyComparisonGroup: BackboneElement {
	
	/// All possible types for "identifier[x]"
	public enum IdentifierX: Hashable {
		case identifier(Identifier)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Allows the comparisonGroup for the study and the comparisonGroup for the subject to be linked easily
	/// One of `identifier[x]`
	public var identifier: IdentifierX?
	
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
		identifier: IdentifierX? = nil,
		intendedExposure: [Reference]? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		observedGroup: Reference? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(name: name)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.intendedExposure = intendedExposure
		self.modifierExtension = modifierExtension
		self.observedGroup = observedGroup
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifierIdentifier
		case identifierUri; case _identifierUri
		case intendedExposure
		case name; case _name
		case observedGroup
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		var _t_identifier: IdentifierX? = nil
		if let identifierUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .identifierUri, auxiliaryKey: ._identifierUri) {
			if _t_identifier != nil {
				throw DecodingError.dataCorruptedError(forKey: .identifierUri, in: _container, debugDescription: "More than one value provided for \"identifier\"")
			}
			_t_identifier = .uri(identifierUri)
		}
		if let identifierIdentifier = try Identifier(from: _container, forKeyIfPresent: .identifierIdentifier) {
			if _t_identifier != nil {
				throw DecodingError.dataCorruptedError(forKey: .identifierIdentifier, in: _container, debugDescription: "More than one value provided for \"identifier\"")
			}
			_t_identifier = .identifier(identifierIdentifier)
		}
		self.identifier = _t_identifier
		self.intendedExposure = try [Reference](from: _container, forKeyIfPresent: .intendedExposure)
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
		if let _enum = identifier {
			switch _enum {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .identifierUri, auxiliaryKey: ._identifierUri)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .identifierIdentifier)
			}
		}
		try intendedExposure?.encode(on: &_container, forKey: .intendedExposure)
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
		    && identifier == _other.identifier
		    && intendedExposure == _other.intendedExposure
		    && name == _other.name
		    && observedGroup == _other.observedGroup
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(intendedExposure)
		hasher.combine(name)
		hasher.combine(observedGroup)
		hasher.combine(type)
	}
}

/**
 Drugs, devices, etc. under study.
 
 The medication(s), food(s), therapy(ies), device(s) or other concerns or interventions that the study is seeking to
 gain more information about.
 */
open class ResearchStudyFocus: BackboneElement {
	
	/// Identification of product under study
	public var productCode: CodeableConcept?
	
	/// medication | device | intervention | factor
	public var focusType: [CodeableConcept]?
	
	/// An independent variable manipulated by the experimentalist
	public var factor: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRString>? = nil,
		focusType: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		productCode: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.factor = factor
		self.focusType = focusType
		self.id = id
		self.modifierExtension = modifierExtension
		self.productCode = productCode
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case factor; case _factor
		case focusType
		case productCode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.factor = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.focusType = try [CodeableConcept](from: _container, forKeyIfPresent: .focusType)
		self.productCode = try CodeableConcept(from: _container, forKeyIfPresent: .productCode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try focusType?.encode(on: &_container, forKey: .focusType)
		try productCode?.encode(on: &_container, forKey: .productCode)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyFocus else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return factor == _other.factor
		    && focusType == _other.focusType
		    && productCode == _other.productCode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(factor)
		hasher.combine(focusType)
		hasher.combine(productCode)
	}
}

/**
 Additional names for the study.
 */
open class ResearchStudyLabel: BackboneElement {
	
	/// short | public | scientific
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
 An outcome or planned variable to measure during the study.
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

/**
 Status of study with time for that status.
 */
open class ResearchStudyStatusDate: BackboneElement {
	
	/// Record-Verification | Overall-Study | Primary-Outcome-Data-Collection | Registration-Submission | Registration-
	/// Submission-QC | Registration-Posting | Results-Submission | Results-Submission-QC | Results-Posting |
	/// Disposition-Submission | Disposition-Submission-QC | Disposition-Posting | Update-Submission | Update-Posting
	public var activity: CodeableConcept
	
	/// Actual if true else anticipated
	public var actual: FHIRPrimitive<FHIRBool>?
	
	/// Date range
	public var period: Period
	
	/// Designated initializer taking all required properties
	public init(activity: CodeableConcept, period: Period) {
		self.activity = activity
		self.period = period
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activity: CodeableConcept,
		actual: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period
	) {
		self.init(activity: activity, period: period)
		self.actual = actual
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case actual; case _actual
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try CodeableConcept(from: _container, forKey: .activity)
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .actual, auxiliaryKey: ._actual)
		self.period = try Period(from: _container, forKey: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity.encode(on: &_container, forKey: .activity)
		try actual?.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try period.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyStatusDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activity == _other.activity
		    && actual == _other.actual
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(actual)
		hasher.combine(period)
	}
}

/**
 Archive location for the study.
 
 A general storage or archive location for the study.  This may contain an assortment of content which is not specified
 in advance.
 */
open class ResearchStudyWebLocation: BackboneElement {
	
	/// registry-page|recruitment-page|contact-page
	public var classifier: CodeableConcept?
	
	/// The location address
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(url: FHIRPrimitive<FHIRURI>) {
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		classifier: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.init(url: url)
		self.classifier = classifier
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classifier
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classifier = try CodeableConcept(from: _container, forKeyIfPresent: .classifier)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classifier?.encode(on: &_container, forKey: .classifier)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyWebLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classifier == _other.classifier
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classifier)
		hasher.combine(url)
	}
}
