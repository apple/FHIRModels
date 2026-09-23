//
//  Questionnaire.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Questionnaire)
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
 A structured set of questions.
 
 A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
 detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
 */
public struct Questionnaire: DomainResource {
	
	public static let resourceType: ResourceType = .questionnaire
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When the questionnaire was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Concept that represents the overall questionnaire
	public var code: [Coding]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Based on Questionnaire
	public var derivedFrom: [FHIRPrimitive<Canonical>]?
	
	/// Natural language description of the questionnaire
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// When the questionnaire is expected to be used
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for questionnaire
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Questions and sections within the Questionnaire
	public var item: [QuestionnaireItem]?
	
	/// Intended jurisdiction for questionnaire (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the questionnaire was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this questionnaire (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this questionnaire is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The current state of this questionnaire.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// The types of subjects that can be the subject of responses created for the questionnaire.
	/// Restricted to: ['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition',
	/// 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent',
	/// 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure',
	/// 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation',
	/// 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication',
	/// 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition',
	/// 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest',
	/// 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAssociation', 'DeviceDefinition',
	/// 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport', 'DocumentReference',
	/// 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare',
	/// 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit',
	/// 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal', 'GraphDefinition', 'Group',
	/// 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy', 'Immunization',
	/// 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan',
	/// 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage', 'List', 'Location',
	/// 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement',
	/// 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem',
	/// 'NutritionIntake', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition',
	/// 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation',
	/// 'PackagedProductDefinition', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Permission',
	/// 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements',
	/// 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot',
	/// 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus',
	/// 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer',
	/// 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery',
	/// 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport',
	/// 'ValueSet', 'VerificationResult', 'VisionPrescription']
	public var subjectType: [FHIRPrimitive<ResourceType>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this questionnaire (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this questionnaire, represented as an absolute URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the questionnaire
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		code: [Coding]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFrom: [FHIRPrimitive<Canonical>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		item: [QuestionnaireItem]? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subjectType: [FHIRPrimitive<ResourceType>]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.code = code
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFrom = derivedFrom
		self.description_fhir = description_fhir
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.item = item
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.subjectType = subjectType
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case code
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case item
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case subjectType; case _subjectType
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.item = try [QuestionnaireItem](from: _container, forKeyIfPresent: .item)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subjectType = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .subjectType, auxiliaryKey: ._subjectType)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try item?.encode(on: &_container, forKey: .item)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subjectType?.encode(on: &_container, forKey: .subjectType, auxiliaryKey: ._subjectType)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
		switch _enum {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeVersionAlgorithm(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> VersionAlgorithmX? {
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		return _t_versionAlgorithm
	}
}

/**
 Questions and sections within the Questionnaire.
 
 A particular question, question grouping or display text that is part of the questionnaire.
 */
public struct QuestionnaireItem: BackboneElement {
	
	/// optionsOnly | optionsOrType | optionsOrString
	public var answerConstraint: FHIRPrimitive<FHIRString>?
	
	/// Permitted answer
	public var answerOption: [QuestionnaireItemAnswerOption]?
	
	/// ValueSet containing permitted answers
	public var answerValueSet: FHIRPrimitive<Canonical>?
	
	/// Corresponding concept for this item in a terminology
	public var code: [Coding]?
	
	/// ElementDefinition - details for the item
	public var definition: FHIRPrimitive<FHIRURI>?
	
	/// hidden | protected
	public var disabledDisplay: FHIRPrimitive<FHIRString>?
	
	/// Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
	public var enableBehavior: FHIRPrimitive<EnableWhenBehavior>?
	
	/// Only allow data when
	public var enableWhen: [QuestionnaireItemEnableWhen]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Initial value(s) when item is first rendered
	public var initial: [QuestionnaireItemInitial]?
	
	/// Nested questionnaire items
	public var item: [QuestionnaireItem]?
	
	/// Unique id for item in questionnaire
	public var linkId: FHIRPrimitive<FHIRString>
	
	/// No more than these many characters
	public var maxLength: FHIRPrimitive<FHIRInteger>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// E.g. "1(a)", "2.5.3"
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// Don't allow human editing
	public var readOnly: FHIRPrimitive<FHIRBool>?
	
	/// Whether the item may repeat
	public var repeats: FHIRPrimitive<FHIRBool>?
	
	/// Whether the item must be included in data results
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Primary text for the item
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The type of questionnaire item this is - whether text for display, a grouping of other items or a particular
	/// type of data to be captured (string, integer, Coding, etc.).
	public var type: FHIRPrimitive<QuestionnaireItemType>
	
	/// Designated initializer
	public init(
		answerConstraint: FHIRPrimitive<FHIRString>? = nil,
		answerOption: [QuestionnaireItemAnswerOption]? = nil,
		answerValueSet: FHIRPrimitive<Canonical>? = nil,
		code: [Coding]? = nil,
		definition: FHIRPrimitive<FHIRURI>? = nil,
		disabledDisplay: FHIRPrimitive<FHIRString>? = nil,
		enableBehavior: FHIRPrimitive<EnableWhenBehavior>? = nil,
		enableWhen: [QuestionnaireItemEnableWhen]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initial: [QuestionnaireItemInitial]? = nil,
		item: [QuestionnaireItem]? = nil,
		linkId: FHIRPrimitive<FHIRString>,
		maxLength: FHIRPrimitive<FHIRInteger>? = nil,
		modifierExtension: [Extension]? = nil,
		prefix: FHIRPrimitive<FHIRString>? = nil,
		readOnly: FHIRPrimitive<FHIRBool>? = nil,
		repeats: FHIRPrimitive<FHIRBool>? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<QuestionnaireItemType>
	) {
		self.answerConstraint = answerConstraint
		self.answerOption = answerOption
		self.answerValueSet = answerValueSet
		self.code = code
		self.definition = definition
		self.disabledDisplay = disabledDisplay
		self.enableBehavior = enableBehavior
		self.enableWhen = enableWhen
		self.`extension` = `extension`
		self.id = id
		self.initial = initial
		self.item = item
		self.linkId = linkId
		self.maxLength = maxLength
		self.modifierExtension = modifierExtension
		self.prefix = prefix
		self.readOnly = readOnly
		self.repeats = repeats
		self.required = required
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answerConstraint; case _answerConstraint
		case answerOption
		case answerValueSet; case _answerValueSet
		case code
		case definition; case _definition
		case disabledDisplay; case _disabledDisplay
		case enableBehavior; case _enableBehavior
		case enableWhen
		case `extension` = "extension"
		case id; case _id
		case initial
		case item
		case linkId; case _linkId
		case maxLength; case _maxLength
		case modifierExtension
		case prefix; case _prefix
		case readOnly; case _readOnly
		case repeats; case _repeats
		case required; case _required
		case text; case _text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.answerConstraint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .answerConstraint, auxiliaryKey: ._answerConstraint)
		self.answerOption = try [QuestionnaireItemAnswerOption](from: _container, forKeyIfPresent: .answerOption)
		self.answerValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .answerValueSet, auxiliaryKey: ._answerValueSet)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.definition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.disabledDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disabledDisplay, auxiliaryKey: ._disabledDisplay)
		self.enableBehavior = try FHIRPrimitive<EnableWhenBehavior>(from: _container, forKeyIfPresent: .enableBehavior, auxiliaryKey: ._enableBehavior)
		self.enableWhen = try [QuestionnaireItemEnableWhen](from: _container, forKeyIfPresent: .enableWhen)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initial = try [QuestionnaireItemInitial](from: _container, forKeyIfPresent: .initial)
		self.item = try [QuestionnaireItem](from: _container, forKeyIfPresent: .item)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .linkId, auxiliaryKey: ._linkId)
		self.maxLength = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .maxLength, auxiliaryKey: ._maxLength)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.readOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readOnly, auxiliaryKey: ._readOnly)
		self.repeats = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .repeats, auxiliaryKey: ._repeats)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<QuestionnaireItemType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try answerConstraint?.encode(on: &_container, forKey: .answerConstraint, auxiliaryKey: ._answerConstraint)
		try answerOption?.encode(on: &_container, forKey: .answerOption)
		try answerValueSet?.encode(on: &_container, forKey: .answerValueSet, auxiliaryKey: ._answerValueSet)
		try code?.encode(on: &_container, forKey: .code)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try disabledDisplay?.encode(on: &_container, forKey: .disabledDisplay, auxiliaryKey: ._disabledDisplay)
		try enableBehavior?.encode(on: &_container, forKey: .enableBehavior, auxiliaryKey: ._enableBehavior)
		try enableWhen?.encode(on: &_container, forKey: .enableWhen)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try initial?.encode(on: &_container, forKey: .initial)
		try item?.encode(on: &_container, forKey: .item)
		try linkId.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try maxLength?.encode(on: &_container, forKey: .maxLength, auxiliaryKey: ._maxLength)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try readOnly?.encode(on: &_container, forKey: .readOnly, auxiliaryKey: ._readOnly)
		try repeats?.encode(on: &_container, forKey: .repeats, auxiliaryKey: ._repeats)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Permitted answer.
 
 One of the permitted answers for the question.
 */
