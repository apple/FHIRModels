//
//  MedicationKnowledge.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/MedicationKnowledge)
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
 Definition of Medication Knowledge.
 
 Information about a medication that is used to support knowledge.
 */
open class MedicationKnowledge: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationKnowledge }
	
	/// Business identifier for this medication
	public var identifier: [Identifier]?
	
	/// Code that identifies this medication
	public var code: CodeableConcept?
	
	/// active | inactive | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Creator or owner of the knowledge or information about the medication
	public var author: Reference?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// Amount of drug in package
	public var amount: Quantity?
	
	/// Additional names for a medication
	public var synonym: [FHIRPrimitive<FHIRString>]?
	
	/// Associated or related medication information
	public var relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]?
	
	/// A medication resource that is associated with this medication
	public var associatedMedication: [Reference]?
	
	/// A definition resource that is associated with this medication
	public var associatedDefinition: Reference?
	
	/// Category of the medication or product
	public var productType: [CodeableConcept]?
	
	/// Associated documentation about the medication
	public var monograph: [MedicationKnowledgeMonograph]?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationKnowledgeIngredient]?
	
	/// A device associated with the medication (for example, a drug coated catheter or a drug impregnated dressing)
	public var device: [Reference]?
	
	/// The instructions for preparing the medication
	public var preparationInstruction: FHIRPrimitive<FHIRString>?
	
	/// The intended or approved route of administration
	public var intendedRoute: [CodeableConcept]?
	
	/// The pricing of the medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// Program under which a medication is reviewed
	public var monitoringProgram: [MedicationKnowledgeMonitoringProgram]?
	
	/// Guidelines or protocols for administration of the medication
	public var administrationGuideline: [MedicationKnowledgeAdministrationGuideline]?
	
	/// Categorization of the medication within a formulary or classification system
	public var medicineClassification: [MedicationKnowledgeMedicineClassification]?
	
	/// Details about packaged medications
	public var packaging: [MedicationKnowledgePackaging]?
	
	/// Specifies descriptive properties of the medicine
	public var drugCharacteristic: [MedicationKnowledgeDrugCharacteristic]?
	
	/// Potential clinical issue with or between medication(s)
	public var clinicalUseIssue: [Reference]?
	
	/// Regulatory information about a medication
	public var regulatory: [MedicationKnowledgeRegulatory]?
	
	/// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body
	public var kineticCharacteristic: [MedicationKnowledgeKineticCharacteristic]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							administrationGuideline: [MedicationKnowledgeAdministrationGuideline]? = nil,
							amount: Quantity? = nil,
							associatedDefinition: Reference? = nil,
							associatedMedication: [Reference]? = nil,
							author: Reference? = nil,
							clinicalUseIssue: [Reference]? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							cost: [MedicationKnowledgeCost]? = nil,
							device: [Reference]? = nil,
							doseForm: CodeableConcept? = nil,
							drugCharacteristic: [MedicationKnowledgeDrugCharacteristic]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							ingredient: [MedicationKnowledgeIngredient]? = nil,
							intendedRoute: [CodeableConcept]? = nil,
							kineticCharacteristic: [MedicationKnowledgeKineticCharacteristic]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: Reference? = nil,
							medicineClassification: [MedicationKnowledgeMedicineClassification]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							monitoringProgram: [MedicationKnowledgeMonitoringProgram]? = nil,
							monograph: [MedicationKnowledgeMonograph]? = nil,
							packaging: [MedicationKnowledgePackaging]? = nil,
							preparationInstruction: FHIRPrimitive<FHIRString>? = nil,
							productType: [CodeableConcept]? = nil,
							regulatory: [MedicationKnowledgeRegulatory]? = nil,
							relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							synonym: [FHIRPrimitive<FHIRString>]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.administrationGuideline = administrationGuideline
		self.amount = amount
		self.associatedDefinition = associatedDefinition
		self.associatedMedication = associatedMedication
		self.author = author
		self.clinicalUseIssue = clinicalUseIssue
		self.code = code
		self.contained = contained
		self.cost = cost
		self.device = device
		self.doseForm = doseForm
		self.drugCharacteristic = drugCharacteristic
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.intendedRoute = intendedRoute
		self.kineticCharacteristic = kineticCharacteristic
		self.language = language
		self.manufacturer = manufacturer
		self.medicineClassification = medicineClassification
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.monitoringProgram = monitoringProgram
		self.monograph = monograph
		self.packaging = packaging
		self.preparationInstruction = preparationInstruction
		self.productType = productType
		self.regulatory = regulatory
		self.relatedMedicationKnowledge = relatedMedicationKnowledge
		self.status = status
		self.synonym = synonym
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administrationGuideline
		case amount
		case associatedDefinition
		case associatedMedication
		case author
		case clinicalUseIssue
		case code
		case cost
		case device
		case doseForm
		case drugCharacteristic
		case identifier
		case ingredient
		case intendedRoute
		case kineticCharacteristic
		case manufacturer
		case medicineClassification
		case monitoringProgram
		case monograph
		case packaging
		case preparationInstruction; case _preparationInstruction
		case productType
		case regulatory
		case relatedMedicationKnowledge
		case status; case _status
		case synonym; case _synonym
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administrationGuideline = try [MedicationKnowledgeAdministrationGuideline](from: _container, forKeyIfPresent: .administrationGuideline)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.associatedDefinition = try Reference(from: _container, forKeyIfPresent: .associatedDefinition)
		self.associatedMedication = try [Reference](from: _container, forKeyIfPresent: .associatedMedication)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.clinicalUseIssue = try [Reference](from: _container, forKeyIfPresent: .clinicalUseIssue)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.drugCharacteristic = try [MedicationKnowledgeDrugCharacteristic](from: _container, forKeyIfPresent: .drugCharacteristic)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [MedicationKnowledgeIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.intendedRoute = try [CodeableConcept](from: _container, forKeyIfPresent: .intendedRoute)
		self.kineticCharacteristic = try [MedicationKnowledgeKineticCharacteristic](from: _container, forKeyIfPresent: .kineticCharacteristic)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.medicineClassification = try [MedicationKnowledgeMedicineClassification](from: _container, forKeyIfPresent: .medicineClassification)
		self.monitoringProgram = try [MedicationKnowledgeMonitoringProgram](from: _container, forKeyIfPresent: .monitoringProgram)
		self.monograph = try [MedicationKnowledgeMonograph](from: _container, forKeyIfPresent: .monograph)
		self.packaging = try [MedicationKnowledgePackaging](from: _container, forKeyIfPresent: .packaging)
		self.preparationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		self.productType = try [CodeableConcept](from: _container, forKeyIfPresent: .productType)
		self.regulatory = try [MedicationKnowledgeRegulatory](from: _container, forKeyIfPresent: .regulatory)
		self.relatedMedicationKnowledge = try [MedicationKnowledgeRelatedMedicationKnowledge](from: _container, forKeyIfPresent: .relatedMedicationKnowledge)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.synonym = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .synonym, auxiliaryKey: ._synonym)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administrationGuideline?.encode(on: &_container, forKey: .administrationGuideline)
		try amount?.encode(on: &_container, forKey: .amount)
		try associatedDefinition?.encode(on: &_container, forKey: .associatedDefinition)
		try associatedMedication?.encode(on: &_container, forKey: .associatedMedication)
		try author?.encode(on: &_container, forKey: .author)
		try clinicalUseIssue?.encode(on: &_container, forKey: .clinicalUseIssue)
		try code?.encode(on: &_container, forKey: .code)
		try cost?.encode(on: &_container, forKey: .cost)
		try device?.encode(on: &_container, forKey: .device)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try drugCharacteristic?.encode(on: &_container, forKey: .drugCharacteristic)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try intendedRoute?.encode(on: &_container, forKey: .intendedRoute)
		try kineticCharacteristic?.encode(on: &_container, forKey: .kineticCharacteristic)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try medicineClassification?.encode(on: &_container, forKey: .medicineClassification)
		try monitoringProgram?.encode(on: &_container, forKey: .monitoringProgram)
		try monograph?.encode(on: &_container, forKey: .monograph)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try preparationInstruction?.encode(on: &_container, forKey: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		try productType?.encode(on: &_container, forKey: .productType)
		try regulatory?.encode(on: &_container, forKey: .regulatory)
		try relatedMedicationKnowledge?.encode(on: &_container, forKey: .relatedMedicationKnowledge)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try synonym?.encode(on: &_container, forKey: .synonym, auxiliaryKey: ._synonym)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledge else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return administrationGuideline == _other.administrationGuideline
		    && amount == _other.amount
		    && associatedDefinition == _other.associatedDefinition
		    && associatedMedication == _other.associatedMedication
		    && author == _other.author
		    && clinicalUseIssue == _other.clinicalUseIssue
		    && code == _other.code
		    && cost == _other.cost
		    && device == _other.device
		    && doseForm == _other.doseForm
		    && drugCharacteristic == _other.drugCharacteristic
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && intendedRoute == _other.intendedRoute
		    && kineticCharacteristic == _other.kineticCharacteristic
		    && manufacturer == _other.manufacturer
		    && medicineClassification == _other.medicineClassification
		    && monitoringProgram == _other.monitoringProgram
		    && monograph == _other.monograph
		    && packaging == _other.packaging
		    && preparationInstruction == _other.preparationInstruction
		    && productType == _other.productType
		    && regulatory == _other.regulatory
		    && relatedMedicationKnowledge == _other.relatedMedicationKnowledge
		    && status == _other.status
		    && synonym == _other.synonym
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administrationGuideline)
		hasher.combine(amount)
		hasher.combine(associatedDefinition)
		hasher.combine(associatedMedication)
		hasher.combine(author)
		hasher.combine(clinicalUseIssue)
		hasher.combine(code)
		hasher.combine(cost)
		hasher.combine(device)
		hasher.combine(doseForm)
		hasher.combine(drugCharacteristic)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(intendedRoute)
		hasher.combine(kineticCharacteristic)
		hasher.combine(manufacturer)
		hasher.combine(medicineClassification)
		hasher.combine(monitoringProgram)
		hasher.combine(monograph)
		hasher.combine(packaging)
		hasher.combine(preparationInstruction)
		hasher.combine(productType)
		hasher.combine(regulatory)
		hasher.combine(relatedMedicationKnowledge)
		hasher.combine(status)
		hasher.combine(synonym)
	}
}

