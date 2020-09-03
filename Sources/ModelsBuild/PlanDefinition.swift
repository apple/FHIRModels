//
//  PlanDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/PlanDefinition)
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
 The definition of a plan for a series of actions, independent of any specific patient or context.
 
 This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact.
 The resource is general enough to support the description of a broad range of clinical artifacts such as clinical
 decision support rules, order sets and protocols.
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class PlanDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .planDefinition }
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Canonical identifier for this plan definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the plan definition
	public var identifier: [Identifier]?
	
	/// Business version of the plan definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this plan definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this plan definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Subordinate title of the plan definition
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// order-set | clinical-protocol | eca-rule | workflow-definition
	public var type: CodeableConcept?
	
	/// The status of this plan definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Type of individual the plan definition is focused on
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the plan definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for plan definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this plan definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Describes the clinical usage of the plan
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the plan definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the plan definition was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the plan definition is expected to be used
	public var effectivePeriod: Period?
	
	/// E.g. Education, Treatment, Assessment
	public var topic: [CodeableConcept]?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Logic used by the plan definition
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// What the plan is trying to accomplish
	public var goal: [PlanDefinitionGoal]?
	
	/// Action defined by the plan
	public var action: [PlanDefinitionAction]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
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
		case action
		case approvalDate; case _approvalDate
		case author
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case goal
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case library; case _library
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case reviewer
		case status; case _status
		case subjectCodeableConcept
		case subjectReference
		case subtitle; case _subtitle
		case title; case _title
		case topic
		case type
		case url; case _url
		case usage; case _usage
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [PlanDefinitionAction](from: _container, forKeyIfPresent: .action)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.goal = try [PlanDefinitionGoal](from: _container, forKeyIfPresent: .goal)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		var _t_subject: SubjectX? = nil
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
		self.subject = _t_subject
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try author?.encode(on: &_container, forKey: .author)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try goal?.encode(on: &_container, forKey: .goal)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = subject {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .subjectReference)
			}
		}
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PlanDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && approvalDate == _other.approvalDate
		    && author == _other.author
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && goal == _other.goal
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && library == _other.library
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && status == _other.status
		    && subject == _other.subject
		    && subtitle == _other.subtitle
		    && title == _other.title
		    && topic == _other.topic
		    && type == _other.type
		    && url == _other.url
		    && usage == _other.usage
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(approvalDate)
		hasher.combine(author)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(goal)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(library)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(subtitle)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(usage)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Action defined by the plan.
 
 An action or group of actions to be taken as part of the plan.
 */
open class PlanDefinitionAction: BackboneElement {
	
	/// All possible types for "definition[x]"
	public enum DefinitionX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
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
	
	/// User-visible prefix for the action (e.g. 1. or A.)
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// User-visible title
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Brief description of the action
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system
	public var textEquivalent: FHIRPrimitive<FHIRString>?
	
	/// Indicates how quickly the action should be addressed with respect to other actions.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Code representing the meaning of the action or sub-actions
	public var code: [CodeableConcept]?
	
	/// Why the action should be performed
	public var reason: [CodeableConcept]?
	
	/// Supporting documentation for the intended performer of the action
	public var documentation: [RelatedArtifact]?
	
	/// What goals this action supports
	public var goalId: [FHIRPrimitive<FHIRString>]?
	
	/// Type of individual the action is focused on
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// When the action should be triggered
	public var trigger: [TriggerDefinition]?
	
	/// Whether or not the action is applicable
	public var condition: [PlanDefinitionActionCondition]?
	
	/// Input data requirements
	public var input: [DataRequirement]?
	
	/// Output data definition
	public var output: [DataRequirement]?
	
	/// Relationship to another action
	public var relatedAction: [PlanDefinitionActionRelatedAction]?
	
	/// When the action should take place
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Who should participate in the action
	public var participant: [PlanDefinitionActionParticipant]?
	
