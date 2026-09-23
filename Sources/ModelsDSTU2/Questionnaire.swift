//
//  Questionnaire.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Questionnaire)
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
 
 A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped into
 coherent subsets, corresponding to the structure of the grouping of the underlying questions.
 */
public struct Questionnaire: DomainResource {
	
	public static let resourceType: ResourceType = .questionnaire
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date this version was authored
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Grouped questions
	public var group: QuestionnaireGroup
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifiers for this questionnaire
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Organization/individual who designed the questionnaire
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// The lifecycle status of the questionnaire as a whole.
	/// Restricted to: ['draft', 'published', 'retired']
	public var status: FHIRPrimitive<QuestionnaireStatus>
	
	/// Identifies the types of subjects that can be the subject of the questionnaire.
	/// Restricted to: ['Account', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic',
	/// 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'Communication',
	/// 'CommunicationRequest', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Contract', 'Coverage',
	/// 'DataElement', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest',
	/// 'DeviceUseStatement', 'DiagnosticOrder', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference',
	/// 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'EnrollmentRequest',
	/// 'EnrollmentResponse', 'EpisodeOfCare', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group',
	/// 'HealthcareService', 'ImagingObjectSelection', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation',
	/// 'ImplementationGuide', 'List', 'Location', 'Media', 'Medication', 'MedicationAdministration',
	/// 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'NamingSystem',
	/// 'NutritionOrder', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Order', 'OrderResponse',
	/// 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'Practitioner',
	/// 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire',
	/// 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'Resource', 'RiskAssessment', 'Schedule',
	/// 'SearchParameter', 'Slot', 'Specimen', 'StructureDefinition', 'Subscription', 'Substance', 'SupplyDelivery',
	/// 'SupplyRequest', 'TestScript', 'ValueSet', 'VisionPrescription']
	public var subjectType: [FHIRPrimitive<ResourceType>]?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical identifier for this version of Questionnaire
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		group: QuestionnaireGroup,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<QuestionnaireStatus>,
		subjectType: [FHIRPrimitive<ResourceType>]? = nil,
		telecom: [ContactPoint]? = nil,
		text: Narrative? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contained = contained
		self.date = date
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.status = status
		self.subjectType = subjectType
		self.telecom = telecom
		self.text = text
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case date; case _date
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case publisher; case _publisher
		case status; case _status
		case subjectType; case _subjectType
		case telecom
		case text
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try QuestionnaireGroup(from: _container, forKey: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.status = try FHIRPrimitive<QuestionnaireStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subjectType = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .subjectType, auxiliaryKey: ._subjectType)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subjectType?.encode(on: &_container, forKey: .subjectType, auxiliaryKey: ._subjectType)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Grouped questions.
 
 A collection of related questions (or further groupings of questions).
 */
public struct QuestionnaireGroup: BackboneElement {
	
	/// Concept that represents this section in a questionnaire
	public var concept: [Coding]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireGroup]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// To link questionnaire with questionnaire response
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Questions in this group
	public var question: [QuestionnaireGroupQuestion]?
	
	/// Whether the group may repeat
	public var repeats: FHIRPrimitive<FHIRBool>?
	
	/// Whether the group must be included in data results
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Additional text for the group
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Name to be displayed for group
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		concept: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		group: [QuestionnaireGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		question: [QuestionnaireGroupQuestion]? = nil,
		repeats: FHIRPrimitive<FHIRBool>? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		title: FHIRPrimitive<FHIRString>? = nil
	) {
		self.concept = concept
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.question = question
		self.repeats = repeats
		self.required = required
		self.text = text
		self.title = title
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concept
		case `extension` = "extension"
		case group
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case question
		case repeats; case _repeats
		case required; case _required
		case text; case _text
		case title; case _title
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.concept = try [Coding](from: _container, forKeyIfPresent: .concept)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [QuestionnaireGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.question = try [QuestionnaireGroupQuestion](from: _container, forKeyIfPresent: .question)
		self.repeats = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .repeats, auxiliaryKey: ._repeats)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try concept?.encode(on: &_container, forKey: .concept)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try question?.encode(on: &_container, forKey: .question)
		try repeats?.encode(on: &_container, forKey: .repeats, auxiliaryKey: ._repeats)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
	}
}

/**
 Questions in this group.
 
 Set of questions within this group. The order of questions within the group is relevant.
 */
public struct QuestionnaireGroupQuestion: BackboneElement {
	
	/// Concept that represents this question on a questionnaire
	public var concept: [Coding]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireGroup]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// To link questionnaire with questionnaire response
	public var linkId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Permitted answer
	public var option: [Coding]?
	
	/// Valueset containing permitted answers
	public var options: Reference?
	
	/// Whether the question  can have multiple answers
	public var repeats: FHIRPrimitive<FHIRBool>?
	
	/// Whether the question must be answered in data results
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Text of the question as it is shown to the user
	public var text: FHIRPrimitive<FHIRString>?
	
	/// The expected format of the answer, e.g. the type of input (string, integer) or whether a (multiple) choice is
	/// expected.
	/// Restricted to: ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'instant', 'time', 'string', 'text', 'url',
	/// 'choice', 'open-choice', 'attachment', 'reference', 'quantity']
	public var type: FHIRPrimitive<AnswerFormat>?
	
	/// Designated initializer
	public init(
		concept: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		group: [QuestionnaireGroup]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		option: [Coding]? = nil,
		options: Reference? = nil,
		repeats: FHIRPrimitive<FHIRBool>? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<AnswerFormat>? = nil
	) {
		self.concept = concept
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.option = option
		self.options = options
		self.repeats = repeats
		self.required = required
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case concept
		case `extension` = "extension"
		case group
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case option
		case options
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
		self.concept = try [Coding](from: _container, forKeyIfPresent: .concept)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [QuestionnaireGroup](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.option = try [Coding](from: _container, forKeyIfPresent: .option)
		self.options = try Reference(from: _container, forKeyIfPresent: .options)
		self.repeats = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .repeats, auxiliaryKey: ._repeats)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try FHIRPrimitive<AnswerFormat>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try concept?.encode(on: &_container, forKey: .concept)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try option?.encode(on: &_container, forKey: .option)
		try options?.encode(on: &_container, forKey: .options)
		try repeats?.encode(on: &_container, forKey: .repeats, auxiliaryKey: ._repeats)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
