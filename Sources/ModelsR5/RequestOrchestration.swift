//
//  RequestOrchestration.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/RequestOrchestration)
//  Copyright 2023 Apple Inc.
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
 A set of related requests.
 
 A set of related requests that can be used to capture intended activities that have inter-dependencies such as "give
 this medication after that one".
 */
open class RequestOrchestration: DomainResource {
	
	override open class var resourceType: ResourceType { return .requestOrchestration }
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Fulfills plan, proposal, or order
	public var basedOn: [Reference]?
	
	/// Request(s) replaced by this request
	public var replaces: [Reference]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
	public var intent: FHIRPrimitive<FHIRString>
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// What's being requested/ordered
	public var code: CodeableConcept?
	
	/// Who the request orchestration is about
	public var subject: Reference?
	
	/// Created as part of
	public var encounter: Reference?
	
	/// When the request orchestration was authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Device or practitioner that authored the request orchestration
	public var author: Reference?
	
	/// Why the request orchestration is needed
	public var reason: [CodeableReference]?
	
	/// What goals
	public var goal: [Reference]?
	
	/// Additional notes about the response
	public var note: [Annotation]?
	
	/// Proposed actions, if any
	public var action: [RequestOrchestrationAction]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<FHIRString>) {
		self.intent = intent
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [RequestOrchestrationAction]? = nil,
		author: Reference? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		intent: FHIRPrimitive<FHIRString>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		reason: [CodeableReference]? = nil,
		replaces: [Reference]? = nil,
		status: FHIRPrimitive<FHIRString>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.init(intent: intent, status: status)
		self.action = action
		self.author = author
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.code = code
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.goal = goal
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.priority = priority
		self.reason = reason
		self.replaces = replaces
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case author
		case authoredOn; case _authoredOn
		case basedOn
		case code
		case encounter
		case goal
		case groupIdentifier
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case intent; case _intent
		case note
		case priority; case _priority
		case reason
		case replaces
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [RequestOrchestrationAction](from: _container, forKeyIfPresent: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try author?.encode(on: &_container, forKey: .author)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try code?.encode(on: &_container, forKey: .code)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try goal?.encode(on: &_container, forKey: .goal)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try note?.encode(on: &_container, forKey: .note)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestration else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && author == _other.author
		    && authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && code == _other.code
		    && encounter == _other.encounter
		    && goal == _other.goal
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && intent == _other.intent
		    && note == _other.note
		    && priority == _other.priority
		    && reason == _other.reason
		    && replaces == _other.replaces
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(author)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(code)
		hasher.combine(encounter)
		hasher.combine(goal)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(replaces)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Proposed actions, if any.
 
 The actions, if any, produced by the evaluation of the artifact.
 */
open class RequestOrchestrationAction: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		case duration(Duration)
		case period(Period)
		case range(Range)
		case timing(Timing)
	}
	
	/// Pointer to specific item from the PlanDefinition
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// User-visible prefix for the action (e.g. 1. or A.)
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Short description of the action
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system
	public var textEquivalent: FHIRPrimitive<FHIRString>?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Code representing the meaning of the action or sub-actions
	public var code: [CodeableConcept]?
	
	/// Supporting documentation for the intended performer of the action
	public var documentation: [RelatedArtifact]?
	
	/// What goals
	public var goal: [Reference]?
	
	/// Whether or not the action is applicable
	public var condition: [RequestOrchestrationActionCondition]?
	
	/// Input data requirements
	public var input: [RequestOrchestrationActionInput]?
	
	/// Output data definition
	public var output: [RequestOrchestrationActionOutput]?
	
	/// Relationship to another action
	public var relatedAction: [RequestOrchestrationActionRelatedAction]?
	
	/// When the action should take place
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Where it should happen
	public var location: CodeableReference?
	
	/// Who should perform the action
	public var participant: [RequestOrchestrationActionParticipant]?
	
	/// create | update | remove | fire-event
	public var type: CodeableConcept?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>?
	
	/// Defines expectations around whether an action is required.
	public var requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>?
	
	/// The target of the action
	public var resource: Reference?
	
	/// Description of the activity to be performed
	/// One of `definition[x]`
	public var definition: DefinitionX?
	
	/// Transform to apply the template
	public var transform: FHIRPrimitive<Canonical>?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [RequestOrchestrationActionDynamicValue]?
	
	/// Sub action
	public var action: [RequestOrchestrationAction]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [RequestOrchestrationAction]? = nil,
		cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>? = nil,
		code: [CodeableConcept]? = nil,
		condition: [RequestOrchestrationActionCondition]? = nil,
		definition: DefinitionX? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		documentation: [RelatedArtifact]? = nil,
		dynamicValue: [RequestOrchestrationActionDynamicValue]? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		input: [RequestOrchestrationActionInput]? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		location: CodeableReference? = nil,
		modifierExtension: [Extension]? = nil,
		output: [RequestOrchestrationActionOutput]? = nil,
		participant: [RequestOrchestrationActionParticipant]? = nil,
		precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>? = nil,
		prefix: FHIRPrimitive<FHIRString>? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		relatedAction: [RequestOrchestrationActionRelatedAction]? = nil,
		requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>? = nil,
		resource: Reference? = nil,
		selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>? = nil,
		textEquivalent: FHIRPrimitive<FHIRString>? = nil,
		timing: TimingX? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		transform: FHIRPrimitive<Canonical>? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.action = action
		self.cardinalityBehavior = cardinalityBehavior
		self.code = code
		self.condition = condition
		self.definition = definition
		self.description_fhir = description_fhir
		self.documentation = documentation
		self.dynamicValue = dynamicValue
		self.`extension` = `extension`
		self.goal = goal
		self.groupingBehavior = groupingBehavior
		self.id = id
		self.input = input
		self.linkId = linkId
		self.location = location
		self.modifierExtension = modifierExtension
		self.output = output
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
		self.transform = transform
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case cardinalityBehavior; case _cardinalityBehavior
		case code
		case condition
		case definitionCanonical; case _definitionCanonical
		case definitionUri; case _definitionUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case documentation
		case dynamicValue
		case goal
		case groupingBehavior; case _groupingBehavior
		case input
		case linkId; case _linkId
		case location
		case output
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
		case transform; case _transform
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [RequestOrchestrationAction](from: _container, forKeyIfPresent: .action)
		self.cardinalityBehavior = try FHIRPrimitive<ActionCardinalityBehavior>(from: _container, forKeyIfPresent: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.condition = try [RequestOrchestrationActionCondition](from: _container, forKeyIfPresent: .condition)
		var _t_definition: DefinitionX? = nil
		if let definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionCanonical, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .canonical(definitionCanonical)
		}
		if let definitionUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definitionUri, auxiliaryKey: ._definitionUri) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionUri, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .uri(definitionUri)
		}
		self.definition = _t_definition
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.documentation = try [RelatedArtifact](from: _container, forKeyIfPresent: .documentation)
		self.dynamicValue = try [RequestOrchestrationActionDynamicValue](from: _container, forKeyIfPresent: .dynamicValue)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.groupingBehavior = try FHIRPrimitive<ActionGroupingBehavior>(from: _container, forKeyIfPresent: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		self.input = try [RequestOrchestrationActionInput](from: _container, forKeyIfPresent: .input)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.location = try CodeableReference(from: _container, forKeyIfPresent: .location)
		self.output = try [RequestOrchestrationActionOutput](from: _container, forKeyIfPresent: .output)
		self.participant = try [RequestOrchestrationActionParticipant](from: _container, forKeyIfPresent: .participant)
		self.precheckBehavior = try FHIRPrimitive<ActionPrecheckBehavior>(from: _container, forKeyIfPresent: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.relatedAction = try [RequestOrchestrationActionRelatedAction](from: _container, forKeyIfPresent: .relatedAction)
		self.requiredBehavior = try FHIRPrimitive<ActionRequiredBehavior>(from: _container, forKeyIfPresent: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
		self.selectionBehavior = try FHIRPrimitive<ActionSelectionBehavior>(from: _container, forKeyIfPresent: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		self.textEquivalent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textEquivalent, auxiliaryKey: ._textEquivalent)
		var _t_timing: TimingX? = nil
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .dateTime(timingDateTime)
		}
		if let timingAge = try Age(from: _container, forKeyIfPresent: .timingAge) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingAge, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .age(timingAge)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		if let timingDuration = try Duration(from: _container, forKeyIfPresent: .timingDuration) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDuration, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .duration(timingDuration)
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
		self.timing = _t_timing
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.transform = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try cardinalityBehavior?.encode(on: &_container, forKey: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		try code?.encode(on: &_container, forKey: .code)
		try condition?.encode(on: &_container, forKey: .condition)
		if let _enum = definition {
			switch _enum {
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .definitionUri, auxiliaryKey: ._definitionUri)
			}
		}
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try documentation?.encode(on: &_container, forKey: .documentation)
		try dynamicValue?.encode(on: &_container, forKey: .dynamicValue)
		try goal?.encode(on: &_container, forKey: .goal)
		try groupingBehavior?.encode(on: &_container, forKey: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		try input?.encode(on: &_container, forKey: .input)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try location?.encode(on: &_container, forKey: .location)
		try output?.encode(on: &_container, forKey: .output)
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
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .timingAge)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .timingPeriod)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .timingDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .timingRange)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .timingTiming)
			}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try transform?.encode(on: &_container, forKey: .transform, auxiliaryKey: ._transform)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && cardinalityBehavior == _other.cardinalityBehavior
		    && code == _other.code
		    && condition == _other.condition
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && documentation == _other.documentation
		    && dynamicValue == _other.dynamicValue
		    && goal == _other.goal
		    && groupingBehavior == _other.groupingBehavior
		    && input == _other.input
		    && linkId == _other.linkId
		    && location == _other.location
		    && output == _other.output
		    && participant == _other.participant
		    && precheckBehavior == _other.precheckBehavior
		    && prefix == _other.prefix
		    && priority == _other.priority
		    && relatedAction == _other.relatedAction
		    && requiredBehavior == _other.requiredBehavior
		    && resource == _other.resource
		    && selectionBehavior == _other.selectionBehavior
		    && textEquivalent == _other.textEquivalent
		    && timing == _other.timing
		    && title == _other.title
		    && transform == _other.transform
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(cardinalityBehavior)
		hasher.combine(code)
		hasher.combine(condition)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(documentation)
		hasher.combine(dynamicValue)
		hasher.combine(goal)
		hasher.combine(groupingBehavior)
		hasher.combine(input)
		hasher.combine(linkId)
		hasher.combine(location)
		hasher.combine(output)
		hasher.combine(participant)
		hasher.combine(precheckBehavior)
		hasher.combine(prefix)
		hasher.combine(priority)
		hasher.combine(relatedAction)
		hasher.combine(requiredBehavior)
		hasher.combine(resource)
		hasher.combine(selectionBehavior)
		hasher.combine(textEquivalent)
		hasher.combine(timing)
		hasher.combine(title)
		hasher.combine(transform)
		hasher.combine(type)
	}
}

