//
//  Questionnaire.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/Questionnaire)
//  Copyright 2025 Apple Inc.
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
open class Questionnaire: DomainResource {
	
	override open class var resourceType: ResourceType { return .questionnaire }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this questionnaire, represented as an absolute URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business identifier for questionnaire
	public var identifier: [Identifier]?
	
	/// Business version of the questionnaire
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this questionnaire (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this questionnaire (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Based on Questionnaire
	public var derivedFrom: [FHIRPrimitive<Canonical>]?
	
	/// The current state of this questionnaire.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// The types of subjects that can be the subject of responses created for the questionnaire.
	/// Restricted to: ['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition',
	/// 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent',
	/// 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan',
	/// 'CareTeam', 'Claim', 'ClaimResponse', 'ClinicalUseDefinition', 'CodeSystem', 'Communication',
	/// 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent',
	/// 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device',
	/// 'DeviceAlert', 'DeviceAssociation', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DiagnosticReport',
	/// 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare',
	/// 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit',
	/// 'FamilyMemberHistory', 'Flag', 'Goal', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingSelection',
	/// 'ImagingStudy', 'Immunization', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'InsuranceProduct',
	/// 'Invoice', 'Library', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport',
	/// 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationRequest', 'MedicationStatement',
	/// 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'NamingSystem', 'NutritionIntake',
	/// 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition',
	/// 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Parameters',
	/// 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner',
	/// 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse',
	/// 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements', 'ResearchStudy',
	/// 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen',
	/// 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus',
	/// 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'Task', 'TerminologyCapabilities', 'ValueSet',
	/// 'VisionPrescription']
	public var subjectType: [FHIRPrimitive<ResourceType>]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the questionnaire
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Jurisdiction of the authority that maintains the questionnaire (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this questionnaire is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the questionnaire was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the questionnaire was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the questionnaire is expected to be used
	public var effectivePeriod: Period?
	
	/// Concept that represents the overall questionnaire
	public var code: [Coding]?
	
	/// Questions and sections within the Questionnaire
	public var item: [QuestionnaireItem]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		case approvalDate; case _approvalDate
		case code
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case item
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case subjectType; case _subjectType
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.item = try [QuestionnaireItem](from: _container, forKeyIfPresent: .item)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subjectType = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .subjectType, auxiliaryKey: ._subjectType)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try item?.encode(on: &_container, forKey: .item)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subjectType?.encode(on: &_container, forKey: .subjectType, auxiliaryKey: ._subjectType)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Questionnaire else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && code == _other.code
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && derivedFrom == _other.derivedFrom
		    && description_fhir == _other.description_fhir
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && item == _other.item
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && subjectType == _other.subjectType
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(derivedFrom)
		hasher.combine(description_fhir)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(item)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(subjectType)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Questions and sections within the Questionnaire.
 
 A particular question, question grouping or display text that is part of the questionnaire.
 */
open class QuestionnaireItem: BackboneElement {
	
	/// Unique id for item in questionnaire
	public var linkId: FHIRPrimitive<FHIRString>
	
	/// ElementDefinition - details for the item
	public var definition: [FHIRPrimitive<FHIRURI>]?
	
	/// Corresponding concept for this item in a terminology
	public var code: [Coding]?
	
	/// E.g. "1(a)", "2.5.3"
	public var prefix: FHIRPrimitive<FHIRString>?
	
	/// Primary text for the item
	public var text: FHIRPrimitive<FHIRString>?
	
	/// group | display | boolean | decimal | integer | date | dateTime +
	public var type: FHIRPrimitive<FHIRString>
	
	/// Only allow data when
	public var enableWhen: [QuestionnaireItemEnableWhen]?
	
	/// Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
	public var enableBehavior: FHIRPrimitive<EnableWhenBehavior>?
	
	/// Indicates if and how items that are disabled (because enableWhen evaluates to 'false') should be displayed.
	public var disabledDisplay: FHIRPrimitive<QuestionnaireItemDisabledDisplay>?
	
	/// Whether the item must be included in data results
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Whether the item may repeat
	public var repeats: FHIRPrimitive<FHIRBool>?
	
	/// Don't allow human editing
	public var readOnly: FHIRPrimitive<FHIRBool>?
	
	/// No more than these many characters
	public var maxLength: FHIRPrimitive<FHIRInteger>?
	
	/// For items that have a defined set of allowed answers (via answerOption or answerValueSet), indicates whether
	/// values *other* than those specified can be selected.
	public var answerConstraint: FHIRPrimitive<QuestionnaireAnswerConstraint>?
	
	/// ValueSet containing permitted answers
	public var answerValueSet: FHIRPrimitive<Canonical>?
	
	/// Permitted answer
	public var answerOption: [QuestionnaireItemAnswerOption]?
	
	/// Initial value(s) when item is first rendered
	public var initial: [QuestionnaireItemInitial]?
	
	/// Nested questionnaire items
	public var item: [QuestionnaireItem]?
	
	/// Designated initializer taking all required properties
	public init(linkId: FHIRPrimitive<FHIRString>, type: FHIRPrimitive<FHIRString>) {
		self.linkId = linkId
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		answerConstraint: FHIRPrimitive<QuestionnaireAnswerConstraint>? = nil,
		answerOption: [QuestionnaireItemAnswerOption]? = nil,
		answerValueSet: FHIRPrimitive<Canonical>? = nil,
		code: [Coding]? = nil,
		definition: [FHIRPrimitive<FHIRURI>]? = nil,
		disabledDisplay: FHIRPrimitive<QuestionnaireItemDisabledDisplay>? = nil,
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
		type: FHIRPrimitive<FHIRString>
	) {
		self.init(linkId: linkId, type: type)
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
		self.maxLength = maxLength
		self.modifierExtension = modifierExtension
		self.prefix = prefix
		self.readOnly = readOnly
		self.repeats = repeats
		self.required = required
		self.text = text
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
		case initial
		case item
		case linkId; case _linkId
		case maxLength; case _maxLength
		case prefix; case _prefix
		case readOnly; case _readOnly
		case repeats; case _repeats
		case required; case _required
		case text; case _text
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.answerConstraint = try FHIRPrimitive<QuestionnaireAnswerConstraint>(from: _container, forKeyIfPresent: .answerConstraint, auxiliaryKey: ._answerConstraint)
		self.answerOption = try [QuestionnaireItemAnswerOption](from: _container, forKeyIfPresent: .answerOption)
		self.answerValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .answerValueSet, auxiliaryKey: ._answerValueSet)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.definition = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.disabledDisplay = try FHIRPrimitive<QuestionnaireItemDisabledDisplay>(from: _container, forKeyIfPresent: .disabledDisplay, auxiliaryKey: ._disabledDisplay)
		self.enableBehavior = try FHIRPrimitive<EnableWhenBehavior>(from: _container, forKeyIfPresent: .enableBehavior, auxiliaryKey: ._enableBehavior)
		self.enableWhen = try [QuestionnaireItemEnableWhen](from: _container, forKeyIfPresent: .enableWhen)
		self.initial = try [QuestionnaireItemInitial](from: _container, forKeyIfPresent: .initial)
		self.item = try [QuestionnaireItem](from: _container, forKeyIfPresent: .item)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .linkId, auxiliaryKey: ._linkId)
		self.maxLength = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .maxLength, auxiliaryKey: ._maxLength)
		self.prefix = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .prefix, auxiliaryKey: ._prefix)
		self.readOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .readOnly, auxiliaryKey: ._readOnly)
		self.repeats = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .repeats, auxiliaryKey: ._repeats)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try answerConstraint?.encode(on: &_container, forKey: .answerConstraint, auxiliaryKey: ._answerConstraint)
		try answerOption?.encode(on: &_container, forKey: .answerOption)
		try answerValueSet?.encode(on: &_container, forKey: .answerValueSet, auxiliaryKey: ._answerValueSet)
		try code?.encode(on: &_container, forKey: .code)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try disabledDisplay?.encode(on: &_container, forKey: .disabledDisplay, auxiliaryKey: ._disabledDisplay)
		try enableBehavior?.encode(on: &_container, forKey: .enableBehavior, auxiliaryKey: ._enableBehavior)
		try enableWhen?.encode(on: &_container, forKey: .enableWhen)
		try initial?.encode(on: &_container, forKey: .initial)
		try item?.encode(on: &_container, forKey: .item)
		try linkId.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try maxLength?.encode(on: &_container, forKey: .maxLength, auxiliaryKey: ._maxLength)
		try prefix?.encode(on: &_container, forKey: .prefix, auxiliaryKey: ._prefix)
		try readOnly?.encode(on: &_container, forKey: .readOnly, auxiliaryKey: ._readOnly)
		try repeats?.encode(on: &_container, forKey: .repeats, auxiliaryKey: ._repeats)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return answerConstraint == _other.answerConstraint
		    && answerOption == _other.answerOption
		    && answerValueSet == _other.answerValueSet
		    && code == _other.code
		    && definition == _other.definition
		    && disabledDisplay == _other.disabledDisplay
		    && enableBehavior == _other.enableBehavior
		    && enableWhen == _other.enableWhen
		    && initial == _other.initial
		    && item == _other.item
		    && linkId == _other.linkId
		    && maxLength == _other.maxLength
		    && prefix == _other.prefix
		    && readOnly == _other.readOnly
		    && repeats == _other.repeats
		    && required == _other.required
		    && text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(answerConstraint)
		hasher.combine(answerOption)
		hasher.combine(answerValueSet)
		hasher.combine(code)
		hasher.combine(definition)
		hasher.combine(disabledDisplay)
		hasher.combine(enableBehavior)
		hasher.combine(enableWhen)
		hasher.combine(initial)
		hasher.combine(item)
		hasher.combine(linkId)
		hasher.combine(maxLength)
		hasher.combine(prefix)
		hasher.combine(readOnly)
		hasher.combine(repeats)
		hasher.combine(required)
		hasher.combine(text)
		hasher.combine(type)
	}
}

