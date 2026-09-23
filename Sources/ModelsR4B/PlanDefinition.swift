//
//  PlanDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/PlanDefinition)
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
 The definition of a plan for a series of actions, independent of any specific patient or context.
 
 This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact.
 The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such
 as clinical decision support rules, order sets, protocols, and drug quality specifications.
 */
public struct PlanDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .planDefinition
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Action defined by the plan
	public var action: [PlanDefinitionAction]?
	
	/// When the plan definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the plan definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the plan definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What the plan is trying to accomplish
	public var goal: [PlanDefinitionGoal]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the plan definition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for plan definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the plan definition was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Logic used by the plan definition
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this plan definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this plan definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// The status of this plan definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Type of individual the plan definition is focused on
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Subordinate title of the plan definition
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this plan definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// E.g. Education, Treatment, Assessment
	public var topic: [CodeableConcept]?
	
	/// order-set | clinical-protocol | eca-rule | workflow-definition
	public var type: CodeableConcept?
	
	/// Canonical identifier for this plan definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Describes the clinical usage of the plan
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the plan definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		action: [PlanDefinitionAction]? = nil,
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		author: [ContactDetail]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		goal: [PlanDefinitionGoal]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		library: [FHIRPrimitive<Canonical>]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: SubjectX? = nil,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.action = action
		self.approvalDate = approvalDate
		self.author = author
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.goal = goal
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.library = library
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.status = status
		self.subject = subject
		self.subtitle = subtitle
		self.text = text
		self.title = title
		self.topic = topic
		self.type = type
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action
		case approvalDate; case _approvalDate
		case author
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case goal
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case library; case _library
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case status; case _status
		case subjectCanonical; case _subjectCanonical
		case subjectCodeableConcept
		case subjectReference
		case subtitle; case _subtitle
		case text
		case title; case _title
		case topic
		case type
		case url; case _url
		case usage; case _usage
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [PlanDefinitionAction](from: _container, forKeyIfPresent: .action)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [PlanDefinitionGoal](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Self._decodeSubject(from: _container)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try goal?.encode(on: &_container, forKey: .goal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = subject {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .subjectCanonical, auxiliaryKey: ._subjectCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .subjectReference)
		}
		}
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSubject(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubjectX? {
		var _t_subject: SubjectX? = nil
		if let subjectCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .subjectCanonical, auxiliaryKey: ._subjectCanonical) {
			_t_subject = .canonical(subjectCanonical)
		}
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCodeableConcept, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		return _t_subject
	}
}

/**
 Action defined by the plan.
 
 An action or group of actions to be taken as part of the plan. For example, in clinical care, an action would be to
 prescribe a particular indicated medication, or perform a particular test as appropriate. In pharmaceutical quality, an
 action would be the test that needs to be performed on a drug product as defined in the quality specification.
 */
