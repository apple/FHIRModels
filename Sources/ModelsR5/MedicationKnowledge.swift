//
//  MedicationKnowledge.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MedicationKnowledge)
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
	
	/// The set of medication resources that are associated with this medication
	public var associatedMedication: [Reference]?
	
	/// Creator or owner of the knowledge or information about the medication
	public var author: Reference?
	
	/// Potential clinical issue with or between medication(s)
	public var clinicalUseIssue: [Reference]?
	
	/// Code that identifies this medication
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The pricing of the medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// Minimal definition information about the medication
	public var definitional: MedicationKnowledgeDefinitional?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this medication
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Guidelines or protocols for administration of the medication for an indication
	public var indicationGuideline: [MedicationKnowledgeIndicationGuideline]?
	
	/// Codes that identify the different jurisdictions for which the information of this resource was created
	public var intendedJurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
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
	
	/// A name associated with the medication being described
	public var name: [FHIRPrimitive<FHIRString>]?
	
	/// Details about packaged medications
	public var packaging: [MedicationKnowledgePackaging]?
	
	/// The instructions for preparing the medication
	public var preparationInstruction: FHIRPrimitive<FHIRString>?
	
	/// Category of the medication or product
	public var productType: [CodeableConcept]?
	
	/// Regulatory information about a medication
	public var regulatory: [MedicationKnowledgeRegulatory]?
	
	/// Associated or related medication information
	public var relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]?
	
	/// A code to indicate if the medication referred to by this MedicationKnowledge is in active use within the drug
	/// database or inventory system. The status refers to the validity about the information of the medication and not
	/// to its medicinal properties.
	public var status: FHIRPrimitive<MedicationKnowledgeStatusCodes>?
	
	/// How the medication should be stored
	public var storageGuideline: [MedicationKnowledgeStorageGuideline]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		associatedMedication: [Reference]? = nil,
		author: Reference? = nil,
		clinicalUseIssue: [Reference]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		cost: [MedicationKnowledgeCost]? = nil,
		definitional: MedicationKnowledgeDefinitional? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		indicationGuideline: [MedicationKnowledgeIndicationGuideline]? = nil,
		intendedJurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medicineClassification: [MedicationKnowledgeMedicineClassification]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		monitoringProgram: [MedicationKnowledgeMonitoringProgram]? = nil,
		monograph: [MedicationKnowledgeMonograph]? = nil,
		name: [FHIRPrimitive<FHIRString>]? = nil,
		packaging: [MedicationKnowledgePackaging]? = nil,
		preparationInstruction: FHIRPrimitive<FHIRString>? = nil,
		productType: [CodeableConcept]? = nil,
		regulatory: [MedicationKnowledgeRegulatory]? = nil,
		relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]? = nil,
		status: FHIRPrimitive<MedicationKnowledgeStatusCodes>? = nil,
		storageGuideline: [MedicationKnowledgeStorageGuideline]? = nil,
		text: Narrative? = nil
	) {
		self.associatedMedication = associatedMedication
		self.author = author
		self.clinicalUseIssue = clinicalUseIssue
		self.code = code
		self.contained = contained
		self.cost = cost
		self.definitional = definitional
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.indicationGuideline = indicationGuideline
		self.intendedJurisdiction = intendedJurisdiction
		self.language = language
		self.medicineClassification = medicineClassification
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.monitoringProgram = monitoringProgram
		self.monograph = monograph
		self.name = name
		self.packaging = packaging
		self.preparationInstruction = preparationInstruction
		self.productType = productType
		self.regulatory = regulatory
		self.relatedMedicationKnowledge = relatedMedicationKnowledge
		self.status = status
		self.storageGuideline = storageGuideline
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case associatedMedication
		case author
		case clinicalUseIssue
		case code
		case contained
		case cost
		case definitional
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case indicationGuideline
		case intendedJurisdiction
		case language; case _language
		case medicineClassification
		case meta
		case modifierExtension
		case monitoringProgram
		case monograph
		case name; case _name
		case packaging
		case preparationInstruction; case _preparationInstruction
		case productType
		case regulatory
		case relatedMedicationKnowledge
		case status; case _status
		case storageGuideline
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.associatedMedication = try [Reference](from: _container, forKeyIfPresent: .associatedMedication)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.clinicalUseIssue = try [Reference](from: _container, forKeyIfPresent: .clinicalUseIssue)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.definitional = try MedicationKnowledgeDefinitional(from: _container, forKeyIfPresent: .definitional)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.indicationGuideline = try [MedicationKnowledgeIndicationGuideline](from: _container, forKeyIfPresent: .indicationGuideline)
		self.intendedJurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .intendedJurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medicineClassification = try [MedicationKnowledgeMedicineClassification](from: _container, forKeyIfPresent: .medicineClassification)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.monitoringProgram = try [MedicationKnowledgeMonitoringProgram](from: _container, forKeyIfPresent: .monitoringProgram)
		self.monograph = try [MedicationKnowledgeMonograph](from: _container, forKeyIfPresent: .monograph)
		self.name = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.packaging = try [MedicationKnowledgePackaging](from: _container, forKeyIfPresent: .packaging)
		self.preparationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		self.productType = try [CodeableConcept](from: _container, forKeyIfPresent: .productType)
		self.regulatory = try [MedicationKnowledgeRegulatory](from: _container, forKeyIfPresent: .regulatory)
		self.relatedMedicationKnowledge = try [MedicationKnowledgeRelatedMedicationKnowledge](from: _container, forKeyIfPresent: .relatedMedicationKnowledge)
		self.status = try FHIRPrimitive<MedicationKnowledgeStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.storageGuideline = try [MedicationKnowledgeStorageGuideline](from: _container, forKeyIfPresent: .storageGuideline)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try associatedMedication?.encode(on: &_container, forKey: .associatedMedication)
		try author?.encode(on: &_container, forKey: .author)
		try clinicalUseIssue?.encode(on: &_container, forKey: .clinicalUseIssue)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try cost?.encode(on: &_container, forKey: .cost)
		try definitional?.encode(on: &_container, forKey: .definitional)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try indicationGuideline?.encode(on: &_container, forKey: .indicationGuideline)
		try intendedJurisdiction?.encode(on: &_container, forKey: .intendedJurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medicineClassification?.encode(on: &_container, forKey: .medicineClassification)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try monitoringProgram?.encode(on: &_container, forKey: .monitoringProgram)
		try monograph?.encode(on: &_container, forKey: .monograph)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try packaging?.encode(on: &_container, forKey: .packaging)
		try preparationInstruction?.encode(on: &_container, forKey: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		try productType?.encode(on: &_container, forKey: .productType)
		try regulatory?.encode(on: &_container, forKey: .regulatory)
		try relatedMedicationKnowledge?.encode(on: &_container, forKey: .relatedMedicationKnowledge)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try storageGuideline?.encode(on: &_container, forKey: .storageGuideline)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 The pricing of the medication.
 
 The price of the medication.
 */
public struct MedicationKnowledgeCost: BackboneElement {
	
	/// All possible types for "cost[x]"
	public enum CostX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case money(Money)
	}
	
	/// The price or category of the cost of the medication
	/// One of `cost[x]`
	public var cost: CostX
	
	/// The date range for which the cost is effective
	public var effectiveDate: [Period]?
	
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
		cost: CostX,
		effectiveDate: [Period]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept
	) {
		self.cost = cost
		self.effectiveDate = effectiveDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case costCodeableConcept
		case costMoney
		case effectiveDate
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
		self.cost = try Self._decodeCost(from: _container)
		self.effectiveDate = try [Period](from: _container, forKeyIfPresent: .effectiveDate)
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
		
		switch cost {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .costCodeableConcept)
		case .money(let _value):
			try _value.encode(on: &_container, forKey: .costMoney)
		}
		
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try source?.encode(on: &_container, forKey: .source, auxiliaryKey: ._source)
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCost(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CostX {
		var _t_cost: CostX? = nil
		if let costCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .costCodeableConcept) {
			_t_cost = .codeableConcept(costCodeableConcept)
		}
		if let costMoney = try Money(from: _container, forKeyIfPresent: .costMoney) {
			if _t_cost != nil {
				throw DecodingError.dataCorruptedError(forKey: .costMoney, in: _container, debugDescription: "More than one value provided for \"cost\"")
			}
			_t_cost = .money(costMoney)
		}
		guard let _t_cost else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.costMoney)
			throw DecodingError.valueNotFound(CostX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"cost\" but have none"))
		}
		return _t_cost
	}
}