/**
 Permitted answer.
 
 One of the permitted answers for the question.
 */
open class QuestionnaireItemAnswerOption: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Answer value
	/// One of `value[x]`
	public var value: ValueX
	
	/// Whether option is selected by default
	public var initialSelected: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(value: ValueX) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initialSelected: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.initialSelected = initialSelected
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case initialSelected; case _initialSelected
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDate) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueCoding, CodingKeys.valueDate, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueInteger, CodingKeys.valueQuantity, CodingKeys.valueReference, CodingKeys.valueString, CodingKeys.valueTime, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.initialSelected = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .initialSelected, auxiliaryKey: ._initialSelected)
		var _t_value: ValueX? = nil
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
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try initialSelected?.encode(on: &_container, forKey: .initialSelected, auxiliaryKey: ._initialSelected)
		
			switch value {
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireItemAnswerOption else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return initialSelected == _other.initialSelected
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(initialSelected)
		hasher.combine(value)
	}
}

/**
 Only allow data when.
 
 A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the
 specified condition is true.
 */
open class QuestionnaireItemEnableWhen: BackboneElement {
	
	/// All possible types for "answer[x]"
	public enum AnswerX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// The linkId of question that determines whether item is enabled/disabled
	public var question: FHIRPrimitive<FHIRString>
	
