//
//  ActivityDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition)
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
 The definition of a specific activity to be taken, independent of any particular patient or context.
 
 This resource allows for the definition of some activity to be performed, independent of a particular patient,
 practitioner, or other performance context.
 */
open class ActivityDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .activityDefinition }
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "product[x]"
	public enum ProductX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case age(Age)
		case duration(Duration)
		case range(Range)
		case timing(Timing)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this activity definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the activity definition
	public var identifier: [Identifier]?
	
	/// Business version of the activity definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this activity definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this activity definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Subordinate title of the activity definition
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Type of individual the activity definition is intended for
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the activity definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for activity definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this activity definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Describes the clinical usage of the activity definition
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the activity definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the activity definition was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the activity definition is expected to be used
	public var effectivePeriod: Period?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// Who authored the content
	public var author: [ContactDetail]?
	
	/// Who edited the content
	public var editor: [ContactDetail]?
	
	/// Who reviewed the content
	public var reviewer: [ContactDetail]?
	
	/// Who endorsed the content
	public var endorser: [ContactDetail]?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Logic used by the activity definition
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// A description of the kind of resource the activity definition is representing. For example, a MedicationRequest,
	/// a ServiceRequest, or a CommunicationRequest.
	/// Restricted to: ['Appointment', 'AppointmentResponse', 'CarePlan', 'Claim', 'CommunicationRequest',
	/// 'CoverageEligibilityRequest', 'DeviceRequest', 'EnrollmentRequest', 'ImmunizationRecommendation',
	/// 'MedicationRequest', 'NutritionOrder', 'RequestOrchestration', 'ServiceRequest', 'SupplyRequest', 'Task',
	/// 'Transport', 'VisionPrescription']
	public var kind: FHIRPrimitive<ResourceType>?
	
	/// What profile the resource needs to conform to
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
	public var intent: FHIRPrimitive<FHIRString>?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// True if the activity should not be performed
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// When activity is to occur
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Preconditions for service
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Where it should happen
	public var location: CodeableReference?
	
	/// Who should participate in the action
	public var participant: [ActivityDefinitionParticipant]?
	
	/// What's administered/supplied
	/// One of `product[x]`
	public var product: ProductX?
	
	/// How much is administered/consumed/supplied
	public var quantity: Quantity?
	
	/// Detailed dosage instructions
	public var dosage: [Dosage]?
	
	/// What part of body to perform on
	public var bodySite: [CodeableConcept]?
	
	/// What specimens are required to perform this action
	public var specimenRequirement: [FHIRPrimitive<Canonical>]?
	
	/// What observations are required to perform this action
	public var observationRequirement: [FHIRPrimitive<Canonical>]?
	
	/// What observations must be produced by this action
	public var observationResultRequirement: [FHIRPrimitive<Canonical>]?
	
	/// Transform to apply the template
	public var transform: FHIRPrimitive<Canonical>?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		intent: FHIRPrimitive<FHIRString>? = nil,
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
		priority: FHIRPrimitive<FHIRString>? = nil,
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
		self.init(status: status)
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
		case approvalDate; case _approvalDate
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case author
		case bodySite
		case code
		case contact
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
		case identifier
		case intent; case _intent
		case jurisdiction
		case kind; case _kind
		case lastReviewDate; case _lastReviewDate
		case library; case _library
		case location
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
		case timingAge
		case timingDuration
		case timingRange
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededBoolean, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		self.asNeeded = _t_asNeeded
		self.author = try [ContactDetail](from: _container, forKeyIfPresent: .author)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
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
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .intent, auxiliaryKey: ._intent)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .kind, auxiliaryKey: ._kind)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.location = try CodeableReference(from: _container, forKeyIfPresent: .location)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.observationRequirement = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .observationRequirement, auxiliaryKey: ._observationRequirement)
		self.observationResultRequirement = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .observationResultRequirement, auxiliaryKey: ._observationResultRequirement)
		self.participant = try [ActivityDefinitionParticipant](from: _container, forKeyIfPresent: .participant)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		var _t_product: ProductX? = nil
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productCodeableConcept, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .codeableConcept(productCodeableConcept)
		}
		self.product = _t_product
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.reviewer = try [ContactDetail](from: _container, forKeyIfPresent: .reviewer)
		self.specimenRequirement = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .specimenRequirement, auxiliaryKey: ._specimenRequirement)
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
		if let subjectCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .subjectCanonical, auxiliaryKey: ._subjectCanonical) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCanonical, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .canonical(subjectCanonical)
		}
		self.subject = _t_subject
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		var _t_timing: TimingX? = nil
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		if let timingAge = try Age(from: _container, forKeyIfPresent: .timingAge) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingAge, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .age(timingAge)
		}
		if let timingRange = try Range(from: _container, forKeyIfPresent: .timingRange) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingRange, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .range(timingRange)
		}
		if let timingDuration = try Duration(from: _container, forKeyIfPresent: .timingDuration) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDuration, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .duration(timingDuration)
		}
		self.timing = _t_timing
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.transform = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .transform, auxiliaryKey: ._transform)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
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
		try identifier?.encode(on: &_container, forKey: .identifier)
		try intent?.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind?.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try location?.encode(on: &_container, forKey: .location)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try observationRequirement?.encode(on: &_container, forKey: .observationRequirement, auxiliaryKey: ._observationRequirement)
		try observationResultRequirement?.encode(on: &_container, forKey: .observationResultRequirement, auxiliaryKey: ._observationResultRequirement)
		try participant?.encode(on: &_container, forKey: .participant)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		if let _enum = product {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .productReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .productCodeableConcept)
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
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .subjectReference)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .subjectCanonical, auxiliaryKey: ._subjectCanonical)
			}
		}
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		if let _enum = timing {
			switch _enum {
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .timingTiming)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .timingAge)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .timingRange)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .timingDuration)
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
		guard let _other = _other as? ActivityDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && asNeeded == _other.asNeeded
		    && author == _other.author
		    && bodySite == _other.bodySite
		    && code == _other.code
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && doNotPerform == _other.doNotPerform
		    && dosage == _other.dosage
		    && dynamicValue == _other.dynamicValue
		    && editor == _other.editor
		    && effectivePeriod == _other.effectivePeriod
		    && endorser == _other.endorser
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && intent == _other.intent
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && lastReviewDate == _other.lastReviewDate
		    && library == _other.library
		    && location == _other.location
		    && name == _other.name
		    && observationRequirement == _other.observationRequirement
		    && observationResultRequirement == _other.observationResultRequirement
		    && participant == _other.participant
		    && priority == _other.priority
		    && product == _other.product
		    && profile == _other.profile
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && quantity == _other.quantity
		    && relatedArtifact == _other.relatedArtifact
		    && reviewer == _other.reviewer
		    && specimenRequirement == _other.specimenRequirement
		    && status == _other.status
		    && subject == _other.subject
		    && subtitle == _other.subtitle
		    && timing == _other.timing
		    && title == _other.title
		    && topic == _other.topic
		    && transform == _other.transform
		    && url == _other.url
		    && usage == _other.usage
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(asNeeded)
		hasher.combine(author)
		hasher.combine(bodySite)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(doNotPerform)
		hasher.combine(dosage)
		hasher.combine(dynamicValue)
		hasher.combine(editor)
		hasher.combine(effectivePeriod)
		hasher.combine(endorser)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(intent)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(lastReviewDate)
		hasher.combine(library)
		hasher.combine(location)
		hasher.combine(name)
		hasher.combine(observationRequirement)
		hasher.combine(observationResultRequirement)
		hasher.combine(participant)
		hasher.combine(priority)
		hasher.combine(product)
		hasher.combine(profile)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(quantity)
		hasher.combine(relatedArtifact)
		hasher.combine(reviewer)
		hasher.combine(specimenRequirement)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(subtitle)
		hasher.combine(timing)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(transform)
		hasher.combine(url)
		hasher.combine(usage)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Dynamic aspects of the definition.
 
 Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the
 dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an
 expression that calculated the weight, and the path on the request resource that would contain the result.
 */
