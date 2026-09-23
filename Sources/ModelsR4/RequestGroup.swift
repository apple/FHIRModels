//
//  RequestGroup.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/RequestGroup)
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
 A group of related requests.
 
 A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give
 this medication after that one".
 */
public struct RequestGroup: DomainResource {
	
	public static let resourceType: ResourceType = .requestGroup
	
	/// Proposed actions, if any
	public var action: [RequestGroupAction]?
	
	/// Device or practitioner that authored the request group
	public var author: Reference?
	
	/// When the request group was authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Fulfills plan, proposal, or order
	public var basedOn: [Reference]?
	
	/// What's being requested/ordered
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Created as part of
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Indicates the level of authority/intentionality associated with the request and where the request fits into the
	/// workflow chain.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional notes about the response
	public var note: [Annotation]?
	
	/// Indicates how quickly the request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Why the request group is needed
	public var reasonCode: [CodeableConcept]?
	
	/// Why the request group is needed
	public var reasonReference: [Reference]?
	
	/// Request(s) replaced by this request
	public var replaces: [Reference]?
	
	/// The current state of the request. For request groups, the status reflects the status of all the requests in the
	/// group.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Who the request group is about
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		action: [RequestGroupAction]? = nil,
		author: Reference? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		replaces: [Reference]? = nil,
		status: FHIRPrimitive<RequestStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.action = action
		self.author = author
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.code = code
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.intent = intent
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.replaces = replaces
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action
		case author
		case authoredOn; case _authoredOn
		case basedOn
		case code
		case contained
		case encounter
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case intent; case _intent
		case language; case _language
		case meta
		case modifierExtension
		case note
		case priority; case _priority
		case reasonCode
		case reasonReference
		case replaces
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [RequestGroupAction](from: _container, forKeyIfPresent: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try author?.encode(on: &_container, forKey: .author)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Proposed actions, if any.
 
 The actions, if any, produced by the evaluation of the artifact.
 */
public struct RequestGroupAction: BackboneElement {
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case range(Range)
		indirect case timing(Timing)
	}
	
	/// Sub action
	public var action: [RequestGroupAction]?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>?
	
	/// Code representing the meaning of the action or sub-actions
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable
	public var condition: [RequestGroupActionCondition]?
	
	/// Short description of the action
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Supporting documentation for the intended performer of the action
	public var documentation: [RelatedArtifact]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Who should perform the action
	public var participant: [Reference]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>?
	
	/// User-visible prefix for the action (e.g. 1. or A.)
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// Indicates how quickly the action should be addressed with respect to other actions.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Relationship to another action
	public var relatedAction: [RequestGroupActionRelatedAction]?
	
	/// Defines expectations around whether an action is required.
	public var requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>?
	
	/// The target of the action
	public var resource: Reference?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system
	public var textEquivalent: FHIRPrimitive<FHIRString>?
	
	/// When the action should take place
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// create | update | remove | fire-event
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		action: [RequestGroupAction]? = nil,
		cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>? = nil,
		code: [CodeableConcept]? = nil,
		condition: [RequestGroupActionCondition]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		documentation: [RelatedArtifact]? = nil,
		`extension`: [Extension]? = nil,
		groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		participant: [Reference]? = nil,
		precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>? = nil,
		prefix: FHIRPrimitive<FHIRString>? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		relatedAction: [RequestGroupActionRelatedAction]? = nil,
		requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>? = nil,
		resource: Reference? = nil,
		selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>? = nil,
		textEquivalent: FHIRPrimitive<FHIRString>? = nil,
		timing: TimingX? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.action = action
		self.cardinalityBehavior = cardinalityBehavior
		self.code = code
		self.condition = condition
		self.description_fhir = description_fhir
		self.documentation = documentation
		self.`extension` = `extension`
		self.groupingBehavior = groupingBehavior
		self.id = id
		self.modifierExtension = modifierExtension
		self.participant = participant
		self.precheckBehavior = precheckBehavior
		self.prefix = prefix
		self.priority = priority
		self.relatedAction = relatedAction
		self.requiredBehavior = requiredBehavior
		self.resource = resource
		self.selectionBehavior = selectionBehavior
		self.textEquivalent = textEquivalent
		self.timing = timing
		self.title = title
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case cardinalityBehavior; case _cardinalityBehavior
		case code
		case condition
		case description_fhir = "description"; case _description_fhir = "_description"
		case documentation
		case `extension` = "extension"
		case groupingBehavior; case _groupingBehavior
		case id; case _id
		case modifierExtension
		case participant
		case precheckBehavior; case _precheckBehavior
		case prefix; case _prefix
		case priority; case _priority
		case relatedAction
		case requiredBehavior; case _requiredBehavior
		case resource
		case selectionBehavior; case _selectionBehavior
		case textEquivalent; case _textEquivalent
		case timingAge
		case timingDateTime; case _timingDateTime
		case timingDuration
		case timingPeriod
		case timingRange
		case timingTiming
		case title; case _title
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [RequestGroupAction](from: _container, forKeyIfPresent: .action)
		self.cardinalityBehavior = try FHIRPrimitive<ActionCardinalityBehavior>(from: _container, forKeyIfPresent: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.condition = try [RequestGroupActionCondition](from: _container, forKeyIfPresent: .condition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.documentation = try [RelatedArtifact](from: _container, forKeyIfPresent: .documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupingBehavior = try FHIRPrimitive<ActionGroupingBehavior>(from: _container, forKeyIfPresent: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.participant = try [Reference](from: _container, forKeyIfPresent: .participant)
		self.precheckBehavior = try FHIRPrimitive<ActionPrecheckBehavior>(from: _container, forKeyIfPresent: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.relatedAction = try [RequestGroupActionRelatedAction](from: _container, forKeyIfPresent: .relatedAction)
		self.requiredBehavior = try FHIRPrimitive<ActionRequiredBehavior>(from: _container, forKeyIfPresent: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
		self.selectionBehavior = try FHIRPrimitive<ActionSelectionBehavior>(from: _container, forKeyIfPresent: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		self.textEquivalent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textEquivalent, auxiliaryKey: ._textEquivalent)
		self.timing = try Self._decodeTiming(from: _container)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try cardinalityBehavior?.encode(on: &_container, forKey: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		try code?.encode(on: &_container, forKey: .code)
		try condition?.encode(on: &_container, forKey: .condition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try documentation?.encode(on: &_container, forKey: .documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupingBehavior?.encode(on: &_container, forKey: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try participant?.encode(on: &_container, forKey: .participant)
		try precheckBehavior?.encode(on: &_container, forKey: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try relatedAction?.encode(on: &_container, forKey: .relatedAction)
		try requiredBehavior?.encode(on: &_container, forKey: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		try resource?.encode(on: &_container, forKey: .resource)
		try selectionBehavior?.encode(on: &_container, forKey: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		try textEquivalent?.encode(on: &_container, forKey: .textEquivalent, auxiliaryKey: ._textEquivalent)
		if let _enum = timing {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .timingAge)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .timingDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timingPeriod)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .timingRange)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .timingTiming)
		}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTiming(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimingX? {
		var _t_timing: TimingX? = nil
		if let timingAge = try Age(from: _container, forKeyIfPresent: .timingAge) {
			_t_timing = .age(timingAge)
		}
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .dateTime(timingDateTime)
		}
		if let timingDuration = try Duration(from: _container, forKeyIfPresent: .timingDuration) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDuration, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .duration(timingDuration)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		if let timingRange = try Range(from: _container, forKeyIfPresent: .timingRange) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingRange, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .range(timingRange)
		}
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		return _t_timing
	}
}

/**
 Whether or not the action is applicable.
 
 An expression that describes applicability criteria, or start/stop conditions for the action.
 */
public struct RequestGroupActionCondition: BackboneElement {
	
	/// Boolean-valued expression
	public var expression: Expression?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The kind of condition.
	public var kind: FHIRPrimitive<ActionConditionKind>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		kind: FHIRPrimitive<ActionConditionKind>,
		modifierExtension: [Extension]? = nil
	) {
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.kind = kind
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expression
		case `extension` = "extension"
		case id; case _id
		case kind; case _kind
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.kind = try FHIRPrimitive<ActionConditionKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expression?.encode(on: &_container, forKey: .expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Relationship to another action.
 
 A relationship to another action such as "before" or "30-60 minutes after start of".
 */
public struct RequestGroupActionRelatedAction: BackboneElement {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Equatable, Hashable, Sendable {
		indirect case duration(Duration)
		indirect case range(Range)
	}
	
	/// What action this is related to
	public var actionId: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Time offset for the relationship
	/// One of `offset[x]`
	public var offset: OffsetX?
	
	/// The relationship of this action to the related action.
	public var relationship: FHIRPrimitive<ActionRelationshipType>
	
	/// Designated initializer
	public init(
		actionId: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		offset: OffsetX? = nil,
		relationship: FHIRPrimitive<ActionRelationshipType>
	) {
		self.actionId = actionId
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.offset = offset
		self.relationship = relationship
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actionId; case _actionId
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case offsetDuration
		case offsetRange
		case relationship; case _relationship
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actionId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .actionId, auxiliaryKey: ._actionId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.offset = try Self._decodeOffset(from: _container)
		self.relationship = try FHIRPrimitive<ActionRelationshipType>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actionId.encode(on: &_container, forKey: .actionId, auxiliaryKey: ._actionId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = offset {
		switch _enum {
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .offsetDuration)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .offsetRange)
		}
		}
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOffset(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OffsetX? {
		var _t_offset: OffsetX? = nil
		if let offsetDuration = try Duration(from: _container, forKeyIfPresent: .offsetDuration) {
			_t_offset = .duration(offsetDuration)
		}
		if let offsetRange = try Range(from: _container, forKeyIfPresent: .offsetRange) {
			if _t_offset != nil {
				throw DecodingError.dataCorruptedError(forKey: .offsetRange, in: _container, debugDescription: "More than one value provided for \"offset\"")
			}
			_t_offset = .range(offsetRange)
		}
		return _t_offset
	}
}