/**
 Whether or not the action is applicable.
 
 An expression that describes applicability criteria, or start/stop conditions for the action.
 */
open class RequestOrchestrationActionCondition: BackboneElement {
	
	/// The kind of condition.
	public var kind: FHIRPrimitive<ActionConditionKind>
	
	/// Boolean-valued expression
	public var expression: Expression?
	
	/// Designated initializer taking all required properties
	public init(kind: FHIRPrimitive<ActionConditionKind>) {
		self.kind = kind
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		kind: FHIRPrimitive<ActionConditionKind>,
		modifierExtension: [Extension]? = nil
	) {
		self.init(kind: kind)
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expression
		case kind; case _kind
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.kind = try FHIRPrimitive<ActionConditionKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expression?.encode(on: &_container, forKey: .expression)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationActionCondition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expression == _other.expression
		    && kind == _other.kind
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expression)
		hasher.combine(kind)
	}
}

/**
 Dynamic aspects of the definition.
 
 Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication
 must be computed based on the patient's weight, a customization would be used to specify an expression that calculated
 the weight, and the path on the resource that would contain the result.
 */
open class RequestOrchestrationActionDynamicValue: BackboneElement {
	
	/// The path to the element to be set dynamically
	public var path: FHIRPrimitive<FHIRString>?
	
