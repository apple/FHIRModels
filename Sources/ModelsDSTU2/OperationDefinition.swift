//
//  OperationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/OperationDefinition)
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
 Definition of an operation or a named query.
 
 A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 interaction).
 */
open class OperationDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .operationDefinition }
	
	/// Logical URL to reference this operation definition
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Logical id for this version of the operation definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Informal name for this operation
	public var name: FHIRPrimitive<FHIRString>
	
	/// The status of the profile.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Whether this is an operation or a named query.
	/// Restricted to: ['operation', 'query']
	public var kind: FHIRPrimitive<OperationKind>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [OperationDefinitionContact]?
	
	/// Date for this version of the operation definition
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the operation
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Why is this needed?
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Whether content is unchanged by operation
	public var idempotent: FHIRPrimitive<FHIRBool>?
	
	/// Name used to invoke the operation
	public var code: FHIRPrimitive<FHIRString>
	
	/// Additional information about use
	public var notes: FHIRPrimitive<FHIRString>?
	
	/// Marks this as a profile of the base
	public var base: Reference?
	
	/// Invoke at the system level?
	public var system: FHIRPrimitive<FHIRBool>
	
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
	
	/// Invoke on an instance?
	public var instance: FHIRPrimitive<FHIRBool>
	
	/// Parameters for the operation/query
	public var parameter: [OperationDefinitionParameter]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<FHIRString>, instance: FHIRPrimitive<FHIRBool>, kind: FHIRPrimitive<OperationKind>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<ConformanceResourceStatus>, system: FHIRPrimitive<FHIRBool>) {
		self.code = code
		self.instance = instance
		self.kind = kind
		self.name = name
		self.status = status
		self.system = system
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(code: code, instance: instance, kind: kind, name: name, status: status, system: system)
		self.base = base
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.idempotent = idempotent
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notes = notes
		self.parameter = parameter
		self.publisher = publisher
		self.requirements = requirements
		self.text = text
		self.type = type
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case base
		case code; case _code
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case idempotent; case _idempotent
		case instance; case _instance
		case kind; case _kind
		case name; case _name
		case notes; case _notes
		case parameter
		case publisher; case _publisher
		case requirements; case _requirements
		case status; case _status
		case system; case _system
		case type; case _type
		case url; case _url
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.base = try Reference(from: _container, forKeyIfPresent: .base)
		self.code = try FHIRPrimitive<FHIRString>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.contact = try [OperationDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.idempotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .idempotent, auxiliaryKey: ._idempotent)
		self.instance = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .instance, auxiliaryKey: ._instance)
		self.kind = try FHIRPrimitive<OperationKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.notes = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		self.parameter = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .parameter)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.system = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .system, auxiliaryKey: ._system)
		self.type = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try base?.encode(on: &_container, forKey: .base)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try idempotent?.encode(on: &_container, forKey: .idempotent, auxiliaryKey: ._idempotent)
		try instance.encode(on: &_container, forKey: .instance, auxiliaryKey: ._instance)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try system.encode(on: &_container, forKey: .system, auxiliaryKey: ._system)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return base == _other.base
		    && code == _other.code
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && idempotent == _other.idempotent
		    && instance == _other.instance
		    && kind == _other.kind
		    && name == _other.name
		    && notes == _other.notes
		    && parameter == _other.parameter
		    && publisher == _other.publisher
		    && requirements == _other.requirements
		    && status == _other.status
		    && system == _other.system
		    && type == _other.type
		    && url == _other.url
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(base)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(idempotent)
		hasher.combine(instance)
		hasher.combine(kind)
		hasher.combine(name)
		hasher.combine(notes)
		hasher.combine(parameter)
		hasher.combine(publisher)
		hasher.combine(requirements)
		hasher.combine(status)
		hasher.combine(system)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class OperationDefinitionContact: BackboneElement {
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(telecom)
	}
}

/**
 Parameters for the operation/query.
 
 The parameters for the operation/query.
 */
open class OperationDefinitionParameter: BackboneElement {
	
	/// Name in Parameters.parameter.name or in URL
	public var name: FHIRPrimitive<FHIRString>
	
	/// Whether this is an input or an output parameter.
	/// Restricted to: ['in', 'out']
	public var use: FHIRPrimitive<OperationParameterUse>
	
