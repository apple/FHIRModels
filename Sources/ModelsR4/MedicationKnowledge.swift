//
//  MedicationKnowledge.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationKnowledge)
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
	
	/// Code that identifies this medication
	public var code: CodeableConcept?
	
	/// A code to indicate if the medication is in active use.  The status refers to the validity about the information
	/// of the medication and not to its medicinal properties.
	public var status: FHIRPrimitive<MedicationKnowledgeStatusCodes>?
	
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
	
	/// Category of the medication or product
	public var productType: [CodeableConcept]?
	
	/// Associated documentation about the medication
	public var monograph: [MedicationKnowledgeMonograph]?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationKnowledgeIngredient]?
	
	/// The instructions for preparing the medication
	public var preparationInstruction: FHIRPrimitive<FHIRString>?
	
	/// The intended or approved route of administration
	public var intendedRoute: [CodeableConcept]?
	
	/// The pricing of the medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// Program under which a medication is reviewed
	public var monitoringProgram: [MedicationKnowledgeMonitoringProgram]?
	
	/// Guidelines for administration of the medication
	public var administrationGuidelines: [MedicationKnowledgeAdministrationGuidelines]?
	
	/// Categorization of the medication within a formulary or classification system
	public var medicineClassification: [MedicationKnowledgeMedicineClassification]?
	
	/// Details about packaged medications
	public var packaging: MedicationKnowledgePackaging?
	
	/// Specifies descriptive properties of the medicine
	public var drugCharacteristic: [MedicationKnowledgeDrugCharacteristic]?
	
	/// Potential clinical issue with or between medication(s)
	public var contraindication: [Reference]?
	
	/// Regulatory information about a medication
	public var regulatory: [MedicationKnowledgeRegulatory]?
	
	/// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body
	public var kinetics: [MedicationKnowledgeKinetics]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							administrationGuidelines: [MedicationKnowledgeAdministrationGuidelines]? = nil,
							amount: Quantity? = nil,
							associatedMedication: [Reference]? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							contraindication: [Reference]? = nil,
							cost: [MedicationKnowledgeCost]? = nil,
							doseForm: CodeableConcept? = nil,
							drugCharacteristic: [MedicationKnowledgeDrugCharacteristic]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							ingredient: [MedicationKnowledgeIngredient]? = nil,
							intendedRoute: [CodeableConcept]? = nil,
							kinetics: [MedicationKnowledgeKinetics]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: Reference? = nil,
							medicineClassification: [MedicationKnowledgeMedicineClassification]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							monitoringProgram: [MedicationKnowledgeMonitoringProgram]? = nil,
							monograph: [MedicationKnowledgeMonograph]? = nil,
							packaging: MedicationKnowledgePackaging? = nil,
							preparationInstruction: FHIRPrimitive<FHIRString>? = nil,
							productType: [CodeableConcept]? = nil,
							regulatory: [MedicationKnowledgeRegulatory]? = nil,
							relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]? = nil,
							status: FHIRPrimitive<MedicationKnowledgeStatusCodes>? = nil,
							synonym: [FHIRPrimitive<FHIRString>]? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.administrationGuidelines = administrationGuidelines
		self.amount = amount
		self.associatedMedication = associatedMedication
		self.code = code
		self.contained = contained
		self.contraindication = contraindication
		self.cost = cost
		self.doseForm = doseForm
		self.drugCharacteristic = drugCharacteristic
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.intendedRoute = intendedRoute
		self.kinetics = kinetics
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
		case administrationGuidelines
		case amount
		case associatedMedication
		case code
		case contraindication
		case cost
		case doseForm
		case drugCharacteristic
		case ingredient
		case intendedRoute
		case kinetics
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
		self.administrationGuidelines = try [MedicationKnowledgeAdministrationGuidelines](from: _container, forKeyIfPresent: .administrationGuidelines)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.associatedMedication = try [Reference](from: _container, forKeyIfPresent: .associatedMedication)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contraindication = try [Reference](from: _container, forKeyIfPresent: .contraindication)
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.drugCharacteristic = try [MedicationKnowledgeDrugCharacteristic](from: _container, forKeyIfPresent: .drugCharacteristic)
		self.ingredient = try [MedicationKnowledgeIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.intendedRoute = try [CodeableConcept](from: _container, forKeyIfPresent: .intendedRoute)
		self.kinetics = try [MedicationKnowledgeKinetics](from: _container, forKeyIfPresent: .kinetics)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.medicineClassification = try [MedicationKnowledgeMedicineClassification](from: _container, forKeyIfPresent: .medicineClassification)
		self.monitoringProgram = try [MedicationKnowledgeMonitoringProgram](from: _container, forKeyIfPresent: .monitoringProgram)
		self.monograph = try [MedicationKnowledgeMonograph](from: _container, forKeyIfPresent: .monograph)
		self.packaging = try MedicationKnowledgePackaging(from: _container, forKeyIfPresent: .packaging)
		self.preparationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		self.productType = try [CodeableConcept](from: _container, forKeyIfPresent: .productType)
		self.regulatory = try [MedicationKnowledgeRegulatory](from: _container, forKeyIfPresent: .regulatory)
		self.relatedMedicationKnowledge = try [MedicationKnowledgeRelatedMedicationKnowledge](from: _container, forKeyIfPresent: .relatedMedicationKnowledge)
		self.status = try FHIRPrimitive<MedicationKnowledgeStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.synonym = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .synonym, auxiliaryKey: ._synonym)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administrationGuidelines?.encode(on: &_container, forKey: .administrationGuidelines)
		try amount?.encode(on: &_container, forKey: .amount)
		try associatedMedication?.encode(on: &_container, forKey: .associatedMedication)
		try code?.encode(on: &_container, forKey: .code)
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try cost?.encode(on: &_container, forKey: .cost)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try drugCharacteristic?.encode(on: &_container, forKey: .drugCharacteristic)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try intendedRoute?.encode(on: &_container, forKey: .intendedRoute)
		try kinetics?.encode(on: &_container, forKey: .kinetics)
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
		return administrationGuidelines == _other.administrationGuidelines
		    && amount == _other.amount
		    && associatedMedication == _other.associatedMedication
		    && code == _other.code
		    && contraindication == _other.contraindication
		    && cost == _other.cost
		    && doseForm == _other.doseForm
		    && drugCharacteristic == _other.drugCharacteristic
		    && ingredient == _other.ingredient
		    && intendedRoute == _other.intendedRoute
		    && kinetics == _other.kinetics
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
		hasher.combine(administrationGuidelines)
		hasher.combine(amount)
		hasher.combine(associatedMedication)
		hasher.combine(code)
		hasher.combine(contraindication)
		hasher.combine(cost)
		hasher.combine(doseForm)
		hasher.combine(drugCharacteristic)
		hasher.combine(ingredient)
		hasher.combine(intendedRoute)
		hasher.combine(kinetics)
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
 Guidelines for administration of the medication.
 
 Guidelines for the administration of the medication.
 */
