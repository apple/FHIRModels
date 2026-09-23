//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
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
 
 A process where a researcher or organization plans and then executes a series of steps intended to increase the field
 of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other
 information about medications, devices, therapies and other interventional and investigative techniques.  A
 ResearchStudy involves the gathering of information about human or animal subjects.
 */
public struct ResearchStudy: DomainResource {
	
	public static let resourceType: ResourceType = .researchStudy
	
	/// Defined path through the study for a subject
	public var arm: [ResearchStudyArm]?
	
	/// Classifications for the study
	public var category: [CodeableConcept]?
	
	/// Condition being studied
	public var condition: [CodeableConcept]?
	
	/// Contact details for the study
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// What this is study doing
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Inclusion & exclusion criteria
	public var enrollment: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Drugs, devices, etc. under study
	public var focus: [CodeableConcept]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Used to search for the study
	public var keyword: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Geographic region(s) for study
	public var location: [CodeableConcept]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the study
	public var note: [Annotation]?
	
	/// A goal for the study
	public var objective: [ResearchStudyObjective]?
	
	/// Part of larger study
	public var partOf: [Reference]?
	
	/// When the study began and ended
	public var period: Period?
	
	/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
	public var phase: CodeableConcept?
	
	/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science |
	/// device-feasibility
	public var primaryPurposeType: CodeableConcept?
	
	/// Researcher who oversees multiple aspects of the study
	public var principalInvestigator: Reference?
	
	/// Steps followed in executing study
	public var `protocol`: [Reference]?
	
	/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-
	/// design
	public var reasonStopped: CodeableConcept?
	
	/// References and dependencies
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Facility where study activities are conducted
	public var site: [Reference]?
	
	/// Organization that initiates and is legally responsible for the study
	public var sponsor: Reference?
	
	/// The current state of the study.
	public var status: FHIRPrimitive<ResearchStudyStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this study
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		arm: [ResearchStudyArm]? = nil,
		category: [CodeableConcept]? = nil,
		condition: [CodeableConcept]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		enrollment: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		focus: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		keyword: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [CodeableConcept]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		objective: [ResearchStudyObjective]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
		phase: CodeableConcept? = nil,
		primaryPurposeType: CodeableConcept? = nil,
		principalInvestigator: Reference? = nil,
		`protocol`: [Reference]? = nil,
		reasonStopped: CodeableConcept? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		site: [Reference]? = nil,
		sponsor: Reference? = nil,
		status: FHIRPrimitive<ResearchStudyStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.arm = arm
		self.category = category
		self.condition = condition
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.enrollment = enrollment
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.keyword = keyword
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.objective = objective
		self.partOf = partOf
		self.period = period
		self.phase = phase
		self.primaryPurposeType = primaryPurposeType
		self.principalInvestigator = principalInvestigator
		self.`protocol` = `protocol`
		self.reasonStopped = reasonStopped
		self.relatedArtifact = relatedArtifact
		self.site = site
		self.sponsor = sponsor
		self.status = status
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case arm
		case category
		case condition
		case contact
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case enrollment
		case `extension` = "extension"
		case focus
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case keyword
		case language; case _language
		case location
		case meta
		case modifierExtension
		case note
		case objective
		case partOf
		case period
		case phase
		case primaryPurposeType
		case principalInvestigator
		case `protocol` = "protocol"
		case reasonStopped
		case relatedArtifact
		case site
		case sponsor
		case status; case _status
		case text
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.arm = try [ResearchStudyArm](from: _container, forKeyIfPresent: .arm)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.condition = try [CodeableConcept](from: _container, forKeyIfPresent: .condition)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.enrollment = try [Reference](from: _container, forKeyIfPresent: .enrollment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [CodeableConcept](from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.keyword = try [CodeableConcept](from: _container, forKeyIfPresent: .keyword)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try [CodeableConcept](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.objective = try [ResearchStudyObjective](from: _container, forKeyIfPresent: .objective)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.phase = try CodeableConcept(from: _container, forKeyIfPresent: .phase)
		self.primaryPurposeType = try CodeableConcept(from: _container, forKeyIfPresent: .primaryPurposeType)
		self.principalInvestigator = try Reference(from: _container, forKeyIfPresent: .principalInvestigator)
		self.`protocol` = try [Reference](from: _container, forKeyIfPresent: .`protocol`)
		self.reasonStopped = try CodeableConcept(from: _container, forKeyIfPresent: .reasonStopped)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.site = try [Reference](from: _container, forKeyIfPresent: .site)
		self.sponsor = try Reference(from: _container, forKeyIfPresent: .sponsor)
		self.status = try FHIRPrimitive<ResearchStudyStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try arm?.encode(on: &_container, forKey: .arm)
		try category?.encode(on: &_container, forKey: .category)
		try condition?.encode(on: &_container, forKey: .condition)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try enrollment?.encode(on: &_container, forKey: .enrollment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try objective?.encode(on: &_container, forKey: .objective)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
		try phase?.encode(on: &_container, forKey: .phase)
		try primaryPurposeType?.encode(on: &_container, forKey: .primaryPurposeType)
		try principalInvestigator?.encode(on: &_container, forKey: .principalInvestigator)
		try `protocol`?.encode(on: &_container, forKey: .`protocol`)
		try reasonStopped?.encode(on: &_container, forKey: .reasonStopped)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try site?.encode(on: &_container, forKey: .site)
		try sponsor?.encode(on: &_container, forKey: .sponsor)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Defined path through the study for a subject.
 
 Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out,
 exposure to drug B, wash-out, follow-up.
 */
public struct ResearchStudyArm: BackboneElement {
	
	/// Short explanation of study path
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Label for study arm
	public var name: FHIRPrimitive<FHIRString>
	
	/// Categorization of study arm
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
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
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 A goal for the study.
 
 A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data
 collected during the study.
 */
public struct ResearchStudyObjective: BackboneElement {
	
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
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type)
	}
}