/**
 Guidelines or protocols for administration of the medication.
 
 Guidelines or protocols that are applicable for the administration of the medication.
 */
open class MedicationKnowledgeAdministrationGuideline: BackboneElement {
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [MedicationKnowledgeAdministrationGuidelineDosage]?
	
	/// Indication for use that apply to the specific administration guidelines
	public var indication: CodeableReference?
	
	/// Characteristics of the patient that are relevant to the administration guidelines
	public var patientCharacteristic: [MedicationKnowledgeAdministrationGuidelinePatientCharacteristic]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dosage: [MedicationKnowledgeAdministrationGuidelineDosage]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							indication: CodeableReference? = nil,
							modifierExtension: [Extension]? = nil,
							patientCharacteristic: [MedicationKnowledgeAdministrationGuidelinePatientCharacteristic]? = nil)
	{
		self.init()
		self.dosage = dosage
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.modifierExtension = modifierExtension
		self.patientCharacteristic = patientCharacteristic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dosage
		case indication
		case patientCharacteristic
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dosage = try [MedicationKnowledgeAdministrationGuidelineDosage](from: _container, forKeyIfPresent: .dosage)
		self.indication = try CodeableReference(from: _container, forKeyIfPresent: .indication)
		self.patientCharacteristic = try [MedicationKnowledgeAdministrationGuidelinePatientCharacteristic](from: _container, forKeyIfPresent: .patientCharacteristic)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dosage?.encode(on: &_container, forKey: .dosage)
		try indication?.encode(on: &_container, forKey: .indication)
		try patientCharacteristic?.encode(on: &_container, forKey: .patientCharacteristic)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeAdministrationGuideline else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dosage == _other.dosage
		    && indication == _other.indication
		    && patientCharacteristic == _other.patientCharacteristic
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dosage)
		hasher.combine(indication)
		hasher.combine(patientCharacteristic)
	}
}