	/// Specifies the criteria by which the question is enabled.
	public var `operator`: FHIRPrimitive<QuestionnaireItemOperator>
	
	/// Value for question comparison based on operator
	/// One of `answer[x]`
	public var answer: AnswerX
	
	/// Designated initializer taking all required properties
	public init(answer: AnswerX, `operator`: FHIRPrimitive<QuestionnaireItemOperator>, question: FHIRPrimitive<FHIRString>) {
		self.answer = answer
		self.`operator` = `operator`
		self.question = question
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		answer: AnswerX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		`operator`: FHIRPrimitive<QuestionnaireItemOperator>,
		question: FHIRPrimitive<FHIRString>
	) {
		self.init(answer: answer, operator: `operator`, question: question)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answerAttachment
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
		case answerUri; case _answerUri
		case `operator` = "operator"; case _operator = "_operator"
		case question; case _question
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.answerAttachment) || _container.contains(CodingKeys.answerBoolean) || _container.contains(CodingKeys.answerCoding) || _container.contains(CodingKeys.answerDate) || _container.contains(CodingKeys.answerDateTime) || _container.contains(CodingKeys.answerDecimal) || _container.contains(CodingKeys.answerInteger) || _container.contains(CodingKeys.answerQuantity) || _container.contains(CodingKeys.answerReference) || _container.contains(CodingKeys.answerString) || _container.contains(CodingKeys.answerTime) || _container.contains(CodingKeys.answerUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.answerAttachment, CodingKeys.answerBoolean, CodingKeys.answerCoding, CodingKeys.answerDate, CodingKeys.answerDateTime, CodingKeys.answerDecimal, CodingKeys.answerInteger, CodingKeys.answerQuantity, CodingKeys.answerReference, CodingKeys.answerString, CodingKeys.answerTime, CodingKeys.answerUri], debugDescription: "Must have at least one value for \"answer\" but have none"))
		}
		
		// Decode all our properties
		var _t_answer: AnswerX? = nil
		if let answerBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .answerBoolean, auxiliaryKey: ._answerBoolean) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerBoolean, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .boolean(answerBoolean)
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
		if let answerTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .answerTime, auxiliaryKey: ._answerTime) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerTime, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .time(answerTime)
		}
		if let answerString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .answerString, auxiliaryKey: ._answerString) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerString, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .string(answerString)
		}
		if let answerCoding = try Coding(from: _container, forKeyIfPresent: .answerCoding) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerCoding, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .coding(answerCoding)
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
		if let answerUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .answerUri, auxiliaryKey: ._answerUri) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerUri, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .uri(answerUri)
		}
		if let answerAttachment = try Attachment(from: _container, forKeyIfPresent: .answerAttachment) {
			if _t_answer != nil {
				throw DecodingError.dataCorruptedError(forKey: .answerAttachment, in: _container, debugDescription: "More than one value provided for \"answer\"")
			}
			_t_answer = .attachment(answerAttachment)
		}
		self.answer = _t_answer!
		self.`operator` = try FHIRPrimitive<QuestionnaireItemOperator>(from: _container, forKey: .`operator`, auxiliaryKey: ._operator)
		self.question = try FHIRPrimitive<FHIRString>(from: _container, forKey: .question, auxiliaryKey: ._question)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch answer {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .answerBoolean, auxiliaryKey: ._answerBoolean)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .answerDecimal, auxiliaryKey: ._answerDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .answerInteger, auxiliaryKey: ._answerInteger)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .answerDate, auxiliaryKey: ._answerDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .answerDateTime, auxiliaryKey: ._answerDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .answerTime, auxiliaryKey: ._answerTime)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .answerString, auxiliaryKey: ._answerString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .answerCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .answerQuantity)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .answerReference)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .answerUri, auxiliaryKey: ._answerUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .answerAttachment)
			}
		
		try `operator`.encode(on: &_container, forKey: .`operator`, auxiliaryKey: ._operator)
		try question.encode(on: &_container, forKey: .question, auxiliaryKey: ._question)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireItemEnableWhen else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return answer == _other.answer
		    && `operator` == _other.`operator`
		    && question == _other.question
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(answer)
		hasher.combine(`operator`)
		hasher.combine(question)
	}
}

/**
 Initial value(s) when item is first rendered.
 
 One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user
 input.
 */
open class QuestionnaireItemInitial: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Actual value for initializing the question
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(value: ValueX) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDate) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAttachment, CodingKeys.valueBoolean, CodingKeys.valueCoding, CodingKeys.valueDate, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueInteger, CodingKeys.valueQuantity, CodingKeys.valueReference, CodingKeys.valueString, CodingKeys.valueTime, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch value {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? QuestionnaireItemInitial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(value)
	}
}
