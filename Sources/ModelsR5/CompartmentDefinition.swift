//
//  CompartmentDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/CompartmentDefinition)
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
 Compartment Definition for a resource.
 
 A compartment definition that defines how resources are accessed on a server.
 */
public struct CompartmentDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .compartmentDefinition
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Which compartment this definition describes.
	public var code: FHIRPrimitive<CompartmentType>
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the compartment definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this compartment definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this compartment definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// How a resource is related to the compartment
	public var resource: [CompartmentDefinitionResource]?
	
	/// Whether the search syntax is supported
	public var search: FHIRPrimitive<FHIRBool>
	
	/// The status of this compartment definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this compartment definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Canonical identifier for this compartment definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the compartment definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<CompartmentType>,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		resource: [CompartmentDefinitionResource]? = nil,
		search: FHIRPrimitive<FHIRBool>,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.code = code
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.resource = resource
		self.search = search
		self.status = status
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
		case code; case _code
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case resource
		case search; case _search
		case status; case _status
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
		self.code = try FHIRPrimitive<CompartmentType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.resource = try [CompartmentDefinitionResource](from: _container, forKeyIfPresent: .resource)
		self.search = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .search, auxiliaryKey: ._search)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
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
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try resource?.encode(on: &_container, forKey: .resource)
		try search.encode(on: &_container, forKey: .search, auxiliaryKey: ._search)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
 How a resource is related to the compartment.
 
 Information about how a resource is related to the compartment.
 */
public struct CompartmentDefinitionResource: BackboneElement {
	
	/// The name of a resource supported by the server.
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
	public var code: FHIRPrimitive<ResourceType>
	
	/// Additional documentation about the resource and compartment
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Search Param for interpreting $everything.end
	public var endParam: FHIRPrimitive<FHIRURI>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Search Parameter Name, or chained parameters
	public var param: [FHIRPrimitive<FHIRString>]?
	
	/// Search Param for interpreting $everything.start
	public var startParam: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<ResourceType>,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		endParam: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		param: [FHIRPrimitive<FHIRString>]? = nil,
		startParam: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.code = code
		self.documentation = documentation
		self.endParam = endParam
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.param = param
		self.startParam = startParam
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case documentation; case _documentation
		case endParam; case _endParam
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case param; case _param
		case startParam; case _startParam
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<ResourceType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.endParam = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .endParam, auxiliaryKey: ._endParam)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.param = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .param, auxiliaryKey: ._param)
		self.startParam = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .startParam, auxiliaryKey: ._startParam)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try endParam?.encode(on: &_container, forKey: .endParam, auxiliaryKey: ._endParam)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try param?.encode(on: &_container, forKey: .param, auxiliaryKey: ._param)
		try startParam?.encode(on: &_container, forKey: .startParam, auxiliaryKey: ._startParam)
	}
}