/**
 Dosage for the medication for the specific guidelines.
 */
open class MedicationKnowledgeAdministrationGuidelineDosage: BackboneElement {
	
	/// Category of dosage for a medication
	public var type: CodeableConcept
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [Dosage]
	
	/// Designated initializer taking all required properties
	public init(dosage: [Dosage], type: CodeableConcept) {
		self.dosage = dosage
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dosage: [Dosage],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(dosage: dosage, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dosage
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dosage = try [Dosage](from: _container, forKey: .dosage)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dosage.encode(on: &_container, forKey: .dosage)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeAdministrationGuidelineDosage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dosage == _other.dosage
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dosage)
		hasher.combine(type)
	}
}

/**
 Characteristics of the patient that are relevant to the administration guidelines.
 
 Characteristics of the patient that are relevant to the administration guidelines (for example, height, weight, gender,
 etc.).
 */
open class MedicationKnowledgeAdministrationGuidelinePatientCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
	}
	
	/// Categorization of specific characteristic that is relevant to the administration guideline
	public var type: CodeableConcept
	
	/// The specific characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept,
							value: ValueX? = nil)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueCodeableConcept
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
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
		try type.encode(on: &_container, forKey: .type)
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
		guard let _other = _other as? MedicationKnowledgeAdministrationGuidelinePatientCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 The pricing of the medication.
 
 The price of the medication.
 */
