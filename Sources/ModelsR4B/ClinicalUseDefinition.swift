//
//  ClinicalUseDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ClinicalUseDefinition)
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
 A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product,
 medication, device or procedure.
 */
open class ClinicalUseDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .clinicalUseDefinition }
	
	/// Business identifier for this issue
	public var identifier: [Identifier]?
	
	/// None
	public var type: FHIRPrimitive<ClinicalUseDefinitionType>
	
	/// A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy",
	/// "Overdose"
	public var category: [CodeableConcept]?
	
	/// The medication or procedure for which this is an indication
	public var subject: [Reference]?
	
	/// Whether this is a current issue or one that has been retired etc
	public var status: CodeableConcept?
	
	/// Specifics for when this is a contraindication
	public var contraindication: ClinicalUseDefinitionContraindication?
	
	/// Specifics for when this is an indication
	public var indication: ClinicalUseDefinitionIndication?
	
	/// Specifics for when this is an interaction
	public var interaction: ClinicalUseDefinitionInteraction?
	
	/// The population group to which this applies
	public var population: [Reference]?
	
	/// A possible negative outcome from the use of this treatment
	public var undesirableEffect: ClinicalUseDefinitionUndesirableEffect?
	
	/// Critical environmental, health or physical risks or hazards. For example 'Do not operate heavy machinery', 'May
	/// cause drowsiness'
	public var warning: ClinicalUseDefinitionWarning?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ClinicalUseDefinitionType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		contraindication: ClinicalUseDefinitionContraindication? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		indication: ClinicalUseDefinitionIndication? = nil,
		interaction: ClinicalUseDefinitionInteraction? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		population: [Reference]? = nil,
		status: CodeableConcept? = nil,
		subject: [Reference]? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<ClinicalUseDefinitionType>,
		undesirableEffect: ClinicalUseDefinitionUndesirableEffect? = nil,
		warning: ClinicalUseDefinitionWarning? = nil
	) {
		self.init(type: type)
		self.category = category
		self.contained = contained
		self.contraindication = contraindication
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.indication = indication
		self.interaction = interaction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.population = population
		self.status = status
		self.subject = subject
		self.text = text
		self.undesirableEffect = undesirableEffect
		self.warning = warning
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case contraindication
		case identifier
		case indication
		case interaction
		case population
		case status
		case subject
		case type; case _type
		case undesirableEffect
		case warning
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contraindication = try ClinicalUseDefinitionContraindication(from: _container, forKeyIfPresent: .contraindication)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try ClinicalUseDefinitionIndication(from: _container, forKeyIfPresent: .indication)
		self.interaction = try ClinicalUseDefinitionInteraction(from: _container, forKeyIfPresent: .interaction)
		self.population = try [Reference](from: _container, forKeyIfPresent: .population)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.type = try FHIRPrimitive<ClinicalUseDefinitionType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.undesirableEffect = try ClinicalUseDefinitionUndesirableEffect(from: _container, forKeyIfPresent: .undesirableEffect)
		self.warning = try ClinicalUseDefinitionWarning(from: _container, forKeyIfPresent: .warning)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indication?.encode(on: &_container, forKey: .indication)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try population?.encode(on: &_container, forKey: .population)
		try status?.encode(on: &_container, forKey: .status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
		try warning?.encode(on: &_container, forKey: .warning)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && contraindication == _other.contraindication
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && interaction == _other.interaction
		    && population == _other.population
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
		    && undesirableEffect == _other.undesirableEffect
		    && warning == _other.warning
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(contraindication)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(interaction)
		hasher.combine(population)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(undesirableEffect)
		hasher.combine(warning)
	}
}

/**
 Specifics for when this is a contraindication.
 */
open class ClinicalUseDefinitionContraindication: BackboneElement {
	
	/// The situation that is being documented as contraindicating against this item
	public var diseaseSymptomProcedure: CodeableReference?
	
	/// The status of the disease or symptom for the contraindication
	public var diseaseStatus: CodeableReference?
	
	/// A comorbidity (concurrent condition) or coinfection
	public var comorbidity: [CodeableReference]?
	
	/// The indication which this is a contraidication for
	public var indication: [Reference]?
	