	/// create | update | remove | fire-event
	public var type: CodeableConcept?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: FHIRPrimitive<ActionGroupingBehavior>?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: FHIRPrimitive<ActionSelectionBehavior>?
	
	/// Defines the required behavior for the action.
	public var requiredBehavior: FHIRPrimitive<ActionRequiredBehavior>?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: FHIRPrimitive<ActionPrecheckBehavior>?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: FHIRPrimitive<ActionCardinalityBehavior>?
	
	/// Description of the activity to be performed
	/// One of `definition[x]`
	public var definition: DefinitionX?
	
	/// Transform to apply the template
	public var transform: FHIRPrimitive<Canonical>?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [PlanDefinitionActionDynamicValue]?
	
	/// A sub-action
	public var action: [PlanDefinitionAction]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							priority: FHIRPrimitive<RequestPriority>? = nil,
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
							type: CodeableConcept? = nil)
	{
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
		case goalId; case _goalId
		case groupingBehavior; case _groupingBehavior
		case input
		case output
		case participant
		case precheckBehavior; case _precheckBehavior
		case prefix; case _prefix
		case priority; case _priority
		case reason
		case relatedAction
		case requiredBehavior; case _requiredBehavior
		case selectionBehavior; case _selectionBehavior
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [PlanDefinitionAction](from: _container, forKeyIfPresent: .action)
		self.cardinalityBehavior = try FHIRPrimitive<ActionCardinalityBehavior>(from: _container, forKeyIfPresent: .cardinalityBehavior, auxiliaryKey: ._cardinalityBehavior)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.condition = try [PlanDefinitionActionCondition](from: _container, forKeyIfPresent: .condition)
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
		self.dynamicValue = try [PlanDefinitionActionDynamicValue](from: _container, forKeyIfPresent: .dynamicValue)
		self.goalId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .goalId, auxiliaryKey: ._goalId)
		self.groupingBehavior = try FHIRPrimitive<ActionGroupingBehavior>(from: _container, forKeyIfPresent: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		self.input = try [DataRequirement](from: _container, forKeyIfPresent: .input)
		self.output = try [DataRequirement](from: _container, forKeyIfPresent: .output)
		self.participant = try [PlanDefinitionActionParticipant](from: _container, forKeyIfPresent: .participant)
		self.precheckBehavior = try FHIRPrimitive<ActionPrecheckBehavior>(from: _container, forKeyIfPresent: .precheckBehavior, auxiliaryKey: ._precheckBehavior)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.relatedAction = try [PlanDefinitionActionRelatedAction](from: _container, forKeyIfPresent: .relatedAction)
		self.requiredBehavior = try FHIRPrimitive<ActionRequiredBehavior>(from: _container, forKeyIfPresent: .requiredBehavior, auxiliaryKey: ._requiredBehavior)
		self.selectionBehavior = try FHIRPrimitive<ActionSelectionBehavior>(from: _container, forKeyIfPresent: .selectionBehavior, auxiliaryKey: ._selectionBehavior)
		var _t_subject: SubjectX? = nil
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
		self.subject = _t_subject
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
		self.trigger = try [TriggerDefinition](from: _container, forKeyIfPresent: .trigger)
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
		try goalId?.encode(on: &_container, forKey: .goalId, auxiliaryKey: ._goalId)
		try groupingBehavior?.encode(on: &_container, forKey: .groupingBehavior, auxiliaryKey: ._groupingBehavior)
		try input?.encode(on: &_container, forKey: .input)
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
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .subjectReference)
			}
		}
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
		try trigger?.encode(on: &_container, forKey: .trigger)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PlanDefinitionAction else {
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
		    && goalId == _other.goalId
		    && groupingBehavior == _other.groupingBehavior
		    && input == _other.input
		    && output == _other.output
		    && participant == _other.participant
		    && precheckBehavior == _other.precheckBehavior
		    && prefix == _other.prefix
		    && priority == _other.priority
		    && reason == _other.reason
		    && relatedAction == _other.relatedAction
		    && requiredBehavior == _other.requiredBehavior
		    && selectionBehavior == _other.selectionBehavior
		    && subject == _other.subject
		    && textEquivalent == _other.textEquivalent
		    && timing == _other.timing
		    && title == _other.title
		    && transform == _other.transform
		    && trigger == _other.trigger
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
		hasher.combine(goalId)
		hasher.combine(groupingBehavior)
		hasher.combine(input)
		hasher.combine(output)
		hasher.combine(participant)
		hasher.combine(precheckBehavior)
		hasher.combine(prefix)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(relatedAction)
		hasher.combine(requiredBehavior)
		hasher.combine(selectionBehavior)
		hasher.combine(subject)
		hasher.combine(textEquivalent)
		hasher.combine(timing)
		hasher.combine(title)
		hasher.combine(transform)
		hasher.combine(trigger)
		hasher.combine(type)
	}
}