/**
 Minimal definition information about the medication.
 
 Along with the link to a Medicinal Product Definition resource, this information provides common definitional elements
 that are needed to understand the specific medication that is being described.
 */
public struct MedicationKnowledgeDefinitional: BackboneElement {
	
	/// Definitional resources that provide more information about this medication
	public var definition: [Reference]?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// Specifies descriptive properties of the medicine
	public var drugCharacteristic: [MedicationKnowledgeDefinitionalDrugCharacteristic]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationKnowledgeDefinitionalIngredient]?
	
	/// The intended or approved route of administration
	public var intendedRoute: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		definition: [Reference]? = nil,
		doseForm: CodeableConcept? = nil,
		drugCharacteristic: [MedicationKnowledgeDefinitionalDrugCharacteristic]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		ingredient: [MedicationKnowledgeDefinitionalIngredient]? = nil,
		intendedRoute: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.definition = definition
		self.doseForm = doseForm
		self.drugCharacteristic = drugCharacteristic
		self.`extension` = `extension`
		self.id = id
		self.ingredient = ingredient
		self.intendedRoute = intendedRoute
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case definition
		case doseForm
		case drugCharacteristic
		case `extension` = "extension"
		case id; case _id
		case ingredient
		case intendedRoute
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.drugCharacteristic = try [MedicationKnowledgeDefinitionalDrugCharacteristic](from: _container, forKeyIfPresent: .drugCharacteristic)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.ingredient = try [MedicationKnowledgeDefinitionalIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.intendedRoute = try [CodeableConcept](from: _container, forKeyIfPresent: .intendedRoute)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try definition?.encode(on: &_container, forKey: .definition)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try drugCharacteristic?.encode(on: &_container, forKey: .drugCharacteristic)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try intendedRoute?.encode(on: &_container, forKey: .intendedRoute)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Specifies descriptive properties of the medicine.
 
 Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
 */
public struct MedicationKnowledgeDefinitionalDrugCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
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
		case valueAttachment
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
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
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
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBase64Binary = try FHIRPrimitive<Base64Binary>(from: _container, forKeyIfPresent: .valueBase64Binary, auxiliaryKey: ._valueBase64Binary) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBase64Binary, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
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
public struct MedicationKnowledgeDefinitionalIngredient: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Substances contained in the medication
	public var item: CodeableReference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Quantity of ingredient present
	/// One of `strength[x]`
	public var strength: StrengthX?
	
	/// A code that defines the type of ingredient, active, base, etc
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil,
		strength: StrengthX? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
		self.strength = strength
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case item
		case modifierExtension
		case strengthCodeableConcept
		case strengthQuantity
		case strengthRatio
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try CodeableReference(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.strength = try Self._decodeStrength(from: _container)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = strength {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .strengthCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .strengthQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .strengthRatio)
		}
		}
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeStrength(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StrengthX? {
		var _t_strength: StrengthX? = nil
		if let strengthCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .strengthCodeableConcept) {
			_t_strength = .codeableConcept(strengthCodeableConcept)
		}
		if let strengthQuantity = try Quantity(from: _container, forKeyIfPresent: .strengthQuantity) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthQuantity, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .quantity(strengthQuantity)
		}
		if let strengthRatio = try Ratio(from: _container, forKeyIfPresent: .strengthRatio) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthRatio, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .ratio(strengthRatio)
		}
		return _t_strength
	}
}

