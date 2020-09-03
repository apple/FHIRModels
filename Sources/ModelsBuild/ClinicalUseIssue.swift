//
//  ClinicalUseIssue.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ClinicalUseIssue)
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
 A single item of clinical particulars - an indication, contraindication, interaction etc. for a medicinal product.
 
 A single usage issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal
 product, medication, device or procedure.
 */
open class ClinicalUseIssue: DomainResource {
	
	override open class var resourceType: ResourceType { return .clinicalUseIssue }
	
	/// Business identifier for this issue
	public var identifier: [Identifier]?
	
	/// None
	public var type: FHIRPrimitive<ClinicalUseIssueType>
	
	/// A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and
	/// Lactation", "Overdose", "Effects on Ability to Drive and Use Machines"
	public var category: CodeableConcept?
	
	/// The medication or procedure for which this is an indication
	public var subject: [Reference]?
	
	/// Whether this is a current issue or one that has been retired etc
	public var status: CodeableConcept?
	
	/// General description of an effect (particularly for a general warning, rather than any of the more specific types
	/// such as indication) for when a distinct coded or textual description is not appropriate using
	/// Indication.diseaseSymptomProcedure.text, Contraindication.diseaseSymptomProcedure.text etc. For example "May
	/// affect ability to drive"
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Specifics for when this is a contraindication
	public var contraindication: ClinicalUseIssueContraindication?
	
	/// Specifics for when this is an indication
	public var indication: ClinicalUseIssueIndication?
	
	/// Specifics for when this is an interaction
	public var interaction: ClinicalUseIssueInteraction?
	
	/// The population group to which this applies
	public var population: [Population]?
	
	/// A possible negative outcome from the use of this treatment
	public var undesirableEffect: ClinicalUseIssueUndesirableEffect?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ClinicalUseIssueType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							contraindication: ClinicalUseIssueContraindication? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							indication: ClinicalUseIssueIndication? = nil,
							interaction: ClinicalUseIssueInteraction? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							population: [Population]? = nil,
							status: CodeableConcept? = nil,
							subject: [Reference]? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<ClinicalUseIssueType>,
							undesirableEffect: ClinicalUseIssueUndesirableEffect? = nil)
	{
		self.init(type: type)
		self.category = category
		self.contained = contained
		self.contraindication = contraindication
		self.description_fhir = description_fhir
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
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case contraindication
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case indication
		case interaction
		case population
		case status
		case subject
		case type; case _type
		case undesirableEffect
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contraindication = try ClinicalUseIssueContraindication(from: _container, forKeyIfPresent: .contraindication)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try ClinicalUseIssueIndication(from: _container, forKeyIfPresent: .indication)
		self.interaction = try ClinicalUseIssueInteraction(from: _container, forKeyIfPresent: .interaction)
		self.population = try [Population](from: _container, forKeyIfPresent: .population)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.type = try FHIRPrimitive<ClinicalUseIssueType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.undesirableEffect = try ClinicalUseIssueUndesirableEffect(from: _container, forKeyIfPresent: .undesirableEffect)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indication?.encode(on: &_container, forKey: .indication)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try population?.encode(on: &_container, forKey: .population)
		try status?.encode(on: &_container, forKey: .status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseIssue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && contraindication == _other.contraindication
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && interaction == _other.interaction
		    && population == _other.population
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
		    && undesirableEffect == _other.undesirableEffect
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(contraindication)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(interaction)
		hasher.combine(population)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(undesirableEffect)
	}
}

/**
 Specifics for when this is a contraindication.
 */
open class ClinicalUseIssueContraindication: BackboneElement {
	
	/// The situation that is being documented as contraindicating against this item
	public var diseaseSymptomProcedure: CodeableConcept?
	
	/// The status of the disease or symptom for the contraindication
	public var diseaseStatus: CodeableConcept?
	
	/// A comorbidity (concurrent condition) or coinfection
	public var comorbidity: [CodeableConcept]?
	