public struct PlanDefinitionAction: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
		indirect case range(Range)
		indirect case timing(Timing)
	}
	
	/// A sub-action
	public var action: [PlanDefinitionAction]?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>?
	
	/// Code representing the meaning of the action or sub-actions
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable
	public var condition: [PlanDefinitionActionCondition]?
	
	/// Description of the activity to be performed
	/// One of `definition[x]`
	public var definition: DefinitionX?
	
	/// Brief description of the action
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Supporting documentation for the intended performer of the action
	public var documentation: [RelatedArtifact]?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [PlanDefinitionActionDynamicValue]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What goals this action supports
	public var goalId: [FHIRPrimitive<FHIRString>]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Input data requirements
	public var input: [DataRequirement]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Output data definition
	public var output: [DataRequirement]?
	
	/// Who should participate in the action
	public var participant: [PlanDefinitionActionParticipant]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>?
	
	/// User-visible prefix for the action (e.g. 1. or A.)
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Why the action should be performed
	public var reason: [CodeableConcept]?
	
	/// Relationship to another action
	public var relatedAction: [PlanDefinitionActionRelatedAction]?
	
	/// Defines the required behavior for the action.
	public var requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>?
	
	/// Type of individual the action is focused on
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system
	public var textEquivalent: FHIRPrimitive<FHIRString>?
	
	/// When the action should take place
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Transform to apply the template
	public var transform: FHIRPrimitive<Canonical>?
	
	/// When the action should be triggered
	public var trigger: [TriggerDefinition]?
	
	/// create | update | remove | fire-event
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		action: [PlanDefinitionAction]? = nil,
		cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>? = nil,
		code: [CodeableConcept]? = nil,
		condition: [PlanDefinitionActionCondition]? = nil,
		definition: DefinitionX? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		documentation: [RelatedArtifact]? = nil,
		dynamicValue: [PlanDefinitionActionDynamicValue]? = nil,
		`extension`: [Extension]? = nil,
		goalId: [FHIRPrimitive<FHIRString>]? = nil,
		groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		input: [DataRequirement]? = nil,
		modifierExtension: [Extension]? = nil,
		output: [DataRequirement]? = nil,
		participant: [PlanDefinitionActionParticipant]? = nil,
		precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>? = nil,
		prefix: FHIRPrimitive<FHIRString>? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		reason: [CodeableConcept]? = nil,
		relatedAction: [PlanDefinitionActionRelatedAction]? = nil,
		requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>? = nil,
		selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>? = nil,
		subject: SubjectX? = nil,
		textEquivalent: FHIRPrimitive<FHIRString>? = nil,
		timing: TimingX? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		transform: FHIRPrimitive<Canonical>? = nil,
		trigger: [TriggerDefinition]? = nil,
		type: CodeableConcept? = nil
	) {
		self.action = action
		self.cardinalityBehavior = cardinalityBehavior
		self.code = code
		self.condition = condition
		self.definition = definition
		self.description_fhir = description_fhir
		self.documentation = documentation
		self.dynamicValue = dynamicValue
		self.`extension` = `extension`
		self.goalId = goalId
		self.groupingBehavior = groupingBehavior
		self.id = id
		self.input = input
		self.modifierExtension = modifierExtension
		self.output = output
		self.participant = participant
		self.precheckBehavior = precheckBehavior
		self.prefix = prefix
		self.priority = priority
		self.reason = reason
		self.relatedAction = relatedAction
		self.requiredBehavior = requiredBehavior
		self.selectionBehavior = selectionBehavior
		self.subject = subject
		self.textEquivalent = textEquivalent
		self.timing = timing
		self.title = title
		self.transform = transform
		self.trigger = trigger
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
		case `extension` = "extension"
		case goalId; case _goalId
		case groupingBehavior; case _groupingBehavior
		case id; case _id
		case input
		case modifierExtension
		case output
		case participant
		case precheckBehavior; case _precheckBehavior
		case prefix; case _prefix
		case priority; case _priority
		case reason
		case relatedAction
		case requiredBehavior; case _requiredBehavior
		case selectionBehavior; case _selectionBehavior
		case subjectCanonical; case _subjectCanonical
		case subjectCodeableConcept
		case subjectReference
		case textEquivalent; case _textEquivalent
		case timingAge
		case timingDateTime; case _timingDateTime
		case timingDuration
		case timingPeriod
		case timingRange
		case timingTiming
		case title; case _title
		case transform; case _transform
		case trigger
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [PlanDefinitionAction](from: _container, forKeyIfPresent: .action)
		self.cardinalityBehavior = try FHIRPrimitive<ActionCardinalityBehavior>(from: _container, forKeyIfPresent: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.condition = try [PlanDefinitionActionCondition](from: _container, forKeyIfPresent: .condition)
		self.definition = try Self._decodeDefinition(from: _container)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.documentation = try [RelatedArtifact](from: _container, forKeyIfPresent: .documentation)
		self.dynamicValue = try [PlanDefinitionActionDynamicValue](from: _container, forKeyIfPresent: .dynamicValue)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goalId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .goalId, auxiliaryKey: ._goalId)
		self.groupingBehavior = try FHIRPrimitive<ActionGroupingBehavior>(from: _container, forKeyIfPresent: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.input = try [DataRequirement](from: _container, forKeyIfPresent: .input)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.output = try [DataRequirement](from: _container, forKeyIfPresent: .output)
		self.participant = try [PlanDefinitionActionParticipant](from: _container, forKeyIfPresent: .participant)
		self.precheckBehavior = try FHIRPrimitive<ActionPrecheckBehavior>(from: _container, forKeyIfPresent: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.relatedAction = try [PlanDefinitionActionRelatedAction](from: _container, forKeyIfPresent: .relatedAction)
		self.requiredBehavior = try FHIRPrimitive<ActionRequiredBehavior>(from: _container, forKeyIfPresent: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		self.selectionBehavior = try FHIRPrimitive<ActionSelectionBehavior>(from: _container, forKeyIfPresent: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		self.subject = try Self._decodeSubject(from: _container)
		self.textEquivalent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .textEquivalent, auxiliaryKey: ._textEquivalent)
		self.timing = try Self._decodeTiming(from: _container)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.transform = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.trigger = try [TriggerDefinition](from: _container, forKeyIfPresent: .trigger)
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
		try goalId?.encode(on: &_container, forKey: .goalId, auxiliaryKey: ._goalId)
		try groupingBehavior?.encode(on: &_container, forKey: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try input?.encode(on: &_container, forKey: .input)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try output?.encode(on: &_container, forKey: .output)
		try participant?.encode(on: &_container, forKey: .participant)
		try precheckBehavior?.encode(on: &_container, forKey: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try relatedAction?.encode(on: &_container, forKey: .relatedAction)
		try requiredBehavior?.encode(on: &_container, forKey: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		try selectionBehavior?.encode(on: &_container, forKey: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		if let _enum = subject {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .subjectCanonical, auxiliaryKey: ._subjectCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .subjectReference)
		}
		}
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
		try transform?.encode(on: &_container, forKey: .transform, auxiliaryKey: ._transform)
		try trigger?.encode(on: &_container, forKey: .trigger)
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
	
	private static func _decodeSubject(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubjectX? {
		var _t_subject: SubjectX? = nil
		if let subjectCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .subjectCanonical, auxiliaryKey: ._subjectCanonical) {
			_t_subject = .canonical(subjectCanonical)
		}
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCodeableConcept, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		return _t_subject
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
 
 An expression that describes applicability criteria or start/stop conditions for the action.
 */
public struct PlanDefinitionActionCondition: BackboneElement {
	
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
public struct PlanDefinitionActionDynamicValue: BackboneElement {
	
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
 Who should participate in the action.
 
 Indicates who should participate in performing the action described.
 */
public struct PlanDefinitionActionParticipant: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// E.g. Nurse, Surgeon, Parent
	public var role: CodeableConcept?
	
	/// The type of participant in the action.
	public var type: FHIRPrimitive<ActionParticipantType>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil,
		type: FHIRPrimitive<ActionParticipantType>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case role
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.type = try FHIRPrimitive<ActionParticipantType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Relationship to another action.
 
 A relationship to another action such as "before" or "30-60 minutes after start of".
 */
public struct PlanDefinitionActionRelatedAction: BackboneElement {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Equatable, Hashable, Sendable {
		indirect case duration(Duration)
		indirect case range(Range)
	}
	
	/// What action is this related to
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

/**
 What the plan is trying to accomplish.
 
 A goal describes an expected outcome that activities within the plan are intended to achieve. For example, weight loss,
 restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement
 objective, meeting the acceptance criteria for a test as specified by a quality specification, etc.
 */
public struct PlanDefinitionGoal: BackboneElement {
	
	/// What does the goal address
	public var addresses: [CodeableConcept]?
	
	/// E.g. Treatment, dietary, behavioral
	public var category: CodeableConcept?
	
	/// Code or text describing the goal
	public var description_fhir: CodeableConcept
	
	/// Supporting documentation for the goal
	public var documentation: [RelatedArtifact]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// high-priority | medium-priority | low-priority
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins
	public var start: CodeableConcept?
	
	/// Target outcome for the goal
	public var target: [PlanDefinitionGoalTarget]?
	
	/// Designated initializer
	public init(
		addresses: [CodeableConcept]? = nil,
		category: CodeableConcept? = nil,
		description_fhir: CodeableConcept,
		documentation: [RelatedArtifact]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		priority: CodeableConcept? = nil,
		start: CodeableConcept? = nil,
		target: [PlanDefinitionGoalTarget]? = nil
	) {
		self.addresses = addresses
		self.category = category
		self.description_fhir = description_fhir
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priority = priority
		self.start = start
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case addresses
		case category
		case description_fhir = "description"
		case documentation
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case priority
		case start
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.addresses = try [CodeableConcept](from: _container, forKeyIfPresent: .addresses)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.description_fhir = try CodeableConcept(from: _container, forKey: .description_fhir)
		self.documentation = try [RelatedArtifact](from: _container, forKeyIfPresent: .documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.start = try CodeableConcept(from: _container, forKeyIfPresent: .start)
		self.target = try [PlanDefinitionGoalTarget](from: _container, forKeyIfPresent: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir.encode(on: &_container, forKey: .description_fhir)
		try documentation?.encode(on: &_container, forKey: .documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try priority?.encode(on: &_container, forKey: .priority)
		try start?.encode(on: &_container, forKey: .start)
		try target?.encode(on: &_container, forKey: .target)
	}
}

/**
 Target outcome for the goal.
 
 Indicates what should be done and within what timeframe.
 */
public struct PlanDefinitionGoalTarget: BackboneElement {
	
	/// All possible types for "detail[x]"
	public enum DetailX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// The target value to be achieved
	/// One of `detail[x]`
	public var detail: DetailX?
	
	/// Reach goal within
	public var due: Duration?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The parameter whose value is to be tracked
	public var measure: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		detail: DetailX? = nil,
		due: Duration? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		measure: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.detail = detail
		self.due = due
		self.`extension` = `extension`
		self.id = id
		self.measure = measure
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detailCodeableConcept
		case detailQuantity
		case detailRange
		case due
		case `extension` = "extension"
		case id; case _id
		case measure
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.detail = try Self._decodeDetail(from: _container)
		self.due = try Duration(from: _container, forKeyIfPresent: .due)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.measure = try CodeableConcept(from: _container, forKeyIfPresent: .measure)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = detail {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .detailCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .detailQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .detailRange)
		}
		}
		try due?.encode(on: &_container, forKey: .due)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try measure?.encode(on: &_container, forKey: .measure)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDetail(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DetailX? {
		var _t_detail: DetailX? = nil
		if let detailCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .detailCodeableConcept) {
			_t_detail = .codeableConcept(detailCodeableConcept)
		}
		if let detailQuantity = try Quantity(from: _container, forKeyIfPresent: .detailQuantity) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailQuantity, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .quantity(detailQuantity)
		}
		if let detailRange = try Range(from: _container, forKeyIfPresent: .detailRange) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailRange, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .range(detailRange)
		}
		return _t_detail
	}
}
