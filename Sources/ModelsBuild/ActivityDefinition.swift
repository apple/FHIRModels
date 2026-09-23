//
//  ActivityDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition)
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
 The definition of a specific activity to be taken, independent of any particular patient or context.
 
 This resource allows for the definition of some activity to be performed, independent of a particular patient,
 practitioner, or other performance context.
 */
public struct ActivityDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .activityDefinition
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "product[x]"
	public enum ProductX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
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
		indirect case duration(Duration)
		indirect case range(Range)
		indirect case relativeTime(RelativeTime)
		indirect case timing(Timing)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When the activity definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Preconditions for service
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// What part of body to perform on
	public var bodySite: [CodeableConcept]?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the activity definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// True if the activity should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Detailed dosage instructions
	public var dosage: [Dosage]?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// When the activity definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the activity definition
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Indicates the level of authority/intentionality associated with the activity and where the request should fit
	/// into the workflow chain.
	public var intent: FHIRPrimitive<RequestIntent>?
	
	/// Jurisdiction of the authority that maintains the activity definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// A description of the kind of resource the activity definition is representing. For example, a MedicationRequest,
	/// a ServiceRequest, or a CommunicationRequest.
	/// Restricted to: ['Appointment', 'CarePlan', 'Claim', 'CommunicationRequest', 'CoverageEligibilityRequest',
	/// 'DeviceRequest', 'EnrollmentRequest', 'MedicationRequest', 'NutritionOrder', 'RequestOrchestration',
	/// 'ServiceRequest', 'Task', 'VisionPrescription']
	public var kind: FHIRPrimitive<ResourceType>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// When the activity definition was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Logic used by the activity definition
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Where it should happen
	public var location: CodeableReference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this activity definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// What observations are required to perform this action
	public var observationRequirement: [FHIRPrimitive<Canonical>]?
	
	/// What observations must be produced by this action
	public var observationResultRequirement: [FHIRPrimitive<Canonical>]?
	
	/// Who should participate in the action
	public var participant: [ActivityDefinitionParticipant]?
	
	/// Indicates how quickly the activity  should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// What's administered/supplied
	/// One of `product[x]`
	public var product: ProductX?
	
	/// What profile the resource needs to conform to
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this activity definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// How much is administered/consumed/supplied
	public var quantity: Quantity?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// What specimens are required to perform this action
	public var specimenRequirement: [FHIRPrimitive<Canonical>]?
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Type of individual the activity definition is intended for
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Subordinate title of the activity definition
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// When activity is to occur
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Name for this activity definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Transform to apply the template
	public var transform: FHIRPrimitive<Canonical>?
	
	/// Canonical identifier for this activity definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Describes the clinical usage of the activity definition
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the activity definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		asNeeded: AsNeededX? = nil,
		author: [ContactDetail]? = nil,
		bodySite: [CodeableConcept]? = nil,
		code: CodeableConcept? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		dosage: [Dosage]? = nil,
		dynamicValue: [ActivityDefinitionDynamicValue]? = nil,
		editor: [ContactDetail]? = nil,
		effectivePeriod: Period? = nil,
		endorser: [ContactDetail]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		intent: FHIRPrimitive<RequestIntent>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		kind: FHIRPrimitive<ResourceType>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		library: [FHIRPrimitive<Canonical>]? = nil,
		location: CodeableReference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		observationRequirement: [FHIRPrimitive<Canonical>]? = nil,
		observationResultRequirement: [FHIRPrimitive<Canonical>]? = nil,
		participant: [ActivityDefinitionParticipant]? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		product: ProductX? = nil,
		profile: FHIRPrimitive<Canonical>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity? = nil,
		relatedArtifact: [RelatedArtifact]? = nil,
		reviewer: [ContactDetail]? = nil,
		specimenRequirement: [FHIRPrimitive<Canonical>]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: SubjectX? = nil,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		timing: TimingX? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: [CodeableConcept]? = nil,
		transform: FHIRPrimitive<Canonical>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.asNeeded = asNeeded
		self.author = author
		self.bodySite = bodySite
		self.code = code
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.doNotPerform = doNotPerform
		self.dosage = dosage
		self.dynamicValue = dynamicValue
		self.editor = editor
		self.effectivePeriod = effectivePeriod
		self.endorser = endorser
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.intent = intent
		self.jurisdiction = jurisdiction
		self.kind = kind
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.library = library
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.observationRequirement = observationRequirement
		self.observationResultRequirement = observationResultRequirement
		self.participant = participant
		self.priority = priority
		self.product = product
		self.profile = profile
		self.publisher = publisher
		self.purpose = purpose
		self.quantity = quantity
		self.relatedArtifact = relatedArtifact
		self.reviewer = reviewer
		self.specimenRequirement = specimenRequirement
		self.status = status
		self.subject = subject
		self.subtitle = subtitle
		self.text = text
		self.timing = timing
		self.title = title
		self.topic = topic
		self.transform = transform
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case author
		case bodySite
		case code
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case doNotPerform; case _doNotPerform
		case dosage
		case dynamicValue
		case editor
		case effectivePeriod
		case endorser
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case intent; case _intent
		case jurisdiction
		case kind; case _kind
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case library; case _library
		case location
		case meta
		case modifierExtension
		case name; case _name
		case observationRequirement; case _observationRequirement
		case observationResultRequirement; case _observationResultRequirement
		case participant
		case priority; case _priority
		case productCodeableConcept
		case productReference
		case profile; case _profile
		case publisher; case _publisher
		case purpose; case _purpose
		case quantity
		case relatedArtifact
		case reviewer
		case specimenRequirement; case _specimenRequirement
		case status; case _status
		case subjectCanonical; case _subjectCanonical
		case subjectCodeableConcept
		case subjectReference
		case subtitle; case _subtitle
		case text
		case timingAge
		case timingDuration
		case timingRange
		case timingRelativeTime
		case timingTiming
		case title; case _title
		case topic
		case transform; case _transform
		case url; case _url
		case usage; case _usage
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
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.dosage = try [Dosage](from: _container, forKeyIfPresent: .dosage)
		self.dynamicValue = try [ActivityDefinitionDynamicValue](from: _container, forKeyIfPresent: .dynamicValue)
		self.editor = try [ContactDetail](from: _container, forKeyIfPresent: .editor)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.endorser = try [ContactDetail](from: _container, forKeyIfPresent: .endorser)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKeyIfPresent: .intent, auxiliaryKey: ._intent)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.location = try CodeableReference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.observationRequirement = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .observationRequirement, auxiliaryKey: ._observationRequirement)
		self.observationResultRequirement = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .observationResultRequirement, auxiliaryKey: ._observationResultRequirement)
		self.participant = try [ActivityDefinitionParticipant](from: _container, forKeyIfPresent: .participant)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.product = try Self._decodeProduct(from: _container)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.specimenRequirement = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .specimenRequirement, auxiliaryKey: ._specimenRequirement)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Self._decodeSubject(from: _container)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timing = try Self._decodeTiming(from: _container)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.transform = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
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
		if let _enum = asNeeded {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
		}
		}
		try author?.encode(on: &_container, forKey: .author)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try dynamicValue?.encode(on: &_container, forKey: .dynamicValue)
		try editor?.encode(on: &_container, forKey: .editor)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try endorser?.encode(on: &_container, forKey: .endorser)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try intent?.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind?.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try observationRequirement?.encode(on: &_container, forKey: .observationRequirement, auxiliaryKey: ._observationRequirement)
		try observationResultRequirement?.encode(on: &_container, forKey: .observationResultRequirement, auxiliaryKey: ._observationResultRequirement)
		try participant?.encode(on: &_container, forKey: .participant)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		if let _enum = product {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .productCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .productReference)
		}
		}
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try reviewer?.encode(on: &_container, forKey: .reviewer)
		try specimenRequirement?.encode(on: &_container, forKey: .specimenRequirement, auxiliaryKey: ._specimenRequirement)
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
		if let _enum = timing {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .timingAge)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .timingDuration)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .timingRange)
		case .relativeTime(let _value):
			try _value.encode(on: &_container, forKey: .timingRelativeTime)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .timingTiming)
		}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try transform?.encode(on: &_container, forKey: .transform, auxiliaryKey: ._transform)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
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
	
	private static func _decodeAsNeeded(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AsNeededX? {
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		return _t_asNeeded
	}
	
	private static func _decodeProduct(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ProductX? {
		var _t_product: ProductX? = nil
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			_t_product = .codeableConcept(productCodeableConcept)
		}
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		return _t_product
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
 Dynamic aspects of the definition.
 
 Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the
 dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an
 expression that calculated the weight, and the path on the request resource that would contain the result.
 */
public struct ActivityDefinitionDynamicValue: BackboneElement {
	
	/// An expression that provides the dynamic value for the customization
	public var expression: Expression
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The path to the element to be set dynamically
	public var path: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		expression: Expression,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>
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
		self.expression = try Expression(from: _container, forKey: .expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expression.encode(on: &_container, forKey: .expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
	}
}

/**
 Who should participate in the action.
 
 Indicates who should participate in performing the action described.
 */
public struct ActivityDefinitionParticipant: BackboneElement {
	
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
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil,
		type: FHIRPrimitive<ActionParticipantType>? = nil,
		typeCanonical: FHIRPrimitive<Canonical>? = nil,
		typeReference: Reference? = nil
	) {
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try typeCanonical?.encode(on: &_container, forKey: .typeCanonical, auxiliaryKey: ._typeCanonical)
		try typeReference?.encode(on: &_container, forKey: .typeReference)
	}
}
