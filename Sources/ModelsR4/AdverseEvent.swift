//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
	
	/// Whether the event actually happened, or just had the potential to. Note that this is independent of whether
	/// anyone was affected or harmed or how severely.
	public var actuality: FHIRPrimitive<AdverseEventActuality>
	
	/// product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-
	/// technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-
	/// device-use-error | problem-different-manufacturer | unsafe-physical-environment
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Who  was involved in the adverse event or the potential adverse event
	public var contributor: [Reference]?
	
	/// When the event occurred
	public var date: FHIRPrimitive<DateTime>?
	
	/// When the event was detected
	public var detected: FHIRPrimitive<DateTime>?
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// Type of the event itself in relation to the subject
	public var event: CodeableConcept?
	
	/// Additional content defined by implementations
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
	
	/// When the event was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// AdverseEvent.referenceDocument
	public var referenceDocument: [Reference]?
	
	/// Effect on the subject due to this event
	public var resultingCondition: [Reference]?
	
	/// Seriousness of the event
	public var seriousness: CodeableConcept?
	
	/// mild | moderate | severe
	public var severity: CodeableConcept?
	
	/// AdverseEvent.study
	public var study: [Reference]?
	
	/// Subject impacted by event
	public var subject: Reference
	
	/// AdverseEvent.subjectMedicalHistory
	public var subjectMedicalHistory: [Reference]?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		actuality: FHIRPrimitive<AdverseEventActuality>,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		contributor: [Reference]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		detected: FHIRPrimitive<DateTime>? = nil,
		encounter: Reference? = nil,
		event: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: CodeableConcept? = nil,
		recordedDate: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		referenceDocument: [Reference]? = nil,
		resultingCondition: [Reference]? = nil,
		seriousness: CodeableConcept? = nil,
		severity: CodeableConcept? = nil,
		study: [Reference]? = nil,
		subject: Reference,
		subjectMedicalHistory: [Reference]? = nil,
		suspectEntity: [AdverseEventSuspectEntity]? = nil,
		text: Narrative? = nil
	) {
		self.actuality = actuality
		self.category = category
		self.contained = contained
		self.contributor = contributor
		self.date = date
		self.detected = detected
		self.encounter = encounter
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.referenceDocument = referenceDocument
		self.resultingCondition = resultingCondition
		self.seriousness = seriousness
		self.severity = severity
		self.study = study
		self.subject = subject
		self.subjectMedicalHistory = subjectMedicalHistory
		self.suspectEntity = suspectEntity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actuality; case _actuality
		case category
		case contained
		case contributor
		case date; case _date
		case detected; case _detected
		case encounter
		case event
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case outcome
		case recordedDate; case _recordedDate
		case recorder
		case referenceDocument
		case resultingCondition
		case seriousness
		case severity
		case study
		case subject
		case subjectMedicalHistory
		case suspectEntity
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actuality = try FHIRPrimitive<AdverseEventActuality>(from: _container, forKey: .actuality, auxiliaryKey: ._actuality)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contributor = try [Reference](from: _container, forKeyIfPresent: .contributor)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detected = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .detected, auxiliaryKey: ._detected)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.event = try CodeableConcept(from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.referenceDocument = try [Reference](from: _container, forKeyIfPresent: .referenceDocument)
		self.resultingCondition = try [Reference](from: _container, forKeyIfPresent: .resultingCondition)
		self.seriousness = try CodeableConcept(from: _container, forKeyIfPresent: .seriousness)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.study = try [Reference](from: _container, forKeyIfPresent: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.subjectMedicalHistory = try [Reference](from: _container, forKeyIfPresent: .subjectMedicalHistory)
		self.suspectEntity = try [AdverseEventSuspectEntity](from: _container, forKeyIfPresent: .suspectEntity)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try actuality.encode(on: &_container, forKey: .actuality, auxiliaryKey: ._actuality)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detected?.encode(on: &_container, forKey: .detected, auxiliaryKey: ._detected)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try referenceDocument?.encode(on: &_container, forKey: .referenceDocument)
		try resultingCondition?.encode(on: &_container, forKey: .resultingCondition)
		try seriousness?.encode(on: &_container, forKey: .seriousness)
		try severity?.encode(on: &_container, forKey: .severity)
		try study?.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
		try subjectMedicalHistory?.encode(on: &_container, forKey: .subjectMedicalHistory)
		try suspectEntity?.encode(on: &_container, forKey: .suspectEntity)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
public struct AdverseEventSuspectEntity: BackboneElement {
	
	/// Information on the possible cause of the event
	public var causality: [AdverseEventSuspectEntityCausality]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Refers to the specific entity that caused the adverse event
	public var instance: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		causality: [AdverseEventSuspectEntityCausality]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.causality = causality
		self.`extension` = `extension`
		self.id = id
		self.instance = instance
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case causality
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
		self.causality = try [AdverseEventSuspectEntityCausality](from: _container, forKeyIfPresent: .causality)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instance = try Reference(from: _container, forKey: .instance)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try causality?.encode(on: &_container, forKey: .causality)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instance.encode(on: &_container, forKey: .instance)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Information on the possible cause of the event.
 */
public struct AdverseEventSuspectEntityCausality: BackboneElement {
	
	/// Assessment of if the entity caused the event
	public var assessment: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityAuthor
	public var author: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// ProbabilityScale | Bayesian | Checklist
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// AdverseEvent.suspectEntity.causalityProductRelatedness
	public var productRelatedness: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		assessment: CodeableConcept? = nil,
		author: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		productRelatedness: FHIRPrimitive<FHIRString>? = nil
	) {
		self.assessment = assessment
		self.author = author
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.productRelatedness = productRelatedness
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assessment
		case author
		case `extension` = "extension"
		case id; case _id
		case method
		case modifierExtension
		case productRelatedness; case _productRelatedness
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assessment = try CodeableConcept(from: _container, forKeyIfPresent: .assessment)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.productRelatedness = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productRelatedness, auxiliaryKey: ._productRelatedness)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assessment?.encode(on: &_container, forKey: .assessment)
		try author?.encode(on: &_container, forKey: .author)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try productRelatedness?.encode(on: &_container, forKey: .productRelatedness, auxiliaryKey: ._productRelatedness)
	}
}
