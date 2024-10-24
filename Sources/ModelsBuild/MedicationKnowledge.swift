//
//  MedicationKnowledge.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/MedicationKnowledge)
//  Copyright 2024 Apple Inc.
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
	
	/// A code to indicate if the medication referred to by this MedicationKnowledge is in active use within the drug
	/// database or inventory system. The status refers to the validity about the information of the medication and not
	/// to its medicinal properties.
	public var status: FHIRPrimitive<PublicationStatus>?
	
	/// Creator or owner of the knowledge or information about the medication
	public var author: ContactDetail?
	
	/// Codes that identify the different jurisdictions for which the information of this resource was created
	public var jurisdiction: [CodeableConcept]?
	
	/// A name associated with the medication being described
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Associated or related medication information
	public var relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]?
	
	/// The set of medication resources that are associated with this medication
	public var associatedMedication: [Reference]?
	
	/// Category of the medication or product
	public var productType: [CodeableConcept]?
	
	/// Associated documentation about the medication
	public var monograph: [MedicationKnowledgeMonograph]?
	
	/// The instructions for preparing the medication
	public var preparationInstruction: FHIRPrimitive<FHIRString>?
	
	/// The pricing of the medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// Program under which a medication is reviewed
	public var monitoringProgram: [MedicationKnowledgeMonitoringProgram]?
	
	/// Guidelines or protocols for administration of the medication for an indication
	public var indicationGuideline: [MedicationKnowledgeIndicationGuideline]?
	
	/// Categorization of the medication within a formulary or classification system
	public var medicineClassification: [MedicationKnowledgeMedicineClassification]?
	
	/// Details about packaged medications
	public var packaging: [MedicationKnowledgePackaging]?
	
	/// Potential clinical issue with or between medication(s)
	public var clinicalUseIssue: [Reference]?
	
	/// How the medication should be stored
	public var storageGuideline: [MedicationKnowledgeStorageGuideline]?
	
	/// Regulatory information about a medication
	public var regulatory: [MedicationKnowledgeRegulatory]?
	
	/// Minimal definition information about the medication
	public var definitional: MedicationKnowledgeDefinitional?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		associatedMedication: [Reference]? = nil,
		author: ContactDetail? = nil,
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
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medicineClassification: [MedicationKnowledgeMedicineClassification]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		monitoringProgram: [MedicationKnowledgeMonitoringProgram]? = nil,
		monograph: [MedicationKnowledgeMonograph]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		packaging: [MedicationKnowledgePackaging]? = nil,
		preparationInstruction: FHIRPrimitive<FHIRString>? = nil,
		productType: [CodeableConcept]? = nil,
		regulatory: [MedicationKnowledgeRegulatory]? = nil,
		relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]? = nil,
		status: FHIRPrimitive<PublicationStatus>? = nil,
		storageGuideline: [MedicationKnowledgeStorageGuideline]? = nil,
		text: Narrative? = nil
	) {
		self.init()
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
		self.jurisdiction = jurisdiction
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
		case associatedMedication
		case author
		case clinicalUseIssue
		case code
		case cost
		case definitional
		case identifier
		case indicationGuideline
		case jurisdiction
		case medicineClassification
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associatedMedication = try [Reference](from: _container, forKeyIfPresent: .associatedMedication)
		self.author = try ContactDetail(from: _container, forKeyIfPresent: .author)
		self.clinicalUseIssue = try [Reference](from: _container, forKeyIfPresent: .clinicalUseIssue)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.definitional = try MedicationKnowledgeDefinitional(from: _container, forKeyIfPresent: .definitional)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indicationGuideline = try [MedicationKnowledgeIndicationGuideline](from: _container, forKeyIfPresent: .indicationGuideline)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.medicineClassification = try [MedicationKnowledgeMedicineClassification](from: _container, forKeyIfPresent: .medicineClassification)
		self.monitoringProgram = try [MedicationKnowledgeMonitoringProgram](from: _container, forKeyIfPresent: .monitoringProgram)
		self.monograph = try [MedicationKnowledgeMonograph](from: _container, forKeyIfPresent: .monograph)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.packaging = try [MedicationKnowledgePackaging](from: _container, forKeyIfPresent: .packaging)
		self.preparationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparationInstruction, auxiliaryKey: ._preparationInstruction)
		self.productType = try [CodeableConcept](from: _container, forKeyIfPresent: .productType)
		self.regulatory = try [MedicationKnowledgeRegulatory](from: _container, forKeyIfPresent: .regulatory)
		self.relatedMedicationKnowledge = try [MedicationKnowledgeRelatedMedicationKnowledge](from: _container, forKeyIfPresent: .relatedMedicationKnowledge)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.storageGuideline = try [MedicationKnowledgeStorageGuideline](from: _container, forKeyIfPresent: .storageGuideline)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try associatedMedication?.encode(on: &_container, forKey: .associatedMedication)
		try author?.encode(on: &_container, forKey: .author)
		try clinicalUseIssue?.encode(on: &_container, forKey: .clinicalUseIssue)
		try code?.encode(on: &_container, forKey: .code)
		try cost?.encode(on: &_container, forKey: .cost)
		try definitional?.encode(on: &_container, forKey: .definitional)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indicationGuideline?.encode(on: &_container, forKey: .indicationGuideline)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try medicineClassification?.encode(on: &_container, forKey: .medicineClassification)
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
		return associatedMedication == _other.associatedMedication
		    && author == _other.author
		    && clinicalUseIssue == _other.clinicalUseIssue
		    && code == _other.code
		    && cost == _other.cost
		    && definitional == _other.definitional
		    && identifier == _other.identifier
		    && indicationGuideline == _other.indicationGuideline
		    && jurisdiction == _other.jurisdiction
		    && medicineClassification == _other.medicineClassification
		    && monitoringProgram == _other.monitoringProgram
		    && monograph == _other.monograph
		    && name == _other.name
		    && packaging == _other.packaging
		    && preparationInstruction == _other.preparationInstruction
		    && productType == _other.productType
		    && regulatory == _other.regulatory
		    && relatedMedicationKnowledge == _other.relatedMedicationKnowledge
		    && status == _other.status
		    && storageGuideline == _other.storageGuideline
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associatedMedication)
		hasher.combine(author)
		hasher.combine(clinicalUseIssue)
		hasher.combine(code)
		hasher.combine(cost)
		hasher.combine(definitional)
		hasher.combine(identifier)
		hasher.combine(indicationGuideline)
		hasher.combine(jurisdiction)
		hasher.combine(medicineClassification)
		hasher.combine(monitoringProgram)
		hasher.combine(monograph)
		hasher.combine(name)
		hasher.combine(packaging)
		hasher.combine(preparationInstruction)
		hasher.combine(productType)
		hasher.combine(regulatory)
		hasher.combine(relatedMedicationKnowledge)
		hasher.combine(status)
		hasher.combine(storageGuideline)
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
		type: CodeableConcept
	) {
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
 Minimal definition information about the medication.
 
 Along with the link to a Medicinal Product Definition resource, this information provides common definitional elements
 that are needed to understand the specific medication that is being described.
 */
open class MedicationKnowledgeDefinitional: BackboneElement {
	
	/// Definitional resources that provide more information about this medication
	public var definition: [Reference]?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// The intended or approved route of administration
	public var intendedRoute: [CodeableConcept]?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationKnowledgeDefinitionalIngredient]?
	
	/// Specifies descriptive properties of the medicine
	public var drugCharacteristic: [MedicationKnowledgeDefinitionalDrugCharacteristic]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		definition: [Reference]? = nil,
		doseForm: CodeableConcept? = nil,
		drugCharacteristic: [MedicationKnowledgeDefinitionalDrugCharacteristic]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		ingredient: [MedicationKnowledgeDefinitionalIngredient]? = nil,
		intendedRoute: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
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
		case ingredient
		case intendedRoute
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.drugCharacteristic = try [MedicationKnowledgeDefinitionalDrugCharacteristic](from: _container, forKeyIfPresent: .drugCharacteristic)
		self.ingredient = try [MedicationKnowledgeDefinitionalIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.intendedRoute = try [CodeableConcept](from: _container, forKeyIfPresent: .intendedRoute)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try definition?.encode(on: &_container, forKey: .definition)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try drugCharacteristic?.encode(on: &_container, forKey: .drugCharacteristic)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try intendedRoute?.encode(on: &_container, forKey: .intendedRoute)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeDefinitional else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return definition == _other.definition
		    && doseForm == _other.doseForm
		    && drugCharacteristic == _other.drugCharacteristic
		    && ingredient == _other.ingredient
		    && intendedRoute == _other.intendedRoute
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(definition)
		hasher.combine(doseForm)
		hasher.combine(drugCharacteristic)
		hasher.combine(ingredient)
		hasher.combine(intendedRoute)
	}
}