	/// The indication which this is a contraidication for
	public var indication: [Reference]?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// indication
	public var otherTherapy: [ClinicalUseIssueContraindicationOtherTherapy]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comorbidity: [CodeableConcept]? = nil,
							diseaseStatus: CodeableConcept? = nil,
							diseaseSymptomProcedure: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							indication: [Reference]? = nil,
							modifierExtension: [Extension]? = nil,
							otherTherapy: [ClinicalUseIssueContraindicationOtherTherapy]? = nil)
	{
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
		self.comorbidity = try [CodeableConcept](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.indication = try [Reference](from: _container, forKeyIfPresent: .indication)
		self.otherTherapy = try [ClinicalUseIssueContraindicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
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
		guard let _other = _other as? ClinicalUseIssueContraindication else {
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
 Information about the use of the medicinal product in relation to other therapies described as part of the indication.
 */
open class ClinicalUseIssueContraindicationOtherTherapy: BackboneElement {
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The type of relationship between the medicinal product indication or contraindication and another therapy
	public var therapyRelationshipType: CodeableConcept
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Designated initializer taking all required properties
	public init(medication: MedicationX, therapyRelationshipType: CodeableConcept) {
		self.medication = medication
		self.therapyRelationshipType = therapyRelationshipType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							modifierExtension: [Extension]? = nil,
							therapyRelationshipType: CodeableConcept)
	{
		self.init(medication: medication, therapyRelationshipType: therapyRelationshipType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case medicationCodeableConcept
		case medicationReference
		case therapyRelationshipType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		var _t_medication: MedicationX? = nil
		if let medicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .medicationCodeableConcept) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .codeableConcept(medicationCodeableConcept)
		}
		if let medicationReference = try Reference(from: _container, forKeyIfPresent: .medicationReference) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationReference, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .reference(medicationReference)
		}
		self.medication = _t_medication!
		self.therapyRelationshipType = try CodeableConcept(from: _container, forKey: .therapyRelationshipType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try therapyRelationshipType.encode(on: &_container, forKey: .therapyRelationshipType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseIssueContraindicationOtherTherapy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return medication == _other.medication
		    && therapyRelationshipType == _other.therapyRelationshipType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(medication)
		hasher.combine(therapyRelationshipType)
	}
}

/**
 Specifics for when this is an indication.
 */
open class ClinicalUseIssueIndication: BackboneElement {
	
	/// The situation that is being documented as an indicaton for this item
	public var diseaseSymptomProcedure: CodeableConcept?
	
	/// The status of the disease or symptom for the indication
	public var diseaseStatus: CodeableConcept?
	
	/// A comorbidity (concurrent condition) or coinfection as part of the indication
	public var comorbidity: [CodeableConcept]?
	
	/// For an indication - the intended effect, aim or strategy to be achieved
	public var intendedEffect: CodeableConcept?
	
	/// For an indication - timing or duration information
	public var duration: Quantity?
	
	/// For an indicaton - the specific undesirable effects of the medicinal product
	public var undesirableEffect: [Reference]?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// contraindication
	public var otherTherapy: [ClinicalUseIssueContraindicationOtherTherapy]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comorbidity: [CodeableConcept]? = nil,
							diseaseStatus: CodeableConcept? = nil,
							diseaseSymptomProcedure: CodeableConcept? = nil,
							duration: Quantity? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							intendedEffect: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							otherTherapy: [ClinicalUseIssueContraindicationOtherTherapy]? = nil,
							undesirableEffect: [Reference]? = nil)
	{
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
		case duration
		case intendedEffect
		case otherTherapy
		case undesirableEffect
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comorbidity = try [CodeableConcept](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableConcept(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.intendedEffect = try CodeableConcept(from: _container, forKeyIfPresent: .intendedEffect)
		self.otherTherapy = try [ClinicalUseIssueContraindicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
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
		try duration?.encode(on: &_container, forKey: .duration)
		try intendedEffect?.encode(on: &_container, forKey: .intendedEffect)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ClinicalUseIssueIndication else {
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
open class ClinicalUseIssueInteraction: BackboneElement {
	
	/// The specific medication, food or laboratory test that interacts
	public var interactant: [ClinicalUseIssueInteractionInteractant]?
	
	/// The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction
	public var type: CodeableConcept?
	
	/// The effect of the interaction, for example "reduced gastric absorption of primary medication"
	public var effect: CodeableConcept?
	
	/// The incidence of the interaction, e.g. theoretical, observed
	public var incidence: CodeableConcept?
	
	/// Actions for managing the interaction
	public var management: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							effect: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							incidence: CodeableConcept? = nil,
							interactant: [ClinicalUseIssueInteractionInteractant]? = nil,
							management: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil)
	{
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
		self.effect = try CodeableConcept(from: _container, forKeyIfPresent: .effect)
		self.incidence = try CodeableConcept(from: _container, forKeyIfPresent: .incidence)
		self.interactant = try [ClinicalUseIssueInteractionInteractant](from: _container, forKeyIfPresent: .interactant)
		self.management = try CodeableConcept(from: _container, forKeyIfPresent: .management)
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
		guard let _other = _other as? ClinicalUseIssueInteraction else {
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
 The specific medication, food or laboratory test that interacts.
 */
open class ClinicalUseIssueInteractionInteractant: BackboneElement {
	
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
							modifierExtension: [Extension]? = nil)
	{
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
		guard let _other = _other as? ClinicalUseIssueInteractionInteractant else {
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
 
 Describe the undesirable effects of the medicinal product.
 */
open class ClinicalUseIssueUndesirableEffect: BackboneElement {
	
	/// The situation in which the undesirable effect may manifest
	public var symptomConditionEffect: CodeableConcept?
	
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
							symptomConditionEffect: CodeableConcept? = nil)
	{
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
		self.symptomConditionEffect = try CodeableConcept(from: _container, forKeyIfPresent: .symptomConditionEffect)
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
		guard let _other = _other as? ClinicalUseIssueUndesirableEffect else {
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