open class MedicationKnowledgeAdministrationGuidelines: BackboneElement {
	
	/// All possible types for "indication[x]"
	public enum IndicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [MedicationKnowledgeAdministrationGuidelinesDosage]?
	
	/// Indication for use that apply to the specific administration guidelines
	/// One of `indication[x]`
	public var indication: IndicationX?
	
	/// Characteristics of the patient that are relevant to the administration guidelines
	public var patientCharacteristics: [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dosage: [MedicationKnowledgeAdministrationGuidelinesDosage]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							indication: IndicationX? = nil,
							modifierExtension: [Extension]? = nil,
							patientCharacteristics: [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics]? = nil)
	{
		self.init()
		self.dosage = dosage
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.modifierExtension = modifierExtension
		self.patientCharacteristics = patientCharacteristics
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dosage
		case indicationCodeableConcept
		case indicationReference
		case patientCharacteristics
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dosage = try [MedicationKnowledgeAdministrationGuidelinesDosage](from: _container, forKeyIfPresent: .dosage)
		var _t_indication: IndicationX? = nil
		if let indicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .indicationCodeableConcept) {
			if _t_indication != nil {
				throw DecodingError.dataCorruptedError(forKey: .indicationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"indication\"")
			}
			_t_indication = .codeableConcept(indicationCodeableConcept)
		}
		if let indicationReference = try Reference(from: _container, forKeyIfPresent: .indicationReference) {
			if _t_indication != nil {
				throw DecodingError.dataCorruptedError(forKey: .indicationReference, in: _container, debugDescription: "More than one value provided for \"indication\"")
			}
			_t_indication = .reference(indicationReference)
		}
		self.indication = _t_indication
		self.patientCharacteristics = try [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics](from: _container, forKeyIfPresent: .patientCharacteristics)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dosage?.encode(on: &_container, forKey: .dosage)
		if let _enum = indication {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .indicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .indicationReference)
			}
		}
		try patientCharacteristics?.encode(on: &_container, forKey: .patientCharacteristics)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeAdministrationGuidelines else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dosage == _other.dosage
		    && indication == _other.indication
		    && patientCharacteristics == _other.patientCharacteristics
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dosage)
		hasher.combine(indication)
		hasher.combine(patientCharacteristics)
	}
}