/**
 Specifies descriptive properties of the medicine.
 
 Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
 */
open class MedicationKnowledgeDefinitionalDrugCharacteristic: BackboneElement {
	
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
		value: ValueX? = nil
	) {
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
		guard let _other = _other as? MedicationKnowledgeDefinitionalDrugCharacteristic else {
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
open class MedicationKnowledgeDefinitionalIngredient: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// Substances contained in the medication
	public var item: CodeableReference
	
	/// A code that defines the type of ingredient, active, base, etc
	public var type: CodeableConcept?
	
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
		item: CodeableReference,
		modifierExtension: [Extension]? = nil,
		strength: StrengthX? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(item: item)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.strength = strength
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case item
		case strengthCodeableConcept
		case strengthQuantity
		case strengthRatio
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
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
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeDefinitionalIngredient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return item == _other.item
		    && strength == _other.strength
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(item)
		hasher.combine(strength)
		hasher.combine(type)
	}
}

/**
 Guidelines or protocols for administration of the medication for an indication.
 
 Guidelines or protocols that are applicable for the administration of the medication based on indication.
 */
open class MedicationKnowledgeIndicationGuideline: BackboneElement {
	
	/// Indication for use that applies to the specific administration guideline
	public var indication: [CodeableReference]?
	
	/// Guidelines for dosage of the medication
	public var dosingGuideline: [MedicationKnowledgeIndicationGuidelineDosingGuideline]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		dosingGuideline: [MedicationKnowledgeIndicationGuidelineDosingGuideline]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: [CodeableReference]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.dosingGuideline = dosingGuideline
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dosingGuideline
		case indication
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dosingGuideline = try [MedicationKnowledgeIndicationGuidelineDosingGuideline](from: _container, forKeyIfPresent: .dosingGuideline)
		self.indication = try [CodeableReference](from: _container, forKeyIfPresent: .indication)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dosingGuideline?.encode(on: &_container, forKey: .dosingGuideline)
		try indication?.encode(on: &_container, forKey: .indication)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeIndicationGuideline else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dosingGuideline == _other.dosingGuideline
		    && indication == _other.indication
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dosingGuideline)
		hasher.combine(indication)
	}
}