	/// Information about use of the product in relation to other therapies described as part of the contraindication
	public var otherTherapy: [ClinicalUseDefinitionContraindicationOtherTherapy]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		comorbidity: [CodeableReference]? = nil,
		diseaseStatus: CodeableReference? = nil,
		diseaseSymptomProcedure: CodeableReference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: [Reference]? = nil,
		modifierExtension: [Extension]? = nil,
		otherTherapy: [ClinicalUseDefinitionContraindicationOtherTherapy]? = nil
	) {
		self.init()
		self.comorbidity = comorbidity
		self.diseaseStatus = diseaseStatus
		self.diseaseSymptomProcedure = diseaseSymptomProcedure
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.modifierExtension = modifierExtension
		self.otherTherapy = otherTherapy
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comorbidity
		case diseaseStatus
		case diseaseSymptomProcedure
		case indication
		case otherTherapy
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comorbidity = try [CodeableReference](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableReference(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableReference(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.indication = try [Reference](from: _container, forKeyIfPresent: .indication)
		self.otherTherapy = try [ClinicalUseDefinitionContraindicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try diseaseSymptomProcedure?.encode(on: &_container, forKey: .diseaseSymptomProcedure)
		try indication?.encode(on: &_container, forKey: .indication)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionContraindication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comorbidity == _other.comorbidity
		    && diseaseStatus == _other.diseaseStatus
		    && diseaseSymptomProcedure == _other.diseaseSymptomProcedure
		    && indication == _other.indication
		    && otherTherapy == _other.otherTherapy
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comorbidity)
		hasher.combine(diseaseStatus)
		hasher.combine(diseaseSymptomProcedure)
		hasher.combine(indication)
		hasher.combine(otherTherapy)
	}
}

/**
 Information about use of the product in relation to other therapies described as part of the contraindication.
 
 Information about the use of the medicinal product in relation to other therapies described as part of the
 contraindication.
 */
open class ClinicalUseDefinitionContraindicationOtherTherapy: BackboneElement {
	
	/// The type of relationship between the product indication/contraindication and another therapy
	public var relationshipType: CodeableConcept
	
	/// Reference to a specific medication as part of an indication or contraindication
	public var therapy: CodeableReference
	
	/// Designated initializer taking all required properties
	public init(relationshipType: CodeableConcept, therapy: CodeableReference) {
		self.relationshipType = relationshipType
		self.therapy = therapy
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relationshipType: CodeableConcept,
		therapy: CodeableReference
	) {
		self.init(relationshipType: relationshipType, therapy: therapy)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case relationshipType
		case therapy
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.relationshipType = try CodeableConcept(from: _container, forKey: .relationshipType)
		self.therapy = try CodeableReference(from: _container, forKey: .therapy)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try relationshipType.encode(on: &_container, forKey: .relationshipType)
		try therapy.encode(on: &_container, forKey: .therapy)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionContraindicationOtherTherapy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return relationshipType == _other.relationshipType
		    && therapy == _other.therapy
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(relationshipType)
		hasher.combine(therapy)
	}
}

/**
 Specifics for when this is an indication.
 */
open class ClinicalUseDefinitionIndication: BackboneElement {
	
	/// All possible types for "duration[x]"
	public enum DurationX: Hashable {
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The situation that is being documented as an indicaton for this item
	public var diseaseSymptomProcedure: CodeableReference?
	
	/// The status of the disease or symptom for the indication
	public var diseaseStatus: CodeableReference?
	
	/// A comorbidity or coinfection as part of the indication
	public var comorbidity: [CodeableReference]?
	
	/// The intended effect, aim or strategy to be achieved
	public var intendedEffect: CodeableReference?
	
	/// Timing or duration information
	/// One of `duration[x]`
	public var duration: DurationX?
	
	/// An unwanted side effect or negative outcome of the subject of this resource when being used for this indication
	public var undesirableEffect: [Reference]?
	
	/// The use of the medicinal product in relation to other therapies described as part of the indication
	public var otherTherapy: [ClinicalUseDefinitionContraindicationOtherTherapy]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		comorbidity: [CodeableReference]? = nil,
		diseaseStatus: CodeableReference? = nil,
		diseaseSymptomProcedure: CodeableReference? = nil,
		duration: DurationX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intendedEffect: CodeableReference? = nil,
		modifierExtension: [Extension]? = nil,
		otherTherapy: [ClinicalUseDefinitionContraindicationOtherTherapy]? = nil,
		undesirableEffect: [Reference]? = nil
	) {
		self.init()
		self.comorbidity = comorbidity
		self.diseaseStatus = diseaseStatus
		self.diseaseSymptomProcedure = diseaseSymptomProcedure
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.intendedEffect = intendedEffect
		self.modifierExtension = modifierExtension
		self.otherTherapy = otherTherapy
		self.undesirableEffect = undesirableEffect
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comorbidity
		case diseaseStatus
		case diseaseSymptomProcedure
		case durationRange
		case durationString; case _durationString
		case intendedEffect
		case otherTherapy
		case undesirableEffect
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comorbidity = try [CodeableReference](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableReference(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableReference(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		var _t_duration: DurationX? = nil
		if let durationRange = try Range(from: _container, forKeyIfPresent: .durationRange) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationRange, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .range(durationRange)
		}
		if let durationString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .durationString, auxiliaryKey: ._durationString) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationString, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .string(durationString)
		}
		self.duration = _t_duration
		self.intendedEffect = try CodeableReference(from: _container, forKeyIfPresent: .intendedEffect)
		self.otherTherapy = try [ClinicalUseDefinitionContraindicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
		self.undesirableEffect = try [Reference](from: _container, forKeyIfPresent: .undesirableEffect)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try diseaseSymptomProcedure?.encode(on: &_container, forKey: .diseaseSymptomProcedure)
		if let _enum = duration {
			switch _enum {
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .durationRange)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .durationString, auxiliaryKey: ._durationString)
			}
		}
		try intendedEffect?.encode(on: &_container, forKey: .intendedEffect)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionIndication else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comorbidity == _other.comorbidity
		    && diseaseStatus == _other.diseaseStatus
		    && diseaseSymptomProcedure == _other.diseaseSymptomProcedure
		    && duration == _other.duration
		    && intendedEffect == _other.intendedEffect
		    && otherTherapy == _other.otherTherapy
		    && undesirableEffect == _other.undesirableEffect
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comorbidity)
		hasher.combine(diseaseStatus)
		hasher.combine(diseaseSymptomProcedure)
		hasher.combine(duration)
		hasher.combine(intendedEffect)
		hasher.combine(otherTherapy)
		hasher.combine(undesirableEffect)
	}
}

