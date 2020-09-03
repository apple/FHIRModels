//
//  ConditionDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ConditionDefinition)
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
 A definition of a condition.
 
 A definition of a condition and information relevant to managing it.
 
 Interfaces:
	 - MetadataResource: http://hl7.org/fhir/StructureDefinition/MetadataResource
	 - CanonicalResource: http://hl7.org/fhir/StructureDefinition/CanonicalResource
 */
open class ConditionDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .conditionDefinition }
	
	/// Canonical identifier for this condition definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the condition definition
	public var identifier: [Identifier]?
	
	/// Business version of the condition definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this condition definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this condition definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Subordinate title of the event definition
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// The status of this condition definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the condition definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for condition definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Anatomical location, if relevant
	public var bodySite: CodeableConcept?
	
	/// Stage/grade, usually assessed formally
	public var stage: CodeableConcept?
	
	/// Whether Severity is appropriate
	public var hasSeverity: FHIRPrimitive<FHIRBool>?
	
	/// Whether bodySite is appropriate
	public var hasBodySite: FHIRPrimitive<FHIRBool>?
	
	/// Whether stage is appropriate
	public var hasStage: FHIRPrimitive<FHIRBool>?
	
	/// Formal Definition for the condition
	public var definition: [FHIRPrimitive<FHIRURI>]?
	
	/// Observations particularly relevant to this condition
	public var observation: [ConditionDefinitionObservation]?
	
	/// Medications particularly relevant for this condition
	public var medication: [ConditionDefinitionMedication]?
	
	/// Observation that suggets this condition
	public var precondition: [ConditionDefinitionPrecondition]?
	
	/// Appropriate team for this condition
	public var team: [Reference]?
	
	/// Questionnaire for this condition
	public var questionnaire: [ConditionDefinitionQuestionnaire]?
	
	/// Plan that is appropriate
	public var plan: [ConditionDefinitionPlan]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<PublicationStatus>) {
		self.code = code
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: CodeableConcept? = nil,
							code: CodeableConcept,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							definition: [FHIRPrimitive<FHIRURI>]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							hasBodySite: FHIRPrimitive<FHIRBool>? = nil,
							hasSeverity: FHIRPrimitive<FHIRBool>? = nil,
							hasStage: FHIRPrimitive<FHIRBool>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: [ConditionDefinitionMedication]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							observation: [ConditionDefinitionObservation]? = nil,
							plan: [ConditionDefinitionPlan]? = nil,
							precondition: [ConditionDefinitionPrecondition]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							questionnaire: [ConditionDefinitionQuestionnaire]? = nil,
							severity: CodeableConcept? = nil,
							stage: CodeableConcept? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							subtitle: FHIRPrimitive<FHIRString>? = nil,
							team: [Reference]? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(code: code, status: status)
		self.bodySite = bodySite
		self.contact = contact
		self.contained = contained
		self.date = date
		self.definition = definition
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.hasBodySite = hasBodySite
		self.hasSeverity = hasSeverity
		self.hasStage = hasStage
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.observation = observation
		self.plan = plan
		self.precondition = precondition
		self.publisher = publisher
		self.questionnaire = questionnaire
		self.severity = severity
		self.stage = stage
		self.subtitle = subtitle
		self.team = team
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case code
		case contact
		case date; case _date
		case definition; case _definition
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case hasBodySite; case _hasBodySite
		case hasSeverity; case _hasSeverity
		case hasStage; case _hasStage
		case identifier
		case jurisdiction
		case medication
		case name; case _name
		case observation
		case plan
		case precondition
		case publisher; case _publisher
		case questionnaire
		case severity
		case stage
		case status; case _status
		case subtitle; case _subtitle
		case team
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.definition = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.hasBodySite = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .hasBodySite, auxiliaryKey: ._hasBodySite)
		self.hasSeverity = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .hasSeverity, auxiliaryKey: ._hasSeverity)
		self.hasStage = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .hasStage, auxiliaryKey: ._hasStage)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.medication = try [ConditionDefinitionMedication](from: _container, forKeyIfPresent: .medication)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.observation = try [ConditionDefinitionObservation](from: _container, forKeyIfPresent: .observation)
		self.plan = try [ConditionDefinitionPlan](from: _container, forKeyIfPresent: .plan)
		self.precondition = try [ConditionDefinitionPrecondition](from: _container, forKeyIfPresent: .precondition)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.questionnaire = try [ConditionDefinitionQuestionnaire](from: _container, forKeyIfPresent: .questionnaire)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.stage = try CodeableConcept(from: _container, forKeyIfPresent: .stage)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.team = try [Reference](from: _container, forKeyIfPresent: .team)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try code.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try hasBodySite?.encode(on: &_container, forKey: .hasBodySite, auxiliaryKey: ._hasBodySite)
		try hasSeverity?.encode(on: &_container, forKey: .hasSeverity, auxiliaryKey: ._hasSeverity)
		try hasStage?.encode(on: &_container, forKey: .hasStage, auxiliaryKey: ._hasStage)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try medication?.encode(on: &_container, forKey: .medication)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try observation?.encode(on: &_container, forKey: .observation)
		try plan?.encode(on: &_container, forKey: .plan)
		try precondition?.encode(on: &_container, forKey: .precondition)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try questionnaire?.encode(on: &_container, forKey: .questionnaire)
		try severity?.encode(on: &_container, forKey: .severity)
		try stage?.encode(on: &_container, forKey: .stage)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try team?.encode(on: &_container, forKey: .team)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && code == _other.code
		    && contact == _other.contact
		    && date == _other.date
		    && definition == _other.definition
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && hasBodySite == _other.hasBodySite
		    && hasSeverity == _other.hasSeverity
		    && hasStage == _other.hasStage
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && medication == _other.medication
		    && name == _other.name
		    && observation == _other.observation
		    && plan == _other.plan
		    && precondition == _other.precondition
		    && publisher == _other.publisher
		    && questionnaire == _other.questionnaire
		    && severity == _other.severity
		    && stage == _other.stage
		    && status == _other.status
		    && subtitle == _other.subtitle
		    && team == _other.team
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(definition)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(hasBodySite)
		hasher.combine(hasSeverity)
		hasher.combine(hasStage)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(medication)
		hasher.combine(name)
		hasher.combine(observation)
		hasher.combine(plan)
		hasher.combine(precondition)
		hasher.combine(publisher)
		hasher.combine(questionnaire)
		hasher.combine(severity)
		hasher.combine(stage)
		hasher.combine(status)
		hasher.combine(subtitle)
		hasher.combine(team)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Medications particularly relevant for this condition.
 */