/**
 Guidelines for dosage of the medication.
 
 The guidelines for the dosage of the medication for the indication.
 */
open class MedicationKnowledgeIndicationGuidelineDosingGuideline: BackboneElement {
	
	/// Intention of the treatment
	public var treatmentIntent: CodeableConcept?
	
	/// Dosage for the medication for the specific guidelines
	public var dosage: [MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage]?
	
	/// Type of treatment the guideline applies to
	public var administrationTreatment: CodeableConcept?
	
	/// Characteristics of the patient that are relevant to the administration guidelines
	public var patientCharacteristic: [MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		administrationTreatment: CodeableConcept? = nil,
		dosage: [MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		patientCharacteristic: [MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic]? = nil,
		treatmentIntent: CodeableConcept? = nil
	) {
		self.init()
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
		case patientCharacteristic
		case treatmentIntent
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administrationTreatment = try CodeableConcept(from: _container, forKeyIfPresent: .administrationTreatment)
		self.dosage = try [MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage](from: _container, forKeyIfPresent: .dosage)
		self.patientCharacteristic = try [MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic](from: _container, forKeyIfPresent: .patientCharacteristic)
		self.treatmentIntent = try CodeableConcept(from: _container, forKeyIfPresent: .treatmentIntent)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administrationTreatment?.encode(on: &_container, forKey: .administrationTreatment)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try patientCharacteristic?.encode(on: &_container, forKey: .patientCharacteristic)
		try treatmentIntent?.encode(on: &_container, forKey: .treatmentIntent)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeIndicationGuidelineDosingGuideline else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return administrationTreatment == _other.administrationTreatment
		    && dosage == _other.dosage
		    && patientCharacteristic == _other.patientCharacteristic
		    && treatmentIntent == _other.treatmentIntent
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administrationTreatment)
		hasher.combine(dosage)
		hasher.combine(patientCharacteristic)
		hasher.combine(treatmentIntent)
	}
}

/**
 Dosage for the medication for the specific guidelines.
 */