/**
 Specifics for when this is an interaction.
 */
open class ClinicalUseDefinitionInteraction: BackboneElement {
	
	/// The specific medication, food, substance or laboratory test that interacts
	public var interactant: [ClinicalUseDefinitionInteractionInteractant]?
	
	/// The type of the interaction e.g. drug-drug interaction, drug-lab test interaction
	public var type: CodeableConcept?
	
	/// The effect of the interaction, for example "reduced gastric absorption of primary medication"
	public var effect: CodeableReference?
	
	/// The incidence of the interaction, e.g. theoretical, observed
	public var incidence: CodeableConcept?
	
	/// Actions for managing the interaction
	public var management: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		effect: CodeableReference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		incidence: CodeableConcept? = nil,
		interactant: [ClinicalUseDefinitionInteractionInteractant]? = nil,
		management: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.effect = effect
		self.`extension` = `extension`
		self.id = id
		self.incidence = incidence
		self.interactant = interactant
		self.management = management
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effect
		case incidence
		case interactant
		case management
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.effect = try CodeableReference(from: _container, forKeyIfPresent: .effect)
		self.incidence = try CodeableConcept(from: _container, forKeyIfPresent: .incidence)
		self.interactant = try [ClinicalUseDefinitionInteractionInteractant](from: _container, forKeyIfPresent: .interactant)
		self.management = try [CodeableConcept](from: _container, forKeyIfPresent: .management)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try effect?.encode(on: &_container, forKey: .effect)
		try incidence?.encode(on: &_container, forKey: .incidence)
		try interactant?.encode(on: &_container, forKey: .interactant)
		try management?.encode(on: &_container, forKey: .management)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionInteraction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return effect == _other.effect
		    && incidence == _other.incidence
		    && interactant == _other.interactant
		    && management == _other.management
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(effect)
		hasher.combine(incidence)
		hasher.combine(interactant)
		hasher.combine(management)
		hasher.combine(type)
	}
}

/**
 The specific medication, food, substance or laboratory test that interacts.
 */
open class ClinicalUseDefinitionInteractionInteractant: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The specific medication, food or laboratory test that interacts
	/// One of `item[x]`
	public var item: ItemX
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil
	) {
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case itemCodeableConcept
		case itemReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		var _t_item: ItemX? = nil
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		self.item = _t_item!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch item {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionInteractionInteractant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
	}
}

/**
 A possible negative outcome from the use of this treatment.
 
 Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.
 */
open class ClinicalUseDefinitionUndesirableEffect: BackboneElement {
	
	/// The situation in which the undesirable effect may manifest
	public var symptomConditionEffect: CodeableReference?
	
	/// High level classification of the effect
	public var classification: CodeableConcept?
	
	/// How often the effect is seen
	public var frequencyOfOccurrence: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		classification: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		frequencyOfOccurrence: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		symptomConditionEffect: CodeableReference? = nil
	) {
		self.init()
		self.classification = classification
		self.`extension` = `extension`
		self.frequencyOfOccurrence = frequencyOfOccurrence
		self.id = id
		self.modifierExtension = modifierExtension
		self.symptomConditionEffect = symptomConditionEffect
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case frequencyOfOccurrence
		case symptomConditionEffect
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classification = try CodeableConcept(from: _container, forKeyIfPresent: .classification)
		self.frequencyOfOccurrence = try CodeableConcept(from: _container, forKeyIfPresent: .frequencyOfOccurrence)
		self.symptomConditionEffect = try CodeableReference(from: _container, forKeyIfPresent: .symptomConditionEffect)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classification?.encode(on: &_container, forKey: .classification)
		try frequencyOfOccurrence?.encode(on: &_container, forKey: .frequencyOfOccurrence)
		try symptomConditionEffect?.encode(on: &_container, forKey: .symptomConditionEffect)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionUndesirableEffect else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classification == _other.classification
		    && frequencyOfOccurrence == _other.frequencyOfOccurrence
		    && symptomConditionEffect == _other.symptomConditionEffect
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classification)
		hasher.combine(frequencyOfOccurrence)
		hasher.combine(symptomConditionEffect)
	}
}

/**
 Critical environmental, health or physical risks or hazards. For example 'Do not operate heavy machinery', 'May cause
 drowsiness'.
 
 A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the
 user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you
 feel unwell'.
 */
open class ClinicalUseDefinitionWarning: BackboneElement {
	
	/// A textual definition of this warning, with formatting
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A coded or unformatted textual definition of this warning
	public var code: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseDefinitionWarning else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && description_fhir == _other.description_fhir
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
	}
}