/**
 Dosage for the medication for the specific guidelines.
 */
open class MedicationKnowledgeAdministrationGuidelinesDosage: BackboneElement {
	
	/// Type of dosage
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
		guard let _other = _other as? MedicationKnowledgeAdministrationGuidelinesDosage else {
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
open class MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics: BackboneElement {
	
	/// All possible types for "characteristic[x]"
	public enum CharacteristicX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
	}
	
	/// Specific characteristic that is relevant to the administration guideline
	/// One of `characteristic[x]`
	public var characteristic: CharacteristicX
	
	/// The specific characteristic
	public var value: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(characteristic: CharacteristicX) {
		self.characteristic = characteristic
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							characteristic: CharacteristicX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init(characteristic: characteristic)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristicCodeableConcept
		case characteristicQuantity
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.characteristicCodeableConcept) || _container.contains(CodingKeys.characteristicQuantity) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.characteristicCodeableConcept, CodingKeys.characteristicQuantity], debugDescription: "Must have at least one value for \"characteristic\" but have none"))
		}
		
		// Decode all our properties
		var _t_characteristic: CharacteristicX? = nil
		if let characteristicCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .characteristicCodeableConcept) {
			if _t_characteristic != nil {
				throw DecodingError.dataCorruptedError(forKey: .characteristicCodeableConcept, in: _container, debugDescription: "More than one value provided for \"characteristic\"")
			}
			_t_characteristic = .codeableConcept(characteristicCodeableConcept)
		}
		if let characteristicQuantity = try Quantity(from: _container, forKeyIfPresent: .characteristicQuantity) {
			if _t_characteristic != nil {
				throw DecodingError.dataCorruptedError(forKey: .characteristicQuantity, in: _container, debugDescription: "More than one value provided for \"characteristic\"")
			}
			_t_characteristic = .quantity(characteristicQuantity)
		}
		self.characteristic = _t_characteristic!
		self.value = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch characteristic {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .characteristicCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .characteristicQuantity)
			}
		
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return characteristic == _other.characteristic
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(characteristic)
		hasher.combine(value)
	}
}

/**
 The pricing of the medication.
 
 The price of the medication.
 */
open class MedicationKnowledgeCost: BackboneElement {
	
	/// The category of the cost information
	public var type: CodeableConcept
	
	/// The source or owner for the price information
	public var source: FHIRPrimitive<FHIRString>?
	
	/// The price of the medication
	public var cost: Money
	