/**
 Guidelines or protocols for administration of the medication for an indication.
 
 Guidelines or protocols that are applicable for the administration of the medication based on indication.
 */
public struct MedicationKnowledgeIndicationGuideline: BackboneElement {
	
	/// Guidelines for dosage of the medication
	public var dosingGuideline: [MedicationKnowledgeIndicationGuidelineDosingGuideline]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Indication for use that applies to the specific administration guideline
	public var indication: [CodeableReference]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		dosingGuideline: [MedicationKnowledgeIndicationGuidelineDosingGuideline]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: [CodeableReference]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.dosingGuideline = dosingGuideline
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dosingGuideline
		case `extension` = "extension"
		case id; case _id
		case indication
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dosingGuideline = try [MedicationKnowledgeIndicationGuidelineDosingGuideline](from: _container, forKeyIfPresent: .dosingGuideline)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.indication = try [CodeableReference](from: _container, forKeyIfPresent: .indication)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dosingGuideline?.encode(on: &_container, forKey: .dosingGuideline)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try indication?.encode(on: &_container, forKey: .indication)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Guidelines for dosage of the medication.
 
 The guidelines for the dosage of the medication for the indication.
 */
public struct MedicationKnowledgeIndicationGuidelineDosingGuideline: BackboneElement {
	
	/// Type of treatment the guideline applies to
	public var administrationTreatment: CodeableConcept?
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Characteristics of the patient that are relevant to the administration guidelines
	public var patientCharacteristic: [MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic]?
	
	/// Intention of the treatment
	public var treatmentIntent: CodeableConcept?
	