open class MedicationKnowledgeCost: BackboneElement {
	
	/// All possible types for "cost[x]"
	public enum CostX: Hashable {
		case codeableConcept(CodeableConcept)
		case money(Money)
	}
	
	/// The date range for which the cost is effective
	public var effectiveDate: [Period]?
	
	/// The category of the cost information
	public var type: CodeableConcept
	
	/// The source or owner for the price information
	public var source: FHIRPrimitive<FHIRString>?
	
	/// The price or category of the cost of the medication
	/// One of `cost[x]`
	public var cost: CostX
	
	/// Designated initializer taking all required properties
	public init(cost: CostX, type: CodeableConcept) {
		self.cost = cost
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							cost: CostX,
							effectiveDate: [Period]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept)
	{
		self.init(cost: cost, type: type)
		self.effectiveDate = effectiveDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case costCodeableConcept
		case costMoney
		case effectiveDate
		case source; case _source
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.costCodeableConcept) || _container.contains(CodingKeys.costMoney) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.costCodeableConcept, CodingKeys.costMoney], debugDescription: "Must have at least one value for \"cost\" but have none"))
		}
		
		// Decode all our properties
		var _t_cost: CostX? = nil
		if let costMoney = try Money(from: _container, forKeyIfPresent: .costMoney) {
			if _t_cost != nil {
				throw DecodingError.dataCorruptedError(forKey: .costMoney, in: _container, debugDescription: "More than one value provided for \"cost\"")
			}
			_t_cost = .money(costMoney)
		}
		if let costCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .costCodeableConcept) {
			if _t_cost != nil {
				throw DecodingError.dataCorruptedError(forKey: .costCodeableConcept, in: _container, debugDescription: "More than one value provided for \"cost\"")
			}
			_t_cost = .codeableConcept(costCodeableConcept)
		}
		self.cost = _t_cost!
		self.effectiveDate = try [Period](from: _container, forKeyIfPresent: .effectiveDate)
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch cost {
			case .money(let _value):
				try _value.encode(on: &_container, forKey: .costMoney)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .costCodeableConcept)
			}
		
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeCost else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cost == _other.cost
		    && effectiveDate == _other.effectiveDate
		    && source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cost)
		hasher.combine(effectiveDate)
		hasher.combine(source)
		hasher.combine(type)
	}
}

/**
 Specifies descriptive properties of the medicine.
 
 Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
 */
open class MedicationKnowledgeDrugCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case base64Binary(FHIRPrimitive<Base64Binary>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Code specifying the type of characteristic of medication
	public var type: CodeableConcept?
	
	/// Description of the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil,
							value: ValueX? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueAttachment
		case valueBase64Binary; case _valueBase64Binary
		case valueCodeableConcept
		case valueQuantity
		case valueString; case _valueString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .base64Binary(valueBase64Binary)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type?.encode(on: &_container, forKey: .type)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .base64Binary(let _value):
				try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeDrugCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Active or inactive ingredient.
 
 Identifies a particular constituent of interest in the product.
 */
open class MedicationKnowledgeIngredient: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// Medication(s) or MedicinalProductIngredient(s) contained in the medication
	public var item: CodeableReference
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// Quantity of ingredient present
	/// One of `strength[x]`
	public var strength: StrengthX?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isActive: FHIRPrimitive<FHIRBool>? = nil,
							item: CodeableReference,
							modifierExtension: [Extension]? = nil,
							strength: StrengthX? = nil)
	{
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.isActive = isActive
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case isActive; case _isActive
		case item
		case strengthCodeableConcept
		case strengthQuantity
		case strengthRatio
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		self.item = try CodeableReference(from: _container, forKey: .item)
		var _t_strength: StrengthX? = nil
		if let strengthRatio = try Ratio(from: _container, forKeyIfPresent: .strengthRatio) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthRatio, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .ratio(strengthRatio)
		}
		if let strengthCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .strengthCodeableConcept) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthCodeableConcept, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .codeableConcept(strengthCodeableConcept)
		}
		if let strengthQuantity = try Quantity(from: _container, forKeyIfPresent: .strengthQuantity) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthQuantity, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .quantity(strengthQuantity)
		}
		self.strength = _t_strength
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		try item.encode(on: &_container, forKey: .item)
		if let _enum = strength {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .strengthRatio)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .strengthCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .strengthQuantity)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeIngredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return isActive == _other.isActive
		    && item == _other.item
		    && strength == _other.strength
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(isActive)
		hasher.combine(item)
		hasher.combine(strength)
	}
}

