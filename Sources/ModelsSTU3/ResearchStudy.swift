//
//  ResearchStudy.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ResearchStudy)
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
	
	/// Contact details for the study
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// What this is study doing
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Inclusion & exclusion criteria
	public var enrollment: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Drugs, devices, conditions, etc. under study
	public var focus: [CodeableConcept]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Geographic region(s) for study
	public var jurisdiction: [CodeableConcept]?
	
	/// Used to search for the study
	public var keyword: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the event
	public var note: [Annotation]?
	
	/// Part of larger study
	public var partOf: [Reference]?
	
	/// When the study began and ended
	public var period: Period?
	
	/// The individual responsible for the study
	public var principalInvestigator: Reference?
	
	/// Steps followed in executing study
	public var `protocol`: [Reference]?
	
	/// Reason for terminating study early
	public var reasonStopped: CodeableConcept?
	
	/// References and dependencies
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Location involved in study execution
	public var site: [Reference]?
	
	/// Organization responsible for the study
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
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		enrollment: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		focus: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		keyword: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		period: Period? = nil,
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
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.enrollment = enrollment
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.keyword = keyword
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.period = period
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
		case contact
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case enrollment
		case `extension` = "extension"
		case focus
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case keyword
		case language; case _language
		case meta
		case modifierExtension
		case note
		case partOf
		case period
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
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.enrollment = try [Reference](from: _container, forKeyIfPresent: .enrollment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [CodeableConcept](from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.keyword = try [CodeableConcept](from: _container, forKeyIfPresent: .keyword)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
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
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try enrollment?.encode(on: &_container, forKey: .enrollment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try keyword?.encode(on: &_container, forKey: .keyword)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try period?.encode(on: &_container, forKey: .period)
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
	
	/// Categorization of study arm
	public var code: CodeableConcept?
	
	/// Short explanation of study path
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Label for study arm
	public var name: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}