	/// An expression that provides the dynamic value for the customization
	public var expression: Expression?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.path = path
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expression
		case path; case _path
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expression?.encode(on: &_container, forKey: .expression)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationActionDynamicValue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expression == _other.expression
		    && path == _other.path
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expression)
		hasher.combine(path)
	}
}

/**
 Input data requirements.
 
 Defines input data requirements for the action.
 */
open class RequestOrchestrationActionInput: BackboneElement {
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// What data is provided
	public var requirement: DataRequirement?
	
	/// What data is provided
	public var relatedData: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedData: FHIRPrimitive<FHIRString>? = nil,
		requirement: DataRequirement? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedData = relatedData
		self.requirement = requirement
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case relatedData; case _relatedData
		case requirement
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.relatedData = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .relatedData, auxiliaryKey: ._relatedData)
		self.requirement = try DataRequirement(from: _container, forKeyIfPresent: .requirement)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try relatedData?.encode(on: &_container, forKey: .relatedData, auxiliaryKey: ._relatedData)
		try requirement?.encode(on: &_container, forKey: .requirement)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationActionInput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return relatedData == _other.relatedData
		    && requirement == _other.requirement
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(relatedData)
		hasher.combine(requirement)
		hasher.combine(title)
	}
}

/**
 Output data definition.
 
 Defines the outputs of the action, if any.
 */
