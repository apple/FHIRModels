//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
 An event that may be related to unintended effects on a patient or research participant.
 
 An event (i.e. any change to current patient status) that may be related to unintended effects on a patient or research
 participant. The unintended effects may require additional monitoring, treatment, hospitalization, or may result in
 death. The AdverseEvent resource also extends to potential or avoided events that could have had such effects. There
 are two major domains where the AdverseEvent resource is expected to be used. One is in clinical care reported adverse
 events and the other is in reporting adverse events in clinical  research trial management. Adverse events can be
 reported by healthcare providers, patients, caregivers or by medical products manufacturers. Given the differences
 between these two concepts, we recommend consulting the domain specific implementation guides when implementing the
 AdverseEvent Resource. The implementation guides include specific extensions, value sets and constraints.
 */
public struct AdverseEvent: DomainResource {
	
	public static let resourceType: ResourceType = .adverseEvent
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Whether the event actually happened or was a near miss. Note that this is independent of whether anyone was
	/// affected or harmed or how severely.
	public var actuality: FHIRPrimitive<AdverseEventActuality>
	
	/// wrong-patient | procedure-mishap | medication-mishap | device | unsafe-physical-environment | hospital-aquired-
	/// infection | wrong-body-site
	public var category: [CodeableConcept]?
	
	/// Event or incident that occurred or was averted
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Contributing factors suspected to have increased the probability or severity of the adverse event
	public var contributingFactor: [AdverseEventContributingFactor]?
	
	/// When the event was detected
	public var detected: FHIRPrimitive<DateTime>?
	
	/// The Encounter associated with the start of the AdverseEvent
	public var encounter: Reference?
	
	/// Considered likely or probable or anticipated in the research study
	public var expectedInResearchStudy: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the event
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Location where adverse event occurred
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Ameliorating actions taken after the adverse event occured in order to reduce the extent of harm
	public var mitigatingAction: [AdverseEventMitigatingAction]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comment on adverse event
	public var note: [Annotation]?
	
	/// When the event occurred
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Type of outcome from the adverse event
	public var outcome: [CodeableConcept]?
	
	/// Who was involved in the adverse event or the potential adverse event and what they did
	public var participant: [AdverseEventParticipant]?
	
	/// Preventive actions that contributed to avoiding the adverse event
	public var preventiveAction: [AdverseEventPreventiveAction]?
	
	/// When the event was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// Effect on the subject due to this event
	public var resultingEffect: [Reference]?
	
	/// Seriousness or gravity of the event
	public var seriousness: CodeableConcept?
	
	/// in-progress | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// Research study that the subject is enrolled in
	public var study: [Reference]?
	
	/// Subject impacted by event
	public var subject: Reference
	