open class MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage: BackboneElement {
	
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
		type: CodeableConcept
	) {
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
		guard let _other = _other as? MedicationKnowledgeIndicationGuidelineDosingGuidelineDosage else {
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
open class MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
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
		value: ValueX? = nil
	) {
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
		case valueRange
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
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
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
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeIndicationGuidelineDosingGuidelinePatientCharacteristic else {
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
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case string(FHIRPrimitive<FHIRString>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// The type of category for the medication (for example, therapeutic classification, therapeutic sub-
	/// classification)
	public var type: CodeableConcept
	
	/// The source of the classification
	/// One of `source[x]`
	public var source: SourceX?
	
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
		source: SourceX? = nil,
		type: CodeableConcept
	) {
		self.init(type: type)
		self.classification = classification
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case sourceString; case _sourceString
		case sourceUri; case _sourceUri
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		var _t_source: SourceX? = nil
		if let sourceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceString, auxiliaryKey: ._sourceString) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceString, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .string(sourceString)
		}
		if let sourceUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sourceUri, auxiliaryKey: ._sourceUri) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceUri, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .uri(sourceUri)
		}
		self.source = _t_source
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try classification?.encode(on: &_container, forKey: .classification)
		if let _enum = source {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .sourceString, auxiliaryKey: ._sourceString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .sourceUri, auxiliaryKey: ._sourceUri)
			}
		}
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
		    && source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(classification)
		hasher.combine(source)
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
		type: CodeableConcept? = nil
	) {
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
		type: CodeableConcept? = nil
	) {
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
	
	/// Cost of the packaged medication
	public var cost: [MedicationKnowledgeCost]?
	
	/// The packaged medication that is being priced
	public var packagedProduct: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		cost: [MedicationKnowledgeCost]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		packagedProduct: Reference? = nil
	) {
		self.init()
		self.cost = cost
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.packagedProduct = packagedProduct
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case cost
		case packagedProduct
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.cost = try [MedicationKnowledgeCost](from: _container, forKeyIfPresent: .cost)
		self.packagedProduct = try Reference(from: _container, forKeyIfPresent: .packagedProduct)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try cost?.encode(on: &_container, forKey: .cost)
		try packagedProduct?.encode(on: &_container, forKey: .packagedProduct)
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
		    && packagedProduct == _other.packagedProduct
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(cost)
		hasher.combine(packagedProduct)
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
		substitution: [MedicationKnowledgeRegulatorySubstitution]? = nil
	) {
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
		quantity: Quantity
	) {
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
		type: CodeableConcept
	) {
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
		type: CodeableConcept
	) {
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

/**
 How the medication should be stored.
 
 Information on how the medication should be stored, for example, refrigeration temperatures and length of stability at
 a given temperature.
 */
open class MedicationKnowledgeStorageGuideline: BackboneElement {
	
	/// Reference to additional information
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Additional storage notes
	public var note: [Annotation]?
	
	/// Duration remains stable
	public var stabilityDuration: Duration?
	
	/// Setting or value of environment for adequate storage
	public var environmentalSetting: [MedicationKnowledgeStorageGuidelineEnvironmentalSetting]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		environmentalSetting: [MedicationKnowledgeStorageGuidelineEnvironmentalSetting]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		reference: FHIRPrimitive<FHIRURI>? = nil,
		stabilityDuration: Duration? = nil
	) {
		self.init()
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
		case note
		case reference; case _reference
		case stabilityDuration
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.environmentalSetting = try [MedicationKnowledgeStorageGuidelineEnvironmentalSetting](from: _container, forKeyIfPresent: .environmentalSetting)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.stabilityDuration = try Duration(from: _container, forKeyIfPresent: .stabilityDuration)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try environmentalSetting?.encode(on: &_container, forKey: .environmentalSetting)
		try note?.encode(on: &_container, forKey: .note)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try stabilityDuration?.encode(on: &_container, forKey: .stabilityDuration)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeStorageGuideline else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return environmentalSetting == _other.environmentalSetting
		    && note == _other.note
		    && reference == _other.reference
		    && stabilityDuration == _other.stabilityDuration
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(environmentalSetting)
		hasher.combine(note)
		hasher.combine(reference)
		hasher.combine(stabilityDuration)
	}
}

/**
 Setting or value of environment for adequate storage.
 
 Describes a setting/value on the environment for the adequate storage of the medication and other substances.
 Environment settings may involve temperature, humidity, or exposure to light.
 */
open class MedicationKnowledgeStorageGuidelineEnvironmentalSetting: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Categorization of the setting
	public var type: CodeableConcept
	
	/// Value of the setting
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept, value: ValueX) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX
	) {
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case type
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueCodeableConcept, CodingKeys.valueQuantity, CodingKeys.valueRange], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
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
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try type.encode(on: &_container, forKey: .type)
		
			switch value {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationKnowledgeStorageGuidelineEnvironmentalSetting else {
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