/**
 Whether or not the action is applicable.
 
 An expression that describes applicability criteria or start/stop conditions for the action.
 */
open class PlanDefinitionActionCondition: BackboneElement {
	
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
							modifierExtension: [Extension]? = nil)
	{
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
		guard let _other = _other as? PlanDefinitionActionCondition else {
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
open class PlanDefinitionActionDynamicValue: BackboneElement {
	
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
							path: FHIRPrimitive<FHIRString>? = nil)
	{
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
		guard let _other = _other as? PlanDefinitionActionDynamicValue else {
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
 Who should participate in the action.
 
 Indicates who should participate in performing the action described.
 */
open class PlanDefinitionActionParticipant: BackboneElement {
	
	/// The type of participant in the action.
	public var type: FHIRPrimitive<ActionParticipantType>
	
	/// E.g. Nurse, Surgeon, Parent
	public var role: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ActionParticipantType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept? = nil,
							type: FHIRPrimitive<ActionParticipantType>)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case role
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.type = try FHIRPrimitive<ActionParticipantType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try role?.encode(on: &_container, forKey: .role)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PlanDefinitionActionParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return role == _other.role
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(role)
		hasher.combine(type)
	}
}

/**
 Relationship to another action.
 
 A relationship to another action such as "before" or "30-60 minutes after start of".
 */
open class PlanDefinitionActionRelatedAction: BackboneElement {
	
	/// All possible types for "offset[x]"
	public enum OffsetX: Hashable {
		case duration(Duration)
		case range(Range)
	}
	
	/// What action is this related to
	public var actionId: FHIRPrimitive<FHIRString>
	
	/// The relationship of this action to the related action.
	public var relationship: FHIRPrimitive<ActionRelationshipType>
	
	/// Time offset for the relationship
	/// One of `offset[x]`
	public var offset: OffsetX?
	
	/// Designated initializer taking all required properties
	public init(actionId: FHIRPrimitive<FHIRString>, relationship: FHIRPrimitive<ActionRelationshipType>) {
		self.actionId = actionId
		self.relationship = relationship
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actionId: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							offset: OffsetX? = nil,
							relationship: FHIRPrimitive<ActionRelationshipType>)
	{
		self.init(actionId: actionId, relationship: relationship)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.offset = offset
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actionId; case _actionId
		case offsetDuration
		case offsetRange
		case relationship; case _relationship
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actionId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .actionId, auxiliaryKey: ._actionId)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actionId.encode(on: &_container, forKey: .actionId, auxiliaryKey: ._actionId)
		if let _enum = offset {
			switch _enum {
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .offsetDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .offsetRange)
			}
		}
		try relationship.encode(on: &_container, forKey: .relationship, auxiliaryKey: ._relationship)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PlanDefinitionActionRelatedAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actionId == _other.actionId
		    && offset == _other.offset
		    && relationship == _other.relationship
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actionId)
		hasher.combine(offset)
		hasher.combine(relationship)
	}
}

/**
 What the plan is trying to accomplish.
 
 Goals that describe what the activities within the plan are intended to achieve. For example, weight loss, restoring an
 activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
 */
