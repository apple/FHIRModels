//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
 Medical care, research study or other healthcare event causing physical injury.
 
 Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care,
 a research study or other healthcare setting factors that requires additional monitoring, treatment, or
 hospitalization, or that results in death.
 */
public struct AdverseEvent: DomainResource {
	
	public static let resourceType: ResourceType = .adverseEvent
	
	/// The type of event which is important to characterize what occurred and caused harm to the subject, or had the
	/// potential to cause harm to the subject.
	public var category: FHIRPrimitive<AdverseEventCategory>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the event occurred
	public var date: FHIRPrimitive<DateTime>?
	
	/// Description of the adverse event
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who  was involved in the adverse event or the potential adverse event
	public var eventParticipant: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the event
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Location where adverse event occurred
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown
	public var outcome: CodeableConcept?
	
	/// Adverse Reaction Events linked to exposure to substance
	public var reaction: [Reference]?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// AdverseEvent.referenceDocument
	public var referenceDocument: [Reference]?
	
	/// Mild | Moderate | Severe
	public var seriousness: CodeableConcept?
	
	/// AdverseEvent.study
	public var study: [Reference]?
	
	/// Subject or group impacted by event
	public var subject: Reference?
	
	/// AdverseEvent.subjectMedicalHistory
	public var subjectMedicalHistory: [Reference]?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// actual | potential
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		category: FHIRPrimitive<AdverseEventCategory>? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		eventParticipant: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: CodeableConcept? = nil,
		reaction: [Reference]? = nil,
		recorder: Reference? = nil,
		referenceDocument: [Reference]? = nil,
		seriousness: CodeableConcept? = nil,
		study: [Reference]? = nil,
		subject: Reference? = nil,
		subjectMedicalHistory: [Reference]? = nil,
		suspectEntity: [AdverseEventSuspectEntity]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.category = category
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.eventParticipant = eventParticipant
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.reaction = reaction
		self.recorder = recorder
		self.referenceDocument = referenceDocument
		self.seriousness = seriousness
		self.study = study
		self.subject = subject
		self.subjectMedicalHistory = subjectMedicalHistory
		self.suspectEntity = suspectEntity
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category; case _category
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case eventParticipant
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case outcome
		case reaction
		case recorder
		case referenceDocument
		case seriousness
		case study
		case subject
		case subjectMedicalHistory
		case suspectEntity
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try FHIRPrimitive<AdverseEventCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.eventParticipant = try Reference(from: _container, forKeyIfPresent: .eventParticipant)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.reaction = try [Reference](from: _container, forKeyIfPresent: .reaction)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.referenceDocument = try [Reference](from: _container, forKeyIfPresent: .referenceDocument)
		self.seriousness = try CodeableConcept(from: _container, forKeyIfPresent: .seriousness)
		self.study = try [Reference](from: _container, forKeyIfPresent: .study)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subjectMedicalHistory = try [Reference](from: _container, forKeyIfPresent: .subjectMedicalHistory)
		self.suspectEntity = try [AdverseEventSuspectEntity](from: _container, forKeyIfPresent: .suspectEntity)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try eventParticipant?.encode(on: &_container, forKey: .eventParticipant)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try referenceDocument?.encode(on: &_container, forKey: .referenceDocument)
		try seriousness?.encode(on: &_container, forKey: .seriousness)
		try study?.encode(on: &_container, forKey: .study)
		try subject?.encode(on: &_container, forKey: .subject)
		try subjectMedicalHistory?.encode(on: &_container, forKey: .subjectMedicalHistory)
		try suspectEntity?.encode(on: &_container, forKey: .suspectEntity)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
public struct AdverseEventSuspectEntity: BackboneElement {
	
	/// None
	public var causality: FHIRPrimitive<AdverseEventCausality>?
	
	/// assess1 | assess2
	public var causalityAssessment: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityAuthor
	public var causalityAuthor: Reference?
	
	/// method1 | method2
	public var causalityMethod: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityProductRelatedness
	public var causalityProductRelatedness: FHIRPrimitive<FHIRString>?
	
	/// result1 | result2
	public var causalityResult: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Refers to the specific entity that caused the adverse event
	public var instance: Reference
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		causality: FHIRPrimitive<AdverseEventCausality>? = nil,
		causalityAssessment: CodeableConcept? = nil,
		causalityAuthor: Reference? = nil,
		causalityMethod: CodeableConcept? = nil,
		causalityProductRelatedness: FHIRPrimitive<FHIRString>? = nil,
		causalityResult: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.causality = causality
		self.causalityAssessment = causalityAssessment
		self.causalityAuthor = causalityAuthor
		self.causalityMethod = causalityMethod
		self.causalityProductRelatedness = causalityProductRelatedness
		self.causalityResult = causalityResult
		self.`extension` = `extension`
		self.id = id
		self.instance = instance
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case causality; case _causality
		case causalityAssessment
		case causalityAuthor
		case causalityMethod
		case causalityProductRelatedness; case _causalityProductRelatedness
		case causalityResult
		case `extension` = "extension"
		case id; case _id
		case instance
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.causality = try FHIRPrimitive<AdverseEventCausality>(from: _container, forKeyIfPresent: .causality, auxiliaryKey: ._causality)
		self.causalityAssessment = try CodeableConcept(from: _container, forKeyIfPresent: .causalityAssessment)
		self.causalityAuthor = try Reference(from: _container, forKeyIfPresent: .causalityAuthor)
		self.causalityMethod = try CodeableConcept(from: _container, forKeyIfPresent: .causalityMethod)
		self.causalityProductRelatedness = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .causalityProductRelatedness, auxiliaryKey: ._causalityProductRelatedness)
		self.causalityResult = try CodeableConcept(from: _container, forKeyIfPresent: .causalityResult)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instance = try Reference(from: _container, forKey: .instance)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try causality?.encode(on: &_container, forKey: .causality, auxiliaryKey: ._causality)
		try causalityAssessment?.encode(on: &_container, forKey: .causalityAssessment)
		try causalityAuthor?.encode(on: &_container, forKey: .causalityAuthor)
		try causalityMethod?.encode(on: &_container, forKey: .causalityMethod)
		try causalityProductRelatedness?.encode(on: &_container, forKey: .causalityProductRelatedness, auxiliaryKey: ._causalityProductRelatedness)
		try causalityResult?.encode(on: &_container, forKey: .causalityResult)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instance.encode(on: &_container, forKey: .instance)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
