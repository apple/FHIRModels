//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
	
	/// Whether the event actually happened, or just had the potential to. Note that this is independent of whether
	/// anyone was affected or harmed or how severely.
	public var actuality: FHIRPrimitive<AdverseEventActuality>
	
	/// product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-
	/// technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-
	/// device-use-error | problem-different-manufacturer | unsafe-physical-environment
	public var category: [CodeableConcept]?
	
	/// Type of the event itself in relation to the subject
	public var event: CodeableConcept?
	
	/// Subject impacted by event
	public var subject: Reference
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// When the event occurred
	public var date: FHIRPrimitive<DateTime>?
	
	/// When the event was detected
	public var detected: FHIRPrimitive<DateTime>?
	
	/// When the event was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Effect on the subject due to this event
	public var resultingCondition: [Reference]?
	
	/// Location where adverse event occurred
	public var location: Reference?
	
	/// Seriousness of the event
	public var seriousness: CodeableConcept?
	
	/// mild | moderate | severe
	public var severity: CodeableConcept?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown
	public var outcome: CodeableConcept?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// Who  was involved in the adverse event or the potential adverse event
	public var contributor: [Reference]?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// AdverseEvent.subjectMedicalHistory
	public var subjectMedicalHistory: [Reference]?
	
	/// AdverseEvent.referenceDocument
	public var referenceDocument: [Reference]?
	
	/// AdverseEvent.study
	public var study: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(actuality: FHIRPrimitive<AdverseEventActuality>, subject: Reference) {
		self.actuality = actuality
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(actuality: actuality, subject: subject)
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
		self.subjectMedicalHistory = subjectMedicalHistory
		self.suspectEntity = suspectEntity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actuality; case _actuality
		case category
		case contributor
		case date; case _date
		case detected; case _detected
		case encounter
		case event
		case identifier
		case location
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actuality = try FHIRPrimitive<AdverseEventActuality>(from: _container, forKey: .actuality, auxiliaryKey: ._actuality)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contributor = try [Reference](from: _container, forKeyIfPresent: .contributor)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detected = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .detected, auxiliaryKey: ._detected)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.event = try CodeableConcept(from: _container, forKeyIfPresent: .event)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actuality.encode(on: &_container, forKey: .actuality, auxiliaryKey: ._actuality)
		try category?.encode(on: &_container, forKey: .category)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detected?.encode(on: &_container, forKey: .detected, auxiliaryKey: ._detected)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
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
		return actuality == _other.actuality
		    && category == _other.category
		    && contributor == _other.contributor
		    && date == _other.date
		    && detected == _other.detected
		    && encounter == _other.encounter
		    && event == _other.event
		    && identifier == _other.identifier
		    && location == _other.location
		    && outcome == _other.outcome
		    && recordedDate == _other.recordedDate
		    && recorder == _other.recorder
		    && referenceDocument == _other.referenceDocument
		    && resultingCondition == _other.resultingCondition
		    && seriousness == _other.seriousness
		    && severity == _other.severity
		    && study == _other.study
		    && subject == _other.subject
		    && subjectMedicalHistory == _other.subjectMedicalHistory
		    && suspectEntity == _other.suspectEntity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actuality)
		hasher.combine(category)
		hasher.combine(contributor)
		hasher.combine(date)
		hasher.combine(detected)
		hasher.combine(encounter)
		hasher.combine(event)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(outcome)
		hasher.combine(recordedDate)
		hasher.combine(recorder)
		hasher.combine(referenceDocument)
		hasher.combine(resultingCondition)
		hasher.combine(seriousness)
		hasher.combine(severity)
		hasher.combine(study)
		hasher.combine(subject)
		hasher.combine(subjectMedicalHistory)
		hasher.combine(suspectEntity)
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
open class AdverseEventSuspectEntity: BackboneElement {
	
	/// Refers to the specific entity that caused the adverse event
	public var instance: Reference
	
	/// Information on the possible cause of the event
	public var causality: [AdverseEventSuspectEntityCausality]?
	
	/// Designated initializer taking all required properties
	public init(instance: Reference) {
		self.instance = instance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							causality: [AdverseEventSuspectEntityCausality]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instance: Reference,
							modifierExtension: [Extension]? = nil)
	{
		self.init(instance: instance)
		self.causality = causality
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case causality
		case instance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.causality = try [AdverseEventSuspectEntityCausality](from: _container, forKeyIfPresent: .causality)
		self.instance = try Reference(from: _container, forKey: .instance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try causality?.encode(on: &_container, forKey: .causality)
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
		    && instance == _other.instance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(causality)
		hasher.combine(instance)
	}
}

/**
 Information on the possible cause of the event.
 */
open class AdverseEventSuspectEntityCausality: BackboneElement {
	
	/// Assessment of if the entity caused the event
	public var assessment: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityProductRelatedness
	public var productRelatedness: FHIRPrimitive<FHIRString>?
	
	/// AdverseEvent.suspectEntity.causalityAuthor
	public var author: Reference?
	
	/// ProbabilityScale | Bayesian | Checklist
	public var method: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assessment: CodeableConcept? = nil,
							author: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							productRelatedness: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case method
		case productRelatedness; case _productRelatedness
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assessment = try CodeableConcept(from: _container, forKeyIfPresent: .assessment)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.productRelatedness = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productRelatedness, auxiliaryKey: ._productRelatedness)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assessment?.encode(on: &_container, forKey: .assessment)
		try author?.encode(on: &_container, forKey: .author)
		try method?.encode(on: &_container, forKey: .method)
		try productRelatedness?.encode(on: &_container, forKey: .productRelatedness, auxiliaryKey: ._productRelatedness)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventSuspectEntityCausality else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assessment == _other.assessment
		    && author == _other.author
		    && method == _other.method
		    && productRelatedness == _other.productRelatedness
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assessment)
		hasher.combine(author)
		hasher.combine(method)
		hasher.combine(productRelatedness)
	}
}
