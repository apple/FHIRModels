//
//  RequestOrchestration.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/RequestOrchestration)
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
 A set of related requests.
 
 A set of related requests that can be used to capture intended activities that have inter-dependencies such as "give
 this medication after that one".
 */
public struct RequestOrchestration: DomainResource {
	
	public static let resourceType: ResourceType = .requestOrchestration
	
	/// Proposed actions, if any
	public var action: [RequestOrchestrationAction]?
	
	/// Device or practitioner that authored the request orchestration
	public var author: Reference?
	
	/// When the request orchestration was authored
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
	
	/// What goals
	public var goal: [Reference]?
	
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
	
	/// Why the request orchestration is needed
	public var reason: [CodeableReference]?
	
	/// Request(s) replaced by this request
	public var replaces: [Reference]?
	
	/// The current state of the request. For request orchestrations, the status reflects the status of all the requests
	/// in the orchestration.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Who the request orchestration is about
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		reason: [CodeableReference]? = nil,
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
		self.goal = goal
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
		self.reason = reason
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
		case goal
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
		case reason
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
		self.action = try [RequestOrchestrationAction](from: _container, forKeyIfPresent: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
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
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
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
		try goal?.encode(on: &_container, forKey: .goal)
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
		try reason?.encode(on: &_container, forKey: .reason)
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
public struct RequestOrchestrationAction: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case range(Range)
		indirect case relativeTime(RelativeTime)
		indirect case timing(Timing)
	}
	
	/// Sub action
	public var action: [RequestOrchestrationAction]?
	
	/// All - meaning the applicability of each child action is evaluated independently; if a child action is applicable
	/// according to the applicability criteria, it is applied. Any - meaning that each child action is evaluated in
	/// order, and the first action that returns an applicability of true will be applied, and processing of the parent
	/// action will stop. If not specified, the default behavior of All is used.
	public var applicabilityBehavior: FHIRPrimitive<ActionApplicabilityBehavior>?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>?
	
	/// Code representing the meaning of the action or sub-actions
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable
	public var condition: [RequestOrchestrationActionCondition]?
	
	/// Description of the activity to be performed
	/// One of `definition[x]`
	public var definition: DefinitionX?
	
	/// Short description of the action
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Supporting documentation for the intended performer of the action
	public var documentation: [RelatedArtifact]?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [RequestOrchestrationActionDynamicValue]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What goals
	public var goal: [Reference]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Input data requirements
	public var input: [RequestOrchestrationActionInput]?
	
	/// Pointer to specific item from the PlanDefinition
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Where it should happen
	public var location: CodeableReference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Output data definition
	public var output: [RequestOrchestrationActionOutput]?
	
	/// Who should perform the action
	public var participant: [RequestOrchestrationActionParticipant]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>?
	
	/// User-visible prefix for the action (e.g. 1. or A.)
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// Indicates how quickly the action should be addressed with respect to other actions.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Relationship to another action
	public var relatedAction: [RequestOrchestrationActionRelatedAction]?
	
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
	
	/// Transform to apply the template
	public var transform: FHIRPrimitive<Canonical>?
	