	/// Designated initializer
	public init(
		administrationTreatment: CodeableConcept? = nil,
		dosage: [MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		patientCharacteristic: [MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic]? = nil,
		treatmentIntent: CodeableConcept? = nil
	) {
		self.administrationTreatment = administrationTreatment
		self.dosage = dosage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.patientCharacteristic = patientCharacteristic
		self.treatmentIntent = treatmentIntent
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administrationTreatment
		case dosage
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case patientCharacteristic
		case treatmentIntent
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.administrationTreatment = try CodeableConcept(from: _container, forKeyIfPresent: .administrationTreatment)
		self.dosage = try [MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage](from: _container, forKeyIfPresent: .dosage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patientCharacteristic = try [MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic](from: _container, forKeyIfPresent: .patientCharacteristic)
		self.treatmentIntent = try CodeableConcept(from: _container, forKeyIfPresent: .treatmentIntent)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try administrationTreatment?.encode(on: &_container, forKey: .administrationTreatment)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patientCharacteristic?.encode(on: &_container, forKey: .patientCharacteristic)
		try treatmentIntent?.encode(on: &_container, forKey: .treatmentIntent)
	}
}

/**
 Dosage for the medication for the specific guidelines.
 */
public struct MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage: BackboneElement {
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [Dosage]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Category of dosage for a medication
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
public struct MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Categorization of specific characteristic that is relevant to the administration guideline
	public var type: CodeableConcept
	
	/// The specific characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
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
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		return _t_value
	}
}

/**
 Categorization of the medication within a formulary or classification system.
 */
public struct MedicationKnowledgeMedicineClassification: BackboneElement {
	
	/// All possible types for "source[x]"
	public enum SourceX: Equatable, Hashable, Sendable {
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Specific category assigned to the medication
	public var classification: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The source of the classification
	/// One of `source[x]`
	public var source: SourceX?
	
	/// The type of category for the medication (for example, therapeutic classification, therapeutic sub-
	/// classification)
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		classification: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: SourceX? = nil,
		type: CodeableConcept
	) {
		self.classification = classification
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case sourceString; case _sourceString
		case sourceUri; case _sourceUri
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
		self.source = try Self._decodeSource(from: _container)
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
		if let _enum = source {
		switch _enum {
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .sourceString, auxiliaryKey: ._sourceString)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
		}
		}
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSource(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceX? {
		var _t_source: SourceX? = nil
		if let sourceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceString, auxiliaryKey: ._sourceString) {
			_t_source = .string(sourceString)
		}
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		return _t_source
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
	
	/// Cost of the packaged medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The packaged medication that is being priced
	public var packagedProduct: Reference?
	
	/// Designated initializer
	public init(
		cost: [MedicationKnowledgeCost]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		packagedProduct: Reference? = nil
	) {
		self.cost = cost
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packagedProduct = packagedProduct
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case packagedProduct
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.packagedProduct = try Reference(from: _container, forKeyIfPresent: .packagedProduct)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try cost?.encode(on: &_container, forKey: .cost)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try packagedProduct?.encode(on: &_container, forKey: .packagedProduct)
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
	public var schedule: [CodeableConcept]?
	
	/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective
	public var substitution: [MedicationKnowledgeRegulatorySubstitution]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDispense: MedicationKnowledgeRegulatoryMaxDispense? = nil,
		modifierExtension: [Extension]? = nil,
		regulatoryAuthority: Reference,
		schedule: [CodeableConcept]? = nil,
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
		self.schedule = try [CodeableConcept](from: _container, forKeyIfPresent: .schedule)
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
 
 Associated or related medications. For example, if the medication is a branded product (e.g. Crestor), this is the
 Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin), this would link to a
 branded product (e.g. Crestor.
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

/**
 How the medication should be stored.
 
 Information on how the medication should be stored, for example, refrigeration temperatures and length of stability at
 a given temperature.
 */
public struct MedicationKnowledgeStorageGuideline: BackboneElement {
	
	/// Setting or value of environment for adequate storage
	public var environmentalSetting: [MedicationKnowledgeStorageGuidelineEnvironmentalSetting]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Additional storage notes
	public var note: [Annotation]?
	
	/// Reference to additional information
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Duration remains stable
	public var stabilityDuration: Duration?
	
	/// Designated initializer
	public init(
		environmentalSetting: [MedicationKnowledgeStorageGuidelineEnvironmentalSetting]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		reference: FHIRPrimitive<FHIRURI>? = nil,
		stabilityDuration: Duration? = nil
	) {
		self.environmentalSetting = environmentalSetting
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.reference = reference
		self.stabilityDuration = stabilityDuration
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case environmentalSetting
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case reference; case _reference
		case stabilityDuration
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.environmentalSetting = try [MedicationKnowledgeStorageGuidelineEnvironmentalSetting](from: _container, forKeyIfPresent: .environmentalSetting)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.stabilityDuration = try Duration(from: _container, forKeyIfPresent: .stabilityDuration)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try environmentalSetting?.encode(on: &_container, forKey: .environmentalSetting)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try stabilityDuration?.encode(on: &_container, forKey: .stabilityDuration)
	}
}

/**
 Setting or value of environment for adequate storage.
 
 Describes a setting/value on the environment for the adequate storage of the medication and other substances.
 Environment settings may involve temperature, humidity, or exposure to light.
 */
public struct MedicationKnowledgeStorageGuidelineEnvironmentalSetting: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Categorization of the setting
	public var type: CodeableConcept
	
	/// Value of the setting
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
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
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		
		switch value {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueRange)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}
