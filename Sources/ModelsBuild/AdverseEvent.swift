//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
 
 An event (i.e. any change to current patient status) that may be related to unintended effects on a patient or research
 subject.  The unintended effects may require additional monitoring, treatment or hospitalization or may result in
 death.  The AdverseEvent resource also extends to potential or avoided events that could have had such effects.
 */
open class AdverseEvent: DomainResource {
	
	override open class var resourceType: ResourceType { return .adverseEvent }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Business identifier for the event
	public var identifier: [Identifier]?
	
	/// The current state of the adverse event or potential adverse event.
	/// Restricted to: ['in-progress', 'completed', 'entered-in-error', 'unknown']
	public var status: FHIRPrimitive<EventStatus>
	
	/// Whether the event actually happened, or just had the potential to. Note that this is independent of whether
	/// anyone was affected or harmed or how severely.
	public var actuality: FHIRPrimitive<AdverseEventActuality>
	
	/// wrong-patient | procedure-mishap | medication-mishap | device | unsafe-physical-environment | hospital-aquired-
	/// infection | wrong-body-site
	public var category: [CodeableConcept]?
	
	/// Event or incident that occurred or was averted
	public var code: CodeableConcept?
	
	/// Subject impacted by event
	public var subject: Reference
	
	/// The Encounter associated with the start of the AdverseEvent
	public var encounter: Reference?
	
	/// When the event occurred
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When the event was detected
	public var detected: FHIRPrimitive<DateTime>?
	
	/// When the event was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Effect on the subject due to this event
	public var resultingCondition: [Reference]?
	
	/// Location where adverse event occurred
	public var location: Reference?
	
	/// Seriousness or gravity of the event
	public var seriousness: CodeableConcept?
	
	/// Type of outcome from the adverse event
	public var outcome: CodeableConcept?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// Who was involved in the adverse event or the potential adverse event and what they did
	public var participant: [AdverseEventParticipant]?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// Contributing factors suspected to have increased the probability or severity of the adverse event
	public var contributingFactor: [AdverseEventContributingFactor]?
	
	/// Preventive actions that contributed to avoiding the adverse event
	public var preventiveAction: [AdverseEventPreventiveAction]?
	
	/// Ameliorating actions taken after the adverse event occured in order to reduce the extent of harm
	public var mitigatingAction: [AdverseEventMitigatingAction]?
	
	/// Supporting information relevant to the event
	public var supportingInfo: [AdverseEventSupportingInfo]?
	