	/// Designated initializer taking all required properties
	public init(cost: Money, type: CodeableConcept) {
		self.cost = cost
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							cost: Money,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept)
	{
		self.init(cost: cost, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case source; case _source
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cost = try Money(from: _container, forKey: .cost)
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cost.encode(on: &_container, forKey: .cost)
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
		    && source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cost)
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
	
	/// All possible types for "item[x]"
	public enum ItemX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Medication(s) or substance(s) contained in the medication
	/// One of `item[x]`
	public var item: ItemX
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// Quantity of ingredient present
	public var strength: Ratio?
	
	/// Designated initializer taking all required properties
	public init(item: ItemX) {
		self.item = item
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isActive: FHIRPrimitive<FHIRBool>? = nil,
							item: ItemX,
							modifierExtension: [Extension]? = nil,
							strength: Ratio? = nil)
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
		case itemCodeableConcept
		case itemReference
		case strength
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.itemCodeableConcept) || _container.contains(CodingKeys.itemReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.itemCodeableConcept, CodingKeys.itemReference], debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		
		// Decode all our properties
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemCodeableConcept, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		self.item = _t_item!
		self.strength = try Ratio(from: _container, forKeyIfPresent: .strength)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		
			switch item {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .itemCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .itemReference)
			}
		
		try strength?.encode(on: &_container, forKey: .strength)
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
open class MedicationKnowledgeKinetics: BackboneElement {
	
	/// The drug concentration measured at certain discrete points in time
	public var areaUnderCurve: [Quantity]?
	
	/// The median lethal dose of a drug
	public var lethalDose50: [Quantity]?
	
	/// Time required for concentration in the body to decrease by half
	public var halfLifePeriod: Duration?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							areaUnderCurve: [Quantity]? = nil,
							`extension`: [Extension]? = nil,
							halfLifePeriod: Duration? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lethalDose50: [Quantity]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.areaUnderCurve = areaUnderCurve
		self.`extension` = `extension`
		self.halfLifePeriod = halfLifePeriod
		self.id = id
		self.lethalDose50 = lethalDose50
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case areaUnderCurve
		case halfLifePeriod
		case lethalDose50
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.areaUnderCurve = try [Quantity](from: _container, forKeyIfPresent: .areaUnderCurve)
		self.halfLifePeriod = try Duration(from: _container, forKeyIfPresent: .halfLifePeriod)
		self.lethalDose50 = try [Quantity](from: _container, forKeyIfPresent: .lethalDose50)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try areaUnderCurve?.encode(on: &_container, forKey: .areaUnderCurve)
		try halfLifePeriod?.encode(on: &_container, forKey: .halfLifePeriod)
		try lethalDose50?.encode(on: &_container, forKey: .lethalDose50)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeKinetics else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return areaUnderCurve == _other.areaUnderCurve
		    && halfLifePeriod == _other.halfLifePeriod
		    && lethalDose50 == _other.lethalDose50
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(areaUnderCurve)
		hasher.combine(halfLifePeriod)
		hasher.combine(lethalDose50)
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
	
	/// A code that defines the specific type of packaging that the medication can be found in
	public var type: CodeableConcept?
	
	/// The number of product units the package would contain if fully loaded
	public var quantity: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case quantity
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		return quantity == _other.quantity
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
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
	public var schedule: [MedicationKnowledgeRegulatorySchedule]?
	
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
							schedule: [MedicationKnowledgeRegulatorySchedule]? = nil,
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
		self.schedule = try [MedicationKnowledgeRegulatorySchedule](from: _container, forKeyIfPresent: .schedule)
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
 Specifies the schedule of a medication in jurisdiction.
 */
open class MedicationKnowledgeRegulatorySchedule: BackboneElement {
	
	/// Specifies the specific drug schedule
	public var schedule: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(schedule: CodeableConcept) {
		self.schedule = schedule
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							schedule: CodeableConcept)
	{
		self.init(schedule: schedule)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case schedule
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.schedule = try CodeableConcept(from: _container, forKey: .schedule)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try schedule.encode(on: &_container, forKey: .schedule)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeRegulatorySchedule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return schedule == _other.schedule
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(schedule)
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
 
 Associated or related knowledge about a medication.
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