open class PlanDefinitionGoal: BackboneElement {
	
	/// E.g. Treatment, dietary, behavioral
	public var category: CodeableConcept?
	
	/// Code or text describing the goal
	public var description_fhir: CodeableConcept
	
	/// high-priority | medium-priority | low-priority
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins
	public var start: CodeableConcept?
	
	/// What does the goal address
	public var addresses: [CodeableConcept]?
	
	/// Supporting documentation for the goal
	public var documentation: [RelatedArtifact]?
	
	/// Target outcome for the goal
	public var target: [PlanDefinitionGoalTarget]?
	
	/// Designated initializer taking all required properties
	public init(description_fhir: CodeableConcept) {
		self.description_fhir = description_fhir
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							addresses: [CodeableConcept]? = nil,
							category: CodeableConcept? = nil,
							description_fhir: CodeableConcept,
							documentation: [RelatedArtifact]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							priority: CodeableConcept? = nil,
							start: CodeableConcept? = nil,
							target: [PlanDefinitionGoalTarget]? = nil)
	{
		self.init(description_fhir: description_fhir)
		self.addresses = addresses
		self.category = category
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
		case priority
		case start
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.addresses = try [CodeableConcept](from: _container, forKeyIfPresent: .addresses)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.description_fhir = try CodeableConcept(from: _container, forKey: .description_fhir)
		self.documentation = try [RelatedArtifact](from: _container, forKeyIfPresent: .documentation)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.start = try CodeableConcept(from: _container, forKeyIfPresent: .start)
		self.target = try [PlanDefinitionGoalTarget](from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try addresses?.encode(on: &_container, forKey: .addresses)
		try category?.encode(on: &_container, forKey: .category)
		try description_fhir.encode(on: &_container, forKey: .description_fhir)
		try documentation?.encode(on: &_container, forKey: .documentation)
		try priority?.encode(on: &_container, forKey: .priority)
		try start?.encode(on: &_container, forKey: .start)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PlanDefinitionGoal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return addresses == _other.addresses
		    && category == _other.category
		    && description_fhir == _other.description_fhir
		    && documentation == _other.documentation
		    && priority == _other.priority
		    && start == _other.start
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(addresses)
		hasher.combine(category)
		hasher.combine(description_fhir)
		hasher.combine(documentation)
		hasher.combine(priority)
		hasher.combine(start)
		hasher.combine(target)
	}
}

/**
 Target outcome for the goal.
 
 Indicates what should be done and within what timeframe.
 */
open class PlanDefinitionGoalTarget: BackboneElement {
	
	/// All possible types for "detail[x]"
	public enum DetailX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// The parameter whose value is to be tracked
	public var measure: CodeableConcept?
	
	/// The target value to be achieved
	/// One of `detail[x]`
	public var detail: DetailX?
	
	/// Reach goal within
	public var due: Duration?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							detail: DetailX? = nil,
							due: Duration? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							measure: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
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
		case measure
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_detail: DetailX? = nil
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
		if let detailCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .detailCodeableConcept) {
			if _t_detail != nil {
				throw DecodingError.dataCorruptedError(forKey: .detailCodeableConcept, in: _container, debugDescription: "More than one value provided for \"detail\"")
			}
			_t_detail = .codeableConcept(detailCodeableConcept)
		}
		self.detail = _t_detail
		self.due = try Duration(from: _container, forKeyIfPresent: .due)
		self.measure = try CodeableConcept(from: _container, forKeyIfPresent: .measure)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = detail {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .detailQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .detailRange)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .detailCodeableConcept)
			}
		}
		try due?.encode(on: &_container, forKey: .due)
		try measure?.encode(on: &_container, forKey: .measure)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PlanDefinitionGoalTarget else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return detail == _other.detail
		    && due == _other.due
		    && measure == _other.measure
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(detail)
		hasher.combine(due)
		hasher.combine(measure)
	}
}
