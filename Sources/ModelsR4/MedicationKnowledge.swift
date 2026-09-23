//
//  MedicationKnowledge.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationKnowledge)
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
 Definition of Medication Knowledge.
 
 Information about a medication that is used to support knowledge.
 */
public struct MedicationKnowledge: DomainResource {
	
	public static let resourceType: ResourceType = .medicationKnowledge
	
	/// Guidelines for administration of the medication
	public var administrationGuidelines: [MedicationKnowledgeAdministrationGuidelines]?
	
	/// Amount of drug in package
	public var amount: Quantity?
	
	/// A medication resource that is associated with this medication
	public var associatedMedication: [Reference]?
	
	/// Code that identifies this medication
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Potential clinical issue with or between medication(s)
	public var contraindication: [Reference]?
	
	/// The pricing of the medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// Specifies descriptive properties of the medicine
	public var drugCharacteristic: [MedicationKnowledgeDrugCharacteristic]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationKnowledgeIngredient]?
	
	/// The intended or approved route of administration
	public var intendedRoute: [CodeableConcept]?
	
	/// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body
	public var kinetics: [MedicationKnowledgeKinetics]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// Categorization of the medication within a formulary or classification system
	public var medicineClassification: [MedicationKnowledgeMedicineClassification]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Program under which a medication is reviewed
	public var monitoringProgram: [MedicationKnowledgeMonitoringProgram]?
	
	/// Associated documentation about the medication
	public var monograph: [MedicationKnowledgeMonograph]?
	
	/// Details about packaged medications
	public var packaging: MedicationKnowledgePackaging?
	
	/// The instructions for preparing the medication
	public var preparationInstruction: FHIRPrimitive<FHIRString>?
	
	/// Category of the medication or product
	public var productType: [CodeableConcept]?
	
	/// Regulatory information about a medication
	public var regulatory: [MedicationKnowledgeRegulatory]?
	
	/// Associated or related medication information
	public var relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]?
	
	/// A code to indicate if the medication is in active use.  The status refers to the validity about the information
	/// of the medication and not to its medicinal properties.
	public var status: FHIRPrimitive<MedicationKnowledgeStatusCodes>?
	
	/// Additional names for a medication
	public var synonym: [FHIRPrimitive<FHIRString>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		case resourceType
		case administrationGuidelines
		case amount
		case associatedMedication
		case code
		case contained
		case contraindication
		case cost
		case doseForm
		case drugCharacteristic
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case ingredient
		case intendedRoute
		case kinetics
		case language; case _language
		case manufacturer
		case medicineClassification
		case meta
		case modifierExtension
		case monitoringProgram
		case monograph
		case packaging
		case preparationInstruction; case _preparationInstruction
		case productType
		case regulatory
		case relatedMedicationKnowledge
		case status; case _status
		case synonym; case _synonym
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.administrationGuidelines = try [MedicationKnowledgeAdministrationGuidelines](from: _container, forKeyIfPresent: .administrationGuidelines)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.associatedMedication = try [Reference](from: _container, forKeyIfPresent: .associatedMedication)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contraindication = try [Reference](from: _container, forKeyIfPresent: .contraindication)
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.drugCharacteristic = try [MedicationKnowledgeDrugCharacteristic](from: _container, forKeyIfPresent: .drugCharacteristic)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [MedicationKnowledgeIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.intendedRoute = try [CodeableConcept](from: _container, forKeyIfPresent: .intendedRoute)
		self.kinetics = try [MedicationKnowledgeKinetics](from: _container, forKeyIfPresent: .kinetics)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.medicineClassification = try [MedicationKnowledgeMedicineClassification](from: _container, forKeyIfPresent: .medicineClassification)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.monitoringProgram = try [MedicationKnowledgeMonitoringProgram](from: _container, forKeyIfPresent: .monitoringProgram)
		self.monograph = try [MedicationKnowledgeMonograph](from: _container, forKeyIfPresent: .monograph)
		self.packaging = try MedicationKnowledgePackaging(from: _container, forKeyIfPresent: .packaging)
		self.preparationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		self.productType = try [CodeableConcept](from: _container, forKeyIfPresent: .productType)
		self.regulatory = try [MedicationKnowledgeRegulatory](from: _container, forKeyIfPresent: .regulatory)
		self.relatedMedicationKnowledge = try [MedicationKnowledgeRelatedMedicationKnowledge](from: _container, forKeyIfPresent: .relatedMedicationKnowledge)
		self.status = try FHIRPrimitive<MedicationKnowledgeStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.synonym = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .synonym, auxiliaryKey: ._synonym)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try administrationGuidelines?.encode(on: &_container, forKey: .administrationGuidelines)
		try amount?.encode(on: &_container, forKey: .amount)
		try associatedMedication?.encode(on: &_container, forKey: .associatedMedication)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try cost?.encode(on: &_container, forKey: .cost)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try drugCharacteristic?.encode(on: &_container, forKey: .drugCharacteristic)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try intendedRoute?.encode(on: &_container, forKey: .intendedRoute)
		try kinetics?.encode(on: &_container, forKey: .kinetics)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try medicineClassification?.encode(on: &_container, forKey: .medicineClassification)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try monitoringProgram?.encode(on: &_container, forKey: .monitoringProgram)
		try monograph?.encode(on: &_container, forKey: .monograph)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try preparationInstruction?.encode(on: &_container, forKey: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		try productType?.encode(on: &_container, forKey: .productType)
		try regulatory?.encode(on: &_container, forKey: .regulatory)
		try relatedMedicationKnowledge?.encode(on: &_container, forKey: .relatedMedicationKnowledge)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try synonym?.encode(on: &_container, forKey: .synonym, auxiliaryKey: ._synonym)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Guidelines for administration of the medication.
 
 Guidelines for the administration of the medication.
 */
public struct MedicationKnowledgeAdministrationGuidelines: BackboneElement {
	
	/// All possible types for "indication[x]"
	public enum IndicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [MedicationKnowledgeAdministrationGuidelinesDosage]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Indication for use that apply to the specific administration guidelines
	/// One of `indication[x]`
	public var indication: IndicationX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Characteristics of the patient that are relevant to the administration guidelines
	public var patientCharacteristics: [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics]?
	
	/// Designated initializer
	public init(
		dosage: [MedicationKnowledgeAdministrationGuidelinesDosage]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: IndicationX? = nil,
		modifierExtension: [Extension]? = nil,
		patientCharacteristics: [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case indicationCodeableConcept
		case indicationReference
		case modifierExtension
		case patientCharacteristics
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dosage = try [MedicationKnowledgeAdministrationGuidelinesDosage](from: _container, forKeyIfPresent: .dosage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.indication = try Self._decodeIndication(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patientCharacteristics = try [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics](from: _container, forKeyIfPresent: .patientCharacteristics)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = indication {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .indicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .indicationReference)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patientCharacteristics?.encode(on: &_container, forKey: .patientCharacteristics)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeIndication(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> IndicationX? {
		var _t_indication: IndicationX? = nil
		if let indicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .indicationCodeableConcept) {
			_t_indication = .codeableConcept(indicationCodeableConcept)
		}
		if let indicationReference = try Reference(from: _container, forKeyIfPresent: .indicationReference) {
			if _t_indication != nil {
				throw DecodingError.dataCorruptedError(forKey: .indicationReference, in: _container, debugDescription: "More than one value provided for \"indication\"")
			}
			_t_indication = .reference(indicationReference)
		}
		return _t_indication
	}
}

/**
 Dosage for the medication for the specific guidelines.
 */
public struct MedicationKnowledgeAdministrationGuidelinesDosage: BackboneElement {
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [Dosage]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of dosage
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		dosage: [Dosage],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.dosage = dosage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dosage
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dosage = try [Dosage](from: _container, forKey: .dosage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dosage.encode(on: &_container, forKey: .dosage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Characteristics of the patient that are relevant to the administration guidelines.
 
 Characteristics of the patient that are relevant to the administration guidelines (for example, height, weight, gender,
 etc.).
 */
public struct MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics: BackboneElement {
	
	/// All possible types for "characteristic[x]"
	public enum CharacteristicX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
	}
	
	/// Specific characteristic that is relevant to the administration guideline
	/// One of `characteristic[x]`
	public var characteristic: CharacteristicX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The specific characteristic
	public var value: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		characteristic: CharacteristicX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.characteristic = characteristic
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristicCodeableConcept
		case characteristicQuantity
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.characteristic = try Self._decodeCharacteristic(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch characteristic {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .characteristicCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .characteristicQuantity)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCharacteristic(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CharacteristicX {
		var _t_characteristic: CharacteristicX? = nil
		if let characteristicCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .characteristicCodeableConcept) {
			_t_characteristic = .codeableConcept(characteristicCodeableConcept)
		}
		if let characteristicQuantity = try Quantity(from: _container, forKeyIfPresent: .characteristicQuantity) {
			if _t_characteristic != nil {
				throw DecodingError.dataCorruptedError(forKey: .characteristicQuantity, in: _container, debugDescription: "More than one value provided for \"characteristic\"")
			}
			_t_characteristic = .quantity(characteristicQuantity)
		}
		guard let _t_characteristic else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.characteristicQuantity)
			throw DecodingError.valueNotFound(CharacteristicX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"characteristic\" but have none"))
		}
		return _t_characteristic
	}
}

/**
 The pricing of the medication.
 
 The price of the medication.
 */
public struct MedicationKnowledgeCost: BackboneElement {
	
	/// The price of the medication
	public var cost: Money
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The source or owner for the price information
	public var source: FHIRPrimitive<FHIRString>?
	
	/// The category of the cost information
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		cost: Money,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept
	) {
		self.cost = cost
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source; case _source
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.cost = try Money(from: _container, forKey: .cost)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .source, auxiliaryKey: ._source)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try cost.encode(on: &_container, forKey: .cost)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Specifies descriptive properties of the medicine.
 
 Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
 */
public struct MedicationKnowledgeDrugCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case base64Binary(FHIRPrimitive<Base64Binary>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code specifying the type of characteristic of medication
	public var type: CodeableConcept?
	
	/// Description of the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case valueBase64Binary; case _valueBase64Binary
		case valueCodeableConcept
		case valueQuantity
		case valueString; case _valueString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		if let _enum = value {
		switch _enum {
		case .base64Binary(let _value):
			try _value.encode(on: &_container, forKey: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			_t_value = .base64Binary(valueBase64Binary)
		}
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
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		return _t_value
	}
}

/**
 Active or inactive ingredient.
 
 Identifies a particular constituent of interest in the product.
 */
public struct MedicationKnowledgeIngredient: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// Medication(s) or substance(s) contained in the medication
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Quantity of ingredient present
	public var strength: Ratio?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isActive: FHIRPrimitive<FHIRBool>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil,
		strength: Ratio? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.isActive = isActive
		self.item = item
		self.modifierExtension = modifierExtension
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case isActive; case _isActive
		case itemCodeableConcept
		case itemReference
		case modifierExtension
		case strength
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try Ratio(from: _container, forKeyIfPresent: .strength)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try strength?.encode(on: &_container, forKey: .strength)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
 */
public struct MedicationKnowledgeKinetics: BackboneElement {
	
	/// The drug concentration measured at certain discrete points in time
	public var areaUnderCurve: [Quantity]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Time required for concentration in the body to decrease by half
	public var halfLifePeriod: Duration?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The median lethal dose of a drug
	public var lethalDose50: [Quantity]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		areaUnderCurve: [Quantity]? = nil,
		`extension`: [Extension]? = nil,
		halfLifePeriod: Duration? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lethalDose50: [Quantity]? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case halfLifePeriod
		case id; case _id
		case lethalDose50
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.areaUnderCurve = try [Quantity](from: _container, forKeyIfPresent: .areaUnderCurve)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.halfLifePeriod = try Duration(from: _container, forKeyIfPresent: .halfLifePeriod)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lethalDose50 = try [Quantity](from: _container, forKeyIfPresent: .lethalDose50)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try areaUnderCurve?.encode(on: &_container, forKey: .areaUnderCurve)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try halfLifePeriod?.encode(on: &_container, forKey: .halfLifePeriod)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lethalDose50?.encode(on: &_container, forKey: .lethalDose50)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Categorization of the medication within a formulary or classification system.
 */
public struct MedicationKnowledgeMedicineClassification: BackboneElement {
	
	/// Specific category assigned to the medication
	public var classification: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of category for the medication (for example, therapeutic classification, therapeutic sub-
	/// classification)
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		classification: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.classification = classification
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classification?.encode(on: &_container, forKey: .classification)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Program under which a medication is reviewed.
 
 The program under which the medication is reviewed.
 */
public struct MedicationKnowledgeMonitoringProgram: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of the reviewing program
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Type of program under which the medication is monitored
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case type
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
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Associated documentation about the medication.
 */
public struct MedicationKnowledgeMonograph: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Associated documentation about the medication
	public var source: Reference?
	
	/// The category of medication document
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: Reference? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case source
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
public struct MedicationKnowledgePackaging: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The number of product units the package would contain if fully loaded
	public var quantity: Quantity?
	
	/// A code that defines the specific type of packaging that the medication can be found in
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case quantity
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Regulatory information about a medication.
 */
public struct MedicationKnowledgeRegulatory: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The maximum number of units of the medication that can be dispensed in a period
	public var maxDispense: MedicationKnowledgeRegulatoryMaxDispense?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specifies the authority of the regulation
	public var regulatoryAuthority: Reference
	
	/// Specifies the schedule of a medication in jurisdiction
	public var schedule: [MedicationKnowledgeRegulatorySchedule]?
	
	/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective
	public var substitution: [MedicationKnowledgeRegulatorySubstitution]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDispense: MedicationKnowledgeRegulatoryMaxDispense? = nil,
		modifierExtension: [Extension]? = nil,
		regulatoryAuthority: Reference,
		schedule: [MedicationKnowledgeRegulatorySchedule]? = nil,
		substitution: [MedicationKnowledgeRegulatorySubstitution]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.maxDispense = maxDispense
		self.modifierExtension = modifierExtension
		self.regulatoryAuthority = regulatoryAuthority
		self.schedule = schedule
		self.substitution = substitution
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case maxDispense
		case modifierExtension
		case regulatoryAuthority
		case schedule
		case substitution
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxDispense = try MedicationKnowledgeRegulatoryMaxDispense(from: _container, forKeyIfPresent: .maxDispense)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.regulatoryAuthority = try Reference(from: _container, forKey: .regulatoryAuthority)
		self.schedule = try [MedicationKnowledgeRegulatorySchedule](from: _container, forKeyIfPresent: .schedule)
		self.substitution = try [MedicationKnowledgeRegulatorySubstitution](from: _container, forKeyIfPresent: .substitution)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxDispense?.encode(on: &_container, forKey: .maxDispense)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try regulatoryAuthority.encode(on: &_container, forKey: .regulatoryAuthority)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try substitution?.encode(on: &_container, forKey: .substitution)
	}
}

/**
 The maximum number of units of the medication that can be dispensed in a period.
 */
public struct MedicationKnowledgeRegulatoryMaxDispense: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The period that applies to the maximum number of units
	public var period: Duration?
	
	/// The maximum number of units of the medication that can be dispensed
	public var quantity: Quantity
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Duration? = nil,
		quantity: Quantity
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case quantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Duration(from: _container, forKeyIfPresent: .period)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try quantity.encode(on: &_container, forKey: .quantity)
	}
}

/**
 Specifies the schedule of a medication in jurisdiction.
 */
public struct MedicationKnowledgeRegulatorySchedule: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specifies the specific drug schedule
	public var schedule: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		schedule: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case schedule
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.schedule = try CodeableConcept(from: _container, forKey: .schedule)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try schedule.encode(on: &_container, forKey: .schedule)
	}
}

/**
 Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
 */
public struct MedicationKnowledgeRegulatorySubstitution: BackboneElement {
	
	/// Specifies if regulation allows for changes in the medication when dispensing
	public var allowed: FHIRPrimitive<FHIRBool>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specifies the type of substitution allowed
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		allowed: FHIRPrimitive<FHIRBool>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.allowed = allowed
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowed; case _allowed
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allowed = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .allowed, auxiliaryKey: ._allowed)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try allowed.encode(on: &_container, forKey: .allowed, auxiliaryKey: ._allowed)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Associated or related medication information.
 
 Associated or related knowledge about a medication.
 */
public struct MedicationKnowledgeRelatedMedicationKnowledge: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Associated documentation about the associated medication knowledge
	public var reference: [Reference]
	
	/// Category of medicationKnowledge
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: [Reference],
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try [Reference](from: _container, forKey: .reference)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference.encode(on: &_container, forKey: .reference)
		try type.encode(on: &_container, forKey: .type)
	}
}