	/// Research study that the subject is enrolled in
	public var study: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(actuality: FHIRPrimitive<AdverseEventActuality>, status: FHIRPrimitive<EventStatus>, subject: Reference) {
		self.actuality = actuality
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actuality: FHIRPrimitive<AdverseEventActuality>,
							category: [CodeableConcept]? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							contributingFactor: [AdverseEventContributingFactor]? = nil,
							detected: FHIRPrimitive<DateTime>? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							meta: Meta? = nil,
							mitigatingAction: [AdverseEventMitigatingAction]? = nil,
							modifierExtension: [Extension]? = nil,
							occurrence: OccurrenceX? = nil,
							outcome: CodeableConcept? = nil,
							participant: [AdverseEventParticipant]? = nil,
							preventiveAction: [AdverseEventPreventiveAction]? = nil,
							recordedDate: FHIRPrimitive<DateTime>? = nil,
							recorder: Reference? = nil,
							resultingCondition: [Reference]? = nil,
							seriousness: CodeableConcept? = nil,
							status: FHIRPrimitive<EventStatus>,
							study: [Reference]? = nil,
							subject: Reference,
							supportingInfo: [AdverseEventSupportingInfo]? = nil,
							suspectEntity: [AdverseEventSuspectEntity]? = nil,
							text: Narrative? = nil)
	{
		self.init(actuality: actuality, status: status, subject: subject)
		self.category = category
		self.code = code
		self.contained = contained
		self.contributingFactor = contributingFactor
		self.detected = detected
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.mitigatingAction = mitigatingAction
		self.modifierExtension = modifierExtension
		self.occurrence = occurrence
		self.outcome = outcome
		self.participant = participant
		self.preventiveAction = preventiveAction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.resultingCondition = resultingCondition
		self.seriousness = seriousness
		self.study = study
		self.supportingInfo = supportingInfo
		self.suspectEntity = suspectEntity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actuality; case _actuality
		case category
		case code
		case contributingFactor
		case detected; case _detected
		case encounter
		case identifier
		case location
		case mitigatingAction
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case outcome
		case participant
		case preventiveAction
		case recordedDate; case _recordedDate
		case recorder
		case resultingCondition
		case seriousness
		case status; case _status
		case study
		case subject
		case supportingInfo
		case suspectEntity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actuality = try FHIRPrimitive<AdverseEventActuality>(from: _container, forKey: .actuality, auxiliaryKey: ._actuality)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contributingFactor = try [AdverseEventContributingFactor](from: _container, forKeyIfPresent: .contributingFactor)
		self.detected = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .detected, auxiliaryKey: ._detected)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.mitigatingAction = try [AdverseEventMitigatingAction](from: _container, forKeyIfPresent: .mitigatingAction)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		self.occurrence = _t_occurrence
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.participant = try [AdverseEventParticipant](from: _container, forKeyIfPresent: .participant)
		self.preventiveAction = try [AdverseEventPreventiveAction](from: _container, forKeyIfPresent: .preventiveAction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.resultingCondition = try [Reference](from: _container, forKeyIfPresent: .resultingCondition)
		self.seriousness = try CodeableConcept(from: _container, forKeyIfPresent: .seriousness)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try [Reference](from: _container, forKeyIfPresent: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [AdverseEventSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
		self.suspectEntity = try [AdverseEventSuspectEntity](from: _container, forKeyIfPresent: .suspectEntity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actuality.encode(on: &_container, forKey: .actuality, auxiliaryKey: ._actuality)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try contributingFactor?.encode(on: &_container, forKey: .contributingFactor)
		try detected?.encode(on: &_container, forKey: .detected, auxiliaryKey: ._detected)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try mitigatingAction?.encode(on: &_container, forKey: .mitigatingAction)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceTiming)
			}
		}
		try outcome?.encode(on: &_container, forKey: .outcome)
		try participant?.encode(on: &_container, forKey: .participant)
		try preventiveAction?.encode(on: &_container, forKey: .preventiveAction)
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try resultingCondition?.encode(on: &_container, forKey: .resultingCondition)
		try seriousness?.encode(on: &_container, forKey: .seriousness)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study?.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
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
		    && code == _other.code
		    && contributingFactor == _other.contributingFactor
		    && detected == _other.detected
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && location == _other.location
		    && mitigatingAction == _other.mitigatingAction
		    && occurrence == _other.occurrence
		    && outcome == _other.outcome
		    && participant == _other.participant
		    && preventiveAction == _other.preventiveAction
		    && recordedDate == _other.recordedDate
		    && recorder == _other.recorder
		    && resultingCondition == _other.resultingCondition
		    && seriousness == _other.seriousness
		    && status == _other.status
		    && study == _other.study
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
		    && suspectEntity == _other.suspectEntity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actuality)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(contributingFactor)
		hasher.combine(detected)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(mitigatingAction)
		hasher.combine(occurrence)
		hasher.combine(outcome)
		hasher.combine(participant)
		hasher.combine(preventiveAction)
		hasher.combine(recordedDate)
		hasher.combine(recorder)
		hasher.combine(resultingCondition)
		hasher.combine(seriousness)
		hasher.combine(status)
		hasher.combine(study)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
		hasher.combine(suspectEntity)
	}
}

/**
 Contributing factors suspected to have increased the probability or severity of the adverse event.
 
 The contributing factors suspected to have increased the probability or severity of the adverse event.
 */
open class AdverseEventContributingFactor: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Item suspected to have increased the probability or severity of the adverse event
	/// One of `item[x]`
	public var item: ItemX
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch item {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventContributingFactor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
	}
}

/**
 Ameliorating actions taken after the adverse event occured in order to reduce the extent of harm.
 
 The ameliorating action taken after the adverse event occured in order to reduce the extent of harm.
 */