	/// create | update | remove | fire-event
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		action: [RequestOrchestrationAction]? = nil,
		applicabilityBehavior: FHIRPrimitive<ActionApplicabilityBehavior>? = nil,
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
		priority: FHIRPrimitive<RequestPriority>? = nil,
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
		self.action = action
		self.applicabilityBehavior = applicabilityBehavior
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
		case applicabilityBehavior; case _applicabilityBehavior
		case cardinalityBehavior; case _cardinalityBehavior
		case code
		case condition
		case definitionCanonical; case _definitionCanonical
		case definitionUri; case _definitionUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case documentation
		case dynamicValue
		case `extension` = "extension"
		case goal
		case groupingBehavior; case _groupingBehavior
		case id; case _id
		case input
		case linkId; case _linkId
		case location
		case modifierExtension
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
		case timingRelativeTime
		case timingTiming
		case title; case _title
		case transform; case _transform
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [RequestOrchestrationAction](from: _container, forKeyIfPresent: .action)
		self.applicabilityBehavior = try FHIRPrimitive<ActionApplicabilityBehavior>(from: _container, forKeyIfPresent: .applicabilityBehavior, auxiliaryKey: ._applicabilityBehavior)
		self.cardinalityBehavior = try FHIRPrimitive<ActionCardinalityBehavior>(from: _container, forKeyIfPresent: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.condition = try [RequestOrchestrationActionCondition](from: _container, forKeyIfPresent: .condition)
		self.definition = try Self._decodeDefinition(from: _container)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.documentation = try [RelatedArtifact](from: _container, forKeyIfPresent: .documentation)
		self.dynamicValue = try [RequestOrchestrationActionDynamicValue](from: _container, forKeyIfPresent: .dynamicValue)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.groupingBehavior = try FHIRPrimitive<ActionGroupingBehavior>(from: _container, forKeyIfPresent: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.input = try [RequestOrchestrationActionInput](from: _container, forKeyIfPresent: .input)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.location = try CodeableReference(from: _container, forKeyIfPresent: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.output = try [RequestOrchestrationActionOutput](from: _container, forKeyIfPresent: .output)
		self.participant = try [RequestOrchestrationActionParticipant](from: _container, forKeyIfPresent: .participant)
		self.precheckBehavior = try FHIRPrimitive<ActionPrecheckBehavior>(from: _container, forKeyIfPresent: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.relatedAction = try [RequestOrchestrationActionRelatedAction](from: _container, forKeyIfPresent: .relatedAction)
		self.requiredBehavior = try FHIRPrimitive<ActionRequiredBehavior>(from: _container, forKeyIfPresent: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
		self.selectionBehavior = try FHIRPrimitive<ActionSelectionBehavior>(from: _container, forKeyIfPresent: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		self.textEquivalent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textEquivalent, auxiliaryKey: ._textEquivalent)
		self.timing = try Self._decodeTiming(from: _container)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.transform = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try applicabilityBehavior?.encode(on: &_container, forKey: .applicabilityBehavior, auxiliaryKey: ._applicabilityBehavior)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try goal?.encode(on: &_container, forKey: .goal)
		try groupingBehavior?.encode(on: &_container, forKey: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try input?.encode(on: &_container, forKey: .input)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try location?.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		case .relativeTime(let _value):
			try _value.encode(on: &_container, forKey: .timingRelativeTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .timingTiming)
		}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try transform?.encode(on: &_container, forKey: .transform, auxiliaryKey: ._transform)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDefinition(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DefinitionX? {
		var _t_definition: DefinitionX? = nil
		if let definitionCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical) {
			_t_definition = .canonical(definitionCanonical)
		}
		if let definitionUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definitionUri, auxiliaryKey: ._definitionUri) {
			if _t_definition != nil {
				throw DecodingError.dataCorruptedError(forKey: .definitionUri, in: _container, debugDescription: "More than one value provided for \"definition\"")
			}
			_t_definition = .uri(definitionUri)
		}
		return _t_definition
	}
	
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
		if let timingRelativeTime = try RelativeTime(from: _container, forKeyIfPresent: .timingRelativeTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingRelativeTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .relativeTime(timingRelativeTime)
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
public struct RequestOrchestrationActionCondition: BackboneElement {
	
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
 Dynamic aspects of the definition.
 
 Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication
 must be computed based on the patient's weight, a customization would be used to specify an expression that calculated
 the weight, and the path on the resource that would contain the result.
 */
public struct RequestOrchestrationActionDynamicValue: BackboneElement {
	
	/// An expression that provides the dynamic value for the customization
	public var expression: Expression?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The path to the element to be set dynamically
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>? = nil
	) {
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.path = path
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expression
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case path; case _path
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expression?.encode(on: &_container, forKey: .expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
	}
}

/**
 Input data requirements.
 
 Defines input data requirements for the action.
 */
public struct RequestOrchestrationActionInput: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What data is provided
	public var relatedData: FHIRPrimitive<FHIRString>?
	
	/// What data is provided
	public var requirement: DataRequirement?
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedData: FHIRPrimitive<FHIRString>? = nil,
		requirement: DataRequirement? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedData = relatedData
		self.requirement = requirement
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relatedData; case _relatedData
		case requirement
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatedData = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .relatedData, auxiliaryKey: ._relatedData)
		self.requirement = try DataRequirement(from: _container, forKeyIfPresent: .requirement)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatedData?.encode(on: &_container, forKey: .relatedData, auxiliaryKey: ._relatedData)
		try requirement?.encode(on: &_container, forKey: .requirement)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Output data definition.
 
 Defines the outputs of the action, if any.
 */
public struct RequestOrchestrationActionOutput: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What data is provided
	public var relatedData: FHIRPrimitive<FHIRString>?
	
	/// What data is provided
	public var requirement: DataRequirement?
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedData: FHIRPrimitive<FHIRString>? = nil,
		requirement: DataRequirement? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedData = relatedData
		self.requirement = requirement
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relatedData; case _relatedData
		case requirement
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatedData = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .relatedData, auxiliaryKey: ._relatedData)
		self.requirement = try DataRequirement(from: _container, forKeyIfPresent: .requirement)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatedData?.encode(on: &_container, forKey: .relatedData, auxiliaryKey: ._relatedData)
		try requirement?.encode(on: &_container, forKey: .requirement)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Who should perform the action.
 
 The participant that should perform or be responsible for this action.
 */
public struct RequestOrchestrationActionParticipant: BackboneElement {
	
	/// All possible types for "actor[x]"
	public enum ActorX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case reference(Reference)
	}
	
	/// Who/what is participating?
	/// One of `actor[x]`
	public var actor: ActorX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// E.g. Author, Reviewer, Witness, etc
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// E.g. Nurse, Surgeon, Parent, etc
	public var role: CodeableConcept?
	
	/// The type of participant in the action.
	public var type: FHIRPrimitive<ActionParticipantType>?
	
	/// Who or what can participate
	public var typeCanonical: FHIRPrimitive<Canonical>?
	
	/// Who or what can participate
	public var typeReference: Reference?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
		case role
		case type; case _type
		case typeCanonical; case _typeCanonical
		case typeReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Self._decodeActor(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.type = try FHIRPrimitive<ActionParticipantType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.typeCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .typeCanonical, auxiliaryKey: ._typeCanonical)
		self.typeReference = try Reference(from: _container, forKeyIfPresent: .typeReference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = actor {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .actorCanonical, auxiliaryKey: ._actorCanonical)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .actorReference)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try typeCanonical?.encode(on: &_container, forKey: .typeCanonical, auxiliaryKey: ._typeCanonical)
		try typeReference?.encode(on: &_container, forKey: .typeReference)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeActor(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ActorX? {
		var _t_actor: ActorX? = nil
		if let actorCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .actorCanonical, auxiliaryKey: ._actorCanonical) {
			_t_actor = .canonical(actorCanonical)
		}
		if let actorReference = try Reference(from: _container, forKeyIfPresent: .actorReference) {
			if _t_actor != nil {
				throw DecodingError.dataCorruptedError(forKey: .actorReference, in: _container, debugDescription: "More than one value provided for \"actor\"")
			}
			_t_actor = .reference(actorReference)
		}
		return _t_actor
	}
}

/**
 Relationship to another action.
 
 A relationship to another action such as "before" or "30-60 minutes after start of".
 */
public struct RequestOrchestrationActionRelatedAction: BackboneElement {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Equatable, Hashable, Sendable {
		indirect case duration(Duration)
		indirect case range(Range)
	}
	
	/// The relationship of the end of this action to the related action.
	public var endRelationship: FHIRPrimitive<ActionRelationshipType>?
	
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
	
	/// What action this is related to
	public var targetId: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		endRelationship: FHIRPrimitive<ActionRelationshipType>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		offset: OffsetX? = nil,
		relationship: FHIRPrimitive<ActionRelationshipType>,
		targetId: FHIRPrimitive<FHIRString>
	) {
		self.endRelationship = endRelationship
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.offset = offset
		self.relationship = relationship
		self.targetId = targetId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endRelationship; case _endRelationship
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case offsetDuration
		case offsetRange
		case relationship; case _relationship
		case targetId; case _targetId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.endRelationship = try FHIRPrimitive<ActionRelationshipType>(from: _container, forKeyIfPresent: .endRelationship, auxiliaryKey: ._endRelationship)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.offset = try Self._decodeOffset(from: _container)
		self.relationship = try FHIRPrimitive<ActionRelationshipType>(from: _container, forKey: .relationship, auxiliaryKey: ._relationship)
		self.targetId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .targetId, auxiliaryKey: ._targetId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try endRelationship?.encode(on: &_container, forKey: .endRelationship, auxiliaryKey: ._endRelationship)
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
		try targetId.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
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