/**
 The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
 */
open class MedicationKnowledgeKineticCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case duration(Duration)
		case quantity(Quantity)
	}
	
	/// Code specifying the type of kinetics
	public var type: CodeableConcept?
	
	/// Description of the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil,
							value: ValueX? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueDuration
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		var _t_value: ValueX? = nil
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type?.encode(on: &_container, forKey: .type)
		if let _enum = value {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeKineticCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 Categorization of the medication within a formulary or classification system.
 */
open class MedicationKnowledgeMedicineClassification: BackboneElement {
	
	/// The type of category for the medication (for example, therapeutic classification, therapeutic sub-
	/// classification)
	public var type: CodeableConcept
	
	/// Specific category assigned to the medication
	public var classification: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							classification: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.classification = classification
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classification?.encode(on: &_container, forKey: .classification)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeMedicineClassification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return classification == _other.classification
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classification)
		hasher.combine(type)
	}
}

/**
 Program under which a medication is reviewed.
 
 The program under which the medication is reviewed.
 */
open class MedicationKnowledgeMonitoringProgram: BackboneElement {
	
	/// Type of program under which the medication is monitored
	public var type: CodeableConcept?
	
	/// Name of the reviewing program
	public var name: FHIRPrimitive<FHIRString>?
	
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
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeMonitoringProgram else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(type)
	}
}

/**
 Associated documentation about the medication.
 */
open class MedicationKnowledgeMonograph: BackboneElement {
	
	/// The category of medication document
	public var type: CodeableConcept?
	
	/// Associated documentation about the medication
	public var source: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: Reference? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case source
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try source?.encode(on: &_container, forKey: .source)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeMonograph else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(source)
		hasher.combine(type)
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
open class MedicationKnowledgePackaging: BackboneElement {
	
	/// Business identifier of the packaged medication
	public var identifier: Identifier?
	
	/// Cost of the packaged medication
	public var cost: MedicationKnowledgeCost?
	
	/// A code that defines the specific type of packaging that the medication can be found in
	public var type: CodeableConcept?
	
	/// The number of product units the package would contain if fully loaded
	public var quantity: Quantity?
	
	/// The device used to administer the medication (e.g. scoop, applicator, syringe)
	public var device: Reference?
	
	/// Material type of the package item
	public var material: CodeableConcept?
	
	/// Allows packages within packages
	public var packaging: [MedicationKnowledgePackaging]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							cost: MedicationKnowledgeCost? = nil,
							device: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							material: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							packaging: [MedicationKnowledgePackaging]? = nil,
							quantity: Quantity? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.cost = cost
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.material = material
		self.modifierExtension = modifierExtension
		self.packaging = packaging
		self.quantity = quantity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case device
		case identifier
		case material
		case packaging
		case quantity
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cost = try MedicationKnowledgeCost(from: _container, forKeyIfPresent: .cost)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
		self.packaging = try [MedicationKnowledgePackaging](from: _container, forKeyIfPresent: .packaging)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cost?.encode(on: &_container, forKey: .cost)
		try device?.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try material?.encode(on: &_container, forKey: .material)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgePackaging else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return cost == _other.cost
		    && device == _other.device
		    && identifier == _other.identifier
		    && material == _other.material
		    && packaging == _other.packaging
		    && quantity == _other.quantity
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cost)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(material)
		hasher.combine(packaging)
		hasher.combine(quantity)
		hasher.combine(type)
	}
}

/**
 Regulatory information about a medication.
 */
open class MedicationKnowledgeRegulatory: BackboneElement {
	
	/// Specifies the authority of the regulation
	public var regulatoryAuthority: Reference
	
	/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective
	public var substitution: [MedicationKnowledgeRegulatorySubstitution]?
	
	/// Specifies the schedule of a medication in jurisdiction
	public var schedule: [CodeableConcept]?
	