	/// Supporting information relevant to the event
	public var supportingInfo: [AdverseEventSupportingInfo]?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		actuality: FHIRPrimitive<AdverseEventActuality>,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		contributingFactor: [AdverseEventContributingFactor]? = nil,
		detected: FHIRPrimitive<DateTime>? = nil,
		encounter: Reference? = nil,
		expectedInResearchStudy: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		mitigatingAction: [AdverseEventMitigatingAction]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		outcome: [CodeableConcept]? = nil,
		participant: [AdverseEventParticipant]? = nil,
		preventiveAction: [AdverseEventPreventiveAction]? = nil,
		recordedDate: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		resultingEffect: [Reference]? = nil,
		seriousness: CodeableConcept? = nil,
		status: FHIRPrimitive<FHIRString>,
		study: [Reference]? = nil,
		subject: Reference,
		supportingInfo: [AdverseEventSupportingInfo]? = nil,
		suspectEntity: [AdverseEventSuspectEntity]? = nil,
		text: Narrative? = nil
	) {
		self.actuality = actuality
		self.category = category
		self.code = code
		self.contained = contained
		self.contributingFactor = contributingFactor
		self.detected = detected
		self.encounter = encounter
		self.expectedInResearchStudy = expectedInResearchStudy
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.mitigatingAction = mitigatingAction
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.outcome = outcome
		self.participant = participant
		self.preventiveAction = preventiveAction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.resultingEffect = resultingEffect
		self.seriousness = seriousness
		self.status = status
		self.study = study
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.suspectEntity = suspectEntity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actuality; case _actuality
		case category
		case code
		case contained
		case contributingFactor
		case detected; case _detected
		case encounter
		case expectedInResearchStudy; case _expectedInResearchStudy
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case mitigatingAction
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case outcome
		case participant
		case preventiveAction
		case recordedDate; case _recordedDate
		case recorder
		case resultingEffect
		case seriousness
		case status; case _status
		case study
		case subject
		case supportingInfo
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
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contributingFactor = try [AdverseEventContributingFactor](from: _container, forKeyIfPresent: .contributingFactor)
		self.detected = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .detected, auxiliaryKey: ._detected)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expectedInResearchStudy = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .expectedInResearchStudy, auxiliaryKey: ._expectedInResearchStudy)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.mitigatingAction = try [AdverseEventMitigatingAction](from: _container, forKeyIfPresent: .mitigatingAction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.outcome = try [CodeableConcept](from: _container, forKeyIfPresent: .outcome)
		self.participant = try [AdverseEventParticipant](from: _container, forKeyIfPresent: .participant)
		self.preventiveAction = try [AdverseEventPreventiveAction](from: _container, forKeyIfPresent: .preventiveAction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.resultingEffect = try [Reference](from: _container, forKeyIfPresent: .resultingEffect)
		self.seriousness = try CodeableConcept(from: _container, forKeyIfPresent: .seriousness)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try [Reference](from: _container, forKeyIfPresent: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [AdverseEventSupportingInfo](from: _container, forKeyIfPresent: .supportingInfo)
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
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try contributingFactor?.encode(on: &_container, forKey: .contributingFactor)
		try detected?.encode(on: &_container, forKey: .detected, auxiliaryKey: ._detected)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expectedInResearchStudy?.encode(on: &_container, forKey: .expectedInResearchStudy, auxiliaryKey: ._expectedInResearchStudy)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try mitigatingAction?.encode(on: &_container, forKey: .mitigatingAction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
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
		try resultingEffect?.encode(on: &_container, forKey: .resultingEffect)
		try seriousness?.encode(on: &_container, forKey: .seriousness)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study?.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try suspectEntity?.encode(on: &_container, forKey: .suspectEntity)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
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
		return _t_occurrence
	}
}

/**
 Contributing factors suspected to have increased the probability or severity of the adverse event.
 
 The contributing factors suspected to have increased the probability or severity of the adverse event.
 */
public struct AdverseEventContributingFactor: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Item suspected to have increased the probability or severity of the adverse event
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 Ameliorating actions taken after the adverse event occured in order to reduce the extent of harm.
 
 The ameliorating action taken after the adverse event occured in order to reduce the extent of harm.
 */
public struct AdverseEventMitigatingAction: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Ameliorating action taken after the adverse event occured in order to reduce the extent of harm
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 Who was involved in the adverse event or the potential adverse event and what they did.
 
 Indicates who or what participated in the adverse event and how they were involved.
 */
public struct AdverseEventParticipant: BackboneElement {
	
	/// Who was involved in the adverse event or the potential adverse event
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of involvement
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Preventive actions that contributed to avoiding the adverse event.
 */
public struct AdverseEventPreventiveAction: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Action that contributed to avoiding the adverse event
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 Supporting information relevant to the event.
 */
public struct AdverseEventSupportingInfo: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Subject medical history or document relevant to this adverse event
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
public struct AdverseEventSuspectEntity: BackboneElement {
	
	/// All possible types for "instance[x]"
	public enum InstanceX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Information on the possible cause of the event
	public var causality: AdverseEventSuspectEntityCausality?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Refers to the specific entity that caused the adverse event
	/// One of `instance[x]`
	public var instance: InstanceX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		causality: AdverseEventSuspectEntityCausality? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: InstanceX,
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
		case instanceCodeableConcept
		case instanceReference
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.causality = try AdverseEventSuspectEntityCausality(from: _container, forKeyIfPresent: .causality)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instance = try Self._decodeInstance(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try causality?.encode(on: &_container, forKey: .causality)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch instance {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .instanceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .instanceReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeInstance(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> InstanceX {
		var _t_instance: InstanceX? = nil
		if let instanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .instanceCodeableConcept) {
			_t_instance = .codeableConcept(instanceCodeableConcept)
		}
		if let instanceReference = try Reference(from: _container, forKeyIfPresent: .instanceReference) {
			if _t_instance != nil {
				throw DecodingError.dataCorruptedError(forKey: .instanceReference, in: _container, debugDescription: "More than one value provided for \"instance\"")
			}
			_t_instance = .reference(instanceReference)
		}
		guard let _t_instance else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.instanceReference)
			throw DecodingError.valueNotFound(InstanceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"instance\" but have none"))
		}
		return _t_instance
	}
}

/**
 Information on the possible cause of the event.
 */
public struct AdverseEventSuspectEntityCausality: BackboneElement {
	
	/// Method of evaluating the relatedness of the suspected entity to the event
	public var assessmentMethod: CodeableConcept?
	
	/// Author of the information on the possible cause of the event
	public var author: Reference?
	
	/// Result of the assessment regarding the relatedness of the suspected entity to the event
	public var entityRelatedness: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		assessmentMethod: CodeableConcept? = nil,
		author: Reference? = nil,
		entityRelatedness: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assessmentMethod = try CodeableConcept(from: _container, forKeyIfPresent: .assessmentMethod)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.entityRelatedness = try CodeableConcept(from: _container, forKeyIfPresent: .entityRelatedness)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assessmentMethod?.encode(on: &_container, forKey: .assessmentMethod)
		try author?.encode(on: &_container, forKey: .author)
		try entityRelatedness?.encode(on: &_container, forKey: .entityRelatedness)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