open class ActivityDefinitionDynamicValue: BackboneElement {
	
	/// The path to the element to be set dynamically
	public var path: FHIRPrimitive<FHIRString>
	
	/// An expression that provides the dynamic value for the customization
	public var expression: Expression
	
	/// Designated initializer taking all required properties
	public init(expression: Expression, path: FHIRPrimitive<FHIRString>) {
		self.expression = expression
		self.path = path
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		expression: Expression,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		path: FHIRPrimitive<FHIRString>
	) {
		self.init(expression: expression, path: path)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
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
		self.expression = try Expression(from: _container, forKey: .expression)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expression.encode(on: &_container, forKey: .expression)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ActivityDefinitionDynamicValue else {
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
open class ActivityDefinitionParticipant: BackboneElement {
	
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
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		try function?.encode(on: &_container, forKey: .function)
		try role?.encode(on: &_container, forKey: .role)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try typeCanonical?.encode(on: &_container, forKey: .typeCanonical, auxiliaryKey: ._typeCanonical)
		try typeReference?.encode(on: &_container, forKey: .typeReference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ActivityDefinitionParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return function == _other.function
		    && role == _other.role
		    && type == _other.type
		    && typeCanonical == _other.typeCanonical
		    && typeReference == _other.typeReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(function)
		hasher.combine(role)
		hasher.combine(type)
		hasher.combine(typeCanonical)
		hasher.combine(typeReference)
	}
}