	/// The maximum number of units of the medication that can be dispensed in a period
	public var maxDispense: MedicationKnowledgeRegulatoryMaxDispense?
	
	/// Designated initializer taking all required properties
	public init(regulatoryAuthority: Reference) {
		self.regulatoryAuthority = regulatoryAuthority
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							maxDispense: MedicationKnowledgeRegulatoryMaxDispense? = nil,
							modifierExtension: [Extension]? = nil,
							regulatoryAuthority: Reference,
							schedule: [CodeableConcept]? = nil,
							substitution: [MedicationKnowledgeRegulatorySubstitution]? = nil)
	{
		self.init(regulatoryAuthority: regulatoryAuthority)
		self.`extension` = `extension`
		self.id = id
		self.maxDispense = maxDispense
		self.modifierExtension = modifierExtension
		self.schedule = schedule
		self.substitution = substitution
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case maxDispense
		case regulatoryAuthority
		case schedule
		case substitution
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.maxDispense = try MedicationKnowledgeRegulatoryMaxDispense(from: _container, forKeyIfPresent: .maxDispense)
		self.regulatoryAuthority = try Reference(from: _container, forKey: .regulatoryAuthority)
		self.schedule = try [CodeableConcept](from: _container, forKeyIfPresent: .schedule)
		self.substitution = try [MedicationKnowledgeRegulatorySubstitution](from: _container, forKeyIfPresent: .substitution)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try maxDispense?.encode(on: &_container, forKey: .maxDispense)
		try regulatoryAuthority.encode(on: &_container, forKey: .regulatoryAuthority)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeRegulatory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return maxDispense == _other.maxDispense
		    && regulatoryAuthority == _other.regulatoryAuthority
		    && schedule == _other.schedule
		    && substitution == _other.substitution
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(maxDispense)
		hasher.combine(regulatoryAuthority)
		hasher.combine(schedule)
		hasher.combine(substitution)
	}
}

/**
 The maximum number of units of the medication that can be dispensed in a period.
 */
open class MedicationKnowledgeRegulatoryMaxDispense: BackboneElement {
	
	/// The maximum number of units of the medication that can be dispensed
	public var quantity: Quantity
	
	/// The period that applies to the maximum number of units
	public var period: Duration?
	
	/// Designated initializer taking all required properties
	public init(quantity: Quantity) {
		self.quantity = quantity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Duration? = nil,
							quantity: Quantity)
	{
		self.init(quantity: quantity)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case quantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.period = try Duration(from: _container, forKeyIfPresent: .period)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try period?.encode(on: &_container, forKey: .period)
		try quantity.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeRegulatoryMaxDispense else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return period == _other.period
		    && quantity == _other.quantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(quantity)
	}
}

/**
 Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
 */
open class MedicationKnowledgeRegulatorySubstitution: BackboneElement {
	
	/// Specifies the type of substitution allowed
	public var type: CodeableConcept
	
	/// Specifies if regulation allows for changes in the medication when dispensing
	public var allowed: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer taking all required properties
	public init(allowed: FHIRPrimitive<FHIRBool>, type: CodeableConcept) {
		self.allowed = allowed
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allowed: FHIRPrimitive<FHIRBool>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(allowed: allowed, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowed; case _allowed
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allowed = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .allowed, auxiliaryKey: ._allowed)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allowed.encode(on: &_container, forKey: .allowed, auxiliaryKey: ._allowed)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeRegulatorySubstitution else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allowed == _other.allowed
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allowed)
		hasher.combine(type)
	}
}

/**
 Associated or related medication information.
 
 Associated or related medications. For example, if the medication is a branded product (e.g. Crestor), this is the
 Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin), this would link to a
 branded product (e.g. Crestor.
 */
open class MedicationKnowledgeRelatedMedicationKnowledge: BackboneElement {
	
	/// Category of medicationKnowledge
	public var type: CodeableConcept
	
	/// Associated documentation about the associated medication knowledge
	public var reference: [Reference]
	
	/// Designated initializer taking all required properties
	public init(reference: [Reference], type: CodeableConcept) {
		self.reference = reference
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: [Reference],
							type: CodeableConcept)
	{
		self.init(reference: reference, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reference = try [Reference](from: _container, forKey: .reference)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reference.encode(on: &_container, forKey: .reference)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeRelatedMedicationKnowledge else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reference == _other.reference
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reference)
		hasher.combine(type)
	}
}