public struct QuestionnaireItemAnswerOption: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Whether option is selected by default
	public var initialSelected: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Answer value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initialSelected: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.initialSelected = initialSelected
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case initialSelected; case _initialSelected
		case modifierExtension
		case valueCoding
		case valueDate; case _valueDate
		case valueInteger; case _valueInteger
		case valueReference
		case valueString; case _valueString
		case valueTime; case _valueTime
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initialSelected = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initialSelected, auxiliaryKey: ._initialSelected)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try initialSelected?.encode(on: &_container, forKey: .initialSelected, auxiliaryKey: ._initialSelected)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			_t_value = .coding(valueCoding)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueTime)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Only allow data when.
 
 A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the
 specified condition is true.
 */
public struct QuestionnaireItemEnableWhen: BackboneElement {
	
	/// All possible types for "answer[x]"
	public enum AnswerX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
	}
	
	/// Value for question comparison based on operator
	/// One of `answer[x]`
	public var answer: AnswerX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specifies the criteria by which the question is enabled.
	public var `operator`: FHIRPrimitive<QuestionnaireItemOperator>
	
	/// The linkId of question that determines whether item is enabled/disabled
	public var question: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		answer: AnswerX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		`operator`: FHIRPrimitive<QuestionnaireItemOperator>,
		question: FHIRPrimitive<FHIRString>
	) {
		self.answer = answer
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.`operator` = `operator`
		self.question = question
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answerBoolean; case _answerBoolean
		case answerCoding
		case answerDate; case _answerDate
		case answerDateTime; case _answerDateTime
		case answerDecimal; case _answerDecimal
		case answerInteger; case _answerInteger
		case answerQuantity
		case answerReference
		case answerString; case _answerString
		case answerTime; case _answerTime
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case `operator` = "operator"; case _operator = "_operator"
		case question; case _question
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.answer = try Self._decodeAnswer(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.`operator` = try FHIRPrimitive<QuestionnaireItemOperator>(from: _container, forKey: .`operator`, auxiliaryKey: ._operator)
		self.question = try FHIRPrimitive<FHIRString>(from: _container, forKey: .question, auxiliaryKey: ._question)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch answer {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .answerBoolean, auxiliaryKey: ._answerBoolean)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .answerCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .answerDate, auxiliaryKey: ._answerDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .answerDateTime, auxiliaryKey: ._answerDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .answerDecimal, auxiliaryKey: ._answerDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .answerInteger, auxiliaryKey: ._answerInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .answerQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .answerReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .answerString, auxiliaryKey: ._answerString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .answerTime, auxiliaryKey: ._answerTime)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try `operator`.encode(on: &_container, forKey: .`operator`, auxiliaryKey: ._operator)
		try question.encode(on: &_container, forKey: .question, auxiliaryKey: ._question)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAnswer(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AnswerX {
		var _t_answer: AnswerX? = nil
		if let answerBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .answerBoolean, auxiliaryKey: ._answerBoolean) {
			_t_answer = .boolean(answerBoolean)
		}
		if let answerCoding = try Coding(from: _container, forKeyIfPresent: .answerCoding) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerCoding, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .coding(answerCoding)
		}
		if let answerDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .answerDate, auxiliaryKey: ._answerDate) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerDate, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .date(answerDate)
		}
		if let answerDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .answerDateTime, auxiliaryKey: ._answerDateTime) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerDateTime, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .dateTime(answerDateTime)
		}
		if let answerDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .answerDecimal, auxiliaryKey: ._answerDecimal) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerDecimal, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .decimal(answerDecimal)
		}
		if let answerInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .answerInteger, auxiliaryKey: ._answerInteger) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerInteger, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .integer(answerInteger)
		}
		if let answerQuantity = try Quantity(from: _container, forKeyIfPresent: .answerQuantity) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerQuantity, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .quantity(answerQuantity)
		}
		if let answerReference = try Reference(from: _container, forKeyIfPresent: .answerReference) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerReference, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .reference(answerReference)
		}
		if let answerString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .answerString, auxiliaryKey: ._answerString) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerString, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .string(answerString)
		}
		if let answerTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .answerTime, auxiliaryKey: ._answerTime) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerTime, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .time(answerTime)
		}
		guard let _t_answer else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.answerTime)
			throw DecodingError.valueNotFound(AnswerX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"answer\" but have none"))
		}
		return _t_answer
	}
}

/**
 Initial value(s) when item is first rendered.
 
 One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user
 input.
 */
public struct QuestionnaireItemInitial: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Actual value for initializing the question
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCoding
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueQuantity
		case valueReference
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueUri; case _valueUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUri)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}