	/// Minimum Cardinality
	public var min: FHIRPrimitive<FHIRInteger>
	
	/// Maximum Cardinality (a number or *)
	public var max: FHIRPrimitive<FHIRString>
	
	/// Description of meaning/use
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// What type this parameter has
	public var type: FHIRPrimitive<FHIRString>?
	
	/// Profile on the type
	public var profile: Reference?
	
	/// ValueSet details if this is coded
	public var binding: OperationDefinitionParameterBinding?
	
	/// Parts of a Tuple Parameter
	public var part: [OperationDefinitionParameter]?
	
	/// Designated initializer taking all required properties
	public init(max: FHIRPrimitive<FHIRString>, min: FHIRPrimitive<FHIRInteger>, name: FHIRPrimitive<FHIRString>, use: FHIRPrimitive<OperationParameterUse>) {
		self.max = max
		self.min = min
		self.name = name
		self.use = use
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							use: FHIRPrimitive<OperationParameterUse>)
	{
		self.init(max: max, min: min, name: name, use: use)
		self.binding = binding
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.profile = profile
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case binding
		case documentation; case _documentation
		case max; case _max
		case min; case _min
		case name; case _name
		case part
		case profile
		case type; case _type
		case use; case _use
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.binding = try OperationDefinitionParameterBinding(from: _container, forKeyIfPresent: .binding)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKey: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.part = try [OperationDefinitionParameter](from: _container, forKeyIfPresent: .part)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<OperationParameterUse>(from: _container, forKey: .use, auxiliaryKey: ._use)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try binding?.encode(on: &_container, forKey: .binding)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try max.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try part?.encode(on: &_container, forKey: .part)
		try profile?.encode(on: &_container, forKey: .profile)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return binding == _other.binding
		    && documentation == _other.documentation
		    && max == _other.max
		    && min == _other.min
		    && name == _other.name
		    && part == _other.part
		    && profile == _other.profile
		    && type == _other.type
		    && use == _other.use
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(binding)
		hasher.combine(documentation)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(name)
		hasher.combine(part)
		hasher.combine(profile)
		hasher.combine(type)
		hasher.combine(use)
	}
}

/**
 ValueSet details if this is coded.
 
 Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
 */
open class OperationDefinitionParameterBinding: BackboneElement {
	
	/// All possible types for "valueSet[x]"
	public enum ValueSetX: Hashable {
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	/// Restricted to: ['required', 'extensible', 'preferred', 'example']
	public var strength: FHIRPrimitive<BindingStrength>
	
	/// Source of value set
	/// One of `valueSet[x]`
	public var valueSet: ValueSetX
	
	/// Designated initializer taking all required properties
	public init(strength: FHIRPrimitive<BindingStrength>, valueSet: ValueSetX) {
		self.strength = strength
		self.valueSet = valueSet
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							strength: FHIRPrimitive<BindingStrength>,
							valueSet: ValueSetX)
	{
		self.init(strength: strength, valueSet: valueSet)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case strength; case _strength
		case valueSetReference
		case valueSetUri; case _valueSetUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueSetReference) || _container.contains(CodingKeys.valueSetUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueSetReference, CodingKeys.valueSetUri], debugDescription: "Must have at least one value for \"valueSet\" but have none"))
		}
		
		// Decode all our properties
		self.strength = try FHIRPrimitive<BindingStrength>(from: _container, forKey: .strength, auxiliaryKey: ._strength)
		var _t_valueSet: ValueSetX? = nil
		if let valueSetUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueSetUri, auxiliaryKey: ._valueSetUri) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetUri, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .uri(valueSetUri)
		}
		if let valueSetReference = try Reference(from: _container, forKeyIfPresent: .valueSetReference) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetReference, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .reference(valueSetReference)
		}
		self.valueSet = _t_valueSet!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try strength.encode(on: &_container, forKey: .strength, auxiliaryKey: ._strength)
		
			switch valueSet {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueSetUri, auxiliaryKey: ._valueSetUri)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueSetReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationDefinitionParameterBinding else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return strength == _other.strength
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(strength)
		hasher.combine(valueSet)
	}
}
