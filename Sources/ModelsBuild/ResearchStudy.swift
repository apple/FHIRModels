//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
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
 Investigation to increase healthcare-related patient-independent knowledge.
 
 A process where a researcher or organization plans and then executes a series of steps intended to increase the field
 of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other
 information about medications, devices, therapies and other interventional and investigative techniques.  A
 ResearchStudy involves the gathering of information about human or animal subjects.
 */
open class ResearchStudy: DomainResource {
	
	override open class var resourceType: ResourceType { return .researchStudy }
	
	/// Business Identifier for study
	public var identifier: [Identifier]?
	
	/// Name for this study
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Steps followed in executing study
	public var `protocol`: [Reference]?
	
	/// Part of larger study
	public var partOf: [Reference]?
	
	/// The current state of the study.
	public var status: FHIRPrimitive<ResearchStudyStatus>
	
	/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science |
	/// device-feasibility
	public var primaryPurposeType: CodeableConcept?
	
	/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
	public var phase: CodeableConcept?
	
	/// Classifications for the study
	public var category: [CodeableConcept]?
	
	/// Drugs, devices, etc. under study
	public var focus: [CodeableConcept]?
	
	/// Condition being studied
	public var condition: [CodeableConcept]?
	
	/// Contact details for the study
	public var contact: [ContactDetail]?
	
	/// References and dependencies
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Used to search for the study
	public var keyword: [CodeableConcept]?
	
	/// Geographic region(s) for study
	public var location: [CodeableConcept]?
	
	/// What this is study doing
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Inclusion & exclusion criteria
	public var enrollment: [Reference]?
	
	/// When the study began and ended
	public var period: Period?
	
	/// Organization that initiates and is legally responsible for the study
	public var sponsor: Reference?
	
	/// Researcher who oversees multiple aspects of the study
	public var principalInvestigator: Reference?
	
	/// Facility where study activities are conducted
	public var site: [Reference]?
	
	/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-
	/// design
	public var reasonStopped: CodeableConcept?
	
	/// Comments made about the study
	public var note: [Annotation]?
	
	/// Defined path through the study for a subject
	public var arm: [ResearchStudyArm]?
	
	/// A goal for the study
	public var objective: [ResearchStudyObjective]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ResearchStudyStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							title: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
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
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case arm
		case category
		case condition
		case contact
		case description_fhir = "description"; case _description_fhir = "_description"
		case enrollment
		case focus
		case identifier
		case keyword
		case location
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
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.arm = try [ResearchStudyArm](from: _container, forKeyIfPresent: .arm)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.condition = try [CodeableConcept](from: _container, forKeyIfPresent: .condition)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.enrollment = try [Reference](from: _container, forKeyIfPresent: .enrollment)
		self.focus = try [CodeableConcept](from: _container, forKeyIfPresent: .focus)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.keyword = try [CodeableConcept](from: _container, forKeyIfPresent: .keyword)
		self.location = try [CodeableConcept](from: _container, forKeyIfPresent: .location)
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
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try arm?.encode(on: &_container, forKey: .arm)
		try category?.encode(on: &_container, forKey: .category)
		try condition?.encode(on: &_container, forKey: .condition)
		try contact?.encode(on: &_container, forKey: .contact)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try enrollment?.encode(on: &_container, forKey: .enrollment)
		try focus?.encode(on: &_container, forKey: .focus)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try location?.encode(on: &_container, forKey: .location)
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
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
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
		return arm == _other.arm
		    && category == _other.category
		    && condition == _other.condition
		    && contact == _other.contact
		    && description_fhir == _other.description_fhir
		    && enrollment == _other.enrollment
		    && focus == _other.focus
		    && identifier == _other.identifier
		    && keyword == _other.keyword
		    && location == _other.location
		    && note == _other.note
		    && objective == _other.objective
		    && partOf == _other.partOf
		    && period == _other.period
		    && phase == _other.phase
		    && primaryPurposeType == _other.primaryPurposeType
		    && principalInvestigator == _other.principalInvestigator
		    && `protocol` == _other.`protocol`
		    && reasonStopped == _other.reasonStopped
		    && relatedArtifact == _other.relatedArtifact
		    && site == _other.site
		    && sponsor == _other.sponsor
		    && status == _other.status
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(arm)
		hasher.combine(category)
		hasher.combine(condition)
		hasher.combine(contact)
		hasher.combine(description_fhir)
		hasher.combine(enrollment)
		hasher.combine(focus)
		hasher.combine(identifier)
		hasher.combine(keyword)
		hasher.combine(location)
		hasher.combine(note)
		hasher.combine(objective)
		hasher.combine(partOf)
		hasher.combine(period)
		hasher.combine(phase)
		hasher.combine(primaryPurposeType)
		hasher.combine(principalInvestigator)
		hasher.combine(`protocol`)
		hasher.combine(reasonStopped)
		hasher.combine(relatedArtifact)
		hasher.combine(site)
		hasher.combine(sponsor)
		hasher.combine(status)
		hasher.combine(title)
	}
}

/**
 Defined path through the study for a subject.
 
 Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out,
 exposure to drug B, wash-out, follow-up.
 */
open class ResearchStudyArm: BackboneElement {
	
	/// Label for study arm
	public var name: FHIRPrimitive<FHIRString>
	
	/// Categorization of study arm
	public var type: CodeableConcept?
	
	/// Short explanation of study path
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
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
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							type: CodeableConcept? = nil)
	{
		self.init(name: name)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchStudyArm else {
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
 A goal for the study.
 
 A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data
 collected during the study.
 */
open class ResearchStudyObjective: BackboneElement {
	
	/// Label for the objective
	public var name: FHIRPrimitive<FHIRString>?
	
	/// primary | secondary | exploratory
	public var type: CodeableConcept?
	
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
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		return name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(type)
	}
}