open class AdverseEventMitigatingAction: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Ameliorating action taken after the adverse event occured in order to reduce the extent of harm
	/// One of `item[x]`
	public var item: ItemX
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch item {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventMitigatingAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
	}
}

/**
 Who was involved in the adverse event or the potential adverse event and what they did.
 
 Indicates who or what participated in the adverse event and how they were involved.
 */
open class AdverseEventParticipant: BackboneElement {
	
	/// Type of involvement
	public var function: CodeableConcept?
	
	/// Who was involved in the adverse event or the potential adverse event
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							function: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}

/**
 Preventive actions that contributed to avoiding the adverse event.
 */
open class AdverseEventPreventiveAction: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Action that contributed to avoiding the adverse event
	/// One of `item[x]`
	public var item: ItemX
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch item {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventPreventiveAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
	}
}

/**
 Supporting information relevant to the event.
 */
open class AdverseEventSupportingInfo: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Subject medical history or document relevant to this adverse event
	/// One of `item[x]`
	public var item: ItemX
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch item {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventSupportingInfo else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
open class AdverseEventSuspectEntity: BackboneElement {
	
	/// All possible types for "instance[x]"
	public enum InstanceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Refers to the specific entity that caused the adverse event
	/// One of `instance[x]`
	public var instance: InstanceX
	
	/// Information on the possible cause of the event
	public var causality: AdverseEventSuspectEntityCausality?
	
	/// Designated initializer taking all required properties
	public init(instance: InstanceX) {
		self.instance = instance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							causality: AdverseEventSuspectEntityCausality? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instance: InstanceX,
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
		case instanceCodeableConcept
		case instanceReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.instanceCodeableConcept) || _container.contains(CodingKeys.instanceReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.instanceCodeableConcept, CodingKeys.instanceReference], debugDescription: "Must have at least one value for \"instance\" but have none"))
		}
		
		// Decode all our properties
		self.causality = try AdverseEventSuspectEntityCausality(from: _container, forKeyIfPresent: .causality)
		var _t_instance: InstanceX? = nil
		if let instanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .instanceCodeableConcept) {
			if _t_instance != nil {
				throw DecodingError.dataCorruptedError(forKey: .instanceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"instance\"")
			}
			_t_instance = .codeableConcept(instanceCodeableConcept)
		}
		if let instanceReference = try Reference(from: _container, forKeyIfPresent: .instanceReference) {
			if _t_instance != nil {
				throw DecodingError.dataCorruptedError(forKey: .instanceReference, in: _container, debugDescription: "More than one value provided for \"instance\"")
			}
			_t_instance = .reference(instanceReference)
		}
		self.instance = _t_instance!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try causality?.encode(on: &_container, forKey: .causality)
		
			switch instance {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .instanceCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .instanceReference)
			}
		
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
	
	/// Method of evaluating the relatedness of the suspected entity to the event
	public var assessmentMethod: CodeableConcept?
	
	/// Result of the assessment regarding the relatedness of the suspected entity to the event
	public var entityRelatedness: CodeableConcept?
	
	/// Author of the information on the possible cause of the event
	public var author: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assessmentMethod: CodeableConcept? = nil,
							author: Reference? = nil,
							entityRelatedness: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.assessmentMethod = assessmentMethod
		self.author = author
		self.entityRelatedness = entityRelatedness
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assessmentMethod
		case author
		case entityRelatedness
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assessmentMethod = try CodeableConcept(from: _container, forKeyIfPresent: .assessmentMethod)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.entityRelatedness = try CodeableConcept(from: _container, forKeyIfPresent: .entityRelatedness)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assessmentMethod?.encode(on: &_container, forKey: .assessmentMethod)
		try author?.encode(on: &_container, forKey: .author)
		try entityRelatedness?.encode(on: &_container, forKey: .entityRelatedness)
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
		return assessmentMethod == _other.assessmentMethod
		    && author == _other.author
		    && entityRelatedness == _other.entityRelatedness
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assessmentMethod)
		hasher.combine(author)
		hasher.combine(entityRelatedness)
	}
}