open class ConditionDefinitionMedication: BackboneElement {
	
	/// Category that is relevant
	public var category: CodeableConcept?
	
	/// Code for relevant Medication
	public var code: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.category = category
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionDefinitionMedication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
	}
}

/**
 Observations particularly relevant to this condition.
 */
open class ConditionDefinitionObservation: BackboneElement {
	
	/// Category that is relevant
	public var category: CodeableConcept?
	
	/// Code for relevant Observation
	public var code: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.category = category
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case code
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionDefinitionObservation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && code == _other.code
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(code)
	}
}

/**
 Plan that is appropriate.
 */
open class ConditionDefinitionPlan: BackboneElement {
	
	/// Use for the plan
	public var role: CodeableConcept?
	
	/// The actual plan
	public var reference: Reference
	
	/// Designated initializer taking all required properties
	public init(reference: Reference) {
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: Reference,
							role: CodeableConcept? = nil)
	{
		self.init(reference: reference)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reference
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reference = try Reference(from: _container, forKey: .reference)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reference.encode(on: &_container, forKey: .reference)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionDefinitionPlan else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reference == _other.reference
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reference)
		hasher.combine(role)
	}
}

/**
 Observation that suggets this condition.
 
 An observation that suggests that this condition applies.
 */
open class ConditionDefinitionPrecondition: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
	}
	
	/// Kind of pre-condition.
	public var type: FHIRPrimitive<ConditionPreconditionType>
	
	/// Code for relevant Observation
	public var code: CodeableConcept
	
	/// Value of Observation
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, type: FHIRPrimitive<ConditionPreconditionType>) {
		self.code = code
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<ConditionPreconditionType>,
							value: ValueX? = nil)
	{
		self.init(code: code, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case type; case _type
		case valueCodeableConcept
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.type = try FHIRPrimitive<ConditionPreconditionType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionDefinitionPrecondition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Questionnaire for this condition.
 */
open class ConditionDefinitionQuestionnaire: BackboneElement {
	
	/// Use of the questionnaire.
	public var purpose: FHIRPrimitive<ConditionQuestionnairePurpose>
	
	/// Specific Questionnaire
	public var reference: Reference
	
	/// Designated initializer taking all required properties
	public init(purpose: FHIRPrimitive<ConditionQuestionnairePurpose>, reference: Reference) {
		self.purpose = purpose
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							purpose: FHIRPrimitive<ConditionQuestionnairePurpose>,
							reference: Reference)
	{
		self.init(purpose: purpose, reference: reference)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case purpose; case _purpose
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.purpose = try FHIRPrimitive<ConditionQuestionnairePurpose>(from: _container, forKey: .purpose, auxiliaryKey: ._purpose)
		self.reference = try Reference(from: _container, forKey: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try purpose.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try reference.encode(on: &_container, forKey: .reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConditionDefinitionQuestionnaire else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return purpose == _other.purpose
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(purpose)
		hasher.combine(reference)
	}
}
