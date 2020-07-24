//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
 Medical care, research study or other healthcare event causing physical injury.
 
 Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care,
 a research study or other healthcare setting factors that requires additional monitoring, treatment, or
 hospitalization, or that results in death.
 */
open class AdverseEvent: DomainResource {
	
	override open class var resourceType: ResourceType { return .adverseEvent }
	
	/// Business identifier for the event
	public var identifier: Identifier?
	
	/// The type of event which is important to characterize what occurred and caused harm to the subject, or had the
	/// potential to cause harm to the subject.
	public var category: FHIRPrimitive<AdverseEventCategory>?
	
	/// actual | potential
	public var type: CodeableConcept?
	
	/// Subject or group impacted by event
	public var subject: Reference?
	
	/// When the event occurred
	public var date: FHIRPrimitive<DateTime>?
	
	/// Adverse Reaction Events linked to exposure to substance
	public var reaction: [Reference]?
	
	/// Location where adverse event occurred
	public var location: Reference?
	
	/// Mild | Moderate | Severe
	public var seriousness: CodeableConcept?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown
	public var outcome: CodeableConcept?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// Who  was involved in the adverse event or the potential adverse event
	public var eventParticipant: Reference?
	
	/// Description of the adverse event
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// AdverseEvent.subjectMedicalHistory
	public var subjectMedicalHistory: [Reference]?
	
	/// AdverseEvent.referenceDocument
	public var referenceDocument: [Reference]?
	
	/// AdverseEvent.study
	public var study: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case category; case _category
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case eventParticipant
		case identifier
		case location
		case outcome
		case reaction
		case recorder
		case referenceDocument
		case seriousness
		case study
		case subject
		case subjectMedicalHistory
		case suspectEntity
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try FHIRPrimitive<AdverseEventCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.eventParticipant = try Reference(from: _container, forKeyIfPresent: .eventParticipant)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.reaction = try [Reference](from: _container, forKeyIfPresent: .reaction)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.referenceDocument = try [Reference](from: _container, forKeyIfPresent: .referenceDocument)
		self.seriousness = try CodeableConcept(from: _container, forKeyIfPresent: .seriousness)
		self.study = try [Reference](from: _container, forKeyIfPresent: .study)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subjectMedicalHistory = try [Reference](from: _container, forKeyIfPresent: .subjectMedicalHistory)
		self.suspectEntity = try [AdverseEventSuspectEntity](from: _container, forKeyIfPresent: .suspectEntity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try eventParticipant?.encode(on: &_container, forKey: .eventParticipant)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try referenceDocument?.encode(on: &_container, forKey: .referenceDocument)
		try seriousness?.encode(on: &_container, forKey: .seriousness)
		try study?.encode(on: &_container, forKey: .study)
		try subject?.encode(on: &_container, forKey: .subject)
		try subjectMedicalHistory?.encode(on: &_container, forKey: .subjectMedicalHistory)
		try suspectEntity?.encode(on: &_container, forKey: .suspectEntity)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && eventParticipant == _other.eventParticipant
		    && identifier == _other.identifier
		    && location == _other.location
		    && outcome == _other.outcome
		    && reaction == _other.reaction
		    && recorder == _other.recorder
		    && referenceDocument == _other.referenceDocument
		    && seriousness == _other.seriousness
		    && study == _other.study
		    && subject == _other.subject
		    && subjectMedicalHistory == _other.subjectMedicalHistory
		    && suspectEntity == _other.suspectEntity
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(eventParticipant)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(outcome)
		hasher.combine(reaction)
		hasher.combine(recorder)
		hasher.combine(referenceDocument)
		hasher.combine(seriousness)
		hasher.combine(study)
		hasher.combine(subject)
		hasher.combine(subjectMedicalHistory)
		hasher.combine(suspectEntity)
		hasher.combine(type)
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
open class AdverseEventSuspectEntity: BackboneElement {
	
	/// Refers to the specific entity that caused the adverse event
	public var instance: Reference
	
	/// None
	public var causality: FHIRPrimitive<AdverseEventCausality>?
	
	/// assess1 | assess2
	public var causalityAssessment: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityProductRelatedness
	public var causalityProductRelatedness: FHIRPrimitive<FHIRString>?
	
	/// method1 | method2
	public var causalityMethod: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityAuthor
	public var causalityAuthor: Reference?
	
	/// result1 | result2
	public var causalityResult: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(instance: Reference) {
		self.instance = instance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							causality: FHIRPrimitive<AdverseEventCausality>? = nil,
							causalityAssessment: CodeableConcept? = nil,
							causalityAuthor: Reference? = nil,
							causalityMethod: CodeableConcept? = nil,
							causalityProductRelatedness: FHIRPrimitive<FHIRString>? = nil,
							causalityResult: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instance: Reference,
							modifierExtension: [Extension]? = nil)
	{
		self.init(instance: instance)
		self.causality = causality
		self.causalityAssessment = causalityAssessment
		self.causalityAuthor = causalityAuthor
		self.causalityMethod = causalityMethod
		self.causalityProductRelatedness = causalityProductRelatedness
		self.causalityResult = causalityResult
		self.`extension` = `extension`
		self.id = id
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
		case instance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.causality = try FHIRPrimitive<AdverseEventCausality>(from: _container, forKeyIfPresent: .causality, auxiliaryKey: ._causality)
		self.causalityAssessment = try CodeableConcept(from: _container, forKeyIfPresent: .causalityAssessment)
		self.causalityAuthor = try Reference(from: _container, forKeyIfPresent: .causalityAuthor)
		self.causalityMethod = try CodeableConcept(from: _container, forKeyIfPresent: .causalityMethod)
		self.causalityProductRelatedness = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .causalityProductRelatedness, auxiliaryKey: ._causalityProductRelatedness)
		self.causalityResult = try CodeableConcept(from: _container, forKeyIfPresent: .causalityResult)
		self.instance = try Reference(from: _container, forKey: .instance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try causality?.encode(on: &_container, forKey: .causality, auxiliaryKey: ._causality)
		try causalityAssessment?.encode(on: &_container, forKey: .causalityAssessment)
		try causalityAuthor?.encode(on: &_container, forKey: .causalityAuthor)
		try causalityMethod?.encode(on: &_container, forKey: .causalityMethod)
		try causalityProductRelatedness?.encode(on: &_container, forKey: .causalityProductRelatedness, auxiliaryKey: ._causalityProductRelatedness)
		try causalityResult?.encode(on: &_container, forKey: .causalityResult)
		try instance.encode(on: &_container, forKey: .instance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventSuspectEntity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return causality == _other.causality
		    && causalityAssessment == _other.causalityAssessment
		    && causalityAuthor == _other.causalityAuthor
		    && causalityMethod == _other.causalityMethod
		    && causalityProductRelatedness == _other.causalityProductRelatedness
		    && causalityResult == _other.causalityResult
		    && instance == _other.instance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(causality)
		hasher.combine(causalityAssessment)
		hasher.combine(causalityAuthor)
		hasher.combine(causalityMethod)
		hasher.combine(causalityProductRelatedness)
		hasher.combine(causalityResult)
		hasher.combine(instance)
	}
}
