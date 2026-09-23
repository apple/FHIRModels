//
//  OperationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/OperationDefinition)
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
 Definition of an operation or a named query.
 
 A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 interaction).
 */
public struct OperationDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .operationDefinition
	
	/// Marks this as a profile of the base
	public var base: Reference?
	
	/// Name used to invoke the operation
	public var code: FHIRPrimitive<FHIRString>
	
	/// Contact details of the publisher
	public var contact: [OperationDefinitionContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date for this version of the operation definition
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the operation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Whether content is unchanged by operation
	public var idempotent: FHIRPrimitive<FHIRBool>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Invoke on an instance?
	public var instance: FHIRPrimitive<FHIRBool>
	
	/// Whether this is an operation or a named query.
	/// Restricted to: ['operation', 'query']
	public var kind: FHIRPrimitive<OperationKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this operation
	public var name: FHIRPrimitive<FHIRString>
	
	/// Additional information about use
	public var notes: FHIRPrimitive<FHIRString>?
	
	/// Parameters for the operation/query
	public var parameter: [OperationDefinitionParameter]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why is this needed?
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// The status of the profile.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Invoke at the system level?
	public var system: FHIRPrimitive<FHIRBool>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Indicates whether this operation or named query can be invoked at the resource type level for any given resource
	/// type level (e.g. without needing to choose a resource type for the context).
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
	public var type: [FHIRPrimitive<ResourceType>]?
	
	/// Logical URL to reference this operation definition
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Logical id for this version of the operation definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		base: Reference? = nil,
		code: FHIRPrimitive<FHIRString>,
		contact: [OperationDefinitionContact]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		idempotent: FHIRPrimitive<FHIRBool>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instance: FHIRPrimitive<FHIRBool>,
		kind: FHIRPrimitive<OperationKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		notes: FHIRPrimitive<FHIRString>? = nil,
		parameter: [OperationDefinitionParameter]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		system: FHIRPrimitive<FHIRBool>,
		text: Narrative? = nil,
		type: [FHIRPrimitive<ResourceType>]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.base = base
		self.code = code
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.idempotent = idempotent
		self.implicitRules = implicitRules
		self.instance = instance
		self.kind = kind
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.notes = notes
		self.parameter = parameter
		self.publisher = publisher
		self.requirements = requirements
		self.status = status
		self.system = system
		self.text = text
		self.type = type
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case base
		case code; case _code
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case idempotent; case _idempotent
		case implicitRules; case _implicitRules
		case instance; case _instance
		case kind; case _kind
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case notes; case _notes
		case parameter
		case publisher; case _publisher
		case requirements; case _requirements
		case status; case _status
		case system; case _system
		case text
		case type; case _type
		case url; case _url
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.base = try Reference(from: _container, forKeyIfPresent: .base)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.contact = try [OperationDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.idempotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .idempotent, auxiliaryKey: ._idempotent)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instance = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .instance, auxiliaryKey: ._instance)
		self.kind = try FHIRPrimitive<OperationKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.notes = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		self.parameter = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .parameter)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.system = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try base?.encode(on: &_container, forKey: .base)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try idempotent?.encode(on: &_container, forKey: .idempotent, auxiliaryKey: ._idempotent)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instance.encode(on: &_container, forKey: .instance, auxiliaryKey: ._instance)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public struct OperationDefinitionContact: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
	}
}

/**
 Parameters for the operation/query.
 
 The parameters for the operation/query.
 */
public struct OperationDefinitionParameter: BackboneElement {
	
	/// ValueSet details if this is coded
	public var binding: OperationDefinitionParameterBinding?
	
	/// Description of meaning/use
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Maximum Cardinality (a number or *)
	public var max: FHIRPrimitive<FHIRString>
	
	/// Minimum Cardinality
	public var min: FHIRPrimitive<FHIRInteger>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name in Parameters.parameter.name or in URL
	public var name: FHIRPrimitive<FHIRString>
	
	/// Parts of a Tuple Parameter
	public var part: [OperationDefinitionParameter]?
	
	/// Profile on the type
	public var profile: Reference?
	
	/// What type this parameter has
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Whether this is an input or an output parameter.
	/// Restricted to: ['in', 'out']
	public var use: FHIRPrimitive<OperationParameterUse>
	
	/// Designated initializer
	public init(
		binding: OperationDefinitionParameterBinding? = nil,
		documentation: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>,
		min: FHIRPrimitive<FHIRInteger>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		part: [OperationDefinitionParameter]? = nil,
		profile: Reference? = nil,
		type: FHIRPrimitive<FHIRString>? = nil,
		use: FHIRPrimitive<OperationParameterUse>
	) {
		self.binding = binding
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.max = max
		self.min = min
		self.modifierExtension = modifierExtension
		self.name = name
		self.part = part
		self.profile = profile
		self.type = type
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case binding
		case documentation; case _documentation
		case `extension` = "extension"
		case id; case _id
		case max; case _max
		case min; case _min
		case modifierExtension
		case name; case _name
		case part
		case profile
		case type; case _type
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.binding = try OperationDefinitionParameterBinding(from: _container, forKeyIfPresent: .binding)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKey: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.part = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .part)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<OperationParameterUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try binding?.encode(on: &_container, forKey: .binding)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try max.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try part?.encode(on: &_container, forKey: .part)
		try profile?.encode(on: &_container, forKey: .profile)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 ValueSet details if this is coded.
 
 Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
 */
public struct OperationDefinitionParameterBinding: BackboneElement {
	
	/// All possible types for "valueSet[x]"
	public enum ValueSetX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	/// Restricted to: ['required', 'extensible', 'preferred', 'example']
	public var strength: FHIRPrimitive<BindingStrength>
	
	/// Source of value set
	/// One of `valueSet[x]`
	public var valueSet: ValueSetX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		strength: FHIRPrimitive<BindingStrength>,
		valueSet: ValueSetX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case strength; case _strength
		case valueSetReference
		case valueSetUri; case _valueSetUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try FHIRPrimitive<BindingStrength>(from: _container, forKey: .strength, auxiliaryKey: ._strength)
		self.valueSet = try Self._decodeValueSet(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try strength.encode(on: &_container, forKey: .strength, auxiliaryKey: ._strength)
		
		switch valueSet {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueSetReference)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueSetUri, auxiliaryKey: ._valueSetUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValueSet(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueSetX {
		var _t_valueSet: ValueSetX? = nil
		if let valueSetReference = try Reference(from: _container, forKeyIfPresent: .valueSetReference) {
			_t_valueSet = .reference(valueSetReference)
		}
		if let valueSetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueSetUri, auxiliaryKey: ._valueSetUri) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetUri, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .uri(valueSetUri)
		}
		guard let _t_valueSet else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueSetUri)
			throw DecodingError.valueNotFound(ValueSetX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"valueSet\" but have none"))
		}
		return _t_valueSet
	}
}