open class RequestOrchestrationActionOutput: BackboneElement {
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// What data is provided
	public var requirement: DataRequirement?
	
	/// What data is provided
	public var relatedData: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedData: FHIRPrimitive<FHIRString>? = nil,
		requirement: DataRequirement? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedData = relatedData
		self.requirement = requirement
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case relatedData; case _relatedData
		case requirement
		case title; case _title
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.relatedData = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .relatedData, auxiliaryKey: ._relatedData)
		self.requirement = try DataRequirement(from: _container, forKeyIfPresent: .requirement)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try relatedData?.encode(on: &_container, forKey: .relatedData, auxiliaryKey: ._relatedData)
		try requirement?.encode(on: &_container, forKey: .requirement)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationActionOutput else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return relatedData == _other.relatedData
		    && requirement == _other.requirement
		    && title == _other.title
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(relatedData)
		hasher.combine(requirement)
		hasher.combine(title)
	}
}

/**
 Who should perform the action.
 
 The participant that should perform or be responsible for this action.
 */
open class RequestOrchestrationActionParticipant: BackboneElement {
	
	/// All possible types for "actor[x]"
	public enum ActorX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case reference(Reference)
	}
	
	/// The type of participant in the action.
	public var type: FHIRPrimitive<ActionParticipantType>?
	
	/// Who or what can participate
	public var typeCanonical: FHIRPrimitive<Canonical>?
	
	/// Who or what can participate
	public var typeReference: Reference?
	
	/// E.g. Nurse, Surgeon, Parent, etc
	public var role: CodeableConcept?
	
	/// E.g. Author, Reviewer, Witness, etc
	public var function: CodeableConcept?
	
	/// Who/what is participating?
	/// One of `actor[x]`
	public var actor: ActorX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: ActorX? = nil,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil,
		type: FHIRPrimitive<ActionParticipantType>? = nil,
		typeCanonical: FHIRPrimitive<Canonical>? = nil,
		typeReference: Reference? = nil
	) {
		self.init()
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
		self.type = type
		self.typeCanonical = typeCanonical
		self.typeReference = typeReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actorCanonical; case _actorCanonical
		case actorReference
		case function
		case role
		case type; case _type
		case typeCanonical; case _typeCanonical
		case typeReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_actor: ActorX? = nil
		if let actorCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .actorCanonical, auxiliaryKey: ._actorCanonical) {
			if _t_actor != nil {
				throw DecodingError.dataCorruptedError(forKey: .actorCanonical, in: _container, debugDescription: "More than one value provided for \"actor\"")
			}
			_t_actor = .canonical(actorCanonical)
		}
		if let actorReference = try Reference(from: _container, forKeyIfPresent: .actorReference) {
			if _t_actor != nil {
				throw DecodingError.dataCorruptedError(forKey: .actorReference, in: _container, debugDescription: "More than one value provided for \"actor\"")
			}
			_t_actor = .reference(actorReference)
		}
		self.actor = _t_actor
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.type = try FHIRPrimitive<ActionParticipantType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.typeCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .typeCanonical, auxiliaryKey: ._typeCanonical)
		self.typeReference = try Reference(from: _container, forKeyIfPresent: .typeReference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = actor {
			switch _enum {
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .actorCanonical, auxiliaryKey: ._actorCanonical)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .actorReference)
			}
		}
		try function?.encode(on: &_container, forKey: .function)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try typeCanonical?.encode(on: &_container, forKey: .typeCanonical, auxiliaryKey: ._typeCanonical)
		try typeReference?.encode(on: &_container, forKey: .typeReference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationActionParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
		    && role == _other.role
		    && type == _other.type
		    && typeCanonical == _other.typeCanonical
		    && typeReference == _other.typeReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
		hasher.combine(role)
		hasher.combine(type)
		hasher.combine(typeCanonical)
		hasher.combine(typeReference)
	}
}

/**
 Relationship to another action.
 
 A relationship to another action such as "before" or "30-60 minutes after start of".
 */
open class RequestOrchestrationActionRelatedAction: BackboneElement {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Hashable {
		case duration(Duration)
		case range(Range)
	}
	
	/// What action this is related to
	public var targetId: FHIRPrimitive<FHIRString>
	
	/// The relationship of this action to the related action.
	public var relationship: FHIRPrimitive<ActionRelationshipType>
	
	/// The relationship of the end of this action to the related action.
	public var endRelationship: FHIRPrimitive<ActionRelationshipType>?
	
	/// Time offset for the relationship
	/// One of `offset[x]`
	public var offset: OffsetX?
	
	/// Designated initializer taking all required properties
	public init(relationship: FHIRPrimitive<ActionRelationshipType>, targetId: FHIRPrimitive<FHIRString>) {
		self.relationship = relationship
		self.targetId = targetId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		endRelationship: FHIRPrimitive<ActionRelationshipType>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		offset: OffsetX? = nil,
		relationship: FHIRPrimitive<ActionRelationshipType>,
		targetId: FHIRPrimitive<FHIRString>
	) {
		self.init(relationship: relationship, targetId: targetId)
		self.endRelationship = endRelationship
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.offset = offset
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endRelationship; case _endRelationship
		case offsetDuration
		case offsetRange
		case relationship; case _relationship
		case targetId; case _targetId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.endRelationship = try FHIRPrimitive<ActionRelationshipType>(from: _container, forKeyIfPresent: .endRelationship, auxiliaryKey: ._endRelationship)
		var _t_offset: OffsetX? = nil
		if let offsetDuration = try Duration(from: _container, forKeyIfPresent: .offsetDuration) {
			if _t_offset != nil {
				throw DecodingError.dataCorruptedError(forKey: .offsetDuration, in: _container, debugDescription: "More than one value provided for \"offset\"")
			}
			_t_offset = .duration(offsetDuration)
		}
		if let offsetRange = try Range(from: _container, forKeyIfPresent: .offsetRange) {
			if _t_offset != nil {
				throw DecodingError.dataCorruptedError(forKey: .offsetRange, in: _container, debugDescription: "More than one value provided for \"offset\"")
			}
			_t_offset = .range(offsetRange)
		}
		self.offset = _t_offset
		self.relationship = try FHIRPrimitive<ActionRelationshipType>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
		self.targetId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .targetId, auxiliaryKey: ._targetId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try endRelationship?.encode(on: &_container, forKey: .endRelationship, auxiliaryKey: ._endRelationship)
		if let _enum = offset {
			switch _enum {
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .offsetDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .offsetRange)
			}
		}
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try targetId.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RequestOrchestrationActionRelatedAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return endRelationship == _other.endRelationship
		    && offset == _other.offset
		    && relationship == _other.relationship
		    && targetId == _other.targetId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(endRelationship)
		hasher.combine(offset)
		hasher.combine(relationship)
		hasher.combine(targetId)
	}
}
